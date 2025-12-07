_BYTE *storeEnumTagSinglePayload for RequestPositionInSession(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1DD355B74);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserSessionType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2)
{
  strcpy(a2, "responseMode");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
}

uint64_t OUTLINED_FUNCTION_0_5(unint64_t *a1)
{

  return lazy protocol witness table accessor for type CurrentRequest and conformance CurrentRequest(a1, &protocol conformance descriptor for CurrentRequest);
}

uint64_t OUTLINED_FUNCTION_0_6(unint64_t *a1)
{

  return lazy protocol witness table accessor for type HomeKitProvider and conformance HomeKitProvider(a1, &protocol conformance descriptor for HomeKitProvider);
}

uint64_t outlined init with copy of SharedContextService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RefreshableSharedContext.sharedContext.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of SharedContextService?(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t outlined assign with take of SharedContextService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static SharedContext.internalSharedContext.getter()
{
  if (one-time initialization token for internalSharedContext != -1)
  {
    OUTLINED_FUNCTION_0_3(&one-time initialization token for internalSharedContext);
  }
}

uint64_t InteractionTypeHelper.mapInteractionType(inputOrigin:isEyesFree:isDeviceInStarkMode:isDeviceInCarDND:audioSource:audioDestination:previousInteractionType:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v110 = a7;
  v107 = a6;
  v117 = a5;
  v118 = a1;
  v121 = a4;
  v122 = a3;
  v124 = a2;
  v126 = a8;
  v113 = type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_0();
  v111 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v112 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v107 - v15;
  v119 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_0();
  v114 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v125 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v108 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v107 - v22;
  v123 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  v109 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v107 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v107 - v37;
  v39 = type metadata accessor for DeviceClass();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_0();
  v45 = v44 - v43;
  v46 = v8[8];
  v120 = v8;
  __swift_project_boxed_opaque_existential_1(v8 + 5, v46);
  dispatch thunk of DeviceClassProvider.currentDeviceClass.getter();
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    outlined destroy of AudioDestination?(v38, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    static Logger.logger.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DD354000, v47, v48, "Unknown device type returned by MobileGestalt. Interaction type may not be accurate.", v49, 2u);
      MEMORY[0x1E12AE9C0](v49, -1, -1);
    }

    (*(v24 + 8))(v28, v123);
  }

  else
  {
    (*(v41 + 32))(v45, v38, v39);
    if (one-time initialization token for interactionForIdiom != -1)
    {
      swift_once();
    }

    specialized Dictionary.subscript.getter(v45, static InteractionTypeHelper.interactionForIdiom, v34);
    (*(v41 + 8))(v45, v39);
    v50 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_11(v34);
    if (!v51)
    {
      OUTLINED_FUNCTION_5_0();
      return (*(v61 + 32))(v126, v34, v50);
    }

    outlined destroy of AudioDestination?(v34, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  }

  v52 = v125;
  if (v124)
  {
    goto LABEL_25;
  }

  if (v122)
  {
    goto LABEL_25;
  }

  if (v121)
  {
    goto LABEL_25;
  }

  v53 = v120[3];
  v54 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v53);
  if ((*(v54 + 8))(v53, v54))
  {
    goto LABEL_25;
  }

  v55 = v116;
  outlined init with copy of AudioDestination?(v117, v116, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v56 = v119;
  if (__swift_getEnumTagSinglePayload(v55, 1, v119) == 1)
  {
    outlined destroy of AudioDestination?(v55, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    if (one-time initialization token for dialogDrivenInputOrigins != -1)
    {
      OUTLINED_FUNCTION_1_0(&one-time initialization token for dialogDrivenInputOrigins);
    }

    v57 = specialized Set.contains(_:)(v118, static InteractionTypeHelper.dialogDrivenInputOrigins);
    type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0();
    v59 = *(v58 + 104);
    if (v57)
    {
      v60 = MEMORY[0x1E69D35A8];
    }

    else
    {
      v60 = MEMORY[0x1E69D35B0];
    }

    v69 = *v60;
    v70 = v126;
    return v59(v70, v69);
  }

  v63 = v114;
  v64 = v115;
  (*(v114 + 32))(v115, v55, v56);
  v66 = v111;
  v65 = v112;
  v67 = v113;
  (*(v111 + 16))(v112, v118, v113);
  v68 = (*(v66 + 88))(v65, v67);
  if (v68 == *MEMORY[0x1E69D34F8])
  {
    (*(v63 + 8))(v64, v56);
LABEL_25:
    v71 = *MEMORY[0x1E69D35A8];
    type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0();
    v59 = *(v72 + 104);
    v70 = v126;
    v69 = v71;
    return v59(v70, v69);
  }

  if (v68 == *MEMORY[0x1E69D34F0])
  {
LABEL_24:
    (*(v114 + 8))(v115, v119);
    goto LABEL_25;
  }

  v73 = v114;
  v74 = v119;
  if (v68 != *MEMORY[0x1E69D3508])
  {
    if (v68 == *MEMORY[0x1E69D34E0])
    {
      goto LABEL_24;
    }

    v79 = v108;
    (*(v114 + 16))(v108, v115, v119);
    static AudioSource.lineIn.getter();
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioSource and conformance AudioSource, MEMORY[0x1E69D3410], MEMORY[0x1E69D3418]);
    v80 = OUTLINED_FUNCTION_3_0();
    v83 = *(v73 + 8);
    v82 = v73 + 8;
    v81 = v83;
    v83(v52, v74);
    if (v80)
    {
      v81(v79, v74);
      if (one-time initialization token for dialogDrivenInputOrigins != -1)
      {
        OUTLINED_FUNCTION_1_0(&one-time initialization token for dialogDrivenInputOrigins);
      }

      v85 = specialized Set.contains(_:)(v118, static InteractionTypeHelper.dialogDrivenInputOrigins);
      v81(v115, v74);
      type metadata accessor for InteractionType();
      OUTLINED_FUNCTION_0_0();
      v87 = MEMORY[0x1E69D35A8];
      if (!v85)
      {
        v87 = MEMORY[0x1E69D35B0];
      }

      (*(v86 + 104))(v126, *v87);
      return (*(v111 + 8))(v112, v113);
    }

    static AudioSource.wiredHeadsetMic.getter();
    OUTLINED_FUNCTION_3_0();
    v84 = OUTLINED_FUNCTION_4_0();
    (v81)(v84);
    static AudioSource.bluetoothHandsFreeDevice.getter();
    OUTLINED_FUNCTION_3_0();
    v88 = OUTLINED_FUNCTION_4_0();
    (v81)(v88);
    if (v80)
    {
      v81(v79, v74);
      v81(v115, v74);
    }

    else
    {
      static AudioSource.usbAudio.getter();
      OUTLINED_FUNCTION_3_0();
      v91 = OUTLINED_FUNCTION_4_0();
      (v81)(v91);
      static AudioSource.unknown.getter();
      OUTLINED_FUNCTION_3_0();
      v92 = OUTLINED_FUNCTION_4_0();
      (v81)(v92);
      static AudioSource.carAudio.getter();
      OUTLINED_FUNCTION_3_0();
      v93 = OUTLINED_FUNCTION_4_0();
      (v81)(v93);
      v95 = v125;
      static AudioSource.builtInMic.getter();
      v96 = OUTLINED_FUNCTION_8_0();
      v81(v95, v82);
      if (v96)
      {
        v97 = v119;
        v81(v108, v119);
        static InteractionTypeHelper.interactionType(audioDestination:)(v107, v126);
        v81(v115, v97);
        return (*(v111 + 8))(v112, v113);
      }

      v98 = v125;
      static AudioSource.bluetoothDoAPDevice.getter();
      v99 = OUTLINED_FUNCTION_8_0();
      v81(v98, v82);
      if ((v99 & 1) == 0)
      {
        v100 = v125;
        static AudioSource.carJarvisDevice.getter();
        v101 = v108;
        v102 = v119;
        v103 = dispatch thunk of static Equatable.== infix(_:_:)();
        v81(v100, v102);
        v81(v101, v102);
        v81(v115, v102);
        type metadata accessor for InteractionType();
        OUTLINED_FUNCTION_0_0();
        v105 = (v111 + 8);
        if (v103)
        {
          v106 = MEMORY[0x1E69D35A8];
        }

        else
        {
          v106 = MEMORY[0x1E69D35B0];
        }

        (*(v104 + 104))(v126, *v106);
        return (*v105)(v112, v113);
      }

      v94 = v119;
      v81(v108, v119);
      v81(v115, v94);
    }

    v89 = *MEMORY[0x1E69D35A8];
    type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0();
    (*(v90 + 104))(v126, v89);
    return (*(v111 + 8))(v112, v113);
  }

  (*(v114 + 8))(v115, v119);
  v75 = v109;
  outlined init with copy of AudioDestination?(v110, v109, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v76 = type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_11(v75);
  if (v51)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v77 + 104))(v126);
    result = OUTLINED_FUNCTION_11(v75);
    if (!v51)
    {
      return outlined destroy of AudioDestination?(v75, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    return (*(v78 + 32))(v126, v75, v76);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

void OUTLINED_FUNCTION_10_0(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 296) = *(v2 + 40);
  *(v2 - 288) = *(v2 + 32);
}

id OUTLINED_FUNCTION_10_1()
{

  return [v1 (v2 + 3320)];
}

uint64_t OUTLINED_FUNCTION_10_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void OUTLINED_FUNCTION_9_2()
{

  JUMPOUT(0x1E12AE9C0);
}

uint64_t static InteractionTypeHelper.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return outlined init with copy of InteractionTypeHelper(&static InteractionTypeHelper.shared, a1);
}

__n128 OUTLINED_FUNCTION_2_3()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for DeviceClass();
  lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x1E69D3468]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceClass();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for InteractionType();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for InteractionType();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for DeviceClass();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x1E69D3470]);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{

  return static MockablePublished.subscript.modify();
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x1E12ADF70);
}

uint64_t outlined destroy of AudioDestination?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment14MultiUserStateO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t CurrentRequest.__deallocating_deinit()
{
  CurrentRequest.deinit();
  v0 = OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDC0](v0);
}

void *CurrentRequest.deinit()
{

  return v0;
}

uint64_t sub_1DD3573E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t OUTLINED_FUNCTION_29(unint64_t *a1)
{

  return lazy protocol witness table accessor for type CurrentRequest and conformance CurrentRequest(a1, &protocol conformance descriptor for CurrentRequest);
}

uint64_t SiriEnvironment.currentRequest.getter()
{
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_29(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  return dispatch thunk of SiriEnvironment.subscript.getter();
}

uint64_t lazy protocol witness table accessor for type CurrentRequest and conformance CurrentRequest(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrentRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiUserContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 66))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_3()
{

  JUMPOUT(0x1E12AE9C0);
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{

  return swift_once();
}

uint64_t storeEnumTagSinglePayload for MultiUserContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t CurrentRequest.speechPackage.getter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v4;
}

uint64_t OUTLINED_FUNCTION_251(uint64_t a1)
{
  *(v1 + 296) = a1;

  return swift_endAccess();
}

uint64_t outlined init with take of SharedContextService(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DD357840()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.executionRequestId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t key path getter for CurrentRequest.executionRequestId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.executionRequestId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CurrentRequest.refId.getter()
{
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v1;
}

{
  return CurrentRequest.refId.getter();
}

uint64_t OUTLINED_FUNCTION_248()
{
  *(v0 + 72) = v1;

  return swift_endAccess();
}

uint64_t sub_1DD357948()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.resultCandidateId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD357988()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.rootRequestId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t CurrentRequest.inputOrigin.getter(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();
}

uint64_t sub_1DD357A98()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.interactionId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t CurrentRequest.multiUserState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_103();
}

BOOL MultiUserState.isEnabled.getter()
{
  outlined init with copy of MultiUserState(v0, v3);
  v1 = v4;
  if (v4 != 1)
  {
    outlined destroy of MultiUserState(v3);
  }

  return v1 != 1;
}

uint64_t MultiUserState.requiresUserGrounding.getter()
{
  outlined init with copy of MultiUserState(v0, v3);
  if (v3[4] == 1)
  {
    outlined destroy of MultiUserState(v3);
    return 0;
  }

  else
  {
    memcpy(__dst, v3, 0x42uLL);
    v1 = __dst[0];
    outlined destroy of MultiUserContext(__dst);
  }

  return v1;
}

uint64_t sub_1DD357CD4()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.companionName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD357D14()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.responseLanguageVariant.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for MultiUserState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DD357DC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t protocol witness for Buildable.init(_:) in conformance CurrentRequest@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = CurrentRequest.__allocating_init(_:)(a2);
  *a1 = result;
  return result;
}

void CurrentRequest.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v297 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v30);
  v31 = type metadata accessor for ExecutionLocation();
  v32 = OUTLINED_FUNCTION_4_1(v31, &a17);
  v287 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21(&v259 - v39);
  v40 = type metadata accessor for ResponseMode();
  v41 = OUTLINED_FUNCTION_4_1(v40, &v305);
  v283 = v42;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_2(v43, v259);
  v45 = MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_37(v45, v46, v47, v48, v49, v50, v51, v52, v259);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  OUTLINED_FUNCTION_10(v53);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_21(&v259 - v55);
  v56 = type metadata accessor for InteractionType();
  v57 = OUTLINED_FUNCTION_4_1(v56, &v296);
  v275 = v58;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  OUTLINED_FUNCTION_10(v61);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_21(&v259 - v63);
  v64 = type metadata accessor for InputOrigin();
  v65 = OUTLINED_FUNCTION_4_1(v64, v282);
  v271 = v66;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v70 = OUTLINED_FUNCTION_10(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v74 = OUTLINED_FUNCTION_10(v73);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v78 = OUTLINED_FUNCTION_10(v77);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v259 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v83 = OUTLINED_FUNCTION_10(v82);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_12();
  v86 = v84 - v85;
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_121();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v89 = OUTLINED_FUNCTION_10(v88);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_12();
  v92 = v90 - v91;
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_191();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 3));
  OUTLINED_FUNCTION_73();
  v20[4] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 4));
  OUTLINED_FUNCTION_73();
  v20[5] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 5));
  OUTLINED_FUNCTION_73();
  v20[6] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 6));
  OUTLINED_FUNCTION_73();
  v20[7] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v20 + 7));
  OUTLINED_FUNCTION_73();
  v20[10] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_98((v20 + 10));
  type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  OUTLINED_FUNCTION_292();
  outlined init with copy of AudioSource?(v98, v99, v100, &_s13SiriUtilities11AudioSourceVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  v269 = v101;
  swift_allocObject();
  v273 = v92;
  v102 = MockablePublished.init(wrappedValue:)();
  v272 = v21;
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v21, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v25[11] = v102;
  OUTLINED_FUNCTION_98((v25 + 11));
  v103 = type metadata accessor for AudioDestination();
  v106 = OUTLINED_FUNCTION_20(v103, v104, v105, v103);
  outlined init with copy of AudioSource?(v106, v86, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  v270 = v107;
  swift_allocObject();
  v278 = v86;
  v108 = MockablePublished.init(wrappedValue:)();
  v277 = v22;
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v109, v110, v111);
  v25[12] = v108;
  OUTLINED_FUNCTION_98((v25 + 12));
  type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v116, v117, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  v276 = v118;
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  v119 = MockablePublished.init(wrappedValue:)();
  v282[9] = v81;
  v120 = v260;
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v121, v122, v123);
  v25[15] = v119;
  OUTLINED_FUNCTION_24((v25 + 15));
  v124 = OUTLINED_FUNCTION_264();
  outlined init with copy of AudioSource?(v124, v125, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  v280 = v126;
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_183();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v127, v128, v129);
  v25[16] = v119;
  OUTLINED_FUNCTION_98((v25 + 16));
  v130 = type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_44(v130, v131, v132, v130);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v133, v134, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  v281 = v135;
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v136 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v136, v137, &_s13SiriUtilities8HomeInfoVSgMR);
  v25[17] = v119;
  OUTLINED_FUNCTION_141((v25 + 17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  v282[0] = v138;
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v25[18] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v25 + 18));
  OUTLINED_FUNCTION_73();
  v25[19] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_190((v25 + 19));
  LOBYTE(v302) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v25[20] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_141((v25 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  v282[4] = v139;
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v25[22] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_14((v25 + 22));
  OUTLINED_FUNCTION_73();
  v25[25] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_200((v25 + 25));
  LOBYTE(v302) = 2;
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_73();
  v25[26] = MockablePublished.init(wrappedValue:)();
  v140 = OUTLINED_FUNCTION_98((v25 + 26));
  v141 = type metadata accessor for FlowTaskMetadata(v140);
  v142 = v291;
  OUTLINED_FUNCTION_44(v141, v143, v144, v141);
  OUTLINED_FUNCTION_137();
  outlined init with copy of AudioSource?(v145, v146, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  v282[7] = v147;
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v148 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v148, v149, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v25[27] = v119;
  OUTLINED_FUNCTION_14((v25 + 27));
  OUTLINED_FUNCTION_73();
  v150 = MockablePublished.init(wrappedValue:)();
  v294 = v25;
  v25[29] = v150;
  v25 += 29;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[5] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[7] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[8] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v25[9] = MockablePublished.init(wrappedValue:)();
  v302 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v151 = MockablePublished.init(wrappedValue:)();
  v293 = v25;
  v25[11] = v151;
  swift_getKeyPath();
  v152 = v297;
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_52();
  v153 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v153);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_52();
  v154 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v154);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_52();
  v155 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v155);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_52();
  v156 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v156);
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_52();
  v157 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v157);
  swift_getKeyPath();
  OUTLINED_FUNCTION_175();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_270(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, 1, v120);
  if (v158)
  {
    OUTLINED_FUNCTION_175();
    v159 = OUTLINED_FUNCTION_302();
    v160(v159);
    OUTLINED_FUNCTION_270(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, 1, v120);
    if (!v158)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_175();
    v161 = OUTLINED_FUNCTION_302();
    v162(v161, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, v120);
  }

  v163 = v294;
  OUTLINED_FUNCTION_71((v294 + 8));
  v164 = OUTLINED_FUNCTION_284();
  v165(v164, v142, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  v166 = MockablePublished.init(wrappedValue:)();
  _s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMd(v142, v120);
  v163[8] = v166;
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  v168 = v274;
  Builder.subscript.getter();

  v169 = v279;
  OUTLINED_FUNCTION_270(v168, 1, v279);
  v170 = v275;
  if (v158)
  {
    v171 = OUTLINED_FUNCTION_284();
    v172(v171);
    OUTLINED_FUNCTION_270(v168, 1, v169);
    if (!v158)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v168, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_290();
    v173();
  }

  OUTLINED_FUNCTION_71((v163 + 9));
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_167();
  v174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  v175 = MockablePublished.init(wrappedValue:)();
  (*(v170 + 8))(KeyPath, v169);
  v163[9] = v175;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_52();
  v163[10] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_175();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v176, v177, v178, v179);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_268();
  MockablePublished.init(wrappedValue:)();
  v180 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_254(v180);
  v163[11] = v152;
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136();

  v181 = &_s13SiriUtilities16AudioDestinationVSgMR;
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v182, v183, v184, v185);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v186 = OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_254(v186);
  v163[12] = v152;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_175();
  Builder.subscript.getter();
  v187 = v169;

  v188 = v169;
  v189 = v284;
  OUTLINED_FUNCTION_270(v188, 1, v284);
  if (v158)
  {
    v181 = v282[11];
    static ResponseMode.displayForward.getter();
    OUTLINED_FUNCTION_270(v187, 1, v189);
    v190 = v283;
    if (!v158)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v187, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    v190 = v283;
    v191 = OUTLINED_FUNCTION_302();
    v192(v191, v187, v189);
  }

  OUTLINED_FUNCTION_71((v163 + 13));
  v193 = v282[10];
  OUTLINED_FUNCTION_290();
  v194();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  v195 = MockablePublished.init(wrappedValue:)();
  (*(v190 + 8))(v181, v189);
  v163[13] = v195;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v196 = v285;
  if (v301 == 2)
  {
    OUTLINED_FUNCTION_225();
  }

  else
  {
    v197 = OUTLINED_FUNCTION_264();
    memcpy(v197, v198, 0x42uLL);
  }

  OUTLINED_FUNCTION_185((v163 + 14), v298);
  v199 = OUTLINED_FUNCTION_264();
  outlined init with copy of MultiUserState(v199, v200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  v201 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v201);
  v163[14] = v195;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_188();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v202, v203, v204, v205);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v206 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_254(v206);
  v163[15] = v152;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v207, v208, v209, v210);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  v211 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_254(v211);
  v163[16] = v152;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_188();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_102();
  outlined init with copy of AudioSource?(v212, v213, v214, v215);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v216 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_254(v216);
  v163[17] = v152;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v217 = v299;
  OUTLINED_FUNCTION_136();

  v298[0] = v217;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v163[18] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_52();
  v163[19] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  LOBYTE(v217) = v299;
  OUTLINED_FUNCTION_136();

  LOBYTE(v298[0]) = v217;
  OUTLINED_FUNCTION_165();
  v163[20] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  if (v303)
  {
    v218 = v302;
  }

  else
  {
    v218 = 0;
  }

  if (v303)
  {
    v219 = v303;
  }

  else
  {
    v219 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_71((v163 + 21));
  v299 = v218;
  v300 = v219;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v163[21] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v220 = v299;
  OUTLINED_FUNCTION_136();

  v298[0] = v220;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v163[22] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_52();
  v163[25] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  LOBYTE(v220) = v299;
  OUTLINED_FUNCTION_136();

  LOBYTE(v298[0]) = v220;
  OUTLINED_FUNCTION_165();
  v163[26] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  v221 = v291;
  Builder.subscript.getter();

  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_128();
  outlined init with copy of AudioSource?(v222, v223, v224, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_183();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v225, v226, v227);
  v163[27] = v152;
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  if (BYTE4(v302))
  {
    v228 = 0;
  }

  else
  {
    v228 = v302;
  }

  OUTLINED_FUNCTION_71((v163 + 28));
  LODWORD(v299) = v228;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v163[28] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_52();
  v163[29] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71((v163 + 30));
  OUTLINED_FUNCTION_297();
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v163[30] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71((v163 + 31));
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_76();
  v163[31] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71((v163 + 32));
  OUTLINED_FUNCTION_297();
  v292 = v229;
  swift_allocObject();
  v163[32] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148();
  Builder.subscript.getter();

  if (v302 == 3)
  {
    v230 = 0;
  }

  else
  {
    v230 = v302;
  }

  OUTLINED_FUNCTION_71((v163 + 33));
  LOBYTE(v299) = v230;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v163[33] = OUTLINED_FUNCTION_231();
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  v231 = v299;
  OUTLINED_FUNCTION_71(v221 + 40);

  OUTLINED_FUNCTION_52();
  v163[34] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_185((v163 + 35), v298);
  v304 = &type metadata for DummyLocationProvider;
  v305 = &protocol witness table for DummyLocationProvider;
  v232 = OUTLINED_FUNCTION_264();
  outlined init with copy of SiriLocationProvider(v232, v233);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_231();
  v234 = OUTLINED_FUNCTION_73();
  __swift_destroy_boxed_opaque_existential_1(v234);
  v163[35] = v231;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71(v221 + 56);

  OUTLINED_FUNCTION_52();
  v163[36] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_270(v235, v236, v237);
  if (v158)
  {
    v239 = v286;
    static ExecutionLocation.unknown.getter();
    OUTLINED_FUNCTION_270(v196, 1, v221);
    v240 = v288;
    v193 = v287;
    if (!v158)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v196, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_188();
    v239 = v286;
    (*(v238 + 32))(v286, v196, v221);
    v240 = v288;
  }

  OUTLINED_FUNCTION_71((v163 + 23));
  v291 = *(v193 + 16);
  v291(v295, v239, v221);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v241 = v239;
  OUTLINED_FUNCTION_118();
  v242 = MockablePublished.init(wrappedValue:)();
  v290 = *(v193 + 8);
  v290(v241, v221);
  v163[23] = v242;
  swift_endAccess();
  swift_getKeyPath();
  Builder.subscript.getter();
  v243 = v296;

  OUTLINED_FUNCTION_270(v240, 1, v243);
  if (v158)
  {
    v244 = v289;
    static ExecutionLocation.unknown.getter();
    OUTLINED_FUNCTION_270(v240, 1, v243);
    if (!v158)
    {
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v240, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
    }
  }

  else
  {
    v244 = v289;
    (*(v193 + 32))(v289, v240, v243);
  }

  v245 = v294;
  OUTLINED_FUNCTION_71((v294 + 24));
  v246 = OUTLINED_FUNCTION_86(&a16);
  v291(v246, v244, v243);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v247 = OUTLINED_FUNCTION_99();
  v290(v247, v243);
  OUTLINED_FUNCTION_256();
  swift_getKeyPath();
  Builder.subscript.getter();

  v248 = v293;
  OUTLINED_FUNCTION_71((v293 + 8));

  OUTLINED_FUNCTION_52();
  v249 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v249);
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71((v248 + 9));

  OUTLINED_FUNCTION_52();
  v250 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v250);
  swift_getKeyPath();
  Builder.subscript.getter();

  OUTLINED_FUNCTION_71((v245 + 39));
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v251 = OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_255(v251);
  CurrentRequest.overrideProperties.setter(0, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);

  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_1DD359AF0()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.refId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD359B1C()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.aceId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD359B48()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.sessionHandoffContinuityID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD359B74()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.peerName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD359CB8()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.speechPackage.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DD359CE4()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.asrOnDevice.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DD359D34()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.currentDeviceAssistantId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD359D60()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.voiceTriggerEventInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DD359DDC()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.isRecognizeMyVoiceEnabled.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DD359E2C()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.voiceAudioSessionId.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DD359E7C()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD359EA8()
{
  OUTLINED_FUNCTION_127();
  v0 = CurrentRequest.isSystemApertureEnabled.getter();
  return OUTLINED_FUNCTION_296(v0);
}

uint64_t sub_1DD359EF4()
{
  OUTLINED_FUNCTION_127();
  v0 = CurrentRequest.isLiveActivitiesSupported.getter();
  return OUTLINED_FUNCTION_296(v0);
}

uint64_t sub_1DD359F40()
{
  OUTLINED_FUNCTION_127();
  v0 = CurrentRequest.isInAmbient.getter();
  return OUTLINED_FUNCTION_296(v0);
}

uint64_t sub_1DD359F94()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.requestLanguageVariant.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD359FC0()
{
  OUTLINED_FUNCTION_127();
  v0 = CurrentRequest.remoteRequestWasMadeInSession.getter();
  return OUTLINED_FUNCTION_296(v0);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_beginAccess();
}

uint64_t getEnumTagSinglePayload for MultiUserState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 66))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double OUTLINED_FUNCTION_24@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 128) = 0;
  result = 0.0;
  *(v2 - 160) = 0u;
  *(v2 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_186()
{

  return MockablePublished.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_150(__n128 a1, __n128 a2)
{
  *(v2 - 160) = a1;
  *(v2 - 144) = a2;
  v3 = *(v2 + 48);
  *(v2 - 192) = *(v2 + 64);
  *(v2 - 176) = v3;
  v4 = *(v2 + 80);
  *(v2 - 224) = *(v2 + 96);
  *(v2 - 208) = v4;
  return *(v2 + 168);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return static MockablePublished.subscript.setter();
}

void CurrentRequest.init(storage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v224 = v25;
  v26 = type metadata accessor for ExecutionLocation();
  v27 = OUTLINED_FUNCTION_4_1(v26, &a12);
  v222 = v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v30);
  v31 = type metadata accessor for ResponseMode();
  v32 = OUTLINED_FUNCTION_4_1(v31, &v234);
  v219 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v35);
  v36 = type metadata accessor for InteractionType();
  v37 = OUTLINED_FUNCTION_4_1(v36, &v233);
  v216 = v38;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v40);
  v41 = type metadata accessor for InputOrigin();
  v42 = OUTLINED_FUNCTION_4_1(v41, v232);
  v212 = v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v47 = OUTLINED_FUNCTION_10(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v51 = OUTLINED_FUNCTION_10(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_121();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v54 = OUTLINED_FUNCTION_10(v53);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v58 = OUTLINED_FUNCTION_10(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v197 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v63 = OUTLINED_FUNCTION_10(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_9_0();
  v65 = v64;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_191();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[4] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[5] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[6] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[7] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[10] = MockablePublished.init(wrappedValue:)();
  v201 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v198 = v21;
  v200 = v65;
  outlined init with copy of AudioSource?(v21, v65, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v72 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v72, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v73);
  v202 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v199 = v61;
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v78, v79, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v80 = OUTLINED_FUNCTION_104();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v80, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v81);
  v208 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_64(v208, v82, v83, v208);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v84, v85, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v86 = OUTLINED_FUNCTION_111();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v86, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v87);
  v88 = OUTLINED_FUNCTION_116();
  outlined init with copy of AudioSource?(v88, v89, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v90 = OUTLINED_FUNCTION_73();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v90, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v20[16] = v20;
  v91 = type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_20(v91, v92, v93, v91);
  OUTLINED_FUNCTION_137();
  outlined init with copy of AudioSource?(v94, v95, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v96, v97, v98);
  v20[17] = v20;
  v231 = 0;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v99 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v99);
  v204 = v100;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v101 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v101);
  OUTLINED_FUNCTION_144(v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v103 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v103);
  OUTLINED_FUNCTION_141(v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[22] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v105 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v105);
  OUTLINED_FUNCTION_205(v106);
  LOBYTE(v231) = 2;
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_73();
  v107 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v107);
  v109 = OUTLINED_FUNCTION_98(v108);
  v206 = type metadata accessor for FlowTaskMetadata(v109);
  v110 = OUTLINED_FUNCTION_27(&a15);
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
  OUTLINED_FUNCTION_159();
  outlined init with copy of AudioSource?(v114, v115, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v116 = OUTLINED_FUNCTION_99();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v116, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_190(v117);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v118 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v118);
  v210 = v119;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v20[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_73();
  v120 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v20[40] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_175();
  v122 = v211;
  v123 = v214;
  (*(v121 + 104))(v211);
  OUTLINED_FUNCTION_71((v24 + 8));
  v124 = v123;
  MEMORY[0x12](v213, v122, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v125(v122, v123);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_175();
  v127 = v215;
  v128 = v217;
  (*(v126 + 104))(v215);
  OUTLINED_FUNCTION_71((v24 + 9));
  v129 = v124;
  v130 = OUTLINED_FUNCTION_284();
  v131 = v128;
  v132(v130, v127, v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  v133 = MockablePublished.init(wrappedValue:)();
  (*(v129 + 8))(v127, v131);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_158(v134, v135, v136, &v224);
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_173();
  outlined init with copy of AudioSource?(v137, v138, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v139, v140, v141);
  *v131 = v133;
  swift_endAccess();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_158(v142, v143, v144, &v225);
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_137();
  outlined init with copy of AudioSource?(v145, v146, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v147, v148, v149);
  _s13SiriUtilities11AudioSourceVSgMd = v133;
  swift_endAccess();
  v150 = v218;
  static ResponseMode.displayForward.getter();
  OUTLINED_FUNCTION_71((v24 + 13));
  v151 = v219;
  v152 = OUTLINED_FUNCTION_162();
  v153 = v220;
  v154(v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  v155 = MockablePublished.init(wrappedValue:)();
  (*(v151 + 8))(v150, v153);
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_88();
  v156 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v156, v157);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v158 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v158);
  OUTLINED_FUNCTION_246();
  v159 = OUTLINED_FUNCTION_27(&a16);
  OUTLINED_FUNCTION_158(v159, v160, v161, &v230);
  OUTLINED_FUNCTION_33();

  outlined init with copy of AudioSource?(&_s13SiriUtilities16AudioDestinationVSgMR, v226, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  v162 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v162, v163, &_s13SiriUtilities14BargeInContextVSgMR);
  *v153 = v155;
  swift_endAccess();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  v227 = 0;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v164 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v164);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  v227 = 0;
  v228 = 0;
  OUTLINED_FUNCTION_114();
  v165 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v165);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  LOBYTE(v227) = 2;
  OUTLINED_FUNCTION_165();
  v166 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v166);
  OUTLINED_FUNCTION_71((v24 + 21));
  v227 = 0;
  v228 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v167 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_245(v167);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  v227 = 0;
  v228 = 0;
  OUTLINED_FUNCTION_114();
  v168 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v168);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  LOBYTE(v227) = 2;
  OUTLINED_FUNCTION_165();
  v169 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v169);
  v170 = OUTLINED_FUNCTION_27(&a15);
  OUTLINED_FUNCTION_158(v170, v171, v172, &v229);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_305();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v173, v174, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v175 = OUTLINED_FUNCTION_99();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v175, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_71((v24 + 28));
  LODWORD(v227) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v176 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v176);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  v227 = 0;
  v228 = 0;
  OUTLINED_FUNCTION_114();
  v177 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v177);
  OUTLINED_FUNCTION_71((v24 + 30));
  LOBYTE(v227) = 0;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v179 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v179);
  OUTLINED_FUNCTION_71((v24 + 31));
  LOBYTE(v227) = 0;
  OUTLINED_FUNCTION_76();
  v180 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v180);
  OUTLINED_FUNCTION_71((v24 + 32));
  LOBYTE(v227) = 0;
  v226 = v178;
  OUTLINED_FUNCTION_76();
  v181 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v181);
  OUTLINED_FUNCTION_71((v24 + 33));
  LOBYTE(v227) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v182 = OUTLINED_FUNCTION_186();
  v183 = v24;
  OUTLINED_FUNCTION_239(v182);
  OUTLINED_FUNCTION_71((v24 + 34));

  v227 = 0;
  v228 = 0;
  OUTLINED_FUNCTION_114();
  v184 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v184);
  OUTLINED_FUNCTION_87();
  v232[2] = &type metadata for DummyLocationProvider;
  v232[3] = &protocol witness table for DummyLocationProvider;
  v185 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v185, v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v187 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v187);
  OUTLINED_FUNCTION_71((v24 + 36));

  v227 = 0;
  v228 = 0;
  v197 = v67;
  OUTLINED_FUNCTION_114();
  v188 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v188);
  v189 = v221;
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v183 + 23));
  v190 = v222;
  v191 = *(v222 + 16);
  v192 = OUTLINED_FUNCTION_125(&a10);
  v193 = v223;
  v191(v192, v189, v223);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  v194 = MockablePublished.init(wrappedValue:)();
  v195 = *(v190 + 8);
  v195(v189, v193);
  v183[23] = v194;
  swift_endAccess();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v183 + 24));
  v191(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, v189, v193);
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v196 = OUTLINED_FUNCTION_268();
  v195(v196, v193);
  v183[24] = v194;
  swift_endAccess();
  OUTLINED_FUNCTION_71((v183 + 37));

  v227 = 0;
  v228 = 0;
  OUTLINED_FUNCTION_76();
  v183[37] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_71((v183 + 38));

  v227 = 0;
  v228 = 0;
  OUTLINED_FUNCTION_76();
  v183[38] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_71((v183 + 39));
  LOBYTE(v227) = 0;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v183[39] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_170();
}

uint64_t outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_247()
{
  *(v0 + 104) = v1;

  return swift_endAccess();
}

uint64_t outlined init with copy of AudioSource?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_112()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_115()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_114()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_163@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 - 256) = a6;
  *(v7 - 696) = a5;
  *(v7 - 792) = a4;
  *(v7 - 776) = a3;
  *(v7 - 824) = a2;
  *(v7 - 816) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0(void *a1)
{
  v3 = a1[17];
  v4 = a1[18];
  v5 = a1[19];
  v6 = a1[20];
  v7 = a1[21];
  v8 = a1[22];

  return outlined consume of Policy?(v3, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_249()
{
  *(v0 + 64) = v1;

  return swift_endAccess();
}

uint64_t type metadata accessor for FlowTaskMetadata(uint64_t a1)
{
  result = type metadata singleton initialization cache for FlowTaskMetadata;
  if (!type metadata singleton initialization cache for FlowTaskMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 160) = 0;
  *(v2 - 152) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_279()
{
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v2 - 160));
  *(v1 + 280) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_202(uint64_t a1)
{
  *v1 = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_246()
{
  *(v0 + 112) = v1;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_26_0()
{

  JUMPOUT(0x1E12ADF20);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_189(uint64_t result)
{
  *(v1 + 304) = result;
  *(v2 - 160) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_220()
{
  *v1 = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_253(uint64_t a1)
{
  *(v1 + 272) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_219()
{
}

uint64_t OUTLINED_FUNCTION_218()
{
}

uint64_t OUTLINED_FUNCTION_217(uint64_t a1)
{
  *v1 = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_244()
{
  *v1 = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return static MockablePublished.subscript.getter();
}

uint64_t outlined init with copy of SiriLocationProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_74()
{

  return outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v1, v2, v0);
}

double OUTLINED_FUNCTION_225()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 1;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_140@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = *(a1 - 256);

  return swift_allocObject();
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

uint64_t OUTLINED_FUNCTION_274()
{
  *(v0 + 184) = v1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_185(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of AudioSource?(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_240(uint64_t a1)
{
  *(v1 + 256) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_239(uint64_t a1)
{
  *(v1 + 264) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_238()
{

  return swift_getKeyPath();
}

void CurrentRequest.overrideProperties.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

{
  CurrentRequest.overrideProperties.setter(a1, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR, &unk_1DD385DA8, &unk_1DD385DD0, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DD35BE98()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.overrideProperties.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DD35BF18()
{
  OUTLINED_FUNCTION_127();
  result = CurrentRequest.sessionId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t SiriEnvironment.currentRequest.setter()
{
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_29(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_97();

  return dispatch thunk of SiriEnvironment.subscript.setter();
}

uint64_t FlowTaskMetadata.init(id:isClientInitiated:creationTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for FlowTaskMetadata(0) + 24);
  v11 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(a5 + v10, 1, 1, v11);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  outlined destroy of Date?(a5 + v10);
  (*(*(v11 - 8) + 32))(a5 + v10, a4, v11);

  return __swift_storeEnumTagSinglePayload(a5 + v10, 0, 1, v11);
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CurrentRequest.flowTaskMetadata.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v4 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v4, v5, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t static SharedContext.current.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for internalSharedContext != -1)
  {
    OUTLINED_FUNCTION_0_3(&one-time initialization token for internalSharedContext);
  }

  v2 = static SharedContext.internalSharedContext;
  a1[3] = type metadata accessor for RefreshableSharedContext();
  a1[4] = &protocol witness table for RefreshableSharedContext;
  *a1 = v2;
}

uint64_t _s19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOs0H3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLO11stringValueAFSgSS_tcfC_0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD35C508()
{
  OUTLINED_FUNCTION_127();
  result = SiriEnvironment.currentRequest.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DD35D4AC@<X0>(uint64_t *a1@<X8>)
{
  result = SiriEnvironment.homeKitProvider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD35D4DC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_3();
  result = (*(v2 + 120))();
  *a1 = result;
  return result;
}

uint64_t sub_1DD35D564()
{

  if (*(v0 + 144) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1DD35D600()
{

  if (*(v0 + 88) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DD35D680()
{
  OUTLINED_FUNCTION_7_2();
  result = (*(v1 + 152))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD35D6C4()
{
  OUTLINED_FUNCTION_7_2();
  result = (*(v1 + 176))();
  *v0 = result;
  return result;
}

uint64_t sub_1DD35D708()
{
  OUTLINED_FUNCTION_7_2();
  result = (*(v1 + 200))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD35D74C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DD35D79C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_1DD35DB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initRadarComponent()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initRadarComponent_cold_1();
  }

  result = objc_getClass("RadarComponent");
  classRadarComponent = result;
  getRadarComponentClass = RadarComponentFunction;
  return result;
}

void *__TapToRadarKitLibrary_block_invoke()
{
  result = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
  TapToRadarKitLibrary_sLib = result;
  return result;
}

Class initTapToRadarService()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initRadarComponent_cold_1();
  }

  result = objc_getClass("TapToRadarService");
  classTapToRadarService = result;
  getTapToRadarServiceClass = TapToRadarServiceFunction;
  return result;
}

Class initRadarDraft()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initRadarComponent_cold_1();
  }

  result = objc_getClass("RadarDraft");
  classRadarDraft = result;
  getRadarDraftClass = RadarDraftFunction;
  return result;
}

uint64_t UserSessionType.description.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x746E6569626D61;
  }

  if (v1 == 3)
  {
    return 0x7473657567;
  }

  _StringGuts.grow(_:)(45);

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v3, v4);

  MEMORY[0x1E12ADF70](41, 0xE100000000000000);
  return 0xD00000000000002ALL;
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 0xE700000000000000;
    v2 = 0x746E6569626D61;
  }

  else if (a1 == 3)
  {
    v1 = 0xE500000000000000;
    v2 = 0x7473657567;
  }

  else
  {
    _StringGuts.grow(_:)(45);

    if (a1)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (a1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1E12ADF70](v4, v5);

    MEMORY[0x1E12ADF70](41, 0xE100000000000000);
    v2 = 0xD00000000000002ALL;
    v1 = 0x80000001DD387560;
  }

  MEMORY[0x1E12ADF70](v2, v1);
}

uint64_t static UserSessionType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2 != 3)
    {
      if ((v3 & 0xFE) != 2)
      {
        v4 = v3 ^ v2 ^ 1;
        return v4 & 1;
      }

      goto LABEL_8;
    }

    if (v3 != 3)
    {
LABEL_8:
      v4 = 0;
      return v4 & 1;
    }
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UserSessionType.AmbientCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = UserSessionType.AmbientCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.AmbientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.AmbientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserSessionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6569626D61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473657567 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001DD387610 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int UserSessionType.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](a1);
  return Hasher._finalize()();
}

uint64_t UserSessionType.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746E6569626D61;
  }

  if (a1 == 1)
  {
    return 0x7473657567;
  }

  return 0xD000000000000013;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserSessionType.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](v2);
  return Hasher._finalize()();
}

uint64_t UserSessionType.EnrolledUserSessionCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001DD387630 == a2)
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

Swift::Int UserSessionType.EnrolledUserSessionCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserSessionType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = UserSessionType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UserSessionType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = UserSessionType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserSessionType.EnrolledUserSessionCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserSessionType.EnrolledUserSessionCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = UserSessionType.EnrolledUserSessionCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.EnrolledUserSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.EnrolledUserSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionType.GuestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionType.GuestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserSessionType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  v60 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v58 = v29;
  v59 = v28;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  v57 = &v51 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v55 = v33;
  v56 = v32;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  v54 = &v51 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v52 = v37;
  v53 = v36;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v51 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v42 = *v24;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v42 == 2)
  {
    lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();
    OUTLINED_FUNCTION_3();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v44 = v52;
    v43 = v53;
  }

  else
  {
    if (v42 != 3)
    {
      lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();
      v47 = v57;
      OUTLINED_FUNCTION_3();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = v59;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v58 + 8))(v47, v48);
      v49 = OUTLINED_FUNCTION_7();
      v50(v49);
      goto LABEL_7;
    }

    lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();
    v40 = v54;
    OUTLINED_FUNCTION_3();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v44 = v55;
    v43 = v56;
  }

  (*(v44 + 8))(v40, v43);
  v45 = OUTLINED_FUNCTION_7();
  v46(v45);
LABEL_7:
  OUTLINED_FUNCTION_8();
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

unint64_t lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys);
  }

  return result;
}

void UserSessionType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  a23 = v26;
  a24 = v27;
  v88 = v24;
  v29 = v28;
  v85 = v30;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO08EnrolledgH10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v84 = v31;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v77 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO15GuestCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v82 = v35;
  v83 = v34;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO17AmbientCodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v80 = v38;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v77 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v86 = v43;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v77 - v45;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  lazy protocol witness table accessor for type UserSessionType.CodingKeys and conformance UserSessionType.CodingKeys();
  v47 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
    goto LABEL_10;
  }

  v78 = v37;
  v79 = v41;
  v88 = v29;
  v48 = v46;
  v49 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLO_Tt1g5(v49, 0);
  if (v51 == v52 >> 1)
  {
LABEL_9:
    v64 = type metadata accessor for DecodingError();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v66 = &type metadata for UserSessionType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF8], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v86 + 8))(v48, v42);
    v29 = v88;
LABEL_10:
    v67 = v29;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_8();
    return;
  }

  v77 = 0;
  if (v51 < (v52 >> 1))
  {
    v54 = v46;
    v55 = *(v50 + v51);
    specialized ArraySlice.subscript.getter(v51 + 1, v52 >> 1, started, v50, v51, v52);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 == v59 >> 1)
    {
      if (v55)
      {
        if (v55 == 1)
        {
          a13 = 1;
          lazy protocol witness table accessor for type UserSessionType.GuestCodingKeys and conformance UserSessionType.GuestCodingKeys();
          OUTLINED_FUNCTION_4(&unk_1F58A2B20, &a13);
          v60 = v85;
          swift_unknownObjectRelease();
          (*(v82 + 8))(v25, v83);
          v61 = OUTLINED_FUNCTION_1();
          v62(v61);
          v63 = 3;
        }

        else
        {
          a14 = 2;
          lazy protocol witness table accessor for type UserSessionType.EnrolledUserSessionCodingKeys and conformance UserSessionType.EnrolledUserSessionCodingKeys();
          OUTLINED_FUNCTION_4(&unk_1F58A2BB0, &a14);
          v71 = v42;
          v72 = KeyedDecodingContainer.decode(_:forKey:)();
          v73 = v86;
          v74 = v72;
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_6();
          v76(v75);
          (*(v73 + 8))(v54, v71);
          v63 = v74 & 1;
          v60 = v85;
        }
      }

      else
      {
        a12 = 0;
        lazy protocol witness table accessor for type UserSessionType.AmbientCodingKeys and conformance UserSessionType.AmbientCodingKeys();
        v68 = v79;
        OUTLINED_FUNCTION_4(&unk_1F58A2B00, &a12);
        swift_unknownObjectRelease();
        (*(v80 + 8))(v68, v78);
        v69 = OUTLINED_FUNCTION_1();
        v70(v69);
        v63 = 2;
        v60 = v85;
      }

      *v60 = v63;
      v67 = v88;
      goto LABEL_11;
    }

    v48 = v54;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t UserSessionState.description.getter()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E12ADF70](0xD000000000000011, 0x80000001DD3875C0);
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v2);
  MEMORY[0x1E12ADF70](0xD000000000000022, 0x80000001DD3875E0);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v3, v4);

  MEMORY[0x1E12ADF70](93, 0xE100000000000000);
  return 0;
}

uint64_t UserSessionState.init(userSessionType:isSessionActiveForRecognizedUser:)@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, __int16 *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (v13 == 2 && (a2 & 1) != 0)
  {
    static Logger.environment.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DD354000, v14, v15, "#user-session: invalid state for ambient mode. isSessionActiveForRecognizedUser should be false", v16, 2u);
      MEMORY[0x1E12AE9C0](v16, -1, -1);
    }

    result = (*(v8 + 8))(v12, v6);
    v17 = 512;
  }

  else
  {
    if (a2)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v17 = v18 | v13;
  }

  *a3 = v17;
  return result;
}

uint64_t static UserSessionState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return a1[1] ^ a2[1] ^ 1u;
    }

    return 0;
  }

  if (v2 != 3)
  {
    if ((v3 & 0xFE) != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return a1[1] ^ a2[1] ^ 1u;
    }

    return 0;
  }

  if (v3 != 3)
  {
    return 0;
  }

  return a1[1] ^ a2[1] ^ 1u;
}

uint64_t UserSessionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373655372657375 && a2 == 0xEF657079546E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DD387650 == a2)
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

Swift::Int UserSessionState.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](a1 & 1);
  return Hasher._finalize()();
}

uint64_t UserSessionState.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0x7373655372657375;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserSessionState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = UserSessionState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UserSessionState.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = UserSessionState.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserSessionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserSessionState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedEncodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  v32 = v31;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = *v24;
  a10 = v24[1];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a14 = v36;
  a13 = 0;
  lazy protocol witness table accessor for type UserSessionType and conformance UserSessionType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v25)
  {
    a12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_8();
}

void UserSessionState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMd, &_ss22KeyedDecodingContainerVy19SiriFlowEnvironment16UserSessionStateV10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    lazy protocol witness table accessor for type UserSessionType and conformance UserSessionType();
    OUTLINED_FUNCTION_3();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = OUTLINED_FUNCTION_7();
    v32(v31);
    *v28 = a14;
    v28[1] = v30 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_8();
}

uint64_t default argument 1 of InteractionTypeHelper.init(accessibilityStatusProvider:deviceClassProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MobileGestaltDeviceClassProvider();
  v3 = MEMORY[0x1E69D3660];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return static MobileGestaltDeviceClassProvider.shared.getter();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSPropertyListMutabilityOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19SiriFlowEnvironment15UserSessionTypeO10CodingKeys33_49A8E3186BDBBC2BEC4FA2E42DB801C5LLO_Tt1g5(uint64_t result, uint64_t a2)
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
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

unint64_t lazy protocol witness table accessor for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionState.CodingKeys and conformance UserSessionState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserSessionType and conformance UserSessionType()
{
  result = lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType;
  if (!lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType;
  if (!lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserSessionType and conformance UserSessionType);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unsigned __int8 *getEnumTagSinglePayload for UserSessionType(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 3);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserSessionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for UserSessionType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for UserSessionType(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserSessionState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserSessionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserSessionState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UserSessionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserSessionType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserSessionType.EnrolledUserSessionCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for UserSessionType.EnrolledUserSessionCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t FlowTaskMetadata.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FlowTaskMetadata.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FlowTaskMetadata.creationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowTaskMetadata(0) + 24);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FlowTaskMetadata.creationTime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowTaskMetadata(0) + 24);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata completion function for FlowTaskMetadata(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t InteractionTypeHelper.init(accessibilityStatusProvider:deviceClassProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of SharedContextService(a1, a3);

  return outlined init with take of SharedContextService(a2, a3 + 40);
}

uint64_t one-time initialization function for shared()
{
  qword_1EE15E8A0 = &type metadata for AccessibilityStatusProviderImpl;
  unk_1EE15E8A8 = &protocol witness table for AccessibilityStatusProviderImpl;
  qword_1EE15E8C8 = type metadata accessor for MobileGestaltDeviceClassProvider();
  unk_1EE15E8D0 = MEMORY[0x1E69D3660];
  __swift_allocate_boxed_opaque_existential_1(qword_1EE15E8B0);
  return static MobileGestaltDeviceClassProvider.shared.getter();
}

uint64_t one-time initialization function for interactionForIdiom()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassO_AC15InteractionTypeOtGMd, "z5");
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassO_AA15InteractionTypeOtMd, &_s13SiriUtilities11DeviceClassO_AA15InteractionTypeOtMR) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DD3855C0;
  v3 = v17 + v2;
  v4 = v0[14];
  v5 = *MEMORY[0x1E69D3440];
  v6 = type metadata accessor for DeviceClass();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  v8 = *MEMORY[0x1E69D35B0];
  v9 = type metadata accessor for InteractionType();
  v10 = *(*(v9 - 8) + 104);
  v16 = v8;
  v10(v3 + v4, v8, v9);
  v15 = v0[14];
  v7(v3 + v1, *MEMORY[0x1E69D3450], v6);
  v10(v3 + v1 + v15, v8, v9);
  v11 = v0[14];
  v7(v3 + 2 * v1, *MEMORY[0x1E69D3458], v6);
  v10(v3 + 2 * v1 + v11, *MEMORY[0x1E69D35A8], v9);
  v12 = v3 + 3 * v1;
  v13 = v0[14];
  v7(v12, *MEMORY[0x1E69D3430], v6);
  v10(v12 + v13, v16, v9);
  lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x1E69D3460], MEMORY[0x1E69D3468]);
  result = Dictionary.init(dictionaryLiteral:)();
  static InteractionTypeHelper.interactionForIdiom = result;
  return result;
}

uint64_t one-time initialization function for dialogDrivenInputOrigins()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11InputOriginOGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11InputOriginOGMR);
  v0 = type metadata accessor for InputOrigin();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD3855C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69D34D8], v0);
  v6(v5 + v2, *MEMORY[0x1E69D34E0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69D3500], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69D3510], v0);
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11InputOriginO_Tt0g5(v4);
  static InteractionTypeHelper.dialogDrivenInputOrigins = result;
  return result;
}

uint64_t *InteractionTypeHelper.dialogDrivenInputOrigins.unsafeMutableAddressor()
{
  if (one-time initialization token for dialogDrivenInputOrigins != -1)
  {
    OUTLINED_FUNCTION_1_0(&one-time initialization token for dialogDrivenInputOrigins);
  }

  return &static InteractionTypeHelper.dialogDrivenInputOrigins;
}

uint64_t static InteractionTypeHelper.interactionType(inputOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for dialogDrivenInputOrigins != -1)
  {
    OUTLINED_FUNCTION_1_0(&one-time initialization token for dialogDrivenInputOrigins);
  }

  v4 = specialized Set.contains(_:)(a1, static InteractionTypeHelper.dialogDrivenInputOrigins);
  type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_5_0();
  v7 = *(v6 + 104);
  v8 = MEMORY[0x1E69D35A8];
  if (!v4)
  {
    v8 = MEMORY[0x1E69D35B0];
  }

  v9 = *v8;

  return v7(a2, v9, v5);
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520], MEMORY[0x1E69D3528]);
  v16 = a1;
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520], MEMORY[0x1E69D3530]);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

{
  v4 = type metadata accessor for AudioDestination();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0], MEMORY[0x1E69D35C8]);
  v16 = a1;
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0], MEMORY[0x1E69D35D0]);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

uint64_t one-time initialization function for dialogDrivenAudioDestinations()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMR);
  type metadata accessor for AudioDestination();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD3855D0;
  static AudioDestination.bluetoothHandsFreeDevice.getter();
  static AudioDestination.bluetoothA2DPDevice.getter();
  static AudioDestination.carAudio.getter();
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities16AudioDestinationV_Tt0g5(v0);
  static InteractionTypeHelper.dialogDrivenAudioDestinations = result;
  return result;
}

uint64_t *InteractionTypeHelper.dialogDrivenAudioDestinations.unsafeMutableAddressor()
{
  if (one-time initialization token for dialogDrivenAudioDestinations != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for dialogDrivenAudioDestinations);
  }

  return &static InteractionTypeHelper.dialogDrivenAudioDestinations;
}

uint64_t static InteractionTypeHelper.dialogDrivenInputOrigins.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t static InteractionTypeHelper.interactionType(audioDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v14 = v13 - v12;
  outlined init with copy of AudioDestination?(a1, v7, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of AudioDestination?(v7, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v15 = *MEMORY[0x1E69D35B0];
    type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0();
    return (*(v16 + 104))(a2, v15);
  }

  else
  {
    (*(v10 + 32))(v14, v7, v8);
    if (one-time initialization token for dialogDrivenAudioDestinations != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for dialogDrivenAudioDestinations);
    }

    v18 = specialized Set.contains(_:)(v14, static InteractionTypeHelper.dialogDrivenAudioDestinations);
    (*(v10 + 8))(v14, v8);
    type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_0();
    if (v18)
    {
      v20 = MEMORY[0x1E69D35A8];
    }

    else
    {
      v20 = MEMORY[0x1E69D35B0];
    }

    return (*(v19 + 104))(a2, *v20);
  }
}

uint64_t outlined init with copy of AudioDestination?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t getEnumTagSinglePayload for InteractionTypeHelper(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for InteractionTypeHelper(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11InputOriginO_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for InputOrigin();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities11InputOriginOGMd, &_ss11_SetStorageCy13SiriUtilities11InputOriginOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520], MEMORY[0x1E69D3528]);
    v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D3520], MEMORY[0x1E69D3530]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities16AudioDestinationV_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for AudioDestination();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities16AudioDestinationVGMd, &_ss11_SetStorageCy13SiriUtilities16AudioDestinationVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0], MEMORY[0x1E69D35C8]);
    v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      lazy protocol witness table accessor for type AudioSource and conformance AudioSource(&lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination, MEMORY[0x1E69D35C0], MEMORY[0x1E69D35D0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type AudioSource and conformance AudioSource(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t SiriLocationProvider.requestOrigin()()
{
  OUTLINED_FUNCTION_3_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriLocationProvider.requestOrigin(), 0, 0);
}

{
  v1 = v0[5];
  v9 = v0[3];
  v2 = type metadata accessor for DispatchTimeInterval();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v8 = (*(v9 + 8) + **(v9 + 8));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = SiriLocationProvider.requestOrigin();
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return v8(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  outlined destroy of DispatchTimeInterval?(v2);

  v5 = OUTLINED_FUNCTION_1_1();

  return v6(v5);
}

uint64_t outlined destroy of DispatchTimeInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DummyLocationProvider.requestOrigin(searchTimeout:)()
{
  OUTLINED_FUNCTION_3_1();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](DummyLocationProvider.requestOrigin(searchTimeout:), 0, 0);
}

uint64_t DummyLocationProvider.requestOrigin(searchTimeout:)(uint64_t a1)
{
  static Logger.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD354000, v2, v3, "DummyLocationProvider was used; this should not happen.", v4, 2u);
    MEMORY[0x1E12AE9C0](v4, -1, -1);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8(0);
}

uint64_t protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance DummyLocationProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance DummyLocationProvider;

  return DummyLocationProvider.requestOrigin(searchTimeout:)();
}

{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_1();

  return v4(v3);
}

uint64_t dispatch thunk of SiriLocationProvider.requestOrigin(searchTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance DummyLocationProvider;

  return v9(a1, a2, a3);
}

CNContact_optional __swiftcall MeCardProxy.fetchMeCard()()
{
  v3 = 0;
  v1 = (*(v0 + 8))(&v3);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
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

unint64_t lazy protocol witness table accessor for type MeCardOptions and conformance MeCardOptions()
{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t specialized OptionSet<>.remove(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t specialized OptionSet<>.update(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriFlowEnvironment::MeCardOptions protocol witness for RawRepresentable.init(rawValue:) in conformance MeCardOptions@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MeCardOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MeCardOptions@<X0>(uint64_t *a1@<X8>)
{
  result = MeCardOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeCardOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MeCardOptions(uint64_t result, int a2, int a3)
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

uint64_t outlined init with copy of MeCardProxy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment11MeCardProxy_pSgMd, &_s19SiriFlowEnvironment11MeCardProxy_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MeCardProxy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment11MeCardProxy_pSgMd, &_s19SiriFlowEnvironment11MeCardProxy_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MultiUserContext.handoffTargetDeviceID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:)()
{
  OUTLINED_FUNCTION_0_2();
  *(v3 + 40) = 0;
  *(v3 + 24) = 0u;
  result = OUTLINED_FUNCTION_1_2(v4, v3, 0);
  *(v2 + 48) = v1;
  *(v2 + 56) = v0;
  *(v2 + 64) = 512;
  return result;
}

uint64_t MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)()
{
  OUTLINED_FUNCTION_0_2();
  v4 = *v3;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0;
  result = OUTLINED_FUNCTION_1_2(v6, v5, 0);
  *(v2 + 48) = v1;
  *(v2 + 56) = v0;
  *(v2 + 64) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment11MeCardProxy_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double destructiveInjectEnumTag for MultiUserState(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2@<X0>(char a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 + 8) = a3;
  *a2 = a1;

  return outlined assign with take of MeCardProxy?(v3, a2 + 8);
}

double one-time initialization function for internalSharedContext()
{
  type metadata accessor for RefreshableSharedContext();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  static SharedContext.internalSharedContext = v0;
  return result;
}

double RefreshableSharedContext.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t RefreshableSharedContext.stateOrBail()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 88))(&v17, v5);
  if (v18)
  {
    return outlined init with take of SharedContextService(&v17, a1);
  }

  v16 = v4;
  outlined destroy of SharedContextService?(&v17);
  static Logger.logger.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v17 = v12;
    *v11 = 136315650;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 51;
    *(v11 + 22) = 2080;
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DD3876D0, &v17);
    _os_log_impl(&dword_1DD354000, v9, v10, "FatalError at %s:%lu - %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12AE9C0](v12, -1, -1);
    MEMORY[0x1E12AE9C0](v11, -1, -1);
  }

  (*(v16 + 8))(v7, v3);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RefreshableSharedContext.fetchContext(for:includesNearbyDevices:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RefreshableSharedContext.stateOrBail()(v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 8))(a1, a2, a3, a4, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t RefreshableSharedContext._fetchContext(with:)(uint64_t a1, uint64_t a2)
{
  RefreshableSharedContext.stateOrBail()(v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 16))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t RefreshableSharedContext.__deallocating_deinit()
{
  outlined destroy of SharedContextService?(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0);
}

double RefreshableSharedContext.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t outlined destroy of SharedContextService?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SharedContext(_BYTE *result, int a2, int a3)
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

uint64_t CurrentRequestOverrides.Field.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CurrentRequestOverrides.Field.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CurrentRequestOverrides.Field(uint64_t a1@<X8>)
{
  strcpy(a1, "responseMode");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t static CurrentRequestOverrides.OverrideError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  outlined init with copy of CurrentRequestOverrides.OverrideError(a1, v52);
  outlined init with copy of CurrentRequestOverrides.OverrideError(a2, &v54);
  if (!v53)
  {
    outlined init with copy of CurrentRequestOverrides.OverrideError(v52, &v49);
    if (!v57)
    {
      if (v49 == v54 && v50 == v55)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_29;
    }

    goto LABEL_13;
  }

  if (v53 == 1)
  {
    outlined init with copy of CurrentRequestOverrides.OverrideError(v52, &v49);
    v19 = v50;
    if (v57 == 1)
    {
      v45 = v12;
      v20 = v49;
      v22 = v54;
      v21 = v55;
      outlined init with take of Any(v51, v48);
      outlined init with take of Any(&v56, v47);
      if (v20 == v22 && v19 == v21)
      {

        v25 = v45;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v25 = v45;
        if ((v24 & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
LABEL_32:
          outlined destroy of CurrentRequestOverrides.OverrideError(v52);
          goto LABEL_15;
        }
      }

      outlined init with copy of Any(v48, v46);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_2_1();
        __swift_storeEnumTagSinglePayload(v29, v30, v31, v10);
        v32 = *(v25 + 32);
        v32(v18, v9, v10);
        outlined init with copy of Any(v47, v46);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_2_1();
          __swift_storeEnumTagSinglePayload(v33, v34, v35, v10);
          v32(v16, v7, v10);
          v26 = static ResponseMode.== infix(_:_:)();
          v36 = *(v25 + 8);
          v36(v16, v10);
          v36(v18, v10);
          OUTLINED_FUNCTION_3_2();
LABEL_29:
          outlined destroy of CurrentRequestOverrides.OverrideError(v52);
          return v26 & 1;
        }

        OUTLINED_FUNCTION_5_1();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v10);
        (*(v25 + 8))(v18, v10);
        OUTLINED_FUNCTION_3_2();
        v40 = v7;
      }

      else
      {
        OUTLINED_FUNCTION_5_1();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v10);
        OUTLINED_FUNCTION_3_2();
        v40 = v9;
      }

      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v40, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      goto LABEL_32;
    }

    __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_13:
  }

  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v52, &_s19SiriFlowEnvironment23CurrentRequestOverridesO13OverrideErrorO_AEtMd, &_s19SiriFlowEnvironment23CurrentRequestOverridesO13OverrideErrorO_AEtMR);
LABEL_15:
  v26 = 0;
  return v26 & 1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void static CurrentRequestOverrides.setOverrides(on:overrides:)(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v57 - v4;
  v6 = type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v61 = (v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = v57 - v11;
  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  v64 = (v10 + 32);
  v67 = (v10 + 16);
  v59 = (v10 + 8);
  v58 = a2;

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC8];
  v62 = v5;
  v60 = a2 + 64;
  v63 = v17;
  if (v16)
  {
    while (1)
    {
      v20 = v18;
LABEL_9:
      v16 &= v16 - 1;
      v21 = OUTLINED_FUNCTION_6_1(v20);
      outlined init with copy of Any(v21, &v69);
      outlined init with take of Any(&v69, &v71);
LABEL_10:
      v73[0] = v71;
      v73[1] = v72;
      if (!*(&v72 + 1))
      {

        CurrentRequest.overrideProperties.setter(v19, v43, v44, v45, v46, v47, v48, v49, v57[0], v57[1], v58, v59, v60, v61, v62, v63, v64, v65);
        return;
      }

      outlined init with take of Any(v73, &v71);
      outlined init with copy of Any(&v71, &v69);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v6);
      (*v64)(v12, v5, v6);
      v70 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
      v26 = v12;
      v27 = v12;
      v28 = v6;
      v66 = *v67;
      v66(boxed_opaque_existential_1, v27, v6);
      outlined init with take of Any(&v69, v68);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v19;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)();
      v32 = *(v19 + 16);
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_26;
      }

      v35 = v30;
      v36 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy19SiriFlowEnvironment23CurrentRequestOverridesO5FieldOypGMd, &_ss17_NativeDictionaryVy19SiriFlowEnvironment23CurrentRequestOverridesO5FieldOypGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
      {
        v37 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v35 = v37;
      }

      v6 = v28;
      v12 = v26;
      v19 = v74;
      v17 = v63;
      if (v36)
      {
        v39 = (*(v74 + 56) + 32 * v35);
        __swift_destroy_boxed_opaque_existential_1(v39);
        outlined init with take of Any(v68, v39);
      }

      else
      {
        *(v74 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        outlined init with take of Any(v68, (*(v19 + 56) + 32 * v35));
        v40 = *(v19 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_27;
        }

        *(v19 + 16) = v42;
      }

      v66(v61, v12, v6);
      CurrentRequest.responseMode.setter();
      (*v59)(v12, v6);
      __swift_destroy_boxed_opaque_existential_1(&v71);
      v5 = v62;
      v13 = v60;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v6);
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v5, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError();
    v53 = swift_allocError();
    v55 = v54;
    OUTLINED_FUNCTION_0_4(v53, v54);
    outlined init with copy of Any(&v71, v56);
    *(v55 + 48) = 1;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(&v71);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v16 = 0;
        v71 = 0u;
        v72 = 0u;
        goto LABEL_10;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
      if (v16)
      {
        v18 = v20;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError()
{
  result = lazy protocol witness table cache variable for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError;
  if (!lazy protocol witness table cache variable for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError);
  }

  return result;
}

void static CurrentRequestOverrides.applyOverrides(on:overrides:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for ResponseMode();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  if (*(a2 + 16))
  {
    v41 = v2;
    v42 = a2;
    v13 = a2 + 64;
    v14 = 1 << *(a2 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a2 + 64);
    v17 = (v14 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = (v10 + 32);
    v43 = (v10 + 8);

    v18 = 0;
    if (v16)
    {
      while (1)
      {
        v19 = v18;
LABEL_10:
        v16 &= v16 - 1;
        v20 = OUTLINED_FUNCTION_6_1(v19);
        outlined init with copy of Any(v20, &v46);
        outlined init with take of Any(&v46, &v49);
LABEL_11:
        v51[0] = v49;
        v51[1] = v50;
        if (!*(&v50 + 1))
        {

          CurrentRequest.overrideProperties.setter(v25, v26, v27, v28, v29, v30, v31, v32, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48);
          return;
        }

        outlined init with take of Any(v51, &v49);
        outlined init with copy of Any(&v49, &v46);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_2_1();
        __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
        (*v45)(v12, v6, v7);
        (*v44)(v52, v12, v7);
        CurrentRequest.responseMode.setter();
        (*v43)(v12, v7);
        __swift_destroy_boxed_opaque_existential_1(&v49);
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_5_1();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v7);
      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v6, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError();
      v36 = swift_allocError();
      v38 = v37;
      OUTLINED_FUNCTION_0_4(v36, v37);
      outlined init with copy of Any(&v49, v39);
      *(v38 + 48) = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v17)
        {
          v16 = 0;
          v49 = 0u;
          v50 = 0u;
          goto LABEL_11;
        }

        v16 = *(v13 + 8 * v19);
        ++v18;
        if (v16)
        {
          v18 = v19;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
    lazy protocol witness table accessor for type CurrentRequestOverrides.OverrideError and conformance CurrentRequestOverrides.OverrideError();
    swift_allocError();
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 2;
    swift_willThrow();
  }
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t lazy protocol witness table accessor for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field()
{
  result = lazy protocol witness table cache variable for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field;
  if (!lazy protocol witness table cache variable for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentRequestOverrides.Field and conformance CurrentRequestOverrides.Field);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentRequestOverrides(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment23CurrentRequestOverridesO13OverrideErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CurrentRequestOverrides.OverrideError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CurrentRequestOverrides.OverrideError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t destructiveInjectEnumTag for CurrentRequestOverrides.OverrideError(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 80));
}

void CurrentRequest.responseMode.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_8_1();
  v2(v1);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_97();
  v4(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t (*SiriEnvironment.currentRequest.modify(uint64_t *a1))()
{
  a1[1] = v1;
  a1[2] = type metadata accessor for CurrentRequest();
  a1[3] = OUTLINED_FUNCTION_29(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *a1 = dispatch thunk of SiriEnvironment.subscript.getter();
  return SiriEnvironment.currentRequest.modify;
}

uint64_t SiriEnvironment.currentRequest.modify(void *a1, char a2)
{
  if (a2)
  {

    dispatch thunk of SiriEnvironment.subscript.setter();
  }

  else
  {
    OUTLINED_FUNCTION_169();
    return dispatch thunk of SiriEnvironment.subscript.setter();
  }
}

SiriFlowEnvironment::RequestPositionInSession_optional __swiftcall RequestPositionInSession.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RequestPositionInSession@<X0>(uint64_t *a1@<X8>)
{
  result = RequestPositionInSession.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t CurrentRequest.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t key path getter for CurrentRequest.refId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.refId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void CurrentRequest.refId.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  CurrentRequest.refId.setter(a1, a2, &unk_1DD385DF8, &unk_1DD385E20, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  swift_getKeyPath();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.refId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$refId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 24, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$refId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 24);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$refId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$refId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.aceId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.aceId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.aceId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$aceId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 32, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$aceId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 32);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$aceId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$aceId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t (*CurrentRequest.executionRequestId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$executionRequestId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 40, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$executionRequestId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 40);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$executionRequestId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$executionRequestId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.sessionHandoffContinuityID : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.sessionHandoffContinuityID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.sessionHandoffContinuityID.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$sessionHandoffContinuityID.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 48, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$sessionHandoffContinuityID.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 48);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$sessionHandoffContinuityID.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$sessionHandoffContinuityID.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.peerName : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.peerName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.peerName.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$peerName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 56, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$peerName.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 56);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$peerName.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$peerName.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.inputOrigin.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_8_1();
  v2(v1);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_97();
  v4(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.inputOrigin.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$inputOrigin.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 64, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$inputOrigin.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 64);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$inputOrigin.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11InputOriginO_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$inputOrigin.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path setter for CurrentRequest.inputOrigin : CurrentRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

void CurrentRequest.interactionType.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_8_1();
  v2(v1);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_97();
  v4(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.interactionType.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$interactionType.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 72, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$interactionType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 72);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$interactionType.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA15InteractionTypeO_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$interactionType.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.interactionId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.interactionId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.interactionId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$interactionId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 80, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$interactionId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 80);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$interactionId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$interactionId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.audioSource.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v4 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v4, v5, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.audioSource.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$audioSource.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 88, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$audioSource.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 88);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$audioSource.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA11AudioSourceVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$audioSource.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path setter for CurrentRequest.audioSource : CurrentRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_290();
  outlined init with copy of AudioSource?(v13, v14, v15, a6);
  return a7(v12);
}

void CurrentRequest.audioDestination.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v4 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v4, v5, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.audioDestination.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$audioDestination.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 96, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$audioDestination.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 96);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$audioDestination.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA16AudioDestinationVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$audioDestination.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t (*CurrentRequest.responseMode.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$responseMode.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 104, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$responseMode.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 104);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$responseMode.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA12ResponseModeV_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$responseMode.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.multiUserState.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of MultiUserState(a1, v12);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  OUTLINED_FUNCTION_176(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  static MockablePublished.subscript.setter();
  return outlined destroy of MultiUserState(a1);
}

uint64_t (*CurrentRequest.multiUserState.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$multiUserState.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 112, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$multiUserState.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 112);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$multiUserState.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment14MultiUserStateO_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$multiUserState.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.bargeInContext.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v4 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v4, v5, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.bargeInContext.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$bargeInContext.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 120, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$bargeInContext.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 120);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$bargeInContext.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA14BargeInContextVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$bargeInContext.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.sharedContextService.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_103();
}

uint64_t CurrentRequest.sharedContextService.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of AudioSource?(a1, v12, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  v2 = OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_176(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  static MockablePublished.subscript.setter();
  return outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(a1, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
}

uint64_t (*CurrentRequest.sharedContextService.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$sharedContextService.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 128, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$sharedContextService.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 128);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$sharedContextService.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment20SharedContextService_pSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$sharedContextService.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.originatingHome.setter()
{
  OUTLINED_FUNCTION_171();
  v0 = OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_149();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_59();
  v4 = OUTLINED_FUNCTION_97();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v4, v5, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.originatingHome.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$originatingHome.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 136, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$originatingHome.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 136);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$originatingHome.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA8HomeInfoVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$originatingHome.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.speechPackage : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.speechPackage.getter();
  *a1 = result;
  return result;
}

uint64_t (*CurrentRequest.speechPackage.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$speechPackage.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 144, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$speechPackage.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 144);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$speechPackage.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySo15AFSpeechPackageCSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$speechPackage.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.resultCandidateId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.resultCandidateId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.resultCandidateId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$resultCandidateId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 152, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$resultCandidateId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 152);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$resultCandidateId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$resultCandidateId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.asrOnDevice : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.asrOnDevice.getter();
  *a1 = result;
  return result;
}

void CurrentRequest.asrOnDevice.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  CurrentRequest.asrOnDevice.setter(a1, &unk_1DD386348, &unk_1DD386370, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.asrOnDevice.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$asrOnDevice.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 160, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$asrOnDevice.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 160);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$asrOnDevice.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$asrOnDevice.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.currentDeviceAssistantId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_128();
  static MockablePublished.subscript.getter();

  return v1;
}

uint64_t key path getter for CurrentRequest.currentDeviceAssistantId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.currentDeviceAssistantId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void key path setter for CurrentRequest.currentDeviceAssistantId : CurrentRequest(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  CurrentRequest.currentDeviceAssistantId.setter(v1, v2, v3, v4, v5, v6);
}

void CurrentRequest.currentDeviceAssistantId.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  OUTLINED_FUNCTION_102();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.currentDeviceAssistantId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$currentDeviceAssistantId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 168, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$currentDeviceAssistantId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 168);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$currentDeviceAssistantId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySS_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$currentDeviceAssistantId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.voiceTriggerEventInfo : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.voiceTriggerEventInfo.getter();
  *a1 = result;
  return result;
}

uint64_t (*CurrentRequest.voiceTriggerEventInfo.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$voiceTriggerEventInfo.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 176, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$voiceTriggerEventInfo.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 176);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$voiceTriggerEventInfo.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySDyS2SGSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$voiceTriggerEventInfo.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.asrExecutionLocation.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  type metadata accessor for ExecutionLocation();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_8_1();
  v2(v1);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_97();
  v4(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.asrExecutionLocation.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$asrExecutionLocation.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 184, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$asrExecutionLocation.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 184);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$asrExecutionLocation.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$asrExecutionLocation.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

void CurrentRequest.nlExecutionLocation.setter()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_272();
  type metadata accessor for ExecutionLocation();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_8_1();
  v2(v1);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_97();
  v4(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t (*CurrentRequest.nlExecutionLocation.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$nlExecutionLocation.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 192, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$nlExecutionLocation.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 192);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$nlExecutionLocation.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVyAA17ExecutionLocationV_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$nlExecutionLocation.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.companionName : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.companionName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.companionName.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$companionName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 200, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$companionName.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 200);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$companionName.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$companionName.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.asrOnDevice.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v2;
}

uint64_t key path getter for CurrentRequest.isRecognizeMyVoiceEnabled : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isRecognizeMyVoiceEnabled.getter();
  *a1 = result;
  return result;
}

uint64_t (*CurrentRequest.isRecognizeMyVoiceEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isRecognizeMyVoiceEnabled.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 208, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isRecognizeMyVoiceEnabled.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 208);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$isRecognizeMyVoiceEnabled.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySbSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$isRecognizeMyVoiceEnabled.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t (*CurrentRequest.flowTaskMetadata.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$flowTaskMetadata.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 216, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$flowTaskMetadata.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 216);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$flowTaskMetadata.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0F12TaskMetadataVSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$flowTaskMetadata.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.voiceAudioSessionId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_128();
  static MockablePublished.subscript.getter();

  return v1;
}

uint64_t key path getter for CurrentRequest.voiceAudioSessionId : CurrentRequest@<X0>(_DWORD *a1@<X8>)
{
  result = CurrentRequest.voiceAudioSessionId.getter();
  *a1 = result;
  return result;
}

void CurrentRequest.voiceAudioSessionId.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.voiceAudioSessionId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$voiceAudioSessionId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 224, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$voiceAudioSessionId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 224);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$voiceAudioSessionId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVys6UInt32V_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$voiceAudioSessionId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.utterance : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.utterance.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$utterance.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 232, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$utterance.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 232);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$utterance.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$utterance.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.isSystemApertureEnabled : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isSystemApertureEnabled.getter();
  *a1 = result & 1;
  return result;
}

void CurrentRequest.isSystemApertureEnabled.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  CurrentRequest.isSystemApertureEnabled.setter(a1, &unk_1DD386680, &unk_1DD3866A8, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_134();
  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.isSystemApertureEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isSystemApertureEnabled.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 240, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isSystemApertureEnabled.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 240);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$isSystemApertureEnabled.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$isSystemApertureEnabled.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.isSystemApertureEnabled.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_295();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_147();
  static MockablePublished.subscript.getter();

  return v2;
}

uint64_t key path getter for CurrentRequest.isLiveActivitiesSupported : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isLiveActivitiesSupported.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*CurrentRequest.isLiveActivitiesSupported.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isLiveActivitiesSupported.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 248, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isLiveActivitiesSupported.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 248);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$isLiveActivitiesSupported.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$isLiveActivitiesSupported.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.isInAmbient : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isInAmbient.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*CurrentRequest.isInAmbient.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$isInAmbient.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 256, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$isInAmbient.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 256);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$isInAmbient.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$isInAmbient.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.positionInSession.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_103();
}

uint64_t key path getter for CurrentRequest.positionInSession : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.positionInSession.getter();
  *a1 = v3;
  return result;
}

void CurrentRequest.positionInSession.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_315();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  static MockablePublished.subscript.setter();
  OUTLINED_FUNCTION_314();
}

uint64_t (*CurrentRequest.positionInSession.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$positionInSession.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 264, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$positionInSession.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment24RequestPositionInSessionO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment24RequestPositionInSessionO_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 264);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$positionInSession.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment24RequestPositionInSessionO_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment24RequestPositionInSessionO_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$positionInSession.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.responseLanguageVariant : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.responseLanguageVariant.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.responseLanguageVariant.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$responseLanguageVariant.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 272, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$responseLanguageVariant.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 272);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$responseLanguageVariant.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$responseLanguageVariant.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t CurrentRequest.locationProvider.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  OUTLINED_FUNCTION_103();
}

uint64_t CurrentRequest.locationProvider.setter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of SiriLocationProvider(a1, v12);
  OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);

  OUTLINED_FUNCTION_176(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  static MockablePublished.subscript.setter();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*CurrentRequest.locationProvider.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$locationProvider.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 280, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$locationProvider.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0A16LocationProvider_p_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0A16LocationProvider_p_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 280);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$locationProvider.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0A16LocationProvider_p_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment0A16LocationProvider_p_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$locationProvider.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.requestLanguageVariant : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.requestLanguageVariant.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.requestLanguageVariant.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$requestLanguageVariant.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 288, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$requestLanguageVariant.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 288);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$requestLanguageVariant.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$requestLanguageVariant.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.rootRequestId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.rootRequestId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*CurrentRequest.rootRequestId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.rootRequestId.modify;
}

uint64_t CurrentRequest.$rootRequestId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 296, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$rootRequestId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 296);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$rootRequestId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$rootRequestId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.sessionId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.sessionId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CurrentRequest.refId : CurrentRequest(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t (*CurrentRequest.sessionId.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$sessionId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 304, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$sessionId.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 304);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$sessionId.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$sessionId.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.remoteRequestWasMadeInSession : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.remoteRequestWasMadeInSession.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*CurrentRequest.remoteRequestWasMadeInSession.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

uint64_t CurrentRequest.$remoteRequestWasMadeInSession.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 312, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t CurrentRequest.$remoteRequestWasMadeInSession.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 312);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$remoteRequestWasMadeInSession.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySb_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$remoteRequestWasMadeInSession.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}

uint64_t key path getter for CurrentRequest.overrideProperties : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.overrideProperties.getter();
  *a1 = result;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t (*CurrentRequest.overrideProperties.modify())()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_75(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_108(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_107(v4);
  v5 = OUTLINED_FUNCTION_0_5(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_11_0(v5);
  return CurrentRequest.refId.modify;
}

void CurrentRequest.refId.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t CurrentRequest.$overrideProperties.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 320, a2);

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t key path setter for CurrentRequest.$refId : CurrentRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  (*(v11 + 16))(v7, a1);
  return a7(v7);
}

uint64_t CurrentRequest.$overrideProperties.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSg_GMR);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_92(v0 + 320);
  v2 = OUTLINED_FUNCTION_3_3();
  v3(v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  v4 = OUTLINED_FUNCTION_16();
  return v5(v4);
}

uint64_t CurrentRequest.$overrideProperties.modify()
{
  v1 = OUTLINED_FUNCTION_109();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSg_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSg_GMR);
  OUTLINED_FUNCTION_9_1(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_105(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  CurrentRequest.$overrideProperties.getter(v9, v10);
  return OUTLINED_FUNCTION_106();
}
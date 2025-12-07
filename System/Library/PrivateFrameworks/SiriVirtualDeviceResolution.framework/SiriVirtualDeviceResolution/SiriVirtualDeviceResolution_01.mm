uint64_t CapabilitiesBuilder.profileSwitchingSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.muxSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.customTimerIntentHandlingStatus.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.assistantEnabledSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

void CapabilitiesBuilder.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
}

uint64_t CapabilitiesBuilder.build()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v53 = *(v1 + 72);
  v54 = *(v1 + 64);
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v55 = *(v1 + 88);
  v56 = *(v1 + 104);
  v60 = *(v1 + 112);
  v61 = *(v1 + 128);
  v57 = *(v1 + 120);
  v58 = *(v1 + 136);
  v59 = *(v1 + 152);
  v62 = *(v1 + 144);
  v63 = *(v1 + 160);
  v10 = MEMORY[0x277D84F98];
  if (*(v1 + 8))
  {
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = *v1;
    v33 = objc_allocWithZone(type metadata accessor for AudioPlaybackCapability());
    AudioPlaybackCapability.init(status:)(v32);
    swift_isUniquelyReferenced_nonNull_native();
    v34 = OUTLINED_FUNCTION_2_5();
    sub_2698E5ECC(v34, 0, v35, v36);
    v10 = v64;
    if (v3)
    {
LABEL_3:
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  v37 = objc_allocWithZone(type metadata accessor for VideoPlaybackCapability());
  VideoPlaybackCapability.init(status:)(v2);
  swift_isUniquelyReferenced_nonNull_native();
  v38 = OUTLINED_FUNCTION_2_5();
  sub_2698E5ECC(v38, 1, v39, v40);
  v10 = v64;
  if (v5)
  {
LABEL_4:
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v41 = objc_allocWithZone(type metadata accessor for AppLaunchCapability());
  AppLaunchCapability.init(status:)(v4);
  OUTLINED_FUNCTION_1_9();
  swift_isUniquelyReferenced_nonNull_native();
  v42 = OUTLINED_FUNCTION_0_9();
  sub_2698E5ECC(v42, 2, v43, v44);
  v10 = v64;
  if (v7)
  {
LABEL_5:
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v45 = objc_allocWithZone(type metadata accessor for SeymourRoutingCapability());
  SeymourRoutingCapability.init(status:)(v6);
  OUTLINED_FUNCTION_1_9();
  swift_isUniquelyReferenced_nonNull_native();
  v46 = OUTLINED_FUNCTION_0_9();
  sub_2698E5ECC(v46, 3, v47, v48);
  v10 = v64;
  if (v8)
  {
LABEL_6:
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  v49 = objc_allocWithZone(type metadata accessor for SpeakerCapability());
  SpeakerCapability.init(status:qualityScore:)(v54, v53);
  OUTLINED_FUNCTION_1_9();
  swift_isUniquelyReferenced_nonNull_native();
  v50 = OUTLINED_FUNCTION_0_9();
  sub_2698E5ECC(v50, 4, v51, v52);
  v10 = v64;
  if ((v9 & 1) == 0)
  {
LABEL_7:
    v11 = objc_allocWithZone(type metadata accessor for VoiceTriggerCapability());
    VoiceTriggerCapability.init(status:)(v55);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v12, 5, v13, v14);
    v10 = v64;
  }

LABEL_8:
  if ((v60 & 1) == 0)
  {
    v15 = objc_allocWithZone(type metadata accessor for ProfileSwitchingCapability());
    ProfileSwitchingCapability.init(status:)(v56);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v16 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v16, 7, v17, v18);
    v10 = v64;
  }

  if ((v61 & 1) == 0)
  {
    v19 = objc_allocWithZone(type metadata accessor for MUXCapability());
    MUXCapability.init(status:)(v57);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v20 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v20, 8, v21, v22);
    v10 = v64;
  }

  if ((v62 & 1) == 0)
  {
    v23 = objc_allocWithZone(type metadata accessor for CustomTimerIntentHandlingCapability());
    CustomTimerIntentHandlingCapability.init(status:)(v58);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v24 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v24, 10, v25, v26);
    v10 = v64;
  }

  if ((v63 & 1) == 0)
  {
    v27 = objc_allocWithZone(type metadata accessor for AssistantEnabledCapability());
    AssistantEnabledCapability.init(status:)(v59);
    OUTLINED_FUNCTION_1_9();
    swift_isUniquelyReferenced_nonNull_native();
    v28 = OUTLINED_FUNCTION_0_9();
    sub_2698E5ECC(v28, 9, v29, v30);
    v10 = v64;
  }

  type metadata accessor for Capabilities();
  result = swift_allocObject();
  *(result + 16) = v10;
  return result;
}

unint64_t sub_2698E5ECC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_2698D2184(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E768, &qword_2699072C8);
  if ((sub_269903DEC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_2698D2184(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_269903FEC();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *a4;
  if ((v11 & 1) == 0)
  {
    return sub_2698E63D4(v10, a2, a1, v14);
  }

  *(v14[7] + 8 * v10) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_2698E5FE8()
{
  result = qword_28033E760;
  if (!qword_28033E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapabilityKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CapabilityKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2698E634C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 161))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2698E636C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
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

  *(result + 161) = v3;
  return result;
}

unint64_t sub_2698E63D4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

double sub_2698E64A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 DeviceUnitDescription.room.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_10(a1);
  sub_2698E64F8(v2[1], v2[2], v2[3]);
  result = v4;
  *(v2 + 1) = v4;
  v2[3] = v1;
  return result;
}

uint64_t sub_2698E64F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 DeviceUnitDescription.zone.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_10(a1);
  sub_2698E64F8(v2[4], v2[5], v2[6]);
  result = v4;
  *(v2 + 2) = v4;
  v2[6] = v1;
  return result;
}

__n128 DeviceUnitDescription.home.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_10(a1);
  sub_2698E64F8(v2[7], v2[8], v2[9]);
  result = v4;
  *(v2 + 7) = v4;
  v2[9] = v1;
  return result;
}

void DeviceUnitDescription.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 1;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 1;
}

uint64_t LocationDescription.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LocationDescription.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

SiriVirtualDeviceResolution::LocationDescription __swiftcall LocationDescription.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriVirtualDeviceResolution19LocationDescriptionVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_2698E6700(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 80))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2698E6760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
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

uint64_t sub_2698E67E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2698E683C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_0_10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return sub_2698E64A4(a1, a2, a3);
}

unint64_t CapabilitySupportStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2698E68E0()
{
  result = qword_28033E770;
  if (!qword_28033E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E770);
  }

  return result;
}

unint64_t sub_2698E6934@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CapabilitySupportStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_2698E6978(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_2698E69E0()
{
  result = [objc_allocWithZone(type metadata accessor for DeviceResolutionService(0)) init];
  qword_28131C610 = result;
  return result;
}

id static DeviceResolutionService.sharedService.getter()
{
  if (qword_28131C600 != -1)
  {
    swift_once();
  }

  v1 = qword_28131C610;

  return v1;
}

void sub_2698E6A70()
{
  type metadata accessor for DeviceResolutionAnalyticsImpl();
  v0 = swift_allocObject();
  sub_2698D99E8(v0, v1, v2, v3, v4);
  qword_28131C5D8 = v5;
}

uint64_t static DeviceResolutionService.sharedAnalytics.getter()
{
  if (qword_28131C5C8 != -1)
  {
    swift_once();
  }
}

id sub_2698E6B0C()
{
  v1 = *&v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection];
  v2 = v1;
  if (!v1)
  {
    v3 = [objc_opt_self() currentContext];
    v4 = objc_opt_self();
    v5 = [v4 serviceName];
    if (!v5)
    {
      sub_26990390C();
      v5 = sub_2699038FC();
    }

    v2 = [v3 createXPCConnectionWithMachServiceName:v5 options:0];

    if (v2)
    {
      v6 = v2;
      v7 = [v4 xpcInterface];
      [v6 setRemoteObjectInterface_];

      OUTLINED_FUNCTION_49();
      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      v22 = sub_2698F8BF4;
      v23 = v8;
      v18 = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_2698D670C;
      v21 = &block_descriptor_84;
      v9 = _Block_copy(&v18);
      v10 = v6;
      v11 = v0;

      [v10 setInvalidationHandler_];
      _Block_release(v9);

      OUTLINED_FUNCTION_49();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v22 = sub_2698F8C3C;
      v23 = v12;
      v18 = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_2698D670C;
      v21 = &block_descriptor_90;
      v13 = _Block_copy(&v18);
      v14 = v10;
      v15 = v11;

      [v14 setInterruptionHandler_];
      _Block_release(v13);

      [v14 resume];
    }
  }

  v16 = v1;
  return v2;
}

void sub_2698E6DB0()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v31 = v4;
  v30 = v5;
  v7 = v6;
  sub_26990382C();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_2();
  sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v32 = v10;
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_2();
  v11 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_28131C988);
  (*(v13 + 16))(v0, v15, v11);
  v16 = sub_2699037EC();
  v17 = sub_269903B0C();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_36_0();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2698CD000, v16, v17, v30, v18, 2u);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v13 + 8))(v0, v11);
  OUTLINED_FUNCTION_49();
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  v34[4] = v31;
  v34[5] = v19;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v34[2] = v20;
  v34[3] = v3;
  v21 = _Block_copy(v34);
  v22 = v7;
  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v25, v26);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v27 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v27);
  _Block_release(v21);
  v28 = OUTLINED_FUNCTION_12();
  v29(v28);
  (*(v32 + 8))(v1, v33);

  OUTLINED_FUNCTION_17();
}

void sub_2698E710C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection;
  [*(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection) invalidate];
  v3 = *(a1 + v2);
  *(a1 + v2) = 0;
}

uint64_t DeviceResolutionService.XPCError.hashValue.getter()
{
  sub_26990404C();
  MEMORY[0x26D6485B0](0);
  return sub_26990408C();
}

uint64_t sub_2698E71FC(uint64_t a1)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](0);
  return sub_26990408C();
}

id sub_2698E724C()
{
  v1 = v0;
  v15 = sub_269903B3C();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269903B2C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_26990384C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup;
  *&v0[v7] = dispatch_group_create();
  v14 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue;
  v8 = sub_2698D23FC(0, &qword_28131C430, 0x277D85C78);
  v13[1] = &unk_269907670;
  v13[2] = v8;
  sub_26990383C();
  v17 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C438, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E500, &qword_269906818);
  sub_2698F94F0(&unk_28131C458, &unk_28033E500);
  sub_269903C5C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v15);
  *&v0[v14] = sub_269903B5C();
  *&v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager] = 0;
  v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_initialLoadDone] = 0;
  v9 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_endpointUUID;
  v10 = sub_2699037DC();
  __swift_storeEnumTagSinglePayload(&v1[v9], 1, 1, v10);
  v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync] = 0;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService__xpcConnection] = 0;
  v11 = type metadata accessor for DeviceResolutionService(0);
  v16.receiver = v1;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_init);
}

void sub_2698E7574()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_55();
  sub_26990382C();
  OUTLINED_FUNCTION_4_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_2();
  v21 = sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_2();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v4;
  v22[4] = sub_2698E77E4;
  v22[5] = v11;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v22[2] = v12;
  v22[3] = &block_descriptor_0;
  v13 = _Block_copy(v22);
  v14 = v1;
  v15 = v4;
  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v18, v19);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v20 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v20);
  _Block_release(v13);
  (*(v6 + 8))(v2, v0);
  (*(v9 + 8))(v3, v21);

  OUTLINED_FUNCTION_17();
}

void sub_2698E779C(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
  *(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager) = a2;
  v2 = a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2698E7804()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_55();
  sub_26990382C();
  OUTLINED_FUNCTION_4_4();
  v28 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_2();
  sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v26 = v6;
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_2();
  v7 = sub_2699037DC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v25[1] = *&v0[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v9 + 16))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v7);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  (*(v9 + 32))(v14 + v13, v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v30[4] = sub_2698E7BD8;
  v30[5] = v14;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v30[2] = v15;
  v30[3] = &block_descriptor_6_0;
  v16 = _Block_copy(v30);
  v17 = v0;
  sub_26990383C();
  v29 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v20, v21);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v22 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v22);
  _Block_release(v16);
  v23 = OUTLINED_FUNCTION_12();
  v24(v23);
  (*(v26 + 8))(v1, v27);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698E7AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8B0, &qword_2699077A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_2699037DC();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_endpointUUID;
  swift_beginAccess();
  sub_2698F9B04(v6, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_2698E7BD8()
{
  v0 = sub_2699037DC();
  OUTLINED_FUNCTION_25_1(v0);
  v1 = OUTLINED_FUNCTION_54();

  return sub_2698E7AD4(v1, v2);
}

uint64_t sub_2698E7C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E790, &qword_2699074C8);
  v8 = OUTLINED_FUNCTION_25_1(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = sub_269903A8C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = v3;

  sub_2698E81EC(0, 0, v10, &unk_2699074D8, v12);
}

uint64_t sub_2698E7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_2698E7DD0;

  return sub_2698E968C();
}

uint64_t sub_2698E7DD0()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_23_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2698E7ED8()
{
  OUTLINED_FUNCTION_22_1();
  (*(v0 + 16))(*(v0 + 48));

  OUTLINED_FUNCTION_26_0();

  return v1();
}

uint64_t sub_2698E7F44()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  type metadata accessor for DeviceUnit();
  sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
  sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);
  sub_2699038BC();
  v2();

  OUTLINED_FUNCTION_26_0();

  return v3();
}

uint64_t sub_2698E803C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7_1(v9);
  *v10 = v11;
  v10[1] = sub_2698E810C;

  return sub_2698E7D30(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2698E810C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  OUTLINED_FUNCTION_26_0();

  return v3();
}

uint64_t sub_2698E81EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E790, &qword_2699074C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2698F9914(a3, v24 - v10);
  v12 = sub_269903A8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2698F9984(v11, &qword_28033E790);
  }

  else
  {
    sub_269903A7C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_269903A4C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26990392C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2698F9984(a3, &qword_28033E790);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2698F9984(a3, &qword_28033E790);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2698E84D4()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_40_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E798, &qword_2699074E8);
  OUTLINED_FUNCTION_16_1();
  *v2 = v3;
  v2[1] = sub_2698E85AC;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_2698E85AC()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2698E86C8()
{
  OUTLINED_FUNCTION_22_1();

  OUTLINED_FUNCTION_26_0();

  return v0();
}

uint64_t sub_2698E8764(uint64_t a1, uint64_t a2)
{
  v3 = sub_2699037FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_2698E6B0C();
  if (v11)
  {
    v12 = v11;
    v27 = v6;
    v28 = v4;
    v29 = v3;
    v26 = *(v8 + 16);
    v26(v10, a2, v7);
    v30 = a2;
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v25 = *(v8 + 32);
    v25(v14 + v13, v10, v7);
    v35 = sub_2698F9888;
    v36 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2698E6978;
    v34 = &block_descriptor_285;
    v15 = _Block_copy(&aBlock);

    v16 = [v12 remoteObjectProxyWithErrorHandler_];
    _Block_release(v15);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v17 = aBlock;
      v26(v10, v30, v7);
      v18 = swift_allocObject();
      v25(v18 + v13, v10, v7);
      v35 = sub_2698F9910;
      v36 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_2698E8C2C;
      v34 = &block_descriptor_291;
      v19 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v17 pairedCompanionDeviceWithCompletion_];
      _Block_release(v19);
      return swift_unknownObjectRelease_n();
    }

    v3 = v29;
    v6 = v27;
    v4 = v28;
  }

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v3, qword_28131C988);
  (*(v4 + 16))(v6, v21, v3);
  v22 = sub_2699037EC();
  v23 = sub_269903B0C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2698CD000, v22, v23, "Failed to get remote object", v24, 2u);
    MEMORY[0x26D648C80](v24, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_2698F8BA0();
  aBlock = swift_allocError();
  return sub_269903A5C();
}

uint64_t sub_2698E8C48()
{
  OUTLINED_FUNCTION_22_1();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_40_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E798, &qword_2699074E8);
  OUTLINED_FUNCTION_16_1();
  *v2 = v3;
  v2[1] = sub_2698E8D2C;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_2698E8D2C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2698E8E2C()
{
  OUTLINED_FUNCTION_15();
  v34 = v1;
  v31[1] = v2;
  v32 = v3;
  v5 = v4;
  v7 = v6;
  sub_26990382C();
  OUTLINED_FUNCTION_4_4();
  v36 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_2();
  v35 = sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  v33 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v15 + 16))(v31 - v17, v7, v13);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  (*(v15 + 32))(v20 + v19, v18, v13);
  v38[4] = v32;
  v38[5] = v20;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v38[2] = v21;
  v38[3] = v34;
  v22 = _Block_copy(v38);
  v23 = v5;
  sub_26990383C();
  v37 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v26, v27);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v28 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v28);
  _Block_release(v22);
  v29 = OUTLINED_FUNCTION_12();
  v30(v29);
  (*(v11 + 8))(v0, v35);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698E9148(uint64_t a1, uint64_t a2)
{
  v3 = sub_2699037FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_2698E6B0C();
  if (v11)
  {
    v12 = v11;
    v27 = v6;
    v28 = v4;
    v29 = v3;
    v26 = *(v8 + 16);
    v26(v10, a2, v7);
    v30 = a2;
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v25 = *(v8 + 32);
    v25(v14 + v13, v10, v7);
    v35 = sub_2698F9CC8;
    v36 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2698E6978;
    v34 = &block_descriptor_267;
    v15 = _Block_copy(&aBlock);

    v16 = [v12 remoteObjectProxyWithErrorHandler_];
    _Block_release(v15);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v17 = aBlock;
      v26(v10, v30, v7);
      v18 = swift_allocObject();
      v25(v18 + v13, v10, v7);
      v35 = sub_2698F9CCC;
      v36 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_2698E8C2C;
      v34 = &block_descriptor_273;
      v19 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v17 meDeviceWithCompletion_];
      _Block_release(v19);
      return swift_unknownObjectRelease_n();
    }

    v3 = v29;
    v6 = v27;
    v4 = v28;
  }

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v3, qword_28131C988);
  (*(v4 + 16))(v6, v21, v3);
  v22 = sub_2699037EC();
  v23 = sub_269903B0C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2698CD000, v22, v23, "Failed to get remote object", v24, 2u);
    MEMORY[0x26D648C80](v24, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_2698F8BA0();
  aBlock = swift_allocError();
  return sub_269903A5C();
}

uint64_t sub_2698E9610(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_48_0();
    type metadata accessor for DeviceUnit();
    DeviceUnit.__allocating_init(deviceUnitObjC:)(v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  return sub_269903A6C();
}

uint64_t sub_2698E968C()
{
  OUTLINED_FUNCTION_22_1();
  v1[3] = v2;
  v1[4] = v0;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_5_2(v3);

  return sub_2698F226C();
}

uint64_t sub_2698E9714()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  *(v2 + 48) = v1;

  if (v0)
  {
    OUTLINED_FUNCTION_26_0();

    return v3();
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_2698E9838()
{
  OUTLINED_FUNCTION_6_1();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_35_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A0, &qword_269907508);
  OUTLINED_FUNCTION_16_1();
  *v2 = v3;
  v2[1] = sub_2698E9918;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_2698E9918()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2698E9A18(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v25 = a4;
  v27 = sub_26990382C();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26990384C();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v26 = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v13 + 16))(&v24 - v14, a1, v12);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a2;
  v18 = v25;
  *(v17 + 4) = v25;
  (*(v13 + 32))(&v17[v16], v15, v12);
  aBlock[4] = sub_2698F92C4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_214;
  v19 = _Block_copy(aBlock);

  v20 = a2;
  v21 = v18;
  sub_26990383C();
  v31 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  v22 = v27;
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v11, v8, v19);
  _Block_release(v19);
  (*(v30 + 8))(v8, v22);
  (*(v28 + 8))(v11, v29);
}

uint64_t sub_2698E9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v69 = a3;
  v72 = a2;
  v61 = sub_2699037FC();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
  v58 = *(v62 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v62);
  v8 = &v57 - v7;
  v9 = 0;
  v68 = a1 + 32;
  v10 = MEMORY[0x277D84F90];
  v71 = *(a1 + 16);
  v11 = &qword_28033E7A8;
  v64 = &v57 - v7;
  v70 = v6;
  while (v9 != v71)
  {
    v12 = v11;
    memcpy(__dst, (v68 + 80 * v9), sizeof(__dst));
    memcpy(v77, (v68 + 80 * v9), sizeof(v77));
    sub_2698F911C(__dst, v76);
    sub_2698F42C4();
    v14 = v13;
    v15 = v13 >> 62;
    if (v13 >> 62)
    {
      v16 = sub_269903CAC();
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v10 >> 62;
    if (v10 >> 62)
    {
      v18 = sub_269903CAC();
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v18 + v16;
    if (__OFADD__(v18, v16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
      goto LABEL_38;
    }

    v74 = v16;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v17)
    {
      v21 = 0;
    }

    else
    {
      v21 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v21 != 1 || (v22 = v10 & 0xFFFFFFFFFFFFFF8, v23 = v10, v19 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v17)
      {
        sub_269903CAC();
      }

      v23 = sub_269903D6C();
      v22 = v23 & 0xFFFFFFFFFFFFFF8;
    }

    v75 = v9;
    v24 = *(v22 + 16);
    v9 = (*(v22 + 24) >> 1) - v24;
    v25 = v22 + 8 * v24;
    v73 = v22;
    if (v15)
    {
      v27 = sub_269903CAC();
      if (v27)
      {
        v28 = v27;
        v29 = sub_269903CAC();
        if (v9 < v29)
        {
          goto LABEL_45;
        }

        if (v28 < 1)
        {
          goto LABEL_46;
        }

        v65 = v29;
        v66 = v23;
        v67 = v10;
        v30 = v25 + 32;
        v11 = v12;
        sub_2698F94F0(&qword_28033E898, v12);
        for (i = 0; i != v28; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v11, &qword_269907518);
          v32 = sub_2698F8A1C(v77, i, v14);
          v34 = *v33;
          (v32)(v77, 0);
          v11 = v12;
          *(v30 + 8 * i) = v34;
        }

        v8 = v64;
        v10 = v67;
        v23 = v66;
        v26 = v65;
        goto LABEL_26;
      }
    }

    else
    {
      v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        if (v9 < v26)
        {
          goto LABEL_44;
        }

        sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
        swift_arrayInitWithCopy();
        v11 = v12;
LABEL_26:

        v9 = v75;
        if (v26 < v74)
        {
          goto LABEL_42;
        }

        if (v26 > 0)
        {
          v35 = *(v73 + 16);
          v36 = __OFADD__(v35, v26);
          v37 = v35 + v26;
          if (v36)
          {
            goto LABEL_43;
          }

          *(v73 + 16) = v37;
        }

        goto LABEL_31;
      }
    }

    v9 = v75;
    v11 = v12;
    if (v74 > 0)
    {
      goto LABEL_42;
    }

LABEL_31:
    ++v9;
    sub_2698F9178(__dst);

    v10 = v23;
  }

  v38 = sub_2698E6B0C();
  if (v38)
  {
    v39 = v38;
    v40 = v58;
    v41 = v8;
    v42 = v63;
    v43 = v8;
    v44 = v62;
    v75 = *(v58 + 16);
    v75(v41, v63, v62);
    v45 = *(v40 + 80);
    v46 = swift_allocObject();
    v74 = *(v40 + 32);
    v74(v46 + ((v45 + 16) & ~v45), v43, v44);
    __dst[4] = sub_2698F9360;
    __dst[5] = v46;
    __dst[0] = MEMORY[0x277D85DD0];
    __dst[1] = 1107296256;
    __dst[2] = sub_2698E6978;
    __dst[3] = &block_descriptor_220;
    v47 = _Block_copy(__dst);

    v48 = [v39 remoteObjectProxyWithErrorHandler_];
    _Block_release(v47);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v49 = __dst[0];
      v75(v43, v42, v44);
      v50 = swift_allocObject();
      *(v50 + 16) = v10;
      v74(v50 + ((v45 + 24) & ~v45), v43, v44);
      __dst[4] = sub_2698F9414;
      __dst[5] = v50;
      __dst[0] = MEMORY[0x277D85DD0];
      __dst[1] = 1107296256;
      __dst[2] = sub_2698EAD7C;
      __dst[3] = &block_descriptor_226;
      v51 = _Block_copy(__dst);
      swift_unknownObjectRetain();

      [v49 getAllReachableDevicesWithCompletion_];
      _Block_release(v51);
      return swift_unknownObjectRelease_n();
    }
  }

  v14 = v61;
  v9 = v60;
  v10 = v59;
  if (qword_28131C480 != -1)
  {
    goto LABEL_47;
  }

LABEL_38:
  v53 = __swift_project_value_buffer(v14, qword_28131C988);
  (*(v9 + 16))(v10, v53, v14);
  v54 = sub_2699037EC();
  v55 = sub_269903B0C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_2698CD000, v54, v55, "Failed to get remote object", v56, 2u);
    MEMORY[0x26D648C80](v56, -1, -1);
  }

  (*(v9 + 8))(v10, v14);
  sub_2698F8BA0();
  __dst[0] = swift_allocError();
  return sub_269903A5C();
}

uint64_t sub_2698EA6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v74 = a2;
  v73 = sub_2699037DC();
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  v7 = sub_2698D2A38();
  v8 = 0;
  while (v7 != v8)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D6482B0](v8, a1);
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    type metadata accessor for DeviceUnit();
    ++v8;
    if (DeviceUnit.__allocating_init(deviceUnitObjC:)(v10))
    {
      MEMORY[0x26D647F40]();
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v6 = v75;
      v8 = v11;
    }
  }

  v67 = type metadata accessor for DeviceUnit();
  v12 = sub_2699038BC();
  v13 = sub_2698D2A38();
  v14 = 0;
  while (v13 != v14)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D6482B0](v14, v6);
    }

    else
    {
      if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v15 = *(v6 + 8 * v14 + 32);
    }

    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_63;
    }

    v17 = *&v15[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier + 8];
    if (v17)
    {
      v18 = *&v15[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier];
      v72 = v15;
      LODWORD(v70) = swift_isUniquelyReferenced_nonNull_native();
      v75 = v12;
      v71 = v18;
      v19 = sub_2698D1D34(v18, v17);
      if (__OFADD__(v12[2], (v20 & 1) == 0))
      {
        goto LABEL_67;
      }

      v21 = v19;
      HIDWORD(v66) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E948, &qword_269907820);
      if (sub_269903DEC())
      {
        v22 = sub_2698D1D34(v71, v17);
        v24 = BYTE4(v66);
        if ((BYTE4(v66) & 1) != (v23 & 1))
        {
          goto LABEL_72;
        }

        v21 = v22;
      }

      else
      {
        v24 = BYTE4(v66);
      }

      v12 = v75;
      if (v24)
      {
        v25 = *(v75 + 56);
        v26 = *(v25 + 8 * v21);
        v27 = v72;
        *(v25 + 8 * v21) = v72;
      }

      else
      {
        *(v75 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v28 = (v12[6] + 16 * v21);
        v26 = v72;
        *v28 = v71;
        v28[1] = v17;
        *(v12[7] + 8 * v21) = v26;
        v29 = v12[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_69;
        }

        v12[2] = v31;
      }

      v14 = v16;
    }

    else
    {

      ++v14;
    }
  }

  sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
  sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);
  v70 = sub_2699038BC();
  v32 = v74;
  v33 = sub_2698D2A38();
  v34 = 0;
  v71 = v32 & 0xFFFFFFFFFFFFFF8;
  v72 = (v32 & 0xC000000000000001);
  v35 = (v69 + 8);
  while (2)
  {
    while (2)
    {
      for (i = v34; ; ++i)
      {
        if (v33 == i)
        {

          v75 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
          return sub_269903A6C();
        }

        if (v72)
        {
          v37 = MEMORY[0x26D6482B0](i, v74);
        }

        else
        {
          if (i >= *(v71 + 16))
          {
            goto LABEL_66;
          }

          v37 = *(v74 + 8 * i + 32);
        }

        v38 = v37;
        v34 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_65;
        }

        v39 = [v37 uniqueIdentifier];
        sub_2699037BC();

        v40 = sub_2699037AC();
        v42 = v41;
        (*v35)(v5, v73);
        if (v12[2])
        {
          break;
        }

LABEL_42:
      }

      v43 = sub_2698D1D34(v40, v42);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        goto LABEL_42;
      }

      v46 = *(v12[7] + 8 * v43);
      v47 = v70;
      if ((v70 & 0xC000000000000001) == 0)
      {
        v52 = v46;
        v53 = v38;
        goto LABEL_51;
      }

      if (v70 < 0)
      {
        v48 = v70;
      }

      else
      {
        v48 = v70 & 0xFFFFFFFFFFFFFF8;
      }

      v49 = v46;
      v50 = v38;
      v51 = sub_269903CAC();
      if (__OFADD__(v51, 1))
      {
        goto LABEL_70;
      }

      v47 = sub_2698F7554(v48, v51 + 1);
LABEL_51:
      swift_isUniquelyReferenced_nonNull_native();
      v75 = v47;
      v69 = v46;
      v54 = sub_2698D21C8();
      if (__OFADD__(*(v47 + 16), (v55 & 1) == 0))
      {
        goto LABEL_68;
      }

      v56 = v54;
      LODWORD(v70) = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E950, &qword_269907828);
      if (sub_269903DEC())
      {
        v57 = sub_2698D21C8();
        v59 = v70;
        if ((v70 & 1) != (v58 & 1))
        {
          goto LABEL_72;
        }

        v56 = v57;
      }

      else
      {
        v59 = v70;
      }

      v60 = v75;
      v70 = v75;
      if (v59)
      {
        v61 = *(v75 + 56);
        v62 = *(v61 + 8 * v56);
        *(v61 + 8 * v56) = v38;

        continue;
      }

      break;
    }

    *(v75 + 8 * (v56 >> 6) + 64) |= 1 << v56;
    *(v60[6] + 8 * v56) = v69;
    *(v60[7] + 8 * v56) = v38;

    v63 = v60[2];
    v30 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (!v30)
    {
      v60[2] = v64;
      continue;
    }

    break;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

uint64_t sub_2698EAD7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2698D23FC(0, &qword_28131C450, off_279C71310);
  v3 = sub_269903A0C();

  v2(v3);
}

uint64_t sub_2698EAE00()
{
  OUTLINED_FUNCTION_22_1();
  *(v1 + 80) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v0;
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_5_2(v4);

  return sub_2698F226C();
}

uint64_t sub_2698EAE8C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  *(v2 + 48) = v1;

  if (v0)
  {
    OUTLINED_FUNCTION_26_0();

    return v3();
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_2698EAFB0()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_35_0(v2);
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A8, &qword_269907518);
  OUTLINED_FUNCTION_16_1();
  *v4 = v5;
  v4[1] = sub_2698EB0A0;
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0](v6);
}

uint64_t sub_2698EB0A0()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2698EB1A0()
{
  OUTLINED_FUNCTION_22_1();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2698EB204()
{
  OUTLINED_FUNCTION_22_1();

  OUTLINED_FUNCTION_26_0();

  return v1();
}

uint64_t sub_2698EB268(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v26 = a5;
  v25 = a4;
  v28 = sub_26990382C();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26990384C();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v27 = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v14 + 16))(&v25 - v15, a1, v13);
  v17 = (*(v14 + 80) + 41) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a2;
  v19 = v25;
  *(v18 + 32) = v25;
  *(v18 + 40) = v26;
  (*(v14 + 32))(v18 + v17, v16, v13);
  aBlock[4] = sub_2698F90A8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_196;
  v20 = _Block_copy(aBlock);

  v21 = a2;
  v22 = v19;
  sub_26990383C();
  v32 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  v23 = v28;
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v12, v9, v20);
  _Block_release(v20);
  (*(v31 + 8))(v9, v23);
  (*(v29 + 8))(v12, v30);
}

uint64_t sub_2698EB63C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v69 = a5;
  v68 = a4;
  v77 = a3;
  v78 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v67);
  v9 = &v65 - v8;
  v70 = sub_2699037FC();
  v71 = *(v70 - 8);
  v10 = MEMORY[0x28223BE20](v70);
  v65 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v65 - v12;
  v13 = 0;
  v76 = a1 + 32;
  v14 = MEMORY[0x277D84F90];
  v79 = *(a1 + 16);
  v73 = v6;
  v72 = v9;
  v74 = v7;
  while (1)
  {
    v83 = v14;
    if (v13 == v79)
    {
      break;
    }

    v81 = v13;
    memcpy(__dst, (v76 + 80 * v13), sizeof(__dst));
    memcpy(v85, (v76 + 80 * v13), sizeof(v85));
    sub_2698F911C(__dst, v84);
    sub_2698F42C4();
    v16 = v15;
    v17 = v15 >> 62;
    if (v15 >> 62)
    {
      v18 = sub_269903CAC();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v14 >> 62;
    if (v14 >> 62)
    {
      v20 = sub_269903CAC();
    }

    else
    {
      v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_36;
    }

    v82 = v18;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v23 != 1 || (v14 = v83, v24 = v83 & 0xFFFFFFFFFFFFFF8, v21 > *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v19)
      {
        sub_269903CAC();
      }

      v14 = sub_269903D6C();
      v24 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v25 = *(v24 + 16);
    v26 = (*(v24 + 24) >> 1) - v25;
    v27 = v24 + 8 * v25;
    v80 = v24;
    if (v17)
    {
      v29 = sub_269903CAC();
      if (v29)
      {
        v30 = v29;
        v31 = sub_269903CAC();
        if (v26 < v31)
        {
          goto LABEL_52;
        }

        if (v30 < 1)
        {
          goto LABEL_53;
        }

        v28 = v31;
        v75 = v14;
        v32 = v27 + 32;
        sub_2698F94F0(&qword_28033E898, &qword_28033E7A8);
        for (i = 0; i != v30; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A8, &qword_269907518);
          v34 = sub_2698F8A1C(v85, i, v16);
          v36 = *v35;
          (v34)(v85, 0);
          *(v32 + 8 * i) = v36;
        }

        v6 = v73;
        v9 = v72;
        v14 = v75;
        goto LABEL_26;
      }
    }

    else
    {
      v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        if (v26 < v28)
        {
          goto LABEL_51;
        }

        sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
        swift_arrayInitWithCopy();
LABEL_26:

        if (v28 < v82)
        {
          goto LABEL_49;
        }

        if (v28 > 0)
        {
          v37 = *(v80 + 2);
          v38 = __OFADD__(v37, v28);
          v39 = v37 + v28;
          if (v38)
          {
            goto LABEL_50;
          }

          *(v80 + 2) = v39;
        }

        goto LABEL_31;
      }
    }

    if (v82 > 0)
    {
      goto LABEL_49;
    }

LABEL_31:
    v13 = v81 + 1;
    sub_2698F9178(__dst);
  }

  if ((v68 & 1) == 0)
  {
    __dst[0] = v14;
    return sub_269903A6C();
  }

  if (qword_28131C480 != -1)
  {
    goto LABEL_54;
  }

LABEL_36:
  v40 = v70;
  v41 = __swift_project_value_buffer(v70, qword_28131C988);
  v82 = *(v71 + 16);
  v82(v66, v41, v40);

  v42 = sub_2699037EC();
  v43 = sub_269903AFC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = sub_2698D1C94(v14);

    _os_log_impl(&dword_2698CD000, v42, v43, "accessories matching description: %ld", v44, 0xCu);
    MEMORY[0x26D648C80](v44, -1, -1);
  }

  else
  {
  }

  v46 = v67;
  v47 = v69;
  v48 = *(v71 + 8);
  v71 += 8;
  v48(v66, v70);
  v49 = sub_2698E6B0C();
  if (v49)
  {
    v50 = v49;
    v80 = v48;
    v81 = v41;
    v79 = *(v6 + 16);
    v79(v9, v47, v46);
    v51 = *(v6 + 80);
    v52 = swift_allocObject();
    v53 = *(v6 + 32);
    v53(v52 + ((v51 + 16) & ~v51), v9, v46);
    __dst[4] = sub_2698F91CC;
    __dst[5] = v52;
    __dst[0] = MEMORY[0x277D85DD0];
    __dst[1] = 1107296256;
    __dst[2] = sub_2698E6978;
    __dst[3] = &block_descriptor_202;
    v54 = _Block_copy(__dst);

    v55 = [v50 remoteObjectProxyWithErrorHandler_];
    _Block_release(v54);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v56 = v53;
      v57 = __dst[0];
      v79(v9, v69, v46);
      v58 = swift_allocObject();
      *(v58 + 16) = v83;
      v56(v58 + ((v51 + 24) & ~v51), v9, v46);
      __dst[4] = sub_2698F9250;
      __dst[5] = v58;
      __dst[0] = MEMORY[0x277D85DD0];
      __dst[1] = 1107296256;
      __dst[2] = sub_2698EAD7C;
      __dst[3] = &block_descriptor_208;
      v59 = _Block_copy(__dst);
      swift_unknownObjectRetain();

      [v57 getAllReachableDevicesWithCompletion_];
      _Block_release(v59);
      return swift_unknownObjectRelease_n();
    }

    v41 = v81;
    v48 = v80;
  }

  else
  {
  }

  v82(v65, v41, v70);
  v60 = sub_2699037EC();
  v61 = sub_269903B0C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v48;
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_2698CD000, v60, v61, "Failed to get remote object", v63, 2u);
    v64 = v63;
    v48 = v62;
    MEMORY[0x26D648C80](v64, -1, -1);
  }

  v48(v65, v70);
  sub_2698F8BA0();
  __dst[0] = swift_allocError();
  return sub_269903A5C();
}

void sub_2698EC0A8()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_55();
  v5 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_28131C988);
  (*(v7 + 16))(v11, v12, v5);
  v13 = v0;
  v14 = sub_2699037EC();
  v15 = sub_269903B0C();

  if (os_log_type_enabled(v14, v15))
  {
    v21 = v4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_269903FFC();
    v20 = sub_2698D9D70(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2698CD000, v14, v15, "Error reaching remote: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
    v4 = v21;
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v7 + 8))(v11, v5);
  sub_2698F8BA0();
  v22 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  sub_269903A5C();
  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698EC2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698D2A38();
  v5 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D6482B0](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = sub_2698F8820(v6);
    v10 = v9;

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2698F7120(0, *(v19 + 2) + 1, 1, v19);
      }

      v12 = *(v19 + 2);
      v11 = *(v19 + 3);
      if (v12 >= v11 >> 1)
      {
        v19 = sub_2698F7120((v11 > 1), v12 + 1, 1, v19);
      }

      *(v19 + 2) = v12 + 1;
      v13 = &v19[16 * v12];
      *(v13 + 4) = v2;
      *(v13 + 5) = v10;
      v5 = v8;
    }
  }

  v21[1] = MEMORY[0x277D84F90];
  v14 = a2;
  v15 = sub_2698D2A38();
  for (i = 0; v15 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D6482B0](i, v14);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v2 = v17;
    if (__OFADD__(i, 1))
    {
      goto LABEL_28;
    }

    v21[0] = v17;
    if (sub_2698EC560(v21, v19))
    {
      sub_269903D8C();
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
      v14 = a2;
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  return sub_269903A6C();
}

BOOL sub_2698EC560(id *a1, uint64_t a2)
{
  v54 = sub_2699037FC();
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2699037DC();
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 category];
  v11 = [v10 categoryType];

  v12 = sub_26990390C();
  v14 = v13;

  if (qword_28033E180 != -1)
  {
    swift_once();
  }

  v15 = off_28033EB20;
  if (*(off_28033EB20 + 2))
  {
    v16 = sub_2698D1D34(v12, v14);
    v18 = v17;

    if (v18)
    {
      v50 = *(v15[7] + 8 * v16) == 8;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v50 = 0;
LABEL_8:
  v19 = [v9 uniqueIdentifier];
  sub_2699037BC();

  v20 = sub_2699037AC();
  v22 = v21;
  v23 = v6 + 8;
  v24 = *(v6 + 8);
  v47 = v23;
  v25 = v24(v8, v52);
  v53[0] = v20;
  v53[1] = v22;
  MEMORY[0x28223BE20](v25);
  *(&v45 - 2) = v53;
  v26 = v49;
  v48 = sub_2698F8770(sub_2698F92A4, (&v45 - 4), a2);
  v49 = v26;

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v27 = v54;
  v28 = __swift_project_value_buffer(v54, qword_28131C988);
  v29 = v51;
  (*(v51 + 16))(v5, v28, v27);
  v30 = v9;
  v31 = sub_2699037EC();
  v32 = sub_269903AFC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v46 = v5;
    v34 = v29;
    v35 = v33;
    v36 = swift_slowAlloc();
    v53[0] = v36;
    *v35 = 136315650;
    v37 = [v30 uniqueIdentifier];
    sub_2699037BC();

    v38 = sub_2699037AC();
    v40 = v39;
    v24(v8, v52);
    v41 = sub_2698D9D70(v38, v40, v53);

    *(v35 + 4) = v41;
    *(v35 + 12) = 1024;
    v42 = v50;
    *(v35 + 14) = v50;
    *(v35 + 18) = 1024;
    v43 = v48;
    *(v35 + 20) = v48;
    _os_log_impl(&dword_2698CD000, v31, v32, "accessory %s: isMatchpointTV=%{BOOL}d, isReachable=%{BOOL}d", v35, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D648C80](v36, -1, -1);
    MEMORY[0x26D648C80](v35, -1, -1);

    (*(v34 + 8))(v46, v54);
  }

  else
  {

    (*(v29 + 8))(v5, v27);
    v42 = v50;
    v43 = v48;
  }

  return v42 || v43;
}

uint64_t sub_2698ECA2C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_2698ECA40()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_60();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7B0, &qword_269907528);
  OUTLINED_FUNCTION_16_1();
  *v2 = v3;
  v2[1] = sub_2698ECB20;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_2698ECB20()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2698ECC20(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a1;
  v32 = a3;
  v4 = sub_26990382C();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26990384C();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  v29 = *(v8 - 8);
  v30 = v8;
  v27 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v28 = &v27 - v9;
  v10 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  result = sub_2698D2A38();
  v12 = result;
  v13 = 0;
  v39 = v10;
  while (1)
  {
    if (v12 == v13)
    {
      v15 = v32;
      v17 = v28;
      v16 = v29;
      v18 = v30;
      (*(v29 + 16))(v28, v31, v30);
      v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v20 = swift_allocObject();
      v21 = v39;
      *(v20 + 16) = v15;
      *(v20 + 24) = v21;
      (*(v16 + 32))(v20 + v19, v17, v18);
      aBlock[4] = sub_2698F8F6C;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2698D670C;
      aBlock[3] = &block_descriptor_182;
      v22 = _Block_copy(aBlock);
      v23 = v15;
      v24 = v33;
      sub_26990383C();
      v41 = MEMORY[0x277D84F90];
      sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
      sub_2698F94F0(&qword_28131C468, &unk_28033E410);
      v25 = v36;
      v26 = v38;
      sub_269903C5C();
      MEMORY[0x26D6480A0](0, v24, v25, v22);
      _Block_release(v22);
      (*(v37 + 8))(v25, v26);
      (*(v34 + 8))(v24, v35);
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6482B0](v13, a2);
    }

    else
    {
      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      result = *(a2 + 8 * v13 + 32);
    }

    v14 = result;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    [result copy];
    sub_269903C3C();
    swift_unknownObjectRelease();

    type metadata accessor for CapabilityDescription();
    result = swift_dynamicCast();
    if ((result & 1) != 0 && aBlock[6])
    {
      MEMORY[0x26D647F40]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      result = sub_269903A3C();
      v39 = v41;
      ++v13;
    }

    else
    {
      ++v13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_2698ED108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v83 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - v5;
  v7 = sub_2699037FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F98];
  v13 = sub_2698EFE84();
  v84 = v12;
  v85 = v3;
  v79 = v11;
  v75 = v4;
  v76 = v6;
  v77 = v13;
  v78 = v8;
  v80 = v7;
  v23 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v24 = v82;
  v25 = sub_2698D2A38();
  v26 = 0;
  v27 = v24 & 0xC000000000000001;
  v86 = v25;
  v87 = (v24 & 0xFFFFFFFFFFFFFF8);
  while (v25 != v26)
  {
    if (v27)
    {
      v28 = MEMORY[0x26D6482B0](v26, v24);
    }

    else
    {
      if (v26 >= v87[2])
      {
        goto LABEL_28;
      }

      v28 = *(v24 + 8 * v26 + 32);
    }

    v29 = v28;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      swift_once();
      v14 = __swift_project_value_buffer(v27, qword_28131C988);
      v15 = v26;
      (*(v26 + 16))(v25, v14, v27);
      v16 = v23;
      v17 = sub_2699037EC();
      v18 = sub_269903B0C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v23;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_2698CD000, v17, v18, "#hal Error getting devices matching descriptions: %@", v19, 0xCu);
        sub_2698F9984(v20, &qword_28033E530);
        MEMORY[0x26D648C80](v20, -1, -1);
        MEMORY[0x26D648C80](v19, -1, -1);
      }

      (*(v15 + 8))(v25, v27);
      aBlock[0] = v23;
      sub_269903A5C();

      return;
    }

    v31 = *&v28[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v30 = *&v28[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    v32 = *&v28[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet];
    if (v32)
    {

      sub_2698ED964(v32);
      v34 = v33;
      v35 = objc_allocWithZone(SVDCapabilityDescription);
      v36 = sub_2698F604C(v31, v30, v34);
    }

    else
    {
      v37 = &v28[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
      if (v28[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 16])
      {

        goto LABEL_16;
      }

      v39 = *v37;
      v38 = v37[1];
      v40 = objc_allocWithZone(SVDCapabilityDescription);

      v41 = v27;
      v42 = v24;
      v43 = v23;
      v44 = sub_2699038FC();

      v36 = [v40 initWithKey:v44 valueRangeWithLowerBound:v39 upperBound:v38];

      v29 = v44;
      v23 = v43;
      v24 = v42;
      v27 = v41;
      v25 = v86;
    }

    if (v36)
    {
      MEMORY[0x26D647F40]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v23 = aBlock[0];
      ++v26;
    }

    else
    {
LABEL_16:
      ++v26;
    }
  }

  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v45 = v80;
  v46 = __swift_project_value_buffer(v80, qword_28131C988);
  v47 = v78;
  v48 = v79;
  (*(v78 + 16))(v79, v46, v45);

  v49 = sub_2699037EC();
  v50 = sub_269903AFC();

  v51 = os_log_type_enabled(v49, v50);
  v53 = v84;
  v52 = v85;
  v54 = v83;
  if (v51)
  {
    v55 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock[0] = v87;
    *v55 = 136315138;
    v56 = sub_2698D23FC(0, &qword_28131C428, off_279C71300);
    v57 = MEMORY[0x26D647F70](v23, v56);
    v59 = sub_2698D9D70(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_2698CD000, v49, v50, "#hal Calling devicesMatching(:) with descriptions: %s", v55, 0xCu);
    v60 = v87;
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x26D648C80](v60, -1, -1);
    MEMORY[0x26D648C80](v55, -1, -1);

    (*(v47 + 8))(v79, v80);
  }

  else
  {

    (*(v47 + 8))(v48, v45);
  }

  v61 = v81;
  v62 = v76;
  v63 = v75;
  v64 = MEMORY[0x277D84F98];
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  sub_2698D23FC(0, &qword_28131C428, off_279C71300);
  v66 = sub_2699039FC();

  (*(v61 + 16))(v62, v54, v52);
  v67 = v52;
  v68 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v69 = (v63 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v71 = v62;
  v72 = v70;
  (*(v61 + 32))(v70 + v68, v71, v67);
  *(v72 + v69) = v53;
  *(v72 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
  aBlock[4] = sub_2698F9004;
  aBlock[5] = v72;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698EE5E8;
  aBlock[3] = &block_descriptor_190;
  v73 = _Block_copy(aBlock);

  [v77 getDevicesMatchingCapabilityDescriptions:v66 completion:v73];
  _Block_release(v73);

  swift_unknownObjectRelease();
}

void sub_2698ED964(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_269903CAC())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8F0, &qword_2699077D0);
  v3 = sub_269903D2C();
  if (v2)
  {
LABEL_4:

    sub_269903C9C();
    sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
    sub_2698F8CAC(&qword_28131C400, &qword_28131C3F0, 0x277D82BB8);
    sub_269903ADC();
    v1 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    goto LABEL_11;
  }

LABEL_7:
  v8 = -1 << *(v1 + 32);
  v4 = v1 + 56;
  v5 = ~v8;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v7 = v10 & *(v1 + 56);

  v6 = 0;
LABEL_11:
  v11 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v7)
  {
    v12 = v6;
LABEL_21:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = *(*(v1 + 48) + ((v12 << 9) | (8 * v15)));
    while (1)
    {
      sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
      swift_dynamicCast();
      v17 = sub_269903CEC();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = *(v3 + 48) + 40 * v21;
      *(v26 + 32) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v13 = sub_269903CCC();
      if (!v13)
      {
        goto LABEL_33;
      }

      *&v27 = v13;
      sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
      swift_dynamicCast();
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v11 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v6;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= ((v5 + 64) >> 6))
      {
LABEL_33:
        sub_2698D2A2C(v1);

        return;
      }

      v7 = *(v4 + 8 * v12);
      ++v14;
      if (v7)
      {
        v6 = v12;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

id sub_2698EDCF4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_2699038FC();

  v8 = [v6 initWithKey:v7 valueRangeWithLowerBound:a3 upperBound:a4];

  return v8;
}

uint64_t sub_2698EDD80(uint64_t a1, id isUniquelyReferenced_nonNull_native, uint64_t a3, uint64_t a4)
{
  v8 = sub_2699037FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v62 - v12;
  swift_beginAccess();
  *(a4 + 16) = a1;

  if (qword_28131C480 != -1)
  {
LABEL_41:
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_28131C988);
  v15 = *(v9 + 16);
  v64 = v14;
  v65 = v9 + 16;
  v63 = v15;
  (v15)(v13);

  v16 = sub_2699037EC();
  v17 = sub_269903AFC();

  v18 = os_log_type_enabled(v16, v17);
  v62[1] = isUniquelyReferenced_nonNull_native;
  v68 = v8;
  v67 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v76[0] = v20;
    *v19 = 136315138;
    swift_beginAccess();
    sub_2698D23FC(0, &qword_28131C450, off_279C71310);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8C8, &qword_2699077B8);
    sub_2698F8CAC(&unk_28131C440, &qword_28131C450, off_279C71310);
    isUniquelyReferenced_nonNull_native = sub_2699038AC();
    v8 = v21;

    v22 = sub_2698D9D70(isUniquelyReferenced_nonNull_native, v8, v76);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_2698CD000, v16, v17, "#hal Retrieved matching devices: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D648C80](v20, -1, -1);
    MEMORY[0x26D648C80](v19, -1, -1);

    v62[0] = *(v67 + 8);
    (v62[0])(v13, v68);
  }

  else
  {

    v62[0] = *(v9 + 8);
    (v62[0])(v13, v8);
  }

  swift_beginAccess();
  v23 = *(a4 + 16);
  a4 = v23 + 64;
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;

  v9 = 0;
  v69 = v23;
  v70 = a3;
  if (!v26)
  {
    while (1)
    {
LABEL_8:
      v28 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v28 >= v27)
      {
        break;
      }

      v26 = *(a4 + 8 * v28);
      ++v9;
      if (v26)
      {
        v9 = v28;
        goto LABEL_12;
      }
    }

    v48 = v66;
    v49 = v68;
    v63(v66, v64, v68);

    v50 = sub_2699037EC();
    v51 = sub_269903AFC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = a3;
      v54 = swift_slowAlloc();
      v75[0] = v54;
      *v52 = 136315138;
      swift_beginAccess();
      type metadata accessor for DeviceUnit();
      type metadata accessor for Capabilities();
      sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);

      v55 = sub_2699038AC();
      v57 = v56;

      v58 = sub_2698D9D70(v55, v57, v75);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_2698CD000, v50, v51, "#hal Returning transformed results: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      v59 = v54;
      a3 = v53;
      MEMORY[0x26D648C80](v59, -1, -1);
      MEMORY[0x26D648C80](v52, -1, -1);

      v60 = v66;
    }

    else
    {

      v60 = v48;
    }

    (v62[0])(v60, v49);
    swift_beginAccess();
    v74[3] = *(a3 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
    return sub_269903A6C();
  }

LABEL_12:
  while (1)
  {
    v29 = (v9 << 9) | (8 * __clz(__rbit64(v26)));
    v30 = *(*(v23 + 48) + v29);
    v8 = *(*(v23 + 56) + v29);
    v31 = type metadata accessor for DeviceUnit();
    isUniquelyReferenced_nonNull_native = v30;

    v73 = v31;
    v13 = v31;
    v32 = DeviceUnit.__allocating_init(deviceUnitObjC:)(isUniquelyReferenced_nonNull_native);
    if (v32)
    {
      break;
    }

LABEL_32:
    v26 &= v26 - 1;

    if (!v26)
    {
      goto LABEL_8;
    }
  }

  v33 = v32;
  v8 = static ObjCCompatibility.capabilities(from:)(v8);

  if (!v8)
  {

    goto LABEL_32;
  }

  swift_beginAccess();
  v13 = *(a3 + 16);
  v71 = v8;
  v72 = isUniquelyReferenced_nonNull_native;
  if ((v13 & 0xC000000000000001) != 0)
  {
    if (v13 >= 0)
    {
      v13 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v34 = v33;
    v35 = sub_269903CAC();
    if (__OFADD__(v35, 1))
    {
      goto LABEL_40;
    }

    *(a3 + 16) = sub_2698F777C(v13, v35 + 1);
  }

  else
  {

    v36 = v33;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = *(a3 + 16);
  v13 = v74[0];
  *(a3 + 16) = 0x8000000000000000;
  v37 = sub_2698D21C8();
  if (__OFADD__(*(v13 + 16), (v38 & 1) == 0))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v39 = v37;
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8D8, &qword_2699077C0);
  v13 = v74;
  if (sub_269903DEC())
  {
    v13 = v74[0];
    v41 = sub_2698D21C8();
    isUniquelyReferenced_nonNull_native = v72;
    if ((v40 & 1) != (v42 & 1))
    {
      goto LABEL_43;
    }

    v39 = v41;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v72;
  }

  v43 = v74[0];
  if (v40)
  {
    v44 = *(v74[0] + 56);
    v13 = *(v44 + 8 * v39);
    v8 = v71;
    *(v44 + 8 * v39) = v71;

LABEL_31:
    a3 = v70;
    *(v70 + 16) = v43;
    swift_endAccess();

    v23 = v69;
    goto LABEL_32;
  }

  *(v74[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
  *(v43[6] + 8 * v39) = v33;
  v8 = v71;
  *(v43[7] + 8 * v39) = v71;
  v45 = v43[2];
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (!v46)
  {
    v43[2] = v47;
    goto LABEL_31;
  }

  __break(1u);
LABEL_43:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

double sub_2698EE5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2698D23FC(0, &qword_28131C450, off_279C71310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8C8, &qword_2699077B8);
  sub_2698F8CAC(&unk_28131C440, &qword_28131C450, off_279C71310);
  v3 = sub_26990389C();

  v2(v3);

  return result;
}

uint64_t sub_2698EE6BC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_2698EE6D4()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7B8, &qword_269907538);
  OUTLINED_FUNCTION_16_1();
  *v5 = v6;
  v5[1] = sub_2698EE7D4;
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0](v7);
}

uint64_t sub_2698EE7D4()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2698EE8D4()
{
  OUTLINED_FUNCTION_22_1();

  OUTLINED_FUNCTION_26_0();

  return v0();
}

uint64_t sub_2698EE930(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v6 = sub_26990382C();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26990384C();
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v25 = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v13 + 16))(&v23 - v14, a1, v12);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v19 = v23;
  v18 = v24;
  *(v17 + 2) = a2;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  (*(v13 + 32))(&v17[v16], v15, v12);
  aBlock[4] = sub_2698F8E20;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_170;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  sub_26990383C();
  v28 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v11, v8, v20);
  _Block_release(v20);
  (*(v27 + 8))(v8, v6);
  (*(v9 + 8))(v11, v26);
}

uint64_t sub_2698EECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - v9;
  v11 = sub_2698EFE84();
  (*(v8 + 16))(v10, a4, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v10, v7);
  aBlock[4] = sub_2698F8E48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698EAD7C;
  aBlock[3] = &block_descriptor_176;
  v14 = _Block_copy(aBlock);

  [v11 getAllReachableDevicesWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

void sub_2698EEEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = sub_2698D2A38();
  v7 = 0;
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6482B0](v7, a1);
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    type metadata accessor for DeviceUnit();
    ++v7;
    if (DeviceUnit.__allocating_init(deviceUnitObjC:)(v9))
    {
      MEMORY[0x26D647F40]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v5 = v16;
      v7 = v10;
    }
  }

  v11 = sub_2698D2A38();
  for (i = 0; v11 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D6482B0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v13 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_27;
    }

    v14 = *&v13[OBJC_IVAR___SVDDeviceUnitSwift_proximity];
    if (v14 >= a2 && v14 <= a3)
    {
      sub_269903D8C();
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  sub_269903A6C();
}

uint64_t sub_2698EF114(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_2698EF128()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_60();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7C0, &qword_269907548);
  OUTLINED_FUNCTION_16_1();
  *v2 = v3;
  v2[1] = sub_2698EF20C;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_2698EF20C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2698EF30C()
{
  OUTLINED_FUNCTION_22_1();

  OUTLINED_FUNCTION_26_0();

  return v0();
}

uint64_t sub_2698EF368(uint64_t a1, char *a2, uint64_t a3)
{
  v21[0] = a3;
  v5 = sub_26990382C();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26990384C();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v21[1] = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v12 + 16))(v21 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21[0];
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_2698F8D88;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_158;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_26990383C();
  v25 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
}

void sub_2698EF720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - v6;
  v8 = sub_2698EFE84();
  sub_2699037DC();
  sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
  v9 = sub_269903A9C();
  (*(v5 + 16))(v7, a3, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_2698F8DB0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698EFDAC;
  aBlock[3] = &block_descriptor_164;
  v12 = _Block_copy(aBlock);

  [v8 getSourceDeviceForContextWithIdentifiers:v9 completion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_2698EF968(uint64_t a1)
{
  sub_2698EF9C4(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  return sub_269903A6C();
}

void sub_2698EF9C4(uint64_t a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E900, &qword_2699077D8);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_43_0();
  v53 = v2 - v3;
  v5 = MEMORY[0x28223BE20](v4);
  v58 = &v50 - v6;
  MEMORY[0x28223BE20](v5);
  v57 = &v50 - v7;
  v54 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v8 = a1 + 64;
  OUTLINED_FUNCTION_37_0();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v60 = a1;

  v14 = 0;
  v55 = v13;
  for (i = a1 + 64; ; v8 = i)
  {
    v15 = v14;
    if (!v11)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v14 = v15;
LABEL_7:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v14 << 6);
      v18 = v60;
      v19 = *(v60 + 48);
      v20 = sub_2699037DC();
      OUTLINED_FUNCTION_3_0();
      v22 = v21;
      v24 = *(v23 + 72);
      v25 = v57;
      (*(v23 + 16))(v57, v19 + v24 * v17, v20);
      v26 = *(*(v18 + 56) + 8 * v17);
      v27 = v59;
      *&v25[*(v59 + 48)] = v26;
      v28 = v25;
      v29 = v58;
      sub_2698F8D04(v28, v58);
      v30 = *(v29 + *(v27 + 48));
      type metadata accessor for DeviceUnit();
      v31 = v26;
      v32 = DeviceUnit.__allocating_init(deviceUnitObjC:)(v30);
      if (v32)
      {
        break;
      }

      sub_2698F9984(v29, &qword_28033E900);
      v15 = v14;
      v13 = v55;
      v8 = i;
      if (!v11)
      {
LABEL_4:
        while (1)
        {
          v14 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v14 >= v13)
          {

            return;
          }

          v11 = *(v8 + 8 * v14);
          ++v15;
          if (v11)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    v33 = v32;
    v51 = v24;
    v52 = v22;
    sub_2698F8D04(v29, v53);
    v34 = v54[2];
    if (v54[3] <= v34)
    {
      sub_2698F7E24(v34 + 1, 1);
    }

    v35 = v61;
    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    v36 = sub_2699038DC();
    v37 = v35 + 64;
    v54 = v35;
    v38 = v36 & ~(-1 << *(v35 + 32));
    if (((-1 << v38) & ~*(v35 + 64 + 8 * (v38 >> 6))) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v38) & ~*(v35 + 64 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    v41 = v51;
    v40 = v52;
LABEL_21:
    v47 = *(v59 + 48);
    *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v48 = v54;
    v49 = v53;
    (*(v40 + 32))(v54[6] + v39 * v41, v53, v20);
    *(v48[7] + 8 * v39) = v33;
    ++v48[2];

    v13 = v55;
  }

  OUTLINED_FUNCTION_52();
  v41 = v51;
  v40 = v52;
  while (++v42 != v44 || (v43 & 1) == 0)
  {
    v45 = v42 == v44;
    if (v42 == v44)
    {
      v42 = 0;
    }

    v43 |= v45;
    v46 = *(v37 + 8 * v42);
    if (v46 != -1)
    {
      v39 = __clz(__rbit64(~v46)) + (v42 << 6);
      goto LABEL_21;
    }
  }

LABEL_24:
  __break(1u);
}

double sub_2698EFDAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2699037DC();
  sub_2698D23FC(0, &qword_28131C450, off_279C71310);
  sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
  v3 = sub_26990389C();

  v2(v3);

  return result;
}

uint64_t sub_2698EFE84()
{
  sub_2699037FC();
  OUTLINED_FUNCTION_4_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_2();
  v5 = sub_2698E6B0C();
  if (v5)
  {
    v6 = v5;
    aBlock[4] = sub_2698F9C18;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2698E6978;
    aBlock[3] = &block_descriptor_78;
    v7 = _Block_copy(aBlock);
    v8 = [v6 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);

    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      return aBlock[0];
    }
  }

  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_28131C988);
  OUTLINED_FUNCTION_42_0();
  v10(v1);
  v11 = sub_2699037EC();
  v12 = sub_269903B0C();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_36_0();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2698CD000, v11, v12, "Failed to get remote object", v13, 2u);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v3 + 8))(v1, v0);
  sub_2698F8BA0();
  swift_allocError();
  return swift_willThrow();
}

void sub_2698F0104()
{
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_26990382C();
  OUTLINED_FUNCTION_4_4();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_2();
  v27 = sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_2();
  v18 = swift_allocObject();
  v18[2] = v1;
  v18[3] = v7;
  v18[4] = v5;
  v18[5] = v9;
  v18[6] = v11;
  v28[4] = sub_2698F2394;
  v28[5] = v18;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v28[2] = v19;
  v28[3] = &block_descriptor_32;
  v20 = _Block_copy(v28);
  v21 = v1;

  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v24, v25);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v26 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v26);
  _Block_release(v20);
  (*(v13 + 8))(v2, v0);
  (*(v16 + 8))(v3, v27);

  OUTLINED_FUNCTION_17();
}

void sub_2698F0348(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2699037FC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2698E6B0C();
  if (v13 && (v14 = v13, v15 = swift_allocObject(), *(v15 + 16) = a2, *(v15 + 24) = a3, v29 = sub_2698F8D74, v30 = v15, aBlock = MEMORY[0x277D85DD0], v26 = 1107296256, v27 = sub_2698E6978, v28 = &block_descriptor_146, v16 = _Block_copy(&aBlock), , , v17 = [v14 remoteObjectProxyWithErrorHandler_], _Block_release(v16), v14, sub_269903C3C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790), (swift_dynamicCast() & 1) != 0))
  {
    v18 = aBlock;
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    v19[5] = a5;
    v29 = sub_2698F8D7C;
    v30 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_2698EAD7C;
    v28 = &block_descriptor_152;
    v20 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v18 getAllReachableDevicesWithCompletion_];
    swift_unknownObjectRelease_n();
    _Block_release(v20);
  }

  else
  {
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_28131C988);
    (*(v10 + 16))(v12, v21, v9);
    v22 = sub_2699037EC();
    v23 = sub_269903B0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2698CD000, v22, v23, "Failed to get remote object", v24, 2u);
      MEMORY[0x26D648C80](v24, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    a2(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2698F06F4(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_2699037FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_28131C988);
  (*(v7 + 16))(v9, v10, v6);
  v11 = a1;
  v12 = sub_2699037EC();
  v13 = sub_269903B0C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a3;
    v15 = a2;
    v16 = v14;
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_269903FFC();
    v20 = sub_2698D9D70(v18, v19, &v24);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2698CD000, v12, v13, "Error reaching remote: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D648C80](v17, -1, -1);
    v21 = v16;
    a2 = v15;
    MEMORY[0x26D648C80](v21, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return a2(MEMORY[0x277D84F90]);
}

void sub_2698F0944(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = sub_2698D2A38();
  v9 = 0;
  while (v8 != v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D6482B0](v9, a1);
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    type metadata accessor for DeviceUnit();
    ++v9;
    if (DeviceUnit.__allocating_init(deviceUnitObjC:)(v11))
    {
      MEMORY[0x26D647F40]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v7 = v19;
      v9 = v12;
    }
  }

  v20 = MEMORY[0x277D84F90];
  v13 = sub_2698D2A38();
  for (i = 0; v13 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D6482B0](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v15 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v16 = *&v15[OBJC_IVAR___SVDDeviceUnitSwift_proximity];
    if (v16 >= a4 && v16 <= a5)
    {
      sub_269903D8C();
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
    }

    else
    {
    }
  }

  a2(v20);
}

void sub_2698F0BA4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = sub_2699037FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2698E6B0C();
  if (v10 && (v11 = v10, v26 = sub_2698F9C18, v27 = 0, aBlock = MEMORY[0x277D85DD0], v23 = 1107296256, v24 = sub_2698E6978, v25 = &block_descriptor_134, v12 = _Block_copy(&aBlock), v13 = [v11 remoteObjectProxyWithErrorHandler_], _Block_release(v12), v11, sub_269903C3C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790), (swift_dynamicCast() & 1) != 0))
  {
    v14 = aBlock;
    sub_2699037DC();
    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    swift_unknownObjectRetain();
    v15 = sub_269903A9C();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v26 = sub_2698F8CFC;
    v27 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2698EFDAC;
    v25 = &block_descriptor_140;
    v17 = _Block_copy(&aBlock);

    [v14 getSourceDeviceForContextWithIdentifiers:v15 completion:v17];
    _Block_release(v17);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_28131C988);
    (*(v7 + 16))(v9, v18, v6);
    v19 = sub_2699037EC();
    v20 = sub_269903B0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2698CD000, v19, v20, "Failed to get remote object", v21, 2u);
      MEMORY[0x26D648C80](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_2699037DC();
    type metadata accessor for DeviceUnit();
    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    sub_2699038BC();
    a2();
  }
}

double sub_2698F0FE4(uint64_t a1, void (*a2)(void))
{
  sub_2698EF9C4(a1);
  a2();

  return result;
}

void sub_2698F1068()
{
  OUTLINED_FUNCTION_15();
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_26990382C();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_2();
  v27 = sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_2();
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v8;
  v15[4] = v6;
  v15[5] = v10;
  v28[4] = v4;
  v28[5] = v15;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v28[2] = v16;
  v28[3] = v26;
  v17 = _Block_copy(v28);
  v18 = v0;

  sub_26990383C();
  OUTLINED_FUNCTION_5_4();
  sub_2698F8B5C(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_1_11();
  sub_2698F94F0(v21, v22);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_34_0();
  sub_269903C5C();
  v23 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v23);
  _Block_release(v17);
  v24 = OUTLINED_FUNCTION_12();
  v25(v24);
  (*(v13 + 8))(v1, v27);

  OUTLINED_FUNCTION_17();
}

void sub_2698F1298(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v7 = sub_2699037FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  v12 = sub_2698E6B0C();
  if (!v12 || (v13 = v12, v50 = sub_2698F9C18, v51 = 0, aBlock = MEMORY[0x277D85DD0], v47 = 1107296256, v48 = sub_2698E6978, v49 = &block_descriptor_122, v14 = _Block_copy(&aBlock), v15 = [v13 remoteObjectProxyWithErrorHandler_], _Block_release(v14), v13, sub_269903C3C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_28131C480 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v42 = a2;
  v43 = v11;
  v44 = a3;
  v16 = aBlock;
  v45 = MEMORY[0x277D84F90];
  aBlock = MEMORY[0x277D84F90];
  v8 = sub_2698D2A38();
  a2 = (a4 & 0xC000000000000001);
  v10 = (a4 & 0xFFFFFFFFFFFFFF8);
  v41 = v16;
  swift_unknownObjectRetain();
  v7 = 0;
  while (1)
  {
    if (v8 == v7)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = MEMORY[0x277D84F98];
      sub_2698D23FC(0, &qword_28131C428, off_279C71300);
      v36 = sub_2699039FC();

      v37 = swift_allocObject();
      v38 = v43;
      v39 = v44;
      v37[2] = v42;
      v37[3] = v39;
      v37[4] = v38;
      v37[5] = v35;
      v50 = sub_2698F8CA0;
      v51 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_2698EE5E8;
      v49 = &block_descriptor_131;
      v40 = _Block_copy(&aBlock);

      [v41 getDevicesMatchingCapabilityDescriptions:v36 completion:v40];
      _Block_release(v40);

      swift_unknownObjectRelease_n();

      return;
    }

    if (a2)
    {
      v17 = MEMORY[0x26D6482B0](v7, a4);
    }

    else
    {
      if (v7 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v17 = *(a4 + 8 * v7 + 32);
    }

    v18 = v17;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v20 = *&v17[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v19 = *&v17[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    v21 = *&v17[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet];
    if (v21)
    {

      sub_2698ED964(v21);
      v23 = v22;
      v24 = objc_allocWithZone(SVDCapabilityDescription);
      v25 = sub_2698F604C(v20, v19, v23);
    }

    else
    {
      v26 = &v17[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
      if (v17[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 16])
      {

        goto LABEL_15;
      }

      v28 = *v26;
      v27 = v26[1];
      sub_2698D23FC(0, &qword_28131C428, off_279C71300);

      v25 = sub_2698EDCF4(v20, v19, v28, v27);
    }

    v29 = v25;

    if (v29)
    {
      MEMORY[0x26D647F40]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269903A2C();
      }

      sub_269903A3C();
      v45 = aBlock;
      ++v7;
    }

    else
    {
LABEL_15:
      ++v7;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  swift_once();
LABEL_21:
  v30 = __swift_project_value_buffer(v7, qword_28131C988);
  (*(v8 + 16))(v10, v30, v7);
  v31 = sub_2699037EC();
  v32 = sub_269903B0C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2698CD000, v31, v32, "Failed to get remote object", v33, 2u);
    MEMORY[0x26D648C80](v33, -1, -1);
  }

  (*(v8 + 8))(v10, v7);

  (a2)(v34);
}

void sub_2698F1880()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  sub_2699037FC();
  OUTLINED_FUNCTION_4_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  if (qword_28131C480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_28131C988);
  (*(v4 + 16))(v8, v9, v0);
  v10 = v2;
  v11 = sub_2699037EC();
  v12 = sub_269903B0C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_269903FFC();
    v17 = sub_2698D9D70(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2698CD000, v11, v12, "Error reaching remote: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v4 + 8))(v8, v0);
  OUTLINED_FUNCTION_17();
}

void sub_2698F1A68(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, int64_t a5)
{
  v9 = sub_2699037FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - v13;
  if (qword_28131C480 != -1)
  {
LABEL_41:
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_28131C988);
  v16 = *(v10 + 16);
  v69 = v15;
  v70 = v10 + 16;
  v68 = v16;
  (v16)(v14);

  v17 = sub_2699037EC();
  v18 = sub_269903AFC();

  v19 = os_log_type_enabled(v17, v18);
  v67 = a2;
  v66 = a3;
  v72 = v10;
  v73 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    a3 = swift_slowAlloc();
    v81[0] = a3;
    *v20 = 136315138;
    swift_beginAccess();
    sub_2698D23FC(0, &qword_28131C450, off_279C71310);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8C8, &qword_2699077B8);
    sub_2698F8CAC(&unk_28131C440, &qword_28131C450, off_279C71310);
    v21 = sub_2699038AC();
    v9 = v22;

    v23 = sub_2698D9D70(v21, v9, v81);

    *(v20 + 4) = v23;
    _os_log_impl(&dword_2698CD000, v17, v18, "#hal Retrieved matching devices: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a3);
    MEMORY[0x26D648C80](a3, -1, -1);
    MEMORY[0x26D648C80](v20, -1, -1);

    v65 = *(v72 + 8);
    v65(v14, v73);
  }

  else
  {

    v65 = *(v10 + 8);
    v65(v14, v9);
  }

  swift_beginAccess();
  v24 = *(a5 + 16);
  v10 = v24 + 64;
  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 64);
  v28 = (v25 + 63) >> 6;

  a5 = 0;
  a2 = &qword_269906000;
  v74 = a4;
  v75 = v24;
  if (!v27)
  {
    while (1)
    {
LABEL_8:
      v29 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v29 >= v28)
      {
        break;
      }

      v27 = *(v10 + 8 * v29);
      ++a5;
      if (v27)
      {
        a5 = v29;
        goto LABEL_12;
      }
    }

    v51 = v71;
    v52 = v73;
    v68(v71, v69, v73);

    v53 = sub_2699037EC();
    v54 = sub_269903AFC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v80[0] = v56;
      *v55 = a2[92];
      swift_beginAccess();
      type metadata accessor for DeviceUnit();
      type metadata accessor for Capabilities();
      sub_2698F8B5C(&qword_28131C750, type metadata accessor for DeviceUnit);

      v57 = sub_2699038AC();
      v59 = v58;

      v60 = sub_2698D9D70(v57, v59, v80);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_2698CD000, v53, v54, "#hal Returning transformed results: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x26D648C80](v56, -1, -1);
      MEMORY[0x26D648C80](v55, -1, -1);

      v61 = v71;
    }

    else
    {

      v61 = v51;
    }

    v65(v61, v52);
    v62 = v67;
    swift_beginAccess();

    (v62)(v63);

    return;
  }

LABEL_12:
  while (1)
  {
    v30 = (a5 << 9) | (8 * __clz(__rbit64(v27)));
    v31 = *(*(v24 + 48) + v30);
    v9 = *(*(v24 + 56) + v30);
    a3 = type metadata accessor for DeviceUnit();
    v32 = v31;

    v77 = a3;
    v78 = v32;
    v33 = v32;
    v14 = a3;
    v34 = DeviceUnit.__allocating_init(deviceUnitObjC:)(v33);
    if (v34)
    {
      break;
    }

LABEL_32:
    v27 &= v27 - 1;

    if (!v27)
    {
      goto LABEL_8;
    }
  }

  a3 = v34;
  v9 = static ObjCCompatibility.capabilities(from:)(v9);

  if (!v9)
  {

    goto LABEL_32;
  }

  swift_beginAccess();
  v14 = *(a4 + 16);
  v76 = v9;
  if ((v14 & 0xC000000000000001) != 0)
  {
    if (v14 >= 0)
    {
      v14 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v35 = a3;
    v36 = sub_269903CAC();
    if (__OFADD__(v36, 1))
    {
      goto LABEL_40;
    }

    *(a4 + 16) = sub_2698F777C(v14, v36 + 1);
  }

  else
  {

    v37 = a3;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a4 + 16);
  v14 = v79;
  *(a4 + 16) = 0x8000000000000000;
  v38 = sub_2698D21C8();
  v40 = *(v14 + 16);
  v41 = (v39 & 1) == 0;
  a2 = (v40 + v41);
  if (__OFADD__(v40, v41))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v42 = v38;
  v43 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E8D8, &qword_2699077C0);
  v14 = &v79;
  if (sub_269903DEC())
  {
    v14 = v79;
    v44 = sub_2698D21C8();
    v24 = v75;
    if ((v43 & 1) != (v45 & 1))
    {
      goto LABEL_43;
    }

    v42 = v44;
  }

  else
  {
    v24 = v75;
  }

  v46 = v79;
  if (v43)
  {
    v47 = v79[7];
    v14 = *(v47 + 8 * v42);
    v9 = v76;
    *(v47 + 8 * v42) = v76;

LABEL_31:
    a4 = v74;
    *(v74 + 16) = v46;
    swift_endAccess();

    a2 = &qword_269906000;
    goto LABEL_32;
  }

  v79[(v42 >> 6) + 8] |= 1 << v42;
  *(v46[6] + 8 * v42) = a3;
  v9 = v76;
  *(v46[7] + 8 * v42) = v76;
  v48 = v46[2];
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (!v49)
  {
    v46[2] = v50;
    goto LABEL_31;
  }

  __break(1u);
LABEL_43:
  sub_269903FEC();
  __break(1u);
}

uint64_t sub_2698F2280()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_40_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  sub_2698D23FC(0, &qword_28033E960, 0x277CD1A90);
  OUTLINED_FUNCTION_16_1();
  *v2 = v3;
  v2[1] = sub_2698E8D2C;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008A0](v4);
}

uint64_t objectdestroy_34Tm()
{

  v1 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2698F23FC(uint64_t a1, char *a2)
{
  v4 = sub_26990382C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26990384C();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  v19[1] = *&a2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_queue];
  (*(v11 + 16))(v19 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_2698F94C8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_234;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  sub_26990383C();
  v23 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

void sub_2698F27A4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26990381C();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v98 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v97 = (&v86 - v7);
  v96 = sub_26990386C();
  v95 = *(v96 - 8);
  v8 = MEMORY[0x28223BE20](v96);
  v93 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v86 - v10;
  v105 = sub_26990382C();
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_26990384C();
  v106 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  v13 = *(v92 - 1);
  v90 = *(v13 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v86 - v14;
  v89 = sub_269903B6C();
  v88 = *(v89 - 1);
  MEMORY[0x28223BE20](v89);
  v87 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2699037FC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v86 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  v26 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager;
  v27 = *&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager];
  if (v27)
  {
    goto LABEL_8;
  }

  v101 = v23;
  if (qword_28131C480 != -1)
  {
    swift_once();
  }

  v86 = a2;
  v28 = __swift_project_value_buffer(v16, qword_28131C988);
  (*(v17 + 16))(v25, v28, v16);
  v29 = sub_2699037EC();
  v30 = sub_269903AFC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2698CD000, v29, v30, "Initializing home manager", v31, 2u);
    MEMORY[0x26D648C80](v31, -1, -1);
  }

  (*(v17 + 8))(v25, v16);
  dispatch_group_enter(*&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup]);
  v32 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:1348 cachePolicy:2];
  v33 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithHomeMangerConfiguration_];
  v34 = *&a1[v26];
  *&a1[v26] = v33;
  v35 = v33;

  v23 = v101;
  if (v35)
  {
    [v35 setDelegate_];

    v27 = *&a1[v26];
    a2 = v86;
    if (!v27)
    {
      v37 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync;
      goto LABEL_16;
    }

LABEL_8:
    v36 = [v27 isDataSyncInProgress];
    v37 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync;
    if (v36 && (a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync] & 1) == 0)
    {
      if (qword_28131C480 != -1)
      {
        swift_once();
      }

      v38 = __swift_project_value_buffer(v16, qword_28131C988);
      (*(v17 + 16))(v23, v38, v16);
      v39 = sub_2699037EC();
      v40 = sub_269903AFC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = v23;
        v42 = a2;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2698CD000, v39, v40, "Waiting on home manager to finish data sync", v43, 2u);
        v44 = v43;
        a2 = v42;
        v23 = v41;
        MEMORY[0x26D648C80](v44, -1, -1);
      }

      (*(v17 + 8))(v23, v16);
      dispatch_group_enter(*&a1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup]);
      a1[v37] = 1;
LABEL_22:
      sub_2698D23FC(0, &qword_28033E970, 0x277D85CA0);
      v51 = MEMORY[0x277D84F90];
      aBlock = MEMORY[0x277D84F90];
      sub_2698F8B5C(&qword_28033E978, MEMORY[0x277D85278]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E980, &unk_269907840);
      v86 = MEMORY[0x277D83970];
      sub_2698F94F0(&qword_28033E988, &qword_28033E980);
      v52 = v87;
      v53 = v89;
      sub_269903C5C();
      v54 = sub_269903B7C();
      (*(v88 + 1))(v52, v53);
      v55 = v91;
      v56 = a2;
      v57 = v92;
      (*(v13 + 16))(v91, v56, v92);
      v58 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v59 = (v90 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = v54;
      (*(v13 + 32))(v60 + v58, v55, v57);
      *(v60 + v59) = a1;
      type metadata accessor for SafetyBlock();
      swift_allocObject();
      v61 = sub_2698D2D5C(sub_2698F9530, v60);
      v113 = sub_2698F95CC;
      v114 = v61;
      v90 = v61;
      aBlock = MEMORY[0x277D85DD0];
      v110 = 1107296256;
      v92 = &v111;
      v111 = sub_2698D670C;
      v112 = &block_descriptor_240;
      v62 = _Block_copy(&aBlock);
      v101 = v54;
      swift_unknownObjectRetain();
      v91 = a1;

      v63 = v102;
      sub_26990383C();
      v108 = v51;
      sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
      sub_2698F94F0(&qword_28131C468, &unk_28033E410);
      v65 = v104;
      v64 = v105;
      sub_269903C5C();
      sub_269903B1C();
      _Block_release(v62);
      v66 = *(v107 + 8);
      v107 += 8;
      v89 = v66;
      (v66)(v65, v64);
      v67 = *(v106 + 8);
      v106 += 8;
      v88 = v67;
      v67(v63, v103);

      ObjectType = swift_getObjectType();
      v69 = v93;
      sub_26990385C();
      v70 = v97;
      *v97 = 2;
      v72 = v99;
      v71 = v100;
      (*(v99 + 104))(v70, *MEMORY[0x277D85188], v100);
      v73 = v94;
      MEMORY[0x26D647DD0](v69, v70);
      v74 = *(v72 + 8);
      v74(v70, v71);
      v75 = *(v95 + 8);
      v76 = v96;
      v75(v69, v96);
      v77 = ObjectType;
      v87 = ObjectType;
      sub_2698F3E00(v70);
      v78 = v98;
      sub_2698F3E74(v98);
      MEMORY[0x26D648110](v73, v70, v78, v77);
      v74(v78, v71);
      v74(v70, v71);
      v75(v73, v76);
      v79 = swift_allocObject();
      v80 = v91;
      v81 = v90;
      *(v79 + 16) = v91;
      *(v79 + 24) = v81;
      v113 = sub_2698F95D4;
      v114 = v79;
      aBlock = MEMORY[0x277D85DD0];
      v110 = 1107296256;
      v111 = sub_2698D670C;
      v112 = &block_descriptor_246;
      v82 = _Block_copy(&aBlock);
      v83 = v80;

      v84 = v102;
      sub_26990383C();
      v85 = v104;
      sub_2698F41D8();
      sub_269903B8C();
      _Block_release(v82);
      (v89)(v85, v105);
      v88(v84, v103);

      sub_269903BAC();
      swift_unknownObjectRelease();

      return;
    }

LABEL_16:
    if (a1[v37] == 1)
    {
      if (qword_28131C480 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v16, qword_28131C988);
      (*(v17 + 16))(v20, v45, v16);
      v46 = sub_2699037EC();
      v47 = sub_269903AFC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = a2;
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2698CD000, v46, v47, "Still waiting on home manager data sync", v49, 2u);
        v50 = v49;
        a2 = v48;
        MEMORY[0x26D648C80](v50, -1, -1);
      }

      (*(v17 + 8))(v20, v16);
    }

    goto LABEL_22;
  }

  __break(1u);
}

void sub_2698F35E4(unsigned __int8 a1, uint64_t a2, uint64_t a3, char *a4)
{
  v41 = a4;
  v43 = a3;
  v4 = a1;
  v5 = sub_2699037FC();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v11 = &v38 - v10;
  v12 = sub_26990379C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  swift_getObjectType();
  sub_269903B9C();
  if (v4 == 2)
  {
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v19 = v40;
    v20 = __swift_project_value_buffer(v40, qword_28131C988);
    v21 = v39;
    (*(v39 + 16))(v7, v20, v19);
    v22 = sub_2699037EC();
    v23 = sub_269903B0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2698CD000, v22, v23, "Timed out waiting for HMHomeManager to be ready", v24, 2u);
      MEMORY[0x26D648C80](v24, -1, -1);
    }

    (*(v21 + 8))(v7, v19);
    sub_2698F967C();
    v25 = swift_allocError();
    *v26 = 0;
    aBlock[0] = v25;
    sub_269903A5C();
  }

  else
  {
    v27 = *&v41[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager];
    if (v27)
    {
      v28 = v27;
      sub_26990378C();
      sub_26990377C();
      v29 = *(v13 + 8);
      v29(v16, v12);
      v30 = sub_26990376C();
      v29(v18, v12);
      v31 = v42;
      (*(v8 + 16))(v11, v43, v42);
      v32 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v33 = swift_allocObject();
      (*(v8 + 32))(v33 + v32, v11, v31);
      v34 = v41;
      *(v33 + ((v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
      aBlock[4] = sub_2698F95E4;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2698F3D60;
      aBlock[3] = &block_descriptor_255;
      v35 = _Block_copy(aBlock);
      v36 = v34;

      v37 = [v28 _refreshBeforeDate_completionHandler_];
      _Block_release(v35);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2698F3A94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2699037FC();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    if (qword_28131C480 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v6, qword_28131C988);
    (*(v7 + 16))(v10, v12, v6);
    v13 = a1;
    v14 = sub_2699037EC();
    v15 = sub_269903B0C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_269903FFC();
      v21 = sub_2698D9D70(v19, v20, &v27);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2698CD000, v14, v15, "Failed to refresh HMHomeManager: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D648C80](v18, -1, -1);
      MEMORY[0x26D648C80](v17, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_2698F967C();
    v22 = swift_allocError();
    *v23 = a1;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
    return sub_269903A5C();
  }

  else
  {
    v24 = *(a3 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
    if (v24)
    {
      v27 = *(a3 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
      return sub_269903A6C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2698F3D68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2698F3E00@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_26990381C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2698F3E74@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_26990381C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2698F3EEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26990382C();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26990384C();
  v6 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_2698F95DC;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2698D670C;
  aBlock[3] = &block_descriptor_249;
  v9 = _Block_copy(aBlock);

  sub_26990383C();
  v14 = MEMORY[0x277D84F90];
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v8, v5, v9);
  _Block_release(v9);
  (*(v13 + 8))(v5, v3);
  (*(v6 + 8))(v8, v12);
}

uint64_t sub_2698F41D8()
{
  sub_26990382C();
  sub_2698F8B5C(&qword_28131C478, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698F94F0(&qword_28131C468, &unk_28033E410);
  return sub_269903C5C();
}

void sub_2698F42C4()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_55();
  v67 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_43_0();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = *v0;
  v14 = v0[3];
  v15 = v0[6];
  v76 = MEMORY[0x277D84F90];
  v68 = v13;
  v17 = sub_2698FE21C(v10, v16);
  if (v14 == 1 && v15 == 1)
  {
    v22 = [v2 currentHome];
    if (!v22)
    {

      v52 = v67;
      if (qword_28131C480 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      __swift_project_value_buffer(v52, qword_28131C988);
      OUTLINED_FUNCTION_42_0();
      v53(v12);
      v54 = sub_2699037EC();
      v55 = sub_269903B0C();
      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_36_0();
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2698CD000, v54, v55, "No current home available", v56, 2u);
        OUTLINED_FUNCTION_27_0();
        MEMORY[0x26D648C80]();
      }

      (*(v4 + 8))(v12, v52);
      goto LABEL_46;
    }

    v23 = v22;
    v24 = [v22 rooms];
    sub_2698D23FC(0, &qword_28033E868, 0x277CD1D88);
    v20 = sub_269903A0C();

    v21 = v67;
  }

  else
  {
    v68 = v13;
    v69 = *(v0 + 1);
    v70 = v14;
    v71 = *(v0 + 2);
    v72 = v15;
    v73 = *(v0 + 7);
    v74 = v0[9];
    sub_2698F49B4();
    v20 = v19;
    v21 = v67;
  }

  if (qword_28131C480 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    __swift_project_value_buffer(v21, qword_28131C988);
    OUTLINED_FUNCTION_42_0();
    v25(v8);

    v26 = sub_2699037EC();
    v27 = sub_269903AFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = sub_2698D1C94(v20);

      _os_log_impl(&dword_2698CD000, v26, v27, "No. of rooms matching description: %ld", v28, 0xCu);
      OUTLINED_FUNCTION_27_0();
      MEMORY[0x26D648C80]();
    }

    else
    {
    }

    v29 = *(v4 + 8);
    v4 += 8;
    v29(v8, v21);
    v61 = sub_2698D2A38();
    if (!v61)
    {
      break;
    }

    v30 = 0;
    v60 = v20 & 0xC000000000000001;
    v58 = v20 + 32;
    v8 = v17 + 56;
    v59 = v20;
    while (2)
    {
      v31 = v60;
      sub_2698F7300(v30, v60 == 0, v20);
      if (v31)
      {
        v32 = MEMORY[0x26D6482B0](v30, v20);
      }

      else
      {
        v32 = *(v58 + 8 * v30);
      }

      v33 = __OFADD__(v30, 1);
      v34 = (v30 + 1);
      if (!v33)
      {
        v62 = v32;
        v63 = v34;
        v35 = [v32 accessories];
        v36 = OUTLINED_FUNCTION_48_0();
        sub_2698D23FC(v36, &qword_28033E890, 0x277CD1650);
        OUTLINED_FUNCTION_4();
        v37 = sub_269903A0C();

        v38 = MEMORY[0x277D84F90];
        v75 = MEMORY[0x277D84F90];
        v39 = sub_2698D2A38();
        v40 = 0;
        v66 = v37 & 0xFFFFFFFFFFFFFF8;
        v67 = v37 & 0xC000000000000001;
        v64 = v37;
        v65 = v38;
        v21 = v37 + 32;
        while (v40 != v39)
        {
          if (v67)
          {
            v41 = MEMORY[0x26D6482B0](v40, v64);
          }

          else
          {
            if (v40 >= *(v66 + 16))
            {
              goto LABEL_48;
            }

            v41 = *(v21 + 8 * v40);
          }

          v20 = v41;
          v33 = __OFADD__(v40++, 1);
          if (v33)
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          if (*(v17 + 16))
          {
            v42 = [v41 category];
            v43 = [v42 categoryType];

            v4 = sub_26990390C();
            v45 = v44;

            if (*(v17 + 16))
            {
              sub_26990404C();
              sub_26990394C();
              v46 = sub_26990408C();
              v47 = ~(-1 << *(v17 + 32));
              while (1)
              {
                v48 = v46 & v47;
                if (((*(v8 + (((v46 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v46 & v47)) & 1) == 0)
                {
                  break;
                }

                v49 = (*(v17 + 48) + 16 * v48);
                if (*v49 != v4 || v49[1] != v45)
                {
                  v51 = sub_269903FAC();
                  v46 = v48 + 1;
                  if ((v51 & 1) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_34;
              }
            }
          }

          else
          {
LABEL_34:
            MEMORY[0x26D647F40]();
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_269903A2C();
            }

            sub_269903A3C();
            v65 = v75;
          }
        }

        sub_2698F4908(v65);

        v30 = v63;
        v20 = v59;
        if (v63 != v61)
        {
          continue;
        }

        goto LABEL_40;
      }

      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

LABEL_40:

LABEL_46:
  OUTLINED_FUNCTION_17();
}

void sub_2698F4908(unint64_t a1)
{
  v3 = sub_2698D1C94(a1);
  v4 = sub_2698D1C94(*v1);
  v6 = __OFADD__(v4, v3);
  v7 = v4 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2698F8520(v7, 1, v5);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2698F8884(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v1 = v8;
    return;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void sub_2698F49B4()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  sub_2699037FC();
  OUTLINED_FUNCTION_4_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  v112 = sub_2699037DC();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_43_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v96 - v16;
  v18 = v5[2];
  v97 = v5[1];
  v19 = v5[3];
  v20 = v5[4];
  v101 = v18;
  v102 = v19;
  v21 = v5[6];
  v111 = v5[5];
  v22 = [v3 currentHome];
  if (!v22)
  {
    if (qword_28131C480 != -1)
    {
      goto LABEL_120;
    }

    goto LABEL_5;
  }

  i = v22;
  v23 = [v3 currentAccessory];
  v100 = [v23 room];

  v98 = i;
  v24 = [i zones];
  sub_2698D23FC(0, &qword_28033E860, 0x277CD1F50);
  v104 = sub_269903A0C();

  v7 = 0x279C71000uLL;
  if (v21 == 1)
  {
    goto LABEL_3;
  }

  if ((v20 & 1) != 0 && v100)
  {
    v29 = v104;
    v30 = sub_2698D2A38();
    v107 = v29 & 0xC000000000000001;
    v108 = v30;
    v105 = (v10 + 8);
    v106 = (v29 + 32);
    v109 = v100;
    v31 = 0;
    v32 = 0;
    v99 = v17;
    while (1)
    {
      v103 = v32;
      if (v31 == v108)
      {

        goto LABEL_44;
      }

      v0 = v107;
      sub_2698F7300(v31, v107 == 0, v104);
      if (v0)
      {
        v33 = MEMORY[0x26D6482B0](v31, v104);
      }

      else
      {
        v33 = v106[v31];
      }

      v34 = __OFADD__(v31, 1);
      v35 = v31 + 1;
      if (v34)
      {
        goto LABEL_118;
      }

      v36 = *(v7 + 2784);
      v111 = v33;
      v37 = [v33 v36];
      v38 = OUTLINED_FUNCTION_48_0();
      sub_2698D23FC(v38, &qword_28033E868, 0x277CD1D88);
      OUTLINED_FUNCTION_4();
      v39 = sub_269903A0C();

      v40 = sub_2698D1C94(v39);
      v110 = v35;
      if (v40)
      {
        v41 = v40;
        v116 = MEMORY[0x277D84F90];
        i = &v116;
        sub_2698F821C(0, v40 & ~(v40 >> 63), 0);
        if (v41 < 0)
        {
          goto LABEL_119;
        }

        v42 = 0;
        v43 = v116;
        do
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x26D6482B0](v42, v39);
          }

          else
          {
            v44 = *(v39 + 8 * v42 + 32);
          }

          v45 = v44;
          v46 = [v44 uniqueIdentifier];
          sub_2699037BC();

          v116 = v43;
          v48 = *(v43 + 16);
          v47 = *(v43 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_2698F821C((v47 > 1), v48 + 1, 1);
            v43 = v116;
          }

          ++v42;
          *(v43 + 16) = v48 + 1;
          (*(v10 + 32))(v43 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v48, v14, v112);
        }

        while (v41 != v42);

        v7 = 0x279C71000;
        v17 = v99;
      }

      else
      {

        v43 = MEMORY[0x277D84F90];
      }

      v49 = [v109 uniqueIdentifier];
      sub_2699037BC();

      MEMORY[0x28223BE20](v50);
      *(&v96 - 2) = v17;
      v32 = v103;
      v51 = sub_2698F869C(sub_2698F8B3C, (&v96 - 4), v43);

      (*v105)(v17, v112);
      i = v111;
      if (v51)
      {
        break;
      }

      v31 = v110;
    }

    v103 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E558, &qword_2699068F8);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_269906860;
    i = i;

    *(v60 + 32) = i;

    v104 = v60;
    goto LABEL_44;
  }

  if (!v21)
  {
LABEL_3:
    v103 = 0;
  }

  else
  {
    v115 = MEMORY[0x277D84F90];
    i = v104;
    v0 = sub_2698D2A38();
    v52 = 0;
    v53 = i & 0xC000000000000001;
    v54 = i & 0xFFFFFFFFFFFFFF8;
    while (v0 != v52)
    {
      if (v53)
      {
        v55 = MEMORY[0x26D6482B0](v52, v104);
      }

      else
      {
        if (v52 >= *(v54 + 16))
        {
          goto LABEL_115;
        }

        v55 = *(v104 + 8 * v52 + 32);
      }

      v56 = v55;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_114;
      }

      v57 = [v55 name];
      v7 = sub_26990390C();
      v59 = v58;

      v116 = v7;
      v117 = v59;
      v113 = v111;
      v114 = v21;
      sub_2698E42D4();
      i = OUTLINED_FUNCTION_46_0();

      if (i)
      {
      }

      else
      {
        i = &v115;
        sub_269903D8C();
        v7 = *(v115 + 16);
        sub_269903DBC();
        sub_269903DCC();
        sub_269903D9C();
      }

      ++v52;
    }

    v103 = 0;
    v104 = v115;
    v7 = 0x279C71000;
  }

LABEL_44:
  v0 = v104;
  v61 = sub_2698D2A38();
  v62 = 0;
  v110 = v0 & 0xC000000000000001;
  v111 = v61;
  v108 = v0 + 32;
  v109 = (v0 & 0xFFFFFFFFFFFFFF8);
  v63 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v62 == v111)
    {

      if (!sub_2698D2A38())
      {

        v84 = [v98 *(v7 + 2784)];
        sub_2698D23FC(0, &qword_28033E868, 0x277CD1D88);
        v63 = sub_269903A0C();
      }

      if (v102 != 1)
      {
        if ((v97 & 1) != 0 && v100)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E558, &qword_2699068F8);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_269906860;
          *(v86 + 32) = v100;
          v85 = v98;
          goto LABEL_91;
        }

        if (v102)
        {
          v115 = MEMORY[0x277D84F90];
          v0 = sub_2698D2A38();
          v87 = 0;
          v88 = v63 & 0xC000000000000001;
          v89 = v63;
          v90 = v63 & 0xFFFFFFFFFFFFFF8;
          while (v0 != v87)
          {
            if (v88)
            {
              v91 = MEMORY[0x26D6482B0](v87, v89);
            }

            else
            {
              if (v87 >= *(v90 + 16))
              {
                goto LABEL_117;
              }

              v91 = *(v89 + 8 * v87 + 32);
            }

            v92 = v91;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_116;
            }

            v93 = [v91 name];
            v7 = sub_26990390C();
            v95 = v94;

            v116 = v7;
            v117 = v95;
            v113 = v101;
            v114 = v102;
            sub_2698E42D4();
            i = OUTLINED_FUNCTION_46_0();

            if (i)
            {
            }

            else
            {
              i = &v115;
              sub_269903D8C();
              v7 = *(v115 + 16);
              sub_269903DBC();
              sub_269903DCC();
              sub_269903D9C();
            }

            ++v87;
          }

          goto LABEL_92;
        }
      }

      v85 = v100;
LABEL_91:

      goto LABEL_92;
    }

    if (v110)
    {
      v64 = MEMORY[0x26D6482B0](v62, v104);
    }

    else
    {
      if (v62 >= *(v109 + 2))
      {
        goto LABEL_107;
      }

      v64 = *(v108 + 8 * v62);
    }

    v65 = v64;
    v34 = __OFADD__(v62++, 1);
    if (v34)
    {
      break;
    }

    v66 = [v64 *(v7 + 2784)];
    v67 = OUTLINED_FUNCTION_48_0();
    sub_2698D23FC(v67, &qword_28033E868, 0x277CD1D88);
    v68 = sub_269903A0C();

    i = v68 >> 62;
    if (v68 >> 62)
    {
      v69 = sub_269903CAC();
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v63 >> 62;
    if (v63 >> 62)
    {
      v71 = sub_269903CAC();
    }

    else
    {
      v71 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v71 + v69;
    if (__OFADD__(v71, v69))
    {
      goto LABEL_108;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v70)
      {
LABEL_60:
        sub_269903CAC();
      }

LABEL_61:
      v63 = sub_269903D6C();
      v72 = v63 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_62;
    }

    if (v70)
    {
      goto LABEL_60;
    }

    v72 = v63 & 0xFFFFFFFFFFFFFF8;
    if (v0 > *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_61;
    }

LABEL_62:
    v73 = *(v72 + 16);
    v74 = (*(v72 + 24) >> 1) - v73;
    v0 = v72 + 8 * v73;
    v112 = v72;
    if (i)
    {
      if (v68 < 0)
      {
        i = v68;
      }

      else
      {
        i = v68 & 0xFFFFFFFFFFFFFF8;
      }

      v76 = sub_269903CAC();
      if (!v76)
      {
        goto LABEL_79;
      }

      v77 = v76;
      v78 = sub_269903CAC();
      if (v74 < v78)
      {
        goto LABEL_112;
      }

      if (v77 < 1)
      {
        goto LABEL_113;
      }

      v75 = v78;
      v105 = v69;
      v106 = v62;
      v107 = v63;
      v0 += 32;
      sub_2698F94F0(&qword_28033E878, &qword_28033E870);
      for (i = 0; i != v77; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E870, &unk_269907770);
        v79 = sub_2698F8AB0(&v116, i, v68);
        v81 = *v80;
        (v79)(&v116, 0);
        *(v0 + 8 * i) = v81;
      }

      v7 = 0x279C71000;
      v62 = v106;
      v63 = v107;
      v69 = v105;
LABEL_75:

      if (v75 < v69)
      {
        goto LABEL_109;
      }

      if (v75 > 0)
      {
        v82 = *(v112 + 16);
        v34 = __OFADD__(v82, v75);
        v83 = v82 + v75;
        if (v34)
        {
          goto LABEL_110;
        }

        *(v112 + 16) = v83;
      }
    }

    else
    {
      v75 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
        if (v74 < v75)
        {
          goto LABEL_111;
        }

        swift_arrayInitWithCopy();
        goto LABEL_75;
      }

LABEL_79:

      if (v69 > 0)
      {
        goto LABEL_109;
      }
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  OUTLINED_FUNCTION_0_11();
  swift_once();
LABEL_5:
  v25 = __swift_project_value_buffer(v0, qword_28131C988);
  (*(v7 + 16))(i, v25, v0);
  v26 = sub_2699037EC();
  v27 = sub_269903B0C();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_36_0();
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2698CD000, v26, v27, "No current home available", v28, 2u);
    OUTLINED_FUNCTION_27_0();
    MEMORY[0x26D648C80]();
  }

  (*(v7 + 8))(i, v0);
LABEL_92:
  OUTLINED_FUNCTION_17();
}

void sub_2698F55EC()
{
  v1 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  v5 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_initialLoadDone;
  if ((*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_initialLoadDone) & 1) == 0)
  {
    if (qword_28131C480 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_28131C988);
    v6 = OUTLINED_FUNCTION_50();
    v7(v6);
    v8 = sub_2699037EC();
    v9 = sub_269903AFC();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_36_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_59(&dword_2698CD000, v10, v11, "Home manager updated homes");
      OUTLINED_FUNCTION_27_0();
      MEMORY[0x26D648C80]();
    }

    (*(v3 + 8))(v0, v1);
    *(v0 + v5) = 1;
    dispatch_group_leave(*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup));
  }
}

void sub_2698F57C0()
{
  v1 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  v5 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManager);
  if (v5)
  {
    if (([v5 isDataSyncInProgress] & 1) == 0)
    {
      if (qword_28131C480 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      __swift_project_value_buffer(v1, qword_28131C988);
      v6 = OUTLINED_FUNCTION_50();
      v7(v6);
      v8 = sub_2699037EC();
      v9 = sub_269903AFC();
      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_36_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_59(&dword_2698CD000, v10, v11, "Home manager data sync finished");
        OUTLINED_FUNCTION_27_0();
        MEMORY[0x26D648C80]();
      }

      (*(v3 + 8))(v0, v1);
      dispatch_group_leave(*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_homeManagerReadyGroup));
      *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23DeviceResolutionService_waitingOnHomeManagerDataSync) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

id DeviceResolutionService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceResolutionService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2698F5AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698F5B48;

  return sub_2698E84C0();
}

uint64_t sub_2698F5B48()
{
  OUTLINED_FUNCTION_22_1();
  v3 = v2;
  OUTLINED_FUNCTION_23_1();
  v4 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2698F5C38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698F9CD0;

  return sub_2698E8C34();
}

uint64_t sub_2698F5CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2698F9CD0;

  return sub_2698ECA2C(a1);
}

uint64_t sub_2698F5D60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698F9CD0;

  return sub_2698E968C();
}

uint64_t sub_2698F5DF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2698F9CD0;

  return sub_2698EE6BC(a1, a2);
}

uint64_t sub_2698F5EA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2698F9CD0;

  return sub_2698EF114(a1);
}

uint64_t sub_2698F5FA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698F9CD0;

  return sub_2698EAE00();
}

id sub_2698F604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2699038FC();

  v5 = sub_269903A9C();

  v6 = [v3 initWithKey:v4 valueSet:v5];

  return v6;
}

uint64_t type metadata accessor for DeviceResolutionService(uint64_t a1)
{
  result = qword_28131C5A8;
  if (!qword_28131C5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2698F6124()
{
  result = qword_28033E7E8;
  if (!qword_28033E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E7E8);
  }

  return result;
}

void sub_2698F6180(uint64_t a1)
{
  sub_2698F6D48(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DeviceResolutionService.pairedCompanionDevice()()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x128);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5_2(v3);

  return v6();
}

uint64_t sub_2698F6428()
{
  OUTLINED_FUNCTION_22_1();
  v2 = v1;
  OUTLINED_FUNCTION_23_1();
  v3 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of DeviceResolutionService.meDevice()()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x130);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5_2(v3);

  return v6();
}

uint64_t dispatch thunk of DeviceResolutionService.devices(matchingAny:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x138);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_2(v5);

  return v8(v2);
}

uint64_t dispatch thunk of DeviceResolutionService.homeAutomationAccessories(matchingAny:checkForReachability:)()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  v4 = v3;
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_5_2(v7);

  return v10(v4, v2);
}

uint64_t dispatch thunk of DeviceResolutionService.devicesMatching(capabilityDescriptions:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_2(v5);

  return v8(v2);
}

uint64_t dispatch thunk of DeviceResolutionService.devicesWithProximity(closerBound:fartherBound:)()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  v4 = v3;
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x150);
  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_5_2(v7);

  return v10(v4, v2);
}

uint64_t dispatch thunk of DeviceResolutionService.sourceDevices(for:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_2(v5);

  return v8(v2);
}

void sub_2698F6D48(uint64_t a1)
{
  if (!qword_28131C758)
  {
    sub_2699037DC();
    v1 = sub_269903C0C();
    if (!v2)
    {
      atomic_store(v1, &qword_28131C758);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DeviceResolutionService.XPCError(_BYTE *result, int a2, int a3)
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

uint64_t sub_2698F6E58(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2698F6EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_2698F6EFC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2698F6F14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2698F6F44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2698F703C;

  return v6(a1);
}

uint64_t sub_2698F703C()
{
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_23_1();
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  OUTLINED_FUNCTION_26_0();

  return v3();
}

char *sub_2698F7120(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E258, &unk_269905FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2698F7228(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_2699037DC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_2699037DC();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_2698F7300(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_2698F7324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033EA00, qword_269907870);
    v2 = sub_269903EEC();
    v16 = v2;
    sub_269903E1C();
    while (1)
    {
      v3 = sub_269903E9C();
      if (!v3)
      {

        return;
      }

      v14 = v3;
      sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
      swift_dynamicCast();
      sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2698F7970(v4 + 1, 1, &unk_28033EA00, qword_269907870);
      }

      v2 = v16;
      v5 = sub_269903BDC();
      v6 = v16 + 64;
      v7 = v5 & ~(-1 << *(v16 + 32));
      if (((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v16 + 48) + 8 * v8) = v15;
      *(*(v16 + 56) + 8 * v8) = v14;
      ++*(v16 + 16);
    }

    OUTLINED_FUNCTION_52();
    while (++v9 != v11 || (v10 & 1) == 0)
    {
      v12 = v9 == v11;
      if (v9 == v11)
      {
        v9 = 0;
      }

      v10 |= v12;
      v13 = *(v6 + 8 * v9);
      if (v13 != -1)
      {
        v8 = __clz(__rbit64(~v13)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2698F7554(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E958, &qword_269907830);
    v2 = sub_269903EEC();
    v17 = v2;
    sub_269903E1C();
    while (1)
    {
      v3 = sub_269903E9C();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      type metadata accessor for DeviceUnit();
      swift_dynamicCast();
      sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2698F7970(v4 + 1, 1, &qword_28033E958, &qword_269907830);
      }

      v2 = v17;
      result = sub_269903BDC();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2698F777C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8E8, &qword_2699077C8);
    v2 = sub_269903EEC();
    v17 = v2;
    sub_269903E1C();
    while (1)
    {
      v3 = sub_269903E9C();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      type metadata accessor for DeviceUnit();
      swift_dynamicCast();
      type metadata accessor for Capabilities();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2698F7BB8(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_269903BDC();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2698F7970(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_269903EDC();
  if (!*(v7 + 16))
  {

LABEL_29:
    *v5 = v8;
    return;
  }

  v35 = v4;
  v9 = 0;
  v10 = (v7 + 64);
  OUTLINED_FUNCTION_37_0();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v8 + 64;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= v15)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_9;
      }
    }

    if (v6)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        sub_2698FE8C4(0, (v34 + 63) >> 6, v7 + 64);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
    goto LABEL_29;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v20 = v17 | (v9 << 6);
    v21 = *(*(v7 + 48) + 8 * v20);
    v22 = *(*(v7 + 56) + 8 * v20);
    if ((v6 & 1) == 0)
    {
      v23 = v21;
      v24 = v22;
    }

    v25 = sub_269903BDC();
    v26 = -1 << *(v8 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v8 + 48) + 8 * v29) = v21;
    *(*(v8 + 56) + 8 * v29) = v22;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v16 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_2698F7BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8E8, &qword_2699077C8);
  result = sub_269903EDC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v31 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_2698FE8C4(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
    }

    result = sub_269903BDC();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2698F7E24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2699037DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E908, &qword_2699077E0);
  v39 = v4;
  result = sub_269903EDC();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v43 = v8;
  v35 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v6 + 16);
  v37 = v9;
  v38 = v6;
  v40 = (v6 + 32);
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_2698FE8C4(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 48);
    v42 = *(v38 + 72);
    v24 = v23 + v42 * v22;
    if (v39)
    {
      (*v40)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    else
    {
      (*v36)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    sub_2698F8B5C(&qword_28131C768, MEMORY[0x277CC95F0]);
    result = sub_2699038DC();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (*v40)(*(v11 + 48) + v42 * v28, v43, v5);
    *(*(v11 + 56) + 8 * v28) = v41;
    ++*(v11 + 16);
    v9 = v37;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void *sub_2698F81FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2698F823C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2698F821C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2698F836C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2698F823C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8B8, &qword_2699077A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8C0, &qword_2699077B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2698F836C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E888, &unk_269907780);
  v10 = *(sub_2699037DC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2699037DC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2698F7228(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2698F8520(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if ((result & 1) == 0 || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0 || a1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v5 >> 62)
    {
      sub_269903CAC();
    }

    result = sub_269903D6C();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2698F85C8(uint64_t a1, uint64_t a2)
{
  sub_2699037DC();
  sub_2698F8B5C(&qword_28033E880, MEMORY[0x277CC95F0]);
  return sub_2699038EC() & 1;
}

uint64_t sub_2698F8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_269903FAC() & 1;
  }
}

BOOL sub_2698F869C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_2699037DC() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_2698F8770(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2698F8820(void *a1)
{
  v1 = [a1 homeKitAccessoryIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26990390C();

  return v3;
}

uint64_t sub_2698F8884(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269903CAC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2698D1C94(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2698D23FC(0, &qword_28033E890, 0x277CD1650);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2698F94F0(&qword_28033E898, &qword_28033E7A8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E7A8, &qword_269907518);
          v9 = sub_2698F8A1C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2698F8A1C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_2698CF608(a3);
  sub_2698F7300(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D6482B0](a2, a3);
  }

  *a1 = v7;
  return sub_2698F8AA8;
}

void (*sub_2698F8AB0(void *a1, unint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_2698CF608(a3);
  sub_2698F7300(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D6482B0](a2, a3);
  }

  *a1 = v7;
  return sub_2698F9C24;
}

uint64_t sub_2698F8B5C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2698F8BA0()
{
  result = qword_28033E8A0;
  if (!qword_28033E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E8A0);
  }

  return result;
}

uint64_t sub_2698F8CAC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2698D23FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2698F8D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E900, &qword_2699077D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698F8DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E910, &qword_2699077E8);
  OUTLINED_FUNCTION_25_1(v2);
  OUTLINED_FUNCTION_41_0();

  return sub_2698EF968(a1);
}

void sub_2698F8E48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  OUTLINED_FUNCTION_25_1(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_2698EEEDC(a1, v4, v5);
}

uint64_t objectdestroy_154Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4_4();

  v3 = OUTLINED_FUNCTION_15_1();
  v4(v3);
  v5 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2698F8F94(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_25_1(v4);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(v6, v7, v8);
}

uint64_t sub_2698F9004(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  OUTLINED_FUNCTION_39_0(v3);
  OUTLINED_FUNCTION_38_0();
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2698EDD80(a1, (v1 + v4), v6, v7);
}

uint64_t sub_2698F90A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  OUTLINED_FUNCTION_25_1(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = v0 + ((*(v2 + 80) + 41) & ~*(v2 + 80));

  return sub_2698EB63C(v3, v4, v5, v6, v7);
}

void sub_2698F91E0(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_51(a1, a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25_1(v4);
  OUTLINED_FUNCTION_41_0();
  sub_2698EC0A8();
}

uint64_t sub_2698F92EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_25_1(v4);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a3(v6, v7, v8, v9);
}

uint64_t objectdestroy_204Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4_4();

  v2 = OUTLINED_FUNCTION_15_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2698F943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = OUTLINED_FUNCTION_51(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_25_1(v8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return a4(a1, v10, v11);
}

uint64_t sub_2698F94F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_51(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2698F9530(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_39_0(v3);
  OUTLINED_FUNCTION_38_0();
  v5 = *(v1 + 16);
  v7 = *(v1 + v6);

  sub_2698F35E4(a1, v5, v1 + v4, v7);
}

uint64_t sub_2698F95E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_39_0(v3);
  OUTLINED_FUNCTION_38_0();
  v6 = *(v1 + v5);

  return sub_2698F3A94(a1, v1 + v4, v6);
}

unint64_t sub_2698F967C()
{
  result = qword_28033E9F0;
  if (!qword_28033E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E9F0);
  }

  return result;
}

uint64_t sub_2698F96F8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_25_1(v3);
  v4 = OUTLINED_FUNCTION_54();

  return a3(v4);
}

uint64_t sub_2698F975C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E9F8, &qword_269907850);
  OUTLINED_FUNCTION_25_1(v2);
  OUTLINED_FUNCTION_41_0();
  return sub_2698E9610(a1);
}

uint64_t objectdestroy_230Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4_4();

  v3 = OUTLINED_FUNCTION_15_1();
  v4(v3);
  v5 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t objectdestroy_160Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_17_1();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v4 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2698F9914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E790, &qword_2699074C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698F9984(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_51(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_17_1();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2698F99D4()
{
  OUTLINED_FUNCTION_6_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_0(v1);

  return v4(v3);
}

uint64_t sub_2698F9A6C()
{
  OUTLINED_FUNCTION_6_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_0(v1);

  return v4(v3);
}

uint64_t sub_2698F9B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E8B0, &qword_2699077A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

int8x16_t OUTLINED_FUNCTION_35_0(int8x16_t *a1)
{
  *(v2 + 56) = a1;
  result = vextq_s8(*(v2 + 24), *(v2 + 24), 8uLL);
  a1[1] = result;
  a1[2].i64[0] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t result)
{
  *(v2 + 32) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return MEMORY[0x28211F310](v1 - 144, v0, v0);
}

void OUTLINED_FUNCTION_59(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_task_alloc();
}

uint64_t sub_2698FA024()
{
  sub_2698FA18C();
  result = sub_269903BFC();
  qword_28131C9A0 = result;
  return result;
}

uint64_t sub_2698FA090()
{
  sub_2698FA18C();
  result = sub_269903BFC();
  qword_280340D90 = result;
  return result;
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

unint64_t sub_2698FA18C()
{
  result = qword_28131C3E8;
  if (!qword_28131C3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131C3E8);
  }

  return result;
}

uint64_t sub_2698FA1FC(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_2699037FC();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_26990380C();
}

uint64_t sub_2698FA308()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_2698FA3D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_2698FA430(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698FA3D0(v1, v2);
}

id AssistantEnabledCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_12(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x8000000269908EF0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AE0(9, v8);

  return v6;
}

uint64_t sub_2698FA6B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000029, 0x8000000269908EF0, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

char *sub_2698FA7D4(uint64_t a1)
{
  result = sub_2698D2A38();
  v3 = 0;
  v13 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap;
  v15 = result;
  while (1)
  {
    v4 = v3;
    if (v15 == v3)
    {
      return (v15 == v4);
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      result = *(a1 + 8 * v3 + 32);
    }

    v5 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v6 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0)
    {
LABEL_17:

      return (v15 == v4);
    }

    OUTLINED_FUNCTION_1_1();
    v8 = sub_26990395C();
    v9 = sub_2698D0124(v8, v7, v6);
    MEMORY[0x26D647E90](v9);

    v10 = sub_269903F0C();

    if (v10 || !*(*(v14 + v13) + 16))
    {
LABEL_16:

      return (v15 == v4);
    }

    sub_2698D1D34(v7, v6);
    if ((v11 & 1) == 0)
    {
      goto LABEL_17;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return (v15 == v4);
    }

    swift_unknownObjectRetain();
    v12 = sub_2698DBF48(v5);

    result = swift_unknownObjectRelease_n();
    v3 = v4 + 1;
    if (!v12)
    {
      return (v15 == v4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *AssistantEnabledCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_12(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16D4(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AssistantEnabledCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssistantEnabledCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssistantEnabledCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_12@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AssistantEnabledCapability();
}

id MUXCapability.__allocating_init(status:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return MUXCapability.init(status:)(v2);
}

uint64_t sub_2698FAF48()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_2698FB010(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_2698FB070(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698FB010(v1, v2);
}

id MUXCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_13(OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000269909010;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AB8(8, v8);

  return v6;
}

uint64_t sub_2698FB2F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD00000000000001CLL, 0x8000000269909010, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698FB414(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v16 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap;
  v18 = v2;
  do
  {
    v4 = v3;
    if (v18 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    if ((OUTLINED_FUNCTION_2_7() & 1) == 0)
    {
      goto LABEL_18;
    }

    if ((OUTLINED_FUNCTION_2_7() & 1) == 0 || (v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), v12 = v11, MEMORY[0x26D647E90](v10), , sub_269903F0C(), OUTLINED_FUNCTION_35(), , v12))
    {

      return;
    }

    if (!*(*(v17 + v16) + 16) || (, sub_2698D1D34(v7, v8), v14 = v13, , (v14 & 1) == 0))
    {
LABEL_18:

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v15 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while (v15);
}

char *MUXCapability.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return MUXCapability.init(coder:)(v2);
}

char *MUXCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_13(OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_35();
  sub_2698D16E8(v4);

  if (!*(*&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v1;
}

id MUXCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUXCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_13@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for MUXCapability();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_26990399C();
}

uint64_t sub_2698FBBBC()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_2698FBC84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_2698FBCE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698FBC84(v1, v2);
}

id AppLaunchCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_14(OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000002699090A0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A90(2, v8);

  return v6;
}

uint64_t sub_2698FBF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000022, 0x80000002699090A0, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698FC088(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap;
  v17 = v2;
  do
  {
    v4 = v3;
    if (v17 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_12();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_12();
    if ((sub_26990399C() & 1) == 0 || (OUTLINED_FUNCTION_1_12(), v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), MEMORY[0x26D647E90](v10), , v11 = sub_269903F0C(), , v11))
    {

      return;
    }

    if (!*(*(v16 + v15) + 16) || (, sub_2698D1D34(v7, v8), v13 = v12, , (v13 & 1) == 0))
    {
LABEL_18:

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v14 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while (v14);
}

char *AppLaunchCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_14(OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16FC(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AppLaunchCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppLaunchCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLaunchCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_14@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AppLaunchCapability();
}

uint64_t sub_2698FC828()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_2698FC8F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_2698FC950(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698FC8F0(v1, v2);
}

id CustomTimerIntentHandlingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_15(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000028;
  *(inited + 40) = 0x8000000269909180;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0ACC(10, v8);

  return v6;
}

uint64_t sub_2698FCBD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000028, 0x8000000269909180, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698FCCF4(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap;
  v17 = v2;
  do
  {
    v4 = v3;
    if (v17 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_13();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_13();
    if ((sub_26990399C() & 1) == 0 || (OUTLINED_FUNCTION_1_13(), v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), MEMORY[0x26D647E90](v10), , v11 = sub_269903F0C(), , v11))
    {

      return;
    }

    if (!*(*(v16 + v15) + 16) || (, sub_2698D1D34(v7, v8), v13 = v12, , (v13 & 1) == 0))
    {
LABEL_18:

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v14 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while (v14);
}

char *CustomTimerIntentHandlingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_15(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1710(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id CustomTimerIntentHandlingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CustomTimerIntentHandlingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomTimerIntentHandlingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_15@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for CustomTimerIntentHandlingCapability();
}

uint64_t sub_2698FD494()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_2698FD55C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_2698FD5BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698FD55C(v1, v2);
}

id VideoPlaybackCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_16(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x8000000269909290;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A7C(1, v8);

  return v6;
}
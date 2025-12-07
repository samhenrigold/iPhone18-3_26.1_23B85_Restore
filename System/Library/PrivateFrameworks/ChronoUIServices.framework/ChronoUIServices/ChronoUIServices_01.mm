uint64_t CHUISControlInstanceConfiguration.preferredColorScheme.getter()
{
  if (*(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  }
}

id CHUISControlInstanceConfiguration.init()()
{
  v1 = v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3.super_class = CHUISControlInstanceConfiguration;
  return objc_msgSendSuper2(&v3, sel_init);
}

id CHUISControlInstanceConfiguration.copy(with:)@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[3] = type metadata accessor for CHUISControlInstanceConfiguration(a2);
  *a1 = v4;

  return v4;
}

char *CHUISControlInstanceConfiguration.mutableCopy(with:)@<X0>(char **a1@<X8>)
{
  v3 = [objc_allocWithZone(CHUISMutableControlInstanceConfiguration) init];
  v4 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v5 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v6 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v7 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v8 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v9 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v10 = &v3[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  *v10 = v4;
  v10[1] = v5;
  *(v10 + 1) = v6;
  v10[16] = v7;
  *(v10 + 3) = v8;
  *(v10 + 4) = v9;
  v11 = v3;

  result = type metadata accessor for CHUISMutableControlInstanceConfiguration(v12);
  a1[3] = result;
  *a1 = v11;
  return result;
}

id _sSo33CHUISControlInstanceConfigurationC16ChronoUIServicesEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t CHUISControlInstanceConfiguration.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1D92CAF48(a1, v20);
  if (!v23)
  {
    sub_1D92CAFB8(v20);
    goto LABEL_5;
  }

  type metadata accessor for CHUISControlInstanceConfiguration(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v3 = v16[0];
  v4 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v5 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v6 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v7 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v8 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v9 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v20[0] = v4;
  v20[1] = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v10 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v11 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  LOBYTE(v6) = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v12 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v13 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  LOBYTE(v16[0]) = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  BYTE1(v16[0]) = v10;
  v16[1] = v11;
  v17 = v6;
  v18 = v12;
  v19 = v13;
  v14 = _s16ChronoUIServices28ControlInstanceConfigurationV2eeoiySbAC_ACtFZ_0(v20, v16);

  return v14 & 1;
}

uint64_t sub_1D92CAF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC580, &qword_1D932CF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92CAFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC580, &qword_1D932CF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CHUISControlInstanceConfiguration.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v2 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v3 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v4 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v5 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v8[72] = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v8[73] = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_1D9328724();

  ControlInstanceConfiguration.hash(into:)(v8);
  v6 = sub_1D9328764();

  return v6;
}

id CHUISControlInstanceConfiguration.description.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (!v1)
  {
    return 0xD00000000000002BLL;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D92CB9A4;
  *(v4 + 24) = v3;
  v11[4] = sub_1D92CB9AC;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D92CB5E4;
  v11[3] = &block_descriptor;
  v5 = _Block_copy(v11);
  v6 = v0;

  v7 = v2;

  [v7 appendProem:0 block:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    result = [v7 build];
    if (result)
    {
      v9 = result;
      v10 = sub_1D9327F84();

      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_1D92CB414(void *a1, id a2)
{
  v4 = [a2 canAppearInSecureEnvironment];
  v5 = sub_1D9327F74();

  v6 = [a2 supportsLowLuminance];
  v7 = sub_1D9327F74();

  [a2 preferredColorScheme];
  type metadata accessor for CHSColorScheme(0);
  v8 = sub_1D9328684();
  v9 = sub_1D9327F74();

  swift_unknownObjectRelease();
  v10 = [a2 launchOrigin];
  v11 = sub_1D9327F74();
  [a1 appendString:v10 withName:v11];
}

uint64_t CHUISMutableControlInstanceConfiguration.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v4 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v5 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v6 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v8 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v7 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v9 = objc_allocWithZone(CHUISControlInstanceConfiguration);

  v10 = [v9 init];
  v11 = &v10[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  *v11 = v3;
  v11[1] = v4;
  *(v11 + 1) = v5;
  v11[16] = v6;
  *(v11 + 3) = v8;
  *(v11 + 4) = v7;

  result = type metadata accessor for CHUISControlInstanceConfiguration(v12);
  a1[3] = result;
  *a1 = v10;
  return result;
}

uint64_t CHUISMutableControlInstanceConfiguration.preferredColorScheme.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  *(v2 + 8) = result;
  *(v2 + 16) = result == 0;
  return result;
}

id sub_1D92CB87C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32))
  {

    v1 = sub_1D9327F74();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t _sSo33CHUISControlInstanceConfigurationC16ChronoUIServicesE12launchOriginSSSgvg_0()
{
  v1 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);

  return v1;
}

uint64_t CHUISMutableControlInstanceConfiguration.launchOrigin.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
}

uint64_t sub_1D92CBA28(uint64_t a1)
{
  result = sub_1D9326814();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D92CBAD0(uint64_t a1)
{
  result = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D9296448(319, &qword_1EDE3B220, 0x1E6994370);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D92CBB7C(uint64_t a1)
{
  v2 = sub_1D92CDB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CBBB8(uint64_t a1)
{
  v2 = sub_1D92CDB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CBC08()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t sub_1D92CBC7C(uint64_t a1)
{
  v2 = *v1;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v2);
  return sub_1D9328764();
}

uint64_t sub_1D92CBCC0(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC628, &qword_1D932D0D8);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v33 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC630, &qword_1D932D0E0);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC638, &qword_1D932D0E8);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v33 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC640, &qword_1D932D0F0);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v33 - v5;
  v7 = sub_1D9326814();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC648, &qword_1D932D0F8);
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92CDA54();
  sub_1D9328784();
  sub_1D92CDCA4(v47, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = v45;
      v27 = v15;
      v22 = v46;
      (*(v45 + 32))(v10, v27, v46);
      v52 = 1;
      sub_1D92CDBB4();
      v28 = v39;
      v23 = v49;
      sub_1D93285E4();
      sub_1D92CDC08(&qword_1ECAFC650, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      v29 = v43;
      v30 = v50;
      sub_1D9328604();
      if (!v30)
      {
        (*(v41 + 8))(v28, v29);
        (*(v20 + 8))(v10, v22);
        return (*(v48 + 8))(v18, v23);
      }

      (*(v41 + 8))(v28, v29);
      v12 = v10;
    }

    else
    {
      v20 = v45;
      v21 = v15;
      v22 = v46;
      (*(v45 + 32))(v12, v21, v46);
      v51 = 0;
      sub_1D92CDC50();
      v23 = v49;
      sub_1D93285E4();
      sub_1D92CDC08(&qword_1ECAFC650, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      v24 = v37;
      sub_1D9328604();
      (*(v35 + 8))(v6, v24);
    }

    (*(v20 + 8))(v12, v22);
    return (*(v48 + 8))(v18, v23);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v53 = 2;
    sub_1D92CDB60();
    v25 = v34;
    v26 = v49;
    sub_1D93285E4();
    (*(v36 + 8))(v25, v38);
  }

  else
  {
    v54 = 3;
    sub_1D92CDAA8();
    v32 = v40;
    v26 = v49;
    sub_1D93285E4();
    (*(v42 + 8))(v32, v44);
  }

  return (*(v48 + 8))(v18, v26);
}

uint64_t sub_1D92CC3AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5C8, &qword_1D932D0A8);
  v53 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v47 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5D0, &qword_1D932D0B0);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v63 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5D8, &qword_1D932D0B8);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v47 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5E0, &qword_1D932D0C0);
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5E8, &qword_1D932D0C8);
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D92CDA54();
  v21 = v65;
  sub_1D9328774();
  if (!v21)
  {
    v48 = v17;
    v49 = v14;
    v23 = v62;
    v22 = v63;
    v24 = v64;
    v50 = v19;
    v65 = v11;
    v25 = v61;
    v26 = sub_1D93285D4();
    v27 = v26;
    v28 = *(v26 + 16);
    if (!v28 || ((v29 = *(v26 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = v10;
      v32 = v8;
      v33 = sub_1D9328484();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5F8, &qword_1D932D0D0);
      *v35 = v65;
      sub_1D93285A4();
      sub_1D9328474();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v25 + 8))(v31, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v26 + 32) > 1u)
      {
        if (v29 == 2)
        {
          v69 = 2;
          sub_1D92CDB60();
          sub_1D9328594();
          v41 = v60;
          (*(v52 + 8))(v22, v54);
        }

        else
        {
          v70 = 3;
          sub_1D92CDAA8();
          sub_1D9328594();
          v41 = v60;
          (*(v53 + 8))(v24, v57);
        }

        (*(v25 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v46 = v50;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (*(v26 + 32))
        {
          v68 = 1;
          sub_1D92CDBB4();
          v42 = v59;
          sub_1D9328594();
          sub_1D9326814();
          v64 = v27;
          sub_1D92CDC08(&qword_1ECAFC618, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
          v44 = v49;
          v45 = v56;
          sub_1D93285C4();
          (*(v55 + 8))(v42, v45);
          (*(v25 + 8))(v10, v8);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v40 = v44;
        }

        else
        {
          v67 = 0;
          sub_1D92CDC50();
          v36 = v58;
          sub_1D9328594();
          sub_1D9326814();
          v37 = v36;
          v38 = v10;
          v64 = v8;
          sub_1D92CDC08(&qword_1ECAFC618, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
          v39 = v48;
          sub_1D93285C4();
          (*(v51 + 8))(v37, v23);
          (*(v25 + 8))(v38, v64);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v40 = v39;
        }

        v46 = v50;
        sub_1D92CDAFC(v40, v50);
        v41 = v60;
      }

      sub_1D92CDAFC(v46, v41);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v66);
}

uint64_t sub_1D92CCC3C()
{
  v1 = 7107189;
  v2 = 0x7974697669746361;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x64656C7469746E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D92CCCB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D92CEAC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D92CCCE4(uint64_t a1)
{
  v2 = sub_1D92CDA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCD20(uint64_t a1)
{
  v2 = sub_1D92CDA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CCD70(uint64_t a1)
{
  v2 = sub_1D92CDBB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCDAC(uint64_t a1)
{
  v2 = sub_1D92CDBB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CCDE8(uint64_t a1)
{
  v2 = sub_1D92CDAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCE24(uint64_t a1)
{
  v2 = sub_1D92CDAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CCE60()
{
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](0);
  return sub_1D9328764();
}

uint64_t sub_1D92CCEA4(uint64_t a1)
{
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](0);
  return sub_1D9328764();
}

uint64_t sub_1D92CCEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9328654();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D92CCF64(uint64_t a1)
{
  v2 = sub_1D92CDC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCFA0(uint64_t a1)
{
  v2 = sub_1D92CDC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CD010(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746567646977;
  }

  else
  {
    v3 = 0x795468636E75616CLL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006570;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746567646977;
  }

  else
  {
    v5 = 0x795468636E75616CLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA00000000006570;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9328654();
  }

  return v8 & 1;
}

uint64_t sub_1D92CD0B8()
{
  sub_1D9328724();
  sub_1D9327FB4();

  return sub_1D9328764();
}

uint64_t sub_1D92CD13C(uint64_t a1)
{
  sub_1D9327FB4();
}

uint64_t sub_1D92CD1AC(uint64_t a1)
{
  sub_1D9328724();
  sub_1D9327FB4();

  return sub_1D9328764();
}

uint64_t sub_1D92CD22C@<X0>(char *a2@<X8>)
{
  v3 = sub_1D9328584();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D92CD28C(uint64_t *a1@<X8>)
{
  v2 = 0x795468636E75616CLL;
  if (*v1)
  {
    v2 = 0x746567646977;
  }

  v3 = 0xEA00000000006570;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D92CD2CC()
{
  if (*v0)
  {
    return 0x746567646977;
  }

  else
  {
    return 0x795468636E75616CLL;
  }
}

uint64_t sub_1D92CD308@<X0>(char *a3@<X8>)
{
  v4 = sub_1D9328584();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1D92CD378(uint64_t a1)
{
  v2 = sub_1D92CD9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CD3B4(uint64_t a1)
{
  v2 = sub_1D92CD9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CD3F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC660, &qword_1D932D108);
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92CD9AC();
  sub_1D9328774();
  if (!v2)
  {
    v11 = v18;
    v10 = v19;
    LOBYTE(v20) = 0;
    sub_1D92CDC08(&qword_1ECAFC668, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType, &unk_1D932D04C);
    sub_1D93285C4();
    v22 = 1;
    sub_1D92CE114();
    sub_1D93285C4();
    v14 = v20;
    v13 = v21;
    sub_1D9296448(0, &qword_1EDE3B220, 0x1E6994370);
    v17 = v13;
    v15 = sub_1D9328254();
    (*(v11 + 8))(v9, v7);
    sub_1D92C5F98(v14, v17);
    sub_1D92CDAFC(v6, v10);
    *(v10 + *(type metadata accessor for RemoteWidgetLaunchRequest(0) + 20)) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D92CD6E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5A8, &qword_1D932D0A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92CD9AC();
  sub_1D9328784();
  LOBYTE(v12) = 0;
  type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  sub_1D92CDC08(&qword_1ECAFC5B8, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType, &unk_1D932D024);
  sub_1D9328604();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for RemoteWidgetLaunchRequest(0);
  sub_1D9296448(0, &qword_1EDE3B220, 0x1E6994370);
  v12 = sub_1D9328244();
  v13 = v7;
  v11[15] = 1;
  v8 = v12;
  v9 = v7;
  sub_1D92CDA00();
  sub_1D9328604();
  (*(v4 + 8))(v6, v3);
  return sub_1D92C5F98(v8, v9);
}

uint64_t sub_1D92CD938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D92CDD08(a1, a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9296448(0, &qword_1ECAFC678, 0x1E69E58C0);
  return sub_1D9328314() & 1;
}

unint64_t sub_1D92CD9AC()
{
  result = qword_1ECAFC5B0;
  if (!qword_1ECAFC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC5B0);
  }

  return result;
}

unint64_t sub_1D92CDA00()
{
  result = qword_1ECAFC5C0;
  if (!qword_1ECAFC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC5C0);
  }

  return result;
}

unint64_t sub_1D92CDA54()
{
  result = qword_1ECAFC5F0;
  if (!qword_1ECAFC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC5F0);
  }

  return result;
}

unint64_t sub_1D92CDAA8()
{
  result = qword_1ECAFC600;
  if (!qword_1ECAFC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC600);
  }

  return result;
}

uint64_t sub_1D92CDAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D92CDB60()
{
  result = qword_1ECAFC608;
  if (!qword_1ECAFC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC608);
  }

  return result;
}

unint64_t sub_1D92CDBB4()
{
  result = qword_1ECAFC610;
  if (!qword_1ECAFC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC610);
  }

  return result;
}

uint64_t sub_1D92CDC08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D92CDC50()
{
  result = qword_1ECAFC620;
  if (!qword_1ECAFC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC620);
  }

  return result;
}

uint64_t sub_1D92CDCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92CDD08(uint64_t a1, uint64_t a2)
{
  v30 = sub_1D9326814();
  v4 = *(v30 - 8);
  v5 = MEMORY[0x1EEE9AC00](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC658, &qword_1D932D100);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_1D92CDCA4(a1, &v29 - v18);
  sub_1D92CDCA4(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D92CDCA4(v19, v13);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_10;
      }

      v22 = v30;
      (*(v4 + 32))(v7, &v19[v20], v30);
      v23 = sub_1D93267F4();
      v24 = *(v4 + 8);
      v24(v7, v22);
      v25 = v13;
      v26 = v22;
    }

    else
    {
      sub_1D92CDCA4(v19, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        v13 = v15;
LABEL_10:
        (*(v4 + 8))(v13, v30);
LABEL_13:
        sub_1D92CE050(v19);
        v23 = 0;
        return v23 & 1;
      }

      v27 = v30;
      (*(v4 + 32))(v9, &v19[v20], v30);
      v23 = sub_1D93267F4();
      v24 = *(v4 + 8);
      v24(v9, v27);
      v25 = v15;
      v26 = v27;
    }

    v24(v25, v26);
    sub_1D92CE0B8(v19);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_1D92CE0B8(v19);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1D92CE050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC658, &qword_1D932D100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92CE0B8(uint64_t a1)
{
  v2 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D92CE114()
{
  result = qword_1ECAFC670;
  if (!qword_1ECAFC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteWidgetLaunchRequest.LaunchType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteWidgetLaunchRequest.LaunchType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlInstanceFactory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ControlInstanceFactory(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RemoteWidgetLaunchRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteWidgetLaunchRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D92CE54C()
{
  result = qword_1ECAFC680;
  if (!qword_1ECAFC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC680);
  }

  return result;
}

unint64_t sub_1D92CE5A4()
{
  result = qword_1ECAFC688;
  if (!qword_1ECAFC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC688);
  }

  return result;
}

unint64_t sub_1D92CE5FC()
{
  result = qword_1ECAFC690;
  if (!qword_1ECAFC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC690);
  }

  return result;
}

unint64_t sub_1D92CE654()
{
  result = qword_1ECAFC698;
  if (!qword_1ECAFC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC698);
  }

  return result;
}

unint64_t sub_1D92CE6AC()
{
  result = qword_1ECAFC6A0;
  if (!qword_1ECAFC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6A0);
  }

  return result;
}

unint64_t sub_1D92CE704()
{
  result = qword_1ECAFC6A8;
  if (!qword_1ECAFC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6A8);
  }

  return result;
}

unint64_t sub_1D92CE75C()
{
  result = qword_1ECAFC6B0;
  if (!qword_1ECAFC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6B0);
  }

  return result;
}

unint64_t sub_1D92CE7B4()
{
  result = qword_1ECAFC6B8;
  if (!qword_1ECAFC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6B8);
  }

  return result;
}

unint64_t sub_1D92CE80C()
{
  result = qword_1ECAFC6C0;
  if (!qword_1ECAFC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6C0);
  }

  return result;
}

unint64_t sub_1D92CE864()
{
  result = qword_1ECAFC6C8;
  if (!qword_1ECAFC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6C8);
  }

  return result;
}

unint64_t sub_1D92CE8BC()
{
  result = qword_1ECAFC6D0;
  if (!qword_1ECAFC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6D0);
  }

  return result;
}

unint64_t sub_1D92CE914()
{
  result = qword_1ECAFC6D8;
  if (!qword_1ECAFC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6D8);
  }

  return result;
}

unint64_t sub_1D92CE96C()
{
  result = qword_1ECAFC6E0;
  if (!qword_1ECAFC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6E0);
  }

  return result;
}

unint64_t sub_1D92CE9C4()
{
  result = qword_1ECAFC6E8;
  if (!qword_1ECAFC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6E8);
  }

  return result;
}

unint64_t sub_1D92CEA1C()
{
  result = qword_1ECAFC6F0;
  if (!qword_1ECAFC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6F0);
  }

  return result;
}

unint64_t sub_1D92CEA74()
{
  result = qword_1ECAFC6F8;
  if (!qword_1ECAFC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6F8);
  }

  return result;
}

uint64_t sub_1D92CEAC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D9328654() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C7469746E65 && a2 == 0xEB000000004C5255 || (sub_1D9328654() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000 || (sub_1D9328654() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9328654();

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

uint64_t WidgetIdentity.hostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetIdentity(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WidgetIdentity(uint64_t a1)
{
  result = qword_1ECAFC730;
  if (!qword_1ECAFC730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetIdentity.hostID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetIdentity(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetIdentity.configurationID.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetIdentity(0) + 28));

  return v1;
}

uint64_t WidgetIdentity.configurationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetIdentity(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetIdentity.contentType.setter(uint64_t a1)
{
  result = type metadata accessor for WidgetIdentity(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t WidgetIdentity.entryKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC708, &qword_1D932D748);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(type metadata accessor for WidgetIdentity(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, v0 + v6, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  v9 = v4;
  v10 = v5;
  return sub_1D9327724();
}

uint64_t WidgetIdentity.init(widget:metrics:hostID:configurationID:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for WidgetIdentity(0);
  v15 = &a7[v14[7]];
  *a7 = a1;
  *(a7 + 1) = a2;
  v16 = v14[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  result = (*(*(v17 - 8) + 32))(&a7[v16], a3, v17);
  *v15 = a4;
  *(v15 + 1) = a5;
  *&a7[v14[8]] = a6;
  return result;
}

uint64_t WidgetIdentity.init(widget:metrics:hostID:configurationID:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC710, &qword_1D932D750);
  MEMORY[0x1EEE9AC00](v11 - 8);

  v12 = type metadata accessor for WidgetIdentity(0);
  v13 = (a7 + *(v12 + 28));
  sub_1D9326A74();
  result = sub_1D9326B14();
  *a7 = a1;
  a7[1] = a2;
  *v13 = 0;
  v13[1] = 0;
  *(a7 + *(v12 + 32)) = a6;
  return result;
}

uint64_t WidgetIdentity.description.getter()
{
  v1 = v0;
  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD000000000000018, 0x80000001D9336460);
  v2 = type metadata accessor for WidgetIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC718, &qword_1ECAFC700, &qword_1D932D740, MEMORY[0x1E6994160]);
  v3 = sub_1D9328614();
  MEMORY[0x1DA72E570](v3);

  MEMORY[0x1DA72E570](0xD000000000000011, 0x80000001D9336480);
  v4 = (v0 + *(v2 + 28));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1DA72E570](v5, v6);

  MEMORY[0x1DA72E570](0x6E65746E6F63202CLL, 0xEE003D6570795474);
  v7 = NSStringFromCHSWidgetContentType();
  v8 = sub_1D9327F84();
  v10 = v9;

  MEMORY[0x1DA72E570](v8, v10);

  MEMORY[0x1DA72E570](0x746567646977202CLL, 0xE90000000000003DLL);
  v11 = [*v1 description];
  v12 = sub_1D9327F84();
  v14 = v13;

  MEMORY[0x1DA72E570](v12, v14);

  MEMORY[0x1DA72E570](0x63697274656D202CLL, 0xEA00000000003D73);
  v15 = [v1[1] description];
  v16 = sub_1D9327F84();
  v18 = v17;

  MEMORY[0x1DA72E570](v16, v18);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0;
}

uint64_t WidgetIdentity.hash(into:)(uint64_t a1)
{
  sub_1D9328324();
  sub_1D9328324();
  v2 = type metadata accessor for WidgetIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740, MEMORY[0x1E6994140]);
  sub_1D9327F24();
  if (*(v1 + *(v2 + 28) + 8))
  {
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  return MEMORY[0x1DA72ECE0](*(v1 + *(v2 + 32)));
}

uint64_t WidgetIdentity.hashValue.getter()
{
  sub_1D9328724();
  sub_1D9328324();
  sub_1D9328324();
  v1 = type metadata accessor for WidgetIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740, MEMORY[0x1E6994140]);
  sub_1D9327F24();
  if (*(v0 + *(v1 + 28) + 8))
  {
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  MEMORY[0x1DA72ECE0](*(v0 + *(v1 + 32)));
  return sub_1D9328764();
}

uint64_t sub_1D92CFC64(uint64_t a1)
{
  sub_1D9328724();
  sub_1D9328324();
  sub_1D9328324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740, MEMORY[0x1E6994140]);
  sub_1D9327F24();
  if (*(v1 + *(a1 + 28) + 8))
  {
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  MEMORY[0x1DA72ECE0](*(v1 + *(a1 + 32)));
  return sub_1D9328764();
}

uint64_t sub_1D92CFD7C(uint64_t a1, uint64_t a2)
{
  sub_1D9328324();
  sub_1D9328324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740, MEMORY[0x1E6994140]);
  sub_1D9327F24();
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  return MEMORY[0x1DA72ECE0](*(v2 + *(a2 + 32)));
}

uint64_t sub_1D92CFE80(uint64_t a1, uint64_t a2)
{
  sub_1D9328724();
  sub_1D9328324();
  sub_1D9328324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740, MEMORY[0x1E6994140]);
  sub_1D9327F24();
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  MEMORY[0x1DA72ECE0](*(v2 + *(a2 + 32)));
  return sub_1D9328764();
}

BOOL _s16ChronoUIServices14WidgetIdentityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_1D9296448(0, &qword_1ECAFC678, 0x1E69E58C0);
  if ((sub_1D9328314() & 1) == 0 || (sub_1D9328314() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC770, &qword_1ECAFC700, &qword_1D932D740, MEMORY[0x1E6994150]);
  sub_1D9327FF4();
  sub_1D9327FF4();
  if (v14 == v12 && v15 == v13)
  {
  }

  else
  {
    v5 = sub_1D9328654();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v4 + 28);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (v10 && (*v7 == *v9 && v8 == v10 || (sub_1D9328654() & 1) != 0))
    {
      return *(a1 + *(v4 + 32)) == *(a2 + *(v4 + 32));
    }
  }

  else if (!v10)
  {
    return *(a1 + *(v4 + 32)) == *(a2 + *(v4 + 32));
  }

  return 0;
}

unint64_t sub_1D92D0158()
{
  result = qword_1ECAFC728;
  if (!qword_1ECAFC728)
  {
    type metadata accessor for WidgetIdentity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC728);
  }

  return result;
}

void sub_1D92D01D8(uint64_t a1)
{
  sub_1D9296448(319, &qword_1EDE3B220, 0x1E6994370);
  if (v1 <= 0x3F)
  {
    sub_1D9296448(319, &qword_1ECAFC740, 0x1E69943F0);
    if (v2 <= 0x3F)
    {
      sub_1D92D02C4(319);
      if (v3 <= 0x3F)
      {
        sub_1D92D040C();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CHSWidgetContentType(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D92D02C4(uint64_t a1)
{
  if (!qword_1ECAFC748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC710, &qword_1D932D750);
    sub_1D9290D60(&qword_1ECAFC750, &qword_1ECAFC710, &qword_1D932D750, MEMORY[0x1E69940B0]);
    sub_1D9290D60(&qword_1ECAFC758, &qword_1ECAFC710, &qword_1D932D750, MEMORY[0x1E69940D8]);
    sub_1D9290D60(&qword_1ECAFC760, &qword_1ECAFC710, &qword_1D932D750, MEMORY[0x1E69940B8]);
    sub_1D9290D60(&qword_1ECAFC768, &qword_1ECAFC710, &qword_1D932D750, MEMORY[0x1E69940C0]);
    v1 = sub_1D9326B34();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAFC748);
    }
  }
}

void sub_1D92D040C()
{
  if (!qword_1EDE3DA78)
  {
    v0 = sub_1D9328374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3DA78);
    }
  }
}

uint64_t sub_1D92D045C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v50 - v3;
  v52 = 538976288;
  v53 = 0xE400000000000000;
  v5 = type metadata accessor for WidgetInstanceConfiguration(0);
  if (*(v0 + v5[13]))
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0;
  }

  if (*(v0 + v5[13]))
  {
    v7 = 0x80000001D9336570;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v6, v7);

  if (*(v0 + v5[12]) == 1)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1D9328444();
    MEMORY[0x1DA72E570](0xD000000000000032, 0x80000001D93360D0);
    MEMORY[0x1DA72E570](1702195828, 0xE400000000000000);
    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v8 = v50;
    v9 = v51;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v8, v9);

  v11 = v52;
  v10 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD00000000000002ALL, 0x80000001D9335FC0);
  sub_1D92D0D30(v0 + v5[6], v4);
  v12 = sub_1D9327F94();
  MEMORY[0x1DA72E570](v12);

  MEMORY[0x1DA72E570](0x7265646E6572202CLL, 0xEF3D656D65686353);
  v13 = [*(v0 + v5[15]) description];
  v14 = sub_1D9327F84();
  v16 = v15;

  MEMORY[0x1DA72E570](v14, v16);

  MEMORY[0x1DA72E570](0xD000000000000015, 0x80000001D9335FF0);
  if (*v1)
  {
    v17 = [*v1 description];
    v18 = sub_1D9327F84();
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x1DA72E570](v18, v20);

  MEMORY[0x1DA72E570](44, 0xE100000000000000);
  v21 = *(v1 + v5[9]);
  v22 = 0xE000000000000000;
  if (v21)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1D9328444();

    v50 = 0x61726150746E6974;
    v51 = 0xEF3D73726574656DLL;
    v23 = [v21 description];
    v24 = sub_1D9327F84();
    v26 = v25;

    MEMORY[0x1DA72E570](v24, v26);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v27 = v50;
    v22 = v51;
  }

  else
  {
    v27 = 0;
  }

  MEMORY[0x1DA72E570](v27, v22);

  v28 = *(v1 + v5[10]);
  if (v28)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1D9328444();

    v50 = 0xD000000000000015;
    v51 = 0x80000001D93360B0;
    v29 = [v28 description];
    v30 = sub_1D9327F84();
    v32 = v31;

    MEMORY[0x1DA72E570](v30, v32);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v33 = v50;
    v34 = v51;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v33, v34);

  if (*(v1 + v5[18]))
  {
    v35 = 0xD000000000000016;
  }

  else
  {
    v35 = 0;
  }

  if (*(v1 + v5[18]))
  {
    v36 = 0x80000001D9336550;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v35, v36);

  if (*(v1 + v5[17]))
  {
    v37 = 0xD00000000000001ALL;
  }

  else
  {
    v37 = 0;
  }

  if (*(v1 + v5[17]))
  {
    v38 = 0x80000001D9336530;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v37, v38);

  if (*(v1 + v5[16]))
  {
    v39 = 0xD00000000000001CLL;
  }

  else
  {
    v39 = 0;
  }

  if (*(v1 + v5[16]))
  {
    v40 = 0x80000001D9336510;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v39, v40);

  if (*(v1 + v5[11]))
  {
    v41 = 0xD000000000000017;
  }

  else
  {
    v41 = 0;
  }

  if (*(v1 + v5[11]))
  {
    v42 = 0x80000001D93364F0;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v41, v42);

  if (*(v1 + 8))
  {
    v43 = 0xD000000000000023;
  }

  else
  {
    v43 = 0;
  }

  if (*(v1 + 8))
  {
    v44 = 0x80000001D93364C0;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v43, v44);

  MEMORY[0x1DA72E570](v11, v10);

  MEMORY[0x1DA72E570](0x69786F727022202CLL, 0xED00003D7974696DLL);
  v45 = NSStringFromCHSWidgetProximity();
  v46 = sub_1D9327F84();
  v48 = v47;

  MEMORY[0x1DA72E570](v46, v48);

  MEMORY[0x1DA72E570](15906, 0xE200000000000000);
  return v52;
}

unint64_t WidgetInstance.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetInstanceConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetIdentity(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1D9328444();

  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001D93364A0;
  (*(a2 + 16))(a1, a2);
  v10 = WidgetIdentity.description.getter();
  MEMORY[0x1DA72E570](v10);

  sub_1D92D0C08(v9, type metadata accessor for WidgetIdentity);
  MEMORY[0x1DA72E570](0x6769666E6F63202CLL, 0xEF3D6E6F74617275);
  (*(a2 + 32))(a1, a2);
  v11 = sub_1D92D045C();
  MEMORY[0x1DA72E570](v11);

  sub_1D92D0C08(v6, type metadata accessor for WidgetInstanceConfiguration);
  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return v13;
}

uint64_t sub_1D92D0C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92D0D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SetControlStateRequest.sessionKey.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SetControlStateRequest.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SetControlStateRequest(0) + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SetControlStateRequest(uint64_t a1)
{
  result = qword_1ECAFC7B8;
  if (!qword_1ECAFC7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SetControlStateRequest.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SetControlStateRequest(0) + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SetControlStateRequest.state.getter()
{
  type metadata accessor for SetControlStateRequest(0);
}

uint64_t SetControlStateRequest.state.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SetControlStateRequest(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SetControlStateRequest.init(sessionKey:state:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for SetControlStateRequest(0);
  *&a4[*(v7 + 24)] = a2;
  v8 = *(v7 + 20);
  v9 = sub_1D9327A94();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a4[v8], a3, v9);
}

unint64_t SetControlStateRequest.description.getter()
{
  sub_1D9328444();

  sub_1D9326AD4();
  sub_1D92D1AF0(&qword_1ECAFC778, MEMORY[0x1E69940F8], MEMORY[0x1E6994110]);
  v0 = sub_1D9328614();
  MEMORY[0x1DA72E570](v0);

  MEMORY[0x1DA72E570](0x3D6574617473202CLL, 0xE800000000000000);
  type metadata accessor for SetControlStateRequest(0);
  sub_1D9326A34();
  sub_1D92D1AF0(&qword_1ECAFC780, MEMORY[0x1E6994010], MEMORY[0x1E6994038]);
  v1 = sub_1D9328614();
  MEMORY[0x1DA72E570](v1);

  MEMORY[0x1DA72E570](0x6F69746361202C3ELL, 0xEA00000000003D6ELL);
  sub_1D9327A94();
  sub_1D92D1AF0(&qword_1ECAFC788, MEMORY[0x1E69858A8], MEMORY[0x1E69858C8]);
  v2 = sub_1D9328614();
  MEMORY[0x1DA72E570](v2);

  return 0xD000000000000024;
}

uint64_t sub_1D92D12C4()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B6E6F6973736573;
  }
}

uint64_t sub_1D92D131C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D92D1F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D92D1350(uint64_t a1)
{
  v2 = sub_1D92D1650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92D138C(uint64_t a1)
{
  v2 = sub_1D92D1650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetControlStateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC790, &qword_1D932D860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92D1650();
  sub_1D9328784();
  v12 = *v3;
  HIBYTE(v11) = 0;
  sub_1D9326AD4();
  sub_1D92D1AF0(&qword_1EDE3BAD8, MEMORY[0x1E69940F8], MEMORY[0x1E6994100]);
  sub_1D9328604();
  if (!v2)
  {
    v9 = type metadata accessor for SetControlStateRequest(0);
    LOBYTE(v12) = 1;
    sub_1D9327A94();
    sub_1D92D1AF0(&qword_1EDE3B270, MEMORY[0x1E69858A8], MEMORY[0x1E69858B0]);
    sub_1D9328604();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    sub_1D9326A34();
    sub_1D92D1AF0(&qword_1ECAFC7A0, MEMORY[0x1E6994010], MEMORY[0x1E6994018]);
    sub_1D9328604();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D92D1650()
{
  result = qword_1ECAFC798;
  if (!qword_1ECAFC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC798);
  }

  return result;
}

uint64_t SetControlStateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D9327A94();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC7A8, &qword_1D932D868);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SetControlStateRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D92D1650();
  sub_1D9328774();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  v14 = v24;
  v15 = v12;
  sub_1D9326AD4();
  v27 = 0;
  sub_1D92D1AF0(&qword_1EDE3BAD0, MEMORY[0x1E69940F8], MEMORY[0x1E6994108]);
  v16 = v25;
  sub_1D93285C4();
  v20 = v28;
  v21 = v15;
  *v15 = v28;
  LOBYTE(v28) = 1;
  sub_1D92D1AF0(&qword_1EDE3B268, MEMORY[0x1E69858A8], MEMORY[0x1E69858C0]);
  sub_1D93285C4();
  (*(v23 + 32))(&v21[*(v10 + 20)], v6, v4);
  sub_1D9326A34();
  v27 = 2;
  sub_1D92D1AF0(&qword_1ECAFC7B0, MEMORY[0x1E6994010], MEMORY[0x1E6994030]);
  sub_1D93285C4();
  (*(v14 + 8))(v9, v16);
  v18 = v21;
  v17 = v22;
  *&v21[*(v10 + 24)] = v28;
  sub_1D92D1B38(v18, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return sub_1D92D1B9C(v18);
}

uint64_t sub_1D92D1AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D92D1B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetControlStateRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92D1B9C(uint64_t a1)
{
  v2 = type metadata accessor for SetControlStateRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92D1C54(uint64_t a1)
{
  result = sub_1D9326AD4();
  if (v2 <= 0x3F)
  {
    result = sub_1D9327A94();
    if (v3 <= 0x3F)
    {
      result = sub_1D9326A34();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetControlStateRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SetControlStateRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D92D1E44()
{
  result = qword_1ECAFC7C8;
  if (!qword_1ECAFC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC7C8);
  }

  return result;
}

unint64_t sub_1D92D1E9C()
{
  result = qword_1ECAFC7D0;
  if (!qword_1ECAFC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC7D0);
  }

  return result;
}

unint64_t sub_1D92D1EF4()
{
  result = qword_1ECAFC7D8;
  if (!qword_1ECAFC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC7D8);
  }

  return result;
}

uint64_t sub_1D92D1F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B6E6F6973736573 && a2 == 0xEA00000000007965;
  if (v4 || (sub_1D9328654() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1D9328654() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9328654();

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

void *CHUISControlIconView.font.getter()
{
  v1 = OBJC_IVAR___CHUISControlIconView_font;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CHUISControlIconView.font.setter(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC7E8, &qword_1D932DA50);
  MEMORY[0x1EEE9AC00](v7);
  v8 = OBJC_IVAR___CHUISControlIconView_font;
  swift_beginAccess();
  v9 = *&v2[v8];
  *&v2[v8] = a1;
  v10 = a1;

  v11 = *&v2[OBJC_IVAR___CHUISControlIconView__hostingView];
  v12 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(&v2[v12], v16);
  v13 = v11;
  swift_dynamicCast();
  v14 = [v2 font];
  sub_1D92D2CE0(v14);

  sub_1D92D2EB0(v6);
  sub_1D92D2F0C();
  v16[0] = sub_1D93274F4();
  sub_1D9326DE4();
}

uint64_t CHUISControlIconView.style.getter()
{
  v1 = type metadata accessor for ControlIconView(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v4 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(v0 + v4, v8);
  swift_dynamicCast();
  v5 = *&v3[*(v1 + 20)];
  sub_1D92D2EB0(v3);
  return v5;
}

uint64_t CHUISControlIconView.style.setter(uint64_t a1)
{
  v3 = type metadata accessor for ControlIconView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(v1 + v6, v9);
  swift_dynamicCast();
  *&v5[*(v3 + 20)] = a1;
  return sub_1D92D2694(v5);
}

uint64_t sub_1D92D2694(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC7E8, &qword_1D932DA50);
  MEMORY[0x1EEE9AC00](v7);
  v16 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_1D92D30E0(a1, boxed_opaque_existential_0);
  v9 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v2[v9]);
  sub_1D92C6364(&v15, &v2[v9]);
  swift_endAccess();
  v10 = *&v2[OBJC_IVAR___CHUISControlIconView__hostingView];
  sub_1D92936FC(&v2[v9], &v15);
  v11 = v10;
  swift_dynamicCast();
  v12 = [v2 font];
  sub_1D92D2CE0(v12);

  sub_1D92D2EB0(v6);
  sub_1D92D2F0C();
  *&v15 = sub_1D93274F4();
  sub_1D9326DE4();

  return sub_1D92D2EB0(a1);
}

void __swiftcall CHUISControlIconView.init(frame:)(CHUISControlIconView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

char *CHUISControlIconView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ControlIconView(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  *&v5[OBJC_IVAR___CHUISControlIconView_font] = 0;
  sub_1D92F06E8(&v24 - v14);
  v16 = &v5[OBJC_IVAR___CHUISControlIconView__controlIconView];
  v16[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  sub_1D92D30E0(v15, boxed_opaque_existential_0);
  sub_1D92D30E0(v15, v13);
  sub_1D92D3024();
  v26 = sub_1D93274F4();
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC810, &qword_1D932DA68));
  v19 = sub_1D9326DD4();
  [v19 setBackgroundColor_];
  sub_1D9326DF4();
  *&v5[OBJC_IVAR___CHUISControlIconView__hostingView] = v19;
  v25.receiver = v5;
  v25.super_class = CHUISControlIconView;
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR___CHUISControlIconView__hostingView];
  v22 = v20;
  [v22 addSubview_];
  [v22 setBackgroundColor_];

  sub_1D92D2EB0(v15);
  return v22;
}

void CHUISControlIconView.init(coder:)()
{
  *(v0 + OBJC_IVAR___CHUISControlIconView_font) = 0;
  sub_1D9328534();
  __break(1u);
}

Swift::Void __swiftcall CHUISControlIconView.layoutSubviews()()
{
  v2.super_class = CHUISControlIconView;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___CHUISControlIconView__hostingView];
  [v0 bounds];
  [v1 setFrame_];
}

uint64_t sub_1D92D2CE0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC820, &qword_1D932DA70);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC800, &qword_1D932DA58);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  if (a1)
  {
    v10 = a1;
    v11 = sub_1D9327294();
    KeyPath = swift_getKeyPath();
    sub_1D92D30E0(v2, v9);
    v13 = &v9[*(v7 + 36)];
    *v13 = KeyPath;
    v13[1] = v11;
    sub_1D92D3234(v9, v6);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ControlIconView(0);
    sub_1D92D2F98();
    sub_1D92D3024();
    sub_1D9327104();
    return sub_1D92D32A4(v9);
  }

  else
  {
    sub_1D92D30E0(v2, v6);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ControlIconView(0);
    sub_1D92D2F98();
    sub_1D92D3024();
    return sub_1D9327104();
  }
}

uint64_t sub_1D92D2EB0(uint64_t a1)
{
  v2 = type metadata accessor for ControlIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D92D2F0C()
{
  result = qword_1EDE3BDF0;
  if (!qword_1EDE3BDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC7E8, &qword_1D932DA50);
    sub_1D92D2F98();
    sub_1D92D3024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDF0);
  }

  return result;
}

unint64_t sub_1D92D2F98()
{
  result = qword_1EDE3BEE8;
  if (!qword_1EDE3BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC800, &qword_1D932DA58);
    sub_1D92D3024();
    sub_1D92D307C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEE8);
  }

  return result;
}

unint64_t sub_1D92D3024()
{
  result = qword_1EDE3D458[0];
  if (!qword_1EDE3D458[0])
  {
    type metadata accessor for ControlIconView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3D458);
  }

  return result;
}

unint64_t sub_1D92D307C()
{
  result = qword_1EDE3BD28;
  if (!qword_1EDE3BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC808, &qword_1D932DA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BD28);
  }

  return result;
}

uint64_t sub_1D92D30E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CGSize __swiftcall CHUISControlIconView.sizeThatFits(_:)(CGSize a1)
{
  [*(v1 + OBJC_IVAR___CHUISControlIconView__hostingView) sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

unint64_t type metadata accessor for CHUISControlIconView()
{
  result = qword_1ECAFC818;
  if (!qword_1ECAFC818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFC818);
  }

  return result;
}

uint64_t sub_1D92D3234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC800, &qword_1D932DA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92D32A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC800, &qword_1D932DA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92D3334()
{
  v0 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v0, qword_1EDE400B8);
  __swift_project_value_buffer(v0, qword_1EDE400B8);
  return sub_1D9326BD4();
}

id sub_1D92D33D0()
{

  v0 = sub_1D9326AC4();

  v1 = [v0 control];

  return v1;
}

id sub_1D92D3434()
{

  v0 = sub_1D9326AC4();

  v1 = [v0 contentType];

  return v1;
}

void sub_1D92D3490(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
  sub_1D92D34F0(v4, v6);
}

void sub_1D92D34F0(void *a1, uint64_t a2)
{
  v3 = v2;
  BSDispatchQueueAssertMain();
  if ((*(v3 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    swift_beginAccess();
    v5 = *(v3 + 32);
    if (a1)
    {
      if (v5)
      {
        sub_1D92DA0B0();
        v6 = v5;
        v7 = a1;
        v8 = sub_1D9328314();

        if (v8)
        {
          return;
        }
      }
    }

    else if (!v5)
    {
      return;
    }

    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v9 = sub_1D9326BE4();
    __swift_project_value_buffer(v9, qword_1EDE400B8);
    swift_retain_n();
    v10 = sub_1D9326BC4();
    v11 = sub_1D9328234();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446466;

      v14 = sub_1D9326AA4();
      v16 = v15;

      v17 = sub_1D9293524(v14, v16, &v19);

      *(v12 + 4) = v17;
      *(v12 + 12) = 1026;
      v18 = *(v3 + 32);

      *(v12 + 14) = v18 != 0;

      _os_log_impl(&dword_1D928E000, v10, v11, "[%{public}s] Descriptor changed - has descriptor? %{BOOL,public}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72F920](v13, -1, -1);
      MEMORY[0x1DA72F920](v12, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10, MEMORY[0x1E695BF80]);
    sub_1D9326C54();
  }
}

void *sub_1D92D3778()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ControlSession.contentUpdateStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_contentUpdateStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC840, &qword_1D932DAB8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D92D3840()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA90, &unk_1ECAFC830, &qword_1D932CC10, MEMORY[0x1E695BF88]);
    v2 = sub_1D9326C64();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1D92D3934(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1D92D3840();
  return sub_1D92D397C;
}

double sub_1D92D3994@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  swift_beginAccess();
  sub_1D92973DC(v1 + v3, v13, &qword_1ECAFC850, &unk_1D932DAC0);
  v4 = v14;
  if (v14)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v6 + 16))(v8);
    sub_1D92933A0(v13, &qword_1ECAFC850, &unk_1D932DAC0);
    v9 = *(v6 + 8);

    v9(v8, v4);
    swift_beginAccess();

    v10 = sub_1D93276C4();

    if (v10)
    {
      sub_1D93277D4();

      return result;
    }
  }

  else
  {
    sub_1D92933A0(v13, &qword_1ECAFC850, &unk_1D932DAC0);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D92D3B80(uint64_t a1)
{
  v2 = v1;
  sub_1D92973DC(a1, &v21, &qword_1ECAFC858, &unk_1D932FC60);
  if (v22)
  {
    sub_1D92A87A4(&v21, v23);
    v4 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
    swift_beginAccess();
    sub_1D92973DC(v2 + v4, &v21, &qword_1ECAFC850, &unk_1D932DAC0);
    v5 = v22;
    if (v22)
    {
      v6 = __swift_project_boxed_opaque_existential_1(&v21, v22);
      v7 = *(v5 - 8);
      MEMORY[0x1EEE9AC00](v6);
      v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v7 + 16))(v9);
      sub_1D92933A0(&v21, &qword_1ECAFC850, &unk_1D932DAC0);
      v10 = *(v7 + 8);

      v10(v9, v5);
      swift_beginAccess();

      v11 = sub_1D93276C4();

      sub_1D929CF00(v23, &v21);
      if (v11)
      {

        sub_1D93277C4();
      }
    }

    else
    {
      sub_1D92933A0(&v21, &qword_1ECAFC850, &unk_1D932DAC0);
      sub_1D929CF00(v23, &v21);
    }

    sub_1D9327804();
    sub_1D93277F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    sub_1D92933A0(&v21, &qword_1ECAFC858, &unk_1D932FC60);
  }

  v12 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  swift_beginAccess();
  sub_1D92973DC(v2 + v12, v23, &qword_1ECAFC850, &unk_1D932DAC0);
  v13 = v24;
  if (v24)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v15 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v14);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v15 + 16))(v17);
    sub_1D92933A0(v23, &qword_1ECAFC850, &unk_1D932DAC0);
    v18 = *(v15 + 8);

    v18(v17, v13);
    swift_beginAccess();

    sub_1D93276D4();

    return sub_1D92933A0(a1, &qword_1ECAFC858, &unk_1D932FC60);
  }

  else
  {
    sub_1D92933A0(a1, &qword_1ECAFC858, &unk_1D932FC60);

    return sub_1D92933A0(v23, &qword_1ECAFC850, &unk_1D932DAC0);
  }
}

void (*sub_1D92D3FC4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1D92D3994(v3);
  return sub_1D92D403C;
}

void sub_1D92D403C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1D92973DC(*a1, v2 + 40, &qword_1ECAFC858, &unk_1D932FC60);
    sub_1D92D3B80(v2 + 40);
    sub_1D92933A0(v2, &qword_1ECAFC858, &unk_1D932FC60);
  }

  else
  {
    sub_1D92D3B80(*a1);
  }

  free(v2);
}

uint64_t sub_1D92D40CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_1D92D4144(char *a1, void *a2)
{
  v14 = a1[1];
  v15 = *a1;
  v13 = *(a1 + 1);
  v12 = a1[16];
  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  v10 = *(v4 + 24);
  v9 = *(v4 + 32);
  *v4 = v15;
  *(v4 + 1) = v14;
  *(v4 + 8) = v13;
  *(v4 + 16) = v12;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  v16[0] = v5;
  v16[1] = v6;
  v17 = v7;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  sub_1D92D422C(v16);
}

uint64_t sub_1D92D422C(char *a1)
{
  v2 = v1;
  v4 = sub_1D9327874();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45[-v8];
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 1);
  v13 = a1[16];
  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  result = BSDispatchQueueAssertMain();
  v17 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated;
  if ((*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    v54 = v10;
    v55 = v11;
    v56 = v12;
    v57 = v13;
    v58 = v15;
    v59 = v14;
    v18 = v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
    swift_beginAccess();
    v19 = *(v18 + 1);
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);
    LOBYTE(v50[0]) = *v18;
    BYTE1(v50[0]) = v19;
    v50[1] = v20;
    v51 = v21;
    v52 = v22;
    v53 = v23;
    v24 = _s16ChronoUIServices28ControlInstanceConfigurationV2eeoiySbAC_ACtFZ_0(&v54, v50);

    if ((v24 & 1) == 0)
    {
      if (qword_1EDE3BF70 != -1)
      {
        swift_once();
      }

      v25 = sub_1D9326BE4();
      __swift_project_value_buffer(v25, qword_1EDE400B8);

      v26 = sub_1D9326BC4();
      v27 = sub_1D9328234();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v50[0] = v47;
        *v28 = 136446466;
        v46 = v27;

        v29 = sub_1D9326AA4();
        v31 = v30;

        v32 = sub_1D9293524(v29, v31, v50);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        v33 = *(v18 + 1);
        v34 = *(v18 + 8);
        v35 = *(v18 + 16);
        v37 = *(v18 + 24);
        v36 = *(v18 + 32);
        v54 = *v18;
        v55 = v33;
        v56 = v34;
        v57 = v35;
        v58 = v37;
        v59 = v36;

        v38 = ControlInstanceConfiguration.description.getter();
        v40 = v39;

        v41 = sub_1D9293524(v38, v40, v50);

        *(v28 + 14) = v41;
        _os_log_impl(&dword_1D928E000, v26, v46, "[%{public}s] Configuration did change: %{public}s", v28, 0x16u);
        v42 = v47;
        swift_arrayDestroy();
        MEMORY[0x1DA72F920](v42, -1, -1);
        MEMORY[0x1DA72F920](v28, -1, -1);
      }

      result = BSDispatchQueueAssertMain();
      if ((*(v2 + v17) & 1) == 0)
      {
        sub_1D9327864();
        sub_1D9327834();
        sub_1D9327854();
        sub_1D9327844();
        v44 = v48;
        v43 = v49;
        (*(v48 + 16))(v7, v9, v49);
        sub_1D92D4F98(v7);
        return (*(v44 + 8))(v9, v43);
      }
    }
  }

  return result;
}

uint64_t sub_1D92D4620@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_1D92D4694(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 8);
  v12 = *(v8 + 16);
  v13 = *(v8 + 24);
  v14 = *(v8 + 32);
  *v8 = v2;
  *(v8 + 1) = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  v16[0] = v9;
  v16[1] = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_1D92D422C(v16);
}

void (*sub_1D92D4758(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 1);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v11 = *(v6 + 24);
  v10 = *(v6 + 32);
  *v4 = *v6;
  *(v4 + 1) = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v11;
  *(v4 + 32) = v10;

  return sub_1D92D4818;
}

void sub_1D92D4818(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8) + *(*a1 + 9);
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = *(*a1 + 1);
  v7 = (*a1)[16];
  v9 = *(*a1 + 3);
  v8 = *(*a1 + 4);
  v10 = *v3;
  v11 = *(v3 + 1);
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v15 = *(v3 + 24);
  v14 = *(v3 + 32);
  *v3 = v4;
  *(v3 + 1) = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  *(v3 + 24) = v9;
  *(v3 + 32) = v8;
  if (a2)
  {

    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v15;
    v21 = v14;
    sub_1D92D422C(&v16);
  }

  else
  {
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v15;
    v21 = v14;
    sub_1D92D422C(&v16);
  }

  free(v2);
}

void sub_1D92D490C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9326944();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
    swift_beginAccess();
    if (*(v2 + v11) != a1)
    {
      if (qword_1EDE3BF70 != -1)
      {
        swift_once();
      }

      v12 = sub_1D9326BE4();
      __swift_project_value_buffer(v12, qword_1EDE400B8);

      v13 = sub_1D9326BC4();
      v14 = sub_1D9328234();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v52 = v5;
        v16 = v15;
        v51 = swift_slowAlloc();
        v53[0] = v51;
        *v16 = 136446466;

        v17 = sub_1D9326AA4();
        LODWORD(v50) = v14;
        v18 = v11;
        v19 = v8;
        v20 = v17;
        v22 = v21;

        v23 = v20;
        v8 = v19;
        v11 = v18;
        v24 = sub_1D9293524(v23, v22, v53);

        *(v16 + 4) = v24;
        *(v16 + 12) = 2082;
        v25 = sub_1D93282E4();
        v27 = sub_1D9293524(v25, v26, v53);

        *(v16 + 14) = v27;
        _os_log_impl(&dword_1D928E000, v13, v50, "[%{public}s] Visibility did change: %{public}s", v16, 0x16u);
        v28 = v51;
        swift_arrayDestroy();
        MEMORY[0x1DA72F920](v28, -1, -1);
        v29 = v16;
        v5 = v52;
        MEMORY[0x1DA72F920](v29, -1, -1);
      }

      if (*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) == 1)
      {
        v52 = v10;
        v48 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client;
        v49 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started;
        sub_1D929CF00(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v53);
        v51 = v8;
        v30 = v54;
        v31 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        v32 = *(v2 + v11);
        v50 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey;
        v33 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
        v34 = v5;
        v47 = v11;
        v35 = v4;
        v36 = *(v31 + 48);

        v37 = v31;
        v38 = v51;
        v36(v32, v33, v30, v37);
        v39 = v35;
        v40 = v5;

        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        sub_1D929CF00(v2 + v48, v53);
        v41 = v54;
        v42 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        BSDispatchQueueAssertMain();
        v43 = *(v40 + 13);
        v43(v38, *MEMORY[0x1E6993F90], v39);
        if (*(v2 + v49) == 1 && *(v2 + v47) == 2)
        {
          (*(v34 + 1))(v38, v39);
          v43(v38, *MEMORY[0x1E6993FA0], v39);
        }

        v44 = v52;
        (*(v34 + 4))(v52, v38, v39);
        v45 = *(v2 + v50);
        v46 = *(v42 + 56);

        v46(v44, v45, v41, v42);

        (*(v40 + 1))(v44, v39);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
      }
    }
  }
}

uint64_t sub_1D92D4DAC()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D92D4DF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1D92D490C(v4);
}

void (*sub_1D92D4E48(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1D92D4EDC;
}

void sub_1D92D4EDC(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1D92D490C(v5);

  free(v1);
}

uint64_t sub_1D92D4F3C(uint64_t (*a1)(uint64_t))
{

  v3 = a1(v2);

  return v3;
}

uint64_t sub_1D92D4F98(uint64_t a1)
{
  v3 = sub_1D9327874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) != 1)
  {
    return (*(v4 + 8))(a1, v3);
  }

  sub_1D929CF00(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v15);
  v8 = v16;
  v9 = v17;
  v14 = __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v4 + 16))(v6, v1 + v7, v3);
  v10 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  v11 = *(v9 + 64);

  v11(v6, v10, v8, v9);

  v12 = *(v4 + 8);
  v12(a1, v3);
  v12(v6, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_1D92D5190@<X0>(uint64_t a1@<X8>)
{
  sub_1D92973DC(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__testArchiveService, &v7, &unk_1ECAFC870, qword_1D932DAD8);
  if (v8)
  {
    return sub_1D92A87A4(&v7, a1);
  }

  sub_1D92933A0(&v7, &unk_1ECAFC870, qword_1D932DAD8);

  v4 = sub_1D9326AC4();

  v5 = [v4 contentType];

  if (v5 == 1)
  {
    if (qword_1EDE3CDA8 != -1)
    {
LABEL_12:
      swift_once();
    }
  }

  else
  {
    if (!v5)
    {
      if (qword_1EDE3CDA8 != -1)
      {
        swift_once();
      }

      v6 = qword_1EDE40128 + 16;
      return sub_1D929CF00(v6, a1);
    }

    if (qword_1EDE3CDA8 != -1)
    {
      goto LABEL_12;
    }
  }

  v6 = qword_1EDE40128 + 56;
  return sub_1D929CF00(v6, a1);
}

void *ControlSession.__allocating_init(sessionKey:controlsClient:configuration:keybagStateProvider:)(uint64_t a1, void *a2, char *a3, void *a4)
{
  swift_allocObject();
  v8 = sub_1D92D8EF4(a1, a2, a3, a4);

  return v8;
}

void *ControlSession.init(sessionKey:controlsClient:configuration:keybagStateProvider:)(uint64_t a1, void *a2, char *a3, void *a4)
{
  v4 = sub_1D92D8EF4(a1, a2, a3, a4);

  return v4;
}

void sub_1D92D5384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__descriptorProvider);
  v4 = *(v3 + 72);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  [*(v3 + 80) addObject_];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  v16[4] = sub_1D92DA160;
  v16[5] = v6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D9290DB0;
  v16[3] = &block_descriptor_99;
  v7 = _Block_copy(v16);

  BSDispatchMain();
  _Block_release(v7);
  os_unfair_lock_unlock(*(v4 + 16));

  if (qword_1EDE3BF70 != -1)
  {
    swift_once();
  }

  v8 = sub_1D9326BE4();
  __swift_project_value_buffer(v8, qword_1EDE400B8);

  v9 = sub_1D9326BC4();
  v10 = sub_1D9328234();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    v13 = sub_1D9326AA4();
    v15 = sub_1D9293524(v13, v14, v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D928E000, v9, v10, "[%{public}s] Created", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72F920](v12, -1, -1);
    MEMORY[0x1DA72F920](v11, -1, -1);
  }
}

uint64_t ControlSession.deinit()
{
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) == 1)
  {
    v0 = v1;
    if (qword_1EDE3BF70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = sub_1D9326BE4();
  __swift_project_value_buffer(v2, qword_1EDE400B8);

  v3 = sub_1D9326BC4();
  v4 = sub_1D9328204();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;

    v7 = sub_1D9326AA4();
    v9 = v8;

    v10 = sub_1D9293524(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1D928E000, v3, v4, "[%{public}s] Destroyed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA72F920](v6, -1, -1);
    MEMORY[0x1DA72F920](v5, -1, -1);
  }

  v11 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_contentUpdateStream;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC840, &qword_1D932DAB8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation, &unk_1ECAFC860, &qword_1D932DAD0);

  v13 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers;
  v14 = sub_1D9327874();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__testArchiveService, &unk_1ECAFC870, qword_1D932DAD8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__keybagStateProvider));

  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion, &qword_1ECAFC850, &unk_1D932DAC0);
  return v0;
}

uint64_t ControlSession.__deallocating_deinit()
{
  ControlSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D92D594C()
{
  v1 = v0;
  v2 = sub_1D9326BE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  swift_beginAccess();
  sub_1D92973DC(v0 + v6, v31, &qword_1ECAFC850, &unk_1D932DAC0);
  v7 = v32;
  sub_1D92933A0(v31, &qword_1ECAFC850, &unk_1D932DAC0);
  if (!v7)
  {
    sub_1D92D5190(v27);
    v8 = __swift_project_boxed_opaque_existential_1(v27, v29);

    v9 = sub_1D9326AB4();

    v10 = *v8;
    v11 = *(v10 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
    v12 = *(v11 + 16);

    os_unfair_lock_lock(v12);
    sub_1D930C294(v9, v10, v31);
    os_unfair_lock_unlock(*(v11 + 16));

    swift_beginAccess();
    sub_1D92C3C20(v31, v1 + v6, &qword_1ECAFC850, &unk_1D932DAC0);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  if (qword_1EDE3BF70 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_1EDE400B8);
  (*(v3 + 16))(v5, v13, v2);

  v14 = sub_1D9326AA4();
  v16 = v15;

  sub_1D92973DC(v1 + v6, v31, &qword_1ECAFC850, &unk_1D932DAC0);
  if (v32)
  {
    v17 = *(*__swift_project_boxed_opaque_existential_1(v31, v32) + 24);
    v18 = (v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 1);
    v22 = v18[16];
    v23 = *(v18 + 3);
    v24 = *(v18 + 4);
    LOBYTE(v27[0]) = v19;
    BYTE1(v27[0]) = v20;
    v27[1] = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    sub_1D929CF00(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__keybagStateProvider, v26);
    type metadata accessor for ControlSessionViewModel(0);
    swift_allocObject();

    sub_1D92C9740(v5, v14, v16, v17, v27, v26);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    __break(1u);

    os_unfair_lock_unlock(*(v14 + 16));
    __break(1u);
  }
}

uint64_t sub_1D92D5CC0()
{
  v1 = v0;
  v2 = sub_1D9326944();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - v6;
  v8 = sub_1D9327874();
  v71 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v63 - v15;
  result = BSDispatchQueueAssertMain();
  v18 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated;
  if ((*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) & 1) == 0)
  {
    v64 = v3;
    v69 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started;
    v66 = v8;
    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v19 = sub_1D9326BE4();
    __swift_project_value_buffer(v19, qword_1EDE400B8);

    v20 = sub_1D9326BC4();
    v21 = sub_1D9328234();

    v22 = os_log_type_enabled(v20, v21);
    v68 = v11;
    v67 = v7;
    v65 = v2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v73[0] = v63;
      *v23 = 136446210;

      v24 = v21;
      v25 = sub_1D9326AA4();
      v27 = v26;

      v28 = sub_1D9293524(v25, v27, v73);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1D928E000, v20, v24, "[%{public}s] Subscribing", v23, 0xCu);
      v29 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1DA72F920](v29, -1, -1);
      MEMORY[0x1DA72F920](v23, -1, -1);
    }

    BSDispatchQueueAssertMain();
    v30 = v66;
    if ((*(v1 + v18) & 1) == 0)
    {
      swift_beginAccess();
      sub_1D9327864();
      sub_1D9327834();
      sub_1D9327854();
      sub_1D9327844();
      v31 = v71;
      (*(v71 + 16))(v14, v16, v30);
      sub_1D92D4F98(v14);
      (*(v31 + 8))(v16, v30);
    }

    v32 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
    swift_beginAccess();
    sub_1D92973DC(v1 + v32, v73, &qword_1ECAFC850, &unk_1D932DAC0);
    v33 = v74;
    sub_1D92933A0(v73, &qword_1ECAFC850, &unk_1D932DAC0);
    if (v33)
    {
      v63 = 0;
    }

    else
    {
      sub_1D92D5190(v72);
      v34 = __swift_project_boxed_opaque_existential_1(v72, v72[3]);

      v35 = sub_1D9326AB4();

      v36 = *v34;
      v37 = *(v36 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
      v38 = *(v37 + 16);

      os_unfair_lock_lock(v38);
      sub_1D930C294(v35, v36, v73);
      v63 = 0;
      os_unfair_lock_unlock(*(v37 + 16));

      swift_beginAccess();
      sub_1D92C3C20(v73, v1 + v32, &qword_1ECAFC850, &unk_1D932DAC0);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    v39 = v30;
    sub_1D92973DC(v1 + v32, v73, &qword_1ECAFC850, &unk_1D932DAC0);
    v40 = v74;
    if (v74)
    {
      v41 = __swift_project_boxed_opaque_existential_1(v73, v74);
      v42 = *(v40 - 8);
      MEMORY[0x1EEE9AC00](v41);
      v44 = &v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v44);
      sub_1D92933A0(v73, &qword_1ECAFC850, &unk_1D932DAC0);
      v45 = *(v42 + 8);

      v45(v44, v40);
      swift_beginAccess();

      v46 = sub_1D9327694();

      v72[0] = v46;
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1D92D9534;
      *(v48 + 24) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
      sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20, MEMORY[0x1E695BED8]);
      sub_1D9326C94();

      swift_beginAccess();
      sub_1D9326C04();
      swift_endAccess();
    }

    else
    {
      sub_1D92933A0(v73, &qword_1ECAFC850, &unk_1D932DAC0);
    }

    v49 = v68;

    BSDispatchQueueAssertMain();
    v50 = v64;
    v51 = *(v64 + 104);
    v52 = v70;
    v53 = v65;
    v51(v70, *MEMORY[0x1E6993F90], v65);
    if (*(v1 + v69) == 1)
    {
      v54 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
      swift_beginAccess();
      v55 = *(v1 + v54);
      v49 = v68;
      if (v55 == 2)
      {
        (*(v50 + 8))(v52, v53);
        v51(v52, *MEMORY[0x1E6993FA0], v53);
      }
    }

    (*(v50 + 32))(v67, v52, v53);
    swift_beginAccess();
    v56 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers;
    swift_beginAccess();
    v57 = v39;
    (*(v71 + 16))(v49, v1 + v56, v39);
    sub_1D92D959C(&qword_1EDE3BCC0, MEMORY[0x1E6993E88], MEMORY[0x1E6993E90]);
    v58 = v63;
    sub_1D9327F04();
    if (v58)
    {
    }

    sub_1D9326BA4();
    (*(v71 + 8))(v49, v57);
    v59 = sub_1D9326B94();
    *(v1 + v69) = 1;
    sub_1D929CF00(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v73);
    v60 = v74;
    v61 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v62 = *(v61 + 32);

    v62(v59, sub_1D92D952C, v1, v60, v61);

    return __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  return result;
}

uint64_t sub_1D92D6748(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC890, &qword_1D932DB80);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC860, &qword_1D932DAD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC928, &qword_1D932DC60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated))
    {
    }

    else
    {
      v12 = result;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
      sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10, MEMORY[0x1E695BF80]);
      sub_1D9326C54();

      v13 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation;
      swift_beginAccess();
      sub_1D92973DC(v12 + v13, v7, &unk_1ECAFC860, &qword_1D932DAD0);
      if ((*(v2 + 48))(v7, 1, v1))
      {

        sub_1D92933A0(v7, &unk_1ECAFC860, &qword_1D932DAD0);
        v14 = 1;
      }

      else
      {
        (*(v2 + 16))(v4, v7, v1);
        sub_1D92933A0(v7, &unk_1ECAFC860, &qword_1D932DAD0);
        v16[15] = 1;
        sub_1D9328114();

        (*(v2 + 8))(v4, v1);
        v14 = 0;
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC930, &unk_1D932DC68);
      (*(*(v15 - 8) + 56))(v10, v14, 1, v15);
      return sub_1D92933A0(v10, &qword_1ECAFC928, &qword_1D932DC60);
    }
  }

  return result;
}

void sub_1D92D6AB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v8[4] = sub_1D92DA0FC;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D9290DB0;
  v8[3] = &block_descriptor_93;
  v6 = _Block_copy(v8);

  v7 = a2;

  BSDispatchMain();
  _Block_release(v6);
}

void sub_1D92D6B94(uint64_t a1, NSObject *a2)
{
  if (*(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) == 1)
  {
    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v2 = sub_1D9326BE4();
    __swift_project_value_buffer(v2, qword_1EDE400B8);

    oslog = sub_1D9326BC4();
    v3 = sub_1D9328234();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v33 = v5;
      *v4 = 136446210;

      v6 = sub_1D9326AA4();
      v8 = v7;

      v9 = sub_1D9293524(v6, v8, &v33);

      *(v4 + 4) = v9;
      v10 = "[%{public}s] Ignoring subscription result; we were invalidated while subscribing.";
LABEL_15:
      _os_log_impl(&dword_1D928E000, oslog, v3, v10, v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x1DA72F920](v5, -1, -1);
      MEMORY[0x1DA72F920](v4, -1, -1);

      return;
    }
  }

  else
  {
    if (a2)
    {
      *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) = 0;
      v12 = a2;
      if (qword_1EDE3BF70 != -1)
      {
        swift_once();
      }

      v13 = sub_1D9326BE4();
      __swift_project_value_buffer(v13, qword_1EDE400B8);

      v14 = a2;
      v15 = sub_1D9326BC4();
      v16 = sub_1D9328214();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v33 = v19;
        *v17 = 136446466;

        v20 = sub_1D9326AA4();
        v22 = v21;

        v23 = sub_1D9293524(v20, v22, &v33);

        *(v17 + 4) = v23;
        *(v17 + 12) = 2114;
        v24 = a2;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v25;
        *v18 = v25;
        _os_log_impl(&dword_1D928E000, v15, v16, "[%{public}s] Error subscribing to session: %{public}@", v17, 0x16u);
        sub_1D92933A0(v18, &qword_1ECAFC510, &qword_1D932CEE0);
        MEMORY[0x1DA72F920](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72F920](v19, -1, -1);
        MEMORY[0x1DA72F920](v17, -1, -1);

        return;
      }

      v31 = a2;

      goto LABEL_18;
    }

    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v26 = sub_1D9326BE4();
    __swift_project_value_buffer(v26, qword_1EDE400B8);

    oslog = sub_1D9326BC4();
    v3 = sub_1D9328234();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v33 = v5;
      *v4 = 136446210;

      v27 = sub_1D9326AA4();
      v29 = v28;

      v30 = sub_1D9293524(v27, v29, &v33);

      *(v4 + 4) = v30;
      v10 = "[%{public}s] Subscribed";
      goto LABEL_15;
    }
  }

  v31 = oslog;

LABEL_18:
}

uint64_t sub_1D92D7074(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for SetControlStateRequest(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92D710C, 0, 0);
}

uint64_t sub_1D92D710C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  v7 = *(v2 + 20);
  v8 = sub_1D9327A94();
  (*(*(v8 - 8) + 16))(&v1[v7], v3, v8);
  *v1 = v6;
  *&v1[*(v2 + 24)] = v5;
  sub_1D929CF00(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = *(v10 + 72);

  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1D92D72D4;
  v13 = v0[11];

  return v15(v13, v9, v10);
}

uint64_t sub_1D92D72D4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D92D7474;
  }

  else
  {
    v2 = sub_1D92D73E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D92D73E8()
{
  sub_1D92D953C(v0[11], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92D7474()
{
  sub_1D92D953C(v0[11], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92D7500(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for PerformControlActionRequest(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92D7594, 0, 0);
}

uint64_t sub_1D92D7594()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  v6 = *(v2 + 20);
  v7 = sub_1D9327A94();
  (*(*(v7 - 8) + 16))(&v1[v6], v3, v7);
  v8 = v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = &v1[*(v2 + 24)];
  *v1 = v5;
  *v11 = v9;
  *(v11 + 1) = v10;
  sub_1D929CF00(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 2));
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = *(v13 + 80);

  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_1D92D7784;
  v16 = v0[13];

  return v18(v16, v12, v13);
}

uint64_t sub_1D92D7784()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D92D7924;
  }

  else
  {
    v2 = sub_1D92D7898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D92D7898()
{
  sub_1D92D953C(v0[13], type metadata accessor for PerformControlActionRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92D7924()
{
  sub_1D92D953C(v0[13], type metadata accessor for PerformControlActionRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92D79B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = BSDispatchQueueAssertMain();
  v5 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated;
  if ((*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    if (qword_1EDE3BF70 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v6 = sub_1D9326BE4();
      __swift_project_value_buffer(v6, qword_1EDE400B8);

      v7 = sub_1D9326BC4();
      v8 = sub_1D9328234();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v42 = v10;
        *v9 = 136446210;

        v11 = sub_1D9326AA4();
        v13 = v12;

        v14 = sub_1D9293524(v11, v13, &v42);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_1D928E000, v7, v8, "[%{public}s] Invalidated", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1DA72F920](v10, -1, -1);
        MEMORY[0x1DA72F920](v9, -1, -1);
      }

      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v15 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
      swift_beginAccess();
      sub_1D92C3C20(&v42, v3 + v15, &qword_1ECAFC850, &unk_1D932DAC0);
      swift_endAccess();
      *(v3 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) = 0;
      *(v3 + v5) = 1;
      v16 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__descriptorProvider);
      v17 = *(v16 + 72);
      v18 = *(v17 + 16);

      os_unfair_lock_lock(v18);
      [*(v16 + 80) removeObject_];
      os_unfair_lock_unlock(*(v17 + 16));

      v19 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__cancellables;
      swift_beginAccess();
      v38 = v19;
      v20 = *(v3 + v19);
      if ((v20 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_1D93283E4();
        sub_1D9326C24();
        sub_1D92D959C(&qword_1ECAFC520, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
        sub_1D93281E4();
        v21 = *(&v42 + 1);
        v22 = v42;
        v24 = *(&v43 + 1);
        v23 = v43;
        v5 = v44;
      }

      else
      {
        v25 = -1 << *(v20 + 32);
        v21 = v20 + 56;
        v23 = ~v25;
        v26 = -v25;
        v27 = v26 < 64 ? ~(-1 << v26) : -1;
        v5 = v27 & *(v20 + 56);
        swift_bridgeObjectRetain_n();
        v24 = 0;
        v22 = v20;
      }

      v28 = (v23 + 64) >> 6;
      if (v22 < 0)
      {
        break;
      }

LABEL_12:
      v29 = v24;
      v30 = v5;
      v31 = v24;
      if (v5)
      {
LABEL_16:
        v32 = (v30 - 1) & v30;
        v33 = *(*(v22 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

        if (v33)
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          goto LABEL_22;
        }

        v30 = *(v21 + 8 * v31);
        ++v29;
        if (v30)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    while (sub_1D93283F4())
    {
      sub_1D9326C24();
      swift_dynamicCast();
      v31 = v24;
      v32 = v5;
      if (!v39[0])
      {
        break;
      }

LABEL_20:
      sub_1D9326C14();

      v24 = v31;
      v5 = v32;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_22:
    sub_1D92C9738(v22);

    *(v3 + v38) = MEMORY[0x1E69E7CD0];

    sub_1D929CF00(v3 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v39);
    v34 = v40;
    v35 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v36 = *(v35 + 40);

    v36(v37, v34, v35);

    return __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  return result;
}

id sub_1D92D7F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlSessionDescriptorProvider._ExtensionObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D92D7F78()
{
  sub_1D9326B54();
  sub_1D9326B44();
  type metadata accessor for ControlSessionDescriptorProvider();
  swift_allocObject();
  result = sub_1D92D7FDC(v1, 1);
  qword_1EDE3C080 = result;
  return result;
}

uint64_t sub_1D92D7FDC(void *a1, char a2)
{
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = [objc_opt_self() weakObjectsHashTable];
  sub_1D929CF00(a1, v2 + 32);
  v7 = [objc_allocWithZone(MEMORY[0x1E6994250]) initIncludingVisible:1 hidden:0];
  v8 = v7;
  if (a2)
  {
    [v7 setIncludeRemote_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69943D0]) initWithWidgetsPredicate:0 controlsPredicate:v8 includeIntents:1];
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x1E69943C0]) initWithOptions_];
  v10 = [objc_allocWithZone(type metadata accessor for ControlSessionDescriptorProvider._ExtensionObserver()) init];
  *(v2 + 24) = v10;
  [*(v2 + 16) registerObserver_];

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

void sub_1D92D8130()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = [*(v0 + 80) allObjects];
  type metadata accessor for ControlSession(0);
  v3 = sub_1D9328024();

  os_unfair_lock_unlock(*(v1 + 16));
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v6[4] = sub_1D92DA0A8;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D9290DB0;
  v6[3] = &block_descriptor_87;
  v5 = _Block_copy(v6);

  BSDispatchMain();

  _Block_release(v5);
}

void sub_1D92D8258(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v13 = a2;
    v14 = sub_1D9328544();
    a2 = v13;
    v3 = v14;
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA72EA00](v4, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v4 + 32);
      }

      BSDispatchQueueAssertMain();

      v10 = sub_1D9326AC4();

      v11 = [v10 control];

      v12 = [v5 controlDescriptorForControl_];
      if (v12)
      {
        swift_beginAccess();
        v6 = *(v9 + 32);
        *(v9 + 32) = v12;
        v7 = v12;
        sub_1D92D34F0(v6, v8);
      }

      else
      {
      }

      ++v4;
    }

    while (v3 != v4);
  }
}

void sub_1D92D83E8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  BSDispatchQueueAssertMain();
  v9 = *(v2 + 16);

  v10 = sub_1D9326AC4();

  v11 = [v10 control];

  v12 = [v9 controlDescriptorForControl_];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(a1 + 32);
    *(a1 + 32) = v12;
    v14 = v12;
    sub_1D92D34F0(v13, v15);
  }

  else if (a2)
  {
    v16 = sub_1D93280D4();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v3;
    v17[5] = a1;

    sub_1D92F08E8(0, 0, v8, &unk_1D932DC58, v17);
  }
}

uint64_t sub_1D92D85D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D92D85F4, 0, 0);
}

uint64_t sub_1D92D85F4()
{
  v1 = v0[8];
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);

  v4 = sub_1D9326AC4();

  v5 = [v4 control];
  v0[10] = v5;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D92D8704;

  return MEMORY[0x1EEDF3B90](v5, v2, v3);
}

uint64_t sub_1D92D8704(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 96) = a1;

  v5 = *(v3 + 80);
  if (v1)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D92D8874, 0, 0);
  }
}

uint64_t sub_1D92D8874()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[9];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v0[6] = sub_1D92DA0A0;
    v0[7] = v3;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D9290DB0;
    v0[5] = &block_descriptor_0;
    v4 = _Block_copy(v0 + 2);

    v5 = v1;

    BSDispatchMain();
    _Block_release(v4);
  }

  v6 = v0[1];

  return v6();
}

void sub_1D92D898C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
  v5 = a2;
  sub_1D92D34F0(v4, v6);
}

uint64_t sub_1D92D89EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1D92D8A44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1D92D8AB8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1D9293524(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_1D92D8B14(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D92D8B60(a1, a2);
  sub_1D92D8C90(&unk_1F54C0250);
  return v3;
}

void *sub_1D92D8B60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D92D8D7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D9328494();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D9327FD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D92D8D7C(v10, 0);
        result = sub_1D9328434();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D92D8C90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D92D8DF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D92D8D7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC940, &qword_1D932DC78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D92D8DF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC940, &qword_1D932DC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1D92D8EE4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1D92D8EF4(uint64_t a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v60 = a4;
  v61 = a2;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC860, &qword_1D932DAD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC948, &unk_1D932DC80);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC890, &qword_1D932DB80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC840, &qword_1D932DAB8);
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v43 - v15;
  v16 = sub_1D9327874();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a3[1];
  v46 = *(a3 + 1);
  v45 = a3[16];
  v22 = *(a3 + 4);
  v44 = *(a3 + 3);
  v43 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  swift_allocObject();
  v23 = sub_1D9326C44();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v23;
  v54 = v12;
  v24 = *(v12 + 56);
  v49 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation;
  v56 = v11;
  v47 = v24;
  v24(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation, 1, 1, v11);
  v25 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentDidChangePublisher;
  swift_allocObject();
  *(v5 + v25) = sub_1D9326C44();
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility) = 0;
  v26 = v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__testArchiveService;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__cancellables) = MEMORY[0x1E69E7CD0];
  v27 = v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  *v28 = v20;
  v28[1] = v21;
  v29 = v50;
  *(v28 + 1) = v46;
  v28[16] = v45;
  v30 = v43;
  *(v28 + 3) = v44;
  *(v28 + 4) = v30;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey) = v29;
  sub_1D929CF00(v61, v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client);
  v31 = qword_1EDE3C070;

  if (v31 != -1)
  {
    swift_once();
  }

  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__descriptorProvider) = qword_1EDE3C080;
  v32 = v60;
  sub_1D929CF00(v60, v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__keybagStateProvider);
  swift_beginAccess();
  v33 = v5[4];
  v5[4] = 0;

  sub_1D9327864();
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers, v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC880, &qword_1D932DB78);
  v35 = v57;
  v34 = v58;
  v36 = v55;
  (*(v57 + 104))(v55, *MEMORY[0x1E69E8650], v58);
  v37 = v48;
  v38 = v51;
  sub_1D93280E4();
  (*(v35 + 8))(v36, v34);
  v39 = v59;
  v40 = v56;
  (*(v54 + 32))(v59, v38, v56);
  v47(v39, 0, 1, v40);
  (*(v52 + 32))(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_contentUpdateStream, v37, v53);
  v41 = v49;
  swift_beginAccess();
  sub_1D92C3C20(v39, v5 + v41, &unk_1ECAFC860, &qword_1D932DAD0);
  swift_endAccess();
  sub_1D92D5384(v5, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  return v5;
}

uint64_t sub_1D92D953C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92D959C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ControlSession(uint64_t a1)
{
  result = qword_1EDE3D848;
  if (!qword_1EDE3D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D92D9638(uint64_t a1)
{
  sub_1D92D9F34(319, &qword_1EDE3BC28, &unk_1ECAFC880, &qword_1D932DB78, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    sub_1D92D9F34(319, &qword_1EDE3BC38, &unk_1ECAFC890, &qword_1D932DB80, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D9327874();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ControlSession.setControlState(_:action:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 728) + **(*v2 + 728));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D92D9CEC;

  return v8(a1, a2);
}

uint64_t sub_1D92D9CEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ControlSession.performControlAction(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 736) + **(*v1 + 736));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D92DA198;

  return v6(a1);
}

void sub_1D92D9F34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D92D9FE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D92D9CEC;

  return sub_1D92D85D4(a1, v4, v5, v7, v6);
}

unint64_t sub_1D92DA0B0()
{
  result = qword_1ECAFC920;
  if (!qword_1ECAFC920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFC920);
  }

  return result;
}

uint64_t objectdestroy_83Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

void WidgetVisibility.bounds.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void __swiftcall WidgetVisibility.init(isSettled:bounds:)(ChronoUIServices::WidgetVisibility *__return_ptr retstr, Swift::Bool isSettled, __C::CGRect bounds)
{
  retstr->isSettled = isSettled;
  retstr->isFocal = 0;
  retstr->bounds = bounds;
}

void __swiftcall WidgetVisibility.init(isSettled:isFocal:bounds:)(ChronoUIServices::WidgetVisibility *__return_ptr retstr, Swift::Bool isSettled, Swift::Bool isFocal, __C::CGRect bounds)
{
  retstr->isSettled = isSettled;
  retstr->isFocal = isFocal;
  retstr->bounds = bounds;
}

uint64_t WidgetVisibility.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_1D9328744();
  sub_1D9328744();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1DA72ED00](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA72ED00](*&v6);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  Width = CGRectGetWidth(v10);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x1DA72ED00](*&Width);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  Height = CGRectGetHeight(v11);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  return MEMORY[0x1DA72ED00](*&Height);
}

uint64_t WidgetVisibility.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD00000000000001DLL, 0x80000001D93369F0);
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

  MEMORY[0x1DA72E570](v3, v4);

  MEMORY[0x1DA72E570](0x61636F467369202CLL, 0xEA00000000003D6CLL);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v5, v6);

  MEMORY[0x1DA72E570](0x73646E756F62202CLL, 0xE90000000000003DLL);
  v7 = sub_1D9328304();
  MEMORY[0x1DA72E570](v7);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0;
}

BOOL static WidgetVisibility.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  }

  return v2;
}

uint64_t WidgetVisibility.hashValue.getter()
{
  sub_1D9328724();
  WidgetVisibility.hash(into:)();
  return sub_1D9328764();
}

uint64_t sub_1D92DA558()
{
  sub_1D9328724();
  WidgetVisibility.hash(into:)();
  return sub_1D9328764();
}

uint64_t sub_1D92DA5BC(uint64_t a1)
{
  sub_1D9328724();
  WidgetVisibility.hash(into:)();
  return sub_1D9328764();
}

unint64_t sub_1D92DA61C()
{
  result = qword_1ECAFC9B0;
  if (!qword_1ECAFC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC9B0);
  }

  return result;
}

BOOL sub_1D92DA674(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  }

  return v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D92DA708()
{
  type metadata accessor for ControlArchiveService();
  swift_allocObject();
  result = sub_1D92DA744();
  qword_1EDE40128 = result;
  return result;
}

uint64_t sub_1D92DA744()
{
  v134 = sub_1D9328274();
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1D9328294();
  v141 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9327654();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v130 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1D9326BE4();
  v144 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v145 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9327B64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
  }

  v135 = v0;
  sub_1D929CF00(&qword_1EDE400D0, &v157);
  sub_1D9326B84();
  sub_1D9326B74();
  v10 = sub_1D93278B4();
  sub_1D929CF00(&v156, &v153);
  v126 = v10;
  v137 = sub_1D93278A4();
  v11 = sub_1D9327924();
  (*(v7 + 104))(v9, *MEMORY[0x1E6985998], v6);
  v155 = 0;
  v153 = 0u;
  v154 = 0u;
  v12 = sub_1D9327914();
  v13 = sub_1D9327964();
  v14 = sub_1D9327954();
  v15 = type metadata accessor for ClientEnvironmentProviderFactory();
  v128 = v6;
  v139 = v7;
  v16 = v158;
  v17 = v159;
  v18 = __swift_project_boxed_opaque_existential_1(&v157, v158);
  MEMORY[0x1EEE9AC00](v18);
  v127 = v9;
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = *(v17 + 8);
  v124 = v15;
  v140 = sub_1D929C790(v20, v15, v16, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9B8, &qword_1D932DDF8);
  *(&v154 + 1) = v13;
  v155 = MEMORY[0x1E6993F48];
  *&v153 = v14;
  sub_1D9327774();
  sub_1D9327734();
  sub_1D92DBC88(&qword_1EDE3BCD0, MEMORY[0x1E6993DC8], MEMORY[0x1E6993DC0]);
  v120 = v14;

  v24 = sub_1D9327944();
  v25 = MEMORY[0x1DA72DEE0](0xD000000000000010, 0x80000001D9336280, &v153, v24);
  v26 = sub_1D9327824();
  v119 = v23;
  *(&v154 + 1) = v23;
  v116 = sub_1D9290D60(&unk_1EDE3BCB0, &qword_1ECAFC9B8, &qword_1D932DDF8, MEMORY[0x1E6993F38]);
  v155 = v116;
  v152 = MEMORY[0x1E6993F30];
  *&v153 = v25;
  v138 = v11;
  v151 = v11;
  v150 = v12;
  v27 = objc_opt_self();
  v129 = v25;

  v143 = v12;

  v117 = v27;
  v28 = [v27 defaultManager];
  v118 = v26;
  v136 = sub_1D9327814();
  if (qword_1EDE3BF68 != -1)
  {
    swift_once();
  }

  v29 = v142;
  v30 = __swift_project_value_buffer(v142, qword_1EDE400A0);
  v32 = v144 + 16;
  v31 = *(v144 + 16);
  v31(v145, v30, v29);
  v33 = v158;
  v34 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  v35 = *(v34 + 24);
  v36 = v143;
  swift_retain_n();
  v37 = v137;
  swift_retain_n();
  v38 = v140;

  v121 = v35(v33, v34);
  *(&v154 + 1) = v138;
  v155 = MEMORY[0x1E6993F30];
  *&v153 = v36;
  v151 = v126;
  v152 = MEMORY[0x1E6993EA8];
  v150 = v37;
  v148 = v124;
  v115 = sub_1D92DBC88(qword_1EDE3C088, type metadata accessor for ClientEnvironmentProviderFactory, &protocol conformance descriptor for ClientEnvironmentProviderFactory);
  v149 = v115;
  v147 = v38;
  v125 = type metadata accessor for ControlArchiveServiceStore(0);
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E7CC0];
  *(v39 + 16) = sub_1D92C617C(MEMORY[0x1E69E7CC0]);
  v41 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
  v113 = type metadata accessor for UnfairLock();
  v42 = swift_allocObject();
  v43 = swift_slowAlloc();
  *v43 = 0;
  *(v42 + 16) = v43;
  *(v39 + v41) = v42;
  *(v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__subscriptions) = MEMORY[0x1E69E7CD0];
  v44 = v142;
  v123 = v32;
  v122 = v31;
  v31((v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__logger), v145, v142);
  sub_1D929CF00(&v153, v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider);
  sub_1D929CF00(&v150, v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  sub_1D929CF00(&v147, v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory);
  v45 = (v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader);
  v46 = sub_1D92DBC88(&qword_1EDE3BCC8, MEMORY[0x1E6993E80], MEMORY[0x1E6993E78]);
  *v45 = v136;
  v45[1] = v46;
  v111 = v46;
  v47 = (v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
  v48 = sub_1D92DBC3C();
  *v47 = 0;
  v47[1] = 0;
  sub_1D9327644();
  v49 = *(v141 + 104);
  v110 = *MEMORY[0x1E69E8098];
  v141 += 104;
  v109 = v49;
  v49(v132);
  v146 = v40;
  v50 = sub_1D92DBC88(&qword_1EDE3BC20, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9C0, &qword_1D932DE00);
  v52 = sub_1D9290D60(&qword_1EDE3BC48, &qword_1ECAFC9C0, &qword_1D932DE00, MEMORY[0x1E69E6328]);
  v107 = v51;
  v106 = v52;
  v108 = v50;
  sub_1D93283C4();
  v112 = "veService";
  v114 = v48;
  *(v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue) = sub_1D93282C4();
  v53 = (v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  v54 = v44;
  __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
  v55 = v127;
  sub_1D93278D4();
  v56 = *(v139 + 32);
  v139 += 32;
  v105 = v56;
  v56(v39 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock_currentDataProtectionLevel, v55, v128);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v146 = sub_1D93278C4();
  swift_allocObject();
  v57 = v144;
  swift_weakInit();

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9C8, &qword_1D932DE08);
  v59 = MEMORY[0x1E695BED8];
  v60 = sub_1D9290D60(&qword_1EDE3BF30, &qword_1ECAFC9C8, &qword_1D932DE08, MEMORY[0x1E695BED8]);
  v104 = v58;
  v103 = v60;
  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v146 = v121;
  swift_allocObject();
  swift_weakInit();

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D0, &qword_1D932DE10);
  v62 = v59;
  v63 = v54;
  v64 = sub_1D9290D60(&qword_1EDE3BF28, &qword_1ECAFC9D0, &qword_1D932DE10, v62);
  v102 = v61;
  v101 = v64;
  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v65 = *(v57 + 8);
  v144 = v57 + 8;
  v100 = v65;
  v65(v145, v54);
  __swift_destroy_boxed_opaque_existential_1Tm(&v147);
  __swift_destroy_boxed_opaque_existential_1Tm(&v150);
  __swift_destroy_boxed_opaque_existential_1Tm(&v153);
  v66 = v143;

  v67 = v137;

  v68 = v135;
  *(v135 + 80) = v125;
  *(v68 + 88) = &off_1F54C2278;
  *(v68 + 56) = v39;
  v69 = v116;
  v70 = v119;
  *(&v154 + 1) = v119;
  v155 = v116;
  v71 = v129;
  *&v153 = v129;
  v72 = MEMORY[0x1E6993F30];
  v73 = v138;
  v151 = v138;
  v152 = MEMORY[0x1E6993F30];
  v150 = v66;

  v74 = v117;
  v75 = [v117 defaultManager];
  v121 = sub_1D9327814();
  *(&v154 + 1) = v70;
  v155 = v69;
  v152 = v72;
  *&v153 = v71;
  v151 = v73;
  v150 = v66;

  v76 = [v74 defaultManager];
  v77 = sub_1D9327814();
  if (qword_1EDE3BF58 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v63, qword_1EDE40070);
  v122(v145, v78, v63);
  v79 = v158;
  v80 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  v81 = *(v80 + 16);
  v82 = v143;

  v83 = v140;

  v84 = v121;

  v119 = v81(v79, v80);
  *(&v154 + 1) = v138;
  v155 = MEMORY[0x1E6993F30];
  *&v153 = v82;
  v151 = v126;
  v152 = MEMORY[0x1E6993EA8];
  v149 = v115;
  v150 = v67;
  v148 = v124;
  v147 = v83;
  v85 = v125;
  v86 = swift_allocObject();
  v87 = MEMORY[0x1E69E7CC0];
  *(v86 + 16) = sub_1D92C617C(MEMORY[0x1E69E7CC0]);
  v88 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
  v89 = swift_allocObject();
  v90 = swift_slowAlloc();
  *v90 = 0;
  *(v89 + 16) = v90;
  *(v86 + v88) = v89;
  *(v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__subscriptions) = MEMORY[0x1E69E7CD0];
  v91 = v145;
  v122((v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__logger), v145, v142);
  sub_1D929CF00(&v153, v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider);
  sub_1D929CF00(&v150, v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  sub_1D929CF00(&v147, v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory);
  v92 = (v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader);
  v93 = v111;
  *v92 = v84;
  v92[1] = v93;
  v94 = (v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
  v118 = v77;
  *v94 = v77;
  v94[1] = v93;

  sub_1D9327644();
  v109(v132, v110, v131);
  v146 = v87;
  sub_1D93283C4();
  *(v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue) = sub_1D93282C4();
  v95 = (v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  __swift_project_boxed_opaque_existential_1((v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
  v96 = v127;
  sub_1D93278D4();
  v105(v86 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock_currentDataProtectionLevel, v96, v128);
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  v146 = sub_1D93278C4();
  swift_allocObject();
  swift_weakInit();

  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v146 = v119;
  swift_allocObject();
  swift_weakInit();

  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v100(v91, v142);
  __swift_destroy_boxed_opaque_existential_1Tm(&v147);
  __swift_destroy_boxed_opaque_existential_1Tm(&v150);
  __swift_destroy_boxed_opaque_existential_1Tm(&v153);
  *(&v154 + 1) = v85;
  v155 = &off_1F54C2278;

  *&v153 = v86;

  __swift_destroy_boxed_opaque_existential_1Tm(&v156);
  v97 = v135;
  sub_1D92DA1A8(&v153, v135 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v157);
  return v97;
}

uint64_t sub_1D92DBBD8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

unint64_t sub_1D92DBC3C()
{
  result = qword_1EDE3BC10;
  if (!qword_1EDE3BC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE3BC10);
  }

  return result;
}

uint64_t sub_1D92DBC88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D92DBCDC()
{
  sub_1D9326B54();
  sub_1D9326B44();
  v0 = type metadata accessor for ControlsUIClient(0);
  swift_allocObject();
  result = sub_1D92DBE60(v2);
  qword_1EDE400E8 = v0;
  unk_1EDE400F0 = &off_1F54C0D48;
  qword_1EDE400D0 = result;
  return result;
}

uint64_t sub_1D92DBD84()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
    sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80, MEMORY[0x1E695BF88]);
    v2 = sub_1D9326C64();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D92DBE60(void *a1)
{
  v2 = v1;
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  *(v2 + 24) = v8;
  v10 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__calloutQueue_systemEnvironmentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  swift_allocObject();
  *(v2 + v10) = sub_1D9326C44();
  *(v2 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher) = 0;
  sub_1D929CF00(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA00, &qword_1D932DF00);
  sub_1D93269E4();
  swift_dynamicCast();
  *(v2 + 16) = v12;
  sub_1D9327024();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment, v7, v4);
  swift_allocObject();
  swift_weakInit();

  sub_1D93269D4();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return v2;
}

uint64_t sub_1D92DC064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D92DCE80(a1, a2);
  }

  return result;
}

uint64_t sub_1D92DC0D8()
{
  v0 = sub_1D9327874();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D92DDF58(&qword_1EDE3BCC0, MEMORY[0x1E6993E88], MEMORY[0x1E6993E90]);
  v1 = sub_1D9327F04();
  v3 = v2;
  sub_1D93269C4();

  return sub_1D92C5F98(v1, v3);
}

uint64_t sub_1D92DC45C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SetControlStateRequest(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92DC4F0, 0, 0);
}

uint64_t sub_1D92DC4F0()
{
  sub_1D92DDF58(&qword_1ECAFC9E8, type metadata accessor for SetControlStateRequest, &protocol conformance descriptor for SetControlStateRequest);
  v1 = sub_1D9327F04();
  v0[6] = v1;
  v0[7] = v2;
  v7 = (*MEMORY[0x1E6993FD8] + MEMORY[0x1E6993FD8]);
  v3 = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D92DC7EC;

  return v7(v3, v4);
}

uint64_t sub_1D92DC7EC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D92DC96C;
  }

  else
  {
    v2 = sub_1D92DC900;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D92DC900()
{
  sub_1D92C5F98(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92DC96C()
{
  sub_1D92C5F98(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92DC9DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for PerformControlActionRequest(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92DCA70, 0, 0);
}

uint64_t sub_1D92DCA70()
{
  sub_1D92DDF58(qword_1EDE3B2E8, type metadata accessor for PerformControlActionRequest, &protocol conformance descriptor for PerformControlActionRequest);
  v1 = sub_1D9327F04();
  v0[6] = v1;
  v0[7] = v2;
  v7 = (*MEMORY[0x1E6993FE0] + MEMORY[0x1E6993FE0]);
  v3 = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D92DCD6C;

  return v7(v3, v4);
}

uint64_t sub_1D92DCD6C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D92DDFAC;
  }

  else
  {
    v2 = sub_1D92DDFA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D92DCE80(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v66 = sub_1D9327614();
  v73 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D9327654();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9327974();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9327984();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D8, &unk_1D932DEE0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v74 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v57 - v16;
  v17 = sub_1D9327034();
  v18 = *(v17 - 8);
  v75 = v17;
  v76 = v18;
  v19 = v18[8];
  v20 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v23 = sub_1D9327A04();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D92DDF58(&qword_1EDE3BC98, MEMORY[0x1E6985700], MEMORY[0x1E6985720]);
  sub_1D93281D4();
  v61 = v22;
  v60 = v24;
  v77 = v23;
  sub_1D9327024();
  sub_1D93279C4();
  v27 = v76[1];
  v58 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v75;
  v59 = v27;
  v57 = v76 + 1;
  v27(v58, v75);
  v29 = v68;
  v30 = v69;
  (*(v68 + 16))(v10, v12, v69);
  sub_1D92DDF58(&qword_1EDE3BCA0, MEMORY[0x1E69856E8], MEMORY[0x1E69856F0]);
  sub_1D9327FE4();
  sub_1D92DDF58(&qword_1EDE3BCA8, MEMORY[0x1E69856D8], MEMORY[0x1E69856E0]);
  v31 = v74;
  v32 = v71;
  sub_1D9328384();
  (*(v70 + 8))(v6, v32);
  (*(v29 + 8))(v12, v30);
  v33 = v76;
  v34 = v76[6];
  v35 = 1;
  v36 = v34(v31, 1, v28);
  v37 = v26;
  v38 = v67;
  if (v36 != 1)
  {
    (v33[4])(v67, v74, v28);
    v35 = 0;
  }

  (v33[7])(v38, v35, 1, v28);
  v39 = v34(v38, 1, v28);
  v41 = v72;
  v40 = v73;
  v42 = v61;
  if (v39 == 1)
  {
    (*(v60 + 8))(v37, v77);
    return sub_1D92933A0(v38, &qword_1ECAFC9D8, &unk_1D932DEE0);
  }

  else
  {
    v44 = v76;
    v45 = v76[4];
    v74 = v37;
    v46 = v75;
    v45(v61, v38, v75);
    v47 = *(v41 + 24);
    os_unfair_lock_lock(*(v47 + 16));
    v48 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment;
    swift_beginAccess();
    (v44[3])(v41 + v48, v42, v46);
    swift_endAccess();
    os_unfair_lock_unlock(*(v47 + 16));
    v71 = sub_1D9326984();
    v49 = v58;
    (v44[2])(v58, v42, v46);
    v50 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v45((v51 + v50), v49, v46);
    aBlock[4] = sub_1D92DDE2C;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D9290DB0;
    aBlock[3] = &block_descriptor_1;
    v52 = _Block_copy(aBlock);

    v53 = v62;
    sub_1D9327634();
    v78 = MEMORY[0x1E69E7CC0];
    sub_1D92DDF58(&qword_1EDE3BCE8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
    sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0, MEMORY[0x1E69E6328]);
    v54 = v64;
    v55 = v66;
    sub_1D93283C4();
    v56 = v71;
    MEMORY[0x1DA72E860](0, v53, v54, v52);
    _Block_release(v52);

    (*(v40 + 8))(v54, v55);
    (*(v63 + 8))(v53, v65);
    v59(v61, v46);
    (*(v60 + 8))(v74, v77);
  }
}

uint64_t sub_1D92DD8FC(uint64_t a1, uint64_t a2)
{

  sub_1D9326C34();
}

uint64_t sub_1D92DD94C()
{

  v1 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment;
  v2 = sub_1D9327034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ControlsUIClient(uint64_t a1)
{
  result = qword_1EDE3D2F8;
  if (!qword_1EDE3D2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D92DDA6C(uint64_t a1)
{
  result = sub_1D9327034();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D92DDC38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D92D9CEC;

  return sub_1D92DC45C(a1);
}

uint64_t sub_1D92DDCD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D92DA198;

  return sub_1D92DC9DC(a1);
}

void sub_1D92DDD68(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment;
  swift_beginAccess();
  v6 = sub_1D9327034();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1D92DDE2C()
{
  v1 = *(sub_1D9327034() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D92DD8FC(v2, v3);
}

uint64_t sub_1D92DDE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D92DDEF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92DDF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1D92DE060(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LaunchType(0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = (v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA20, &qword_1D932DF08);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - v11;
  v13 = type metadata accessor for RemoteWidgetLaunchRequest(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action;
  *&v2[OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action] = 0;
  if (a2 >> 60 == 15)
  {

    type metadata accessor for CHUISRemoteWidgetLaunchRequest();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v32[1] = v8;
    v33 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v2;
    sub_1D92C5EDC(a1, a2);
    sub_1D92DE608();
    v17 = a2;
    v18 = a1;
    sub_1D93281D4();
    (*(v14 + 56))(v12, 0, 1, v13);
    v20 = v33;
    sub_1D92DE6DC(v12, v33);
    sub_1D92CDCA4(v20, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v22 = v35;
      if (EnumCaseMultiPayload == 2)
      {
        *v22 = _s16ChronoUIServices13LaunchRequestV12userActivity3forSo06NSUserF0CSo9CHSWidgetC_tFZ_0(*(v33 + *(v13 + 20)));
      }
    }

    else
    {
      v22 = v35;
      v23 = sub_1D9326814();
      (*(*(v23 - 8) + 32))(v22, v7, v23);
    }

    swift_storeEnumTagMultiPayload();
    LaunchType.bsAction()(v24);
    if (v26)
    {

      v25 = 0;
    }

    v27 = v34;
    v28 = *&v34[v16];
    *&v34[v16] = v25;

    v29 = v33;
    v30 = [*(v33 + *(v13 + 20)) extensionIdentity];
    sub_1D92DE660(v18, v17);
    sub_1D92DE740(v22, type metadata accessor for LaunchType);
    sub_1D92DE740(v29, type metadata accessor for RemoteWidgetLaunchRequest);
    *&v27[OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_extensionIdentity] = v30;
    v36.receiver = v27;
    v36.super_class = CHUISRemoteWidgetLaunchRequest;
    v31 = objc_msgSendSuper2(&v36, sel_init);
    sub_1D92DE660(v18, v17);
    return v31;
  }
}

CHUISRemoteWidgetLaunchRequest __swiftcall CHUISRemoteWidgetLaunchRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.action = v3;
  result.extensionIdentity = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for CHUISRemoteWidgetLaunchRequest()
{
  result = qword_1ECAFCA18;
  if (!qword_1ECAFCA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFCA18);
  }

  return result;
}

unint64_t sub_1D92DE608()
{
  result = qword_1ECAFCA28;
  if (!qword_1ECAFCA28)
  {
    type metadata accessor for RemoteWidgetLaunchRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCA28);
  }

  return result;
}

uint64_t sub_1D92DE660(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D92C5F98(result, a2);
  }

  return result;
}

uint64_t sub_1D92DE674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA20, &qword_1D932DF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92DE6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetLaunchRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92DE740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D92DE7A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  [v2 setIsAnimating_];
  if (*(a1 + 16))
  {
    v17 = sub_1D9327F74();
  }

  else
  {
    v17 = 0;
  }

  [v2 setTitle_];

  if (*(a1 + 32))
  {
    v18 = sub_1D9327F74();
  }

  else
  {
    v18 = 0;
  }

  [v2 setSubtitle_];

  v19 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  if (*(a1 + v19[9]) && (v20 = sub_1D9327344()) != 0)
  {
    v21 = v20;
    v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v22 = 0;
  }

  [v2 setTint_];

  v23 = v19[8];
  sub_1D92E11F4(a1 + v23, v16);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    sub_1D92933A0(v16, &qword_1ECAFCA50, &unk_1D932DF60);
    v25 = 0;
  }

  else
  {
    v25 = sub_1D92F656C();
    sub_1D92D2EB0(v16);
  }

  [v2 setIcon_];

  sub_1D92E11F4(a1 + v23, v14);
  if (v24(v14, 1, v4) == 1)
  {
    sub_1D92933A0(v14, &qword_1ECAFCA50, &unk_1D932DF60);
  }

  else
  {
    v26 = v34;
    sub_1D92E1264(v14, v34);
    v27 = [v2 iconView];
    v28 = v36;
    sub_1D92D30E0(v26, v36);
    *(v28 + *(v4 + 20)) = [v27 style];
    v29 = v35;
    sub_1D92D30E0(v28, v35);
    sub_1D92D2694(v29);

    sub_1D92D2EB0(v28);
    sub_1D92D2EB0(v26);
  }

  [v2 setRedacted_];
  [v2 setDisabled_];
  [v2 setHasError_];
  if (*(a1 + v19[10] + 8))
  {
    v30 = sub_1D9327F74();
  }

  else
  {
    v30 = 0;
  }

  [v2 setStatus_];

  if (*(a1 + v19[11] + 8))
  {
    v31 = sub_1D9327F74();
  }

  else
  {
    v31 = 0;
  }

  [v2 setActionHint_];

  [v2 setLauncher_];
  if (*(a1 + v19[16] + 8))
  {
    v32 = sub_1D9327F74();
  }

  else
  {
    v32 = 0;
  }

  [v2 setAccessibilityIdentifier_];
}

void sub_1D92DEC5C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIconView_];

  *a2 = v4;
}

uint64_t CHUISControlInstanceButton.title.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v7 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 title];

    if (v4)
    {
      v5 = sub_1D9327F84();

      return v5;
    }
  }

  else
  {
  }

  return 0;
}

id CHUISControlInstanceButton.iconView.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  v2 = *(v4 + 24);

  return v2;
}

id CHUISControlInstanceButton.tintColor.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 tint];
  }

  else
  {

    return 0;
  }

  return v4;
}

void *CHUISControlInstanceButton.viewModel.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v5 + 16);
  v3 = v2;

  return v2;
}

id CHUISControlInstanceButton.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

char *CHUISControlInstanceButton.init(instanceIdentity:)(void *a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v20.receiver = v2;
  v20.super_class = CHUISControlInstanceButton;
  v4 = objc_msgSendSuper2(&v20, sel_initWithInstanceIdentity_, a1);
  v5 = qword_1EDE3C588;
  v6 = v4;
  v7 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v19);
  type metadata accessor for ControlInstanceButton(0);
  v8 = swift_allocObject();
  *(v8 + qword_1EDE3CCC0) = 0;
  *(v8 + qword_1EDE3CCB0) = 0;
  *(v8 + qword_1EDE3CCC8) = 0;
  *(v8 + qword_1EDE3CCB8) = 0;
  sub_1D929CF00(v19, v16);
  v9 = sub_1D92E141C(v7, v16, &qword_1ECAFCAC8, &unk_1D932E7D0, &qword_1ECAFCAD0, &qword_1D932E030, &qword_1ECAFCAD8, &qword_1D932E038, &qword_1ECAFCAE0, &unk_1D932E040, type metadata accessor for ControlInstanceButton.ViewModel, sub_1D92E96D0);

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_allocObject();
  v11 = sub_1D92DF7D0(v9, &unk_1F54C0EC8, &unk_1F54C0EF0, &unk_1D932E018);
  swift_unknownObjectWeakAssign();
  v19[3] = v10;
  v19[4] = &off_1F54C1D40;
  v19[0] = v11;
  v12 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&v6[v12], v16);
  v13 = v17;
  v14 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v14 + 120))(v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v6[v12], v19);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v6;
}

id sub_1D92DF6F8(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

uint64_t sub_1D92DF7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  *(v4 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = a1;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  v9 = objc_opt_self();

  *(v4 + 64) = [v9 weakObjectsHashTable];
  swift_beginAccess();
  v10 = *(v4 + 16);
  *(v4 + 16) = 0;

  *(v4 + 24) = [objc_allocWithZone(CHUISControlIconView) initWithFrame_];
  v11 = sub_1D93280D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = sub_1D9328194();
  sub_1D92933A0(v8, &unk_1ECAFC910, &qword_1D932E360);
  *(v4 + 80) = v14;

  return v4;
}

uint64_t sub_1D92DF9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA58, &qword_1D932DF88);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D93280A4();
  v3[12] = sub_1D9328094();
  v6 = sub_1D9328064();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D92DFAFC, v6, v5);
}

uint64_t sub_1D92DFAFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    sub_1D9328144();
    v2 = sub_1D9328094();
    v0[16] = v2;
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1D92DFC6C;
    v4 = v0[8];
    v5 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 5, v2, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D92DFC6C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D92DFDB0, v3, v2);
}

uint64_t sub_1D92DFDB0()
{
  v1 = v0[5];
  if (v1 != 1)
  {
    sub_1D92E1380(v1);
    if ((sub_1D93281A4() & 1) != 0 || (BSDispatchQueueAssertMain(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
    {
LABEL_19:
      v15 = sub_1D9328094();
      v0[16] = v15;
      v16 = swift_task_alloc();
      v0[17] = v16;
      *v16 = v0;
      v16[1] = sub_1D92DFC6C;
      v11 = v0[8];
      v10 = MEMORY[0x1E69E85E0];
      v8 = (v0 + 5);
      v9 = v15;

      return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
    }

    v5 = Strong;
    v6 = [*(v0[15] + 64) allObjects];
    v7 = sub_1D9328024();

    if (v7 >> 62)
    {
      v8 = sub_1D9328544();
      v12 = v8;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_9:
        if (v12 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1DA72EA00](i, v7);
          }

          else
          {
            v14 = *(v7 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v14 respondsToSelector_])
          {
            [v14 controlInstanceDescriptorDidChange_];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_19;
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D92E002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA58, &qword_1D932DF88);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D93280A4();
  v3[12] = sub_1D9328094();
  v6 = sub_1D9328064();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D92E0130, v6, v5);
}

uint64_t sub_1D92E0130()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    sub_1D9328144();
    v2 = sub_1D9328094();
    v0[16] = v2;
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1D92E02A0;
    v4 = v0[8];
    v5 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 5, v2, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D92E02A0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D92E03E4, v3, v2);
}

uint64_t sub_1D92E03E4()
{
  v1 = v0[5];
  if (v1 != 1)
  {
    sub_1D92E1380(v1);
    if ((sub_1D93281A4() & 1) != 0 || (BSDispatchQueueAssertMain(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
    {
LABEL_19:
      v15 = sub_1D9328094();
      v0[16] = v15;
      v16 = swift_task_alloc();
      v0[17] = v16;
      *v16 = v0;
      v16[1] = sub_1D92E02A0;
      v11 = v0[8];
      v10 = MEMORY[0x1E69E85E0];
      v8 = (v0 + 5);
      v9 = v15;

      return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
    }

    v5 = Strong;
    v6 = [*(v0[15] + 64) allObjects];
    v7 = sub_1D9328024();

    if (v7 >> 62)
    {
      v8 = sub_1D9328544();
      v12 = v8;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_9:
        if (v12 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1DA72EA00](i, v7);
          }

          else
          {
            v14 = *(v7 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v14 respondsToSelector_])
          {
            [v14 controlInstanceDescriptorDidChange_];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_19;
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D92E0660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA58, &qword_1D932DF88);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D93280A4();
  v3[12] = sub_1D9328094();
  v6 = sub_1D9328064();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D92E0764, v6, v5);
}

uint64_t sub_1D92E0764()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    sub_1D9328144();
    v2 = sub_1D9328094();
    v0[16] = v2;
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1D92E08D4;
    v4 = v0[8];
    v5 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 5, v2, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D92E08D4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D92E0A18, v3, v2);
}

uint64_t sub_1D92E0A18()
{
  v1 = v0[5];
  if (v1 != 1)
  {
    sub_1D92E1380(v1);
    if ((sub_1D93281A4() & 1) != 0 || (BSDispatchQueueAssertMain(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
    {
LABEL_19:
      v15 = sub_1D9328094();
      v0[16] = v15;
      v16 = swift_task_alloc();
      v0[17] = v16;
      *v16 = v0;
      v16[1] = sub_1D92E08D4;
      v11 = v0[8];
      v10 = MEMORY[0x1E69E85E0];
      v8 = (v0 + 5);
      v9 = v15;

      return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
    }

    v5 = Strong;
    v6 = [*(v0[15] + 64) allObjects];
    v7 = sub_1D9328024();

    if (v7 >> 62)
    {
      v8 = sub_1D9328544();
      v12 = v8;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_9:
        if (v12 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1DA72EA00](i, v7);
          }

          else
          {
            v14 = *(v7 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v14 respondsToSelector_])
          {
            [v14 controlInstanceDescriptorDidChange_];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_19;
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D92E0C94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92D9CEC;

  return sub_1D92DF9F8(a1, a2, v6);
}

uint64_t sub_1D92E0D44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92DA198;

  return sub_1D92E002C(a1, a2, v6);
}

uint64_t sub_1D92E0DF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92DA198;

  return sub_1D92E0660(a1, a2, v6);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1D92E1150()
{
  result = qword_1ECAFCA40;
  if (!qword_1ECAFCA40)
  {
    type metadata accessor for ControlInstanceButton.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCA40);
  }

  return result;
}

unint64_t type metadata accessor for CHUISControlInstanceButton()
{
  result = qword_1ECAFCA48;
  if (!qword_1ECAFCA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFCA48);
  }

  return result;
}

uint64_t sub_1D92E11F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92E1264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92E12C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D92E0DF4(a1, v4, (v1 + 24));
}

void sub_1D92E1380(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1D92E141C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t (*a11)(uint64_t), uint64_t (*a12)(uint64_t))
{
  v19 = v12;
  v142 = a2;
  v129 = a1;
  v138 = a11;
  v128 = a10;
  v139 = sub_1D9326BE4();
  v141 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v140 = v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1D93268B4();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v134 = v107 - v23;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA70, &unk_1D932DFA0);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v127 = v107 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v123 = v107 - v27;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v122 = v107 - v28;
  v132 = a3;
  v133 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v121 = v107 - v30;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v32 = v107 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v111 = v107 - v35;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(a9, v128);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v37 = v107 - v36;
  v38 = v19 + *(*v19 + 104);
  v110 = v34;
  v39 = *(v34 + 56);
  v113 = v38;
  v117 = v33;
  v109 = v39;
  v39();
  v40 = *(*v19 + 112);
  v41 = v138(0);
  (*(*(v41 - 8) + 56))(v19 + v40, 1, 1, v41);
  v42 = v19 + *(*v19 + 136);
  v126 = v26;
  v43 = *(v26 + 56);
  v120 = v42;
  v128 = v25;
  v116 = v26 + 56;
  v115 = v43;
  v43();
  *(v19 + *(*v19 + 152)) = 0;
  *(v19 + *(*v19 + 160)) = 0;
  *(v19 + *(*v19 + 168)) = 0;
  *(v19 + *(*v19 + 208)) = 0;
  *(v19 + *(*v19 + 216)) = 0;
  *(v19 + *(*v19 + 224)) = MEMORY[0x1E69E7CD0];
  if (qword_1EDE3C840 != -1)
  {
    swift_once();
  }

  v138 = a12;
  sub_1D929CF00(qword_1EDE40100, v19 + *(*v19 + 200));
  v44 = v129;
  *(v19 + *(*v19 + 120)) = v129;
  v45 = v44;
  v46 = [v45 control];
  v47 = [v46 _loggingIdentifier];

  v48 = sub_1D9327F84();
  v50 = v49;

  v148 = 58;
  v149 = 0xE100000000000000;
  v129 = v45;
  [v45 contentType];
  v51 = sub_1D93282F4();
  MEMORY[0x1DA72E570](v51);

  v53 = v148;
  v52 = v149;
  v148 = v48;
  v149 = v50;

  MEMORY[0x1DA72E570](v53, v52);

  v54 = v149;
  v55 = (v19 + *(*v19 + 184));
  *v55 = v148;
  v55[1] = v54;
  v56 = v19 + *(*v19 + 144);
  *v56 = 0;
  *(v56 + 8) = 0;
  *(v56 + 16) = 1;
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *(v19 + *(*v19 + 232)) = 0;
  if (qword_1EDE3BF60 != -1)
  {
    swift_once();
  }

  v57 = v139;
  v58 = __swift_project_value_buffer(v139, qword_1EDE40088);
  v59 = *(*v19 + 176);
  v60 = *(v141 + 16);
  v107[1] = v141 + 16;
  v108 = v60;
  v60((v19 + v59), v58, v57);
  sub_1D929CF00(v142, v19 + *(*v19 + 192));
  v61 = *MEMORY[0x1E69E8650];
  v62 = v118;
  v63 = v119;
  (*(v118 + 104))(v32, v61, v119);
  v64 = v111;
  sub_1D93280E4();
  (*(v62 + 8))(v32, v63);
  v65 = v121;
  v66 = v117;
  (*(v110 + 32))(v121, v64, v117);
  (v109)(v65, 0, 1, v66);
  (*(v112 + 32))(v19 + *(*v19 + 96), v37, v114);
  v67 = v113;
  swift_beginAccess();
  sub_1D92C3C20(v65, v67, v132, v133);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA0, &qword_1D932DFD0);
  v68 = v130;
  v69 = v127;
  v70 = v61;
  v71 = v131;
  (*(v130 + 104))(v127, v70, v131);
  v72 = v122;
  v73 = v123;
  sub_1D93280E4();
  (*(v68 + 8))(v69, v71);
  v74 = v134;
  v75 = v128;
  (*(v126 + 32))(v134, v73, v128);
  (v115)(v74, 0, 1, v75);
  v76 = v72;
  v77 = v57;
  (*(v124 + 32))(v19 + *(*v19 + 128), v76, v125);
  v78 = v120;
  swift_beginAccess();
  sub_1D92C3C20(v74, v78, &qword_1ECAFCA68, &qword_1D932FE90);
  swift_endAccess();
  v148 = 0;
  v149 = 0xE000000000000000;
  sub_1D9328444();

  v148 = 0x536C6F72746E6F43;
  v149 = 0xEF2D6E6F69737365;
  v79 = v135;
  sub_1D93268A4();
  v80 = sub_1D9326894();
  (*(v136 + 8))(v79, v137);
  v144[0] = v80;
  v81 = sub_1D9328614();
  MEMORY[0x1DA72E570](v81);

  sub_1D9326AD4();
  v82 = v129;
  sub_1D9326A94();
  sub_1D929CF00(v19 + *(*v19 + 192), &v148);
  v83 = (v19 + *(*v19 + 144));
  swift_beginAccess();
  v84 = *v83;
  v85 = v83[1];
  v86 = *(v83 + 1);
  v87 = v83[16];
  v88 = *(v83 + 3);
  v89 = *(v83 + 4);
  LOBYTE(v144[0]) = v84;
  BYTE1(v144[0]) = v85;
  v144[1] = v86;
  v145 = v87;
  v146 = v88;
  v147 = v89;
  sub_1D929CF00(v19 + *(*v19 + 200), v143);
  type metadata accessor for ControlSession(0);
  swift_allocObject();

  v91 = sub_1D92D8EF4(v90, &v148, v144, v143);

  v92 = v140;
  v108(v140, v19 + *(*v19 + 176), v57);

  v93 = sub_1D9326BC4();
  v94 = sub_1D9328204();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v148 = v96;
    *v95 = 136446466;
    v97 = (v19 + *(*v19 + 184));
    v98 = *v97;
    v99 = v97[1];

    v100 = sub_1D9293524(v98, v99, &v148);

    *(v95 + 4) = v100;
    *(v95 + 12) = 2082;
    v101 = sub_1D9327F54();
    v103 = sub_1D9293524(v101, v102, &v148);

    *(v95 + 14) = v103;
    _os_log_impl(&dword_1D928E000, v93, v94, "[%{public}s] created new ControlInstance:%{public}s", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v96, -1, -1);
    MEMORY[0x1DA72F920](v95, -1, -1);

    (*(v141 + 8))(v140, v77);
  }

  else
  {

    (*(v141 + 8))(v92, v57);
  }

  v104 = *(*v19 + 168);
  v105 = *(v19 + v104);
  *(v19 + v104) = v91;

  v138(v105);

  __swift_destroy_boxed_opaque_existential_1Tm(v142);
  return v19;
}

uint64_t sub_1D92E2484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D92E0D44(a1, v4, (v1 + 24));
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92E257C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92D9CEC;

  return sub_1D92E0C94(a1, v4, (v1 + 24));
}

void sub_1D92E2634()
{
  v0 = sub_1D93268E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1D93268D4();
  v5 = sub_1D93268C4();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  qword_1ECAFCAE8 = v4;
}

void ControlInstanceConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t ControlInstanceConfiguration.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5[72] = *v0;
  v5[73] = v1;
  v6 = v2;
  v7 = v3;
  v8 = *(v0 + 24);
  sub_1D9328724();
  ControlInstanceConfiguration.hash(into:)(v5);
  return sub_1D9328764();
}

uint64_t ControlInstanceConfiguration.preferredColorScheme.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ControlInstanceConfiguration.launchOrigin.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ControlInstanceConfiguration.launchOrigin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ControlInstanceConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9328444();
  MEMORY[0x1DA72E570](60, 0xE100000000000000);
  MEMORY[0x1DA72E570](0xD00000000000001CLL, 0x80000001D932E030);
  MEMORY[0x1DA72E570](0xD000000000000021, 0x80000001D9336DD0);
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

  MEMORY[0x1DA72E570](v3, v4);

  MEMORY[0x1DA72E570](0xD000000000000019, 0x80000001D9336E00);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v5, v6);

  MEMORY[0x1DA72E570](0xD000000000000017, 0x80000001D9336E20);
  v7 = NSStringFromCHSColorScheme();
  v8 = sub_1D9327F84();
  v10 = v9;

  MEMORY[0x1DA72E570](v8, v10);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0;
}

uint64_t ControlInstanceConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  sub_1D9328744();
  sub_1D9328744();
  if (v3 != 1)
  {
    sub_1D9328744();
    MEMORY[0x1DA72ECE0](v2);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1D9328744();
  }

  sub_1D9328744();
  if (!v4)
  {
    return sub_1D9328744();
  }

LABEL_3:
  sub_1D9328744();

  return sub_1D9327FB4();
}

uint64_t sub_1D92E2B54()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5[72] = *v0;
  v5[73] = v1;
  v6 = v2;
  v7 = v3;
  v8 = *(v0 + 24);
  sub_1D9328724();
  ControlInstanceConfiguration.hash(into:)(v5);
  return sub_1D9328764();
}

uint64_t sub_1D92E2BC4(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6[72] = *v1;
  v6[73] = v2;
  v7 = v3;
  v8 = v4;
  v9 = *(v1 + 24);
  sub_1D9328724();
  ControlInstanceConfiguration.hash(into:)(v6);
  return sub_1D9328764();
}

uint64_t _s16ChronoUIServices28ControlInstanceConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v5 = *(a1 + 4);
    v6 = *(a2 + 3);
    v7 = *(a2 + 4);
    if (a1[16])
    {
      if (!a2[16])
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 1) == *(a2 + 1))
      {
        v8 = a2[16];
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!v7 || (*(a1 + 3) != v6 || v5 != v7) && (sub_1D9328654() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1D92E2CE0()
{
  result = qword_1ECAFCAF0;
  if (!qword_1ECAFCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCAF0);
  }

  return result;
}

uint64_t sub_1D92E2D34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1D92E2D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t PerformControlActionRequest.init(sessionKey:action:launchOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for PerformControlActionRequest(0);
  v11 = &a5[*(v10 + 24)];
  *a5 = a1;
  v12 = *(v10 + 20);
  v13 = sub_1D9327A94();
  result = (*(*(v13 - 8) + 32))(&a5[v12], a2, v13);
  *v11 = a3;
  *(v11 + 1) = a4;
  return result;
}

uint64_t type metadata accessor for PerformControlActionRequest(uint64_t a1)
{
  result = qword_1EDE3C208;
  if (!qword_1EDE3C208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerformControlActionRequest.sessionKey.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PerformControlActionRequest.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PerformControlActionRequest(0) + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PerformControlActionRequest.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PerformControlActionRequest(0) + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PerformControlActionRequest.launchOrigin.getter()
{
  v1 = *(v0 + *(type metadata accessor for PerformControlActionRequest(0) + 24));

  return v1;
}

uint64_t PerformControlActionRequest.launchOrigin.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PerformControlActionRequest(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t PerformControlActionRequest.description.getter()
{
  sub_1D9328444();

  sub_1D9326AD4();
  sub_1D92E3ADC(&qword_1ECAFC778, MEMORY[0x1E69940F8], MEMORY[0x1E6994110]);
  v1 = sub_1D9328614();
  MEMORY[0x1DA72E570](v1);

  MEMORY[0x1DA72E570](0x6E6F69746361202CLL, 0xE90000000000003DLL);
  v2 = type metadata accessor for PerformControlActionRequest(0);
  sub_1D9327A94();
  sub_1D92E3ADC(&qword_1ECAFC788, MEMORY[0x1E69858A8], MEMORY[0x1E69858C8]);
  v3 = sub_1D9328614();
  MEMORY[0x1DA72E570](v3);

  MEMORY[0x1DA72E570](0x4F68636E75616C20, 0xEE003D6E69676972);
  v4 = (v0 + *(v2 + 24));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1DA72E570](v5, v6);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0xD000000000000029;
}

uint64_t sub_1D92E332C()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x724F68636E75616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B6E6F6973736573;
  }
}

uint64_t sub_1D92E3390@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D92E3DF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D92E33B8(uint64_t a1)
{
  v2 = sub_1D92E366C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92E33F4(uint64_t a1)
{
  v2 = sub_1D92E366C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformControlActionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAF8, &qword_1D932E160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92E366C();
  sub_1D9328784();
  v11 = *v3;
  v10[7] = 0;
  sub_1D9326AD4();
  sub_1D92E3ADC(&qword_1EDE3BAD8, MEMORY[0x1E69940F8], MEMORY[0x1E6994100]);
  sub_1D9328604();
  if (!v2)
  {
    type metadata accessor for PerformControlActionRequest(0);
    v10[6] = 1;
    sub_1D9327A94();
    sub_1D92E3ADC(&qword_1EDE3B270, MEMORY[0x1E69858A8], MEMORY[0x1E69858B0]);
    sub_1D9328604();
    v10[5] = 2;
    sub_1D93285F4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D92E366C()
{
  result = qword_1EDE3C228[0];
  if (!qword_1EDE3C228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3C228);
  }

  return result;
}

uint64_t PerformControlActionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1D9327A94();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB00, &qword_1D932E168);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for PerformControlActionRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92E366C();
  v25 = v8;
  v12 = v26;
  sub_1D9328774();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v9;
  v13 = v23;
  sub_1D9326AD4();
  v29 = 0;
  sub_1D92E3ADC(&qword_1EDE3BAD0, MEMORY[0x1E69940F8], MEMORY[0x1E6994108]);
  sub_1D93285C4();
  v20[2] = v30;
  *v11 = v30;
  v28 = 1;
  sub_1D92E3ADC(&qword_1EDE3B268, MEMORY[0x1E69858A8], MEMORY[0x1E69858C0]);
  sub_1D93285C4();
  (*(v22 + 32))(&v11[*(v26 + 20)], v5, v3);
  v27 = 2;
  v20[1] = 0;
  v14 = sub_1D93285B4();
  v20[0] = v15;
  v16 = v14;
  v17 = &v11[*(v26 + 24)];
  (*(v13 + 8))(v25, v24);
  v18 = v20[0];
  *v17 = v16;
  v17[1] = v18;
  sub_1D92E3B24(v11, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D92E3B88(v11);
}

uint64_t sub_1D92E3ADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D92E3B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformControlActionRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92E3B88(uint64_t a1)
{
  v2 = type metadata accessor for PerformControlActionRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D92E3C40(uint64_t a1)
{
  sub_1D9326AD4();
  if (v1 <= 0x3F)
  {
    sub_1D9327A94();
    if (v2 <= 0x3F)
    {
      sub_1D92D040C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D92E3CF0()
{
  result = qword_1ECAFCB08;
  if (!qword_1ECAFCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCB08);
  }

  return result;
}

unint64_t sub_1D92E3D48()
{
  result = qword_1EDE3C218;
  if (!qword_1EDE3C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3C218);
  }

  return result;
}

unint64_t sub_1D92E3DA0()
{
  result = qword_1EDE3C220;
  if (!qword_1EDE3C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3C220);
  }

  return result;
}

uint64_t sub_1D92E3DF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B6E6F6973736573 && a2 == 0xEA00000000007965;
  if (v4 || (sub_1D9328654() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1D9328654() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x724F68636E75616CLL && a2 == 0xEC0000006E696769)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9328654();

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

id sub_1D92E4000(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1D9327F74();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D92E4078(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1D9327F84();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id CHUISControlPickerOption.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = (v0 + OBJC_IVAR___CHUISControlPickerOption_value);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___CHUISControlPickerOption_icon) = 0;
  *(v0 + OBJC_IVAR___CHUISControlPickerOption_tint) = 0;
  v2 = (v0 + OBJC_IVAR___CHUISControlPickerOption_status);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___CHUISControlPickerOption_actionHint);
  *v3 = 0;
  v3[1] = 0;
  v5.super_class = CHUISControlPickerOption;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D92E4298(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for ControlIconView(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v46 - v14;
  v15 = *a1;
  [v2 setState_];
  if (a1[2])
  {
    v16 = sub_1D9327F74();
  }

  else
  {
    v16 = 0;
  }

  [v2 setTitle_];

  v17 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  if (*(a1 + v17[8] + 8))
  {
    v18 = sub_1D9327F74();
  }

  else
  {
    v18 = 0;
  }

  [v2 setSubtitle_];

  sub_1D92E11F4(a1 + v17[7], v6);
  v19 = v7;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D92933A0(v6, &qword_1ECAFCA50, &unk_1D932DF60);
  }

  else
  {
    v20 = v47;
    sub_1D92E1264(v6, v47);
    v21 = v19;
    v19 = [v2 iconView];
    sub_1D92D30E0(v20, v13);
    *&v13[*(v21 + 5)] = [v19 style];
    v22 = v48;
    sub_1D92D30E0(v13, v48);
    sub_1D92D2694(v22);

    sub_1D92D2EB0(v13);
    sub_1D92D2EB0(v20);
  }

  [v2 setRedacted_];
  [v2 setDisabled_];
  [v2 setHasError_];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v23 = a1[3];
  if (v15 >= *(v23 + 16))
  {
LABEL_31:
    __break(1u);
    v45 = v19[3];
    v51 = v56;
    v52 = v45;
    v53 = v58;
    v49 = v54;
    v50 = v55;
    sub_1D92E5FC0(&v49);

    __break(1u);
    return result;
  }

  v24 = v23 + 32;
  v25 = v23 + 32 + 72 * v15;
  v62[0] = *v25;
  v26 = *(v25 + 16);
  v27 = *(v25 + 32);
  v28 = *(v25 + 48);
  v65 = *(v25 + 64);
  v63 = v27;
  v64 = v28;
  v62[1] = v26;
  if (*(&v62[0] + 1))
  {
    sub_1D92E5F64(v62, v60);

    v29 = sub_1D9327F74();
  }

  else
  {
    sub_1D92E5F64(v62, v60);
    v29 = 0;
  }

  v30 = v63;
  [v2 setCurrentValue_];

  if (v30 && (v31 = sub_1D9327344()) != 0)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v33 = 0;
  }

  [v2 setCurrentTint_];

  if (*(a1 + v17[14] + 8))
  {
    v34 = sub_1D9327F74();
  }

  else
  {
    v34 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  v36 = *(v23 + 16);
  if (v36)
  {
    v48 = v2;
    v59[1] = MEMORY[0x1E69E7CC0];
    v35 = sub_1D93284C4();
    if (*(v23 + 16))
    {
      v37 = 0;
      while (1)
      {
        v60[0] = *v24;
        v38 = *(v24 + 16);
        v39 = *(v24 + 32);
        v40 = *(v24 + 48);
        v61 = *(v24 + 64);
        v60[2] = v39;
        v60[3] = v40;
        v60[1] = v38;
        v41 = *(v24 + 32);
        v57 = *(v24 + 48);
        v58 = *(v24 + 64);
        v42 = *v24;
        v55 = *(v24 + 16);
        v56 = v41;
        v54 = v42;
        sub_1D92E5F64(v60, &v49);
        sub_1D92E4870(&v54, v59);
        v51 = v56;
        v52 = v57;
        v53 = v58;
        v49 = v54;
        v50 = v55;
        sub_1D92E5FC0(&v49);
        sub_1D93284A4();
        sub_1D93284D4();
        sub_1D93284E4();
        v35 = sub_1D93284B4();
        if (v36 - 1 == v37)
        {
          break;
        }

        v24 += 72;
        if (++v37 >= *(v23 + 16))
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      __break(1u);
    }

    v2 = v48;
  }

  type metadata accessor for CHUISControlPickerOption(v35);
  v43 = sub_1D9328014();

  [v2 setOptions_];

  return sub_1D92E5FC0(v62);
}

void sub_1D92E4870(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[6];
  v7 = a1[8];
  v8 = [objc_allocWithZone(CHUISControlPickerOption) init];
  if (v3)
  {
    v3 = sub_1D9327F74();
  }

  [v8 setValue_];

  [v8 setIcon_];
  if (v4 && (v9 = sub_1D9327344()) != 0)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v11 = 0;
  }

  [v8 setTint_];

  if (v6)
  {
    v12 = sub_1D9327F74();
  }

  else
  {
    v12 = 0;
  }

  [v8 setStatus_];

  if (v7)
  {
    v13 = sub_1D9327F74();
  }

  else
  {
    v13 = 0;
  }

  [v8 setActionHint_];

  *a2 = v8;
}

id CHUISControlInstancePicker.iconView.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  v2 = *(v4 + 24);

  return v2;
}

id CHUISControlInstancePicker.tintColor.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 currentTint];
  }

  else
  {

    return 0;
  }

  return v4;
}

id CHUISControlInstancePicker.state.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 state];
  }

  else
  {

    return 0;
  }

  return v4;
}

id sub_1D92E4E20(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D9327F74();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1D92E4EAC(SEL *a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = v4;

    v6 = [v5 *a1];

    if (v6)
    {
      v7 = sub_1D9327F84();

      return v7;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t CHUISControlInstancePicker.options.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v8 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 options];

    if (v4)
    {
      type metadata accessor for CHUISControlPickerOption(v5);
      v6 = sub_1D9328024();

      return v6;
    }
  }

  else
  {
  }

  return 0;
}

void *CHUISControlInstancePicker.viewModel.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v5 + 16);
  v3 = v2;

  return v2;
}

id CHUISControlInstancePicker.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

char *CHUISControlInstancePicker.init(instanceIdentity:)(void *a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v19.receiver = v2;
  v19.super_class = CHUISControlInstancePicker;
  v4 = objc_msgSendSuper2(&v19, sel_initWithInstanceIdentity_, a1);
  v5 = qword_1EDE3C588;
  v6 = v4;
  v7 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v18);
  type metadata accessor for ControlInstancePicker(0);
  swift_allocObject();
  sub_1D929CF00(v18, v15);
  v8 = sub_1D92E1390(v7, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_allocObject();
  v10 = sub_1D92DF7A8(v8);
  swift_unknownObjectWeakAssign();
  v18[3] = v9;
  v18[4] = &off_1F54C1D40;
  v18[0] = v10;
  v11 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&v6[v11], v15);
  v12 = v16;
  v13 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v13 + 120))(v12, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v6[v11], v18);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v6;
}

uint64_t CHUISControlInstancePicker.setState(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  v10 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v3 + v10, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  v11 = v15[1];
  BSDispatchQueueAssertMain();
  v12 = sub_1D93280D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;

  sub_1D92E5ECC(a2, a3);
  sub_1D9328194();

  return sub_1D92933A0(v9, &unk_1ECAFC910, &qword_1D932E360);
}

uint64_t sub_1D92E5970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  sub_1D93280A4();
  v5[9] = sub_1D9328094();
  v7 = sub_1D9328064();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D92E5A0C, v7, v6);
}

uint64_t sub_1D92E5A0C()
{
  v1 = v0[5];
  swift_beginAccess();
  v0[12] = *(v1 + 56);

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1D92E5ACC;
  v3 = v0[6];

  return sub_1D9307F38(v3);
}

uint64_t sub_1D92E5ACC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1D92E5C9C;
  }

  else
  {
    v5 = sub_1D92E5C24;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D92E5C24()
{
  v1 = *(v0 + 56);

  if (v1)
  {
    (*(v0 + 56))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D92E5C9C()
{
  v1 = v0[7];

  v2 = v0[14];
  if (v1)
  {
    v3 = v0[7];
    v4 = v2;
    v3(v2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D92E5D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D92D9CEC;

  return sub_1D92E5970(a1, a2, v10, a4, a5);
}

uint64_t sub_1D92E5E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92D9CEC;

  return sub_1D92E5D38(a1, v4, v1 + 3, v5, v6);
}

uint64_t sub_1D92E5ECC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D92E5EE0()
{
  result = qword_1ECAFCB40;
  if (!qword_1ECAFCB40)
  {
    type metadata accessor for ControlInstancePicker.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCB40);
  }

  return result;
}

uint64_t sub_1D92E5F4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t static ControlInstanceFactory.makeInstance(of:instanceIdentity:)@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  switch(result)
  {
    case 1:
      if (qword_1EDE3C588 != -1)
      {
        swift_once();
      }

      sub_1D929CF00(&qword_1EDE400D0, v13);
      type metadata accessor for ControlInstanceToggle(0);
      swift_allocObject();
      sub_1D929CF00(v13, v12);
      v10 = a2;
      v11 = sub_1D92E23F8(v10, v12);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v7 = v11 | 0x4000000000000000;
      break;
    case 3:
      if (qword_1EDE3C588 != -1)
      {
        swift_once();
      }

      sub_1D929CF00(&qword_1EDE400D0, v13);
      type metadata accessor for ControlInstancePicker(0);
      swift_allocObject();
      sub_1D929CF00(v13, v12);
      v8 = a2;
      v9 = sub_1D92E1390(v8, v12);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v7 = v9 | 0x8000000000000000;
      break;
    case 2:
      if (qword_1EDE3C588 != -1)
      {
        swift_once();
      }

      sub_1D929CF00(&qword_1EDE400D0, v13);
      type metadata accessor for ControlInstanceButton(0);
      v5 = swift_allocObject();
      *(v5 + qword_1EDE3CCC0) = 0;
      *(v5 + qword_1EDE3CCB0) = 0;
      *(v5 + qword_1EDE3CCC8) = 0;
      *(v5 + qword_1EDE3CCB8) = 0;
      sub_1D929CF00(v13, v12);
      v6 = a2;
      v7 = sub_1D92E0EA4(v6, v12);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
      break;
    default:
      v7 = 0xF000000000000007;
      break;
  }

  *a3 = v7;
  return result;
}

void static ControlInstanceFactory.makeInstance(identity:type:contentType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a3 hostIdentifier:0 configurationIdentifier:0];
  static ControlInstanceFactory.makeInstance(of:instanceIdentity:)(a2, v6, a4);
}

id CHUISControlToggleOption.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = (v0 + OBJC_IVAR___CHUISControlToggleOption_value);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___CHUISControlToggleOption_icon) = 0;
  *(v0 + OBJC_IVAR___CHUISControlToggleOption_tint) = 0;
  v2 = (v0 + OBJC_IVAR___CHUISControlToggleOption_status);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___CHUISControlToggleOption_actionHint);
  *v3 = 0;
  v3[1] = 0;
  v5.super_class = CHUISControlToggleOption;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1D92E6598(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  [v2 setState_];
  if (*(a1 + 2))
  {
    v17 = sub_1D9327F74();
  }

  else
  {
    v17 = 0;
  }

  [v2 setTitle_];

  if (*(a1 + 4))
  {
    v18 = sub_1D9327F74();
  }

  else
  {
    v18 = 0;
  }

  [v2 setSubtitle_];

  v19 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  if (*&a1[v19[8] + 8])
  {
    v20 = sub_1D9327F74();
  }

  else
  {
    v20 = 0;
  }

  [v2 setCurrentValue_];

  [v2 setRedacted_];
  [v2 setDisabled_];
  [v2 setHasError_];
  if (*&a1[v19[9]] && (v21 = sub_1D9327344()) != 0)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v23 = 0;
  }

  [v2 setCurrentTint_];

  if (*&a1[v19[16] + 8])
  {
    v24 = sub_1D9327F74();
  }

  else
  {
    v24 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  v25 = v19[7];
  sub_1D92E11F4(&a1[v25], v16);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    sub_1D92E7B44(v16);
    v27 = 0;
  }

  else
  {
    v27 = sub_1D92F656C();
    sub_1D92D2EB0(v16);
  }

  [v2 setIcon_];

  sub_1D92E11F4(&a1[v25], v14);
  if (v26(v14, 1, v4) == 1)
  {
    sub_1D92E7B44(v14);
  }

  else
  {
    v28 = v35;
    sub_1D92E1264(v14, v35);
    v29 = [v2 iconView];
    v30 = v37;
    sub_1D92D30E0(v28, v37);
    *(v30 + *(v4 + 20)) = [v29 style];
    v31 = v36;
    sub_1D92D30E0(v30, v36);
    sub_1D92D2694(v31);

    sub_1D92D2EB0(v30);
    sub_1D92D2EB0(v28);
  }

  v32 = sub_1D92E6A30(&a1[v19[10]]);
  [v2 setOnOption_];

  v33 = sub_1D92E6A30(&a1[v19[11]]);
  [v2 setOffOption_];
}
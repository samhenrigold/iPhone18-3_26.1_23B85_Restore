unint64_t sub_1D846779C()
{
  result = qword_1ECA38A88;
  if (!qword_1ECA38A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38A88);
  }

  return result;
}

uint64_t sub_1D84677F0(uint64_t a1)
{
  v4 = *v1;
  sub_1D8581B58();
  ChallengeDefinition.Trackable.hash(into:)(v3);
  return sub_1D8581B98();
}

GameServices::ChallengeDefinition::DurationComponent::TimeUnit_optional __swiftcall ChallengeDefinition.DurationComponent.TimeUnit.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ChallengeDefinition.DurationComponent.TimeUnit.rawValue.getter()
{
  result = 0x646E6F636573;
  switch(*v0)
  {
    case 1:
      result = 0x6574756E696DLL;
      break;
    case 2:
      result = 1920298856;
      break;
    case 3:
      result = 7954788;
      break;
    case 4:
      result = 1801807223;
      break;
    case 5:
      result = 0x68746E6F6DLL;
      break;
    case 6:
      result = 1918985593;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8467960(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_379(a1);
  v11 = OUTLINED_FUNCTION_483(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  a2(v11);
  return sub_1D8581B98();
}

uint64_t sub_1D84679AC(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D8467A68(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D8467BB0(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D8467CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1D8581B58();
  v12 = OUTLINED_FUNCTION_483(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  a3(v12);
  return sub_1D8581B98();
}

uint64_t sub_1D8467D04@<X0>(uint64_t *a1@<X8>)
{
  result = ChallengeDefinition.DurationComponent.TimeUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8467D2C()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482074();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D8467D74()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482074();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

GameServices::ChallengeDefinition::DurationComponent __swiftcall ChallengeDefinition.DurationComponent.init(unit:value:)(GameServices::ChallengeDefinition::DurationComponent::TimeUnit unit, Swift::Int value)
{
  *v2 = *unit;
  *(v2 + 8) = value;
  result.value = value;
  result.unit = unit;
  return result;
}

uint64_t static ChallengeDefinition.DurationComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D844A924(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1D8467E08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953066613 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(1953066613, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_439(1970037110);
    if (v3 && a2 == 0xE500000000000000)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_7(v5, 0xE500000000000000);
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_364();
      if (v3)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_1D8467EA4(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1953066613;
  }
}

uint64_t sub_1D8467ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8467E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8467F00()
{
  sub_1D847B38C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8467F38()
{
  sub_1D847B38C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.DurationComponent.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39158, &qword_1D8590F48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D847B38C();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_365();
  sub_1D8581BB8();
  sub_1D847B3E0();
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();
  if (!v0)
  {
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
  }

  v4 = OUTLINED_FUNCTION_291();
  v5(v4);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.DurationComponent.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D8467BB0(a1, *v1);
  return MEMORY[0x1DA7191F0](v2);
}

uint64_t ChallengeDefinition.DurationComponent.hashValue.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_379(a1);
  v9 = OUTLINED_FUNCTION_483(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  sub_1D8467BB0(v9, v10);
  v11 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v11);
  return sub_1D8581B98();
}

void ChallengeDefinition.DurationComponent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39168, &qword_1D8590F50);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_160();
  v34 = OUTLINED_FUNCTION_445();
  OUTLINED_FUNCTION_260(v34, v35);
  sub_1D847B38C();
  OUTLINED_FUNCTION_365();
  sub_1D8581BA8();
  if (!v24)
  {
    sub_1D847B434();
    OUTLINED_FUNCTION_272();
    sub_1D8581958();
    v36 = sub_1D8581938();
    (*(v32 + 8))(v25, v30);
    *v29 = a14;
    *(v29 + 8) = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84682FC(uint64_t a1)
{
  v1 = sub_1D8581B58();
  v9 = OUTLINED_FUNCTION_483(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  sub_1D8467BB0(v9, v10);
  v11 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v11);
  return sub_1D8581B98();
}

uint64_t static ChallengeDefinition.AttemptLimit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_205_0();
    }

    return OUTLINED_FUNCTION_192();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_192();
  }

  return *a1 == *a2;
}

uint64_t sub_1D8468378()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x646574696D696CLL && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(0x646574696D696CLL, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6574696D696C6E75 && v0 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_143(0x6574696D696C6E75, 100);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D846841C(char a1)
{
  if (a1)
  {
    return 0x6574696D696C6E75;
  }

  else
  {
    return 0x646574696D696CLL;
  }
}

uint64_t sub_1D8468458(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(0x746E756F63, 0xE500000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84684C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8468378();
  *a1 = result;
  return result;
}

uint64_t sub_1D84684EC()
{
  sub_1D847B488();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8468524()
{
  sub_1D847B488();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8468598()
{
  sub_1D847B530();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84685D0()
{
  sub_1D847B530();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8468608()
{
  sub_1D847B4DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8468640()
{
  sub_1D847B4DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.AttemptLimit.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39178, &qword_1D8590F58);
  OUTLINED_FUNCTION_1();
  v18 = v5;
  v19 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v7);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39180, &qword_1D8590F60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_250_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39188, &qword_1D8590F68);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_129();
  v13 = *(v0 + 8);
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B488();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  if (v13)
  {
    OUTLINED_FUNCTION_338();
    sub_1D847B4DC();
    OUTLINED_FUNCTION_274();
    sub_1D8581988();
    (*(v18 + 8))(v16, v19);
  }

  else
  {
    sub_1D847B530();
    OUTLINED_FUNCTION_274();
    sub_1D8581988();
    sub_1D8581A38();
    v14 = OUTLINED_FUNCTION_362();
    v15(v14, v17);
  }

  (*(v11 + 8))(v1, v9);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.AttemptLimit.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1DA7191F0](0);
  }

  return MEMORY[0x1DA7191F0](v1);
}

uint64_t ChallengeDefinition.AttemptLimit.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_379(a1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_529();
  }

  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  return sub_1D8581B98();
}

void ChallengeDefinition.AttemptLimit.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v40 = v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39190, &qword_1D8590F70);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_129();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39198, &qword_1D8590F78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_160();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391A0, &qword_1D8590F80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_128();
  v11 = OUTLINED_FUNCTION_496();
  OUTLINED_FUNCTION_260(v11, v12);
  sub_1D847B488();
  OUTLINED_FUNCTION_390();
  sub_1D8581BA8();
  if (!v0)
  {
    OUTLINED_FUNCTION_499();
    v13 = sub_1D8581968();
    sub_1D8440880(v13, 0);
    if (v15 != v14 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v20 == v21)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_517(v16, v17, v18, v19);
      OUTLINED_FUNCTION_503();
      v23 = v22;
      swift_unknownObjectRelease();
      if (!(v23 >> 1))
      {
        if (v4)
        {
          OUTLINED_FUNCTION_338();
          sub_1D847B4DC();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v24 = v40;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_267();
          v32(v2, v39);
          v33 = OUTLINED_FUNCTION_212_0();
          v34(v33, v9);
          v35 = 0;
        }

        else
        {
          sub_1D847B530();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v24 = v40;
          v35 = sub_1D8581938();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_265();
          v36(v1, v7);
          v37 = OUTLINED_FUNCTION_228();
          v38(v37);
        }

        *v24 = v35;
        *(v24 + 8) = v4;
        __swift_destroy_boxed_opaque_existential_1(v4);
        goto LABEL_10;
      }
    }

    v25 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v25, MEMORY[0x1E69E6B28]);
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v27 = &type metadata for ChallengeDefinition.AttemptLimit;
    OUTLINED_FUNCTION_499();
    sub_1D8581888();
    OUTLINED_FUNCTION_178();
    OUTLINED_FUNCTION_206_0();
    v28 = OUTLINED_FUNCTION_498();
    v29(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = OUTLINED_FUNCTION_212_0();
    v31(v30, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8468E6C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D8581B58();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_529();
  }

  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  return sub_1D8581B98();
}

GameServices::ChallengeDefinition::Version __swiftcall ChallengeDefinition.Version.init(platforms:minimumVersion:)(GameServices::GameDescription::CompatiblePlatforms platforms, Swift::String minimumVersion)
{
  *v2 = *platforms.rawValue;
  *(v2 + 8) = minimumVersion;
  result.minimumVersion = minimumVersion;
  result.platforms = platforms;
  return result;
}

uint64_t static ChallengeDefinition.Version.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (!sub_1D844AAA4(*a1, *a2))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  OUTLINED_FUNCTION_194();

  return sub_1D8581AB8();
}

uint64_t sub_1D8468F94()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x6D726F6674616C70 && v2 == 0xE900000000000073;
  if (v3 || (OUTLINED_FUNCTION_143(0x6D726F6674616C70, 115) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x566D756D696E696DLL && v0 == 0xEE006E6F69737265)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x566D756D696E696DLL, 0xEE006E6F69737265);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D8469040(char a1)
{
  if (a1)
  {
    return 0x566D756D696E696DLL;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

uint64_t sub_1D8469090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8468F94();
  *a1 = result;
  return result;
}

uint64_t sub_1D84690B8()
{
  sub_1D847B584();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84690F0()
{
  sub_1D847B584();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.Version.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391A8, &qword_1D8590F88);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D847B584();
  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  sub_1D847B5D8();
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();
  if (!v0)
  {
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
  }

  v4 = OUTLINED_FUNCTION_291();
  v5(v4);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.Version.hash(into:)()
{
  sub_1D847B62C();
  OUTLINED_FUNCTION_298();
  sub_1D85811E8();
  OUTLINED_FUNCTION_188();
  return sub_1D85812B8();
}

uint64_t ChallengeDefinition.Version.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  sub_1D847B62C();
  sub_1D85811E8();
  OUTLINED_FUNCTION_397();
  sub_1D85812B8();
  return sub_1D8581B98();
}

void ChallengeDefinition.Version.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_285();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391C0, &qword_1D8590F90);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_128();
  v16 = OUTLINED_FUNCTION_445();
  OUTLINED_FUNCTION_260(v16, v17);
  sub_1D847B584();
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_365();
  sub_1D8581BA8();
  if (!v10)
  {
    sub_1D847B680();
    OUTLINED_FUNCTION_222();
    sub_1D8581958();
    v18 = sub_1D8581908();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_233();
    v22(v21);
    *v14 = a10;
    v14[1] = v18;
    v14[2] = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84694FC(uint64_t a1)
{
  sub_1D8581B58();
  sub_1D847B62C();
  sub_1D85811E8();
  OUTLINED_FUNCTION_397();
  sub_1D85812B8();
  return sub_1D8581B98();
}

uint64_t sub_1D8469584(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001D8583870 == a2;
  if (v3 || (OUTLINED_FUNCTION_7(0xD000000000000010, 0x80000001D8583870) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8583890 == a2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0xD000000000000019, 0x80000001D8583890);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v7 + 1;
    }

    else
    {
      return v7;
    }
  }
}

unint64_t sub_1D8469634(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D8469678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8469584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84696A0()
{
  sub_1D847B6D4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84696D8()
{
  sub_1D847B6D4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8469710()
{
  sub_1D847B77C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8469748()
{
  sub_1D847B77C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8469780()
{
  sub_1D847B728();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84697B8()
{
  sub_1D847B728();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.ValidationError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391D0, &qword_1D8590F98);
  OUTLINED_FUNCTION_1();
  v42 = v28;
  v43 = v27;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_196();
  v41 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391D8, &qword_1D8590FA0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_250_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391E0, &qword_1D8590FA8);
  OUTLINED_FUNCTION_1();
  v34 = v33;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_129();
  v36 = *v23;
  OUTLINED_FUNCTION_260(v26, v26[3]);
  sub_1D847B6D4();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  v37 = (v34 + 8);
  if (v36)
  {
    OUTLINED_FUNCTION_338();
    sub_1D847B728();
    OUTLINED_FUNCTION_272();
    sub_1D8581988();
    (*(v42 + 8))(v41, v43);
  }

  else
  {
    sub_1D847B77C();
    OUTLINED_FUNCTION_272();
    sub_1D8581988();
    v38 = OUTLINED_FUNCTION_362();
    v40(v38, v39);
  }

  (*v37)(v24, v32);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.ValidationError.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  v1 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

void ChallengeDefinition.ValidationError.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v38 = v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391E8, &qword_1D8590FB0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_251();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391F0, &qword_1D8590FB8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_160();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391F8, &unk_1D8590FC0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_128();
  v10 = OUTLINED_FUNCTION_497();
  OUTLINED_FUNCTION_260(v10, v11);
  sub_1D847B6D4();
  OUTLINED_FUNCTION_390();
  sub_1D8581BA8();
  if (!v1)
  {
    OUTLINED_FUNCTION_499();
    v12 = sub_1D8581968();
    sub_1D8440880(v12, 0);
    if (v14 != v13 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v19 == v20)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_517(v15, v16, v17, v18);
      OUTLINED_FUNCTION_503();
      v22 = v21;
      swift_unknownObjectRelease();
      if (!(v22 >> 1))
      {
        if (v3)
        {
          OUTLINED_FUNCTION_338();
          sub_1D847B728();
          v23 = v0;
          v24 = v8;
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v25 = v38;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_265();
          v27 = v23;
          v28 = v39;
        }

        else
        {
          sub_1D847B77C();
          v24 = v8;
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v25 = v38;
          swift_unknownObjectRelease();
          v27 = OUTLINED_FUNCTION_275();
          v28 = v6;
        }

        v26(v27, v28);
        v36 = OUTLINED_FUNCTION_218();
        v37(v36, v24);
        *v25 = v3;
        __swift_destroy_boxed_opaque_existential_1(v3);
        goto LABEL_10;
      }
    }

    v29 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v29, MEMORY[0x1E69E6B28]);
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v31 = &type metadata for ChallengeDefinition.ValidationError;
    OUTLINED_FUNCTION_499();
    sub_1D8581888();
    OUTLINED_FUNCTION_178();
    OUTLINED_FUNCTION_206_0();
    v32 = OUTLINED_FUNCTION_498();
    v33(v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = OUTLINED_FUNCTION_212_0();
    v35(v34, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.groupId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ChallengeDefinition.artwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  memcpy(a1, (v1 + 80), 0x70uLL);
  return sub_1D847C204();
}

uint64_t ChallengeDefinition.image.getter@<X0>(void *a1@<X8>)
{
  result = *(v1 + 88);
  if (result)
  {
    v4 = *(v1 + 80);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

__n128 ChallengeDefinition.init(id:groupId:ref:title:description:image:tracking:durations:attemptLimits:isArchived:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = *a5;
  v20 = a5[1];
  v21 = a11[1];
  v31 = a12[1];
  v32 = *a12;
  if (v21)
  {
    v40 = *a11;
    v41 = v21;
    Ref<A>.artwork.getter(v37);

    v29 = v37[1];
    v30 = v37[0];
    v27 = v37[3];
    v28 = v37[2];
    v25 = v37[5];
    v26 = v37[4];
    v22 = v38;
    v21 = v39;
  }

  else
  {
    v22 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
  }

  v23 = sub_1D846B304(a14, &unk_1F5390418);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v19;
  *(a9 + 40) = v20;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 80) = v30;
  *(a9 + 96) = v29;
  *(a9 + 112) = v28;
  *(a9 + 128) = v27;
  result = v26;
  *(a9 + 144) = v26;
  *(a9 + 160) = v25;
  *(a9 + 176) = v22;
  *(a9 + 184) = v21;
  *(a9 + 192) = v32;
  *(a9 + 200) = v31;
  *(a9 + 208) = a13;
  *(a9 + 216) = (v23 & 1) == 0;
  *(a9 + 217) = a15 & 1;
  *(a9 + 224) = 0;
  *(a9 + 232) = 3;
  *(a9 + 240) = MEMORY[0x1E69E7CC0];
  *(a9 + 248) = a14;
  return result;
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:attemptLimits:isArchived:versions:releaseState:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, void *__src, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, uint64_t *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char *a40)
{
  OUTLINED_FUNCTION_516();
  v58 = v44;
  v56 = v45;
  v57 = v46;
  v54 = v47;
  OUTLINED_FUNCTION_486();
  v50 = *v48;
  v49 = v48[1];
  v51 = *a35;
  v53 = a35[1];
  v55 = *a40;
  v52 = (sub_1D846B304(a37, &unk_1F5390448) & 1) == 0;
  *v43 = v42;
  *(v43 + 8) = v41;
  *(v43 + 16) = v40;
  *(v43 + 24) = v54;
  *(v43 + 32) = v50;
  *(v43 + 40) = v49;
  *(v43 + 48) = v56;
  *(v43 + 56) = v57;
  *(v43 + 64) = v58;
  *(v43 + 72) = a33;
  memcpy((v43 + 80), a34, 0x70uLL);
  *(v43 + 192) = v51;
  *(v43 + 200) = v53;
  *(v43 + 208) = a36;
  *(v43 + 216) = v52;
  *(v43 + 217) = a38;
  *(v43 + 224) = a39;
  *(v43 + 232) = v55;
  *(v43 + 240) = MEMORY[0x1E69E7CC0];
  *(v43 + 248) = a37;
  OUTLINED_FUNCTION_515();
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:attemptLimits:isArchived:versions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, uint64_t *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37)
{
  OUTLINED_FUNCTION_516();
  v53 = v41;
  v54 = v42;
  v52 = v43;
  v45 = v44;
  OUTLINED_FUNCTION_486();
  v47 = *v46;
  v48 = v46[1];
  v50 = a33[1];
  v51 = *a33;
  v49 = (sub_1D846B304(a35, &unk_1F5390478) & 1) == 0;
  *v40 = v39;
  *(v40 + 8) = v38;
  *(v40 + 16) = v37;
  *(v40 + 24) = v45;
  *(v40 + 32) = v47;
  *(v40 + 40) = v48;
  *(v40 + 48) = v52;
  *(v40 + 56) = v53;
  *(v40 + 64) = v54;
  *(v40 + 72) = a31;
  memcpy((v40 + 80), a32, 0x70uLL);
  *(v40 + 192) = v51;
  *(v40 + 200) = v50;
  *(v40 + 208) = a34;
  *(v40 + 216) = v49;
  *(v40 + 217) = a36;
  *(v40 + 224) = a37;
  *(v40 + 232) = 3;
  *(v40 + 240) = MEMORY[0x1E69E7CC0];
  *(v40 + 248) = a35;
  OUTLINED_FUNCTION_515();
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:isRepeatable:isArchived:versions:releaseState:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, void *__src, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, uint64_t *a35, uint64_t a36, unsigned __int8 a37, char a38, uint64_t a39, char *a40)
{
  OUTLINED_FUNCTION_516();
  v63 = v40;
  v61 = v41;
  v62 = v42;
  v59 = v43;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = *v52;
  v54 = v52[1];
  v55 = *a35;
  v58 = a35[1];
  v60 = *a40;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39208, &unk_1D8590FD0);
  v57 = OUTLINED_FUNCTION_532(v56);
  OUTLINED_FUNCTION_308(v57, xmmword_1D8590A70)[2].n128_u8[8] = a37;
  *v51 = v49;
  *(v51 + 8) = v47;
  *(v51 + 16) = v45;
  *(v51 + 24) = v59;
  *(v51 + 32) = v53;
  *(v51 + 40) = v54;
  *(v51 + 48) = v61;
  *(v51 + 56) = v62;
  *(v51 + 64) = v63;
  *(v51 + 72) = a33;
  memcpy((v51 + 80), a34, 0x70uLL);
  *(v51 + 192) = v55;
  *(v51 + 200) = v58;
  *(v51 + 208) = a36;
  *(v51 + 216) = a37;
  *(v51 + 217) = a38;
  *(v51 + 224) = a39;
  *(v51 + 232) = v60;
  *(v51 + 240) = MEMORY[0x1E69E7CC0];
  *(v51 + 248) = v57;
  OUTLINED_FUNCTION_515();
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:isRepeatable:isArchived:versions:releaseState:validationErrors:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *__src, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, uint64_t *a37, uint64_t a38, unsigned __int8 a39, char a40, uint64_t a41, char *a42, uint64_t a43)
{
  OUTLINED_FUNCTION_513();
  v66 = v43;
  v64 = v44;
  v65 = v45;
  v61 = v46;
  v62 = v47;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = *v54;
  v56 = v54[1];
  v57 = *a37;
  v58 = a37[1];
  v63 = *a42;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39208, &unk_1D8590FD0);
  v60 = OUTLINED_FUNCTION_532(v59);
  OUTLINED_FUNCTION_308(v60, xmmword_1D8590A70)[2].n128_u8[8] = a39;
  *v53 = v51;
  *(v53 + 8) = v49;
  *(v53 + 16) = v61;
  *(v53 + 24) = v62;
  *(v53 + 32) = v55;
  *(v53 + 40) = v56;
  *(v53 + 48) = v64;
  *(v53 + 56) = v65;
  *(v53 + 64) = v66;
  *(v53 + 72) = a35;
  memcpy((v53 + 80), a36, 0x70uLL);
  *(v53 + 192) = v57;
  *(v53 + 200) = v58;
  *(v53 + 208) = a38;
  *(v53 + 216) = a39;
  *(v53 + 217) = a40;
  *(v53 + 224) = a41;
  *(v53 + 232) = v63;
  *(v53 + 240) = a43;
  *(v53 + 248) = v60;
  OUTLINED_FUNCTION_514();
}

void static ChallengeDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v59 = v2[5];
  v60 = v2[4];
  v55 = v2[7];
  v56 = v2[6];
  v50 = v2[8];
  v52 = v2[9];
  memcpy(__dst, v2 + 10, sizeof(__dst));
  v46 = v3[24];
  v48 = v3[25];
  v44 = v3[26];
  v42 = *(v3 + 216);
  v40 = *(v3 + 217);
  v38 = v3[28];
  v36 = *(v3 + 232);
  v34 = v3[30];
  v32 = v3[31];
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v57 = v1[5];
  v58 = v1[4];
  v53 = v1[7];
  v54 = v1[6];
  v49 = v1[8];
  v51 = v1[9];
  memcpy(v68, v1 + 10, sizeof(v68));
  v45 = v1[24];
  v47 = v1[25];
  v43 = v1[26];
  v41 = *(v1 + 216);
  v39 = *(v1 + 217);
  v37 = v1[28];
  v35 = *(v1 + 232);
  v12 = v4 == v8 && v5 == v9;
  v33 = v1[30];
  v31 = v1[31];
  if (!v12)
  {
    OUTLINED_FUNCTION_339();
    if ((sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (v7)
  {
    if (!v10)
    {
      goto LABEL_38;
    }

    v13 = v6 == v11 && v7 == v10;
    if (!v13 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v10)
  {
    goto LABEL_38;
  }

  if ((sub_1D844A4B0(v60, v59, v58, v57, &qword_1ECA38A78, &unk_1D85A22B0) & 1) == 0)
  {
    goto LABEL_38;
  }

  v14 = v56 == v54 && v55 == v53;
  if (!v14 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v52)
  {
    if (!v51)
    {
      goto LABEL_38;
    }

    v15 = v50 == v49 && v52 == v51;
    if (!v15 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v51)
  {
    goto LABEL_38;
  }

  v16 = __dst[0];
  v17 = __dst[1];
  v19 = v68[0];
  v18 = v68[1];
  if (__dst[1])
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    OUTLINED_FUNCTION_381(__src);
    memcpy(v64, __src, sizeof(v64));
    if (v18)
    {
      memcpy(&v63[2], v1 + 12, 0x60uLL);
      v63[0] = v19;
      v63[1] = v18;
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_303();
      sub_1D847B878();
      v20 = sub_1D8581208();
      memcpy(v61, v63, sizeof(v61));
      sub_1D847B824(v61);
      memcpy(v62, v64, sizeof(v62));
      sub_1D847B824(v62);
      v63[0] = v16;
      v63[1] = v17;
      memcpy(&v63[2], v3 + 12, 0x60uLL);
      OUTLINED_FUNCTION_397();
      sub_1D8436E18(v21, v22, v23);
      if ((v20 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    memcpy(v63, __src, sizeof(v63));
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_303();
    sub_1D847B824(v63);
LABEL_37:
    __src[0] = v16;
    __src[1] = v17;
    memcpy(&__src[2], v3 + 12, 0x60uLL);
    __src[14] = v19;
    __src[15] = v18;
    memcpy(v66, v1 + 12, sizeof(v66));
    sub_1D8436E18(__src, &qword_1ECA39210, &qword_1D859A9A0);
    goto LABEL_38;
  }

  if (v68[1])
  {
    sub_1D847C204();
    sub_1D847C204();
    goto LABEL_37;
  }

  __src[0] = __dst[0];
  __src[1] = 0;
  OUTLINED_FUNCTION_381(__src);
  OUTLINED_FUNCTION_361();
  sub_1D847C204();
  OUTLINED_FUNCTION_361();
  sub_1D847C204();
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v24, v25, v26);
LABEL_40:
  if (v48)
  {
    if (!v47)
    {
      goto LABEL_38;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v27 = sub_1D844A4B0(v46, v48, v45, v47, &qword_1ECA38A90, &qword_1D8590AB0);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if ((v27 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v47)
    {
      goto LABEL_38;
    }

    swift_bridgeObjectRelease_n();
  }

  if ((sub_1D846B080(v44, v43) & 1) != 0 && ((v42 ^ v41) & 1) == 0 && ((v40 ^ v39) & 1) == 0)
  {
    if (v38)
    {
      if (!v37)
      {
        goto LABEL_38;
      }

      v28 = OUTLINED_FUNCTION_194();
      v30 = sub_1D846B138(v28, v29);

      if ((v30 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v37)
    {
      goto LABEL_38;
    }

    if (v36 == 3)
    {
      if (v35 != 3)
      {
        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(__src[0]) = v36;
      if (v35 == 3)
      {
        goto LABEL_38;
      }

      v64[0] = v35;
      sub_1D847B7D0();
      if ((sub_1D8581208() & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (sub_1D846B294(v34, v33))
    {
      sub_1D846B304(v32, v31);
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D846AD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
      sub_1D848211C(&unk_1ECA394B8);
      v5 = a1 + 40;
      v6 = a2 + 40;
      do
      {

        v7 = sub_1D8581208();

        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 16;
        v6 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D846AE70(uint64_t a1, uint64_t a2)
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
      v5 = v3 + 2;
      v6 = *v3;
      v7 = *v4;
      v8 = 0xE600000000000000;
      v9 = 0x646E6F636573;
      switch(*(v3 - 8))
      {
        case 1:
          v9 = 0x6574756E696DLL;
          break;
        case 2:
          v8 = 0xE400000000000000;
          v9 = 1920298856;
          break;
        case 3:
          v8 = 0xE300000000000000;
          v9 = 7954788;
          break;
        case 4:
          v8 = 0xE400000000000000;
          v9 = 1801807223;
          break;
        case 5:
          v8 = 0xE500000000000000;
          v9 = 0x68746E6F6DLL;
          break;
        case 6:
          v8 = 0xE400000000000000;
          v9 = 1918985593;
          break;
        default:
          break;
      }

      v10 = 0xE600000000000000;
      v11 = 0x646E6F636573;
      switch(*(v4 - 8))
      {
        case 1:
          v11 = 0x6574756E696DLL;
          break;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1920298856;
          break;
        case 3:
          v10 = 0xE300000000000000;
          v11 = 7954788;
          break;
        case 4:
          v10 = 0xE400000000000000;
          v11 = 1801807223;
          break;
        case 5:
          v10 = 0xE500000000000000;
          v11 = 0x68746E6F6DLL;
          break;
        case 6:
          v10 = 0xE400000000000000;
          v11 = 1918985593;
          break;
        default:
          break;
      }

      if (v9 == v11 && v8 == v10)
      {

        if (v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_1D8581AB8();

        result = 0;
        if ((v13 & 1) == 0 || v6 != v7)
        {
          return result;
        }
      }

      v4 += 2;
      v3 = v5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D846B080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1D846AE70(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D846B138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_1D84820C8();
    v5 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = *(i - 1);
      v10 = *i;

      sub_1D85813D8();
      sub_1D85813D8();
      if (v15 != v14)
      {
        break;
      }

      if (v8 == v9 && v7 == v10)
      {
      }

      else
      {
        v12 = sub_1D8581AB8();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      v5 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D846B294(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D846B304(uint64_t a1, uint64_t a2)
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
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
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

uint64_t sub_1D846B378(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7(0x644970756F7267, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_484();
      v8 = a1 == v7 && a2 == 0xE300000000000000;
      if (v8 || (v9 = OUTLINED_FUNCTION_35_0(), (OUTLINED_FUNCTION_7(v9, v10) & 1) != 0))
      {

        return 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_439(1819568500);
        v12 = v3 && a2 == 0xE500000000000000;
        if (v12 || (OUTLINED_FUNCTION_7(v11, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_473();
          v15 = a1 == v13 && a2 == v14;
          if (v15 || (OUTLINED_FUNCTION_7(v13, v14) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v16 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
            if (v16 || (OUTLINED_FUNCTION_7(0x6B726F77747261, 0xE700000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = OUTLINED_FUNCTION_440();
              v18 = v3 && a2 == 0xE800000000000000;
              if (v18 || (OUTLINED_FUNCTION_7(v17, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v19 = OUTLINED_FUNCTION_171();
                v21 = a1 == v19 && a2 == v20;
                if (v21 || (OUTLINED_FUNCTION_143(v19, 115) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v22 = OUTLINED_FUNCTION_472();
                  v24 = a1 == v22 && a2 == v23;
                  if (v24 || (OUTLINED_FUNCTION_7(v22, v23) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v25 = OUTLINED_FUNCTION_441();
                    v27 = v3 && a2 == v26;
                    if (v27 || (OUTLINED_FUNCTION_7(v25, 0xEA00000000006465) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v28 = a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000;
                      if (v28 || (OUTLINED_FUNCTION_7(0x736E6F6973726576, 0xE800000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v29 = OUTLINED_FUNCTION_223();
                        v31 = a1 == v29 && a2 == v30;
                        if (v31 || (OUTLINED_FUNCTION_7(v29, v30) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_184_0();
                          v34 = a1 == v33 && v32 == a2;
                          if (v34 || (OUTLINED_FUNCTION_7(0xD000000000000010, v32) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v35 = OUTLINED_FUNCTION_448();
                            if (a1 == v35 && a2 == v36)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_7(v35, v36);
                              OUTLINED_FUNCTION_369();
                              if (a1)
                              {
                                return 13;
                              }

                              else
                              {
                                return 14;
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
      }
    }
  }
}

uint64_t sub_1D846B668(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x644970756F7267;
      break;
    case 2:
      result = OUTLINED_FUNCTION_391();
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = OUTLINED_FUNCTION_473();
      break;
    case 5:
      result = 0x6B726F77747261;
      break;
    case 6:
      result = OUTLINED_FUNCTION_318();
      break;
    case 7:
      result = OUTLINED_FUNCTION_171();
      break;
    case 8:
      result = OUTLINED_FUNCTION_472();
      break;
    case 9:
      result = 0x7669686372417369;
      break;
    case 10:
      result = 0x736E6F6973726576;
      break;
    case 11:
      result = OUTLINED_FUNCTION_223();
      break;
    case 12:
      result = OUTLINED_FUNCTION_351();
      break;
    case 13:
      result = OUTLINED_FUNCTION_448();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846B7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D846B378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D846B7DC()
{
  sub_1D847B8CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846B814()
{
  sub_1D847B8CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39228, &qword_1D8590FE0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_110();
  v13 = v0[4];
  v12 = v0[5];
  memcpy(v16, v0 + 10, sizeof(v16));
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B8CC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477(v7);
  LOBYTE(v15[0]) = 0;
  sub_1D8581A08();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_238();
    v9(v8);
  }

  else
  {
    sub_1D8581998();
    v15[0] = v13;
    v15[1] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A78, &unk_1D85A22B0);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v10);
    OUTLINED_FUNCTION_488();
    sub_1D8581A58();

    sub_1D8581A08();
    LOBYTE(v15[0]) = 4;
    sub_1D8581998();
    OUTLINED_FUNCTION_530(v15);
    v14[119] = 5;
    sub_1D847C204();
    sub_1D847B920();
    sub_1D85819E8();
    memcpy(v14, v15, 0x70uLL);
    sub_1D8436E18(v14, &qword_1ECA39200, &qword_1D859A990);
    sub_1D8466B2C();

    sub_1D8581A58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39238, &qword_1D8590FE8);
    sub_1D847B974();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_244();
    sub_1D8581A58();
    sub_1D8581A18();
    sub_1D8581A18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39248, &qword_1D8590FF0);
    sub_1D847B9F8();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_244();
    sub_1D85819E8();
    sub_1D8466A84();
    OUTLINED_FUNCTION_488();
    sub_1D85819E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39260, &qword_1D8590FF8);
    sub_1D847BAD0();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_488();
    sub_1D8581A58();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39278, &qword_1D8591000);
    sub_1D847BBA8();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_488();
    sub_1D8581A58();
    (*(v5 + 8))(v11);
  }

  OUTLINED_FUNCTION_284_0();
}

void ChallengeDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  v16 = *(v0 + 80);
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v19 = *(v0 + 208);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  v22 = *(v0 + 240);
  v23 = *(v0 + 248);
  sub_1D85812B8();
  if (v3)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_164();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v26[0] = v5;
  v26[1] = v4;
  v8 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v10);
  OUTLINED_FUNCTION_445();
  sub_1D85811E8();
  sub_1D85812B8();
  if (v6)
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_381(__src);
    __src[0] = v16;
    __src[1] = v7;
    OUTLINED_FUNCTION_414();
    v25[0] = v16;
    v25[1] = v7;
    OUTLINED_FUNCTION_381(v25);
    sub_1D847BC2C(v25, v26);
    sub_1D847BC88();
    sub_1D85811E8();
    memcpy(v26, __src, 0x70uLL);
    sub_1D847B824(v26);
    if (v18)
    {
LABEL_9:
      OUTLINED_FUNCTION_429();
      v26[0] = v17;
      v26[1] = v18;
      v11 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      OUTLINED_FUNCTION_6();
      sub_1D848211C(v13);
      OUTLINED_FUNCTION_7_0();
      sub_1D85811E8();
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_402();
    if (v18)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_447();
LABEL_12:
  sub_1D847370C(v2, v19);
  sub_1D8581B78();
  sub_1D8581B78();
  if (v20)
  {
    OUTLINED_FUNCTION_414();
    v14 = OUTLINED_FUNCTION_188();
    sub_1D8473658(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (v21 == 3)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    LOBYTE(v26[0]) = v21;
    OUTLINED_FUNCTION_414();
    sub_1D846779C();
    sub_1D85811E8();
  }

  sub_1D8473608(v2, v22);
  sub_1D8473598(v2, v23);
  OUTLINED_FUNCTION_388();
}

uint64_t ChallengeDefinition.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  ChallengeDefinition.hash(into:)();
  return sub_1D8581B98();
}

void ChallengeDefinition.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39290, &qword_1D8591008);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_199();
  v7 = v2[3];
  v8 = OUTLINED_FUNCTION_509();
  OUTLINED_FUNCTION_260(v8, v9);
  sub_1D847B8CC();
  OUTLINED_FUNCTION_365();
  sub_1D8581BA8();
  if (v0)
  {
    OUTLINED_FUNCTION_115();
    __swift_destroy_boxed_opaque_existential_1(v2);

    if (v7)
    {

      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v4)
    {
LABEL_5:
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_530(&v38);
    sub_1D8436E18(&v38, &qword_1ECA39200, &qword_1D859A990);
    if (v5)
    {
LABEL_6:

      if ((v36 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v36)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v38) = 0;
  OUTLINED_FUNCTION_236_0();
  v10 = sub_1D8581908();
  v35 = v11;
  OUTLINED_FUNCTION_81_0(1);
  v27 = sub_1D8581898();
  v65 = v12;
  v13 = OUTLINED_FUNCTION_258();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_164();
  sub_1D848211C(v15);
  OUTLINED_FUNCTION_71();
  sub_1D8581958();
  v16 = v38;
  v34 = v39;
  OUTLINED_FUNCTION_81_0(3);
  v26 = sub_1D8581908();
  v33 = v17;
  OUTLINED_FUNCTION_81_0(4);
  v25 = sub_1D8581898();
  v32 = v18;
  v60 = 5;
  sub_1D847BCDC();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_236_0();
  sub_1D85818E8();
  memcpy(v64, v61, sizeof(v64));
  sub_1D84738D0();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_236_0();
  sub_1D8581958();
  v19 = v38;
  v31 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39238, &qword_1D8590FE8);
  sub_1D847BD30();
  OUTLINED_FUNCTION_71();
  sub_1D8581958();
  v30 = v38;
  OUTLINED_FUNCTION_81_0(8);
  v24 = sub_1D8581918();
  OUTLINED_FUNCTION_81_0(9);
  v23 = sub_1D8581918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39248, &qword_1D8590FF0);
  sub_1D847BDB4();
  OUTLINED_FUNCTION_71();
  sub_1D85818E8();
  v29 = v38;
  sub_1D847387C();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_236_0();
  sub_1D85818E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39260, &qword_1D8590FF8);
  LOBYTE(v37[0]) = 12;
  sub_1D847BE8C();
  OUTLINED_FUNCTION_71();
  sub_1D8581958();
  v28 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39278, &qword_1D8591000);
  v58 = 13;
  sub_1D847BF64();
  OUTLINED_FUNCTION_236_0();
  sub_1D8581958();
  v20 = OUTLINED_FUNCTION_77_0();
  v21(v20);
  v22 = v59;
  v37[0] = v10;
  v37[1] = v35;
  v37[2] = v27;
  v37[3] = v65;
  v37[4] = v16;
  v37[5] = v34;
  v37[6] = v26;
  v37[7] = v33;
  v37[8] = v25;
  v37[9] = v32;
  OUTLINED_FUNCTION_530(&v37[10]);
  v37[24] = v19;
  v37[25] = v31;
  v37[26] = v30;
  LOBYTE(v37[27]) = v24 & 1;
  BYTE1(v37[27]) = v23 & 1;
  v37[28] = v29;
  LOBYTE(v37[29]) = 0;
  v37[30] = v28;
  v37[31] = v22;
  memcpy(v4, v37, 0x100uLL);
  sub_1D847BFE8(v37, &v38);
  __swift_destroy_boxed_opaque_existential_1(v2);
  v38 = v10;
  v39 = v35;
  v40 = v27;
  v41 = v65;
  v42 = v16;
  v43 = v34;
  v44 = v26;
  v45 = v33;
  v46 = v25;
  v47 = v32;
  OUTLINED_FUNCTION_530(v48);
  v48[14] = v19;
  v48[15] = v31;
  v48[16] = v30;
  v49 = v24 & 1;
  v50 = v23 & 1;
  v51 = *&v62[7];
  v52 = v63;
  v53 = v29;
  v54 = 0;
  *v55 = *v62;
  *&v55[3] = *&v62[3];
  v56 = v28;
  v57 = v22;
  sub_1D847C020(&v38);
LABEL_12:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D846C838(uint64_t a1)
{
  sub_1D8581B58();
  ChallengeDefinition.hash(into:)();
  return sub_1D8581B98();
}

uint64_t ChallengeDescription.startTime.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = *(type metadata accessor for ChallengeDescription(v2) + 36);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t ChallengeDescription.duration.getter()
{
  type metadata accessor for ChallengeDescription(0);
}

uint64_t ChallengeDescription.attemptsLimit.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for ChallengeDescription(v2);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

void ChallengeDescription.init(id:ref:creator:definition:startTime:duration:attemptsLimit:)()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v39 = v12;
  v14 = v13;
  v15 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v21 = v20 - v19;
  v35 = v11[1];
  v36 = *v11;
  v22 = *v9;
  v23 = v9[1];
  v34 = v22;
  v24 = *v7;
  v25 = v7[1];
  v38 = *v1;
  v37 = *(v1 + 8);
  v42[2] = *v7;
  v42[3] = v25;
  Ref<A>.game.getter(v42);
  v26 = v42[0];
  v33 = v42[1];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392D0, &qword_1D8591010);
  v28 = OUTLINED_FUNCTION_532(v27);
  *(v28 + 16) = xmmword_1D8590A70;
  *(v28 + 32) = v26;
  *(v28 + 40) = v33;
  v29 = OUTLINED_FUNCTION_305();
  v30(v29);
  if (*(v28 + 16))
  {
    (*(v17 + 8))(v5, v15);
    *v14 = v39;
    *(v14 + 1) = v40;
    *(v14 + 2) = v36;
    *(v14 + 3) = v35;
    *(v14 + 4) = v34;
    *(v14 + 5) = v23;
    *(v14 + 6) = v24;
    *(v14 + 7) = v25;
    *(v14 + 8) = v28;
    v31 = type metadata accessor for ChallengeDescription(0);
    (*(v17 + 32))(&v14[v31[9]], v21, v15);
    *&v14[v31[10]] = v41;
    v32 = &v14[v31[11]];
    *v32 = v38;
    v32[8] = v37;
    OUTLINED_FUNCTION_388();
  }

  else
  {
    OUTLINED_FUNCTION_387("Fatal error", "GameServices/ChallengeServiceProtocol.swift", "an't be both nil", 488, 0);
    __break(1u);
  }
}

void *ChallengeDescription.init(id:ref:creator:definition:games:startTime:duration:attemptsLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  if (*(a6 + 16))
  {
    v13 = *(a10 + 8);
    v14 = *a10;
    v16 = *a5;
    v15 = a5[1];
    v18 = *a4;
    v17 = a4[1];
    v20 = *a3;
    v19 = a3[1];
    *a9 = a1;
    *(a9 + 1) = a2;
    *(a9 + 2) = v20;
    *(a9 + 3) = v19;
    *(a9 + 4) = v18;
    *(a9 + 5) = v17;
    *(a9 + 6) = v16;
    *(a9 + 7) = v15;
    *(a9 + 8) = a6;
    v21 = type metadata accessor for ChallengeDescription(0);
    v22 = v21[9];
    sub_1D8580EA8();
    OUTLINED_FUNCTION_4_0();
    result = (*(v23 + 32))(&a9[v22], a7);
    *&a9[v21[10]] = a8;
    v25 = &a9[v21[11]];
    *v25 = v14;
    v25[8] = v13;
  }

  else
  {
    result = OUTLINED_FUNCTION_387("Fatal error", "GameServices/ChallengeServiceProtocol.swift", "an't be both nil", 488, 0);
    __break(1u);
  }

  return result;
}

uint64_t static ChallengeDescription.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D844A4B0(v1[2], v1[3], v0[2], v0[3], &qword_1ECA38B48, &qword_1D8590B40) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D844A4B0(v1[4], v1[5], v0[4], v0[5], &qword_1ECA389B8, &qword_1D8590B30) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D844A4B0(v1[6], v1[7], v0[6], v0[7], &qword_1ECA38A78, &unk_1D85A22B0) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D846AD48(v1[8], v0[8]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ChallengeDescription(0);
  if ((_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D846AE70(*(v1 + *(v4 + 40)), *(v0 + *(v4 + 40))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 44);
  v6 = (v1 + v5);
  v7 = *(v1 + v5 + 8);
  v8 = (v0 + v5);
  v9 = *(v0 + v5 + 8);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D846CE14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_484();
    v7 = a1 == v6 && a2 == 0xE300000000000000;
    if (v7 || (v8 = OUTLINED_FUNCTION_35_0(), (OUTLINED_FUNCTION_7(v8, v9) & 1) != 0))
    {

      return 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_172();
      v11 = a1 == v10 && a2 == 0xE700000000000000;
      if (v11 || (OUTLINED_FUNCTION_7(v10, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_237();
        v14 = a1 == v12 && a2 == v13;
        if (v14 || (OUTLINED_FUNCTION_7(v12, 0xEA00000000006E6FLL) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v15 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
          if (v15 || (OUTLINED_FUNCTION_7(0x73656D6167, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_392();
            v17 = a1 == 0x6D69547472617473 && a2 == v16;
            if (v17 || (OUTLINED_FUNCTION_143(0x6D69547472617473, 101) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v18 = OUTLINED_FUNCTION_171();
              v19 = a1 == v18 && a2 == 0xE800000000000000;
              if (v19 || (OUTLINED_FUNCTION_7(v18, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v20 = OUTLINED_FUNCTION_268();
                if (a1 == v20 && a2 == v21)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_7(v20, v21);
                  OUTLINED_FUNCTION_369();
                  if (a1)
                  {
                    return 7;
                  }

                  else
                  {
                    return 8;
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

uint64_t sub_1D846CFE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_391();
      break;
    case 2:
      result = OUTLINED_FUNCTION_172();
      break;
    case 3:
      result = OUTLINED_FUNCTION_237();
      break;
    case 4:
      result = 0x73656D6167;
      break;
    case 5:
      result = 0x6D69547472617473;
      break;
    case 6:
      result = OUTLINED_FUNCTION_171();
      break;
    case 7:
      result = OUTLINED_FUNCTION_268();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D846CE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D846D0F0()
{
  sub_1D847C050();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846D128()
{
  sub_1D847C050();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ChallengeDescription.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392D8, &qword_1D8591018);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D847C050();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477(v4);
  OUTLINED_FUNCTION_232();
  sub_1D8581A08();
  if (!v0)
  {

    v5 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v7);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();

    v8 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v10);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();

    v11 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v13);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    sub_1D847C0A4();
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    type metadata accessor for ChallengeDescription(0);
    sub_1D8580EA8();
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v17);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D8477400();
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    sub_1D847752C();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
  }

  v14 = OUTLINED_FUNCTION_291();
  return v15(v14);
}

uint64_t ChallengeDescription.hash(into:)(uint64_t a1)
{
  sub_1D85812B8();
  v3 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  sub_1D848211C(&unk_1ECA38B60);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v5 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v7 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  sub_1D848211C(&unk_1ECA38AA0);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  sub_1D84734BC(a1, *(v1 + 64));
  v9 = type metadata accessor for ChallengeDescription(0);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_7_1();
  sub_1D8473E40(v10);
  sub_1D85811E8();
  sub_1D84733A4(a1, *(v1 + *(v9 + 40)));
  v11 = v1 + *(v9 + 44);
  if (*(v11 + 8))
  {
    v12 = 1;
  }

  else
  {
    v12 = *v11;
    OUTLINED_FUNCTION_429();
  }

  return MEMORY[0x1DA7191F0](v12);
}

void ChallengeDescription.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v25 = v24;
  sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v54 = v27;
  v55 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392F0, &qword_1D8591028);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_160();
  v56 = type metadata accessor for ChallengeDescription(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v35 = (v34 - v33);
  v36 = OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_260(v36, v37);
  sub_1D847C050();
  sub_1D8581BA8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    LOBYTE(v57) = 0;
    *v35 = sub_1D8581908();
    v35[1] = v38;
    v39 = OUTLINED_FUNCTION_444();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_244();
    sub_1D8581958();
    v35[2] = v57;
    v35[3] = v58;
    v42 = OUTLINED_FUNCTION_444();
    __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v44);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_244();
    sub_1D8581958();
    v35[4] = v57;
    v35[5] = v58;
    v45 = OUTLINED_FUNCTION_444();
    __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v47);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_244();
    sub_1D8581958();
    v35[6] = v57;
    v35[7] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    sub_1D847C154();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_377();
    v35[8] = v57;
    LOBYTE(v57) = 5;
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v48);
    OUTLINED_FUNCTION_377();
    (*(v54 + 32))(v35 + v56[9], v30, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D8477328();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_377();
    *(v35 + v56[10]) = v57;
    sub_1D84774D8();
    sub_1D8581958();
    v49 = OUTLINED_FUNCTION_85();
    v50(v49);
    v51 = v35 + v56[11];
    *v51 = v57;
    v51[8] = v58;
    sub_1D847C320();
    __swift_destroy_boxed_opaque_existential_1(v25);
    v52 = OUTLINED_FUNCTION_291();
    sub_1D847C378(v52, v53);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeState.scheduledEndTime.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = *(type metadata accessor for ChallengeState(v2) + 20);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t ChallengeState.message.getter()
{
  type metadata accessor for ChallengeState(0);

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeState.completedAt.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for ChallengeState(v0);
  return sub_1D847C204();
}

uint64_t ChallengeState.game.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = (v1 + *(type metadata accessor for ChallengeState(v2) + 32));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t ChallengeState.init(challenge:game:message:completedAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_386();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = *v18;
  v20 = v18[1];
  v22 = *v21;
  v23 = v21[1];
  v24 = type metadata accessor for ChallengeState(0);
  sub_1D8580E78();
  *v17 = v19;
  v17[1] = v20;
  v25 = (v17 + *(v24 + 32));
  *v25 = v22;
  v25[1] = v23;
  v26 = (v17 + *(v24 + 24));
  *v26 = v15;
  v26[1] = v13;
  OUTLINED_FUNCTION_388();

  return sub_1D847C25C(v27, v28);
}

uint64_t ChallengeState.init(challenge:game:scheduledEndTime:message:completedAt:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = a1[1];
  v17 = *a2;
  v18 = a2[1];
  *a7 = *a1;
  *(a7 + 1) = v16;
  v19 = type metadata accessor for ChallengeState(0);
  v20 = &a7[v19[8]];
  *v20 = v17;
  *(v20 + 1) = v18;
  v21 = v19[5];
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  (*(v22 + 32))(&a7[v21], a3);
  v23 = &a7[v19[6]];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &a7[v19[7]];

  return sub_1D847C25C(a6, v24);
}

void static ChallengeState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v12);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_128();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_200();
  if ((sub_1D844A4B0(*v4, v4[1], *v2, v2[1], &qword_1ECA38B48, &qword_1D8590B40) & 1) == 0)
  {
    goto LABEL_21;
  }

  v16 = type metadata accessor for ChallengeState(0);
  if ((_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v17 = *(v16 + 24);
  v18 = (v4 + v17);
  v19 = *(v4 + v17 + 8);
  v20 = (v2 + v17);
  v21 = v20[1];
  if (!v19)
  {
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_12:
    v23 = *(v14 + 48);
    sub_1D847C204();
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v0, 1, v5);
    if (v22)
    {
      OUTLINED_FUNCTION_501(v0 + v23, 1, v5);
      if (v22)
      {
        sub_1D8436E18(v0, &qword_1ECA39300, &unk_1D8591030);
        goto LABEL_23;
      }
    }

    else
    {
      OUTLINED_FUNCTION_221();
      sub_1D847C204();
      OUTLINED_FUNCTION_501(v0 + v23, 1, v5);
      if (!v24)
      {
        (*(v7 + 32))(v11, v0 + v23, v5);
        OUTLINED_FUNCTION_7_1();
        sub_1D8473E40(v27);
        OUTLINED_FUNCTION_228();
        v28 = sub_1D8581208();
        v29 = *(v7 + 8);
        v29(v11, v5);
        v30 = OUTLINED_FUNCTION_495();
        (v29)(v30);
        sub_1D8436E18(v0, &qword_1ECA39300, &unk_1D8591030);
        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_23:
        sub_1D844A4B0(*(v4 + *(v16 + 32)), *(v4 + *(v16 + 32) + 8), *(v2 + *(v16 + 32)), *(v2 + *(v16 + 32) + 8), &qword_1ECA38B38, &qword_1D85981B0);
        goto LABEL_21;
      }

      v25 = OUTLINED_FUNCTION_495();
      v26(v25);
    }

    sub_1D8436E18(v0, &qword_1ECA39308, &qword_1D85A7960);
    goto LABEL_21;
  }

  if (v21)
  {
    v22 = *v18 == *v20 && v19 == v21;
    if (v22 || (sub_1D8581AB8() & 1) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D846E324()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_392();
  v2 = OUTLINED_FUNCTION_58();
  v5 = v1 == v2 && v3 == v4;
  if (v5 || (OUTLINED_FUNCTION_143(v2, 101) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    v9 = v1 == v8 && v7 == v0;
    if (v9 || (OUTLINED_FUNCTION_7(0xD000000000000010, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = v1 == 0x6567617373656DLL && v0 == 0xE700000000000000;
      if (v10 || (OUTLINED_FUNCTION_7(0x6567617373656DLL, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_433();
        v13 = v5 && v0 == v12;
        if (v13 || (OUTLINED_FUNCTION_7(v11, v12) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v14 = OUTLINED_FUNCTION_439(1835099999);
          if (v5 && v0 == 0xE500000000000000)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_7(v14, 0xE500000000000000);
            OUTLINED_FUNCTION_369();
            if (v1)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D846E460(uint64_t a1)
{
  result = OUTLINED_FUNCTION_58();
  switch(v2)
  {
    case 1:
      result = OUTLINED_FUNCTION_351();
      break;
    case 2:
      result = 0x6567617373656DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_345();
      break;
    case 4:
      result = 0x656D61675FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846E514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D846E324();
  *a1 = result;
  return result;
}

uint64_t sub_1D846E544()
{
  sub_1D847C2CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846E57C()
{
  sub_1D847C2CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39318, &qword_1D8591040);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_110();
  v25 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v25, v26);
  sub_1D847C2CC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477(v27);

  v28 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v30);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();
  if (!v23)
  {

    type metadata accessor for ChallengeState(0);
    OUTLINED_FUNCTION_290();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v31);
    OUTLINED_FUNCTION_339();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    OUTLINED_FUNCTION_339();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();

    v34 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_104();
    sub_1D8581A58();
  }

  v32 = OUTLINED_FUNCTION_291();
  v33(v32);
  OUTLINED_FUNCTION_284_0();
}

void ChallengeState.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v2 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v4);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_128();
  v6 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v8);
  OUTLINED_FUNCTION_445();
  sub_1D85811E8();
  v9 = type metadata accessor for ChallengeState(0);
  OUTLINED_FUNCTION_7_1();
  sub_1D8473E40(v10);
  OUTLINED_FUNCTION_7_0();
  sub_1D85811E8();
  if (*(v0 + *(v9 + 24) + 8))
  {
    sub_1D8581B78();
    OUTLINED_FUNCTION_325();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  sub_1D847C204();
  OUTLINED_FUNCTION_501(v1, 1, v2);
  if (v11)
  {
    sub_1D8581B78();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_221();
    v13(v12);
    sub_1D8581B78();
    sub_1D85811E8();
    v14 = OUTLINED_FUNCTION_496();
    v15(v14);
  }

  v16 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v18);
  OUTLINED_FUNCTION_7_0();
  sub_1D85811E8();
  OUTLINED_FUNCTION_388();
}

void ChallengeState.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v3);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_196();
  v31 = v5;
  v6 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v32 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39320, &qword_1D8591048);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_129();
  v13 = type metadata accessor for ChallengeState(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v17 = (v16 - v15);
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D847C2CC();
  OUTLINED_FUNCTION_494();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_189();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v20);
    OUTLINED_FUNCTION_127();
    sub_1D8581958();
    *v17 = v33;
    *(v17 + 1) = v34;
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v21);
    OUTLINED_FUNCTION_411();
    sub_1D8581958();
    (*(v32 + 32))(&v17[v13[5]], v11, v6);
    OUTLINED_FUNCTION_340();
    v22 = sub_1D8581898();
    v23 = &v17[v13[6]];
    *v23 = v22;
    v23[1] = v24;
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_411();
    sub_1D85818E8();
    sub_1D847C25C(v31, &v17[v13[7]]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v25);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_411();
    sub_1D8581958();
    v26 = OUTLINED_FUNCTION_100_0();
    v27(v26);
    v28 = &v17[v13[8]];
    *v28 = v33;
    *(v28 + 1) = v34;
    sub_1D847C320();
    __swift_destroy_boxed_opaque_existential_1(0);
    v29 = OUTLINED_FUNCTION_495();
    sub_1D847C378(v29, v30);
  }

  OUTLINED_FUNCTION_284_0();
}

GameServices::ChallengeLeaveResult_optional __swiftcall ChallengeLeaveResult.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ChallengeLeaveResult.rawValue.getter()
{
  result = 0x4579646165726C61;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_304();
      break;
    case 2:
      result = 1952867692;
      break;
    case 3:
      result = 0x656E696F4A746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846F108@<X0>(uint64_t *a1@<X8>)
{
  result = ChallengeLeaveResult.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D846F130()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482020();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D846F178()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482020();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

void *ChallengeParticipantState.init(player:challenge:game:attemptsCount:formattedScoreValue:score:rank:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v11 = result[1];
  v12 = *a2;
  v13 = a2[1];
  v14 = *a3;
  v15 = a3[1];
  *a9 = *result;
  *(a9 + 8) = v11;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  *(a9 + 88) = v14;
  *(a9 + 96) = v15;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8 & 1;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11 & 1;
  return result;
}

void static ChallengeParticipantState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_513();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v27 = *(v2 + 56);
  v30 = *(v2 + 64);
  v28 = *(v2 + 80);
  v24 = *(v2 + 88);
  v23 = *(v2 + 96);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  v25 = *(v6 + 56);
  v29 = *(v6 + 64);
  v19 = *(v6 + 72);
  v20 = *(v2 + 72);
  v26 = *(v6 + 80);
  v21 = *(v6 + 96);
  v22 = *(v6 + 88);
  if ((sub_1D844A4B0(*v2, *(v2 + 8), *v6, *(v6 + 8), &qword_1ECA389B8, &qword_1D8590B30) & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_361();
  if ((sub_1D844A4B0(v10, v11, v12, v13, v14, v15) & 1) == 0 || v3 != v7)
  {
    goto LABEL_21;
  }

  if (v5)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    if (v4 != v8 || v5 != v9)
    {
      OUTLINED_FUNCTION_221();
      if ((sub_1D8581AB8() & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_21;
  }

  if (v30)
  {
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v29;
    if (v27 != v25)
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_21;
    }
  }

  if (v28)
  {
    if (!v26)
    {
      goto LABEL_21;
    }

LABEL_25:
    sub_1D844A4B0(v24, v23, v22, v21, &qword_1ECA38B38, &qword_1D85981B0);
    goto LABEL_21;
  }

  v18 = v26;
  if (v20 != v19)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  OUTLINED_FUNCTION_514();
}

uint64_t sub_1D846F478()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_70();
  v4 = v1 == v2 && v3 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_392();
    v6 = OUTLINED_FUNCTION_58();
    v8 = v1 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_143(v6, 101) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_268();
      v11 = v1 == v9 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_7(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_184_0();
        v14 = v1 == v13 && v12 == v0;
        if (v14 || (OUTLINED_FUNCTION_7(0xD000000000000013, v12) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v15 = OUTLINED_FUNCTION_439(1919902579);
          v16 = v4 && v0 == 0xE500000000000000;
          if (v16 || (OUTLINED_FUNCTION_7(v15, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v17 = v1 == 1802396018 && v0 == 0xE400000000000000;
            if (v17 || (OUTLINED_FUNCTION_7(1802396018, 0xE400000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v18 = OUTLINED_FUNCTION_439(1835099999);
              if (v4 && v0 == 0xE500000000000000)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_7(v18, 0xE500000000000000);
                OUTLINED_FUNCTION_369();
                if (v1)
                {
                  return 6;
                }

                else
                {
                  return 7;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D846F618()
{
  result = OUTLINED_FUNCTION_70();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_58();
      break;
    case 2:
      result = OUTLINED_FUNCTION_268();
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    case 5:
      result = 1802396018;
      break;
    case 6:
      result = 0x656D61675FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846F6F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D846F478();
  *a1 = result;
  return result;
}

uint64_t sub_1D846F724()
{
  sub_1D847C3D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846F75C()
{
  sub_1D847C3D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeParticipantState.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39328, &qword_1D8591050);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D847C3D0();

  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477(v4);
  v5 = OUTLINED_FUNCTION_368_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v7);
  OUTLINED_FUNCTION_104();
  sub_1D8581A58();
  if (!v0)
  {

    OUTLINED_FUNCTION_338();

    v8 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v10);
    OUTLINED_FUNCTION_104();
    sub_1D8581A58();

    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_380();
    sub_1D8581A38();
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_380();
    sub_1D8581998();
    OUTLINED_FUNCTION_380();
    sub_1D85819F8();
    OUTLINED_FUNCTION_380();
    sub_1D85819C8();

    v13 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v15);
    OUTLINED_FUNCTION_104();
    sub_1D8581A58();
  }

  v11 = OUTLINED_FUNCTION_291();
  v12(v11);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeParticipantState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v13 = *(v1 + 56);
  v4 = *(v1 + 64);
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  v5 = OUTLINED_FUNCTION_509();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_508();
  sub_1D85811E8();
  v7 = OUTLINED_FUNCTION_509();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  sub_1D848211C(&unk_1ECA38B60);
  OUTLINED_FUNCTION_508();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v2);
  if (v3)
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
    if (v4)
    {
LABEL_3:
      OUTLINED_FUNCTION_402();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_402();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_414();
  MEMORY[0x1DA719210](v13);
LABEL_6:
  if (v15)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_414();
    MEMORY[0x1DA7191F0](v14);
  }

  v9 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v11);
  OUTLINED_FUNCTION_7_0();
  return sub_1D85811E8();
}

uint64_t ChallengeParticipantState.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  ChallengeParticipantState.hash(into:)(v2);
  return sub_1D8581B98();
}

void ChallengeParticipantState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39330, &qword_1D8591058);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_260(v26, v26[3]);
  sub_1D847C3D0();
  OUTLINED_FUNCTION_481();
  sub_1D8581BA8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v32);
    sub_1D8581958();
    v54 = v57;
    v33 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_358();
    sub_1D8581958();
    v53 = v56;
    v36 = v56;
    v37 = v57;
    OUTLINED_FUNCTION_118(2);
    v51 = sub_1D8581938();
    OUTLINED_FUNCTION_118(3);
    v38 = sub_1D8581898();
    v52 = v39;
    v50 = v38;
    OUTLINED_FUNCTION_118(4);
    v49 = sub_1D85818F8();
    v72 = v40 & 1;
    OUTLINED_FUNCTION_118(5);
    v48 = sub_1D85818C8();
    v71 = v41 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v42);
    sub_1D8581958();
    v43 = OUTLINED_FUNCTION_254();
    v44(v43);
    v47 = v69;
    v46 = v70;
    v55[0] = v56;
    v55[1] = v57;
    v55[2] = v56;
    v55[3] = v57;
    v55[4] = v51;
    v55[5] = v50;
    v55[6] = v52;
    v55[7] = v49;
    LOBYTE(v55[8]) = v72;
    v55[9] = v48;
    v45 = v71;
    LOBYTE(v55[10]) = v71;
    v55[11] = v69;
    v55[12] = v70;
    memcpy(v28, v55, 0x68uLL);
    sub_1D847C424(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v56 = v53;
    v57 = v54;
    v58 = v36;
    v59 = v37;
    v60 = v51;
    v61 = v50;
    v62 = v52;
    v63 = v49;
    v64 = v72;
    v65 = v48;
    v66 = v45;
    v67 = v47;
    v68 = v46;
    sub_1D847C45C(&v56);
  }

  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8470180(uint64_t a1)
{
  sub_1D8581B58();
  ChallengeParticipantState.hash(into:)(v2);
  return sub_1D8581B98();
}

void static ChallengeInvite.Details.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v1 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v86 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v6 = v5 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  v88 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v10 = OUTLINED_FUNCTION_363(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_315();
  v85 = v11 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v89 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v79 - v16;
  type metadata accessor for ChallengeInvite.Details(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_315();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39338, &qword_1D8591060);
  OUTLINED_FUNCTION_363(v24);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_251();
  v27 = (v0 + *(v26 + 56));
  sub_1D847C320();
  sub_1D847C320();
  OUTLINED_FUNCTION_194();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v84 = v1;
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_188();
    sub_1D847C320();
    v31 = *(v23 + 2);
    v32 = *(v23 + 3);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068) + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D8436E18(&v23[v33], &qword_1ECA39300, &unk_1D8591030);

      goto LABEL_11;
    }

    v82 = v31;
    v35 = *v27;
    v34 = v27[1];
    v37 = v27[2];
    v36 = v27[3];
    v80 = v6;
    v81 = v37;
    v83 = v36;
    sub_1D847C25C(&v23[v33], v90);
    sub_1D847C25C(v27 + v33, v89);
    v38 = OUTLINED_FUNCTION_443();
    v42 = sub_1D844A4B0(v38, v39, v35, v34, v40, v41);

    if (v42)
    {
      v43 = sub_1D844A4B0(v82, v32, v81, v83, &qword_1ECA389B8, &qword_1D8590B30);

      if (v43)
      {
        v44 = v88;
        v45 = *(v87 + 48);
        v46 = v90;
        OUTLINED_FUNCTION_305();
        sub_1D847C204();
        sub_1D847C204();
        v47 = v84;
        OUTLINED_FUNCTION_501(v44, 1, v84);
        if (v30)
        {
          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v48, v49, v50);
          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v51, v52, v53);
          OUTLINED_FUNCTION_501(v44 + v45, 1, v47);
          if (v30)
          {
            sub_1D8436E18(v44, &qword_1ECA39300, &unk_1D8591030);
LABEL_24:
            OUTLINED_FUNCTION_293_0();
            goto LABEL_25;
          }
        }

        else
        {
          v63 = v85;
          sub_1D847C204();
          OUTLINED_FUNCTION_501(v44 + v45, 1, v47);
          if (!v64)
          {
            v73 = v86;
            v74 = v80;
            (*(v86 + 32))(v80, v44 + v45, v47);
            OUTLINED_FUNCTION_7_1();
            sub_1D8473E40(v75);
            LODWORD(v87) = sub_1D8581208();
            v76 = *(v73 + 8);
            v76(v74, v47);
            v77 = OUTLINED_FUNCTION_253();
            sub_1D8436E18(v77, v78, &unk_1D8591030);
            sub_1D8436E18(v46, &qword_1ECA39300, &unk_1D8591030);
            v76(v63, v47);
            sub_1D8436E18(v44, &qword_1ECA39300, &unk_1D8591030);
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v65, v66, v67);
          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v68, v69, v70);
          v71 = OUTLINED_FUNCTION_211();
          v72(v71, v47);
        }

        v61 = &qword_1ECA39308;
        v62 = &qword_1D85A7960;
        v60 = v44;
LABEL_23:
        sub_1D8436E18(v60, v61, v62);
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_235_0();
      sub_1D8436E18(v57, v58, v59);
    }

    else
    {

      OUTLINED_FUNCTION_235_0();
      sub_1D8436E18(v54, v55, v56);
    }

    OUTLINED_FUNCTION_235_0();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_367();
  sub_1D847C320();
  v28 = *v20;
  v29 = v20[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v28 == *v27 && v29 == v27[1];
    if (!v30)
    {
      sub_1D8581AB8();
    }

    goto LABEL_24;
  }

LABEL_11:

  sub_1D8436E18(v0, &qword_1ECA39338, &qword_1D8591060);
LABEL_25:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D8470840(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(1701080931, 0xE400000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84708A8(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  OUTLINED_FUNCTION_529();
  return sub_1D8581B98();
}

uint64_t sub_1D84708DC()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_70();
  v4 = v1 == v2 && v3 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 1701080931 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(1701080931, 0xE400000000000000);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v4)
    {
      return v7 + 1;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t sub_1D8470970(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_1D847099C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(1836020326, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 28532 && a2 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_7(28532, 0xE200000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_158() & 0xFFFFFFFFFFFFLL | 0x4164000000000000;
      if (a1 == v7 && a2 == v8)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_143(v7, 116);
        OUTLINED_FUNCTION_369();
        if (a1)
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
}

uint64_t sub_1D8470A74(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_379(a1);
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

uint64_t sub_1D8470AB4(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_385();
  }

  if (a1 == 1)
  {
    return 28532;
  }

  return 0x4164657469766E69;
}

uint64_t sub_1D8470AF0(uint64_t a1)
{
  sub_1D8581B58();
  OUTLINED_FUNCTION_529();
  return sub_1D8581B98();
}

uint64_t sub_1D8470B60()
{
  sub_1D847C500();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8470B98()
{
  sub_1D847C500();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8470BD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84708DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D8470C00()
{
  sub_1D847C4AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8470C38()
{
  sub_1D847C4AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8470C70(uint64_t a1)
{
  sub_1D8581B58();
  v1 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

uint64_t sub_1D8470CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D847099C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8470CE8()
{
  sub_1D847C554();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8470D20()
{
  sub_1D847C554();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeInvite.Details.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39348, &qword_1D8591070);
  OUTLINED_FUNCTION_1();
  v55 = v24;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39350, &qword_1D8591078);
  OUTLINED_FUNCTION_1();
  v56 = v27;
  v57 = v26;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_196();
  v59 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v30);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_196();
  v58 = v32;
  type metadata accessor for ChallengeInvite.Details(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39358, &qword_1D8591080);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_110();
  v38 = OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_260(v38, v39);
  sub_1D847C4AC();
  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  OUTLINED_FUNCTION_23();
  sub_1D847C320();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_290();
    sub_1D847C500();
    sub_1D8581988();
    sub_1D8581A08();

    v40 = OUTLINED_FUNCTION_211();
    v41(v40, v55);
    v42 = OUTLINED_FUNCTION_443();
    v43(v42);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068);
    sub_1D847C25C(v36 + *(v44 + 64), v58);
    sub_1D847C554();
    sub_1D8581988();
    v45 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v47);
    sub_1D8581A58();

    if (v23)
    {
      (*(v56 + 8))(v59, v57);
      sub_1D8436E18(v58, &qword_1ECA39300, &unk_1D8591030);
      v48 = OUTLINED_FUNCTION_443();
      v49(v48);
    }

    else
    {
      OUTLINED_FUNCTION_338();
      sub_1D8581A58();

      OUTLINED_FUNCTION_340();
      sub_1D8580EA8();
      OUTLINED_FUNCTION_7_1();
      sub_1D8473E40(v50);
      sub_1D85819E8();
      v51 = OUTLINED_FUNCTION_167();
      v52(v51);
      sub_1D8436E18(v58, &qword_1ECA39300, &unk_1D8591030);
      v53 = OUTLINED_FUNCTION_443();
      v54(v53);
    }
  }

  OUTLINED_FUNCTION_284_0();
}

void ChallengeInvite.Details.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v0 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v8 = OUTLINED_FUNCTION_363(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_315();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  type metadata accessor for ChallengeInvite.Details(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v18 = (v17 - v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_325();
  sub_1D847C320();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *v18;
  v20 = v18[1];
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_508();
    sub_1D85812B8();
  }

  else
  {
    v32 = v6;
    v33 = v2;
    v22 = v18[2];
    v23 = v18[3];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068);
    sub_1D847C25C(v18 + *(v24 + 64), v14);
    OUTLINED_FUNCTION_429();
    v34 = v21;
    v35 = v20;
    v25 = OUTLINED_FUNCTION_238();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_6();
    sub_1D848211C(v27);
    sub_1D85811E8();

    v34 = v22;
    v35 = v23;
    sub_1D85811E8();

    OUTLINED_FUNCTION_221();
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v11, 1, v0);
    if (v28)
    {
      OUTLINED_FUNCTION_402();
    }

    else
    {
      v30 = v32;
      v29 = v33;
      (*(v33 + 32))(v32, v11, v0);
      OUTLINED_FUNCTION_414();
      OUTLINED_FUNCTION_7_1();
      sub_1D8473E40(v31);
      sub_1D85811E8();
      (*(v29 + 8))(v30, v0);
    }

    sub_1D8436E18(v14, &qword_1ECA39300, &unk_1D8591030);
  }

  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D8471588(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379(a1);
  a1(v3);
  return sub_1D8581B98();
}

void ChallengeInvite.Details.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  a23 = v26;
  a24 = v27;
  v113 = v24;
  v29 = v28;
  v104 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39360, &qword_1D8591088);
  OUTLINED_FUNCTION_1();
  v105 = v32;
  v106 = v31;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39368, &qword_1D8591090);
  OUTLINED_FUNCTION_1();
  v107 = v36;
  v108 = v35;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_196();
  v111 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39370, &qword_1D8591098);
  OUTLINED_FUNCTION_1();
  v110 = v40;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_129();
  v42 = type metadata accessor for ChallengeInvite.Details(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_315();
  v46 = (v44 - v45);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = &v100 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v100 - v51;
  v112 = v29;
  v53 = OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_260(v53, v54);
  sub_1D847C4AC();
  OUTLINED_FUNCTION_494();
  v55 = v113;
  sub_1D8581BA8();
  if (!v55)
  {
    v100 = v46;
    v101 = v52;
    v102 = v50;
    v113 = v42;
    v56 = sub_1D8581968();
    sub_1D8440880(v56, 0);
    v58 = v57;
    v60 = v39;
    if (v61 == v59 >> 1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_159();
    v103 = v25;
    OUTLINED_FUNCTION_360();
    if (v66 == v67)
    {
      __break(1u);
      return;
    }

    v68 = *(v65 + v63);
    sub_1D84408DC(v63 + 1, v62, v58, v65, v63, v64);
    OUTLINED_FUNCTION_503();
    v70 = v69;
    swift_unknownObjectRelease();
    if (v70 >> 1)
    {
LABEL_8:
      v73 = sub_1D85817C8();
      OUTLINED_FUNCTION_446(v73, MEMORY[0x1E69E6B28]);
      v75 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
      *v75 = v113;
      sub_1D8581888();
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_206_0();
      v76 = OUTLINED_FUNCTION_498();
      v77(v76);
      swift_willThrow();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_267();
      v78 = OUTLINED_FUNCTION_151();
      v79(v78);
    }

    else
    {
      if (v68)
      {
        OUTLINED_FUNCTION_338();
        sub_1D847C500();
        OUTLINED_FUNCTION_522_0(&type metadata for ChallengeInvite.Details.CodeCodingKeys, &a14);
        v71 = v60;
        v72 = v110;
        v80 = v71;
        OUTLINED_FUNCTION_236_0();
        v87 = sub_1D8581908();
        v89 = v88;
        swift_unknownObjectRelease();
        v90 = OUTLINED_FUNCTION_126();
        v91(v90);
        (*(v72 + 8))(v103, v80);
        v92 = v100;
        *v100 = v87;
        *(v92 + 8) = v89;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        v93 = v101;
        sub_1D847C5A8(v92, v101);
        sub_1D847C5A8(v93, v104);
        __swift_destroy_boxed_opaque_existential_1(v112);
        goto LABEL_10;
      }

      a13 = 0;
      sub_1D847C554();
      OUTLINED_FUNCTION_522_0(&type metadata for ChallengeInvite.Details.PlayerCodingKeys, &a13);
      v109 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
      OUTLINED_FUNCTION_3();
      sub_1D848211C(v81);
      v92 = v102;
      v82 = v109;
      OUTLINED_FUNCTION_489();
      sub_1D8581958();
      if (!v82)
      {
        OUTLINED_FUNCTION_489();
        sub_1D8581958();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068);
        sub_1D8580EA8();
        OUTLINED_FUNCTION_7_1();
        sub_1D8473E40(v94);
        v95 = v108;
        OUTLINED_FUNCTION_436();
        sub_1D85818E8();
        swift_unknownObjectRelease();
        v96 = OUTLINED_FUNCTION_218();
        v97(v96, v95);
        v98 = OUTLINED_FUNCTION_302();
        v99(v98);
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
      v83 = OUTLINED_FUNCTION_150();
      v84(v83);
      v85 = OUTLINED_FUNCTION_302();
      v86(v85);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v112);
LABEL_10:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8471D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t ChallengeInvite.details.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for ChallengeInvite(v0);
  OUTLINED_FUNCTION_23();
  return sub_1D847C320();
}

uint64_t ChallengeInvite.init(ref:details:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  OUTLINED_FUNCTION_442();

  return sub_1D847C5A8(a2, a3 + v6);
}

void static ChallengeInvite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  if (sub_1D844A4B0(*v2, *(v1 + 8), *v0, v0[1], &qword_1ECA39038, &qword_1D8590E88))
  {
    OUTLINED_FUNCTION_442();

    static ChallengeInvite.Details.== infix(_:_:)();
  }
}

uint64_t sub_1D8471E54(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_484();
  v6 = v3 == v5 && v4 == 0xE300000000000000;
  if (v6 || (v7 = v3, v8 = OUTLINED_FUNCTION_35_0(), (OUTLINED_FUNCTION_7(v8, v9) & 1) != 0))
  {

    return 0;
  }

  else if (v7 == 0x736C6961746564 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x736C6961746564, 0xE700000000000000);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v6)
    {
      return v12 + 1;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1D8471F24(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_379(a1);
  MEMORY[0x1DA7191F0](v1 & 1);
  return sub_1D8581B98();
}

uint64_t sub_1D8471F64(char a1)
{
  if (a1)
  {
    return 0x736C6961746564;
  }

  else
  {
    return 6710642;
  }
}

uint64_t sub_1D8471FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8471E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8471FFC()
{
  sub_1D847C60C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8472034()
{
  sub_1D847C60C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ChallengeInvite.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39378, &qword_1D85910A0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_200();
  v6 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v6, v7);
  sub_1D847C60C();
  OUTLINED_FUNCTION_477(&type metadata for ChallengeInvite.CodingKeys);

  v8 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v10);
  OUTLINED_FUNCTION_103();
  sub_1D8581A58();

  if (!v0)
  {
    type metadata accessor for ChallengeInvite(0);
    type metadata accessor for ChallengeInvite.Details(0);
    OUTLINED_FUNCTION_96_0();
    sub_1D8473E40(v11);
    OUTLINED_FUNCTION_361();
    sub_1D8581A58();
  }

  return (*(v4 + 8))(v1, v2);
}

void ChallengeInvite.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v2);
  OUTLINED_FUNCTION_166();
  sub_1D85811E8();
  OUTLINED_FUNCTION_442();
  ChallengeInvite.Details.hash(into:)();
}

uint64_t ChallengeInvite.hashValue.getter()
{
  sub_1D8581B58();
  v14 = *v0;
  v15 = v0[1];
  v1 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v4 = sub_1D848211C(v3);
  OUTLINED_FUNCTION_412(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16);
  sub_1D85811E8();
  OUTLINED_FUNCTION_442();
  ChallengeInvite.Details.hash(into:)();
  return sub_1D8581B98();
}

void ChallengeInvite.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  type metadata accessor for ChallengeInvite.Details(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39390, &qword_1D85910A8);
  OUTLINED_FUNCTION_1();
  v22 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for ChallengeInvite(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D847C60C();
  OUTLINED_FUNCTION_481();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v16);
    OUTLINED_FUNCTION_127();
    sub_1D8581958();
    *v13 = v23;
    v13[1] = v24;
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_96_0();
    sub_1D8473E40(v17);
    sub_1D8581958();
    v18 = OUTLINED_FUNCTION_211();
    v19(v18, v22);
    sub_1D847C5A8(v6, v13 + *(v9 + 20));
    sub_1D847C320();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v20 = OUTLINED_FUNCTION_495();
    sub_1D847C378(v20, v21);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D847264C(uint64_t a1)
{
  sub_1D8581B58();
  v15 = *v1;
  v16 = v1[1];
  v2 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_6();
  v5 = sub_1D848211C(v4);
  OUTLINED_FUNCTION_412(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17);
  sub_1D85811E8();
  ChallengeInvite.Details.hash(into:)();
  return sub_1D8581B98();
}

GameServices::ChallengeInviteState_optional __swiftcall ChallengeInviteState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ChallengeInviteState.rawValue.getter()
{
  result = 0x657669746361;
  switch(*v0)
  {
    case 1:
      result = 0x4179646165726C61;
      break;
    case 2:
      result = 0x4979646165726C61;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = OUTLINED_FUNCTION_304();
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x616C696176616E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8472848@<X0>(uint64_t *a1@<X8>)
{
  result = ChallengeInviteState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8472870()
{
  OUTLINED_FUNCTION_99();
  sub_1D8481FCC();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84728B8()
{
  OUTLINED_FUNCTION_99();
  sub_1D8481FCC();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:leaderboard:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v12 = OUTLINED_FUNCTION_63();
  return OUTLINED_FUNCTION_525(v12);
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:definition:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v9 = OUTLINED_FUNCTION_63();
  return OUTLINED_FUNCTION_523(v9);
}

uint64_t sub_1D84733A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      sub_1D85812B8();

      result = MEMORY[0x1DA7191F0](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D84734BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
      sub_1D848211C(&unk_1ECA38B58);
      sub_1D85811E8();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D8473598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      if (*v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = *(v5 - 1);
        MEMORY[0x1DA7191F0](0);
      }

      result = MEMORY[0x1DA7191F0](v6);
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D8473608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x1DA7191F0](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D8473658(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    sub_1D847B62C();
    v5 = a2 + 48;
    do
    {
      v5 += 24;

      sub_1D85811E8();
      sub_1D85812B8();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D847370C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  v11 = v3;
  if (v3)
  {
    v5 = 0;
    v10 = a2 + 32;
    do
    {
      v6 = *(v10 + 8 * v5);
      result = MEMORY[0x1DA7191F0](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = (v6 + 40);
        do
        {
          v9 = *v8;
          v8 += 2;
          sub_1D85812B8();

          MEMORY[0x1DA7191F0](v9);
          --v7;
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 != v11);
  }

  return result;
}

unint64_t sub_1D847387C()
{
  result = qword_1ECA38AD8;
  if (!qword_1ECA38AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38AD8);
  }

  return result;
}

unint64_t sub_1D84738D0()
{
  result = qword_1ECA38AE0;
  if (!qword_1ECA38AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38AE0);
  }

  return result;
}

uint64_t sub_1D8473924(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1D847393C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1D8473954()
{
  result = qword_1ECA3B398;
  if (!qword_1ECA3B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B398);
  }

  return result;
}

unint64_t sub_1D84739A8()
{
  result = qword_1ECA3B3A0;
  if (!qword_1ECA3B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3A0);
  }

  return result;
}

unint64_t sub_1D84739FC()
{
  result = qword_1ECA3B3A8;
  if (!qword_1ECA3B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3A8);
  }

  return result;
}

unint64_t sub_1D8473A50()
{
  result = qword_1ECA3B3B0;
  if (!qword_1ECA3B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3B0);
  }

  return result;
}

unint64_t sub_1D8473AA4()
{
  result = qword_1ECA3B3B8;
  if (!qword_1ECA3B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3B8);
  }

  return result;
}

unint64_t sub_1D8473AF8()
{
  result = qword_1ECA3B3C0;
  if (!qword_1ECA3B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3C0);
  }

  return result;
}

unint64_t sub_1D8473B4C()
{
  result = qword_1ECA3B3C8;
  if (!qword_1ECA3B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3C8);
  }

  return result;
}

unint64_t sub_1D8473BA0()
{
  result = qword_1ECA3B3D0;
  if (!qword_1ECA3B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3D0);
  }

  return result;
}

unint64_t sub_1D8473BF4()
{
  result = qword_1ECA3B3D8;
  if (!qword_1ECA3B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3D8);
  }

  return result;
}

uint64_t sub_1D8473C48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1D8473C60(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_1D8473C78()
{
  result = qword_1ECA3B3E0;
  if (!qword_1ECA3B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3E0);
  }

  return result;
}

unint64_t sub_1D8473CCC()
{
  result = qword_1ECA3B3E8;
  if (!qword_1ECA3B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3E8);
  }

  return result;
}

unint64_t sub_1D8473D20()
{
  result = qword_1ECA3B3F0;
  if (!qword_1ECA3B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3F0);
  }

  return result;
}

unint64_t sub_1D8473D74()
{
  result = qword_1ECA3B3F8;
  if (!qword_1ECA3B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3F8);
  }

  return result;
}

unint64_t sub_1D8473DC8()
{
  result = qword_1ECA3B400;
  if (!qword_1ECA3B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B400);
  }

  return result;
}

unint64_t sub_1D8473E40(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D8473E84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D848220C;

  return DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)();
}

unint64_t sub_1D847418C()
{
  result = qword_1ECA38C40;
  if (!qword_1ECA38C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C38, &qword_1D8590C08);
    sub_1D8474210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C40);
  }

  return result;
}

unint64_t sub_1D8474210()
{
  result = qword_1ECA38C48;
  if (!qword_1ECA38C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C50, &unk_1D8590C10);
    sub_1D8474294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C48);
  }

  return result;
}

unint64_t sub_1D8474294()
{
  result = qword_1ECA38C58;
  if (!qword_1ECA38C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C58);
  }

  return result;
}

unint64_t sub_1D84742E8()
{
  result = qword_1ECA38C60;
  if (!qword_1ECA38C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C38, &qword_1D8590C08);
    sub_1D847436C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C60);
  }

  return result;
}

unint64_t sub_1D847436C()
{
  result = qword_1ECA38C68;
  if (!qword_1ECA38C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C50, &unk_1D8590C10);
    sub_1D84743F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C68);
  }

  return result;
}

unint64_t sub_1D84743F0()
{
  result = qword_1ECA38C70;
  if (!qword_1ECA38C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C70);
  }

  return result;
}

unint64_t sub_1D8474444()
{
  result = qword_1ECA38C78;
  if (!qword_1ECA38C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C78);
  }

  return result;
}

unint64_t sub_1D8474498()
{
  result = qword_1ECA38C80;
  if (!qword_1ECA38C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C80);
  }

  return result;
}

uint64_t sub_1D84744EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D847472C;

  return DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_1D847472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_242();
  v13 = v12;
  OUTLINED_FUNCTION_37();
  *v14 = v13;

  OUTLINED_FUNCTION_431();
  v15 = OUTLINED_FUNCTION_221();
  v16(v15);
  OUTLINED_FUNCTION_430();
  v17 = OUTLINED_FUNCTION_188();
  v18(v17);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

unint64_t sub_1D84748E4()
{
  result = qword_1ECA38CA0;
  if (!qword_1ECA38CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C98, &unk_1D85961F0);
    sub_1D848211C(&unk_1ECA38AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CA0);
  }

  return result;
}

unint64_t sub_1D8474994()
{
  result = qword_1ECA38CA8;
  if (!qword_1ECA38CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C98, &unk_1D85961F0);
    sub_1D848211C(&unk_1ECA38A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CA8);
  }

  return result;
}

uint64_t sub_1D8474A44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D847472C;

  return DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_1D8474C80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D8474F9C;

  return DistributedChallengeServiceProtocol<>.listChallengeDefinitions(game:filters:after:)();
}

void sub_1D8474F9C()
{
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_193();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_37();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_444();
  v8(v7);
  v9 = OUTLINED_FUNCTION_233();
  v10(v9);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_428();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_1D84751F0()
{
  result = qword_1ECA38CC0;
  if (!qword_1ECA38CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CB8, &unk_1D8596010);
    sub_1D8443BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CC0);
  }

  return result;
}

unint64_t sub_1D8475274()
{
  result = qword_1ECA38CC8;
  if (!qword_1ECA38CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CB8, &unk_1D8596010);
    sub_1D8442B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CC8);
  }

  return result;
}

uint64_t sub_1D84752F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D8475488;

  return DistributedChallengeServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_1D8475488()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_476(v1, *(v0 + 16));
  v2 = OUTLINED_FUNCTION_188();
  v3(v2);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1D84755F8()
{
  result = qword_1ECA38CF0;
  if (!qword_1ECA38CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D847567C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CF0);
  }

  return result;
}

unint64_t sub_1D847567C()
{
  result = qword_1ECA38CF8;
  if (!qword_1ECA38CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D00, &qword_1D8590C90);
    sub_1D8475700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CF8);
  }

  return result;
}

unint64_t sub_1D8475700()
{
  result = qword_1ECA38D08;
  if (!qword_1ECA38D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D08);
  }

  return result;
}

unint64_t sub_1D8475754()
{
  result = qword_1ECA38D10;
  if (!qword_1ECA38D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D84757D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D10);
  }

  return result;
}

unint64_t sub_1D84757D8()
{
  result = qword_1ECA38D18;
  if (!qword_1ECA38D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D00, &qword_1D8590C90);
    sub_1D847585C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D18);
  }

  return result;
}

unint64_t sub_1D847585C()
{
  result = qword_1ECA38D20;
  if (!qword_1ECA38D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D20);
  }

  return result;
}

uint64_t sub_1D84758B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D8482288;

  return DistributedChallengeServiceProtocol<>.describe(challenges:)();
}

unint64_t sub_1D8475A40()
{
  result = qword_1ECA38D38;
  if (!qword_1ECA38D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D30, &unk_1D8590CB0);
    sub_1D848211C(&unk_1ECA38BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D38);
  }

  return result;
}

unint64_t sub_1D8475AF0()
{
  result = qword_1ECA38D40;
  if (!qword_1ECA38D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D30, &unk_1D8590CB0);
    sub_1D848211C(&qword_1ECA38B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D40);
  }

  return result;
}

unint64_t sub_1D8475BA0()
{
  result = qword_1ECA38D50;
  if (!qword_1ECA38D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D50);
  }

  return result;
}

unint64_t sub_1D8475C24()
{
  result = qword_1ECA38D58;
  if (!qword_1ECA38D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D60, &qword_1D8590CC0);
    sub_1D8473E40(&unk_1ECA38D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D58);
  }

  return result;
}

unint64_t sub_1D8475CFC()
{
  result = qword_1ECA38D70;
  if (!qword_1ECA38D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D70);
  }

  return result;
}

unint64_t sub_1D8475D80()
{
  result = qword_1ECA38D78;
  if (!qword_1ECA38D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D60, &qword_1D8590CC0);
    sub_1D8473E40(&unk_1ECA38D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D78);
  }

  return result;
}

uint64_t sub_1D8475E38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a2;
  v13[2] = *a2;
  v13[3] = *(v15 - 8);
  v16 = swift_task_alloc();
  v13[4] = v16;
  sub_1D8580F88();
  v34 = a3;
  v17 = a2[1];
  v13[5] = v17;
  v13[6] = *(v17 - 8);
  v18 = swift_task_alloc();
  v13[7] = v18;
  sub_1D8580F88();
  v33 = v18;
  v19 = a2[2];
  v13[8] = v19;
  v13[9] = *(v19 - 8);
  v20 = swift_task_alloc();
  v13[10] = v20;
  sub_1D8580F88();
  v32 = v16;
  v30 = *(v20 + 8);
  v31 = *v20;
  v29 = *(v20 + 16);
  v21 = a2[3];
  v13[11] = v21;
  v13[12] = *(v21 - 8);
  v22 = swift_task_alloc();
  v13[13] = v22;
  sub_1D8580F88();
  v28 = *v22;
  v27 = *(v22 + 8);
  v23 = a2[4];
  v13[14] = v23;
  v13[15] = *(v23 - 8);
  v13[16] = swift_task_alloc();
  sub_1D8580F88();
  v24 = a2[5];
  v13[17] = v24;
  v13[18] = *(v24 - 8);
  v13[19] = swift_task_alloc();
  sub_1D8580F88();
  v25 = swift_task_alloc();
  v13[20] = v25;
  *v25 = v13;
  v25[1] = sub_1D84764D4;

  return DistributedChallengeServiceProtocol<>.createChallenge(creator:leaderboard:duration:attemptLimit:players:previousChallenge:)(v34, v32, v33, v31, v30, v29, v28, v27, a9, a10, a11, a12, a13);
}

uint64_t sub_1D84764D4()
{
  OUTLINED_FUNCTION_153();
  v32 = *(v0 + 152);
  OUTLINED_FUNCTION_193();
  v31 = *(v1 + 144);
  OUTLINED_FUNCTION_193();
  v27 = *(v2 + 136);
  OUTLINED_FUNCTION_193();
  v30 = *(v3 + 128);
  OUTLINED_FUNCTION_193();
  v29 = *(v4 + 120);
  OUTLINED_FUNCTION_193();
  v25 = *(v5 + 112);
  OUTLINED_FUNCTION_193();
  v28 = *(v6 + 104);
  OUTLINED_FUNCTION_193();
  v26 = *(v7 + 96);
  OUTLINED_FUNCTION_193();
  v24 = *(v8 + 88);
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_193();
  v23 = *(v9 + 56);
  OUTLINED_FUNCTION_193();
  v22 = *(v10 + 48);
  OUTLINED_FUNCTION_193();
  v12 = *(v11 + 40);
  OUTLINED_FUNCTION_271();
  v14 = v13;
  OUTLINED_FUNCTION_37();
  *v15 = v14;

  v16 = OUTLINED_FUNCTION_233();
  v17(v16);
  (*(v22 + 8))(v23, v12);
  v18 = OUTLINED_FUNCTION_506();
  v19(v18);
  (*(v26 + 8))(v28, v24);
  (*(v29 + 8))(v30, v25);
  (*(v31 + 8))(v32, v27);

  OUTLINED_FUNCTION_491();

  return v20();
}

unint64_t sub_1D8476880(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DC8, &qword_1D8590D08);
    result = OUTLINED_FUNCTION_524(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D84768D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DE0, &qword_1D8590D10);
    result = OUTLINED_FUNCTION_524(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D8476930()
{
  result = qword_1ECA38E00;
  if (!qword_1ECA38E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DF8, &qword_1D8590D18);
    sub_1D84769B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E00);
  }

  return result;
}

unint64_t sub_1D84769B4()
{
  result = qword_1ECA38E08;
  if (!qword_1ECA38E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D848211C(&qword_1ECA389F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E08);
  }

  return result;
}

unint64_t sub_1D8476A64()
{
  result = qword_1ECA38E18;
  if (!qword_1ECA38E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DF8, &qword_1D8590D18);
    sub_1D8476AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E18);
  }

  return result;
}

unint64_t sub_1D8476AE8()
{
  result = qword_1ECA38E20;
  if (!qword_1ECA38E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D848211C(&qword_1ECA389C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E20);
  }

  return result;
}

unint64_t sub_1D8476B98()
{
  result = qword_1ECA38E30;
  if (!qword_1ECA38E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E28, &qword_1D8590D28);
    sub_1D848211C(&unk_1ECA38BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E30);
  }

  return result;
}

unint64_t sub_1D8476C48()
{
  result = qword_1ECA38E38;
  if (!qword_1ECA38E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E28, &qword_1D8590D28);
    sub_1D848211C(&qword_1ECA38B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E38);
  }

  return result;
}

uint64_t sub_1D8476CF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *a2;
  v18[2] = *a2;
  v18[3] = *(v21 - 8);
  v22 = swift_task_alloc();
  v18[4] = v22;
  sub_1D8580F88();
  v23 = a2[1];
  v18[5] = v23;
  v18[6] = *(v23 - 8);
  v24 = swift_task_alloc();
  v18[7] = v24;
  sub_1D8580F88();
  v40 = v24;
  v25 = a2[2];
  v18[8] = v25;
  v18[9] = *(v25 - 8);
  v26 = swift_task_alloc();
  v18[10] = v26;
  sub_1D8580F88();
  v39 = v22;
  v38 = *v26;
  v27 = a2[3];
  v18[11] = v27;
  v18[12] = *(v27 - 8);
  v28 = swift_task_alloc();
  v18[13] = v28;
  sub_1D8580F88();
  v37 = v28;
  v29 = a2[4];
  v18[14] = v29;
  v18[15] = *(v29 - 8);
  v30 = swift_task_alloc();
  v18[16] = v30;
  sub_1D8580F88();
  v36 = *v30;
  v31 = a2[5];
  v18[17] = v31;
  v18[18] = *(v31 - 8);
  v32 = swift_task_alloc();
  v18[19] = v32;
  v42 = v32;
  sub_1D8580F88();
  v33 = *a4;
  v34 = swift_task_alloc();
  v18[20] = v34;
  *v34 = v18;
  v34[1] = sub_1D84764D4;

  return DistributedChallengeServiceProtocol<>.createChallenge(creator:definition:duration:attemptLimit:players:previousChallenge:)(a3, v39, v40, v38, v37, v36, v42, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

unint64_t sub_1D8477328()
{
  result = qword_1ECA38E60;
  if (!qword_1ECA38E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D84773AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E60);
  }

  return result;
}

unint64_t sub_1D84773AC()
{
  result = qword_1ECA38E68;
  if (!qword_1ECA38E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E68);
  }

  return result;
}

unint64_t sub_1D8477400()
{
  result = qword_1ECA38E70;
  if (!qword_1ECA38E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D8477484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E70);
  }

  return result;
}

unint64_t sub_1D8477484()
{
  result = qword_1ECA38E78;
  if (!qword_1ECA38E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E78);
  }

  return result;
}

unint64_t sub_1D84774D8()
{
  result = qword_1ECA38E80;
  if (!qword_1ECA38E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E80);
  }

  return result;
}

unint64_t sub_1D847752C()
{
  result = qword_1ECA38E88;
  if (!qword_1ECA38E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E88);
  }

  return result;
}

uint64_t sub_1D8477580(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D84777C4;

  return DistributedChallengeServiceProtocol<>.leave(challenges:for:)();
}

uint64_t sub_1D84777C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_242();
  *v12 = v13;
  OUTLINED_FUNCTION_476(v14, v15);
  OUTLINED_FUNCTION_431();
  v16 = OUTLINED_FUNCTION_367();
  v17(v16);
  OUTLINED_FUNCTION_430();
  v18 = OUTLINED_FUNCTION_166();
  v19(v18);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

unint64_t sub_1D8477994()
{
  result = qword_1ECA38E98;
  if (!qword_1ECA38E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E98);
  }

  return result;
}

unint64_t sub_1D8477A18()
{
  result = qword_1ECA38EA0;
  if (!qword_1ECA38EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EA0);
  }

  return result;
}

unint64_t sub_1D8477A6C()
{
  result = qword_1ECA38EA8;
  if (!qword_1ECA38EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EA8);
  }

  return result;
}

unint64_t sub_1D8477AF0()
{
  result = qword_1ECA38EB0;
  if (!qword_1ECA38EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EB0);
  }

  return result;
}

uint64_t sub_1D8477B44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D848228C;

  return DistributedChallengeServiceProtocol<>.refreshChallenges(player:filters:)();
}

unint64_t sub_1D8477D80()
{
  result = qword_1ECA38EC8;
  if (!qword_1ECA38EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38EC0, &qword_1D8590D90);
    sub_1D8477E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EC8);
  }

  return result;
}

unint64_t sub_1D8477E04()
{
  result = qword_1ECA38ED0;
  if (!qword_1ECA38ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38ED8, &qword_1D8590D98);
    sub_1D8477E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38ED0);
  }

  return result;
}

unint64_t sub_1D8477E88()
{
  result = qword_1ECA38EE0;
  if (!qword_1ECA38EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EE0);
  }

  return result;
}

unint64_t sub_1D8477EDC()
{
  result = qword_1ECA38EE8;
  if (!qword_1ECA38EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38EC0, &qword_1D8590D90);
    sub_1D8477F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EE8);
  }

  return result;
}

unint64_t sub_1D8477F60()
{
  result = qword_1ECA38EF0;
  if (!qword_1ECA38EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38ED8, &qword_1D8590D98);
    sub_1D8477FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EF0);
  }

  return result;
}

unint64_t sub_1D8477FE4()
{
  result = qword_1ECA38EF8;
  if (!qword_1ECA38EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EF8);
  }

  return result;
}

uint64_t sub_1D8478038(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D84777C4;

  return DistributedChallengeServiceProtocol<>.listChallengeStates(player:challenges:)();
}

unint64_t sub_1D8478278()
{
  result = qword_1ECA38F08;
  if (!qword_1ECA38F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8473E40(&unk_1ECA38F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F08);
  }

  return result;
}

unint64_t sub_1D8478350()
{
  result = qword_1ECA38F18;
  if (!qword_1ECA38F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8473E40(&unk_1ECA38F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F18);
  }

  return result;
}

uint64_t sub_1D8478408(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D8482254;

  return DistributedChallengeServiceProtocol<>.listChallengeStates2(player:challenges:)();
}

unint64_t sub_1D8478648()
{
  result = qword_1ECA38F30;
  if (!qword_1ECA38F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D84786CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F30);
  }

  return result;
}

unint64_t sub_1D84786CC()
{
  result = qword_1ECA38F38;
  if (!qword_1ECA38F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F40, &qword_1D8590DD0);
    sub_1D8473E40(&unk_1ECA38F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F38);
  }

  return result;
}

unint64_t sub_1D8478784()
{
  result = qword_1ECA38F48;
  if (!qword_1ECA38F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D8478808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F48);
  }

  return result;
}

unint64_t sub_1D8478808()
{
  result = qword_1ECA38F50;
  if (!qword_1ECA38F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F40, &qword_1D8590DD0);
    sub_1D8473E40(&unk_1ECA38F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F50);
  }

  return result;
}

uint64_t sub_1D84788C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D848220C;

  return DistributedChallengeServiceProtocol<>.listChallenges(player:filters:after:)();
}

uint64_t sub_1D8478BDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D8482254;

  return DistributedChallengeServiceProtocol<>.listParticipantStates(player:challenges:)();
}

unint64_t sub_1D8478E1C()
{
  result = qword_1ECA38F78;
  if (!qword_1ECA38F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F78);
  }

  return result;
}

unint64_t sub_1D8478EA0()
{
  result = qword_1ECA38F80;
  if (!qword_1ECA38F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F88, &qword_1D8590E08);
    sub_1D8478F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F80);
  }

  return result;
}

unint64_t sub_1D8478F24()
{
  result = qword_1ECA38F90;
  if (!qword_1ECA38F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F90);
  }

  return result;
}

unint64_t sub_1D8478F78()
{
  result = qword_1ECA38F98;
  if (!qword_1ECA38F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F98);
  }

  return result;
}

unint64_t sub_1D8478FFC()
{
  result = qword_1ECA38FA0;
  if (!qword_1ECA38FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F88, &qword_1D8590E08);
    sub_1D8479080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FA0);
  }

  return result;
}

unint64_t sub_1D8479080()
{
  result = qword_1ECA38FA8;
  if (!qword_1ECA38FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FA8);
  }

  return result;
}

uint64_t sub_1D84790D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D8482254;

  return DistributedChallengeServiceProtocol<>.listParticipantStates2(player:challenges:)();
}

unint64_t sub_1D8479314()
{
  result = qword_1ECA38FB8;
  if (!qword_1ECA38FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D8479398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FB8);
  }

  return result;
}

unint64_t sub_1D8479398()
{
  result = qword_1ECA38FC0;
  if (!qword_1ECA38FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FC8, &qword_1D8590E28);
    sub_1D8478EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FC0);
  }

  return result;
}

unint64_t sub_1D847941C()
{
  result = qword_1ECA38FD0;
  if (!qword_1ECA38FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D84794A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FD0);
  }

  return result;
}

unint64_t sub_1D84794A0()
{
  result = qword_1ECA38FD8;
  if (!qword_1ECA38FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FC8, &qword_1D8590E28);
    sub_1D8478FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FD8);
  }

  return result;
}

uint64_t sub_1D8479524(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[9] = v12;
  v8[10] = *(v12 - 8);
  v8[11] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[12] = v13;
  *v13 = v8;
  v13[1] = sub_1D8479834;

  return DistributedChallengeServiceProtocol<>.sendInvites(player:challenge:to:)();
}

void sub_1D8479834()
{
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_193();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = *v0;
  OUTLINED_FUNCTION_42();
  *v6 = v5;
  OUTLINED_FUNCTION_476(v7, v8);
  (*(v3 + 8))(v2, v4);
  v9 = OUTLINED_FUNCTION_445();
  v10(v9);
  v11 = OUTLINED_FUNCTION_150();
  v12(v11);

  OUTLINED_FUNCTION_428();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_1D8479AA8()
{
  result = qword_1ECA38FF8;
  if (!qword_1ECA38FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FF0, &qword_1D8590E50);
    sub_1D8473E40(&unk_1ECA39000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FF8);
  }

  return result;
}

unint64_t sub_1D8479B80()
{
  result = qword_1ECA39008;
  if (!qword_1ECA39008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FF0, &qword_1D8590E50);
    sub_1D8473E40(&unk_1ECA39010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39008);
  }

  return result;
}

uint64_t sub_1D8479C38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D847472C;

  return DistributedChallengeServiceProtocol<>.createInvite(player:challenge:)();
}

uint64_t sub_1D8479E78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D8482288;

  return DistributedChallengeServiceProtocol<>.describeInvites(invites:)();
}

unint64_t sub_1D847A008()
{
  result = qword_1ECA39028;
  if (!qword_1ECA39028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39020, &qword_1D8590E80);
    sub_1D848211C(&unk_1ECA39030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39028);
  }

  return result;
}

unint64_t sub_1D847A0B8()
{
  result = qword_1ECA39040;
  if (!qword_1ECA39040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39020, &qword_1D8590E80);
    sub_1D848211C(&unk_1ECA39048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39040);
  }

  return result;
}

unint64_t sub_1D847A168()
{
  result = qword_1ECA39058;
  if (!qword_1ECA39058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39050, &qword_1D8590E90);
    sub_1D847A1EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39058);
  }

  return result;
}

unint64_t sub_1D847A1EC()
{
  result = qword_1ECA39060;
  if (!qword_1ECA39060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39068, &qword_1D8590E98);
    sub_1D8473E40(&unk_1ECA39000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39060);
  }

  return result;
}

unint64_t sub_1D847A2A4()
{
  result = qword_1ECA39070;
  if (!qword_1ECA39070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39050, &qword_1D8590E90);
    sub_1D847A328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39070);
  }

  return result;
}

unint64_t sub_1D847A328()
{
  result = qword_1ECA39078;
  if (!qword_1ECA39078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39068, &qword_1D8590E98);
    sub_1D8473E40(&unk_1ECA39010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39078);
  }

  return result;
}

uint64_t sub_1D847A3E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D848220C;

  return DistributedChallengeServiceProtocol<>.listInvites(player:filters:after:)();
}

unint64_t sub_1D847A6FC()
{
  result = qword_1ECA39090;
  if (!qword_1ECA39090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39088, &qword_1D8590EB8);
    sub_1D847A780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39090);
  }

  return result;
}

unint64_t sub_1D847A780()
{
  result = qword_1ECA39098;
  if (!qword_1ECA39098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA390A0, &qword_1D8590EC0);
    sub_1D847A804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39098);
  }

  return result;
}

unint64_t sub_1D847A804()
{
  result = qword_1ECA390A8;
  if (!qword_1ECA390A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA390A8);
  }

  return result;
}

unint64_t sub_1D847A858()
{
  result = qword_1ECA390B0;
  if (!qword_1ECA390B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39088, &qword_1D8590EB8);
    sub_1D847A8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA390B0);
  }

  return result;
}

unint64_t sub_1D847A8DC()
{
  result = qword_1ECA390B8;
  if (!qword_1ECA390B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA390A0, &qword_1D8590EC0);
    sub_1D847A960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA390B8);
  }

  return result;
}

unint64_t sub_1D847A960()
{
  result = qword_1ECA390C0;
  if (!qword_1ECA390C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA390C0);
  }

  return result;
}

uint64_t sub_1D847A9B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D8482254;

  return DistributedChallengeServiceProtocol<>.listInviteStates(player:invites:)();
}

unint64_t sub_1D847ABF4()
{
  result = qword_1ECA390E8;
  if (!qword_1ECA390E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA390E0, &qword_1D8590EE0);
    sub_1D847AC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA390E8);
  }

  return result;
}

unint64_t sub_1D847AC78()
{
  result = qword_1ECA390F0;
  if (!qword_1ECA390F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA390F0);
  }

  return result;
}

unint64_t sub_1D847ACCC()
{
  result = qword_1ECA390F8;
  if (!qword_1ECA390F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA390E0, &qword_1D8590EE0);
    sub_1D847AD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA390F8);
  }

  return result;
}

unint64_t sub_1D847AD50()
{
  result = qword_1ECA39100;
  if (!qword_1ECA39100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39100);
  }

  return result;
}

uint64_t sub_1D847ADA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D848228C;

  return DistributedChallengeServiceProtocol<>.accept(player:invite:)();
}

uint64_t sub_1D847AFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1D847B090;

  return DistributedChallengeServiceProtocol<>.listAllStoredChallengeDefinitions()();
}

uint64_t sub_1D847B090()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_476(v1, *(v0 + 16));
  OUTLINED_FUNCTION_146();

  return v2();
}

unint64_t sub_1D847B188()
{
  result = qword_1ECA39118;
  if (!qword_1ECA39118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39110, &qword_1D8590F10);
    sub_1D8475700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39118);
  }

  return result;
}

unint64_t sub_1D847B20C()
{
  result = qword_1ECA39120;
  if (!qword_1ECA39120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39110, &qword_1D8590F10);
    sub_1D847585C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39120);
  }

  return result;
}

unint64_t sub_1D847B290()
{
  result = qword_1ECA3B408;
  if (!qword_1ECA3B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B408);
  }

  return result;
}

unint64_t sub_1D847B2E4()
{
  result = qword_1ECA3B410;
  if (!qword_1ECA3B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B410);
  }

  return result;
}

unint64_t sub_1D847B338()
{
  result = qword_1ECA3B418;
  if (!qword_1ECA3B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B418);
  }

  return result;
}

unint64_t sub_1D847B38C()
{
  result = qword_1ECA3B420;
  if (!qword_1ECA3B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B420);
  }

  return result;
}

unint64_t sub_1D847B3E0()
{
  result = qword_1ECA39160;
  if (!qword_1ECA39160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39160);
  }

  return result;
}

unint64_t sub_1D847B434()
{
  result = qword_1ECA39170;
  if (!qword_1ECA39170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39170);
  }

  return result;
}

unint64_t sub_1D847B488()
{
  result = qword_1ECA3B428;
  if (!qword_1ECA3B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B428);
  }

  return result;
}

unint64_t sub_1D847B4DC()
{
  result = qword_1ECA3B430;
  if (!qword_1ECA3B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B430);
  }

  return result;
}

unint64_t sub_1D847B530()
{
  result = qword_1ECA3B438;
  if (!qword_1ECA3B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B438);
  }

  return result;
}

unint64_t sub_1D847B584()
{
  result = qword_1ECA3B440;
  if (!qword_1ECA3B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B440);
  }

  return result;
}

unint64_t sub_1D847B5D8()
{
  result = qword_1ECA391B0;
  if (!qword_1ECA391B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA391B0);
  }

  return result;
}

unint64_t sub_1D847B62C()
{
  result = qword_1ECA391B8;
  if (!qword_1ECA391B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA391B8);
  }

  return result;
}

unint64_t sub_1D847B680()
{
  result = qword_1ECA391C8;
  if (!qword_1ECA391C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA391C8);
  }

  return result;
}

unint64_t sub_1D847B6D4()
{
  result = qword_1ECA3B448;
  if (!qword_1ECA3B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B448);
  }

  return result;
}

unint64_t sub_1D847B728()
{
  result = qword_1ECA3B450;
  if (!qword_1ECA3B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B450);
  }

  return result;
}

unint64_t sub_1D847B77C()
{
  result = qword_1ECA3B458;
  if (!qword_1ECA3B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B458);
  }

  return result;
}

unint64_t sub_1D847B7D0()
{
  result = qword_1ECA39218;
  if (!qword_1ECA39218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39218);
  }

  return result;
}

unint64_t sub_1D847B878()
{
  result = qword_1ECA39220;
  if (!qword_1ECA39220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39220);
  }

  return result;
}

unint64_t sub_1D847B8CC()
{
  result = qword_1ECA3B460;
  if (!qword_1ECA3B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B460);
  }

  return result;
}

unint64_t sub_1D847B920()
{
  result = qword_1ECA39230;
  if (!qword_1ECA39230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39230);
  }

  return result;
}

unint64_t sub_1D847B974()
{
  result = qword_1ECA39240;
  if (!qword_1ECA39240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39238, &qword_1D8590FE8);
    sub_1D8477400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39240);
  }

  return result;
}

unint64_t sub_1D847B9F8()
{
  result = qword_1ECA39250;
  if (!qword_1ECA39250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39248, &qword_1D8590FF0);
    sub_1D847BA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39250);
  }

  return result;
}

unint64_t sub_1D847BA7C()
{
  result = qword_1ECA39258;
  if (!qword_1ECA39258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39258);
  }

  return result;
}

unint64_t sub_1D847BAD0()
{
  result = qword_1ECA39268;
  if (!qword_1ECA39268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39260, &qword_1D8590FF8);
    sub_1D847BB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39268);
  }

  return result;
}

unint64_t sub_1D847BB54()
{
  result = qword_1ECA39270;
  if (!qword_1ECA39270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39270);
  }

  return result;
}

unint64_t sub_1D847BBA8()
{
  result = qword_1ECA39280;
  if (!qword_1ECA39280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39278, &qword_1D8591000);
    sub_1D847752C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39280);
  }

  return result;
}

unint64_t sub_1D847BC88()
{
  result = qword_1ECA39288;
  if (!qword_1ECA39288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39288);
  }

  return result;
}

unint64_t sub_1D847BCDC()
{
  result = qword_1ECA39298;
  if (!qword_1ECA39298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39298);
  }

  return result;
}

unint64_t sub_1D847BD30()
{
  result = qword_1ECA392A0;
  if (!qword_1ECA392A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39238, &qword_1D8590FE8);
    sub_1D8477328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392A0);
  }

  return result;
}

unint64_t sub_1D847BDB4()
{
  result = qword_1ECA392A8;
  if (!qword_1ECA392A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39248, &qword_1D8590FF0);
    sub_1D847BE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392A8);
  }

  return result;
}

unint64_t sub_1D847BE38()
{
  result = qword_1ECA392B0;
  if (!qword_1ECA392B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392B0);
  }

  return result;
}

unint64_t sub_1D847BE8C()
{
  result = qword_1ECA392B8;
  if (!qword_1ECA392B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39260, &qword_1D8590FF8);
    sub_1D847BF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392B8);
  }

  return result;
}

unint64_t sub_1D847BF10()
{
  result = qword_1ECA392C0;
  if (!qword_1ECA392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392C0);
  }

  return result;
}

unint64_t sub_1D847BF64()
{
  result = qword_1ECA392C8;
  if (!qword_1ECA392C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39278, &qword_1D8591000);
    sub_1D84774D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392C8);
  }

  return result;
}

unint64_t sub_1D847C050()
{
  result = qword_1ECA3B468;
  if (!qword_1ECA3B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B468);
  }

  return result;
}

unint64_t sub_1D847C0A4()
{
  result = qword_1ECA392E8;
  if (!qword_1ECA392E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA392E0, &qword_1D8591020);
    sub_1D848211C(&qword_1ECA38B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392E8);
  }

  return result;
}

unint64_t sub_1D847C154()
{
  result = qword_1ECA392F8;
  if (!qword_1ECA392F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA392E0, &qword_1D8591020);
    sub_1D848211C(&unk_1ECA38BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA392F8);
  }

  return result;
}

uint64_t sub_1D847C204()
{
  OUTLINED_FUNCTION_263_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_0();
  v3 = OUTLINED_FUNCTION_194();
  v4(v3);
  return v0;
}

uint64_t sub_1D847C25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D847C2CC()
{
  result = qword_1ECA3B470;
  if (!qword_1ECA3B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B470);
  }

  return result;
}

uint64_t sub_1D847C320()
{
  OUTLINED_FUNCTION_263_0();
  v1(0);
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_194();
  v3(v2);
  return v0;
}

uint64_t sub_1D847C378(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D847C3D0()
{
  result = qword_1ECA3B478;
  if (!qword_1ECA3B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B478);
  }

  return result;
}

unint64_t sub_1D847C4AC()
{
  result = qword_1ECA3B480;
  if (!qword_1ECA3B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B480);
  }

  return result;
}

unint64_t sub_1D847C500()
{
  result = qword_1ECA3B488;
  if (!qword_1ECA3B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B488);
  }

  return result;
}

unint64_t sub_1D847C554()
{
  result = qword_1ECA3B490;
  if (!qword_1ECA3B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B490);
  }

  return result;
}

uint64_t sub_1D847C5A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInvite.Details(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D847C60C()
{
  result = qword_1ECA3B498[0];
  if (!qword_1ECA3B498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3B498);
  }

  return result;
}

unint64_t sub_1D847C664()
{
  result = qword_1ECA393A0;
  if (!qword_1ECA393A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393A0);
  }

  return result;
}

unint64_t sub_1D847C6BC()
{
  result = qword_1ECA393A8;
  if (!qword_1ECA393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393A8);
  }

  return result;
}

unint64_t sub_1D847C714()
{
  result = qword_1ECA393B0;
  if (!qword_1ECA393B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393B0);
  }

  return result;
}

unint64_t sub_1D847C814(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  result = sub_1D8473E40(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D847C8D4()
{
  result = qword_1ECA393C8;
  if (!qword_1ECA393C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393C8);
  }

  return result;
}

unint64_t sub_1D847C92C()
{
  result = qword_1ECA393D0;
  if (!qword_1ECA393D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393D0);
  }

  return result;
}

unint64_t sub_1D847C984()
{
  result = qword_1ECA393D8;
  if (!qword_1ECA393D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393D8);
  }

  return result;
}

unint64_t sub_1D847C9DC()
{
  result = qword_1ECA393E0;
  if (!qword_1ECA393E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393E0);
  }

  return result;
}

unint64_t sub_1D847CA34()
{
  result = qword_1ECA393E8;
  if (!qword_1ECA393E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393E8);
  }

  return result;
}

unint64_t sub_1D847CA8C()
{
  result = qword_1ECA393F0;
  if (!qword_1ECA393F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393F0);
  }

  return result;
}

unint64_t sub_1D847CAE4()
{
  result = qword_1ECA393F8;
  if (!qword_1ECA393F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA393F8);
  }

  return result;
}

unint64_t sub_1D847CBD4()
{
  result = qword_1ECA39410;
  if (!qword_1ECA39410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39410);
  }

  return result;
}

unint64_t sub_1D847CC2C()
{
  result = qword_1ECA39418;
  if (!qword_1ECA39418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39418);
  }

  return result;
}

unint64_t sub_1D847CD0C()
{
  result = qword_1ECA39430;
  if (!qword_1ECA39430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39430);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameServices15ChallengeFilterO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D847CD8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_226(*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 > 5)
  {
    return OUTLINED_FUNCTION_226(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_226(-1);
  }
}

uint64_t sub_1D847CDC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_449(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D847CE04(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D847CE30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_226(*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    return OUTLINED_FUNCTION_226(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_226(-1);
  }
}

uint64_t sub_1D847CE70(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_449(result, a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of ChallengeServiceProtocol.refreshChallengeDefinitions(game:filters:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_469();
  v15 = v4;
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_201(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_191(v11);
  OUTLINED_FUNCTION_249();

  return v13();
}

uint64_t dispatch thunk of ChallengeServiceProtocol.refreshChallengeDefinitions(challengeDefinitions:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.refreshChallengeDefinitions(game:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_163(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_54();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_106_0(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.describeChallengeDefinitions(challengeDefinitions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_475();
  v13 = v3;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v4, v5, v6);
  OUTLINED_FUNCTION_131();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_191(v8);
  v10 = OUTLINED_FUNCTION_310();

  return v11(v10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.describe(challenges:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_475();
  v13 = v3;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v4, v5, v6);
  OUTLINED_FUNCTION_131();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_191(v8);
  v10 = OUTLINED_FUNCTION_310();

  return v11(v10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.createChallenge(creator:leaderboard:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_54();
  v22 = (v17 + *v17);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_97(v18);
  *v19 = v20;
  v19[1] = sub_1D8442F30;

  return (v22)(a1, a2, a3, a4, a5, a6 & 1, a7, a8 & 1, a9, a10, a11, a12);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.createChallenge(creator:definition:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v32 = v15;
  OUTLINED_FUNCTION_131();
  v31 = v16 + *v16;
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_97(v17);
  *v18 = v19;
  v18[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_170();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14, a15);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.leave(challenges:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.refreshChallenges(player:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listChallengeStates(player:challenges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listChallengeStates2(player:challenges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_163(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_54();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_106_0(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listParticipantStates(player:challenges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listParticipantStates2(player:challenges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.sendInvites(player:challenge:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_469();
  v15 = v4;
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_201(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_191(v11);
  OUTLINED_FUNCTION_249();

  return v13();
}

uint64_t dispatch thunk of ChallengeServiceProtocol.createInvite(player:challenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_469();
  v15 = v4;
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_201(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  v11[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_249();

  return v13();
}

uint64_t dispatch thunk of ChallengeServiceProtocol.describeInvites(invites:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_475();
  v13 = v3;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v4, v5, v6);
  OUTLINED_FUNCTION_131();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_191(v8);
  v10 = OUTLINED_FUNCTION_310();

  return v11(v10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listInvites(player:filters:after:)()
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_163(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_54();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_106_0(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listInviteStates(player:invites:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.accept(player:invite:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ChallengeServiceProtocol.listAllStoredChallengeDefinitions()()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_54();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);
  v4 = OUTLINED_FUNCTION_506();

  return v6(v4);
}

uint64_t sub_1D847E4A8()
{
  OUTLINED_FUNCTION_148();
  v2 = v1;
  OUTLINED_FUNCTION_153();
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t get_enum_tag_for_layout_string_12GameServices7ArtworkVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D847E604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 256))
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

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D847E640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
      *(result + 256) = 1;
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 256) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D847E6C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_192();
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D847E714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D847E768(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return OUTLINED_FUNCTION_226(v1);
}

uint64_t sub_1D847E77C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_321(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChallengeDefinition.DurationComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && a1[16])
    {
      return OUTLINED_FUNCTION_226(*a1 + 249);
    }

    v3 = *a1;
    v4 = v3 >= 7;
    v5 = v3 - 7;
    if (!v4)
    {
      return OUTLINED_FUNCTION_226(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_226(v5);
}

_BYTE *storeEnumTagSinglePayload for ChallengeDefinition.DurationComponent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    *(result + 1) = 0;
    if (a3 >= 0xFA)
    {
      result[16] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      result[16] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_262(result, a2 + 6);
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ChallengeDefinition.AttemptLimit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_192();
  }
}

uint64_t storeEnumTagSinglePayload for ChallengeDefinition.AttemptLimit(uint64_t result, int a2, int a3)
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

uint64_t sub_1D847E89C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_192();
  }
}

uint64_t sub_1D847E8B0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D847E8F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D847E930(uint64_t result, int a2, int a3)
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

void sub_1D847E9B8(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1, &qword_1ECA39438, &qword_1ECA39440, &unk_1D85A22A0);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_29_0(v1, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_29_0(v3, &qword_1ECA39448, &qword_1ECA39450, &qword_1D8592708);
      if (v5 <= 0x3F)
      {
        sub_1D847EE88(319, &qword_1ECA39458, &qword_1ECA38B38, &qword_1D85981B0, MEMORY[0x1E69E62F8]);
        if (v6 <= 0x3F)
        {
          sub_1D8580EA8();
          if (v7 <= 0x3F)
          {
            sub_1D847EC70(319, &qword_1ECA39460, &type metadata for ChallengeDefinition.DurationComponent, MEMORY[0x1E69E62F8]);
            if (v8 <= 0x3F)
            {
              OUTLINED_FUNCTION_413();
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D847EB60(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1, &qword_1ECA39438, &qword_1ECA39440, &unk_1D85A22A0);
  if (v1 <= 0x3F)
  {
    sub_1D8580EA8();
    if (v2 <= 0x3F)
    {
      sub_1D847EC70(319, &qword_1EE0E0060, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D847ECC0(319);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_29_0(v4, &qword_1ECA39468, &qword_1ECA39470, &unk_1D8592720);
          if (v6 <= 0x3F)
          {
            OUTLINED_FUNCTION_413();
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D847EC70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D847ECC0(uint64_t a1)
{
  if (!qword_1EE0E02E8)
  {
    sub_1D8580EA8();
    v1 = sub_1D85816F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E02E8);
    }
  }
}

uint64_t sub_1D847ED34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 104))
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

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D847ED70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 104) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

void sub_1D847EDF8(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1, &qword_1ECA39478, &qword_1ECA39480, &qword_1D85927C0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChallengeInvite.Details(319);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_413();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D847EE88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1D847EEF4(uint64_t a1)
{
  sub_1D847EF68(319);
  if (v1 <= 0x3F)
  {
    sub_1D847EFF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D847EF68(uint64_t a1)
{
  if (!qword_1ECA39488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389B8, &qword_1D8590B30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39300, &unk_1D8591030);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECA39488);
    }
  }
}

uint64_t sub_1D847EFF8()
{
  result = qword_1ECA39490;
  if (!qword_1ECA39490)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ECA39490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChallengeInvite.Details.PlayerCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for ChallengeInvite.Details.PlayerCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 7);
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

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *_s12GameServices19ChallengeDefinitionV17DurationComponentV8TimeUnitOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChallengeState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChallengeDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 14);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 14);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 14);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for ChallengeDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}
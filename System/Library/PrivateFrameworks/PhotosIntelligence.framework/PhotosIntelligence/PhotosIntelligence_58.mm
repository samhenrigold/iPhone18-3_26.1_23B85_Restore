void sub_1C73B3864(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = *(v4 + 32 + 8 * result);
          v8 = *(v4 + 32 + 8 * a2);
          sub_1C75504FC();
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C7422CCC();
            v4 = v9;
          }

          if (*(v4 + 16) > result)
          {
            *(v4 + 32 + 8 * result) = v8;

            if (*(v4 + 16) > a2)
            {
              *(v4 + 32 + 8 * a2) = v7;

              *v2 = v4;
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_1C73B3944(uint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *v2;
    v6 = *v2 & 0xC000000000000001;
    sub_1C6FB6330();
    if (v6)
    {
      v7 = MEMORY[0x1CCA5DDD0](a1, v5);
    }

    else
    {
      v7 = *(v5 + 8 * a1 + 32);
    }

    v8 = v7;
    sub_1C6FB6330();
    if (v6)
    {
      v9 = MEMORY[0x1CCA5DDD0](a2, v5);
    }

    else
    {
      v9 = *(v5 + 8 * a2 + 32);
    }

    v10 = v9;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_1C70E43B4();
      v11 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

    if ((v5 & 0x8000000000000000) != 0 || v11)
    {
      v5 = sub_1C70E43B4();
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_15:
        if (*(v12 + 16) > a2)
        {
          v14 = v12 + 8 * a2;
          v15 = *(v14 + 32);
          *(v14 + 32) = v8;

          *v2 = v5;
          return;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_21;
  }
}

unint64_t sub_1C73B3A80(unint64_t result, unint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v7 = *(v4 + 32 + 8 * a2);
  v8 = *(v4 + 32 + 8 * result);
  v9 = v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_1C7423D10();
    v4 = result;
    *v2 = result;
  }

  if (*(v4 + 16) <= v3)
  {
    goto LABEL_17;
  }

  v10 = v4 + 8 * v3;
  v11 = *(v10 + 32);
  *(v10 + 32) = v9;

  sub_1C755193C();
  v12 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v12;
  if ((result & 1) == 0)
  {
    result = sub_1C7423D10();
    v12 = result;
    *v2 = result;
  }

  if (*(v12 + 16) <= a2)
  {
    goto LABEL_18;
  }

  v13 = v12 + 8 * a2;
  v14 = *(v13 + 32);
  *(v13 + 32) = v8;

  return sub_1C755193C();
}

void sub_1C73B3BAC(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *v2;
      v13 = *(*v2 + 16);
      if (v13 > a1)
      {
        v18 = v2;
        v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v15 = *(v9 + 72);
        sub_1C71592A8(v12 + v14 + v15 * a1, &v17 - v10);
        if (v13 > a2)
        {
          sub_1C71592A8(v12 + v14 + v15 * a2, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C7422EAC();
            v12 = v16;
          }

          if (*(v12 + 16) > a1)
          {
            sub_1C7159BA8(v7, v12 + v14 + v15 * a1);
            if (*(v12 + 16) > a2)
            {
              sub_1C7159BA8(v11, v12 + v14 + v15 * a2);
              *v18 = v12;
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

unint64_t sub_1C73B3D7C(unint64_t result, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(*v2 + 16);
  v15 = v3 - 2;
  if (v3 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v17 = v4;
      v18 = v3;
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      v6 = v5;
      sub_1C73B442C();
      OUTLINED_FUNCTION_2_115();
      result = v8 | ((v7 & 0xFFFFFFFFFFFFFF00 | v6) << 8);
      v9 = (result * v3) >> 64;
      if (v3 > result * v3)
      {
        v10 = -v3 % v3;
        if (v10 > result * v3)
        {
          do
          {
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            v12 = v11;
            sub_1C73B442C();
            v3 = v18;
            OUTLINED_FUNCTION_1_123();
            result = v14 | ((v13 & 0xFFFFFFFFFFFFFF00 | v12) << 8);
          }

          while (v10 > result * v18);
          v9 = (result * v18) >> 64;
        }
      }

      if (__OFADD__(v17, v9))
      {
        break;
      }

      --v3;
      result = a2(v17, v17 + v9);
      v4 = v17 + 1;
      if (v17 == v15)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Random.SamplerKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t Random.init(randomSeed:)(char a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0, &unk_1C7586710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = a1;
  Random.Arc4Random.init(seed:)(inited, &v6);
  v4 = v7;
  *(v1 + 24) = v6;
  *(v1 + 32) = v4;
  return v1;
}

void Random.uniform(length:in:)(uint64_t result@<X0>, uint64_t *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  if (result < 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (result)
  {
    v8 = sub_1C7550BBC();
    *(v8 + 16) = result;
    bzero((v8 + 32), 4 * result);
    swift_beginAccess();
    v9 = 0;
    while (1)
    {
      sub_1C73B427C(a3, a4);
      if (v9 >= *(v8 + 16))
      {
        break;
      }

      *(v8 + 4 * v9++ + 32) = v10;
      if (result == v9)
      {
        swift_endAccess();
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_8:
  *a2 = v8;
}

void sub_1C73B427C(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_6:
    __break(1u);
    return;
  }

    ;
  }
}

void sub_1C73B42F8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 != a2)
  {
    v7 = *v2;
    v8 = *(*v2 + 16);
    if (v8 <= a1)
    {
      __break(1u);
    }

    else
    {
      v3 = a2;
      if (v8 > a2)
      {
        v4 = a1;
        v5 = *(v7 + 32 + a1);
        v6 = *(v7 + 32 + a2);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_5:
          v9 = v7 + 32;
          *(v9 + v4) = v6;
          *(v9 + v3) = v5;
          *v2 = v7;
          return;
        }

LABEL_9:
        sub_1C70E3D7C();
        v7 = v10;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::UInt64 __swiftcall Random.Arc4Random.next()()
{
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  v1 = v0;
  sub_1C73B442C();
  OUTLINED_FUNCTION_2_115();
  return v3 | ((v2 & 0xFFFFFFFFFFFFFF00 | v1) << 8);
}

void sub_1C73B442C()
{
  v1 = v0[8] + 1;
  v0[8] = v1;
  if (*(*v0 + 16) <= v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *(*v0 + v1 + 32) + v0[9];
  v0[9] = v3;
  sub_1C73B42F8(v1, v3);
  v4 = *(*v0 + 16);
  if (v4 <= v2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= (*(*v0 + 32 + v3) + *(*v0 + 32 + v2)))
  {
LABEL_9:
    __break(1u);
  }
}

uint64_t Random.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C73B4538(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v3 = Random.Arc4Random.next()() * result;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      while (v4 > v3)
      {
        sub_1C73B442C();
        sub_1C73B442C();
        sub_1C73B442C();
        sub_1C73B442C();
        sub_1C73B442C();
        v6 = v5;
        sub_1C73B442C();
        v8 = v7;
        sub_1C73B442C();
        v10 = v9;
        sub_1C73B442C();
        v3 = (v11 | (((v6 << 16) | (v8 << 8) | v10) << 8)) * v2;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 sub_1C73B45F0(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = Random.Arc4Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          v6 = v5;
          sub_1C73B442C();
          OUTLINED_FUNCTION_2_115();
          v9 = v8 | ((v7 & 0xFFFFFFFFFFFFFF00 | v6) << 8);
        }

        while (v4 > v9 * v1);
        return (v9 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C73B46DC()
{
  result = qword_1EC21B188;
  if (!qword_1EC21B188)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Random.SamplerKind, &type metadata for Random.SamplerKind, v0, v1);
    atomic_store(result, &qword_1EC21B188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Random.SamplerKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static MemoryCreationAvailabilityMonitor.gmAvailabilityPolicyForMemoryCreation()()
{
  v1 = sub_1C754EA7C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  static MemoryCreationAvailabilityMonitor.gmAvailability()(v6 - v5);
  if (!v0)
  {
    sub_1C754EA3C();
    (*(v3 + 8))(v7, v1);
  }
}

void *sub_1C73B49AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C73B4A08();
  *a1 = result;
  return result;
}

void sub_1C73B49D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C6F73150(v1);
}

void *sub_1C73B4A08()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_72();
  sub_1C6F65C28(v1, v2, protocol conformance descriptor for MemoryCreationAvailabilityMonitorObservable);
  sub_1C754E37C();

  v3 = *(v0 + 96);
  v4 = v3;
  return v3;
}

void sub_1C73B4AA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = a2;
  v3 = a2;
}

uint64_t MemoryCreationAvailabilityMonitorObservable.__allocating_init(configuration:photoLibrary:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  MemoryCreationAvailabilityMonitorObservable.init(configuration:photoLibrary:)(a1, a2);
  return v4;
}

void MemoryCreationAvailabilityMonitor.register<A>(newListener:)(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  OUTLINED_FUNCTION_3_16();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v2;
  v6[4] = a1;
  OUTLINED_FUNCTION_30();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C73B61C4;
  *(v7 + 24) = v6;
  v11[4] = sub_1C6F669D4;
  v11[5] = v7;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v11[2] = v8;
  v11[3] = &block_descriptor_37;
  v9 = _Block_copy(v11);
  v10 = v2;
  OUTLINED_FUNCTION_24_2();
  swift_unknownObjectRetain();

  dispatch_sync(v5, v9);
  _Block_release(v9);
  OUTLINED_FUNCTION_60_21();
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [a1 stateDidChangeWithMonitor_];
  }
}

uint64_t sub_1C73B4D20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = sub_1C73B4E7C;
  }

  else
  {
    v7 = sub_1C73B4E20;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C73B4E20()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C73B4E7C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

double sub_1C73B4ED8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_72_19();
  OUTLINED_FUNCTION_73_20(v4);
  OUTLINED_FUNCTION_24_2();

  v5 = sub_1C7550D0C();
  OUTLINED_FUNCTION_3_16();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  OUTLINED_FUNCTION_69_22(v6, v8, v9, v10, v6);

  return result;
}

uint64_t sub_1C73B4F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C7550D1C();
  *(v4 + 24) = sub_1C7550D0C();
  v6 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C73B502C, v6, v5);
}

uint64_t sub_1C73B502C()
{
  OUTLINED_FUNCTION_42();

  MemoryCreationAvailabilityMonitor.stopPolling()();
  OUTLINED_FUNCTION_43();

  return v0();
}

Swift::Void __swiftcall MemoryCreationAvailabilityMonitor.stopPolling()()
{
  v1 = *&v0[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_30();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C73B6274;
  *(v3 + 24) = v2;
  v8[4] = sub_1C6F669DC;
  v8[5] = v3;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v8[2] = v4;
  v8[3] = &block_descriptor_36_0;
  v5 = _Block_copy(v8);
  v6 = v0;

  dispatch_sync(v1, v5);
  _Block_release(v5);
  OUTLINED_FUNCTION_60_21();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1C73B51C4()
{
  OUTLINED_FUNCTION_42();
  sub_1C7550D1C();
  *(v0 + 24) = sub_1C7550D0C();
  OUTLINED_FUNCTION_24_2();
  v2 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C73B5250, v2, v1);
}

uint64_t sub_1C73B5250()
{
  OUTLINED_FUNCTION_42();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_52_3(v1);

  return MemoryCreationAvailabilityMonitor.updateMemoryCreationAvailability()();
}

uint64_t sub_1C73B52E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  if (v0)
  {
    v5 = sub_1C73B5578;
  }

  else
  {
    v5 = sub_1C73B53E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73B53E8()
{
  v25 = v1;
  v2 = *(v1 + 264);
  memcpy(v23, (v1 + 88), 0x41uLL);
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  sub_1C73B5918(__dst);
  if (v2)
  {
    v3 = *(v1 + 264);
    v4 = OUTLINED_FUNCTION_141();
    sub_1C73B5A80(v4);
  }

  v5 = *(v1 + 176);
  v6 = *(v1 + 82);
  v7 = *(v1 + 232);
  v8 = *(v1 + 81);
  v9 = *(v1 + 200);
  *&__dst[8] = *(v1 + 184);
  *&__dst[24] = v9;
  v10 = *(v1 + 216);
  v11 = *(v1 + 180);
  v12 = *(v1 + 182);
  __dst[0] = v8;
  __dst[7] = v12;
  *&__dst[5] = v11;
  *&__dst[1] = v5;
  *&__dst[40] = v10;
  *&__dst[56] = v7;
  __dst[64] = v6;
  if ((static MemoryCreationAvailabilityState.== infix(_:_:)(v23, __dst, *&v10) & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = *(v1 + 240);
  if (!v2)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v13 || (v14 = *(v1 + 264), sub_1C6F65BE8(0, &qword_1EDD06968, 0x1E6978820), v15 = v14, v16 = v13, OUTLINED_FUNCTION_141(), v17 = sub_1C75513EC(), v13, v15, (v17 & 1) == 0))
  {
LABEL_9:
    sub_1C73B627C();
  }

LABEL_10:
  v18 = *(v1 + 264);
  v20 = *(v1 + 240);
  v19 = *(v1 + 248);
  sub_1C73B66D0();

  OUTLINED_FUNCTION_43();

  return v21();
}

uint64_t sub_1C73B5578()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 248);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73B55D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_72();
  sub_1C6F65C28(v3, v4, protocol conformance descriptor for MemoryCreationAvailabilityMonitorObservable);
  return sub_1C754E36C();
}

uint64_t MemoryCreationAvailabilityMonitorObservable.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence43MemoryCreationAvailabilityMonitorObservable___observationRegistrar;
  sub_1C754E39C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t MemoryCreationAvailabilityMonitorObservable.__deallocating_deinit()
{
  MemoryCreationAvailabilityMonitorObservable.deinit();

  return swift_deallocClassInstance();
}

uint64_t MemoryCreationAvailabilityMonitor.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t MemoryCreationAvailabilityMonitor.Configuration.stateUpdatePollingFrequencySeconds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0) + 20);
  sub_1C754FFEC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MemoryCreationAvailabilityMonitor.Configuration.stateUpdatePollingLeewaySeconds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0) + 24);
  sub_1C754FFEC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void sub_1C73B5918(const void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  memcpy((v4 + 24), a1, 0x41uLL);
  OUTLINED_FUNCTION_30();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C73B8E64;
  *(v5 + 24) = v4;
  v10[4] = sub_1C6F669DC;
  v10[5] = v5;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v10[2] = v6;
  v10[3] = &block_descriptor_127;
  v7 = _Block_copy(v10);
  v8 = v1;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  OUTLINED_FUNCTION_60_21();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1C73B5A50(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C73B5A80(v1);
}

void sub_1C73B5A80(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  OUTLINED_FUNCTION_30();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  OUTLINED_FUNCTION_30();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C73B8D60;
  *(v5 + 24) = v4;
  v11[4] = sub_1C6F669DC;
  v11[5] = v5;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v11[2] = v6;
  v11[3] = &block_descriptor_92;
  v7 = _Block_copy(v11);
  v8 = a1;

  v9 = v1;

  dispatch_sync(v3, v7);

  _Block_release(v7);
  OUTLINED_FUNCTION_60_21();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1C73B5BB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__processingAvailability);
  *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__processingAvailability) = a2;
  v2 = a2;
}

double sub_1C73B5C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a3;
    sub_1C7293D70();
  }

  return result;
}

uint64_t sub_1C73B5D28()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD0FB68 != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EDD0FB70);
  v2 = sub_1C754FEEC();
  sub_1C75511BC();
  v3 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "GMS availability updated, updating MC availability status!");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1C73B5E48;

  return MemoryCreationAvailabilityMonitor.updateMemoryCreationAvailability()();
}

uint64_t sub_1C73B5E48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

double sub_1C73B5F28(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__polling) = 0;
  v2 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer;
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C75512EC();
    swift_unknownObjectRelease();
  }

  *(a1 + v2) = 0;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications;
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications))
  {

    sub_1C754EA1C();
  }

  *(a1 + v3) = 0;

  return result;
}

id MemoryCreationAvailabilityMonitor.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8, &qword_1C756FCA0);
  sub_1C755128C();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1C73B6090(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications);
  if (v3)
  {

    sub_1C754EA1C();
  }

  *a2 = v3 == 0;
}

uint64_t sub_1C73B61E0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_66_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_74(v3);

  return sub_1C73B4F94(v5, v6, v7, v1);
}

uint64_t sub_1C73B627C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1D0, &qword_1C7586B98);
  sub_1C755128C();
  result = sub_1C6FB6304();
  if (!result)
  {
  }

  v2 = result;
  if (result >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1CCA5DDD0](i);
      }

      else
      {
        v4 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v4 stateDidChangeWithMonitor_];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void sub_1C73B6388(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__listeners) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1D8, &qword_1C7586BA0);
  v4 = sub_1C7550B5C();

  *a2 = v4;
}

uint64_t sub_1C73B6408()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v4;
  *(v2 + 280) = v0;

  if (v0)
  {
    v5 = sub_1C73B6674;
  }

  else
  {
    v5 = sub_1C73B6510;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73B6510()
{
  v17 = v0;
  memcpy((v0 + 160), (v0 + 88), 0x41uLL);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  v4 = OUTLINED_FUNCTION_40_40();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    OUTLINED_FUNCTION_13_3();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    memcpy(__dst, (v0 + 160), sizeof(__dst));
    MemoryCreationAvailabilityState.description.getter();
    sub_1C6F765A4(v10, v11, &v15);
    OUTLINED_FUNCTION_300_0();

    *(v8 + 4) = v1;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "After processing checks, MC is %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v12 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v12);
  }

  else
  {
  }

  memcpy(*(v0 + 232), (v0 + 160), 0x41uLL);
  OUTLINED_FUNCTION_116();

  return v13();
}

uint64_t sub_1C73B6674()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

void sub_1C73B66D0()
{
  v1 = *&v0[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C73B8D68;
  *(v3 + 24) = v2;
  v7[4] = sub_1C6F669DC;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C6F66984;
  v7[3] = &block_descriptor_102_0;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

double sub_1C73B6824(void (**a1)(char *, uint64_t))
{
  v2 = sub_1C755001C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C755006C();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C754FFEC();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C755009C();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v52 - v13;
  v14 = sub_1C75512BC();
  v66 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer;
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C75512EC();
    swift_unknownObjectRelease();
  }

  *(a1 + v17) = 0;
  swift_unknownObjectRelease();
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__polling) == 1)
  {
    v19 = sub_1C6F65BE8(0, &qword_1EDD0CE18, 0x1E69E9630);
    ObjectType = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue);
    v55 = v19;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F65C28(&unk_1EDD0CE20, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    v53 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1C8, &unk_1C7586B78);
    v65 = v17;
    v20 = a1;
    v21 = v5;
    v22 = v6;
    sub_1C6F65C70(&qword_1EDD0CF10, &qword_1EC21B1C8, &unk_1C7586B78);
    v23 = v21;
    v24 = v65;
    sub_1C75515FC();
    v25 = sub_1C75512CC();
    v66[1](v16, v14);
    *(v20 + v24) = v25;
    swift_unknownObjectRelease();
    if (*(v20 + v24))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = v58;
      sub_1C755007C();
      v27 = v20 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_configuration;
      v28 = type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0);
      v29 = &v27[*(v28 + 20)];
      v66 = v20;
      v30 = v59;
      MEMORY[0x1CCA5C5D0](v26, v29);
      v31 = *(v60 + 8);
      v32 = v26;
      v33 = v61;
      v31(v32, v61);
      v34 = *MEMORY[0x1E69E7F40];
      v58 = v22;
      v55 = v23;
      v35 = v62;
      v36 = v63;
      v37 = *(v63 + 104);
      v60 = v2;
      v38 = v64;
      v37(v62, v34, v64);
      MEMORY[0x1CCA5D840](v30, v35, &v27[*(v28 + 24)], ObjectType);
      swift_unknownObjectRelease();
      v39 = v35;
      v40 = v60;
      (*(v36 + 8))(v39, v38);
      v41 = v55;
      v42 = v58;
      v43 = v30;
      v44 = v66;
      v45 = v33;
      v46 = v53;
      v31(v43, v45);
      v47 = v65;
      if (*(v44 + v65))
      {
        swift_getObjectType();
        v48 = swift_allocObject();
        *(v48 + 16) = v44;
        aBlock[4] = sub_1C73B8D70;
        aBlock[5] = v48;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C6FD8F68;
        aBlock[3] = &block_descriptor_108;
        v49 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v50 = v44;
        v51 = v56;
        sub_1C755003C();
        sub_1C73B725C();
        sub_1C75512DC();
        _Block_release(v49);
        swift_unknownObjectRelease();
        (*(v46 + 8))(v41, v40);
        (*(v57 + 8))(v51, v42);

        if (*(v44 + v47))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1C75512FC();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

double sub_1C73B6EB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1C7294014();

  return result;
}

uint64_t sub_1C73B6FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C73B6FD8, 0, 0);
}

uint64_t sub_1C73B6FD8()
{
  OUTLINED_FUNCTION_42();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_52_3(v2);

    return MemoryCreationAvailabilityMonitor.updateMemoryCreationAvailability()();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_43();

    return v4();
  }
}

uint64_t sub_1C73B70C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_1C73B7200;
  }

  else
  {

    v7 = sub_1C73B71C8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C73B71C8()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_43();
  return v1();
}

uint64_t sub_1C73B7200()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73B725C()
{
  sub_1C755001C();
  sub_1C6F65C28(&qword_1EDD0D0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
  return sub_1C75515FC();
}

uint64_t sub_1C73B7334()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1C73B7A4C;
  }

  else
  {
    v5 = sub_1C73B7438;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73B7438()
{
  v65 = v0;
  v1 = *(v0 + 144);
  if ([v1 wasComputed])
  {
    if ([v1 isAvailable])
    {
      if (qword_1EDD0FB68 != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v2 = sub_1C754FF1C();
      __swift_project_value_buffer(v2, qword_1EDD0FB70);
      v3 = sub_1C754FEEC();
      v4 = sub_1C75511BC();
      v5 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v5, v6))
      {
        OUTLINED_FUNCTION_96_0();
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C6F5C000, v3, v4, "MC is available!", v7, 2u);
        v8 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v8);
      }

      OUTLINED_FUNCTION_14_61();
      v9 = -64;
    }

    else
    {
      v18 = [v1 hasConsistentMediaAnalysisImageVersion];
      v19 = [v1 photosKnowledgeGraphIsReady];
      v20 = [v1 vuIndexIsFullClustered];
      v50 = [v1 libraryHasEnoughCuratedAssets];
      [v1 fractionOfCuratedAssetsWithCaptions];
      v22 = v21;
      [v1 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      v24 = v23;
      [v1 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      v26 = v25;
      v52 = v1;
      [v1 fractionOfCuratedAssetsIndexedInVUClustering];
      v28 = v27;
      LOBYTE(v53) = 0;
      LOBYTE(v54) = 0;
      LOBYTE(v56) = 0;
      if (qword_1EDD0FB68 != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v9 = 0x80;
      v29 = sub_1C754FF1C();
      __swift_project_value_buffer(v29, qword_1EDD0FB70);
      v30 = sub_1C754FEEC();
      v31 = sub_1C75511BC();
      if (os_log_type_enabled(v30, v31))
      {
        v32.i16[0] = v18;
        v32.i16[1] = v19;
        v32.i16[2] = v20;
        v32.i16[3] = v50;
        v33 = vmvn_s8(v32);
        OUTLINED_FUNCTION_13_3();
        v48 = v20;
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v49 = v19;
        v35 = v18;
        v36 = swift_slowAlloc();
        v53 = v36;
        *v34 = 136315138;
        OUTLINED_FUNCTION_70_19();
        v54 = v56;
        v55 = v57;
        OUTLINED_FUNCTION_51_25();
        LOBYTE(v56) = 0;
        v37 = vand_s8(v33, 0x1000100010001);
        *(&v56 + 1) = vuzp1_s8(v37, v37).u32[0];
        v57 = v22;
        v58 = 0;
        v59 = v24;
        v60 = 0;
        v61 = v26;
        v62 = 0;
        v63 = v28;
        v64 = 0;
        countAndFlagsBits = MemoryCreationAvailabilityState.ProcessingIncompleteReasons.description()()._countAndFlagsBits;
        MEMORY[0x1CCA5CD70](countAndFlagsBits);

        v39 = sub_1C6F765A4(v54, v55, &v53);
        v40 = v50;

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1C6F5C000, v30, v31, "Memory Creation required process is not yet complete: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v18 = v35;
        v19 = v49;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v20 = v48;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        v40 = v50;
      }

      v41 = *(v0 + 152);
      v42 = 0x100000000;
      if (v40)
      {
        v42 = 0;
      }

      v43 = 0x1000000;
      if (v20)
      {
        v43 = 0;
      }

      v44 = 0x10000;
      if (v19)
      {
        v44 = 0;
      }

      v45 = 256;
      if (v18)
      {
        v45 = 0;
      }

      *v41 = v44 | v45 | v43 | v42;
      v41[1] = v22;
      v41[2] = 0;
      v41[3] = v24;
      v41[4] = 0;
      v41[5] = v26;
      v41[6] = 0;
      v41[7] = v28;
      v1 = v52;
    }
  }

  else
  {
    LOBYTE(v53) = 1;
    LOBYTE(v54) = 1;
    LOBYTE(v56) = 1;
    if (qword_1EDD0FB68 != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v10 = sub_1C754FF1C();
    __swift_project_value_buffer(v10, qword_1EDD0FB70);
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_13_3();
      v51 = v1;
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v14 = swift_slowAlloc();
      v53 = v14;
      *v13 = 136315138;
      OUTLINED_FUNCTION_70_19();
      v54 = v56;
      v55 = v57;
      OUTLINED_FUNCTION_51_25();
      LOBYTE(v56) = 0;
      *(&v56 + 1) = 33686018;
      v57 = 0;
      v58 = 1;
      v59 = 0;
      v60 = 1;
      v61 = 0;
      v62 = 1;
      v63 = 0;
      v64 = 1;
      v15 = MemoryCreationAvailabilityState.ProcessingIncompleteReasons.description()()._countAndFlagsBits;
      MEMORY[0x1CCA5CD70](v15);

      v16 = sub_1C6F765A4(v54, v55, &v53);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_1C6F5C000, v11, v12, "Memory Creation is unavailable: %s\n\nProcessing availability has not been computed yet.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v1 = v51;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v17 = *(v0 + 152);
    *v17 = xmmword_1C7586880;
    *(v17 + 16) = 1;
    *(v17 + 24) = 0;
    *(v17 + 32) = 1;
    *(v17 + 40) = 0;
    *(v17 + 48) = 1;
    *(v17 + 56) = 0;
    v9 = -127;
  }

  *(*(v0 + 152) + 64) = v9;
  OUTLINED_FUNCTION_116();

  return v46(v1);
}

uint64_t sub_1C73B7A4C()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

BOOL sub_1C73B7AB0(uint64_t a1)
{
  v1 = sub_1C754E9AC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69A1038], v1, v3);
  sub_1C6F65C28(&unk_1EDD10090, MEMORY[0x1E69A1168], MEMORY[0x1E69A1178]);
  v6 = sub_1C755063C();
  (*(v2 + 8))(v5, v1);
  return (v6 & 1) == 0;
}

BOOL sub_1C73B7BFC(uint64_t a1)
{
  v1 = sub_1C754E97C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69A0F20], v1, v3);
  sub_1C6F65C28(&qword_1EDD0CB28, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FB0]);
  v6 = sub_1C755063C();
  (*(v2 + 8))(v5, v1);
  return (v6 & 1) == 0;
}

void *sub_1C73B7D48(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C6FF5694();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_1C6FF5698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static MemoryCreationAvailabilityMonitor.shouldShowMemoryCreationInWhatsNew()()
{
  static MemoryCreationAvailabilityMonitor.generateAvailabilityStateDueToGMSAvailability()(&v5);
  v0 = v10 | v8;
  if ((~v5 & 0xFE00FE00000000FELL) != 0 || ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0xFFE ? (v1 = v0 > 1) : (v1 = 1), !v1 ? (v2 = v12 >= 2u) : (v2 = 1), v2))
  {
    switch(v12 >> 6)
    {
      case 1:
      case 2:
        goto LABEL_11;
      case 3:
        if (v12 != 192)
        {
          goto LABEL_11;
        }

        v3 = v0 | v5 | v6 | v7 | v9 | v11 | (*(&v5 + 11) << 24) | (HIBYTE(v5) << 56) | (BYTE10(v5) << 16) | (BYTE9(v5) << 8) | BYTE8(v5);
        if (v3)
        {
          goto LABEL_11;
        }

        break;
      default:
        LOBYTE(v3) = (((v5 & 0x1000001010100) != 0) | v5 | BYTE9(v5) | BYTE10(v5)) ^ 1;
        break;
    }
  }

  else
  {
LABEL_11:
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

double static MemoryCreationAvailabilityMonitor.availabilityState(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x616974696E696E75 && a2 == 0xED000064657A696CLL;
  if (v6 || (OUTLINED_FUNCTION_42_0(0x616974696E696E75, 0xED000064657A696CLL) & 1) != 0)
  {
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
LABEL_7:
    v8 = -64;
LABEL_8:
    *(a3 + 64) = v8;
    return result;
  }

  v9 = a1 == 0x626967696C656E69 && a2 == 0xEA0000000000656CLL;
  if (v9 || (OUTLINED_FUNCTION_42_0(0x626967696C656E69, 0xEA0000000000656CLL) & 1) != 0)
  {
    *(a3 + 32) = 0;
    *(a3 + 48) = 0;
    *(a3 + 64) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0x101010101;
  }

  else
  {
    v10 = a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62;
    if (v10 || (OUTLINED_FUNCTION_42_0(0x616C696176616E75, 0xEB00000000656C62) & 1) != 0)
    {
      *a3 = 0x2000000010100;
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 48) = 0;
      v8 = 64;
      goto LABEL_8;
    }

    v11 = a1 == 0xD000000000000014 && 0x80000001C7598E90 == a2;
    if (v11 || (OUTLINED_FUNCTION_42_0(0xD000000000000014, 0x80000001C7598E90) & 1) != 0)
    {
      *&result = 0x202020201;
      *a3 = xmmword_1C7586890;
      *(a3 + 16) = 1;
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
      *(a3 + 56) = 0;
      v8 = -127;
      goto LABEL_8;
    }

    v12 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
    if (v12 || (OUTLINED_FUNCTION_42_0(0x6C62616C69617661, 0xE900000000000065) & 1) != 0)
    {
      result = OUTLINED_FUNCTION_14_61();
      goto LABEL_7;
    }

    *a3 = xmmword_1C7586850;
    *(a3 + 16) = 4094;
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 49) = 0u;
  }

  return result;
}

uint64_t static MemoryCreationAvailabilityMonitor.analyticsPayload(photoLibrary:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73B813C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = [objc_allocWithZone(MEMORY[0x1E69789D0]) initWithPhotoLibrary_];
  v0[13] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1C73B820C;

  return static MemoryCreationAvailabilityMonitor.generateFeatureAvailabilityState(using:)((v0 + 2), v1);
}

uint64_t sub_1C73B820C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (v0)
  {
    v9 = sub_1C73B875C;
  }

  else
  {

    v9 = sub_1C73B8324;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C73B8324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8[1].i64[0];
  v11 = v8[1].i64[1];
  v9 = v8 + 1;
  v12 = v8[2].i64[0];
  v13 = v9[1].i64[1];
  v14 = v9[3];
  v15 = v9[4].u8[0];
  v66 = v14;
  v67 = v9[2];
  v16 = vorrq_s8(v14, v67);
  v65 = v16;
  switch(v15 >> 6)
  {
    case 3u:
      OUTLINED_FUNCTION_34_37(1, a2, a3, a4, a5, a6, a7, a8, v16, v14);
      break;
    default:
      break;
  }

  v17 = sub_1C755104C();
  v18 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v17, 0xD000000000000011, 0x80000001C75ADE70, isUniquelyReferenced_nonNull_native);
  if (v15 >> 6 == 3)
  {
    OUTLINED_FUNCTION_34_37(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v30 = v68;
  v31 = sub_1C7550C7C();
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v18;
  sub_1C6FC7E40(v31, 0x7275746165467369, 0xEE00796461655265, v32);
  switch(v15 >> 6)
  {
    case 1u:
      LOWORD(v69) = v10 & 0x101;
      BYTE2(v69) = BYTE2(v10) & 1;
      BYTE3(v69) = BYTE3(v10) & 1;
      BYTE4(v69) = BYTE4(v10) & 1;
      BYTE5(v69) = BYTE5(v10) & 1;
      BYTE6(v69) = BYTE6(v10);
      sub_1C6FE6DA4();
      goto LABEL_12;
    case 2u:
      v69 = v10;
      sub_1C6FE79C0();
LABEL_12:
      OUTLINED_FUNCTION_24_2();
      v44 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_22_59(v44, v45, v46, v47, v48, v49, v50, v51, v65.i64[0], v65.i64[1], v66.i64[0], v66.i64[1], v67.i64[0], v67.i64[1], v68, v69);
      goto LABEL_13;
    case 3u:
      if (v15 != 192 || v10 | *&vorr_s8(*v65.i8, *&vextq_s8(v65, v65, 8uLL)) | v13 | v12 | v11)
      {
LABEL_13:
        v52 = *(v30 + 104);
        v53 = sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
        sub_1C75513BC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        OUTLINED_FUNCTION_52_28(v54, v55, v56, v57);
        sub_1C75513BC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        OUTLINED_FUNCTION_52_28(v58, v59, v60, v61);
        sub_1C75513BC();
        OUTLINED_FUNCTION_141();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        sub_1C6FC7E40(v53, 0x6563697665447369, 0xEF656C6261706143, v62);
      }

      else
      {
        v42 = *(v68 + 104);
        static MemoryCreationAvailabilityMonitor.hardwareIsEligibleForGreymatter()();
        sub_1C7550C7C();
        OUTLINED_FUNCTION_141();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        sub_1C6FC7E40(3, 0xD000000000000012, 0x80000001C7598EB0, v43);
      }

      break;
    default:
      v33 = *(v68 + 104);
      sub_1C6FE6034();
      OUTLINED_FUNCTION_24_2();
      v34 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_22_59(v34, v35, v36, v37, v38, v39, v40, v41, v65.i64[0], v65.i64[1], v66.i64[0], v66.i64[1], v67.i64[0], v67.i64[1], v68, v10);

      break;
  }

  v63 = *(v30 + 8);

  return v63(v69);
}

uint64_t sub_1C73B875C()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 104);

  if (qword_1EDD0FB68 != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v2 = *(v0 + 120);
  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EDD0FB70);
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 120);
  if (v7)
  {
    OUTLINED_FUNCTION_13_3();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_23();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Error generating FeatureAvailabilityState: %@", v9, 0xCu);
    sub_1C6FD7FC8(v10, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v13 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v13);
  }

  else
  {
  }

  OUTLINED_FUNCTION_116();
  v15 = MEMORY[0x1E69E7CC8];

  return v14(v15);
}

id MemoryCreationAvailabilityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1C73B8978(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

unint64_t sub_1C73B8A34()
{
  result = qword_1EC21B1C0;
  if (!qword_1EC21B1C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MemoryCreationAvailabilityMonitor.Error, &type metadata for MemoryCreationAvailabilityMonitor.Error, v0, v1);
    atomic_store(result, &qword_1EC21B1C0);
  }

  return result;
}

uint64_t dispatch thunk of MemoryCreationAvailabilityMonitorObservable.updateMemoryCreationAvailability()()
{
  OUTLINED_FUNCTION_49_0();
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_52_3(v2);

  return v4();
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationAvailabilityMonitor.Error(_BYTE *result, int a2, int a3)
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

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_16();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C73B8DB4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_66_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_74(v3);

  return sub_1C73B6FB8(v5, v6, v7, v1);
}

uint64_t sub_1C73B8E88()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_66_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_74(v3);

  return sub_1C73B5D08(v5, v6, v7, v1);
}

uint64_t OUTLINED_FUNCTION_69_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C6FEB80C(0, 0, v6, v5, a5);
}

uint64_t OUTLINED_FUNCTION_70_19()
{

  return sub_1C755180C();
}

void *sub_1C73B9014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  sub_1C73B9540(a1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1C7550B3C();

  v6 = sub_1C754DC8C();
  v46[0] = 0;
  v7 = [ObjCClassFromMetadata searchWithEmbeddings:v5 photoLibraryURL:v6 searchOptions:a3 error:v46];

  v8 = v46[0];
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1F8, &qword_1C7586BB8);
    v9 = sub_1C7550B5C();
    v10 = v8;

    v11 = *(v9 + 16);
    if (v11)
    {
      v46[0] = MEMORY[0x1E69E7CC0];
      sub_1C716D7F8(0, v11, 0);
      v12 = 0;
      v13 = v46[0];
      v41 = v9;
      v42 = v9 + 32;
      v40 = v11;
      do
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        v43 = v12 + 1;
        v44 = v13;
        v14 = *(v42 + 8 * v12);
        v15 = sub_1C6FB6304();
        sub_1C75504FC();
        v16 = 0;
        v45 = MEMORY[0x1E69E7CC0];
        while (v15 != v16)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1CCA5DDD0](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
          }

          v20 = sub_1C73B98E8(v17);
          if (v21)
          {
            v26 = v20;
            v27 = v21;
            v28 = [v18 similarity];
            [v28 doubleValue];
            v30 = v29;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1DA0(0);
              v45 = v34;
            }

            v32 = *(v45 + 16);
            v31 = *(v45 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_1C6FB1DA0(v31 > 1);
              v45 = v35;
            }

            *(v45 + 16) = v32 + 1;
            v33 = v45 + 32 * v32;
            *(v33 + 32) = v26;
            *(v33 + 40) = v27;
            *(v33 + 48) = v30;
            *(v33 + 56) = 0;
            v16 = v19;
          }

          else
          {
            if (qword_1EC214078 != -1)
            {
              swift_once();
            }

            v22 = sub_1C754FF1C();
            __swift_project_value_buffer(v22, qword_1EC21B1E0);
            v23 = sub_1C754FEEC();
            v24 = sub_1C755119C();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_1C6F5C000, v23, v24, "Unexpected missing identifier in embedding search db result.", v25, 2u);
              MEMORY[0x1CCA5F8E0](v25, -1, -1);
            }

            ++v16;
          }
        }

        v13 = v44;
        v46[0] = v44;
        v37 = v44[2];
        v36 = v44[3];
        if (v37 >= v36 >> 1)
        {
          sub_1C716D7F8(v36 > 1, v37 + 1, 1);
          v13 = v46[0];
        }

        v13[2] = v37 + 1;
        v13[v37 + 4] = v45;
        v12 = v43;
        v9 = v41;
      }

      while (v43 != v40);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v38 = v46[0];
    v13 = sub_1C754DBEC();

    swift_willThrow();
  }

  return v13;
}

void *sub_1C73B944C(void *result)
{
  v1 = result[2];
  if (v1 >> 31)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x1E69BE598]) initWithResultLimit_];
    sub_1C73B9888(v2, v3);
    [v3 setFullScan_];
    return v3;
  }

  return result;
}

uint64_t sub_1C73B94C0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21B1E0);
  __swift_project_value_buffer(v0, qword_1EC21B1E0);
  return sub_1C754FEFC();
}

unint64_t sub_1C73B9540(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716EB00(0, v2, 0);
    v5 = 0;
    v6 = *__dst;
    v33 = v2;
    v34 = a1 + 32;
    do
    {
      v7 = *(v34 + 8 * v5);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v3;
        v37 = v3;
        sub_1C75504FC();
        sub_1C716EB20(0, v8, 0);
        v1 = v3;
        v10 = *(v3 + 16);
        v11 = 32;
        do
        {
          _S8 = *(v7 + v11);
          v37 = v1;
          v13 = *(v1 + 24);
          if (v10 >= v13 >> 1)
          {
            sub_1C716EB20(v13 > 1, v10 + 1, 1);
            v1 = v37;
          }

          __asm { FCVT            H0, S8 }

          *(v1 + 16) = v10 + 1;
          *(v1 + 2 * v10 + 32) = _H0;
          v11 += 4;
          ++v10;
          --v8;
        }

        while (v8);

        v3 = v9;
        v2 = v33;
      }

      else
      {
        v1 = v3;
      }

      *__dst = v6;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        sub_1C716EB00(v19 > 1, v20 + 1, 1);
        v6 = *__dst;
      }

      ++v5;
      *(v6 + 16) = v21;
      *(v6 + 8 * v20 + 32) = v1;
    }

    while (v5 != v2);
  }

  else
  {
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v21)
    {
      v23 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  v37 = v3;
  sub_1C716EAB4();
  v22 = 32;
  v23 = v3;
  do
  {
    v24 = *(v6 + v22);
    v25 = *(v24 + 16);
    if ((v25 + 0x4000000000000000) < 0)
    {
      __break(1u);
    }

    if (v25)
    {
      v26 = 2 * v25;
      if ((2 * v25) <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v36 = 2 * v25;
        memcpy(__dst, (v24 + 32), 2 * v25);
        v25 = *__dst;
        v1 = v1 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v36 << 16)) << 32);
        sub_1C75504FC();
        v29 = v1;
      }

      else
      {
        sub_1C754D9CC();
        swift_allocObject();
        sub_1C75504FC();
        v27 = sub_1C754D98C();
        v28 = v27;
        if (v25 >> 30)
        {
          sub_1C754DD8C();
          v25 = swift_allocObject();
          *(v25 + 16) = 0;
          *(v25 + 24) = v26;
          v29 = v28 | 0x8000000000000000;
        }

        else
        {
          v25 <<= 33;
          v29 = v27 | 0x4000000000000000;
        }
      }
    }

    else
    {
      sub_1C75504FC();
      v29 = 0xC000000000000000;
    }

    v37 = v23;
    v30 = *(v23 + 16);
    if (v30 >= *(v23 + 24) >> 1)
    {
      sub_1C716EAB4();
      v23 = v37;
    }

    *(v23 + 16) = v30 + 1;
    v31 = v23 + 16 * v30;
    *(v31 + 32) = v25;
    *(v31 + 40) = v29;
    v22 += 8;
    --v21;
  }

  while (v21);
LABEL_28:

  return v23;
}

void sub_1C73B9888(uint64_t a1, void *a2)
{
  v3 = sub_1C7550B3C();
  [a2 setAssetUUIDsForPrefilter_];
}

uint64_t sub_1C73B98E8(void *a1)
{
  v1 = [a1 assetUUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t sub_1C73B994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v18 = v3;
    v22 = MEMORY[0x1E69E7CC0];
    v20 = v9;
    sub_1C755195C();
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    do
    {
      __swift_mutable_project_boxed_opaque_existential_0(a2, *(a2 + 24));
      v14 = sub_1C755057C();
      v21[3] = &type metadata for Random.Arc4Random;
      v21[4] = sub_1C7054F1C();
      Random.Arc4Random.init(seed:)(v14, v21);
      (*(v8 + 16))(v11, v13, v20);
      v15 = *(a3 + 96);
      v16 = *(a3 + 104);
      _s20ClusterElectionStateCMa(0);
      swift_allocObject();

      sub_1C75504FC();
      sub_1C73BD4D8(v11, v15, v21, v16);
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v13 += v19;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C73B9B70(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(type metadata accessor for Hastings.Asset(0) - 8);
    result = sub_1C741B1C4(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
  return result;
}

uint64_t sub_1C73B9C30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_2();
  v5 = v3 == 0xD000000000000011 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_6_2(0xD000000000000011, v4) & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    v9 = v6 == 0xD000000000000012 && v8 == a2;
    if (v9 || (OUTLINED_FUNCTION_6_2(0xD000000000000012, v8) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_10_2();
      v11 = v6 == 0xD000000000000015 && v10 == a2;
      if (v11 || (OUTLINED_FUNCTION_6_2(0xD000000000000015, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_10_2();
        v13 = v6 == 0xD000000000000015 && v12 == a2;
        if (v13 || (OUTLINED_FUNCTION_6_2(0xD000000000000015, v12) & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_10_2();
          v15 = v6 == 0xD000000000000011 && v14 == a2;
          if (v15 || (OUTLINED_FUNCTION_6_2(0xD000000000000011, v14) & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_10_2();
            if (v6 == 0xD000000000000022 && v16 == a2)
            {

              return 5;
            }

            else
            {
              v18 = OUTLINED_FUNCTION_6_2(0xD000000000000022, v16);

              if (v18)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C73B9DBC(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73B9E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73B9C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73B9E84(uint64_t a1)
{
  v2 = sub_1C73BE800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73B9EC0(uint64_t a1)
{
  v2 = sub_1C73BE800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73B9EFC()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_300();
  v4 = type metadata accessor for Hastings.Feature(v3);
  v5 = OUTLINED_FUNCTION_18(v4);
  v161 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v171 = (v8 - v7);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B288, &qword_1C7586EC0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v164 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v168 = v151 - v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B248, &qword_1C7586E50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v167 = (v151 - v15);
  v16 = type metadata accessor for Hastings.Asset(0);
  v17 = OUTLINED_FUNCTION_18(v16);
  v169 = v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v172 = (v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B290, &qword_1C7586EC8);
  OUTLINED_FUNCTION_3_0();
  v23 = v22;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v151 - v25;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1C73BE800();
  sub_1C755200C();
  v27 = *(v1 + 24);
  if (v27)
  {
    v28 = *(v27 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v162 = v23;
      v163 = v26;
      v159 = v1;
      v160 = v21;
      v174[0] = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C(0, v28, 0, v30, v31, v32, v33);
      v29 = v174[0];
      OUTLINED_FUNCTION_15_4();
      v158 = v27;
      v35 = v27 + v34;
      v37 = *(v36 + 72);
      do
      {
        v38 = v172;
        sub_1C73BE6F4(v35, v172, type metadata accessor for Hastings.Asset);
        v40 = *v38;
        v39 = v38[1];
        sub_1C75504FC();
        sub_1C73BE750();
        v174[0] = v29;
        v46 = *(v29 + 16);
        v45 = *(v29 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1C6F7ED9C(v45 > 1, v46 + 1, 1, v41, v42, v43, v44);
          v29 = v174[0];
        }

        *(v29 + 16) = v46 + 1;
        v47 = v29 + 16 * v46;
        *(v47 + 32) = v40;
        *(v47 + 40) = v39;
        v35 += v37;
        --v28;
      }

      while (v28);

      v2 = v159;
      v21 = v160;
      v23 = v162;
      v26 = v163;
    }
  }

  else
  {
    v29 = 0;
  }

  v174[0] = v29;
  LOBYTE(v175) = 1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217538, &qword_1C7586ED0);
  v49 = sub_1C73BE8B8(&qword_1EDD06A90, &qword_1EC217538, &qword_1C7586ED0, sub_1C6FC18BC);
  v50 = v170;
  sub_1C7551D2C();
  if (v50)
  {

    return (*(v23 + 8))(v26, v21);
  }

  v151[1] = v49;

  v51 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v52 = v2 + v51;
  v53 = v167;
  sub_1C712A774(v52, v167, &qword_1EC21B248, &qword_1C7586E50);
  LOBYTE(v175) = 2;
  v54 = sub_1C73BE8B8(&qword_1EC21B2A0, &qword_1EC21B248, &qword_1C7586E50, sub_1C73BE854);
  OUTLINED_FUNCTION_30_41(v53, &v175, v21, v166, v54);
  sub_1C6FD7FC8(v53, &qword_1EC21B248, &qword_1C7586E50);
  v56 = *(v2 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_featuresByAsset);
  v156 = v48;
  if (v56)
  {
    v159 = v2;
    v57 = v56 + 64;
    OUTLINED_FUNCTION_13_75();
    v60 = v59 & v58;
    v62 = (v61 + 63) >> 6;
    v157 = v63;
    swift_bridgeObjectRetain_n();
    v64 = 0;
    v65 = MEMORY[0x1E69E7CC8];
    v155 = 0;
    v153 = v57;
    v152 = v62;
    v160 = v21;
    v162 = v23;
    v163 = v26;
    if (!v60)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v167 = v65;
LABEL_20:
      v158 = v60;
      v166 = v64;
      v67 = __clz(__rbit64(v60)) | (v64 << 6);
      v68 = v157;
      v69 = v168;
      sub_1C73BE6F4(*(v157 + 48) + *(v169 + 72) * v67, v168, type metadata accessor for Hastings.Asset);
      v70 = *(*(v68 + 56) + 8 * v67);
      v71 = v165;
      *(v69 + *(v165 + 48)) = v70;
      v72 = v69;
      v73 = v164;
      sub_1C712A774(v72, v164, &qword_1EC21B288, &qword_1C7586EC0);
      v50 = *(v73 + *(v71 + 48));
      sub_1C75504FC();

      v74 = v73[1];
      v170 = *v73;
      sub_1C75504FC();
      OUTLINED_FUNCTION_295();
      v75 = sub_1C73BE750();
      v82 = *(v70 + 16);
      if (v82)
      {
        v154 = v74;
        v175 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_29_38(v75, v76, v77, v78, v79, v80, v81);
        v83 = v175;
        OUTLINED_FUNCTION_15_4();
        v85 = v70 + v84;
        v87 = *(v86 + 72);
        do
        {
          OUTLINED_FUNCTION_8_76();
          v88 = v171;
          sub_1C73BE6F4(v85, v171, v89);
          v91 = *v88;
          v90 = v88[1];
          sub_1C75504FC();
          sub_1C73BE750();
          v175 = v83;
          v97 = v83[2];
          v96 = v83[3];
          if (v97 >= v96 >> 1)
          {
            OUTLINED_FUNCTION_21_55(v92, v93, v94, v95, v96);
            v83 = v175;
          }

          v83[2] = v97 + 1;
          v98 = &v83[2 * v97];
          v98[4] = v91;
          v98[5] = v90;
          v85 += v87;
          --v82;
        }

        while (v82);
        v21 = v160;
        v74 = v154;
      }

      else
      {
        v83 = MEMORY[0x1E69E7CC0];
      }

      v99 = v167;
      swift_isUniquelyReferenced_nonNull_native();
      v175 = v99;
      v100 = sub_1C6F78124(v170, v74);
      if (__OFADD__(*(v99 + 16), (v101 & 1) == 0))
      {
        break;
      }

      v102 = v100;
      v103 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
      if (sub_1C7551A2C())
      {
        v104 = sub_1C6F78124(v170, v74);
        v48 = v156;
        if ((v103 & 1) != (v105 & 1))
        {
          goto LABEL_55;
        }

        v102 = v104;
      }

      else
      {
        v48 = v156;
      }

      v57 = v153;
      v62 = v152;
      if (v103)
      {

        v65 = v175;
        *(v175[7] + 8 * v102) = v83;
      }

      else
      {
        v65 = v175;
        v175[(v102 >> 6) + 8] |= 1 << v102;
        v106 = (v65[6] + 16 * v102);
        *v106 = v170;
        v106[1] = v74;
        *(v65[7] + 8 * v102) = v83;
        v107 = v65[2];
        v108 = __OFADD__(v107, 1);
        v109 = v107 + 1;
        if (v108)
        {
          goto LABEL_54;
        }

        v65[2] = v109;
      }

      v23 = v162;
      v26 = v163;
      v60 = (v158 - 1) & v158;
      sub_1C6FD7FC8(v168, &qword_1EC21B288, &qword_1C7586EC0);
      v64 = v166;
      if (!v60)
      {
LABEL_16:
        while (1)
        {
          v66 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          if (v66 >= v62)
          {

            v2 = v159;
            goto LABEL_40;
          }

          v60 = *(v57 + 8 * v66);
          ++v64;
          if (v60)
          {
            v167 = v65;
            v64 = v66;
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v65 = 0;
LABEL_40:
    v167 = v65;
    v175 = v65;
    v173 = 3;
    v110 = OUTLINED_FUNCTION_90();
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(v110, v111);
    sub_1C73BE8B8(&qword_1EC21B2B8, &qword_1EC21B2B0, &unk_1C7586ED8, sub_1C73BE934);
    v113 = OUTLINED_FUNCTION_16_59();
    OUTLINED_FUNCTION_30_41(v113, v114, v115, v112, v116);
    if (!v50)
    {

      v117 = *(v2 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_electedAssets);
      if (v117)
      {
        v163 = v26;
        v118 = *(v117 + 16);
        v119 = MEMORY[0x1E69E7CC0];
        if (v118)
        {
          v155 = 0;
          v162 = v23;
          v159 = v2;
          v160 = v21;
          v175 = MEMORY[0x1E69E7CC0];
          v120 = sub_1C75504FC();
          OUTLINED_FUNCTION_29_38(v120, v121, v122, v123, v124, v125, v126);
          v119 = v175;
          OUTLINED_FUNCTION_15_4();
          v171 = v117;
          v128 = v117 + v127;
          v130 = *(v129 + 72);
          do
          {
            v131 = v172;
            sub_1C73BE6F4(v128, v172, type metadata accessor for Hastings.Asset);
            v132 = *v131;
            v133 = v131[1];
            sub_1C75504FC();
            sub_1C73BE750();
            v175 = v119;
            v139 = v119[2];
            v138 = v119[3];
            if (v139 >= v138 >> 1)
            {
              OUTLINED_FUNCTION_21_55(v134, v135, v136, v137, v138);
              v119 = v175;
            }

            v119[2] = v139 + 1;
            v140 = &v119[2 * v139];
            v140[4] = v132;
            v140[5] = v133;
            v128 += v130;
            --v118;
          }

          while (v118);

          v2 = v159;
          v21 = v160;
          v23 = v162;
          v48 = v156;
        }

        v26 = v163;
      }

      else
      {
        v119 = 0;
      }

      v175 = v119;
      v173 = 4;
      v141 = OUTLINED_FUNCTION_16_59();
      OUTLINED_FUNCTION_30_41(v141, v142, v143, v48, v144);

      v175 = *(v2 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_roundRobinHelperDiagnosticReporter);
      v173 = 5;
      v145 = _s24RoundRobinElectionHelperC18DiagnosticReporterCMa();
      sub_1C73BD984(&qword_1EC21B2C8, v146, _s24RoundRobinElectionHelperC18DiagnosticReporterCMa, byte_1C7586DA0);
      v147 = OUTLINED_FUNCTION_16_59();
      OUTLINED_FUNCTION_30_41(v147, v148, v149, v145, v150);
      return (*(v23 + 8))(v26, v21);
    }

    (*(v23 + 8))(v26, v21);
  }

  return result;
}

uint64_t sub_1C73BA994()
{

  sub_1C6FD7FC8(v0 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection, &qword_1EC21B248, &qword_1C7586E50);

  return v0;
}

uint64_t sub_1C73BAA0C()
{
  sub_1C73BA994();

  return swift_deallocClassInstance();
}

void sub_1C73BAA8C(uint64_t a1)
{
  sub_1C73BAB38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C73BAB38(uint64_t a1)
{
  if (!qword_1EC21B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B218, &unk_1C7586C00);
    v1 = sub_1C755149C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21B210);
    }
  }
}

uint64_t sub_1C73BAB9C()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B218, &unk_1C7586C00);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_featuresByAsset) = 0;
  *(v1 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_electedAssets) = 0;
  v4 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_roundRobinHelperDiagnosticReporter;
  _s24RoundRobinElectionHelperC18DiagnosticReporterCMa();
  v5 = swift_allocObject();
  type metadata accessor for Hastings.ClusterAssetElector.DiagnosticReporter();
  swift_allocObject();
  *(v5 + 16) = sub_1C73D26D4();
  *(v1 + v4) = v5;
  return v1;
}

uint64_t sub_1C73BAC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v148 = a3;
  i = sub_1C754F58C();
  v6 = OUTLINED_FUNCTION_18(i);
  v163 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v9 - v8);
  *&v169 = type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v173 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  v185 = v147 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B248, &qword_1C7586E50);
  OUTLINED_FUNCTION_76(v18);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_108_0(v147 - v20);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B218, &unk_1C7586C00);
  v21 = OUTLINED_FUNCTION_18(v151);
  v150 = v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_108_0(v147 - v24);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  OUTLINED_FUNCTION_3_0();
  v166 = v25;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_108_0(v147 - v27);
  v28 = v3[1];
  v182 = *v3;
  v183 = v28;
  v29 = v3[3];
  *v184 = v3[2];
  *&v184[16] = v29;
  v152 = *(&v29 + 1);
  v157 = v4;
  v164 = a1;
  if (*(&v29 + 1))
  {
    v30 = *(a1 + 16);
    v31 = MEMORY[0x1E69E7CC8];
    v32 = (a1 + 64);
    if (v30)
    {
      do
      {
        v167 = v30;
        v34 = *(v32 - 4);
        v33 = *(v32 - 3);
        v35 = *(v32 - 2);
        v172 = *v32;
        sub_1C75504FC();
        v174 = v35;
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        *&v179 = v31;
        v36 = OUTLINED_FUNCTION_295();
        v38 = sub_1C6F78124(v36, v37);
        if (__OFADD__(*(v31 + 16), (v39 & 1) == 0))
        {
          __break(1u);
          goto LABEL_76;
        }

        v40 = v38;
        v41 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
        if (sub_1C7551A2C())
        {
          v42 = OUTLINED_FUNCTION_295();
          v44 = sub_1C6F78124(v42, v43);
          if ((v41 & 1) != (v45 & 1))
          {
            result = sub_1C7551E4C();
            __break(1u);
            return result;
          }

          v40 = v44;
        }

        v31 = v179;
        if (v41)
        {
          OUTLINED_FUNCTION_22_60();
        }

        else
        {
          *(v179 + 8 * (v40 >> 6) + 64) |= 1 << v40;
          v46 = (*(v31 + 48) + 16 * v40);
          *v46 = v34;
          v46[1] = v33;
          OUTLINED_FUNCTION_22_60();

          v47 = *(v31 + 16);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_77;
          }

          *(v31 + 16) = v49;
        }

        v32 += 5;
        v30 = v167 - 1;
      }

      while (v167 != 1);
    }

    *(v152 + 16) = v31;

    a1 = v164;
  }

  v160 = *(a1 + 16);
  if (v160)
  {
    v179 = v182;
    v180 = v183;
    *v181 = *v184;
    *&v181[16] = *&v184[16];
    v50 = sub_1C73BBE30(a1);
    swift_getKeyPath();
    v51 = *(v50 + 16);
    v156 = v50;
    if (v51)
    {
      *&v179 = MEMORY[0x1E69E7CC0];
      sub_1C716ED18(0, v51, 0);
      v52 = v179;
      v174 = *(v166 + 16);
      v53 = v50 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v172 = *(v166 + 72);
      v166 += 16;
      v54 = (v166 - 8);
      v55 = v162;
      do
      {
        v56 = v165;
        v174(v165, v53, v55);
        swift_getAtKeyPath();
        (*v54)(v56, v55);
        v57 = v175;
        *&v179 = v52;
        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1C716ED18(v58 > 1, v59 + 1, 1);
          v55 = v162;
          v52 = v179;
        }

        *(v52 + 16) = v59 + 1;
        *(v52 + 8 * v59 + 32) = v57;
        v53 += v172;
        --v51;
      }

      while (v51);
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_4_94();
    v66 = sub_1C73BC064(v52);
    v67 = v151;
    v68 = v150;
    v69 = v149;
    v70 = v152;
    v147[2] = v66;
    v71 = v164;
    if (v152)
    {
      *(v152 + 24) = v66;
      sub_1C75504FC();

      OUTLINED_FUNCTION_4_94();
      sub_1C73BC380();
      v72 = *(v68 + 16);
      v68 = v161;
      v72(v161, v69, v67);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v67);
      v73 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection;
      swift_beginAccess();
      sub_1C73BE630(v68, v70 + v73);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_4_94();
      sub_1C73BC380();
    }

    v74 = v163;
    OUTLINED_FUNCTION_4_94();
    v75 = sub_1C73BC5B4(v52);

    if (v70)
    {
      *(v70 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_featuresByAsset) = v75;
      sub_1C75504FC();
    }

    v147[0] = v75;
    v76 = 0;
    v178 = MEMORY[0x1E69E7CD0];
    v159 = v71 + 32;
    LODWORD(v167) = *MEMORY[0x1E69C1920];
    v166 = v74 + 104;
    v165 = v74 + 8;
LABEL_31:
    if (v76 != v160)
    {
      v77 = (v159 + 40 * v76);
      v78 = v77[1];
      v79 = v77[2];
      v80 = v77[3];
      v163 = v76 + 1;
      v81 = v80 + 64;
      v82 = 1 << *(v80 + 32);
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v84 = v83 & *(v80 + 64);
      v85 = (v82 + 63) >> 6;
      v162 = v78;
      sub_1C75504FC();
      v161 = v79;
      sub_1C75504FC();
      v174 = v80;
      swift_bridgeObjectRetain_n();
      v86 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          v87 = v86;
          if (!v84)
          {
            while (1)
            {
              v86 = v87 + 1;
              if (__OFADD__(v87, 1))
              {
                break;
              }

              if (v86 >= v85)
              {

                v75 = &v178;
                sub_1C7397D14();

                v76 = v163;
                goto LABEL_31;
              }

              v84 = *(v81 + 8 * v86);
              ++v87;
              if (v84)
              {
                goto LABEL_40;
              }
            }

            __break(1u);
LABEL_69:
            v139 = 0;
            goto LABEL_70;
          }

LABEL_40:
          v84 &= v84 - 1;
          OUTLINED_FUNCTION_27_46();
          v172 = v88;
          v90 = OUTLINED_FUNCTION_6_98(v89);
          v91 = v168;
          sub_1C73BE6F4(v90, v168, v92);
          OUTLINED_FUNCTION_0_166();
          sub_1C73BE7A4(v91, v185, v93);
          (*v166)(v170, v167, i);
          sub_1C73BD984(&qword_1EC2147A0, 255, MEMORY[0x1E69C1928], MEMORY[0x1E69C1950]);
          sub_1C7550A5C();
          sub_1C7550A5C();
          v75 = v176;
          if (v179 != v175 || *(&v179 + 1) != v176)
          {
            break;
          }

          v97 = OUTLINED_FUNCTION_18_58();
          v98(v97);

LABEL_47:
          OUTLINED_FUNCTION_0_166();
          sub_1C73BE7A4(v185, v158, v99);
          v100 = v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v177 = v100;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = &v177;
            sub_1C716ED38(0, *(v100 + 16) + 1, 1);
            v100 = v177;
          }

          v68 = *(v100 + 16);
          v102 = *(v100 + 24);
          if (v68 >= v102 >> 1)
          {
            v75 = &v177;
            sub_1C716ED38(v102 > 1, v68 + 1, 1);
            v100 = v177;
          }

          *(v100 + 16) = v68 + 1;
          v164 = v100;
          OUTLINED_FUNCTION_0_166();
          sub_1C73BE7A4(v158, v103, v104);
        }

        v68 = sub_1C7551DBC();
        v95 = OUTLINED_FUNCTION_18_58();
        v96(v95);

        if (v68)
        {
          goto LABEL_47;
        }

        sub_1C73BE750();
      }
    }

    v105 = v178 + 56;
    OUTLINED_FUNCTION_13_75();
    v108 = v107 & v106;
    v110 = (v109 + 63) >> 6;
    v185 = v111;
    sub_1C75504FC();
    v112 = 0;
    *&v113 = 136315394;
    v169 = v113;
    v172 = v105;
    for (i = v110; ; v110 = i)
    {
      v114 = v154;
      if (!v108)
      {
        break;
      }

      v115 = v112;
      v116 = v155;
LABEL_60:
      OUTLINED_FUNCTION_27_46();
      v118 = OUTLINED_FUNCTION_6_98(v117);
      sub_1C73BE6F4(v118, v114, v119);
      if (qword_1EC213E88 != -1)
      {
        OUTLINED_FUNCTION_9_83();
        swift_once();
      }

      v108 &= v108 - 1;
      v120 = sub_1C754FF1C();
      __swift_project_value_buffer(v120, qword_1EC25B6F0);
      OUTLINED_FUNCTION_7_85();
      sub_1C73BE6F4(v114, v116, v121);
      v122 = v153;
      sub_1C73BE6F4(v114, v153, v68);
      sub_1C75504FC();
      v123 = sub_1C754FEEC();
      v124 = sub_1C75511BC();

      sub_1C73BE750();
      LODWORD(v174) = v124;
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *&v179 = v126;
        *v125 = v169;
        v170 = v123;
        v127 = Hastings.Feature.description.getter();
        v129 = v128;
        OUTLINED_FUNCTION_7_85();
        sub_1C73BE750();
        v130 = sub_1C6F765A4(v127, v129, &v179);

        *(v125 + 4) = v130;
        *(v125 + 12) = 2080;
        MEMORY[0x1EEE9AC00](v131);
        v147[-2] = v122;
        v132 = v157;
        sub_1C7045190(sub_1C73BE614, &v147[-4], v156);
        v157 = v132;
        v134 = MEMORY[0x1CCA5D090](v133);
        v136 = v135;

        sub_1C73BE750();
        v137 = sub_1C6F765A4(v134, v136, &v179);

        *(v125 + 14) = v137;
        v138 = v170;
        _os_log_impl(&dword_1C6F5C000, v170, v174, "[featuresToRepresent] Feature %s, expected from clusters %s", v125, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v126, -1, -1);
        MEMORY[0x1CCA5F8E0](v125, -1, -1);
      }

      else
      {

        OUTLINED_FUNCTION_8_76();
        sub_1C73BE750();
        OUTLINED_FUNCTION_90();
        sub_1C73BE750();
      }

      v112 = v115;
      v105 = v172;
    }

    v116 = v155;
    while (1)
    {
      v115 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      if (v115 >= v110)
      {

        v179 = v182;
        v180 = v183;
        *v181 = *v184;
        *&v181[14] = *&v184[14];
        sub_1C75504FC();
        sub_1C7035CB0(&v182, &v175);
        v75 = sub_1C706E8F0();
        v84 = v152;
        if (!v152)
        {
          goto LABEL_69;
        }

        v139 = *(v152 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_roundRobinHelperDiagnosticReporter);

LABEL_70:
        v65 = v157;
        v140 = v151;
        v141 = v150;
        v142 = v149;
        v143 = _s24RoundRobinElectionHelperCMa();
        v144 = swift_allocObject();
        sub_1C73BDCE4(&v179, v75, v139);
        (*(v141 + 16))(v147[1], v142, v140);
        *(&v180 + 1) = v143;
        *v181 = sub_1C73BD984(&qword_1EC21B250, v145, _s24RoundRobinElectionHelperCMa, byte_1C7586DC8);
        *&v179 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B258, &qword_1C7586E98);
        swift_allocObject();

        sub_1C754F4AC();
        sub_1C754F48C();
        if (v65)
        {
          (*(v141 + 8))(v142, v140);
        }

        else
        {
          v65 = sub_1C754F49C();

          (*(v141 + 8))(v142, v140);
          if (v84)
          {
            *(v84 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_electedAssets) = v65;
            sub_1C75504FC();
          }
        }

        return v65;
      }

      v108 = *(v105 + 8 * v115);
      ++v112;
      if (v108)
      {
        goto LABEL_60;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
  }

  else if (qword_1EC213E88 == -1)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_9_83();
  swift_once();
LABEL_21:
  v60 = sub_1C754FF1C();
  __swift_project_value_buffer(v60, qword_1EC25B6F0);
  v61 = sub_1C754FEEC();
  v62 = sub_1C755119C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1C6F5C000, v61, v62, "No clusters to elect from, bailing out", v63, 2u);
    MEMORY[0x1CCA5F8E0](v63, -1, -1);
  }

  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v64 + 8))(v148);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C73BBE30(uint64_t a1)
{
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  v3 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  v5 = v20 - v4;
  v6 = v1[1];
  v23[0] = *v1;
  v23[1] = v6;
  v7 = v1[3];
  v23[2] = v1[2];
  v23[3] = v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C716EC8C(0, v8, 0);
    v10 = 0;
    v9 = v22;
    v11 = (a1 + 64);
    do
    {
      v13 = *(v11 - 4);
      v12 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      v20[1] = v10;
      v21[0] = v13;
      v21[1] = v12;
      v21[2] = v14;
      v21[3] = v15;
      v21[4] = v16;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C73BCB48(v21, v16, v23, v5);

      v22 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C716EC8C((v17 > 1), v18 + 1, 1);
        v9 = v22;
      }

      v11 += 5;
      ++v10;
      *(v9 + 16) = v18 + 1;
      (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v5, v20[0]);
    }

    while (v8 != v10);
  }

  return v9;
}

uint64_t sub_1C73BC024@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  result = sub_1C754F46C();
  *a1 = result;
  return result;
}

uint64_t sub_1C73BC064(uint64_t a1)
{
  v3 = type metadata accessor for Hastings.Asset(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - v6);
  v8 = *(v1 + 8);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v10 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 16);
  v28 = a1 + 32;
  v29 = v11;
LABEL_3:
  if (v10 == v29)
  {
    return v37;
  }

  v12 = *(v28 + 8 * v10);
  v30 = v10 + 1;
  v34 = *(v12 + 16);
  result = sub_1C75504FC();
  v14 = 0;
  for (i = result; ; result = i)
  {
LABEL_5:
    if (v14 == v34)
    {

      sub_1C6FD2960(v9);
      v9 = MEMORY[0x1E69E7CC0];
      v10 = v30;
      goto LABEL_3;
    }

    if (v14 >= *(result + 16))
    {
      break;
    }

    v15 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v16 = *(v32 + 72);
    v35 = v14 + 1;
    sub_1C73BE6F4(result + v15 + v16 * v14, v7, type metadata accessor for Hastings.Asset);
    if (*(v8 + 16))
    {
      v17 = *v7;
      v18 = v7[1];
      sub_1C7551F3C();
      sub_1C75505AC();
      v19 = sub_1C7551FAC();
      v20 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v8 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v8 + 48) + 16 * v21);
        if (*v22 != v17 || v22[1] != v18)
        {
          v24 = sub_1C7551DBC();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C73BE7A4(v7, v31, type metadata accessor for Hastings.Asset);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C716E298(0, *(v9 + 16) + 1, 1);
          v9 = v36;
        }

        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1C716E298(v26 > 1, v27 + 1, 1);
          v9 = v36;
        }

        *(v9 + 16) = v27 + 1;
        sub_1C73BE7A4(v31, v9 + v15 + v27 * v16, type metadata accessor for Hastings.Asset);
        result = i;
        v14 = v35;
        goto LABEL_5;
      }
    }

    sub_1C73BE750();
    v14 = v35;
  }

  __break(1u);
  return result;
}

void sub_1C73BC380()
{
  v1 = *(v0 + 40);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C716ECCC(0, v3, 0);
    v4 = 0;
    v13 = v1;
    v14 = *(v1 + 16);
    v2 = v16;
    v5 = (v1 + 48);
    while (v14 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_10;
      }

      v6 = *(v5 - 1);
      v7 = *v5;
      v15 = *(v5 - 2);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      v8 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v8);

      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C716ECCC(v9 > 1, v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = (v16 + 40 * v10);
      v11[4] = 0xD000000000000017;
      v11[5] = 0x80000001C75AE280;
      v11[6] = v15;
      v11[7] = v6;
      v11[8] = v7;
      ++v4;
      v5 += 3;
      v1 = v13;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v12 = sub_1C71BB6E8(v2);

    sub_1C6FD41E8(v12);
    type metadata accessor for Hastings.Asset(0);
    sub_1C73BD984(&qword_1EC216910, 255, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);
    sub_1C754F59C();
  }
}

void *sub_1C73BC5B4(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v40 - v4;
  v6 = type metadata accessor for Hastings.Asset(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v1 + 24);
  if (v43)
  {
    v9 = 0;
    v10 = *(a1 + 16);
    v44 = a1 + 32;
    v45 = v10;
    v11 = MEMORY[0x1E69E7CC8];
    v41 = v5;
LABEL_3:
    if (v9 == v45)
    {
      v50 = MEMORY[0x1E69E7CC8];
      v29 = v43 + 64;
      v30 = 1 << *(v43 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v43 + 64);
      v33 = (v30 + 63) >> 6;
      sub_1C75504FC();
      v34 = 0;
      for (i = 0; v32; v34 = v35)
      {
        v35 = v34;
LABEL_26:
        v36 = __clz(__rbit64(v32)) | (v35 << 6);
        v37 = v43;
        v38 = *(v43 + 48);
        v39 = v38 + *(*(type metadata accessor for Hastings.Feature(0) - 8) + 72) * v36;
        v2 = v41;
        sub_1C73BE6F4(v39, v41, type metadata accessor for Hastings.Feature);
        *(v2 + *(v42 + 48)) = *(*(v37 + 56) + 8 * v36);
        sub_1C75504FC();
        sub_1C73BCF18(&v50, v2, v11);
        v32 &= v32 - 1;
        sub_1C6FD7FC8(v2, &qword_1EC216A40, &qword_1C7565B28);
      }

      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v35 >= v33)
        {

          return v50;
        }

        v32 = *(v29 + 8 * v35);
        ++v34;
        if (v32)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v12 = *(v44 + 8 * v9);
      v46 = v9 + 1;
      v13 = *(v12 + 16);
      v48 = v12;
      v49 = v13;
      sub_1C75504FC();
      for (j = 0; ; ++j)
      {
        if (v49 == j)
        {

          v9 = v46;
          goto LABEL_3;
        }

        i = *(v47 + 72);
        v16 = (v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + i * j);
        v17 = *v16;
        v2 = v16[1];
        sub_1C73BE6F4(v16, v8, type metadata accessor for Hastings.Asset);
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        v50 = v11;
        v18 = sub_1C6F78124(v17, v2);
        if (__OFADD__(v11[2], (v19 & 1) == 0))
        {
          break;
        }

        v20 = v18;
        v21 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A38, &qword_1C7565B20);
        if (sub_1C7551A2C())
        {
          v22 = sub_1C6F78124(v17, v2);
          if ((v21 & 1) != (v23 & 1))
          {
            goto LABEL_32;
          }

          v20 = v22;
        }

        v11 = v50;
        if (v21)
        {
          sub_1C7091D14(v8, v50[7] + v20 * i);
        }

        else
        {
          v50[(v20 >> 6) + 8] |= 1 << v20;
          v24 = (v11[6] + 16 * v20);
          *v24 = v17;
          v24[1] = v2;
          sub_1C73BE7A4(v8, v11[7] + v20 * i, type metadata accessor for Hastings.Asset);
          v25 = v11[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_30;
          }

          v11[2] = v27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    sub_1C7551E4C();
    __break(1u);

    sub_1C6FD7FC8(v2, &qword_1EC216A40, &qword_1C7565B28);

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B260, &unk_1C7586EA0);
    sub_1C73BD984(&qword_1EC216190, 255, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);

    return sub_1C75504DC();
  }

  return result;
}

uint64_t sub_1C73BCAAC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  v4 = sub_1C754F42C();
  v5 = sub_1C6FE1188(a1, v4);

  if (v5)
  {

    result = sub_1C754F45C();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1C73BCB48@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Hastings.Asset(0);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v33 - v11);
  v13 = *a1;
  v14 = a1[1];
  result = a1[2];
  v16 = *(a3 + 16);
  if (v16)
  {
    v33[0] = a1[3];
    v33[1] = v14;
    v33[2] = v13;
    v33[3] = a4;
    v33[4] = v8;
    v33[5] = a2;
    v17 = 0;
    v37 = *(result + 16);
    v18 = MEMORY[0x1E69E7CC0];
    v35 = result;
LABEL_3:
    v19 = v17;
    while (v19 != v37)
    {
      if (v19 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v21 = *(v36 + 72);
      v38 = v19 + 1;
      sub_1C73BE6F4(result + v20 + v21 * v19, v12, type metadata accessor for Hastings.Asset);
      if (*(v16 + 16))
      {
        v23 = *v12;
        v22 = v12[1];
        sub_1C7551F3C();
        sub_1C75505AC();
        v24 = sub_1C7551FAC();
        v25 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v26 = v24 & v25;
          if (((*(v16 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
          {
            break;
          }

          v27 = (*(v16 + 48) + 16 * v26);
          if (*v27 != v23 || v27[1] != v22)
          {
            v29 = sub_1C7551DBC();
            v24 = v26 + 1;
            if ((v29 & 1) == 0)
            {
              continue;
            }
          }

          sub_1C73BE7A4(v12, v34, type metadata accessor for Hastings.Asset);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C716E298(0, *(v18 + 16) + 1, 1);
            v18 = v39;
          }

          v32 = *(v18 + 16);
          v31 = *(v18 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1C716E298(v31 > 1, v32 + 1, 1);
            v18 = v39;
          }

          *(v18 + 16) = v32 + 1;
          sub_1C73BE7A4(v34, v18 + v20 + v32 * v21, type metadata accessor for Hastings.Asset);
          result = v35;
          v17 = v38;
          goto LABEL_3;
        }
      }

      sub_1C73BE750();
      v19 = v38;
      result = v35;
    }
  }

  else
  {
    sub_1C75504FC();
  }

  type metadata accessor for Hastings.Feature(0);
  sub_1C73BD984(&qword_1EC216910, 255, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);
  sub_1C73BD984(&qword_1EC21B238, 255, type metadata accessor for Hastings.Feature, protocol conformance descriptor for Hastings.Feature);
  sub_1C75504FC();
  sub_1C75504FC();
  return sub_1C754F44C();
}

uint64_t sub_1C73BCF18(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v60 = type metadata accessor for Hastings.Asset(0);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for Hastings.Feature(0);
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  sub_1C712A774(a2, v11, &qword_1EC216A40, &qword_1C7565B28);
  v17 = *&v11[*(v9 + 56)];
  v67 = v16;
  sub_1C73BE7A4(v11, v16, type metadata accessor for Hastings.Feature);
  v68 = 0;
  v18 = 0;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = v21;
LABEL_10:
    v21 = (v23 - 1) & v23;
    if (*(a3 + 16))
    {
      v25 = (*(v17 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v23)))));
      v26 = *v25;
      v27 = v25[1];
      sub_1C75504FC();
      v28 = sub_1C6F78124(v26, v27);
      v30 = v29;

      if (v30)
      {
        v31 = *(a3 + 56);
        v58 = *(v63 + 72);
        v32 = v31 + v58 * v28;
        v33 = v62;
        sub_1C73BE6F4(v32, v62, type metadata accessor for Hastings.Asset);
        v34 = v66;
        sub_1C73BE7A4(v33, v66, type metadata accessor for Hastings.Asset);
        sub_1C73BE6F4(v67, v64, type metadata accessor for Hastings.Feature);
        sub_1C6F6E5B4(v68, 0);
        v35 = v65;
        swift_isUniquelyReferenced_nonNull_native();
        v36 = *v35;
        v69 = v36;
        sub_1C6FC292C(v34);
        v68 = v37;
        v38 = v36[2];
        LODWORD(v59) = v39;
        if (__OFADD__(v38, (v39 & 1) == 0))
        {
          goto LABEL_27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B268, &qword_1C7586EB0);
        v40 = sub_1C7551A2C();
        v41 = v69;
        if (v40)
        {
          sub_1C6FC292C(v66);
          v44 = v59;
          if ((v59 & 1) != (v43 & 1))
          {
            goto LABEL_29;
          }

          v45 = v42;
        }

        else
        {
          v45 = v68;
          v44 = v59;
        }

        *v65 = v41;
        if ((v44 & 1) == 0)
        {
          v41[(v45 >> 6) + 8] |= 1 << v45;
          sub_1C73BE6F4(v66, v41[6] + v45 * v58, type metadata accessor for Hastings.Asset);
          *(v41[7] + 8 * v45) = MEMORY[0x1E69E7CC0];
          v46 = v41[2];
          v47 = __OFADD__(v46, 1);
          v48 = v46 + 1;
          if (v47)
          {
            goto LABEL_28;
          }

          v41[2] = v48;
        }

        v49 = v41[7];
        v50 = *(v49 + 8 * v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v49 + 8 * v45) = v50;
        v68 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C6FB2E64(0, *(v50 + 16) + 1, 1, v50);
          v50 = v55;
          *(v49 + 8 * v45) = v55;
        }

        v53 = *(v50 + 16);
        v52 = *(v50 + 24);
        v59 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          sub_1C6FB2E64(v52 > 1, v59, 1, v50);
          *(v49 + 8 * v68) = v56;
        }

        sub_1C73BE750();
        v54 = *(v49 + 8 * v68);
        *(v54 + 16) = v59;
        sub_1C73BE7A4(v64, v54 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v53, type metadata accessor for Hastings.Feature);
        v68 = sub_1C6F86C50;
      }
    }
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      sub_1C73BE750();

      return sub_1C6F6E5B4(v68, 0);
    }

    v23 = *(v17 + 56 + 8 * v24);
    ++v18;
    if (v23)
    {
      v18 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C73BD4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  *(v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_isDone) = 0;
  v12 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_cluster;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5 + v12, a1, v13);
  v15 = sub_1C754F46C();
  v16 = sub_1C72B9418(v15, a4);

  *(v5 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssets) = v16;
  sub_1C73D1850();
  v17 = sub_1C75504FC();
  sub_1C73B9B70(v17, v11);

  (*(v14 + 8))(a1, v13);
  sub_1C73BE7A4(v11, v5 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssetIterator, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator);
  return v5;
}

uint64_t sub_1C73BD698()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_cluster;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  sub_1C73BE750();
  return v0;
}

uint64_t sub_1C73BD730()
{
  sub_1C73BD698();

  return swift_deallocClassInstance();
}

void sub_1C73BD7B0(uint64_t a1)
{
  sub_1C73BD890(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C73BD890(uint64_t a1)
{
  if (!qword_1EC21B230)
  {
    type metadata accessor for Hastings.Asset(255);
    type metadata accessor for Hastings.Feature(255);
    sub_1C73BD984(&qword_1EC216910, 255, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);
    sub_1C73BD984(&qword_1EC21B238, 255, type metadata accessor for Hastings.Feature, protocol conformance descriptor for Hastings.Feature);
    v1 = sub_1C754F47C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21B230);
    }
  }
}

uint64_t sub_1C73BD984(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C73BD9CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000025 && 0x80000001C75AE250 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C73BDA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73BD9CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73BDA98(uint64_t a1)
{
  v2 = sub_1C73BE6A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73BDAD4(uint64_t a1)
{
  v2 = sub_1C73BE6A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73BDB10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C73BDB48(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B270, &qword_1C7586EB8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73BE6A0();
  sub_1C755200C();
  v11[1] = *(v2 + 16);
  type metadata accessor for Hastings.ClusterAssetElector.DiagnosticReporter();
  sub_1C73BD984(&qword_1EC21B280, 255, type metadata accessor for Hastings.ClusterAssetElector.DiagnosticReporter, protocol conformance descriptor for Hastings.ClusterAssetElector.DiagnosticReporter);
  sub_1C7551D2C();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C73BDCE4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v26[14] = *(a1 + 46);
  v7 = *&v26[14];
  v8 = a1[1];
  v25[0] = *a1;
  v25[1] = v8;
  *v26 = a1[2];
  v9 = *v26;
  *(v3 + 16) = v25[0];
  *(v3 + 32) = v8;
  *(v3 + 48) = v9;
  *(v3 + 62) = v7;
  *(v3 + 72) = 1;
  *(v3 + 80) = 4;
  *(v3 + 88) = 0;
  *(v3 + 89) = 257;
  v10 = v26[20];
  v11 = objc_opt_self();
  sub_1C7035CB0(v25, &v16);
  v12 = [v11 promotePlayableAssetsInStories];
  v16 = 257;
  v17 = 10;
  v18 = 0;
  v19 = 257;
  v20 = v10;
  v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
  v22 = v21;
  v23 = v12;
  v24 = 0;
  if (a3)
  {
  }

  type metadata accessor for Hastings.ClusterAssetElector(0);
  swift_allocObject();
  Hastings.ClusterAssetElector.init(configuration:curationOptions:diagnosticReporter:)();
  v14 = v13;

  *(v4 + 96) = v14;
  *(v4 + 104) = a2;
  return v4;
}

uint64_t sub_1C73BDE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Hastings.ClusterAssetElector.ElectedAssetIterator.next()();
  swift_endAccess();
  v4 = type metadata accessor for Hastings.Asset(0);
  result = __swift_getEnumTagSinglePayload(a2, 1, v4);
  *(a1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_isDone) = result == 1;
  return result;
}

uint64_t sub_1C73BDED8()
{
  OUTLINED_FUNCTION_300();
  v2 = sub_1C754DFFC();
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  sub_1C754DFEC();
  v9[3] = &type metadata for Random.Arc4Random;
  v9[4] = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v6, v9);

  v7 = sub_1C73B994C(v0, v9, v1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

void sub_1C73BDF90()
{
  v1 = OUTLINED_FUNCTION_300();
  v2 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(v1);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  if (v0 >> 62)
  {
    v7 = sub_1C75516BC();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v9 = OUTLINED_FUNCTION_295();
        v10 = MEMORY[0x1CCA5DDD0](v9);
      }

      else
      {
        v10 = *(v0 + 8 * v8 + 32);
      }

      ++v8;
      v11 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssetIterator;
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      sub_1C73BE6F4(v10 + v11, v6, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator);
      sub_1C741999C();

      sub_1C73BE750();
    }

    while (v7 != v8);
  }
}

uint64_t sub_1C73BE0D4()
{

  return v0;
}

uint64_t sub_1C73BE144()
{
  sub_1C73BE0D4();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t _s24RoundRobinElectionHelperC13ConfigurationVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[19])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t _s24RoundRobinElectionHelperC13ConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_1C73BE388()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssets;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  return v2 >= sub_1C754F43C();
}

uint64_t sub_1C73BE400()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return sub_1C75504FC();
}

uint64_t sub_1C73BE444()
{
  v1 = OUTLINED_FUNCTION_300();
  v2 = type metadata accessor for Hastings.Asset(v1);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C73BE6F4(v0, v6, type metadata accessor for Hastings.Asset);
  swift_beginAccess();
  sub_1C70F0914();
  sub_1C73BE750();
  return swift_endAccess();
}

uint64_t sub_1C73BE534@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_cluster;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C73BE630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B248, &qword_1C7586E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C73BE6A0()
{
  result = qword_1EC21B278;
  if (!qword_1EC21B278)
  {
    result = swift_getWitnessTable(byte_1C75870B4, &_s24RoundRobinElectionHelperC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B278);
  }

  return result;
}

uint64_t sub_1C73BE6F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C73BE750()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C73BE7A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

unint64_t sub_1C73BE800()
{
  result = qword_1EC21B298;
  if (!qword_1EC21B298)
  {
    result = swift_getWitnessTable(aU1, &_s7ElectorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B298);
  }

  return result;
}

unint64_t sub_1C73BE854()
{
  result = qword_1EC21B2A8;
  if (!qword_1EC21B2A8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B218, &unk_1C7586C00);
    result = swift_getWitnessTable(MEMORY[0x1E69C1960], v3, v0, v1);
    atomic_store(result, &qword_1EC21B2A8);
  }

  return result;
}

uint64_t sub_1C73BE8B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C73BE934()
{
  result = qword_1EC21B2C0;
  if (!qword_1EC21B2C0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216FA8, &unk_1C7568D20);
    v4 = sub_1C6FC18BC();
    v5[0] = MEMORY[0x1E69E6160];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v5);
    atomic_store(result, &qword_1EC21B2C0);
  }

  return result;
}

_BYTE *_s7ElectorV18DiagnosticReporterC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s24RoundRobinElectionHelperC18DiagnosticReporterC10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C73BEB4C()
{
  result = qword_1EC21B2D0;
  if (!qword_1EC21B2D0)
  {
    result = swift_getWitnessTable(byte_1C7586F84, &_s24RoundRobinElectionHelperC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B2D0);
  }

  return result;
}

unint64_t sub_1C73BEBA4()
{
  result = qword_1EC21B2D8;
  if (!qword_1EC21B2D8)
  {
    result = swift_getWitnessTable(asc_1C758703C, &_s7ElectorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B2D8);
  }

  return result;
}

unint64_t sub_1C73BEBFC()
{
  result = qword_1EC21B2E0;
  if (!qword_1EC21B2E0)
  {
    result = swift_getWitnessTable(aE_6, &_s7ElectorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B2E0);
  }

  return result;
}

unint64_t sub_1C73BEC54()
{
  result = qword_1EC21B2E8;
  if (!qword_1EC21B2E8)
  {
    result = swift_getWitnessTable(asc_1C7586FD4, &_s7ElectorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B2E8);
  }

  return result;
}

unint64_t sub_1C73BECAC()
{
  result = qword_1EC21B2F0;
  if (!qword_1EC21B2F0)
  {
    result = swift_getWitnessTable(byte_1C7586EF4, &_s24RoundRobinElectionHelperC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B2F0);
  }

  return result;
}

unint64_t sub_1C73BED04()
{
  result = qword_1EC21B2F8;
  if (!qword_1EC21B2F8)
  {
    result = swift_getWitnessTable(byte_1C7586F1C, &_s24RoundRobinElectionHelperC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B2F8);
  }

  return result;
}

void OUTLINED_FUNCTION_21_55(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, unint64_t a5@<X8>)
{

  sub_1C6F7ED9C(a5 > 1, v5, 1, a1, a2, a3, a4);
}

void sub_1C73BED7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v12 = sub_1C6FB6304();
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1CCA5DDD0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v14 = *(a2 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v19 = v14;
    sub_1C73C0FAC(&v20, &v19, a3, a4, a5, a6, a7);

    if (v8)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1C73BEEC0(char *result, uint64_t a2, id *a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C716EDB0(0, v3 & ~(v3 >> 63), 0);
    if (a2 < result || v3 < 0)
    {
      goto LABEL_19;
    }

    v6 = 0;
    v7 = result - 1;
    while (v6 < v3)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }

      v9 = [*a3 nextUnsignedIntegerLessThan_];
      if (v9 > 0xFF)
      {
        goto LABEL_16;
      }

      v10 = v9;
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C716EDB0(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      *(v14 + v12 + 32) = v10;
      if (&v7[++v6] >= a2)
      {
        goto LABEL_17;
      }

      if (v8 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1C73BF00C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_5();
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  sub_1C754D7BC();
  sub_1C6FB5E8C();
  v10 = sub_1C755154C();
  v12 = v11;
  (*(v7 + 8))(v2, v5);
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xE000000000000000;
  }

  if (v13)
  {

LABEL_10:
    v14 = 1;
    return v14 & 1;
  }

  v14 = sub_1C7551DBC();

  return v14 & 1;
}

PhotosIntelligence::AssetCurationUtilities::Options __swiftcall AssetCurationUtilities.Options.init(useShadowNames:usePersonPromptAnnotations:)(Swift::Bool useShadowNames, Swift::Bool usePersonPromptAnnotations)
{
  *v2 = useShadowNames;
  v2[1] = usePersonPromptAnnotations;
  result.useShadowNames = useShadowNames;
  return result;
}

uint64_t static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(for:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73BF1E8, 0, 0);
}

uint64_t sub_1C73BF1E8()
{
  v53 = v0;
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    if (qword_1EDD09EB8 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_4;
  }

  v2 = *(v0 + 48);
  v3 = objc_autoreleasePoolPush();
  sub_1C73C0A50(v2, v1, &v52);
  objc_autoreleasePoolPop(v3);
  v11 = v52;
  *(v0 + 72) = v52;
  if (sub_1C6FB6304() <= 0)
  {

    if (qword_1EDD09EB8 != -1)
    {
      OUTLINED_FUNCTION_0_167(&qword_1EDD09EB8);
    }

    v43 = sub_1C754FF1C();
    __swift_project_value_buffer(v43, qword_1EDD09EC0);
    v5 = sub_1C754FEEC();
    v6 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "No person or pet from which to get character info";
LABEL_6:
      _os_log_impl(&dword_1C6F5C000, v5, v6, v8, v7, 2u);
      OUTLINED_FUNCTION_109();
    }

LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738, &unk_1C7579E20);
    sub_1C75504DC();

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X2, X16 }
  }

  v12 = [*(v0 + 48) photoAnalysisClient];
  *(v0 + 80) = v12;
  if (!v12)
  {

    if (qword_1EDD09EB8 != -1)
    {
      OUTLINED_FUNCTION_0_167(&qword_1EDD09EB8);
    }

    v44 = sub_1C754FF1C();
    __swift_project_value_buffer(v44, qword_1EDD09EC0);
    v45 = sub_1C754FEEC();
    v46 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1C6F5C000, v45, v46, "Unable to get PAD client!", v47, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C73C58D0();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v50 = v12;
  v13 = sub_1C6FB6304();
  v14 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (v13 != v14)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCA5DDD0](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      OUTLINED_FUNCTION_0_167(&qword_1EDD09EB8);
LABEL_4:
      v4 = sub_1C754FF1C();
      __swift_project_value_buffer(v4, qword_1EDD09EC0);
      v5 = sub_1C754FEEC();
      v6 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "No assets from which to get person or pet info";
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    v18 = sub_1C70CAC04(v15);
    v20 = v19;

    ++v14;
    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v51 = v23;
      }

      v21 = *(v51 + 16);
      if (v21 >= *(v51 + 24) >> 1)
      {
        sub_1C6FB1814();
        v51 = v24;
      }

      *(v51 + 16) = v21 + 1;
      v22 = v51 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
      v14 = v17;
    }
  }

  v25 = objc_allocWithZone(MEMORY[0x1E69BE620]);
  v26 = v50;
  v27 = [v25 initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 64);
  v29 = sub_1C754FF1C();
  *(v0 + 88) = v29;
  v30 = __swift_project_value_buffer(v29, qword_1EC219F58);
  (*(*(v29 - 8) + 16))(v28, v30, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  v32 = (v28 + *(v31 + 28));
  v33 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v34 = [v33 processName];

  v35 = sub_1C755068C();
  v37 = v36;

  *v32 = v35;
  v32[1] = v37;
  *(v28 + *(v31 + 32)) = v27;
  sub_1C706D154();
  *(v0 + 96) = v38;
  v39 = swift_task_alloc();
  *(v0 + 104) = v39;
  *v39 = v0;
  v39[1] = sub_1C73BF7E8;
  OUTLINED_FUNCTION_129();

  return PhotoAnalysisMomentGraphService.requestCharacterCurationInfo(for:)(v40);
}

uint64_t sub_1C73BF7E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {

    v5 = sub_1C73BFBFC;
  }

  else
  {
    v5 = sub_1C73BF938;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73BF938()
{
  v1 = v0[16];
  sub_1C754DB8C();
  swift_allocObject();
  sub_1C754DB7C();
  sub_1C73C5924();
  sub_1C754DB5C();
  if (v1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[10];
    sub_1C6FF6930(v0[8]);

    sub_1C6FC1640(v3, v2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[2];
    v8 = v0[3];
    v9 = v0[4];
    if (qword_1EDD09EB8 != -1)
    {
      OUTLINED_FUNCTION_0_167(&qword_1EDD09EB8);
    }

    __swift_project_value_buffer(v0[11], qword_1EDD09EC0);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = sub_1C754FEEC();
    v11 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218496;
      *(v12 + 4) = *(v7 + 16);

      *(v12 + 12) = 2048;
      *(v12 + 14) = *(v8 + 16);

      *(v12 + 22) = 2048;
      *(v12 + 24) = *(v9 + 16);

      _os_log_impl(&dword_1C6F5C000, v10, v11, "Received %ld confirmed relationships, %ld myPet UUIDs, and %ld favorited character UUIDs", v12, 0x20u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[10];
    v18 = v0[8];
    static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(from:personRelationshipByUUID:myPetUUIDs:favoritedCharacterUUIDs:)(v0[9], v7, v8, v9);

    sub_1C6FC1640(v14, v13);

    sub_1C6FF6930(v18);

    v16 = OUTLINED_FUNCTION_0_89();

    return v17(v16);
  }
}

uint64_t sub_1C73BFBFC()
{
  v1 = *(v0 + 64);

  sub_1C6FF6930(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1C73BFC74()
{
  result = 0.6;
  qword_1EC21B300 = 0x3FE3333333333333;
  return result;
}

double static AssetCurationUtilities.minimumCurationScoreForBackgroundSuggestionPlayback.getter()
{
  if (qword_1EC214080 != -1)
  {
    swift_once();
  }

  return *&qword_1EC21B300;
}

uint64_t sub_1C73BFCDC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09EC0);
  __swift_project_value_buffer(v0, qword_1EDD09EC0);
  return sub_1C754FEFC();
}

uint64_t static AssetCurationUtilities.suggestedAssetsForBackgroundPlayback(storyPhotoLibraryContext:eventRecorder:useDateRandomSeed:)(void **a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v6 = *a1;
  v7 = a1[2];
  v8 = *(a1 + 4);
  v9 = objc_autoreleasePoolPush();
  sub_1C73BFDF8(a2, v6, v8, v7, v3, v4, v3, &v11);
  objc_autoreleasePoolPop(v9);
  return v11;
}

uint64_t sub_1C73BFDF8@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v71 = a7;
  v78 = a4;
  v77 = a3;
  v74 = a8;
  v12 = sub_1C754F38C();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v73 = v14;
  sub_1C754F1CC();
  if (qword_1EDD09EB8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EDD09EC0);
  v16 = sub_1C754FEEC();
  v17 = sub_1C755117C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Beginning fetching assets for background suggestion playback.", v19, 2u);
    v20 = v19;
    a5 = v18;
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E6978B08]) initWithPhotoLibrary_];
  v22 = [v21 personUUIDsWithNegativeFeedback];

  v23 = sub_1C7550F8C();
  static AssetCurationUtilities.generateRandomUUIDForPartition(useDateRandomSeed:)(a6 & 1);
  v25 = v24;
  v27 = v26;
  v28 = [a2 librarySpecificFetchOptions];
  v29 = v77;
  [v28 setSharingFilter_];
  if (([objc_opt_self() useStillAssetsOnlyInBackground] & 1) == 0)
  {
    v70 = v28;
    v79 = a2;
    v80 = v29;
    v81 = v78;
    v68 = v25;
    v72 = a5;
    v69 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(1, 0, v23, 10, a1, &v79, v25, v27);
    v34 = v69[2];
    v35 = sub_1C754FEEC();
    v36 = sub_1C75511BC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v34;
      _os_log_impl(&dword_1C6F5C000, v35, v36, "Finished fetching %ld videos for background suggestion playback.", v37, 0xCu);
      MEMORY[0x1CCA5F8E0](v37, -1, -1);
    }

    if (v34 > 9)
    {

      v60 = v70;
      v59 = sub_1C73C0834(v69, v70);

      goto LABEL_28;
    }

    v38 = 10 - v34;
    v39 = sub_1C754FEEC();
    v40 = sub_1C75511BC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v38;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Done fetching videos, now trying to fetch %ld live photos for background suggestion playback.", v41, 0xCu);
      MEMORY[0x1CCA5F8E0](v41, -1, -1);
    }

    v79 = a2;
    v80 = v77;
    v81 = v78;
    v67 = v38;
    v42 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(0, 1u, v23, v38, a1, &v79, v68, v27);
    v43 = *(v42 + 16);
    v44 = sub_1C754FEEC();
    v45 = sub_1C75511BC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v66 = v42;
      v47 = v46;
      *v46 = 134217984;
      *(v46 + 4) = v43;
      _os_log_impl(&dword_1C6F5C000, v44, v45, "Finished fetching %ld live photos for background suggestion playback.", v46, 0xCu);
      v48 = v47;
      v42 = v66;
      MEMORY[0x1CCA5F8E0](v48, -1, -1);
    }

    v67 -= v43;
    if (v67 < 1)
    {

      v79 = v69;
      sub_1C6FD2568(v42);
      v61 = v79;
    }

    else
    {
      v49 = sub_1C754FEEC();
      v50 = sub_1C75511BC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v66 = v42;
        v52 = v51;
        *v51 = 134217984;
        *(v51 + 4) = v67;
        _os_log_impl(&dword_1C6F5C000, v49, v50, "Done fetching live photos, now trying to fetch %ld still photos for background suggestion playback.", v51, 0xCu);
        v53 = v52;
        v42 = v66;
        MEMORY[0x1CCA5F8E0](v53, -1, -1);
      }

      v79 = a2;
      v80 = v77;
      v81 = v78;
      v54 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(0, 0, v23, v67, a1, &v79, v68, v27);

      v55 = *(v54 + 16);
      v56 = sub_1C754FEEC();
      v57 = sub_1C75511BC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = v55;
        _os_log_impl(&dword_1C6F5C000, v56, v57, "Finished fetching %ld still photos for background suggestion playback.", v58, 0xCu);
        MEMORY[0x1CCA5F8E0](v58, -1, -1);
      }

      if (v67 - v55 == 10)
      {

        v79 = a2;
        v80 = v77;
        v81 = v78;
        v59 = static AssetCurationUtilities.assetsForBackgroundSuggestionPlaybackFallback(fetchLimit:eventRecorder:storyPhotoLibraryContext:)(10, a1, &v79);

        goto LABEL_28;
      }

      v82 = v69;
      sub_1C6FD2568(v42);
      sub_1C6FD2568(v54);
      v61 = v82;
    }

    v62 = v70;
    v59 = sub_1C73C0834(v61, v70);

    goto LABEL_28;
  }

  v79 = a2;
  v80 = v29;
  v81 = v78;
  v30 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(0, 0, v23, 10, a1, &v79, v25, v27);

  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(v30 + 16);

    _os_log_impl(&dword_1C6F5C000, v31, v32, "Finished fetching %ld still photos for background suggestion playback.", v33, 0xCu);
    MEMORY[0x1CCA5F8E0](v33, -1, -1);
  }

  else
  {
  }

  v59 = sub_1C73C0834(v30, v28);

LABEL_28:
  *v74 = v59;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v63 = v73;
  sub_1C754F1AC();
  return (*(v75 + 8))(v63, v76);
}

void static AssetCurationUtilities.generateRandomUUIDForPartition(useDateRandomSeed:)(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_5();
  sub_1C73C4D08(v2);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
    v9 = v8;
    sub_1C73C5360(&v9);
    sub_1C754DF8C();
    (*(v5 + 8))(v1, v3);
  }
}

uint64_t static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t a8)
{
  v13 = a1;
  v14 = *a6;
  v15 = a6[2];
  v16 = *(a6 + 4);
  v17 = objc_autoreleasePoolPush();
  sub_1C73C35A8(a5, v14, v16, v15, a4, a7, a8, v13, &v21, a2, v8, a3);
  objc_autoreleasePoolPop(v17);
  return v21;
}

id sub_1C73C0834(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  result = sub_1C6FCA158(a1, a2, v4);
  if (result)
  {
    v6 = result;
    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C754FF1C();
    __swift_project_value_buffer(v7, qword_1EDD09EC0);
    sub_1C75504FC();
    v8 = sub_1C754FEEC();
    v9 = sub_1C75511BC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      v12 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
      v14 = sub_1C6F765A4(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "MC entry card background asset UUIDs: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AssetCurationUtilities.assetsForBackgroundSuggestionPlaybackFallback(fetchLimit:eventRecorder:storyPhotoLibraryContext:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = objc_autoreleasePoolPush();
  sub_1C73C4A20(a2, v5, v6, a1, &v9);
  objc_autoreleasePoolPop(v7);
  return v9;
}

void sub_1C73C0A50(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 librarySpecificFetchOptions];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = sub_1C6FCA158(a2, v6, v7);

  if (v9)
  {
    v10 = [a1 librarySpecificFetchOptions];
    [v10 setPersonContext_];
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    sub_1C7551EFC();
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    sub_1C7551EFC();
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    sub_1C7082AAC(v21, v10);
    v11 = [objc_opt_self() fetchPersonsInAssetsFetchResult:v9 options:v10];
    if (v11 && (v12 = v11, v13 = [v11 fetchedObjects], v12, v13))
    {
      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      v14 = sub_1C7550B5C();
    }

    else
    {
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v15 = sub_1C754FF1C();
      __swift_project_value_buffer(v15, qword_1EDD09EC0);
      v13 = sub_1C754FEEC();
      v16 = sub_1C75511BC();
      if (os_log_type_enabled(v13, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C6F5C000, v13, v16, "Didn't get any people or pets from assets", v17, 2u);
        MEMORY[0x1CCA5F8E0](v17, -1, -1);
      }

      v14 = MEMORY[0x1E69E7CC0];
      v8 = v9;
    }
  }

  else
  {
    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EDD09EC0);
    v13 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v13, v19, "Unable to fetch assets", v20, 2u);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    v14 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v14;
}

uint64_t static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(from:personRelationshipByUUID:myPetUUIDs:favoritedCharacterUUIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7CC8];
  v23 = MEMORY[0x1E69E7CC8];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C73BED7C(v9, a1, v4, a2, a4, &v23, a3, v4);
  v11 = v10;
  if (qword_1EDD09EB8 != -1)
  {
    OUTLINED_FUNCTION_0_167(&qword_1EDD09EB8);
  }

  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EDD09EC0);
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    swift_beginAccess();
    sub_1C75504FC();
    v17 = sub_1C75504BC();
    v19 = v18;

    v20 = sub_1C6F765A4(v17, v19, &v22);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1C6F5C000, v13, v14, "detectionIndexByTypeString: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v11;
}

void sub_1C73C0FAC(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v11 = *a2;
  switch([*a2 detectionType])
  {
    case 0u:
    case 2u:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v12 = sub_1C754FF1C();
      __swift_project_value_buffer(v12, qword_1EDD09EC0);
      v13 = v11;
      v14 = sub_1C754FEEC();
      v15 = sub_1C755119C();
      goto LABEL_20;
    case 1u:
      v27 = sub_1C70CAC04(v11);
      if (!v28)
      {
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v50 = sub_1C754FF1C();
        __swift_project_value_buffer(v50, qword_1EDD09EC0);
        v51 = v11;
        v14 = sub_1C754FEEC();
        v38 = sub_1C755119C();

        if (os_log_type_enabled(v14, v38))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          *(v34 + 4) = v51;
          *v35 = v51;
          v52 = v51;
          v40 = "Unable to get person uuid from person %@";
          goto LABEL_22;
        }

        goto LABEL_25;
      }

      v29 = v27;
      v30 = v28;
      sub_1C73C1714(v11, v27, v28, a4, a5, a6, &v69);
      v31 = v70;
      if (v70 != 1)
      {
        v53 = v71;
        v54 = v69;
        v61 = v72;
        v63 = v73 >> 16;
        v74 = HIDWORD(v73);
        v55 = v73 & 1;
        v56 = (v73 >> 8) & 1;
        v58 = HIBYTE(v73) & 1;
        v59 = HIWORD(v73) & 1;
        v67 = &type metadata for PersonSummary;
        v68 = sub_1C73C66F0();
        v57 = swift_allocObject();
        v64 = v57;
        *(v57 + 16) = v54;
        *(v57 + 24) = v31;
        *(v57 + 32) = v53;
        *(v57 + 40) = v61;
        *(v57 + 48) = v55;
        *(v57 + 49) = v56;
        *(v57 + 50) = v63;
        *(v57 + 52) = v74;
        *(v57 + 54) = v59;
        *(v57 + 55) = v58;
        goto LABEL_37;
      }

      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v32 = sub_1C754FF1C();
      __swift_project_value_buffer(v32, qword_1EDD09EC0);
      sub_1C75504FC();
      v14 = sub_1C754FEEC();
      v33 = sub_1C755119C();

      if (os_log_type_enabled(v14, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v69 = v35;
        *v34 = 136315138;
        v36 = sub_1C6F765A4(v29, v30, &v69);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_1C6F5C000, v14, v33, "Unable to create personSummary for personUUID %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        goto LABEL_23;
      }

      goto LABEL_31;
    case 3u:
    case 4u:
      v16 = sub_1C70CAC04(v11);
      if (!v17)
      {
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v41 = sub_1C754FF1C();
        __swift_project_value_buffer(v41, qword_1EDD09EC0);
        v42 = v11;
        v14 = sub_1C754FEEC();
        v38 = sub_1C755119C();

        if (!os_log_type_enabled(v14, v38))
        {
          goto LABEL_25;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v42;
        *v35 = v42;
        v43 = v42;
        v40 = "Unable to get pet uuid from pet %@";
LABEL_22:
        _os_log_impl(&dword_1C6F5C000, v14, v38, v40, v34, 0xCu);
        sub_1C7030CDC(v35, &qword_1EC215190, &qword_1C755C730);
LABEL_23:
        MEMORY[0x1CCA5F8E0](v35, -1, -1);
        v26 = v34;
        goto LABEL_24;
      }

      v18 = v16;
      v19 = v17;
      sub_1C73C1BC8(v11, v16, v17, a7, a5, a6, &v64);
      v20 = v65;
      if (v65 == 1)
      {
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v21 = sub_1C754FF1C();
        __swift_project_value_buffer(v21, qword_1EDD09EC0);
        sub_1C75504FC();
        v14 = sub_1C754FEEC();
        v22 = sub_1C755119C();

        if (!os_log_type_enabled(v14, v22))
        {
LABEL_31:

          goto LABEL_25;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v69 = v24;
        *v23 = 136315138;
        v25 = sub_1C6F765A4(v18, v19, &v69);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_1C6F5C000, v14, v22, "Unable to create petSummary for petUUID %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
        v26 = v23;
LABEL_24:
        MEMORY[0x1CCA5F8E0](v26, -1, -1);
LABEL_25:

        return;
      }

      v74 = v67;
      v60 = v66;
      v44 = v64;
      v62 = WORD1(v68);
      v45 = v68 & 1;
      v46 = (v68 >> 8) & 1;
      v47 = BYTE4(v68) & 1;
      v72 = &type metadata for PetSummary;
      v73 = sub_1C73C669C();
      v48 = swift_allocObject();
      v69 = v48;
      *(v48 + 16) = v44;
      *(v48 + 24) = v20;
      v49 = v74;
      *(v48 + 32) = v60;
      *(v48 + 40) = v49;
      *(v48 + 48) = v45;
      *(v48 + 49) = v46;
      *(v48 + 50) = v62;
      *(v48 + 52) = v47;
LABEL_37:
      sub_1C709B5C8();
      return;
    default:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v37 = sub_1C754FF1C();
      __swift_project_value_buffer(v37, qword_1EDD09EC0);
      v13 = v11;
      v14 = sub_1C754FEEC();
      v15 = sub_1C75511AC();
LABEL_20:
      v38 = v15;

      if (!os_log_type_enabled(v14, v38))
      {
        goto LABEL_25;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v13;
      *v35 = v13;
      v39 = v13;
      v40 = "Unknown detection type for PHPerson %@";
      goto LABEL_22;
  }
}

double sub_1C73C1714@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 ageType];
  if ([a1 verifiedType] - 1 > 1)
  {
    v27 = (v14 << 32) | 0x120000;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
LABEL_14:
    *(a7 + 32) = v27;
    return result;
  }

  v47 = sub_1C73C5444(a1);
  v49 = v15;
  if (*(a4 + 16) && (v16 = sub_1C6F78124(a2, a3), (v17 & 1) != 0) && (v18 = *(a4 + 56), v19 = *(v18 + v16), v19 != 18))
  {
    if (sub_1C6FA0848(*(v18 + v16), 2))
    {
      v20 = 0x1000000000000;
    }

    else
    {
      v20 = 0;
    }

    v50 = v19;
    v21 = sub_1C6FA0848(v19, 11);
    v22 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 1;
    v50 = 18;
  }

  v48 = a6;
  v45 = sub_1C7009C30(a2, a3, a5);
  v46 = v20;
  if ((v22 & 1) == 0)
  {
    v24 = v21 ^ 1;
    LOBYTE(v51) = v50;
    v26 = StoryPersonRelationshipType.rawValue.getter();
    v25 = v29;
    v23 = 256;
LABEL_11:
    v30 = sub_1C73C561C(v26, v25, v24 & 1, (v21 & 1) == 0, v48);
    v32 = v31;

    v33 = 0x100000000000000;
    if ((v21 & 1) == 0)
    {
      v33 = 0;
    }

    *a7 = v47;
    *(a7 + 8) = v49;
    v27 = v23 | v45 & 1 | (v50 << 16) | (v14 << 32) | v46 | v33;
    *(a7 + 16) = v30;
    *(a7 + 24) = v32;
    goto LABEL_14;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0xE400000000000000;
  v26 = 2036490594;
  switch(v14)
  {
    case 0:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v26 = 0x6E6F73726570;
      v39 = sub_1C754FF1C();
      __swift_project_value_buffer(v39, qword_1EDD09EC0);
      sub_1C75504FC();
      v40 = sub_1C754FEEC();
      v41 = sub_1C755119C();

      v42 = v40;
      if (os_log_type_enabled(v40, v41))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_1C6F765A4(a2, a3, &v51);
        _os_log_impl(&dword_1C6F5C000, v42, v41, "ageType not set for personUUID %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x1CCA5F8E0](v44, -1, -1);
        MEMORY[0x1CCA5F8E0](v43, -1, -1);
      }

      else
      {
      }

      v23 = 0;
      v24 = 0;
      v25 = 0xE600000000000000;
      goto LABEL_11;
    case 1:
      goto LABEL_11;
    case 2:
      v23 = 0;
      v24 = 0;
      v25 = 0xE500000000000000;
      v26 = 0x646C696863;
      goto LABEL_11;
    case 3:
    case 4:
    case 5:
      v23 = 0;
      v24 = 0;
      v25 = 0xE600000000000000;
      v26 = 0x6E6F73726570;
      goto LABEL_11;
    default:

      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v34 = sub_1C754FF1C();
      __swift_project_value_buffer(v34, qword_1EDD09EC0);
      sub_1C75504FC();
      v35 = sub_1C754FEEC();
      v36 = sub_1C75511AC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_1C6F765A4(a2, a3, &v51);
        _os_log_impl(&dword_1C6F5C000, v35, v36, "ageType not set for personUUID %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1CCA5F8E0](v38, -1, -1);
        MEMORY[0x1CCA5F8E0](v37, -1, -1);
      }

      result = 0.0;
      *a7 = xmmword_1C756A560;
      *(a7 + 24) = 0;
      *(a7 + 32) = 0;
      *(a7 + 16) = 0;
      break;
  }

  return result;
}

double sub_1C73C1BC8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 detectionType];
  if ([a1 verifiedType] - 1 > 1)
  {
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 36) = 0;
    *(a7 + 32) = v14 << 16;
    return result;
  }

  v15 = sub_1C73C5848(a1);
  v17 = v16;
  v18 = sub_1C7009C30(a2, a3, a4);
  v19 = sub_1C7009C30(a2, a3, a5);
  if (v14 < 3)
  {

    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, qword_1EDD09EC0);
    sub_1C75504FC();
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1C6F765A4(a2, a3, &v36);
    v25 = "Trying to create petSummary with human/pet/unknown detection type for uuid %s";
LABEL_23:
    _os_log_impl(&dword_1C6F5C000, v21, v22, v25, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1CCA5F8E0](v24, -1, -1);
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
LABEL_24:

    result = 0.0;
    *a7 = xmmword_1C756A560;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    *(a7 + 29) = 0;
    return result;
  }

  v27 = v19;
  if (v14 == 4)
  {
    v28 = 7627107;
  }

  else
  {
    if (v14 != 3)
    {

      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v35 = sub_1C754FF1C();
      __swift_project_value_buffer(v35, qword_1EDD09EC0);
      sub_1C75504FC();
      v21 = sub_1C754FEEC();
      v22 = sub_1C75511AC();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_24;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1C6F765A4(a2, a3, &v36);
      v25 = "Trying to create petSummary with unknown detection type for uuid %s";
      goto LABEL_23;
    }

    v28 = 6778724;
  }

  v29 = v18 & 1;
  if (v18)
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  if (v18)
  {
    v31 = 0x100000000;
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_1C73C561C(v28, 0xE300000000000000, v29, 1, a6);
  v34 = v33;

  *a7 = v15;
  *(a7 + 8) = v17;
  *(a7 + 16) = v32;
  *(a7 + 24) = v34;
  *(a7 + 36) = (v31 | (v14 << 16)) >> 32;
  *(a7 + 32) = v30 & 0xFFFE | v27 & 1 | (v14 << 16);
  return result;
}

uint64_t PersonSummary.init(name:shadowName:isFavorite:hasConfirmedRelationship:confirmedRelationship:ageType:isMyChild:isMe:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char *a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11)
{
  v11 = *a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 34) = v11;
  *(a9 + 36) = a8;
  *(a9 + 38) = a10;
  *(a9 + 39) = a11;
  return result;
}

uint64_t sub_1C73C2000(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E776F64616873 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001C75AE320 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001C7599CC0 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65707954656761 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C696843794D7369 && a2 == 0xE900000000000064;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 1699574633 && a2 == 0xE400000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C7551DBC();

                if (v13)
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

unint64_t sub_1C73C2290(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x614E776F64616873;
      break;
    case 2:
      result = 0x69726F7661467369;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x65707954656761;
      break;
    case 6:
      result = 0x6C696843794D7369;
      break;
    case 7:
      result = 1699574633;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73C2384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C2000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C23AC(uint64_t a1)
{
  v2 = sub_1C73C5978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C23E8(uint64_t a1)
{
  v2 = sub_1C73C5978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonSummary.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  v44 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B318, &qword_1C7587118);
  OUTLINED_FUNCTION_3_0();
  v31 = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v41 - v33;
  v35 = *(v26 + 16);
  v42 = *(v26 + 24);
  v43 = v35;
  LODWORD(v35) = *(v26 + 32);
  v41[6] = *(v26 + 33);
  v41[7] = v35;
  LODWORD(v35) = *(v26 + 34);
  v41[4] = *(v26 + 36);
  v41[5] = v35;
  v41[3] = *(v26 + 38);
  v36 = v29[3];
  v37 = v29;
  v39 = v38;
  __swift_project_boxed_opaque_existential_1(v37, v36);
  sub_1C73C5978();
  sub_1C755200C();
  v40 = v44;
  sub_1C7551C7C();
  if (!v40)
  {
    sub_1C7551C7C();
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
    sub_1C7025BF4();
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CBC();
    v47 = 5;
    type metadata accessor for PHPersonAgeType(0);
    sub_1C73C5A20(&qword_1EDD0CE88, type metadata accessor for PHPersonAgeType, protocol conformance descriptor for PHPersonAgeType);
    sub_1C7551D2C();
    v46 = 6;
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
    v45 = 7;
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
  }

  (*(v31 + 8))(v34, v39);
  OUTLINED_FUNCTION_125();
}

uint64_t PetSummary.init(name:shadowName:isFavorite:hasConfirmedRelationship:detectionType:isMyPet:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, __int16 a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 34) = a7;
  *(a9 + 36) = a8;
  return result;
}

uint64_t sub_1C73C2788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E776F64616873 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001C75AE320 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x746550794D7369 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C73C298C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x614E776F64616873;
      break;
    case 2:
      result = 0x69726F7661467369;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x6F69746365746564;
      break;
    case 5:
      result = 0x746550794D7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73C2A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C2788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C2A84(uint64_t a1)
{
  v2 = sub_1C73C59CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C2AC0(uint64_t a1)
{
  v2 = sub_1C73C59CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PetSummary.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v38 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B328, &qword_1C7587120);
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v35 - v31;
  v33 = *(v23 + 16);
  v36 = *(v23 + 24);
  v37 = v33;
  LODWORD(v33) = *(v23 + 32);
  v35[4] = *(v23 + 33);
  v35[5] = v33;
  LODWORD(v33) = *(v23 + 34);
  v35[2] = *(v23 + 36);
  v35[3] = v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C73C59CC();
  sub_1C755200C();
  v34 = v38;
  sub_1C7551C7C();
  if (!v34)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
    type metadata accessor for PHDetectionType(0);
    sub_1C73C5A20(&qword_1EC215D10, type metadata accessor for PHDetectionType, protocol conformance descriptor for PHDetectionType);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_125();
}

uint64_t CharacterCurationInfo.init(personRelationshipByUUID:myPetUUIDs:favoritedCharacterUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C73C2D98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C75AE340 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x495555746550796DLL && a2 == 0xEA00000000007344;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001C75AE360 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C73C2EBC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0x495555746550796DLL;
  }

  return 0xD000000000000017;
}

uint64_t sub_1C73C2F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C2D98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C2F54(uint64_t a1)
{
  v2 = sub_1C73C5A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C2F90(uint64_t a1)
{
  v2 = sub_1C73C5A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CharacterCurationInfo.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B338, &qword_1C7587128);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v0 + 8);
  v11[1] = *(v0 + 16);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v10 = sub_1C73C5A68();
  sub_1C75504FC();
  sub_1C755200C();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B340, &unk_1C7587130);
  sub_1C73C5ABC(&qword_1EDD06C58, sub_1C7025BF4, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_97();
  sub_1C7551D2C();

  if (!v10)
  {
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    sub_1C70FBAD0(&qword_1EDD0CEF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v12 = 2;
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

void CharacterCurationInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B348, &qword_1C7587140);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C73C5A68();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B340, &unk_1C7587130);
    sub_1C73C5ABC(&qword_1EDD06C50, sub_1C7025C48, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    sub_1C70FBAD0(&qword_1EDD0CEE8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    OUTLINED_FUNCTION_3_104();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_3_104();
    sub_1C7551C1C();
    v16 = OUTLINED_FUNCTION_19_0();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C73C34E0()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BAB0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1C6F6D524();
  *(v0 + 32) = 0xD00000000000001CLL;
  *(v0 + 40) = 0x80000001C75A2960;
  result = sub_1C755112C();
  qword_1EC21B308 = result;
  return result;
}

uint64_t sub_1C73C35A8@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v123 = a8;
  v115 = a4;
  v117 = a9;
  v18 = sub_1C754F38C();
  v119 = *(v18 - 8);
  v120 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v118 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v116 = v20;
  sub_1C754F1CC();
  v113 = a2;
  v22 = [a2 librarySpecificFetchOptions];
  v114 = a3;
  [v22 setSharingFilter_];
  v124 = v22;
  [v22 setFetchLimit_];
  v23 = sub_1C710DE50(a6, a7);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v23 = 48;
    v25 = 0xE100000000000000;
  }

  if (v23 == 56 && v25 == 0xE100000000000000)
  {

    v27 = 0;
  }

  else
  {
    v27 = sub_1C7551DBC();
  }

  v28 = sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v29 = swift_allocObject();
  v125 = xmmword_1C75604F0;
  *(v29 + 16) = xmmword_1C75604F0;
  v30 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v31 = sub_1C6F6D524();
  *(v29 + 32) = 1684632949;
  *(v29 + 40) = 0xE400000000000000;
  *(v29 + 96) = v30;
  *(v29 + 104) = v31;
  *(v29 + 64) = v31;
  *(v29 + 72) = a6;
  *(v29 + 80) = a7;
  sub_1C75504FC();
  v32 = sub_1C755112C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C7565670;
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v33 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, v27 & 1);
  sub_1C71F8834(v33, v124);
  v35 = swift_allocObject();
  *(v35 + 16) = v125;
  *(v35 + 56) = v30;
  *(v35 + 64) = v31;
  v36 = v30;
  *(v35 + 32) = 0xD000000000000028;
  *(v35 + 40) = 0x80000001C75A3700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B3A0, &qword_1C7587770);
  v37 = swift_allocObject();
  *(v37 + 16) = v125;
  *(v37 + 32) = 131073;
  *(v35 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B3A8, &qword_1C7587778);
  *(v35 + 104) = sub_1C73C67FC();
  *(v35 + 72) = v37;
  v38 = sub_1C755112C();
  v39 = swift_allocObject();
  *(v39 + 16) = v125;
  *(v39 + 56) = v36;
  *(v39 + 64) = v31;
  v122 = v31;
  v40 = MEMORY[0x1E69E7290];
  *(v39 + 32) = 1684957547;
  *(v39 + 40) = 0xE400000000000000;
  v41 = MEMORY[0x1E69E72E8];
  *(v39 + 96) = v40;
  *(v39 + 104) = v41;
  v42 = v123;
  *(v39 + 72) = v123;
  v121 = v28;
  v43 = sub_1C755112C();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C756AD80;
  *(v44 + 32) = v43;
  *(v44 + 40) = v32;
  *(v44 + 48) = v38;
  v45 = qword_1EC214090;
  v112 = v43;
  v111 = v32;
  v110 = v38;
  if (v45 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v46 = a10;
    v47 = qword_1EC21B308;
    *(v44 + 56) = qword_1EC21B308;
    v129 = v44;
    v48 = swift_allocObject();
    v49 = v48;
    *(v48 + 16) = v125;
    v50 = MEMORY[0x1E69E63B0];
    v51 = MEMORY[0x1E69E6438];
    if (v42 == 1)
    {
      v52 = v122;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = v52;
      *(v48 + 32) = 0xD000000000000022;
      *(v48 + 40) = 0x80000001C75AE430;
      *(v48 + 96) = v50;
      *(v48 + 104) = v51;
      *(v48 + 72) = 0x3FE999999999999ALL;
      v53 = v47;
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v54 = 0x736F65646976;
      v55 = 0xE600000000000000;
      v56 = v129;
    }

    else
    {
      v109 = a10;
      v57 = MEMORY[0x1E69E6158];
      v58 = v122;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = v58;
      strcpy((v48 + 32), "curationScore");
      *(v48 + 46) = -4864;
      v59 = qword_1EC214080;
      v60 = v47;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = qword_1EC21B300;
      v49[12] = v50;
      v49[13] = v51;
      v49[9] = v61;
      v62 = sub_1C755112C();
      v63 = swift_allocObject();
      *(v63 + 16) = v125;
      *(v63 + 56) = v57;
      *(v63 + 64) = v58;
      *(v63 + 32) = 0xD00000000000001ALL;
      *(v63 + 40) = 0x80000001C75AE3E0;
      *(v63 + 96) = MEMORY[0x1E69E7290];
      *(v63 + 104) = MEMORY[0x1E69E72E8];
      *(v63 + 72) = 0;
      v64 = sub_1C755112C();
      v65 = v62;
      MEMORY[0x1CCA5D040]();
      v66 = v57;
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      v108 = v65;
      sub_1C7550BEC();
      v67 = v64;
      MEMORY[0x1CCA5D040]();
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      v55 = 0xEC000000736F746FLL;
      v54 = 0x6870206C6C697473;
      sub_1C7550BEC();
      v68 = swift_allocObject();
      *(v68 + 16) = v125;
      v69 = v122;
      *(v68 + 56) = v66;
      *(v68 + 64) = v69;
      *(v68 + 32) = 0x74627553646E696BLL;
      *(v68 + 40) = 0xEB00000000657079;
      *(v68 + 96) = MEMORY[0x1E69E7290];
      *(v68 + 104) = MEMORY[0x1E69E72E8];
      *(v68 + 72) = 2;
      if (v109)
      {
        v70 = sub_1C755112C();
        v71 = swift_allocObject();
        *(v71 + 16) = v125;
        *(v71 + 56) = v66;
        *(v71 + 64) = v69;
        *(v71 + 32) = 0xD00000000000002FLL;
        *(v71 + 40) = 0x80000001C75AE400;
        *(v71 + 96) = MEMORY[0x1E69E63B0];
        *(v71 + 104) = MEMORY[0x1E69E6438];
        *(v71 + 72) = 0x3FE0000000000000;
        sub_1C755112C();
        v72 = v70;
        MEMORY[0x1CCA5D040]();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        v73 = sub_1C7550BEC();
        MEMORY[0x1CCA5D040](v73);
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        v56 = v129;
      }

      else
      {
        sub_1C755112C();
        MEMORY[0x1CCA5D040]();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        v56 = v129;
      }

      v46 = v109;
    }

    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    v74 = sub_1C6F6E5C4(v56);
    v75 = v124;
    [v124 setInternalPredicate_];
    v76 = [objc_opt_self() fetchAssetsWithOptions_];
    if (v46)
    {
      v54 = 0x6F6870206576696CLL;
      v55 = 0xEB00000000736F74;
    }

    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v77 = sub_1C754FF1C();
    __swift_project_value_buffer(v77, qword_1EDD09EC0);
    v78 = v76;
    sub_1C75504FC();
    v79 = sub_1C754FEEC();
    v80 = sub_1C75511BC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v126 = v82;
      *v81 = 134218242;
      *(v81 + 4) = [v78 count];

      *(v81 + 12) = 2080;
      v83 = sub_1C6F765A4(v54, v55, &v126);

      *(v81 + 14) = v83;
      _os_log_impl(&dword_1C6F5C000, v79, v80, "Finished fetching %ld %s for background suggestion playback.", v81, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1CCA5F8E0](v82, -1, -1);
      MEMORY[0x1CCA5F8E0](v81, -1, -1);
    }

    else
    {
    }

    v84 = v78;
    v85 = v123;
    v122 = v84;
    v86 = [v84 fetchedObjects];
    if (!v86)
    {
      break;
    }

    v87 = v86;
    v121 = v74;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v44 = sub_1C7550B5C();

    v88 = sub_1C6FB6304();
    v89 = 0;
    v42 = v44 & 0xFFF8;
    *&v125 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v88 == v89)
      {

        v85 = v123;
        v74 = v121;
        v103 = v125;
        goto LABEL_54;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x1CCA5DDD0](v89, v44);
      }

      else
      {
        if (v89 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v90 = *(v44 + 8 * v89 + 32);
      }

      v91 = v90;
      v92 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      v93 = sub_1C70CAC04(v90);
      v95 = v94;

      ++v89;
      if (v95)
      {
        v96 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v96 = v101;
        }

        v98 = *(v96 + 16);
        v97 = *(v96 + 24);
        *&v125 = v96;
        if (v98 >= v97 >> 1)
        {
          sub_1C6FB1814();
          *&v125 = v102;
        }

        v99 = v125;
        *(v125 + 16) = v98 + 1;
        v100 = v99 + 16 * v98;
        *(v100 + 32) = v93;
        *(v100 + 40) = v95;
        v89 = v92;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v104 = v118;
  v105 = sub_1C73C4378(v103, a12, v85, &v126, v118);

  *v117 = v105;
  __swift_project_boxed_opaque_existential_1(v104, v104[3]);
  v106 = v116;
  sub_1C754F1AC();
  return (*(v119 + 8))(v106, v120);
}

uint64_t sub_1C73C4378(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void *a5)
{
  v61 = sub_1C754F38C();
  v10 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v14 = *(a4 + 8);
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_1C754F1CC();
  v66 = a2;
  if (*(a2 + 16))
  {
    v64 = a5;
    v15 = [v13 librarySpecificFetchOptions];
    [v15 setSharingFilter_];
    if (a3 == 1)
    {
      [v15 setIncludeMediaAnalysisProcessingRangeTypes_];
    }

    v16 = objc_opt_self();
    v17 = sub_1C7550B3C();
    v18 = [v16 fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v17 options:v15];

    v19 = v64;
    if (v18)
    {
      v57 = v15;
      v58 = v12;
      v59 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v20 = sub_1C75504AC();

      v15 = 0;
      v12 = *(a1 + 16);
      v60 = a1 + 40;
      v62 = MEMORY[0x1E69E7CC0];
      *&v21 = 136315394;
      v63 = v21;
      v65 = v12;
LABEL_6:
      v22 = (v60 + 16 * v15);
      while (1)
      {
        if (v12 == v15)
        {

          __swift_project_boxed_opaque_existential_1(v19, v19[3]);
          v12 = v58;
          sub_1C754F1AC();
          v45 = v61;
          a1 = v62;
          v10 = v59;
          goto LABEL_32;
        }

        if (v15 >= v12)
        {
          break;
        }

        if (__OFADD__(v15, 1))
        {
          goto LABEL_34;
        }

        a1 = *(v22 - 1);
        v10 = *v22;
        v23 = *(v20 + 16);
        sub_1C75504FC();
        if (!v23)
        {
          goto LABEL_20;
        }

        sub_1C6F78124(a1, v10);
        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }

        v25 = v20;
        sub_1C75504FC();
        sub_1C706D154();
        sub_1C7069A44();
        if (!*(v26 + 16))
        {

          v12 = v65;
LABEL_20:
          v36 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6F7ED9C(0, *(v36 + 16) + 1, 1, v38, v39, v40, v41);
            v36 = v69;
          }

          v43 = *(v36 + 16);
          v42 = *(v36 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_1C6F7ED9C(v42 > 1, v43 + 1, 1, v38, v39, v40, v41);
            v36 = v69;
          }

          *(v36 + 16) = v43 + 1;
          v62 = v36;
          v44 = v36 + 16 * v43;
          *(v44 + 32) = a1;
          *(v44 + 40) = v10;
          v15 = v15 + 1;
          goto LABEL_6;
        }

        v67 = v22;
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v27 = sub_1C754FF1C();
        __swift_project_value_buffer(v27, qword_1EDD09EC0);
        sub_1C75504FC();

        v28 = sub_1C754FEEC();
        v29 = sub_1C755117C();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v68 = v31;
          *v30 = v63;
          *(v30 + 4) = sub_1C6F765A4(a1, v10, &v68);
          *(v30 + 12) = 2080;
          a1 = sub_1C7550F9C();
          v33 = v32;

          v34 = sub_1C6F765A4(a1, v33, &v68);

          *(v30 + 14) = v34;
          _os_log_impl(&dword_1C6F5C000, v28, v29, "Asset %s has %s negative feedback person UUIDs in it, filtering this asset out.", v30, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v31, -1, -1);
          v35 = v30;
          v19 = v64;
          MEMORY[0x1CCA5F8E0](v35, -1, -1);
        }

        else
        {
        }

        v15 = v15 + 1;
        v22 = v67 + 2;
        v20 = v25;
        v12 = v65;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    else if (qword_1EDD09EB8 == -1)
    {
LABEL_28:
      v48 = sub_1C754FF1C();
      __swift_project_value_buffer(v48, qword_1EDD09EC0);
      sub_1C75504FC();
      v49 = sub_1C754FEEC();
      v50 = sub_1C755119C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v69 = v52;
        *v51 = 136315138;
        v53 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
        v55 = sub_1C6F765A4(v53, v54, &v69);
        v19 = v64;

        *(v51 + 4) = v55;
        _os_log_impl(&dword_1C6F5C000, v49, v50, "Could not generate personUUIDsByAssetUUID dictionary for asset UUIDs %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1CCA5F8E0](v52, -1, -1);
        MEMORY[0x1CCA5F8E0](v51, -1, -1);
      }

      v46 = v19[3];
      v47 = v19;
      goto LABEL_31;
    }

    swift_once();
    goto LABEL_28;
  }

  v46 = a5[3];
  v47 = a5;
LABEL_31:
  __swift_project_boxed_opaque_existential_1(v47, v46);
  sub_1C75504FC();
  sub_1C754F1AC();
  v45 = v61;
LABEL_32:
  (*(v10 + 8))(v12, v45);
  return a1;
}

uint64_t sub_1C73C4A20@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v28 = a2;
  v9 = sub_1C754F38C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F1CC();
  if (qword_1EDD09EB8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EDD09EC0);
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v12;
    v17 = v10;
    v18 = a3;
    v19 = v9;
    v20 = a4;
    v21 = a5;
    v22 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Library required absolute fallback case for background suggestions.", v16, 2u);
    v23 = v22;
    a5 = v21;
    a4 = v20;
    v9 = v19;
    a3 = v18;
    v10 = v17;
    v12 = v27;
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
  }

  v24 = [v28 librarySpecificFetchOptions];
  [v24 setSharingFilter_];
  [v24 setFetchLimit_];
  if (qword_1EC214090 != -1)
  {
    swift_once();
  }

  [v24 setInternalPredicate_];
  v25 = [objc_opt_self() fetchAssetsWithOptions_];

  *a5 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F1AC();
  return (*(v10 + 8))(v12, v9);
}

void sub_1C73C4D08(char a1)
{
  v2 = sub_1C754DFFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_1C754DFEC();
    v25 = sub_1C754DFDC();
    (*(v3 + 8))(v5, v2);
    if ((v25 & 0x8000000000000000) == 0 || (v26 = __OFSUB__(0, v25), v25 = -v25, !v26))
    {
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v27 = sub_1C754FF1C();
      __swift_project_value_buffer(v27, qword_1EDD09EC0);
      v10 = sub_1C754FEEC();
      v28 = sub_1C755117C();
      if (os_log_type_enabled(v10, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v25;
        _os_log_impl(&dword_1C6F5C000, v10, v28, "SuggestedAssetsForBackgroundPlayback random number generator seed = %ld, randomly chosen.", v29, 0xCu);
        MEMORY[0x1CCA5F8E0](v29, -1, -1);
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0x64644D4D79797979, 0xE800000000000000, v10);
  sub_1C754DF5C();
  v11 = sub_1C754DECC();
  (*(v7 + 8))(v9, v6);
  v12 = [v10 stringFromDate:v11];

  v13 = sub_1C755068C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_71;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v53 = 0;
    sub_1C71CBAA8(v13, v15, 10);
    v21 = v49;
    v44 = v50;
LABEL_70:

    if ((v44 & 1) == 0)
    {
LABEL_72:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v45 = sub_1C754FF1C();
      __swift_project_value_buffer(v45, qword_1EDD09EC0);
      v46 = sub_1C754FEEC();
      v47 = sub_1C755117C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v21;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "SuggestedAssetsForBackgroundPlayback random number generator seed = %ld, set by date.", v48, 0xCu);
        MEMORY[0x1CCA5F8E0](v48, -1, -1);
      }

LABEL_77:
      return;
    }

LABEL_71:
    v21 = 0;
    goto LABEL_72;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = sub_1C75518FC();
    }

    v20 = *v19;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          if (v19)
          {
            v33 = v19 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_68;
              }

              v35 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_68;
              }

              v21 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_68;
              }

              ++v33;
              if (!--v16)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_68;
      }

      goto LABEL_84;
    }

    if (v20 != 45)
    {
      if (v17)
      {
        v21 = 0;
        if (v19)
        {
          while (1)
          {
            v39 = *v19 - 48;
            if (v39 > 9)
            {
              goto LABEL_68;
            }

            v40 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_68;
            }

            v21 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              goto LABEL_68;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_68:
      v21 = 0;
      LOBYTE(v16) = 1;
      goto LABEL_69;
    }

    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          v22 = v19 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_68;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_68;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_68;
            }

            ++v22;
            if (!--v16)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v16) = 0;
LABEL_69:
        v53 = v16;
        v44 = v16;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    goto LABEL_82;
  }

  v52[0] = v13;
  v52[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v16)
      {
        v21 = 0;
        v41 = v52;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v16)
    {
      if (--v16)
      {
        v21 = 0;
        v30 = v52 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v32 - v31;
          if (__OFSUB__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_83;
  }

  if (v16)
  {
    if (--v16)
    {
      v21 = 0;
      v36 = v52 + 1;
      while (1)
      {
        v37 = *v36 - 48;
        if (v37 > 9)
        {
          break;
        }

        v38 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        ++v36;
        if (!--v16)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_85:
  __break(1u);
}

void sub_1C73C5360(id *a1)
{
  v1 = 0;
  sub_1C73BEEC0(0, 16, a1);
  if (*(v2 + 16) < 7uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v1 = *(v2 + 38);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  sub_1C70E3D7C();
  v3 = v4;
LABEL_3:
  *(v3 + 38) = v1 & 0xF | 0x40;
  if (*(v3 + 16) < 9uLL)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 40) = *(v3 + 40) & 0x3F | 0x80;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
    sub_1C754DFBC();
  }
}

uint64_t sub_1C73C5444(void *a1)
{
  if (!sub_1C73C6790(a1))
  {
    return sub_1C73C5848(a1);
  }

  sub_1C755176C();
  sub_1C6FE1034();
  sub_1C6FCA5E0(v4);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      v2 = 0x616E2D7473726966;
      if ((sub_1C73BF00C(0x616E2D7473726966, 0xEA0000000000656DLL) & 1) == 0)
      {

        return v2;
      }
    }
  }

  else
  {
    sub_1C7030CDC(v5, &qword_1EC219770, &unk_1C755C740);
  }

  sub_1C755176C();
  sub_1C6FE1034();

  sub_1C6FCA5E0(v4);
  if (!v6)
  {
    sub_1C7030CDC(v5, &qword_1EC219770, &unk_1C755C740);
    return sub_1C73C5848(a1);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1C73C5848(a1);
  }

  v2 = 0x6D616E2D7473616CLL;
  if (sub_1C73BF00C(0x6D616E2D7473616CLL, 0xE900000000000065))
  {

    return sub_1C73C5848(a1);
  }

  return v2;
}

uint64_t sub_1C73C561C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t *a5)
{
  if ((a4 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_11;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *a5;
  v27 = *a5;
  v10 = sub_1C6F78124(a1, a2);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
  if (sub_1C7551A2C())
  {
    v14 = sub_1C6F78124(a1, a2);
    if ((v13 & 1) != (v15 & 1))
    {
LABEL_19:
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    v12 = v14;
  }

  *a5 = v27;
  if ((v13 & 1) == 0)
  {
    sub_1C6FC6D3C(v12, a1, a2, 0, v27);
    sub_1C75504FC();
  }

  v16 = *(v27 + 56);
  v17 = *(v16 + 8 * v12);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v16 + 8 * v12) = v19;
  v20 = sub_1C6FBBCA8;
LABEL_11:
  v21 = 2128237;
  if ((a3 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  v28 = v21;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](a1, a2);

  sub_1C6FE0FE8(a1, a2, *a5);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    sub_1C7025C9C();
    v24 = sub_1C75515BC();
    v22 = v25;
  }

  MEMORY[0x1CCA5CD70](v24, v22);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  sub_1C6FC0A8C(v20, 0);
  return v28;
}

uint64_t sub_1C73C5848(void *a1)
{
  v2 = sub_1C7416D60(a1);
  if (v3)
  {
    v4 = v2;
    if ((sub_1C73BF00C(v2, v3) & 1) == 0)
    {
      return v4;
    }
  }

  v5 = sub_1C72372BC(a1);
  if (!v6)
  {
    return 0;
  }

  v4 = v5;
  if (sub_1C73BF00C(v5, v6))
  {

    return 0;
  }

  return v4;
}

unint64_t sub_1C73C58D0()
{
  result = qword_1EC21B310;
  if (!qword_1EC21B310)
  {
    result = swift_getWitnessTable(byte_1C7587728, &type metadata for AssetCurationUtilities.Error, v0, v1);
    atomic_store(result, &qword_1EC21B310);
  }

  return result;
}

unint64_t sub_1C73C5924()
{
  result = qword_1EDD0A018;
  if (!qword_1EDD0A018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CharacterCurationInfo, &type metadata for CharacterCurationInfo, v0, v1);
    atomic_store(result, &qword_1EDD0A018);
  }

  return result;
}

unint64_t sub_1C73C5978()
{
  result = qword_1EC21B320;
  if (!qword_1EC21B320)
  {
    result = swift_getWitnessTable(byte_1C75876D8, &type metadata for PersonSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B320);
  }

  return result;
}

unint64_t sub_1C73C59CC()
{
  result = qword_1EC21B330;
  if (!qword_1EC21B330)
  {
    result = swift_getWitnessTable(a1_3, &type metadata for PetSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B330);
  }

  return result;
}

uint64_t sub_1C73C5A20(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C73C5A68()
{
  result = qword_1EDD0E4F0;
  if (!qword_1EDD0E4F0)
  {
    result = swift_getWitnessTable(byte_1C7587638, &type metadata for CharacterCurationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E4F0);
  }

  return result;
}

uint64_t sub_1C73C5ABC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B340, &unk_1C7587130);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C73C5B40(uint64_t a1)
{
  result = sub_1C73C5B68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C73C5B68()
{
  result = qword_1EDD0C0B0;
  if (!qword_1EDD0C0B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonSummary, &type metadata for PersonSummary, v0, v1);
    atomic_store(result, &qword_1EDD0C0B0);
  }

  return result;
}

unint64_t sub_1C73C5BBC(uint64_t a1)
{
  result = sub_1C73C5BE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C73C5BE4()
{
  result = qword_1EC21B350;
  if (!qword_1EC21B350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PetSummary, &type metadata for PetSummary, v0, v1);
    atomic_store(result, &qword_1EC21B350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetCurationUtilities.Options(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetCurationUtilities.Options(uint64_t result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C73C5E48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1C73C5E9C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C73C5F1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 37))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1C73C5F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CharacterCurationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PetSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetCurationUtilities.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C73C6330()
{
  result = qword_1EC21B358;
  if (!qword_1EC21B358)
  {
    result = swift_getWitnessTable(aA_14, &type metadata for AssetCurationUtilities.Error, v0, v1);
    atomic_store(result, &qword_1EC21B358);
  }

  return result;
}

unint64_t sub_1C73C6388()
{
  result = qword_1EC21B360;
  if (!qword_1EC21B360)
  {
    result = swift_getWitnessTable(byte_1C75874A0, &type metadata for PersonSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B360);
  }

  return result;
}

unint64_t sub_1C73C63E0()
{
  result = qword_1EC21B368;
  if (!qword_1EC21B368)
  {
    result = swift_getWitnessTable(byte_1C7587558, &type metadata for PetSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B368);
  }

  return result;
}

unint64_t sub_1C73C6438()
{
  result = qword_1EC21B370;
  if (!qword_1EC21B370)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for CharacterCurationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B370);
  }

  return result;
}

unint64_t sub_1C73C6490()
{
  result = qword_1EDD0E4E0;
  if (!qword_1EDD0E4E0)
  {
    result = swift_getWitnessTable(aQ_21, &type metadata for CharacterCurationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E4E0);
  }

  return result;
}

unint64_t sub_1C73C64E8()
{
  result = qword_1EDD0E4E8;
  if (!qword_1EDD0E4E8)
  {
    result = swift_getWitnessTable(byte_1C75875A8, &type metadata for CharacterCurationInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E4E8);
  }

  return result;
}

unint64_t sub_1C73C6540()
{
  result = qword_1EC21B378;
  if (!qword_1EC21B378)
  {
    result = swift_getWitnessTable(asc_1C75874C8, &type metadata for PetSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B378);
  }

  return result;
}

unint64_t sub_1C73C6598()
{
  result = qword_1EC21B380;
  if (!qword_1EC21B380)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for PetSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B380);
  }

  return result;
}

unint64_t sub_1C73C65F0()
{
  result = qword_1EC21B388;
  if (!qword_1EC21B388)
  {
    result = swift_getWitnessTable(byte_1C7587410, &type metadata for PersonSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B388);
  }

  return result;
}

unint64_t sub_1C73C6648()
{
  result = qword_1EC21B390;
  if (!qword_1EC21B390)
  {
    result = swift_getWitnessTable(byte_1C7587438, &type metadata for PersonSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B390);
  }

  return result;
}
uint64_t sub_1A35E5DA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35E3C70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1A35E5DE0(uint64_t a1)
{
  result = sub_1A35E5E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A35E5E08()
{
  result = qword_1ED81D960;
  if (!qword_1ED81D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D960);
  }

  return result;
}

uint64_t sub_1A35E5E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A362141C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35A6624(a1, a2);
  v8 = sub_1A362133C();
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  sub_1A362142C();
  v10 = sub_1A36213FC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {

    return 0;
  }

  if (!sub_1A362130C())
  {
    v12 = sub_1A362132C();

    if (v12)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:

  return 1;
}

uint64_t sub_1A35E5FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *(v9 + 16);
  v15(&v19 - v16, v4, a1, v14);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v20;
    *a3 = v19;
    *(a3 + 16) = v18;
    *(a3 + 32) = v21;
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    (v15)(v12, v4, a1);
    result = AnyTip.init<A>(_:)(v12, a1, a2, a3);
    if (*(&v20 + 1))
    {
      return sub_1A35B4F20(&v19, &qword_1EB0EEC78, &unk_1A3627570);
    }
  }

  return result;
}

uint64_t Tips.TipsDatastore.init(_:)@<X0>(void *a2@<X8>)
{
  sub_1A362158C();
  result = swift_dynamicCast();
  v4 = v5;
  if (!result)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Tips.TipsDatastore.configure(url:)(uint64_t a1)
{
  if (*v1)
  {
    v4 = swift_task_alloc();
    *(v2 + 16) = v4;
    *v4 = v2;
    v4[1] = sub_1A35E6288;

    return MEMORY[0x1EEE498A0](a1, 0, 0, 0, 1);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1A35E6288()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1A35E63AC(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A35E6450(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

void *sub_1A35E64D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A35A797C(a1, v4);
  result = sub_1A35A7840(v4);
  *a2 = result;
  return result;
}

_BYTE *_s14OptionsBuilderVwst(_BYTE *result, int a2, int a3)
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

BOOL static Tips.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v2 == 7)
  {
    return v3 == 7;
  }

  if ((v3 - 7) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t Tips.Status.hash(into:)()
{
  v1 = *v0;
  if (v1 == 7)
  {
    v1 = 0;
  }

  else if (v1 == 8)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1A58F3B60](2);
  }

  return MEMORY[0x1A58F3B60](v1);
}

uint64_t Tips.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1A36234CC();
  if (v1 == 7)
  {
    v1 = 0;
  }

  else if (v1 == 8)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1A58F3B60](2);
  }

  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

uint64_t sub_1A35E66FC()
{
  v1 = *v0;
  sub_1A36234CC();
  if (v1 == 7)
  {
    v1 = 0;
  }

  else if (v1 == 8)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1A58F3B60](2);
  }

  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

uint64_t Tips.InvalidationReason.hashValue.getter()
{
  v1 = *v0;
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

unint64_t sub_1A35E6808()
{
  result = qword_1EB0EEC80;
  if (!qword_1EB0EEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEC80);
  }

  return result;
}

unint64_t sub_1A35E6860()
{
  result = qword_1EB0EEC88;
  if (!qword_1EB0EEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEC88);
  }

  return result;
}

_BYTE *sub_1A35E68B4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

uint64_t _s18InvalidationReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18InvalidationReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t TipGroup.__allocating_init(_:_:)(char *a1, uint64_t (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  TipGroup.init(_:_:)(a1, a2);
  return v4;
}

uint64_t TipGroup.deinit()
{

  sub_1A35A6588(v0 + 24, &qword_1EB0EEAF8, &qword_1A3626DD8);
  v1 = OBJC_IVAR____TtC6TipKit8TipGroup___observationRegistrar;
  sub_1A362165C();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t TipGroup.__deallocating_deinit()
{
  TipGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A35E6BE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask);

    if (v3)
    {
      sub_1A3622F1C();
    }
  }

  return result;
}

uint64_t sub_1A35E6C7C()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A35E6D7C, v2, 0);
}

uint64_t sub_1A35E6D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A35E6DBC, 0, 0);
}

uint64_t sub_1A35E6DBC()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(v0[6] + 40);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1A35E6E9C;
    v4 = v0[6];

    return sub_1A35B7D68(v4, v2);
  }

  else
  {
    OUTLINED_FUNCTION_5_1();

    return v6();
  }
}

uint64_t sub_1A35E6E9C()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_1A35E6F98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECA8, &qword_1A3627A80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_continuation;
  (*(v3 + 16))(&v13 - v5, v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_continuation, v2, v4);
  sub_1A3622EDC();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask;
  if (*(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask))
  {

    sub_1A3622F1C();
  }

  *(v1 + v9) = 0;

  v10 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_stream;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC90, &qword_1A3627958);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v8((v1 + v7), v2);

  swift_weakDestroy();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1A35E71A4()
{
  v0 = sub_1A35E6F98();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A35E71D4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A35A490C;

  return v4();
}

uint64_t sub_1A35E72BC()
{
  OUTLINED_FUNCTION_10_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v1[1] = sub_1A35D3FEC;
  OUTLINED_FUNCTION_7_4();

  return sub_1A35E6D9C(v3, v4, v5, v6);
}

uint64_t sub_1A35E735C()
{
  OUTLINED_FUNCTION_10_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_2(v2);
  *v3 = v4;
  v3[1] = sub_1A35A3334;

  return sub_1A35E71D4(v1);
}

uint64_t static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBA0, &qword_1A3627190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3627130;
  sub_1A35A6350(a2, inited + 32);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35E17A0(inited);
  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)(uint64_t a1, uint64_t a2)
{
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v2 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35E17A0(v2);
}

void static Tips.GroupBuilder.buildArray(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = v2[2];
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > v2[3] >> 1)
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        sub_1A35E1CE0(isUniquelyReferenced_nonNull_native, v9, 1, v2);
        v2 = v10;
      }

      if (*(v4 + 16))
      {
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBA8, &qword_1A3627198);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = v2[2];
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_20;
          }

          v2[2] = v13;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

_BYTE *_s12GroupBuilderVwst(_BYTE *result, int a2, int a3)
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

uint64_t TipGroup.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

unint64_t sub_1A35E777C()
{
  result = qword_1EB0EECD0;
  if (!qword_1EB0EECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EECD0);
  }

  return result;
}

_BYTE *_s8PriorityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t TipKitError.description.getter()
{
  OUTLINED_FUNCTION_0_21();
  sub_1A362329C();
  return v1;
}

uint64_t TipKitError.errorDescription.getter()
{
  OUTLINED_FUNCTION_0_21();
  sub_1A362329C();
  return v1;
}

uint64_t TipKitError.hashValue.getter()
{
  v1 = *v0;
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

BOOL static TipKitError.~= infix(_:_:)(unsigned __int8 *a1, id a2)
{
  v2 = *a1;
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECD8, &qword_1A3627B78);
  v4 = swift_dynamicCast();
  v5 = v10;
  if (!v4)
  {
    v5 = 3;
  }

  v6 = v5 == 3;
  v8 = v5 != 3 && v5 == v2;
  if (v2 == 3)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

unint64_t sub_1A35E7A98()
{
  result = qword_1EB0EECE0;
  if (!qword_1EB0EECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EECE0);
  }

  return result;
}

unint64_t sub_1A35E7AF0()
{
  result = qword_1EB0EECE8;
  if (!qword_1EB0EECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EECE8);
  }

  return result;
}

_BYTE *sub_1A35E7B54(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A35E7C34()
{
  result = qword_1EB0EECF0;
  if (!qword_1EB0EECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EECF0);
  }

  return result;
}

void sub_1A35E7C90(uint64_t a1)
{
  if (!qword_1ED81EB60)
  {
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED81EB60);
    }
  }
}

uint64_t sub_1A35E7CFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A35E7D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for TipUIWrapperView(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED08, &qword_1A3627DC8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-1] - v6;
  v8 = *(v1 + 24);
  v9 = *(v2 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v8);
  sub_1A35E5FC8(v8, v9, v27);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v10 = *(v2 + 48);
  sub_1A35B2260(v2 + 168, v23);
  v11 = *(v2 + 56);

  sub_1A35EB218(v27, 0, 0, 0, &v24, v10, v23, v11, v12, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v24, *(&v24 + 1), v25);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  v13 = OUTLINED_FUNCTION_5_7(&unk_1F164B090);
  OUTLINED_FUNCTION_0_22(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE288, &qword_1A3624588);
  OUTLINED_FUNCTION_4_8(&v7[*(v14 + 36)]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  v15 = OUTLINED_FUNCTION_5_7(&unk_1F164B0B8);
  OUTLINED_FUNCTION_0_22(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED10, &qword_1A3627E38);
  OUTLINED_FUNCTION_4_8(&v7[*(v16 + 36)]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  v17 = OUTLINED_FUNCTION_5_7(&unk_1F164B0E0);
  OUTLINED_FUNCTION_0_22(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED18, &qword_1A3627E68);
  OUTLINED_FUNCTION_4_8(&v7[*(v18 + 36)]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  v19 = OUTLINED_FUNCTION_5_7(&unk_1F164B108);
  OUTLINED_FUNCTION_0_22(v19);
  OUTLINED_FUNCTION_4_8(&v7[*(v5 + 44)]);
  sub_1A35E8120(v22);
  return sub_1A35BAABC(v7, &qword_1EB0EED08, &qword_1A3627DC8);
}

uint64_t sub_1A35E8064(void *a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for TipUIWrapperView(0);
  sub_1A35E84E4(a2 + *(v4 + 68), a1);
}

void *sub_1A35E8120@<X0>(uint64_t a2@<X8>)
{
  sub_1A3622A2C();
  sub_1A3621AFC();
  sub_1A35E8640(v4, a2, &qword_1EB0EED08, &qword_1A3627DC8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED20, &unk_1A3627EA0);
  return memcpy((a2 + *(v6 + 36)), __src, 0x70uLL);
}

uint64_t sub_1A35E829C()
{
  type metadata accessor for TipUIWrapperView(0);
  v0 = OUTLINED_FUNCTION_2_14();

  return v1(v0);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for TipUIWrapperView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  if (*(v0 + v3 + 72))
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v5 + 14);
  MEMORY[0x1A58F45C0](v5 + 216);
  if (*(v5 + 34))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 31);
  }

  v6 = *(v1 + 60);
  v7 = sub_1A3621A4C();
  if (!__swift_getEnumTagSinglePayload(&v5[v6], 1, v7))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v8 + 8))(&v5[v6], v7);
  }

  __swift_destroy_boxed_opaque_existential_1(&v5[*(v1 + 68)]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35E8470()
{
  type metadata accessor for TipUIWrapperView(0);
  v0 = OUTLINED_FUNCTION_2_14();

  return v1(v0);
}

uint64_t sub_1A35E84E4(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  (*v3)(a2);
  return a2;
}

unint64_t sub_1A35E8544()
{
  result = qword_1ED81DC68[0];
  if (!qword_1ED81DC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED81DC68);
  }

  return result;
}

unint64_t sub_1A35E8598()
{
  result = qword_1EB0EED28;
  if (!qword_1EB0EED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EED28);
  }

  return result;
}

unint64_t sub_1A35E85EC()
{
  result = qword_1EB0EED30;
  if (!qword_1EB0EED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EED30);
  }

  return result;
}

uint64_t sub_1A35E8640(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1A35E86A4()
{
  result = qword_1ED81DD80;
  if (!qword_1ED81DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED20, &unk_1A3627EA0);
    sub_1A35E8730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DD80);
  }

  return result;
}

unint64_t sub_1A35E8730()
{
  result = qword_1ED81DD88;
  if (!qword_1ED81DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED08, &qword_1A3627DC8);
    sub_1A35E87E8();
    sub_1A35A9B30(&qword_1ED81E010, &qword_1EB0EED50, &qword_1A3627ED8, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DD88);
  }

  return result;
}

unint64_t sub_1A35E87E8()
{
  result = qword_1ED81DD98;
  if (!qword_1ED81DD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED18, &qword_1A3627E68);
    sub_1A35E88A0();
    sub_1A35A9B30(&qword_1ED81DD38, &qword_1EB0EED48, &qword_1A3627ED0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DD98);
  }

  return result;
}

unint64_t sub_1A35E88A0()
{
  result = qword_1ED81DDB8;
  if (!qword_1ED81DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED10, &qword_1A3627E38);
    sub_1A35AFC60();
    sub_1A35A9B30(&qword_1ED81E0C8, &qword_1EB0EED40, &qword_1A3627EC8, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDB8);
  }

  return result;
}

void sub_1A35E8958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_26();
  v93 = v23;
  v98 = v24;
  LODWORD(v97) = v25;
  v103 = v26;
  v102 = v27;
  v101 = v28;
  v100 = v29;
  v31 = v30;
  v33 = v32;
  v91 = a21;
  v94 = sub_1A362141C();
  OUTLINED_FUNCTION_3();
  v92 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_8_5(v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = (v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0, &unk_1A3628EC0);
  OUTLINED_FUNCTION_14(v40);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8, &qword_1A3624B28);
  OUTLINED_FUNCTION_14(v43);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_14(v46);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v90 - v48;
  v51 = type metadata accessor for TipView(0, a22, a23, v50);
  v52 = v33 + v51[15];
  *v52 = swift_getKeyPath();
  *(v52 + 40) = 0;
  v53 = sub_1A3620D6C();
  OUTLINED_FUNCTION_21(v49, v54, v55, v53);
  sub_1A35E9200(v49);
  v56 = (v33 + v51[17]);
  *v56 = sub_1A35E93E0(0);
  v56[1] = v57;
  v58 = v33 + v51[18];
  LOBYTE(v108[0]) = 9;
  sub_1A35E94D4(v108);
  v59 = v113;
  *v58 = v112;
  *(v58 + 8) = v59;
  v95 = *(a22 - 8);
  (*(v95 + 16))(v33, v31, a22);
  v60 = sub_1A35ADF54(a22, a23);
  v61 = (v33 + v51[9]);
  *v61 = v60;
  v61[1] = v62;
  v63 = sub_1A35A6624(a22, a23);
  *(v33 + v51[10]) = v63;
  sub_1A35ABFF4(v103, v33 + v51[11], &qword_1EB0EEDB0, &unk_1A36283A0);
  *(v33 + v51[12]) = v97;
  v64 = v33 + v51[13];
  v65 = v101;
  *v64 = v100;
  *(v64 + 8) = v65;
  *(v64 + 16) = v102;

  v66 = OUTLINED_FUNCTION_14_2();
  sub_1A35E0534(v66, v67);
  v96 = a22;
  v97 = v31;
  sub_1A35A63D4(a22, a23, v114);
  sub_1A35ABFF4(v98, &v112, &qword_1EB0EE3E0, &qword_1A3624B30);
  v68 = sub_1A362190C();
  v69 = v90[1];
  OUTLINED_FUNCTION_21(v105, v70, v71, v68);
  v72 = type metadata accessor for TipViewEnvironment(0);
  OUTLINED_FUNCTION_21(v99, v73, v74, v72);
  v75 = v115;
  v76 = v116;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  sub_1A35A63D4(v75, v76, v39);
  v77 = v93;
  v39[5] = v63;
  v39[6] = v77;
  v39[7] = v91;

  sub_1A362142C();
  LOBYTE(v75) = sub_1A36213FC();
  v78 = *(v92 + 8);
  v79 = v94;
  v78(v69);
  v80 = 0;
  if (v75)
  {
    v80 = sub_1A362133C();
  }

  v39[8] = v80;
  sub_1A35ABFF4(&v112, v106, &qword_1EB0EE3E0, &qword_1A3624B30);
  if (v107)
  {
    sub_1A35B8570(v106, v108);
  }

  else
  {
    LOBYTE(v108[0]) = 0;
    v108[1] = 0;
    v108[2] = 0;
    v109 = 1;
    v81 = sub_1A35B37E0();
    v110 = &type metadata for AnyTip;
    v111 = v81;
    swift_unknownObjectWeakInit();
    if (v107)
    {
      sub_1A35A6588(v106, &qword_1EB0EE3E0, &qword_1A3624B30);
    }
  }

  sub_1A35B8570(v108, (v39 + 9));
  sub_1A35ABFF4(v105, v39 + *(v104 + 36), &qword_1EB0EE3D8, &qword_1A3624B28);
  v82 = v115;
  v83 = v116;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  sub_1A35A63D4(v82, v83, v108);
  sub_1A362142C();
  LOBYTE(v82) = sub_1A36213FC();
  (v78)(v69, v79);
  if (v82)
  {
    v84 = sub_1A362133C();
  }

  else
  {
    v84 = 0;
  }

  v85 = v51[14];
  v86 = sub_1A35F5FC8(v108, v84);
  sub_1A35EAC30(v100, v101);
  sub_1A35A6588(v98, &qword_1EB0EE3E0, &qword_1A3624B30);
  sub_1A35A6588(v103, &qword_1EB0EEDB0, &unk_1A36283A0);
  (*(v95 + 8))(v97, v96);
  sub_1A35A6588(v105, &qword_1EB0EE3D8, &qword_1A3624B28);
  sub_1A35A6588(&v112, &qword_1EB0EE3E0, &qword_1A3624B30);
  v87 = v104;
  v88 = v39 + *(v104 + 40);
  *v88 = v86 & 1;
  v89 = vdupq_n_s64(v86);
  *v89.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v89, xmmword_1A36249F0), vshlq_u64(v89, xmmword_1A36249E0))), 0x1000100010001);
  *(v88 + 1) = vuzp1_s8(*v89.i8, *v89.i8).u32[0];
  sub_1A35CC6AC(v99, v39 + *(v87 + 44));
  sub_1A35EAD3C(v39, v33 + v85, type metadata accessor for TipViewStyleConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v114);
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35E908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A3621CEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35ABFF4(v2 + *(a1 + 60), v11, &qword_1EB0EEDD8, &qword_1A3628060);
  if (v12 == 1)
  {
    return sub_1A35A63BC(v11, a2);
  }

  sub_1A362303C();
  v10 = sub_1A36221DC();
  sub_1A362166C();

  sub_1A3621CDC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A35E9200(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A35ABFF4(a1, &v5 - v3, &qword_1EB0EE5B8, &unk_1A3625270);
  sub_1A362288C();
  return sub_1A35A6588(a1, &qword_1EB0EE5B8, &unk_1A3625270);
}

uint64_t sub_1A35E9308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A35ABFF4(a1, &v5 - v3, &qword_1EB0EE5B8, &unk_1A3625270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED78, &qword_1A3627F28);
  sub_1A36228AC();
  return sub_1A35A6588(a1, &qword_1EB0EE5B8, &unk_1A3625270);
}

uint64_t sub_1A35E93E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  sub_1A362288C();
  return v2;
}

uint64_t sub_1A35E9428(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA40, &qword_1A36266A0);
  sub_1A362289C();
  return v2;
}

uint64_t sub_1A35E9564(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1A3620D6C();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A362141C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A362142C();
  v13 = sub_1A36213CC();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (sub_1A362110C() >= 1)
    {
      v15 = sub_1A36210FC();
      v16 = sub_1A35B220C();
      MEMORY[0x1A58F3960](&v21, MEMORY[0x1E69E6530], v16);
      v20 = v21;
      sub_1A36232CC();
      v15(v22, 0);
    }

    sub_1A35E92BC();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      return sub_1A35A6588(v5, &qword_1EB0EE5B8, &unk_1A3625270);
    }

    else
    {
      v17 = v19;
      (*(v19 + 32))(v8, v5, v6);
      if (!sub_1A362110C())
      {
        sub_1A362114C();
        sub_1A35E9E2C(a1);
      }

      return (*(v17 + 8))(v8, v6);
    }
  }

  return result;
}

uint64_t sub_1A35E9850@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for AppearanceChangeMonitor(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED81E088 != -1)
  {
    swift_once();
  }

  *v15 = byte_1EB0F2C68 & ~a1 & 1;
  *(v15 + 1) = a2;
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  v16 = v13[7];
  *&v15[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDC0, &qword_1A3629300);
  swift_storeEnumTagMultiPayload();
  v17 = &v15[v13[8]];
  v25 = 0;
  v26 = 1;
  sub_1A35B5EA0(a2, a3);
  sub_1A35B5EA0(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDC8, "x^");
  sub_1A362288C();
  v18 = v28;
  v19 = v29;
  *v17 = v27;
  v17[8] = v18;
  *(v17 + 2) = v19;
  v20 = &v15[v13[9]];
  LOBYTE(v25) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDD0, &qword_1A3628048);
  sub_1A362288C();
  v21 = v28;
  *v20 = v27;
  *(v20 + 1) = v21;
  sub_1A35ABFF4(v6, a6, &qword_1EB0EED58, &qword_1A3627EE0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED60, &qword_1A3627EE8);
  return sub_1A35EAD3C(v15, a6 + *(v22 + 36), type metadata accessor for AppearanceChangeMonitor);
}

uint64_t sub_1A35E9A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TipView(0, a2, a3, v5);
  sub_1A35E9B3C();
}

uint64_t sub_1A35E9B3C()
{
  v0 = sub_1A362141C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A362142C();
  v4 = sub_1A36213CC();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_1A362111C();
  }

  return result;
}

uint64_t sub_1A35E9C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1A36213AC();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  sub_1A3622E3C();
  v7[14] = sub_1A3622E2C();
  v10 = sub_1A3622DFC();

  return MEMORY[0x1EEE6DFA0](sub_1A35E9D24, v10, v9);
}

uint64_t sub_1A35E9D24()
{
  OUTLINED_FUNCTION_11_5();
  v13 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v3 + 16))(v1, v6, v2);
  v0[5] = v5;
  v0[6] = v4;
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_5_0();
  (*(v7 + 16))();
  sub_1A35A416C(v1, v0 + 2, &v12);
  v9 = type metadata accessor for TipView(0, v5, v4, v8);
  sub_1A35C1920(&v12, v9);

  OUTLINED_FUNCTION_5_1();

  return v10();
}

uint64_t sub_1A35E9E2C(uint64_t a1)
{
  result = sub_1A35E9428(a1);
  if (result)
  {

    if (sub_1A35E9428(a1))
    {
      sub_1A3622F1C();
    }

    return sub_1A35E947C(0, a1);
  }

  return result;
}

uint64_t sub_1A35E9EC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 96) = a5;
  *(v7 + 88) = a1;
  sub_1A3622E3C();
  *(v7 + 120) = sub_1A3622E2C();
  v9 = sub_1A3622DFC();
  *(v7 + 128) = v9;
  *(v7 + 136) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A35E9F60, v9, v8);
}

uint64_t sub_1A35E9F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 104);
  v5 = *(v4 + 112);
  v7 = *(v4 + 96);
  v8 = *(v4 + 88);
  *(v4 + 144) = *(v7 + *(type metadata accessor for TipView(0, v6, v5, a4) + 40));
  sub_1A362113C();
  v10 = v8 - v9;
  *(v4 + 80) = 1;
  sub_1A35B060C();
  sub_1A3622F9C();
  if (v10 <= v11)
  {
    v10 = v11;
  }

  v12 = swift_task_alloc();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  *(v12 + 32) = v7;
  *(v12 + 40) = v10;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_1A35EAEA8;
  *(v13 + 24) = v12;
  v14 = sub_1A362159C();
  sub_1A36215AC();

  v14(v4 + 16, 0);

  v15 = swift_task_alloc();
  *(v4 + 152) = v15;
  *v15 = v4;
  v15[1] = sub_1A35EA0EC;
  v16.n128_f64[0] = v10;

  return MEMORY[0x1EEE499D0](v16);
}

uint64_t sub_1A35EA0EC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1A35EA290;
  }

  else
  {
    v5 = sub_1A35EA228;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A35EA228()
{

  sub_1A36210EC();
  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_1A35EA290()
{
  OUTLINED_FUNCTION_11_5();
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  v8 = *(v0 + 104);

  v3 = swift_task_alloc();
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1A35EAEB8;
  *(v4 + 24) = v3;
  v5 = sub_1A362159C();
  sub_1A36215AC();

  v5(v0 + 48, 0);

  OUTLINED_FUNCTION_5_1();

  return v6();
}

uint64_t sub_1A35EA39C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0x203A646928706954, 0xE800000000000000);
  type metadata accessor for TipView(0, a3, a4, v6);
  v7 = sub_1A362134C();
  MEMORY[0x1A58F3290](v7);

  MEMORY[0x1A58F3290](0xD00000000000003BLL, 0x80000001A3639360);
  sub_1A3622FBC();
  return 0;
}

uint64_t sub_1A35EA488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A36231BC();

  type metadata accessor for TipView(0, a2, a3, v5);
  v6 = sub_1A362134C();
  MEMORY[0x1A58F3290](v6);

  MEMORY[0x1A58F3290](0xD000000000000019, 0x80000001A3639340);
  return 0x203A646928706954;
}

uint64_t sub_1A35EA548()
{
  OUTLINED_FUNCTION_12_1();
  v4 = type metadata accessor for TipView(v0, v1, v2, v3);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_12_1();

  return sub_1A35E9528(v9, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_1()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 16);
  type metadata accessor for TipView(0, v2, *(v1 + 24), v3);
  OUTLINED_FUNCTION_8();
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 8))(v5, v2);

  v7 = (v5 + v0[11]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v5 + v0[13] + 8))
  {
  }

  v8 = v5 + v0[14];
  __swift_destroy_boxed_opaque_existential_1(v8);

  if (*(v8 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v8 + 120);
  v9 = type metadata accessor for TipViewStyleConfiguration(0);
  v10 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_6_6(v10))
  {
    OUTLINED_FUNCTION_5_0();
    v11 = OUTLINED_FUNCTION_16_1();
    v12(v11);
  }

  v13 = v8 + *(v9 + 44);
  v14 = type metadata accessor for TipViewEnvironment(0);
  if (!OUTLINED_FUNCTION_5_8(v14))
  {
    if (*(v13 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v13 + 24));
    }

    v15 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_6_6(v15))
    {
      OUTLINED_FUNCTION_5_0();
      v16 = OUTLINED_FUNCTION_16_1();
      v17(v16);
    }

    __swift_destroy_boxed_opaque_existential_1((v13 + *(v9 + 32)));
    v18 = (v13 + *(v9 + 44));
    if (v18[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    OUTLINED_FUNCTION_13_1();
    if (v19)
    {
    }

    OUTLINED_FUNCTION_13_1();
    if (v20)
    {
    }
  }

  v21 = v5 + v0[15];
  if (*(v21 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
  }

  v22 = sub_1A3620D6C();
  if (!OUTLINED_FUNCTION_5_8(v22))
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_14_2();
    v24(v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED78, &qword_1A3627F28);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v25, v26, v27);
}

unint64_t sub_1A35EA8C8()
{
  result = qword_1ED81E148;
  if (!qword_1ED81E148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED60, &qword_1A3627EE8);
    sub_1A35EA984();
    sub_1A35EAA40(&qword_1ED81E650, type metadata accessor for AppearanceChangeMonitor, &unk_1A3629294);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E148);
  }

  return result;
}

unint64_t sub_1A35EA984()
{
  result = qword_1ED81E2E0;
  if (!qword_1ED81E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED58, &qword_1A3627EE0);
    sub_1A35C1F18();
    sub_1A35EAA40(&qword_1ED81E690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2E0);
  }

  return result;
}

uint64_t sub_1A35EAA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A35EAA88()
{
  OUTLINED_FUNCTION_11_5();
  v2 = v1;
  v4 = v3;
  v6 = v0[4];
  v5 = v0[5];
  v8 = *(type metadata accessor for TipView(0, v6, v5, v7) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = sub_1A36213AC();
  OUTLINED_FUNCTION_14(v11);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v0[2];
  v15 = v0[3];
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1A35EAF34;

  return sub_1A35E9C2C(v4, v14, v15, v0 + v9, v0 + v13, v6, v5);
}

uint64_t sub_1A35EAC30(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1A35EAC74(uint64_t a1)
{
  v2 = sub_1A36216FC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A3621B5C();
}

uint64_t sub_1A35EAD3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A35EAD9C()
{
  OUTLINED_FUNCTION_11_5();
  v3 = v2;
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v7 = type metadata accessor for TipView(0, v4, v5, v6);
  OUTLINED_FUNCTION_14(v7);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = *(v0 + 2);
  v11 = *(v0 + 3);
  v12 = v0[6];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1A35C1CCC;

  return sub_1A35E9EC0(v12, v3, v10, v11, v0 + v9, v4, v5);
}

uint64_t sub_1A35EAEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDB0, &unk_1A36283A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t getEnumTagSinglePayload for TipViewHostingContainer.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipViewHostingContainer.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1A35EB0B4()
{
  result = qword_1EB0EEDE0;
  if (!qword_1EB0EEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEDE0);
  }

  return result;
}

uint64_t sub_1A35EB108(uint64_t a1)
{
  v2 = v1;
  if (_s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0() & 1) != 0 && (v3 = v1[3], v4 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v3), (*(v4 + 16))(v3, v4), LOBYTE(v3) = sub_1A3622D9C(), , (v3))
  {
    v5 = v1[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1A35A63D4(v5, v6, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v10);
    return sub_1A3622BBC();
  }

  else
  {
    v8 = v1[3];
    v9 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v8);
    return (*(v9 + 16))(v8, v9);
  }
}

void sub_1A35EB218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v103 = v23;
  v107 = v24;
  v100 = v25;
  v112 = v26;
  v111 = v27;
  v110 = v28;
  OUTLINED_FUNCTION_22_0(v29, v30);
  v102 = a21;
  v106 = sub_1A362141C();
  OUTLINED_FUNCTION_1();
  v114 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_0();
  v35 = v34 - v33;
  v105 = type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_8_5(v38 - v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0, &unk_1A3628EC0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8, &qword_1A3624B28);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_12();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v99 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE290, &unk_1A3624590);
  v51 = v21 + v50[15];
  *v51 = swift_getKeyPath();
  *(v51 + 40) = 0;
  v52 = sub_1A3620D6C();
  OUTLINED_FUNCTION_21(v49, v53, v54, v52);
  sub_1A35ECF18(v49, v46, &qword_1EB0EE5B8, &unk_1A3625270);
  sub_1A362288C();
  sub_1A35A6588(v49, &qword_1EB0EE5B8, &unk_1A3625270);
  v55 = v50[17];
  v117[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  sub_1A362288C();
  *(v21 + v55) = v121;
  v104 = v50;
  v56 = v21 + v50[18];
  LOBYTE(v117[0]) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDA0, qword_1A3627FC8);
  sub_1A362288C();
  v57 = *(&v121 + 1);
  *v56 = v121;
  *(v56 + 8) = v57;
  sub_1A35ECEBC(v22, v21);
  OUTLINED_FUNCTION_26_0();
  v58 = OUTLINED_FUNCTION_12_2();
  sub_1A35A63D4(v58, v59, v60);
  __swift_project_boxed_opaque_existential_1(&v121, v122);
  DynamicType = swift_getDynamicType();
  v62 = v123;
  __swift_destroy_boxed_opaque_existential_1(&v121);
  *(v21 + 40) = DynamicType;
  *(v21 + 48) = v62;
  OUTLINED_FUNCTION_26_0();
  v63 = OUTLINED_FUNCTION_12_2();
  sub_1A35A63D4(v63, v64, v65);
  v66 = v122;
  v67 = v123;
  v68 = __swift_project_boxed_opaque_existential_1(&v121, v122);
  v69 = sub_1A35EB108(v68);
  v71 = v70;
  v72 = sub_1A35A7250(v69, v70, v68, v66, v67);

  __swift_destroy_boxed_opaque_existential_1(&v121);
  *(v21 + 56) = v72;
  sub_1A35ECF18(v112, v21 + 64, &qword_1EB0EEDB0, &unk_1A36283A0);
  *(v21 + 104) = v100;
  v73 = v109;
  v74 = v110;
  *(v21 + 112) = v109;
  *(v21 + 120) = v74;
  *(v21 + 128) = v111;
  OUTLINED_FUNCTION_26_0();

  sub_1A35E0534(v73, v74);
  sub_1A35A63D4(v71, v66, v124);
  sub_1A35ECF18(v107, &v121, &qword_1EB0EE3E0, &qword_1A3624B30);
  v75 = sub_1A362190C();
  OUTLINED_FUNCTION_21(v113, v76, v77, v75);
  v78 = type metadata accessor for TipViewEnvironment(0);
  OUTLINED_FUNCTION_21(v108, v79, v80, v78);
  v81 = v124[3];
  v82 = v124[4];
  OUTLINED_FUNCTION_4();
  v83 = v82;
  v84 = v101;
  sub_1A35A63D4(v81, v83, v101);
  v85 = v103;
  v84[5] = v72;
  v84[6] = v85;
  v84[7] = v102;

  sub_1A362142C();
  LOBYTE(v81) = sub_1A36213FC();
  v86 = *(v114 + 8);
  v114 += 8;
  v86(v35, v106);
  v87 = 0;
  if (v81)
  {
    v87 = sub_1A362133C();
  }

  v84[8] = v87;
  sub_1A35ECF18(&v121, v115, &qword_1EB0EE3E0, &qword_1A3624B30);
  if (v116)
  {
    sub_1A35B8570(v115, v117);
    v88 = v105;
  }

  else
  {
    LOBYTE(v117[0]) = 0;
    v117[1] = 0;
    v117[2] = 0;
    v118 = 1;
    v89 = sub_1A35B37E0();
    v119 = &type metadata for AnyTip;
    v120 = v89;
    swift_unknownObjectWeakInit();
    v88 = v105;
    if (v116)
    {
      sub_1A35A6588(v115, &qword_1EB0EE3E0, &qword_1A3624B30);
    }
  }

  sub_1A35B8570(v117, (v84 + 9));
  sub_1A35ECF18(v113, v84 + v88[9], &qword_1EB0EE3D8, &qword_1A3624B28);
  OUTLINED_FUNCTION_4();
  v90 = OUTLINED_FUNCTION_12_2();
  sub_1A35A63D4(v90, v91, v92);
  sub_1A362142C();
  v93 = sub_1A36213FC();
  v86(v35, v106);
  if (v93)
  {
    v94 = sub_1A362133C();
  }

  else
  {
    v94 = 0;
  }

  v95 = v104[14];
  v96 = sub_1A35F5FC8(v117, v94);
  sub_1A35EAC30(v109, v110);
  sub_1A35A6588(v107, &qword_1EB0EE3E0, &qword_1A3624B30);
  sub_1A35A6588(v112, &qword_1EB0EEDB0, &unk_1A36283A0);
  sub_1A35A6588(v113, &qword_1EB0EE3D8, &qword_1A3624B28);
  sub_1A35A6588(&v121, &qword_1EB0EE3E0, &qword_1A3624B30);
  sub_1A35C18CC(v22);
  v97 = v84 + v88[10];
  *v97 = v96 & 1;
  v98 = vdupq_n_s64(v96);
  *v98.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v98, xmmword_1A36249F0), vshlq_u64(v98, xmmword_1A36249E0))), 0x1000100010001);
  *(v97 + 1) = vuzp1_s8(*v98.i8, *v98.i8).u32[0];
  sub_1A35ECF68(v108, v84 + v88[11], &qword_1EB0EE3D0, &unk_1A3628EC0);
  sub_1A35B7340(v84, v21 + v95);
  __swift_destroy_boxed_opaque_existential_1(v124);
  OUTLINED_FUNCTION_24();
}

void TipView.init<>(_:isPresented:arrowEdge:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v63 = v25;
  v67 = v26;
  v66 = __PAIR64__(v28, v27);
  v65 = v29;
  v64 = v30;
  OUTLINED_FUNCTION_30_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v62 - v38;
  v40 = v20 + v21[17];
  *v40 = swift_getKeyPath();
  *(v40 + 40) = 0;
  v41 = OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_21(v39, v42, v43, v41);
  sub_1A35ECF18(v39, v36, &qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_28_0(&a15);
  sub_1A362288C();
  sub_1A35A6588(v39, &qword_1EB0EE5B8, &unk_1A3625270);
  v44 = (v20 + v21[19]);
  v73[0] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  OUTLINED_FUNCTION_8_6(v45);
  v46 = v69;
  *v44 = v68;
  v44[1] = v46;
  v47 = v20 + v21[20];
  OUTLINED_FUNCTION_14_3();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDA0, qword_1A3627FC8);
  v49 = OUTLINED_FUNCTION_8_6(v48);
  v50 = v69;
  *v47 = v68;
  *(v47 + 8) = v50;
  OUTLINED_FUNCTION_34_0(v49, v51, &qword_1EB0EEAF8, &qword_1A3626DD8);
  v52 = v74;
  if (!v74)
  {
    sub_1A35A6588(v73, &qword_1EB0EEAF8, &qword_1A3626DD8);
    goto LABEL_5;
  }

  v53 = v75;
  OUTLINED_FUNCTION_4();
  sub_1A35E5FC8(v52, v53, &v68);
  __swift_destroy_boxed_opaque_existential_1(v73);
  if (!v71)
  {
LABEL_5:
    v74 = &type metadata for EmptyTip;
    v75 = sub_1A35DED64();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_3();
LABEL_6:
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_15_0(v73, v54, v55, v56, &v72, v57, &v68, v58, v63, v61, v62[0], v62[1], v62[2], v63, v64, v65, v66, v67, v68, v69, v70);
  sub_1A35A6588(v22, &qword_1EB0EEAF8, &qword_1A3626DD8);
  sub_1A35A6588(v40, &qword_1EB0EEDE8, &qword_1A3628140);
  OUTLINED_FUNCTION_27_0(&qword_1EB0EED78, &qword_1A3627F28, &a15);

  OUTLINED_FUNCTION_25_0(v59, v60, &unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_24();
}

void TipView.init<A>(_:isPresented:arrowEdge:anchorID:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_26();
  a19 = v25;
  a20 = v26;
  v74 = v27;
  v78 = v29;
  v79 = v28;
  v77 = __PAIR64__(v31, v30);
  v76 = v32;
  OUTLINED_FUNCTION_22_0(v33, v34);
  v73 = a22;
  v71 = a21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7();
  v80 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_12();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v71 - v42;
  v44 = v22 + v23[17];
  *v44 = swift_getKeyPath();
  *(v44 + 40) = 0;
  v45 = v23[18];
  v46 = sub_1A3620D6C();
  OUTLINED_FUNCTION_21(v43, v47, v48, v46);
  sub_1A35ECF18(v43, v40, &qword_1EB0EE5B8, &unk_1A3625270);
  v72 = v45;
  v49 = v24;
  sub_1A362288C();
  sub_1A35A6588(v43, &qword_1EB0EE5B8, &unk_1A3625270);
  v50 = (v22 + v23[19]);
  v84[0] = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  OUTLINED_FUNCTION_7_5(v51);
  v52 = v82;
  *v50 = v81;
  v50[1] = v52;
  v53 = v22 + v23[20];
  OUTLINED_FUNCTION_14_3();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDA0, qword_1A3627FC8);
  OUTLINED_FUNCTION_7_5(v54);
  v55 = v82;
  *v53 = v81;
  *(v53 + 8) = v55;
  sub_1A35ECF18(v24, v84, &qword_1EB0EEAF8, &qword_1A3626DD8);
  if (!v85)
  {
    sub_1A35A6588(v84, &qword_1EB0EEAF8, &qword_1A3626DD8);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_32_0();
  __swift_destroy_boxed_opaque_existential_1(v84);
  if (!v83)
  {
LABEL_5:
    v85 = &type metadata for EmptyTip;
    v86 = sub_1A35DED64();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_6();
LABEL_6:
  v56 = v79;
  v57 = v71;
  sub_1A362335C();
  OUTLINED_FUNCTION_9_3();
  v69 = v74;
  v58 = OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_15_0(v58, v59, v60, v61, v62, v63, v64, v65, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  OUTLINED_FUNCTION_29_0();
  (*(v66 + 8))(v56, v57);
  sub_1A35A6588(v49, &qword_1EB0EEAF8, &qword_1A3626DD8);
  sub_1A35A6588(v44, &qword_1EB0EEDE8, &qword_1A3628140);
  OUTLINED_FUNCTION_27_0(&qword_1EB0EED78, &qword_1A3627F28, &a14);

  OUTLINED_FUNCTION_25_0(v67, v68, &unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_24();
}

void TipView.init<>(_:arrowEdge:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v60 = v25;
  v62 = v26;
  HIDWORD(v61) = v27;
  OUTLINED_FUNCTION_30_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v59 - v35;
  v37 = v20 + v21[17];
  *v37 = swift_getKeyPath();
  *(v37 + 40) = 0;
  v38 = OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_21(v36, v39, v40, v38);
  sub_1A35ECF18(v36, v33, &qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_28_0(&a17);
  sub_1A362288C();
  sub_1A35A6588(v36, &qword_1EB0EE5B8, &unk_1A3625270);
  v41 = (v20 + v21[19]);
  v68[0] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  OUTLINED_FUNCTION_8_6(v42);
  v43 = v64;
  *v41 = v63;
  v41[1] = v43;
  v44 = v20 + v21[20];
  OUTLINED_FUNCTION_14_3();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDA0, qword_1A3627FC8);
  v46 = OUTLINED_FUNCTION_8_6(v45);
  v47 = v64;
  *v44 = v63;
  *(v44 + 8) = v47;
  OUTLINED_FUNCTION_34_0(v46, v48, &qword_1EB0EEAF8, &qword_1A3626DD8);
  if (!v69)
  {
    sub_1A35A6588(v68, &qword_1EB0EEAF8, &qword_1A3626DD8);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_4();
  v49 = OUTLINED_FUNCTION_12_2();
  sub_1A35E5FC8(v49, v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v68);
  if (!v66)
  {
LABEL_5:
    v69 = &type metadata for EmptyTip;
    v70 = sub_1A35DED64();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_3();
LABEL_6:
  OUTLINED_FUNCTION_3_14();
  v57 = v60;
  v52 = OUTLINED_FUNCTION_17_2();
  sub_1A35EB218(v52, 0, 0, 0, v53, HIDWORD(v61), v54, v62, v57, v58, v59[0], v59[1], v59[2], v60, v61, v62, v63, v64, v65, v66, v67);
  sub_1A35A6588(v22, &qword_1EB0EEAF8, &qword_1A3626DD8);
  sub_1A35A6588(v37, &qword_1EB0EEDE8, &qword_1A3628140);
  OUTLINED_FUNCTION_27_0(&qword_1EB0EED78, &qword_1A3627F28, &a17);

  OUTLINED_FUNCTION_25_0(v55, v56, &unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_24();
}

void TipView.init(_:arrowEdge:action:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v44 = v4;
  v45 = v5;
  v47 = v6;
  HIDWORD(v46) = v7;
  v9 = v8;
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v19 = type metadata accessor for TipView(0, v17, v18, v16);
  OUTLINED_FUNCTION_1();
  v48 = v20;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7();
  v43 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  v26 = v9 + v19[15];
  *v26 = swift_getKeyPath();
  *(v26 + 40) = 0;
  v42 = v19[16];
  v27 = sub_1A3620D6C();
  OUTLINED_FUNCTION_21(v25, v28, v29, v27);
  sub_1A35E9200(v25);
  v30 = (v9 + v19[17]);
  v31 = sub_1A35E93E0(0);
  v41 = v32;
  *v30 = v31;
  v30[1] = v32;
  v33 = v9 + v19[18];
  OUTLINED_FUNCTION_14_3();
  sub_1A35E94D4(v54);
  v34 = v50;
  *v33 = v49[0];
  *(v33 + 8) = v34;
  v35 = v11;
  v36 = *(v11 + 16);
  v37 = v44;
  v36(v15, v44, v3);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v39 = v1;
  v38 = v43;
  sub_1A35E8958(v15, 0, 0, 0, v54, HIDWORD(v46), v49, v47, v45, v3, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, 0, 0, 0);
  (*(v35 + 8))(v37, v3);
  sub_1A35A6588(v26, &qword_1EB0EEDE8, &qword_1A3628140);
  sub_1A35A6588(v9 + v42, &qword_1EB0EED78, &qword_1A3627F28);

  (*(v48 + 32))(v9, v38, v19);
  OUTLINED_FUNCTION_24();
}

void TipView.init<>(_:isPresented:arrowEdge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v66 = __PAIR64__(v26, v25);
  v65 = v27;
  v64 = v28;
  OUTLINED_FUNCTION_30_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v63 - v36;
  v38 = v20 + v21[17];
  *v38 = swift_getKeyPath();
  *(v38 + 40) = 0;
  v39 = OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_21(v37, v40, v41, v39);
  sub_1A35ECF18(v37, v34, &qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_28_0(&a17);
  sub_1A362288C();
  sub_1A35A6588(v37, &qword_1EB0EE5B8, &unk_1A3625270);
  v42 = (v20 + v21[19]);
  v72[0] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  OUTLINED_FUNCTION_8_6(v43);
  v44 = v68;
  *v42 = v67;
  v42[1] = v44;
  v45 = v20 + v21[20];
  OUTLINED_FUNCTION_14_3();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDA0, qword_1A3627FC8);
  v47 = OUTLINED_FUNCTION_8_6(v46);
  v48 = v68;
  *v45 = v67;
  *(v45 + 8) = v48;
  OUTLINED_FUNCTION_34_0(v47, v49, &qword_1EB0EEAF8, &qword_1A3626DD8);
  v50 = v73;
  if (!v73)
  {
    sub_1A35A6588(v72, &qword_1EB0EEAF8, &qword_1A3626DD8);
    goto LABEL_5;
  }

  v51 = v74;
  OUTLINED_FUNCTION_4();
  sub_1A35E5FC8(v50, v51, &v67);
  __swift_destroy_boxed_opaque_existential_1(v72);
  if (!v70)
  {
LABEL_5:
    v73 = &type metadata for EmptyTip;
    v74 = sub_1A35DED64();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_3();
LABEL_6:
  OUTLINED_FUNCTION_3_14();
  v52 = OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_24_0(v52, v53, v54, v55, v56, v57, v58, v59, 0, v62, v63[0], v63[1], v63[2], v64, v65, v66, v67, v68, v69, v70, v71);
  sub_1A35A6588(v22, &qword_1EB0EEAF8, &qword_1A3626DD8);
  sub_1A35A6588(v38, &qword_1EB0EEDE8, &qword_1A3628140);
  OUTLINED_FUNCTION_27_0(&qword_1EB0EED78, &qword_1A3627F28, &a17);

  OUTLINED_FUNCTION_25_0(v60, v61, &unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_24();
}

void TipView.init<A>(_:isPresented:arrowEdge:anchorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v70 = v25;
  v68 = v26;
  v74 = v27;
  v73 = __PAIR64__(v29, v28);
  v72 = v30;
  OUTLINED_FUNCTION_22_0(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7();
  v75 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v68 - v40;
  v42 = v20 + v21[17];
  *v42 = swift_getKeyPath();
  *(v42 + 40) = 0;
  v43 = v21[18];
  v44 = sub_1A3620D6C();
  OUTLINED_FUNCTION_21(v41, v45, v46, v44);
  sub_1A35ECF18(v41, v38, &qword_1EB0EE5B8, &unk_1A3625270);
  v69 = v43;
  v47 = v22;
  sub_1A362288C();
  sub_1A35A6588(v41, &qword_1EB0EE5B8, &unk_1A3625270);
  v48 = (v20 + v21[19]);
  v80[0] = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  OUTLINED_FUNCTION_7_5(v49);
  v50 = v77;
  *v48 = v76;
  v48[1] = v50;
  v51 = v20 + v21[20];
  OUTLINED_FUNCTION_14_3();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDA0, qword_1A3627FC8);
  OUTLINED_FUNCTION_7_5(v52);
  v53 = v77;
  *v51 = v76;
  *(v51 + 8) = v53;
  sub_1A35ECF18(v22, v80, &qword_1EB0EEAF8, &qword_1A3626DD8);
  if (!v81)
  {
    sub_1A35A6588(v80, &qword_1EB0EEAF8, &qword_1A3626DD8);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_32_0();
  __swift_destroy_boxed_opaque_existential_1(v80);
  if (!v79)
  {
LABEL_5:
    v81 = &type metadata for EmptyTip;
    v82 = sub_1A35DED64();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_6();
LABEL_6:
  v54 = v74;
  v55 = v68;
  sub_1A362335C();
  OUTLINED_FUNCTION_9_3();
  v56 = OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_24_0(v56, v57, v58, v59, v60, v61, v62, v63, 0, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  OUTLINED_FUNCTION_29_0();
  (*(v64 + 8))(v54, v55);
  sub_1A35A6588(v47, &qword_1EB0EEAF8, &qword_1A3626DD8);
  sub_1A35A6588(v42, &qword_1EB0EEDE8, &qword_1A3628140);
  OUTLINED_FUNCTION_27_0(&qword_1EB0EED78, &qword_1A3627F28, &a16);

  OUTLINED_FUNCTION_25_0(v65, v66, &unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_24();
}

void TipView.init<A>(_:isPresented:arrowEdge:anchorTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v60 = v26;
  v61 = v25;
  v63 = __PAIR64__(v28, v27);
  v62 = v29;
  OUTLINED_FUNCTION_30_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v59 - v37;
  v39 = v20 + v21[17];
  *v39 = swift_getKeyPath();
  *(v39 + 40) = 0;
  v40 = OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_21(v38, v41, v42, v40);
  sub_1A35ECF18(v38, v35, &qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_28_0(&a18);
  sub_1A362288C();
  sub_1A35A6588(v38, &qword_1EB0EE5B8, &unk_1A3625270);
  v43 = (v20 + v21[19]);
  v69[0] = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  OUTLINED_FUNCTION_7_5(v44);
  v45 = v65;
  *v43 = v64;
  v43[1] = v45;
  v46 = v20 + v21[20];
  OUTLINED_FUNCTION_14_3();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDA0, qword_1A3627FC8);
  v48 = OUTLINED_FUNCTION_7_5(v47);
  v49 = v65;
  *v46 = v64;
  *(v46 + 8) = v49;
  OUTLINED_FUNCTION_34_0(v48, v50, &qword_1EB0EEAF8, &qword_1A3626DD8);
  v51 = v70;
  if (!v70)
  {
    sub_1A35A6588(v69, &qword_1EB0EEAF8, &qword_1A3626DD8);
    goto LABEL_5;
  }

  v52 = v71;
  OUTLINED_FUNCTION_4();
  sub_1A35E5FC8(v51, v52, &v64);
  __swift_destroy_boxed_opaque_existential_1(v69);
  if (!v67)
  {
LABEL_5:
    v70 = &type metadata for EmptyTip;
    v71 = sub_1A35DED64();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_6();
LABEL_6:
  v64 = v60;
  sub_1A362317C();
  OUTLINED_FUNCTION_9_3();
  v53 = OUTLINED_FUNCTION_23_1();
  sub_1A35EB218(v53, v61, v62, v63, v54, HIDWORD(v63), v55, 0, 0, v58, v59[0], v59[1], v60, v61, v62, v63, v64, v65, v66, v67, v68);
  sub_1A35A6588(v22, &qword_1EB0EEAF8, &qword_1A3626DD8);
  sub_1A35A6588(v39, &qword_1EB0EEDE8, &qword_1A3628140);
  OUTLINED_FUNCTION_27_0(&qword_1EB0EED78, &qword_1A3627F28, &a18);

  OUTLINED_FUNCTION_25_0(v56, v57, &unk_1EB0EE290, &unk_1A3624590);
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35ECF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1A35ECF68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a3 - 256);

  return sub_1A35A6588(v5, a1, a2);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_1A35E5FC8(v0, v1, v2 - 224);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_1A3620D6C();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1A35ECF18(v4, v5 - 128, a3, a4);
}

uint64_t View.tipCornerRadius(_:antialiased:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = a1;
  sub_1A362258C();
}

double sub_1A35ED11C(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t View.onTipAction(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_3();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1A362258C();
}

uint64_t sub_1A35ED1F0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TipViewEnvironment(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A35EEE00;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1A35B5EA0(v4, v5);
}

uint64_t sub_1A35ED284(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A35EEDD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for TipViewEnvironment(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  sub_1A35B5EA0(v3, v4);
  result = sub_1A35BBDF4(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_1A35ED330(uint64_t (**a1)(), uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_1A35BBDF4(v6, a1[1]);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a1 = sub_1A35EEDAC;
  a1[1] = v7;
}

uint64_t sub_1A35ED3D8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TipViewEnvironment(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A35EEDFC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1A35B5EA0(v4, v5);
}

uint64_t sub_1A35ED46C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A35EEDA4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for TipViewEnvironment(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  sub_1A35B5EA0(v3, v4);
  result = sub_1A35BBDF4(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_1A35ED518(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_1A35BBDF4(v6, a1[1]);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_1A35EEDFC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_1A35B5EA0(a2, a3);
}

uint64_t sub_1A35ED5D4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_3();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1A35B5EA0(v3, v1);
  sub_1A362258C();

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35ED684(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_1A35BBDF4(v6, a1[1]);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_1A35EED9C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_1A35B5EA0(a2, a3);
}

uint64_t objectdestroy_24Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void View.tipAnchor<A>(_:)()
{
  OUTLINED_FUNCTION_26();
  v25[0] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TipAnchorViewModifier(0, v14, v16, v15);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v25 - v22;
  (*(v10 + 16))(v13, v8, v4, v21);
  sub_1A35F1F00(v13, v4, v2, v23, v24);
  MEMORY[0x1A58F2CC0](v23, v6, v17, v25[0]);
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_24();
}

uint64_t View.tipAnchor<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a3;
  v8[1] = swift_getKeyPath();
  v9 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDF0, &qword_1A3628260);
  MEMORY[0x1A58F2CC0](v8, a2, v6, a4);
}

void View.tipBackgroundInteraction(_:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_1A36221CC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  (*(v4 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v1, v2);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  sub_1A362258C();

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35EDAD8(uint64_t a1, uint64_t a2)
{
  sub_1A35EED44(a1, &qword_1EB0EEE50);
  v4 = sub_1A36221CC();
  (*(*(v4 - 8) + 16))(a1, a2, v4);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t View.tipImageSize(_:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_3();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1A362258C();
}

unint64_t sub_1A35EDC30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35EED44(v13, &unk_1EB0EF950);
  (*(v10 + 16))(v12, a2, a4);
  v14 = sub_1A35F535C(v12, a4, a6);
  a1[3] = &unk_1F164BB48;
  result = sub_1A35E8544();
  a1[4] = result;
  *a1 = v14;
  return result;
}

void View.tipImageStyle<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_26();
  v37 = v1;
  v35 = v2;
  v36 = v3;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v31 = v9;
  v32 = v11;
  v13 = v12;
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_6();
  KeyPath = swift_getKeyPath();
  (*(v21 + 16))(v0, v13, v8);
  (*(v15 + 16))(v19, v32, v6);
  v25 = (*(v21 + 80) + 64) & ~*(v21 + 80);
  v26 = (v23 + *(v15 + 80) + v25) & ~*(v15 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v10;
  *(v27 + 3) = v8;
  v29 = v34;
  v28 = v35;
  *(v27 + 4) = v6;
  *(v27 + 5) = v29;
  v30 = v36;
  *(v27 + 6) = v28;
  *(v27 + 7) = v30;
  (*(v21 + 32))(&v27[v25], v0, v8);
  (*(v15 + 32))(&v27[v26], v19, v6);
  sub_1A362258C();

  OUTLINED_FUNCTION_24();
}

unint64_t sub_1A35EDF60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a8;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35EED44(v22, &unk_1EB0EF950);
  (*(v18 + 16))(v21, a2, a5);
  (*(v14 + 16))(v16, a3, a6);
  v23 = sub_1A35F5434(v21, v16, a5, a6, v28, a9);
  v25 = v24;
  a1[3] = &unk_1F164BB20;
  result = sub_1A35E85EC();
  a1[4] = result;
  *a1 = v23;
  a1[1] = v25;
  return result;
}

void View.tipImageStyle<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22)
{
  OUTLINED_FUNCTION_26();
  v71 = v23;
  v63 = v24;
  v64 = v25;
  v27 = v26;
  v29 = v28;
  v68 = v30;
  v66 = v31;
  v61 = v32;
  v69 = a22;
  v70 = v33;
  OUTLINED_FUNCTION_1();
  v35 = v34;
  v62 = *(v36 + 64);
  v67 = a21;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v39;
  OUTLINED_FUNCTION_1();
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v59 = &v57 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_7_6();
  v58 = v22;
  KeyPath = swift_getKeyPath();
  (*(v46 + 16))(v22, v61, v29);
  v50 = v27;
  (*(v41 + 16))(&v57 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v63, v27);
  v57 = v35;
  v51 = v64;
  (*(v35 + 16))(v39, v66, v64);
  v52 = (*(v46 + 80) + 80) & ~*(v46 + 80);
  v53 = (v48 + *(v41 + 80) + v52) & ~*(v41 + 80);
  v54 = (v43 + *(v35 + 80) + v53) & ~*(v35 + 80);
  v55 = swift_allocObject();
  v56 = v69;
  *(v55 + 16) = v68;
  *(v55 + 24) = v29;
  *(v55 + 32) = v50;
  *(v55 + 40) = v51;
  *(v55 + 48) = v70;
  *(v55 + 56) = v67;
  *(v55 + 72) = v56;
  (*(v46 + 32))(v55 + v52, v58, v29);
  (*(v41 + 32))(v55 + v53, v59, v50);
  (*(v57 + 32))(v55 + v54, v60, v51);
  sub_1A362258C();

  OUTLINED_FUNCTION_24();
}

unint64_t sub_1A35EE438(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a3;
  v36 = a2;
  v40 = a4;
  v41 = a12;
  v16 = *(a8 - 8);
  v39 = a10;
  v37 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35EED44(v29, &unk_1EB0EF950);
  (*(v25 + 16))(v28, v36, a6);
  (*(v20 + 16))(v23, v38, a7);
  (*(v16 + 16))(v18, v40, a8);
  v30 = sub_1A35F55DC(v28, v23, v18, a6, a8, a7, v39, v41, v37);
  v32 = v31;
  v34 = v33;
  a1[3] = &unk_1F164BA98;
  result = sub_1A35E8598();
  a1[4] = result;
  *a1 = v30;
  a1[1] = v32;
  a1[2] = v34;
  return result;
}

void sub_1A35EE6D4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_6();
  swift_getKeyPath();
  (*(v12 + 16))(v0, v10, v6);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v8;
  *(v15 + 3) = v6;
  *(v15 + 4) = v4;
  *(v15 + 5) = v2;
  (*(v12 + 32))(&v15[v14], v0, v6);
  sub_1A362258C();

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35EE820(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  a1[3] = a4;
  a1[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v11 = *(*(a4 - 8) + 16);

  return v11(boxed_opaque_existential_0, a2, a4);
}

uint64_t sub_1A35EE8A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35BC84C();
  *a1 = result;
  return result;
}

uint64_t sub_1A35EE8F8(uint64_t a1)
{
  v3 = *(sub_1A36221CC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A35EDAD8(a1, v4);
}

__n128 sub_1A35EE968(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = 1;
  return result;
}

unint64_t sub_1A35EEA4C(uint64_t *a1)
{
  v2 = v1[4];
  v3 = (*(*(v1[3] - 8) + 80) + 80) & ~*(*(v1[3] - 8) + 80);
  v4 = (v3 + *(*(v1[3] - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  return sub_1A35EE438(a1, v1 + v3, v1 + v4, v1 + ((v4 + *(*(v2 - 8) + 64) + *(*(v1[5] - 8) + 80)) & ~*(*(v1[5] - 8) + 80)), v1[2], v1[3], v2, v1[5], v1[6], v1[7], v1[8], v1[9]);
}

uint64_t objectdestroyTm_2()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVy12CoreGraphics7CGFloatV6radius_Sb11antialiasedtGGAaBHPxAaBHD1__AlA0cI0HPyHCHCTm(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = OUTLINED_FUNCTION_11_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
  OUTLINED_FUNCTION_8_7();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_1_16();
  sub_1A35A9B78(a4, a2, a3, v9);
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA10ShapeStyleRd__r__lAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVyAaC_p5value_Sb12isCustomizedtGGAaBHPxAaBHD1__AjA0cK0HPyHCHCTm(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v9 = OUTLINED_FUNCTION_11_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v9, v10);
  OUTLINED_FUNCTION_8_7();
  sub_1A3621A6C();
  sub_1A35A9B78(a4, a2, a3, a5);
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t sub_1A35EED44(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1A35EEE04(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for CGRect(0);
  v7 = *a2;
  v3 = swift_allocObject();
  v4 = *(a2 + 1);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 2);
  *(v3 + 64) = *(a2 + 48);

  sub_1A35F08E8(&v7, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE98, &qword_1A3628500);
  sub_1A35A9B30(&qword_1ED81E2A8, &qword_1EB0EEE98, &qword_1A3628500, MEMORY[0x1E697FDF8]);
  sub_1A35C35EC();
  sub_1A362250C();
}

uint64_t sub_1A35EEF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a1;
  v132 = a3;
  swift_getWitnessTable();
  v145 = sub_1A3621FAC();
  v146 = sub_1A3621A6C();
  v5 = sub_1A3621F2C();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v141 = sub_1A36217EC();
  v8 = sub_1A3621A6C();
  v112 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v108 - v9;
  v10 = *(a2 + 16);
  *&v11 = v10;
  *(&v11 + 1) = v6;
  v12 = *(a2 + 32);
  *&v13 = v12;
  v113 = v7;
  *(&v13 + 1) = v7;
  v198 = v13;
  v197 = v11;
  v14 = sub_1A362208C();
  v140 = v8;
  v135 = v14;
  v15 = sub_1A3621A6C();
  v116 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v108 - v18;
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v12;
  v144 = sub_1A362209C();
  v21 = sub_1A3621A6C();
  v110 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v108 - v24;
  v128 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v137 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v27;
  v28 = sub_1A3621F2C();
  v123 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v108 - v29;
  v134 = v5;
  v126 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v124 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v136 = (&v108 - v33);
  v34 = sub_1A36230DC();
  v127 = v6;
  v35 = sub_1A36230DC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = TupleTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v108 - v38;
  v143 = v28;
  v131 = v15;
  v40 = sub_1A3621F2C();
  v129 = *(v40 - 8);
  v130 = v40;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v142 = &v108 - v42;
  v43 = *(a2 + 56);
  v44 = *(v37 + 56);
  (*(*(v34 - 8) + 16))(v39, v3 + *(a2 + 52), v34, v41);
  v45 = *(v35 - 8);
  v46 = *(v45 + 2);
  v133 = v44;
  v117 = v35;
  v46(&v39[v44], v3 + v43, v35);
  v138 = v10;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v10);
  v48 = MEMORY[0x1E697E5D8];
  if (EnumTagSinglePayload == 1)
  {
    v49 = v124;
    sub_1A35EFF6C(v125, v124);
    WitnessTable = swift_getWitnessTable();
    v51 = v48;
    v52 = WitnessTable;
    v157 = WitnessTable;
    v158 = v51;
    v155 = swift_getWitnessTable();
    v156 = v52;
    v128 = MEMORY[0x1E697F968];
    v53 = v134;
    v54 = swift_getWitnessTable();
    v55 = v136;
    sub_1A35B561C(v49, v53, v136);
    v138 = *(v126 + 8);
    v138(v49, v53);
    sub_1A35B561C(v55, v53, v49);
    v56 = swift_getWitnessTable();
    v153 = v54;
    v154 = v56;
    v57 = swift_getWitnessTable();
    v137 = v45;
    v58 = v122;
    sub_1A35BB184();
    v151 = v54;
    v152 = v57;
    v59 = v143;
    v128 = swift_getWitnessTable();
    v60 = swift_getWitnessTable();
    v149 = v54;
    v150 = v60;
    v61 = swift_getWitnessTable();
    v62 = swift_getWitnessTable();
    v147 = v61;
    v148 = v62;
    swift_getWitnessTable();
    sub_1A35BB184();
    (*(v123 + 8))(v58, v59);
    v63 = v138;
    v138(v124, v53);
    v63(v136, v53);
    (*(v137 + 1))(&v39[v133], v117);
  }

  else
  {
    v64 = v125;
    v65 = v136;
    v66 = __swift_getEnumTagSinglePayload(&v39[v133], 1, v127);
    (*(v128 + 32))(v137, v39, v138);
    if (v66 == 1)
    {
      sub_1A35EFF6C(v64, v65);
      v67 = swift_getWitnessTable();
      v169 = v67;
      v170 = v48;
      v167 = swift_getWitnessTable();
      v168 = v67;
      v133 = MEMORY[0x1E697F968];
      v68 = v134;
      v69 = swift_getWitnessTable();
      sub_1A362220C();
      v70 = v109;
      sub_1A362242C();
      (*(v126 + 8))(v65, v68);
      v71 = swift_getWitnessTable();
      v165 = v69;
      v166 = v71;
      v72 = v139;
      v73 = swift_getWitnessTable();
      v74 = v118;
      sub_1A35B561C(v70, v72, v118);
      v136 = *(v110 + 8);
      (v136)(v70, v72);
      sub_1A35B561C(v74, v72, v70);
      v75 = v122;
      sub_1A35B04C8();
      v163 = v69;
      v164 = v73;
      v76 = v143;
      v133 = swift_getWitnessTable();
      v77 = swift_getWitnessTable();
      v161 = v69;
      v162 = v77;
      v78 = swift_getWitnessTable();
      v79 = swift_getWitnessTable();
      v159 = v78;
      v160 = v79;
      swift_getWitnessTable();
      sub_1A35BB184();
      (*(v123 + 8))(v75, v76);
      v80 = v136;
      (v136)(v70, v72);
      v80(v118, v72);
    }

    else
    {
      (*(v120 + 32))(v119, &v39[v133], v127);
      v81 = v65;
      sub_1A35EFF6C(v64, v65);
      v82 = swift_getWitnessTable();
      v195 = v82;
      v196 = MEMORY[0x1E697E5D8];
      v125 = MEMORY[0x1E697E858];
      v193 = swift_getWitnessTable();
      v194 = v82;
      v133 = MEMORY[0x1E697F968];
      v83 = v134;
      v84 = swift_getWitnessTable();
      v85 = v111;
      sub_1A362267C();
      (*(v126 + 8))(v81, v83);
      v86 = swift_getWitnessTable();
      v191 = v84;
      v192 = v86;
      v87 = v140;
      v88 = swift_getWitnessTable();
      v89 = v115;
      sub_1A362243C();
      (*(v112 + 8))(v85, v87);
      v90 = swift_getWitnessTable();
      v189 = v88;
      v190 = v90;
      v91 = v131;
      swift_getWitnessTable();
      v92 = v114;
      sub_1A35B561C(v89, v91, v114);
      v93 = *(v116 + 8);
      v93(v89, v91);
      sub_1A35B561C(v92, v91, v89);
      v94 = swift_getWitnessTable();
      v187 = v84;
      v188 = v94;
      v95 = swift_getWitnessTable();
      v185 = v84;
      v186 = v95;
      swift_getWitnessTable();
      sub_1A35B04C8();
      v93(v89, v91);
      v93(v92, v91);
      (*(v120 + 8))(v119, v127);
    }

    (*(v128 + 8))(v137, v138);
  }

  v96 = swift_getWitnessTable();
  v183 = v96;
  v184 = MEMORY[0x1E697E5D8];
  v181 = swift_getWitnessTable();
  v182 = v96;
  v97 = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v179 = v97;
  v180 = v98;
  v99 = swift_getWitnessTable();
  v177 = v97;
  v178 = v99;
  v100 = swift_getWitnessTable();
  v101 = swift_getWitnessTable();
  v175 = v97;
  v176 = v101;
  v102 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  v173 = v102;
  v174 = v103;
  v104 = swift_getWitnessTable();
  v171 = v100;
  v172 = v104;
  v105 = v130;
  swift_getWitnessTable();
  v106 = v142;
  sub_1A35B561C(v142, v105, v132);
  return (*(v129 + 8))(v106, v105);
}

uint64_t sub_1A35EFF6C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  swift_getWitnessTable();
  v4 = sub_1A3621FAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = sub_1A3621A6C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = sub_1A3621F2C();
  v30 = *(v18 - 8);
  v31 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  if (*v3 == 4)
  {
    WitnessTable = swift_getWitnessTable();
    sub_1A35B561C(v29, v4, v10);
    sub_1A35B561C(v10, v4, v7);
    v39 = WitnessTable;
    v40 = MEMORY[0x1E697E5D8];
    swift_getWitnessTable();
    sub_1A35B04C8();
    v23 = *(v5 + 8);
    v23(v7, v4);
    v23(v10, v4);
  }

  else
  {
    MEMORY[0x1A58F2900](v19);
    v24 = swift_getWitnessTable();
    sub_1A362261C();
    v33 = v24;
    v34 = MEMORY[0x1E697E5D8];
    swift_getWitnessTable();
    sub_1A35B561C(v14, v11, v17);
    v25 = *(v12 + 8);
    v25(v14, v11);
    sub_1A35B561C(v17, v11, v14);
    sub_1A35BB184();
    v25(v14, v11);
    v25(v17, v11);
  }

  v26 = swift_getWitnessTable();
  v37 = v26;
  v38 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = v26;
  v27 = v31;
  swift_getWitnessTable();
  sub_1A35B561C(v21, v27, v32);
  return (*(v30 + 8))(v21, v27);
}

double sub_1A35F040C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CGRect(0);
  sub_1A362189C();
  return v3;
}

uint64_t sub_1A35F04C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A35F0534(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_1A35F0574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 248) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A35F05F0()
{
  result = qword_1ED81E318;
  if (!qword_1ED81E318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE90, &qword_1A36284F8);
    sub_1A35A9B30(&qword_1ED81E2A8, &qword_1EB0EEE98, &qword_1A3628500, MEMORY[0x1E697FDF8]);
    sub_1A35A9B30(qword_1ED81E340, &qword_1EB0EEEA0, &qword_1A3628508, &unk_1A3628550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E318);
  }

  return result;
}

unint64_t sub_1A35F06D4()
{
  result = qword_1ED81E310;
  if (!qword_1ED81E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE60, &qword_1A36284C8);
    sub_1A35A9B30(&qword_1ED81E2A8, &qword_1EB0EEE98, &qword_1A3628500, MEMORY[0x1E697FDF8]);
    sub_1A35A9B30(&qword_1ED81E338, &qword_1EB0EEEA8, &qword_1A3628510, &unk_1A3628550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E310);
  }

  return result;
}

void sub_1A35F0860(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1A35F040C(a1, a2);
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

uint64_t sub_1A35F0894(double *a1, double *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v11;
  v13[2] = *(a3 + 32);
  v14 = *(a3 + 48);
  return sub_1A35F0458(v13, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1A35F0944(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0xFB)
  {
    v14 = 251;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v5 - 8) + 64);
  if (!v7)
  {
    ++v15;
  }

  v16 = *(v6 + 80);
  v17 = *(v10 + 80);
  v18 = *(*(v9 - 8) + 64);
  if (!v11)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v20 = v18 + ((v15 + v17 + ((v16 + 1) & ~v16)) & ~v17);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *&a1[v20];
      if (!v22)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v23 > 0xFF)
    {
      v22 = *&a1[v20];
      if (!*&a1[v20])
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v23 < 2)
    {
LABEL_36:
      if (v13 <= 0xFB)
      {
        v27 = *a1;
        v29 = v27 >= 4;
        v28 = v27 - 4;
        if (!v29)
        {
          v28 = -1;
        }

        v29 = v28 + 1 >= 2;
        goto LABEL_45;
      }

      v30 = &a1[v16 + 1] & ~v16;
      if (v8 == v14)
      {
        if (v7 < 2)
        {
          return 0;
        }
      }

      else
      {
        v30 = (v30 + v15 + v17) & ~v17;
        v7 = v11;
        v5 = v9;
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v7, v5);
      v28 = EnumTagSinglePayload - 1;
      v29 = EnumTagSinglePayload >= 2;
LABEL_45:
      if (v29)
      {
        return v28;
      }

      else
      {
        return 0;
      }
    }
  }

  v22 = a1[v20];
  if (!a1[v20])
  {
    goto LABEL_36;
  }

LABEL_26:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = v20;
    }

    else
    {
      v25 = 4;
    }

    switch(v25)
    {
      case 2:
        v26 = *a1;
        break;
      case 3:
        v26 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v26 = *a1;
        break;
      default:
        v26 = *a1;
        break;
    }
  }

  else
  {
    v26 = 0;
  }

  return v14 + (v26 | v24) + 1;
}

void sub_1A35F0BA4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a4 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v11 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v16 <= 0xFB)
  {
    v17 = 251;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v18;
  }

  v19 = *(v9 + 80);
  v20 = *(v13 + 80);
  v21 = (v18 + v20 + ((v19 + 1) & ~v19)) & ~v20;
  v22 = *(*(v12 - 8) + 64);
  if (!v14)
  {
    ++v22;
  }

  v23 = v21 + v22;
  v24 = 8 * (v21 + v22);
  v25 = a3 >= v17;
  v26 = a3 - v17;
  if (v26 != 0 && v25)
  {
    if (v23 <= 3)
    {
      v27 = ((v26 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v27))
      {
        v7 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v7 = v28;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (v17 >= a2)
  {
    switch(v7)
    {
      case 1:
        a1[v23] = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *&a1[v23] = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_58:
        __break(1u);
        return;
      case 4:
        *&a1[v23] = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v16 <= 0xFB)
        {
          *a1 = a2 + 4;
          return;
        }

        v32 = &a1[v19 + 1] & ~v19;
        if (v11 == v17)
        {
          if (v10 < 2)
          {
            return;
          }

          v33 = a2 + 1;
        }

        else
        {
          v32 = (v32 + v18 + v20) & ~v20;
          v33 = a2 + 1;
          v10 = v14;
          v8 = v12;
        }

        __swift_storeEnumTagSinglePayload(v32, v33, v10, v8);
        break;
    }
  }

  else
  {
    v29 = ~v17 + a2;
    if (v23 < 4)
    {
      v30 = (v29 >> v24) + 1;
      if (v23)
      {
        v31 = v29 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v23 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v29;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v29;
      v30 = 1;
    }

    switch(v7)
    {
      case 1:
        a1[v23] = v30;
        break;
      case 2:
        *&a1[v23] = v30;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v23] = v30;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1A35F0EEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 32))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 17);
      if (v3 <= 4)
      {
        v4 = 4;
      }

      else
      {
        v4 = *(a1 + 17);
      }

      v5 = v4 - 5;
      if (v3 < 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A35F0F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1A35F0F80()
{
  result = qword_1EB0EEEC8;
  if (!qword_1EB0EEEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEED0, &qword_1A36285C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEEC8);
  }

  return result;
}

uint64_t sub_1A35F0FE4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, uint64_t a7, uint64_t a8, __int16 a9, _BYTE *a10)
{
  v16 = HIBYTE(a9);
  CGRectGetMinX(*&a2);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMinY(v30);
  sub_1A362236C();
  if (v16 == 4)
  {
    sub_1A35DE188(1, a2, a3, a4, a5, a6);
  }

  else
  {
    v17 = sub_1A362228C();
    if (v17 == sub_1A362228C())
    {
      switch(*a10)
      {
        case 1:
          sub_1A35F1900(v18, v19);
          break;
        case 2:
          sub_1A35F19A8(v18, v19);
          break;
        case 3:
          sub_1A35F1A50(v18, v19);
          break;
        default:
          sub_1A35F1858(v18, v19);
          break;
      }
    }

    sub_1A35DE188(1, a2, a3, a4, a5, a6);
    v20 = sub_1A362228C();
    if (v20 == sub_1A362228C())
    {
      switch(*a10)
      {
        case 1:
          sub_1A35F1900(v21, v22);
          break;
        case 2:
          sub_1A35F19A8(v21, v22);
          break;
        case 3:
          sub_1A35F1A50(v21, v22);
          break;
        default:
          sub_1A35F1858(v21, v22);
          break;
      }
    }
  }

  sub_1A35DE188(3, a2, a3, a4, a5, a6);
  if (v16 == 4)
  {
    sub_1A35DE188(2, a2, a3, a4, a5, a6);
  }

  else
  {
    v23 = sub_1A362228C();
    if (v23 == sub_1A362228C())
    {
      switch(*a10)
      {
        case 1:
          sub_1A35F1900(v24, v25);
          break;
        case 2:
          sub_1A35F19A8(v24, v25);
          break;
        case 3:
          sub_1A35F1A50(v24, v25);
          break;
        default:
          sub_1A35F1858(v24, v25);
          break;
      }
    }

    sub_1A35DE188(2, a2, a3, a4, a5, a6);
    v26 = sub_1A362228C();
    if (v26 == sub_1A362228C())
    {
      switch(*a10)
      {
        case 1:
          sub_1A35F1900(v27, v28);
          break;
        case 2:
          sub_1A35F19A8(v27, v28);
          break;
        case 3:
          sub_1A35F1A50(v27, v28);
          break;
        default:
          sub_1A35F1858(v27, v28);
          break;
      }
    }
  }

  return sub_1A35DE188(0, a2, a3, a4, a5, a6);
}

void (*sub_1A35F137C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1A36216BC();
  return sub_1A35CD674;
}

uint64_t sub_1A35F13F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A35F1530();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1A35F1454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A35F1530();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1A35F14B8(uint64_t a1)
{
  v2 = sub_1A35F1530();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1A35F1530()
{
  result = qword_1EB0EEED8[0];
  if (!qword_1EB0EEED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB0EEED8);
  }

  return result;
}

uint64_t sub_1A35F1858(__n128 a1, __n128 a2)
{
  OUTLINED_FUNCTION_2_16(a1, a2);
  OUTLINED_FUNCTION_5_10();
  if (v5)
  {
    v11 = v10.n128_f64[0];
  }

  else
  {
    v11 = 1.5;
  }

  if (v5)
  {
    v12 = 1.5;
  }

  else
  {
    v12 = v10.n128_f64[0];
  }

  v6.n128_f64[0] = v3 + 2.5;
  v7.n128_f64[0] = v4 + -2.0;
  v8.n128_f64[0] = v3 + v11;
  v9.n128_f64[0] = v4 - v12;
  if (v5)
  {
    v13 = v10.n128_f64[0];
  }

  else
  {
    v13 = 0.0;
  }

  if (v5)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10.n128_f64[0];
  }

  OUTLINED_FUNCTION_7_7(v6, v7, v8, v9, v10);
  sub_1A362237C();
  v15.n128_f64[0] = OUTLINED_FUNCTION_10_5();
  v17.n128_f64[0] = v16 - v13;
  v19.n128_f64[0] = v18 - v14;
  OUTLINED_FUNCTION_7_7(v15, v20, v17, v19, v21);
  v22 = *(v2 + 72);
  v23 = *(v2 + 80);
  sub_1A362237C();
  v24.n128_f64[0] = v22 - v11;
  v25.n128_f64[0] = v23 - v12;
  return OUTLINED_FUNCTION_4_12(v26, v27, v24, v25, v28);
}

uint64_t sub_1A35F1900(__n128 a1, __n128 a2)
{
  OUTLINED_FUNCTION_2_16(a1, a2);
  OUTLINED_FUNCTION_5_10();
  if (v5)
  {
    v11 = v10.n128_f64[0];
  }

  else
  {
    v11 = 1.5;
  }

  if (v5)
  {
    v12 = 1.5;
  }

  else
  {
    v12 = v10.n128_f64[0];
  }

  v6.n128_f64[0] = v3 + -2.5;
  v7.n128_f64[0] = v4 + 2.0;
  v8.n128_f64[0] = v3 - v11;
  v9.n128_f64[0] = v4 + v12;
  if (v5)
  {
    v13 = v10.n128_f64[0];
  }

  else
  {
    v13 = 0.0;
  }

  if (v5)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10.n128_f64[0];
  }

  OUTLINED_FUNCTION_7_7(v6, v7, v8, v9, v10);
  sub_1A362237C();
  v15.n128_f64[0] = OUTLINED_FUNCTION_10_5();
  v17.n128_f64[0] = v13 + v16;
  v19.n128_f64[0] = v14 + v18;
  OUTLINED_FUNCTION_7_7(v15, v20, v17, v19, v21);
  v22 = *(v2 + 72);
  v23 = *(v2 + 80);
  sub_1A362237C();
  v24.n128_f64[0] = v11 + v22;
  v25.n128_f64[0] = v12 + v23;
  return OUTLINED_FUNCTION_4_12(v26, v27, v24, v25, v28);
}

uint64_t sub_1A35F19A8(__n128 a1, __n128 a2)
{
  OUTLINED_FUNCTION_2_16(a1, a2);
  OUTLINED_FUNCTION_5_10();
  if (v5)
  {
    v11 = v10.n128_f64[0];
  }

  else
  {
    v11 = 1.5;
  }

  if (v5)
  {
    v12 = 1.5;
  }

  else
  {
    v12 = v10.n128_f64[0];
  }

  v6.n128_f64[0] = v3 + -2.0;
  v7.n128_f64[0] = v4 + -2.5;
  v8.n128_f64[0] = v3 - v11;
  v9.n128_f64[0] = v4 - v12;
  if (v5)
  {
    v13 = v10.n128_f64[0];
  }

  else
  {
    v13 = 0.0;
  }

  if (v5)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10.n128_f64[0];
  }

  OUTLINED_FUNCTION_7_7(v6, v7, v8, v9, v10);
  sub_1A362237C();
  v15.n128_f64[0] = OUTLINED_FUNCTION_10_5();
  v17.n128_f64[0] = v16 - v13;
  v19.n128_f64[0] = v18 - v14;
  OUTLINED_FUNCTION_7_7(v15, v20, v17, v19, v21);
  v22 = *(v2 + 72);
  v23 = *(v2 + 80);
  sub_1A362237C();
  v24.n128_f64[0] = v22 - v11;
  v25.n128_f64[0] = v12 + v23;
  return OUTLINED_FUNCTION_4_12(v26, v27, v24, v25, v28);
}

uint64_t sub_1A35F1A50(__n128 a1, __n128 a2)
{
  OUTLINED_FUNCTION_2_16(a1, a2);
  OUTLINED_FUNCTION_5_10();
  if (v5)
  {
    v11 = v10.n128_f64[0];
  }

  else
  {
    v11 = 1.5;
  }

  if (v5)
  {
    v12 = 1.5;
  }

  else
  {
    v12 = v10.n128_f64[0];
  }

  v6.n128_f64[0] = v3 + 2.0;
  v7.n128_f64[0] = v4 + 2.5;
  v8.n128_f64[0] = v3 + v11;
  v9.n128_f64[0] = v4 + v12;
  if (v5)
  {
    v13 = v10.n128_f64[0];
  }

  else
  {
    v13 = 0.0;
  }

  if (v5)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10.n128_f64[0];
  }

  OUTLINED_FUNCTION_7_7(v6, v7, v8, v9, v10);
  sub_1A362237C();
  v15.n128_f64[0] = OUTLINED_FUNCTION_10_5();
  v17.n128_f64[0] = v13 + v16;
  v19.n128_f64[0] = v14 + v18;
  OUTLINED_FUNCTION_7_7(v15, v20, v17, v19, v21);
  v22 = *(v2 + 72);
  v23 = *(v2 + 80);
  sub_1A362237C();
  v24.n128_f64[0] = v11 + v22;
  v25.n128_f64[0] = v23 - v12;
  return OUTLINED_FUNCTION_4_12(v26, v27, v24, v25, v28);
}

void sub_1A35F1AF8(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D4>)
{
  v8 = a3;
  v10 = a5 + a5 + 13.0;
  if (a1 > 1u)
  {
    Height = CGRectGetHeight(*&a3);
  }

  else
  {
    Height = CGRectGetWidth(*&a3);
  }

  if (v10 >= Height)
  {
    v8 = 0.0;
    v15 = 1;
    a4 = 0.0;
    Width = 0.0;
    v16 = 0.0;
  }

  else
  {
    switch(v11)
    {
      case 1:
        v24.origin.x = OUTLINED_FUNCTION_0_25();
        Width = CGRectGetWidth(v24);
        v25.origin.x = OUTLINED_FUNCTION_0_25();
        v17 = CGRectGetHeight(v25);
        v15 = 0;
        v16 = v17 + -13.0;
        break;
      case 2:
        v20.origin.x = OUTLINED_FUNCTION_0_25();
        Width = CGRectGetWidth(v20) + -13.0;
        v21.origin.x = OUTLINED_FUNCTION_0_25();
        v16 = CGRectGetHeight(v21);
        v15 = 0;
        v8 = v8 + 13.0;
        break;
      case 3:
        v22.origin.x = OUTLINED_FUNCTION_0_25();
        Width = CGRectGetWidth(v22) + -13.0;
        v23.origin.x = OUTLINED_FUNCTION_0_25();
        v16 = CGRectGetHeight(v23);
        v15 = 0;
        break;
      default:
        v18.origin.x = OUTLINED_FUNCTION_0_25();
        Width = CGRectGetWidth(v18);
        v19.origin.x = OUTLINED_FUNCTION_0_25();
        v14 = CGRectGetHeight(v19);
        v15 = 0;
        v16 = v14 + -13.0;
        a4 = 13.0;
        break;
    }
  }

  *a2 = v8;
  *(a2 + 8) = a4;
  *(a2 + 16) = Width;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;
}

void sub_1A35F1C54(uint64_t a1)
{
  sub_1A35B36A0(319, &unk_1ED81EB48, type metadata accessor for CGPoint);
  if (v1 <= 0x3F)
  {
    sub_1A35B3600(319, &qword_1ED81E660);
    if (v2 <= 0x3F)
    {
      sub_1A35B3600(319, qword_1ED81EF18);
      if (v3 <= 0x3F)
      {
        sub_1A35B36A0(319, &qword_1ED81E688, MEMORY[0x1E697CC70]);
        if (v4 <= 0x3F)
        {
          sub_1A35B36F4(319);
          if (v5 <= 0x3F)
          {
            sub_1A35F1E08();
            if (v6 <= 0x3F)
            {
              sub_1A35E7C90(319);
              if (v7 <= 0x3F)
              {
                sub_1A35A83CC(319, qword_1ED81EED8, &qword_1EB0EED00, "Bo");
                if (v8 <= 0x3F)
                {
                  sub_1A35A83CC(319, &qword_1ED81EF10, &qword_1EB0EECF8, &unk_1A36286F0);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1A35F1E08()
{
  if (!qword_1ED81EA58)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED81EA58);
    }
  }
}

double sub_1A35F1E6C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipViewEnvironment(0) + 32);
  sub_1A35C428C(v1 + v3, v6);
  v4 = v7;
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v4 == 1)
  {
    sub_1A35C428C(v1 + v3, v6);
    sub_1A35A63BC(v6, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A35F1F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = a4 + *(type metadata accessor for TipAnchorViewModifier(0, a2, a3, a5) + 36);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  OUTLINED_FUNCTION_8_9();
  v10 = *(v9 + 32);

  return v10(a4, a1, a2);
}

uint64_t sub_1A35F1F8C(uint64_t a1)
{
  sub_1A3621CEC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = (v1 + *(a1 + 36));
  v5 = *v4;
  v6 = *(v4 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1A362303C();
    v7 = sub_1A36221DC();
    sub_1A362166C();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    v8 = OUTLINED_FUNCTION_10_6();
    v9(v8);
    return v11;
  }

  return v5;
}

uint64_t sub_1A35F20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v43 = a1;
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v48 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  sub_1A3621FAC();
  type metadata accessor for CGRect(255);
  v36[2] = v9;
  v10 = *(a2 + 16);
  v41 = *(a2 + 24);
  v42 = v10;
  type metadata accessor for TipAnchorViewModifier.AnchorKey(255, v10, v41, v11);
  OUTLINED_FUNCTION_4_13();
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1A362204C();
  v13 = sub_1A3621A6C();
  OUTLINED_FUNCTION_1();
  v47 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v36[0] = v36 - v16;
  v39 = sub_1A35F33CC();
  v36[1] = WitnessTable;
  v44 = sub_1A36220DC();
  v17 = sub_1A3621A6C();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v37 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v40 = v36 - v22;
  sub_1A36228DC();
  OUTLINED_FUNCTION_3_17();
  v23 = swift_getWitnessTable();
  sub_1A36224EC();

  v24 = v45;
  (*(v5 + 16))(v45, v49, a2);
  v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = swift_allocObject();
  v27 = v41;
  *(v26 + 16) = v42;
  *(v26 + 24) = v27;
  (*(v5 + 32))(v26 + v25, v24, a2);
  OUTLINED_FUNCTION_2_17();
  v28 = swift_getWitnessTable();
  v53 = v23;
  v54 = v28;
  v29 = swift_getWitnessTable();
  v30 = v37;
  v31 = v36[0];
  sub_1A362252C();

  (*(v47 + 8))(v31, v13);
  OUTLINED_FUNCTION_5_11();
  v32 = swift_getWitnessTable();
  v51 = v29;
  v52 = v32;
  swift_getWitnessTable();
  v33 = v40;
  sub_1A35B561C(v30, v17, v40);
  v34 = *(v46 + 8);
  v34(v30, v17);
  sub_1A35B561C(v33, v17, v50);
  return (v34)(v33, v17);
}

uint64_t sub_1A35F2518@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = a1;
  return result;
}

uint64_t sub_1A35F25B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v5 = type metadata accessor for TipAnchorViewModifier(0, a3, a4, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = *a1;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_1A3622E6C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  (*(v6 + 16))(v9, v22, v5);

  v15 = sub_1A3622E2C();
  v16 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  v19 = v23;
  v18 = v24;
  *(v17 + 3) = MEMORY[0x1E69E85E0];
  *(v17 + 4) = v19;
  *(v17 + 5) = v18;
  (*(v6 + 32))(&v17[v16], v9, v5);
  *&v17[(v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v13;
  sub_1A35D34A0(0, 0, v12, &unk_1A3628838, v17);
}

uint64_t sub_1A35F2828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1A3622E3C();
  v7[6] = sub_1A3622E2C();
  v9 = sub_1A3622DFC();

  return MEMORY[0x1EEE6DFA0](sub_1A35F28C4, v9, v8);
}

uint64_t sub_1A35F28C4()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[4];

  v4 = type metadata accessor for TipAnchorViewModifier(0, v2, v1, v3);
  sub_1A35F1F8C(v4);
  sub_1A362335C();

  sub_1A35F2984(v5, &v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A35F2984(uint64_t a1, uint64_t a2)
{
  sub_1A35F37C4(a2, v10);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_26();
  sub_1A35F3820(v5, v6, &unk_1A36287A8);

  sub_1A362161C();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_5();
  sub_1A362163C();

  swift_beginAccess();
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    sub_1A35F3A94(a1, v10, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v9;
  }

  else
  {
    sub_1A35F39AC(v10);
  }

  sub_1A35F07B8(v10);
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_5();
  sub_1A362162C();

  return sub_1A35F07B8(a2);
}

uint64_t sub_1A35F2AF8(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1A35F2B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35E3D84();
  *a1 = result;
  return result;
}

uint64_t sub_1A35F2BB0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_26();
  sub_1A35F3820(v0, v1, &unk_1A36287A8);
  sub_1A362161C();

  swift_beginAccess();
  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

uint64_t sub_1A35F2C84(uint64_t a1)
{
  swift_beginAccess();
  v3 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v4 = sub_1A35F3C20(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_1A35F2DD4(v7, sub_1A35F3E04, v8);
  }
}

uint64_t sub_1A35F2D6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

uint64_t sub_1A35F2E8C()
{

  v1 = OBJC_IVAR____TtC6TipKit14TipViewAnchors___observationRegistrar;
  v2 = sub_1A362165C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1A35F2F38(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A35F3318(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A35F2FC0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1A35F310C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v17 + 8) = 0;
              *v17 = (a2 - 255);
            }

            else
            {
              *(v17 + 8) = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1A35F3318(uint64_t a1)
{
  if (!qword_1EB0EEF60)
  {
    type metadata accessor for TipViewAnchors(255);
    v1 = sub_1A36217AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB0EEF60);
    }
  }
}

unint64_t sub_1A35F33CC()
{
  result = qword_1EB0EEF68;
  if (!qword_1EB0EEF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEF70, &qword_1A3628818);
    sub_1A35F3450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEF68);
  }

  return result;
}

unint64_t sub_1A35F3450()
{
  result = qword_1EB0EEF78;
  if (!qword_1EB0EEF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEF80, &unk_1A3628820);
    sub_1A35F3820(&qword_1ED81E298, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEF78);
  }

  return result;
}

uint64_t sub_1A35F3504(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for TipAnchorViewModifier(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1A35F25B8(a1, v9, v6, v7);
}

uint64_t sub_1A35F3590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for TipAnchorViewModifier(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1A35F36D0;

  return sub_1A35F2828(a1, v12, v13, v4 + v11, v14, v9, v8);
}

uint64_t sub_1A35F36D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A35F3820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A35F38A4(uint64_t a1)
{
  v2 = sub_1A362315C();

  return sub_1A35F38E8(a1, v2);
}

unint64_t sub_1A35F38E8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1A35F37C4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1A58F37F0](v8, a1);
    sub_1A35F07B8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1A35F39AC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A35F38A4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEF90, &qword_1A3628868);
  sub_1A362330C();
  sub_1A35F07B8(*(v8 + 48) + 40 * v5);
  v6 = *(*(v8 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEF80, &unk_1A3628820);
  sub_1A362331C();
  *v2 = v8;
  return v6;
}

unint64_t sub_1A35F3A94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A35F38A4(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEF90, &qword_1A3628868);
  if ((sub_1A362330C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1A35F38A4(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1A362347C();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {
    sub_1A35F37C4(a2, v16);
    return sub_1A35F3BC8(v10, v16, a1, v14);
  }
}

unint64_t sub_1A35F3BC8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1A35F3C20(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    sub_1A35F37C4(*(v2 + 48) + 40 * (v8 | (v3 << 6)), &v18);
    v16 = v18;
    v17 = v19;
    v11 = v20;
    v12 = *(&v19 + 1);

    if (!v12)
    {
      return 1;
    }

    v18 = v16;
    v19 = v17;
    v20 = v11;
    sub_1A35F38A4(&v18);
    v14 = v13;
    sub_1A35F07B8(&v18);
    if ((v14 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for CGRect(0);
    sub_1A35F3820(&qword_1ED81E298, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);

    v15 = sub_1A36228EC();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35F3E6C()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF098, &qword_1A3628AA0);
  sub_1A362289C();
  if (v4 == 0.0)
  {
    return 0;
  }

  sub_1A362289C();
  v3 = v4;
  if (v4 >= v1)
  {
    v3 = v1;
  }

  return *&v3;
}

uint64_t sub_1A35F3F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a1;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0D0, &qword_1A3628B58);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = v21 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF070, &qword_1A3628A78);
  MEMORY[0x1EEE9AC00](v23);
  v7 = v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF068, &qword_1A3628A70);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v21 - v8;
  sub_1A3622E3C();
  v21[2] = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v28 = v10;
  v21[0] = v11;
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF098, &qword_1A3628AA0);
  sub_1A36228BC();
  v12 = v30;
  v13 = v31;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 32) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF078, &qword_1A3628A80);
  sub_1A35A9B30(&qword_1ED81E2B0, &qword_1EB0EF078, &qword_1A3628A80, MEMORY[0x1E697FDF8]);
  sub_1A35F4CD0();
  v15 = v24;
  sub_1A362250C();

  v16 = *(a2 + 24);
  if (v16 == 1)
  {
    *&v30 = v10;
    *(&v30 + 1) = v21[0];
    sub_1A362289C();
  }

  sub_1A3622A2C();
  sub_1A362186C();
  (*(v25 + 32))(v7, v15, v26);
  v17 = &v7[*(v23 + 36)];
  v18 = v31;
  *v17 = v30;
  *(v17 + 1) = v18;
  *(v17 + 2) = v32;
  sub_1A35F4F48(v7, v9, &qword_1EB0EF070, &qword_1A3628A78);
  v19 = &v9[*(v22 + 36)];
  *v19 = 0;
  v19[1] = v16 ^ 1;
  sub_1A35F4F48(v9, v27, &qword_1EB0EF068, &qword_1A3628A70);
}

uint64_t sub_1A35F431C@<X0>(void *a1@<X8>)
{
  result = sub_1A362188C();
  *a1 = v3;
  return result;
}

double sub_1A35F4348@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0B8, &qword_1A3628B40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A36277E0;
  *(v4 + 32) = sub_1A362272C();
  *(v4 + 40) = sub_1A362274C();
  sub_1A3622A7C();
  MEMORY[0x1A58F3040](v4);
  sub_1A362198C();
  v14 = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF098, &qword_1A3628AA0);
  sub_1A362289C();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0C0, &qword_1A3628B48) + 36);
  v6 = *MEMORY[0x1E6981DC0];
  v7 = sub_1A3622A5C();
  (*(*(v7 - 8) + 104))(a2 + v5, v6, v7);
  *a2 = v11;
  *(a2 + 24) = v13;
  *(a2 + 8) = v12;
  *(a2 + 40) = v10;
  *(a2 + 48) = xmmword_1A3628950;
  sub_1A3622A2C();
  sub_1A362186C();

  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0C8, &qword_1A3628B50) + 36));
  *v8 = v14;
  v8[1] = v15;
  result = *&v16;
  v8[2] = v16;
  return result;
}

uint64_t sub_1A35F459C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF020, &qword_1A3628A28);
  sub_1A35F4D78();
  sub_1A35F4CD0();
  sub_1A36225CC();
}

uint64_t sub_1A35F46B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF028, &qword_1A3628A30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF020, &qword_1A3628A28);
  sub_1A35F4D78();
  sub_1A35F4CD0();
  swift_getOpaqueTypeConformance2();
  sub_1A36225CC();
}

void sub_1A35F4818(void *a1@<X8>)
{
  sub_1A36219CC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1A35F4878@<X0>(double *a2@<X8>)
{
  v3 = 0.0;
  result = sub_1A3622DBC();
  if (result)
  {
    result = sub_1A36219BC();
    v6 = 0.01;
    if (v5 > 0.01)
    {
      v6 = v5;
    }

    v7 = v6 / 10.0;
    if (v5 <= 10.0)
    {
      v3 = v7;
    }

    else
    {
      v3 = 1.0;
    }
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1A35F48DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF098, &qword_1A3628AA0);
  sub_1A362289C();
  sub_1A362289C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
  return sub_1A36228AC();
}

void sub_1A35F49B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1A35B8570(a1, a2);
  OUTLINED_FUNCTION_8_10(v3);
  *(a2 + 56) = OUTLINED_FUNCTION_12_4(v4, v5, v6, v7, v8, v9, v10, v11, v43, 0.0, v47);
  *(a2 + 64) = v12;
  OUTLINED_FUNCTION_8_10(v13);
  *(a2 + 72) = OUTLINED_FUNCTION_12_4(v14, v15, v16, v17, v18, v19, v20, v21, v44, 0.0, v48);
  *(a2 + 80) = v22;
  v23 = sub_1A362288C();
  *(a2 + 88) = LOBYTE(v49);
  *(a2 + 96) = v51;
  OUTLINED_FUNCTION_8_10(v23);
  *(a2 + 104) = OUTLINED_FUNCTION_12_4(v24, v25, v26, v27, v28, v29, v30, v31, v45, 0.01, v49);
  *(a2 + 112) = v32;
  OUTLINED_FUNCTION_8_10(v33);
  *(a2 + 120) = OUTLINED_FUNCTION_12_4(v34, v35, v36, v37, v38, v39, v40, v41, v46, 0.0, v50);
  *(a2 + 128) = v42;
}

uint64_t sub_1A35F4A70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1A35F4AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A35F4B34()
{
  result = qword_1ED81DDA0;
  if (!qword_1ED81DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF068, &qword_1A3628A70);
    sub_1A35F4BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDA0);
  }

  return result;
}

unint64_t sub_1A35F4BC0()
{
  result = qword_1ED81DDC0;
  if (!qword_1ED81DDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF070, &qword_1A3628A78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF078, &qword_1A3628A80);
    sub_1A35A9B30(&qword_1ED81E2B0, &qword_1EB0EF078, &qword_1A3628A80, MEMORY[0x1E697FDF8]);
    sub_1A35F4CD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDC0);
  }

  return result;
}

unint64_t sub_1A35F4CD0()
{
  result = qword_1ED81E5E0;
  if (!qword_1ED81E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E5E0);
  }

  return result;
}

unint64_t sub_1A35F4D78()
{
  result = qword_1ED81E048;
  if (!qword_1ED81E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF020, &qword_1A3628A28);
    sub_1A35A9B30(&qword_1ED81E1E0, &qword_1EB0EF0A0, &unk_1A3628B20, MEMORY[0x1E697BE60]);
    sub_1A35A9B30(&qword_1ED81E018, &qword_1EB0EF080, &qword_1A3628A88, MEMORY[0x1E697FB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E048);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A35F4F48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1A35F4FA8()
{
  result = qword_1ED81E028;
  if (!qword_1ED81E028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF0A8, &qword_1A3628B30);
    sub_1A35F5034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E028);
  }

  return result;
}

unint64_t sub_1A35F5034()
{
  result = qword_1ED81E030;
  if (!qword_1ED81E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF060, &qword_1A3628A68);
    sub_1A35F50C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E030);
  }

  return result;
}

unint64_t sub_1A35F50C0()
{
  result = qword_1ED81E040;
  if (!qword_1ED81E040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF058, &qword_1A3628A60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF048, &qword_1A3628A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF040, &qword_1A3628A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF038, &qword_1A3628A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF030, &qword_1A3628A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF028, &qword_1A3628A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF020, &qword_1A3628A28);
    sub_1A35F4D78();
    sub_1A35F4CD0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A35F52EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E040);
  }

  return result;
}

unint64_t sub_1A35F52EC()
{
  result = qword_1ED81E1F0;
  if (!qword_1ED81E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1F0);
  }

  return result;
}

uint64_t sub_1A35F535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  (*(v6 + 32))(v9 - v8);
  v11 = sub_1A35BDBDC(a2, a3);
  (*(v6 + 8))(v10, a2);
  return v11;
}

uint64_t sub_1A35F5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  (*(v18 + 32))(v21 - v20);
  (*(v12 + 32))(v16, a2, a4);
  v23 = sub_1A35BDBDC(a3, a5);
  sub_1A35BDBDC(a4, a6);
  (*(v12 + 8))(v16, a4);
  (*(v18 + 8))(v22, a3);
  return v23;
}

uint64_t sub_1A35F55DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_0();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_3_0();
  v30 = v29 - v28;
  (*(v26 + 32))(v29 - v28);
  (*(v20 + 32))(v24, a2, a6);
  (*(v14 + 32))(v18, a3, a5);
  v34 = sub_1A35BDBDC(a4, a7);
  sub_1A35BDBDC(a6, a9);
  sub_1A35BDBDC(a5, a8);
  (*(v14 + 8))(v18, a5);
  (*(v20 + 8))(v24, a6);
  (*(v26 + 8))(v30, a4);
  return v34;
}

uint64_t sub_1A35F5840(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A35F5880(uint64_t result, int a2, int a3)
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

uint64_t sub_1A35F58CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A35F590C(uint64_t result, int a2, int a3)
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

unint64_t sub_1A35F5988()
{
  result = qword_1ED81E1A8;
  if (!qword_1ED81E1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF0F0, &qword_1A3628DC0);
    sub_1A35A9B30(&qword_1ED81E108, &qword_1EB0EF118, &qword_1A3628DF0, MEMORY[0x1E697FDF8]);
    sub_1A35A9B30(&qword_1ED81E0F0, &qword_1EB0EF130, &qword_1A3628E08, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1A8);
  }

  return result;
}

unint64_t sub_1A35F5A6C()
{
  result = qword_1ED81E118;
  if (!qword_1ED81E118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF138, &unk_1A3628E10);
    sub_1A35BDEE4();
    sub_1A35BDF70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E118);
  }

  return result;
}

uint64_t sub_1A35F5B14()
{
  sub_1A35B5D48();

  return sub_1A3621CFC();
}

uint64_t sub_1A35F5B5C(void *a1)
{
  sub_1A35A6350(a1, v3);
  sub_1A35B5D48();
  sub_1A3621D0C();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A35F5BB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v6 + 16);
  v11(&v14 - v12, v3, a1, v10);
  if (swift_dynamicCast())
  {
    return v14;
  }

  (v11)(v8, v3, a1);
  return sub_1A35CB504(v8, a1, a2);
}

uint64_t sub_1A35F5D04@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MiniTipViewStyle(0);
  a1[4] = sub_1A35ADEFC();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v3 = sub_1A362178C();

  return __swift_storeEnumTagSinglePayload(boxed_opaque_existential_0, 1, 1, v3);
}

uint64_t sub_1A35F5D6C()
{
  sub_1A36211FC();
  sub_1A35F824C(&qword_1EB0EF168, MEMORY[0x1E69DA230], MEMORY[0x1E69DA240]);
  sub_1A3622CAC();
  sub_1A3622CAC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1A362345C();
  }

  return v1 & 1;
}

uint64_t sub_1A35F5E4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, unint64_t), uint64_t a6, uint64_t a7)
{
  v24 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v12 = *(a7 + 16);
  sub_1A35F81DC(a1, a2, a3 & 1);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v13 = 0;
  while (v12 != v13)
  {
    v14 = *(sub_1A36211EC() - 8);
    a5(&v17, &v21, a7 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v13);
    if (v7)
    {
      sub_1A35B72C8(v11, v10, v9 & 1);

      return v11;
    }

    ++v13;
    sub_1A35B72C8(v11, v10, v9 & 1);

    v11 = v17;
    v10 = v18;
    v9 = v19;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
  }

  return v11;
}

uint64_t sub_1A35F5FC8(void *a1, void *a2)
{
  v117 = sub_1A36211FC();
  OUTLINED_FUNCTION_3();
  v115 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0();
  v111 = v7 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF170, &qword_1A3628F28);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF178, &qword_1A3628F30);
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v112 = v12 - v13;
  OUTLINED_FUNCTION_23_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v111 - v15;
  OUTLINED_FUNCTION_23_2();
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF140, &unk_1A3628E90);
  v20 = OUTLINED_FUNCTION_14(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v113 = v21 - v22;
  OUTLINED_FUNCTION_23_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v111 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v111 - v27;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = (*(v29 + 24))(v28, v29);
  v32 = v31;
  LOBYTE(v29) = v33;
  sub_1A3622BCC();
  v34 = sub_1A36223BC();

  sub_1A35B72C8(v30, v32, v29 & 1);

  v121 = a2;
  if ((v34 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    v35 = a2;
    v36 = sub_1A362130C();

    if (v36)
    {

LABEL_5:
      v120 = 1;
      goto LABEL_7;
    }
  }

  v120 = 0;
LABEL_7:
  OUTLINED_FUNCTION_0_28();
  v37 = OUTLINED_FUNCTION_2_19();
  v39 = v38(v37);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1A3622BCC();
  if (v45)
  {
    LOBYTE(v122[0]) = v43 & 1;
    v46 = sub_1A36223BC();

    sub_1A35B8988(v39, v41, v43, v45);
    v47 = v16;
    if (v46)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v47 = v16;
  }

  OUTLINED_FUNCTION_0_28();
  v48 = OUTLINED_FUNCTION_2_19();
  v50 = v49(v48);
  if (v53)
  {
    sub_1A35B8988(v50, v51, v52, v53);
    v54 = 256;
    v55 = v121;
    goto LABEL_17;
  }

LABEL_13:
  v55 = v121;
  if (v121 && (v56 = v121, v57 = sub_1A362132C(), v56, v57))
  {

    v54 = 256;
  }

  else
  {
    v54 = 0;
  }

LABEL_17:
  OUTLINED_FUNCTION_0_28();
  v58 = OUTLINED_FUNCTION_2_19();
  if (!v59(v58))
  {
    if (v55)
    {
      v61 = v55;
      v66 = v118;
      sub_1A36212FC();

      v67 = sub_1A362122C();
      OUTLINED_FUNCTION_19_1(v66, 1, v67);
      if (!v70)
      {
        sub_1A35BAABC(v66, &qword_1EB0EF140, &unk_1A3628E90);
        v118 = 0x10000;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1A362122C();
      v66 = v118;
      OUTLINED_FUNCTION_9_0();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    }

    sub_1A35BAABC(v66, &qword_1EB0EF140, &unk_1A3628E90);
    v84 = OUTLINED_FUNCTION_11_2();
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v86 = OUTLINED_FUNCTION_17_3();
    sub_1A35BAA38(v86, v87, v88);
    if (v123)
    {
      __swift_project_boxed_opaque_existential_1(v122, v123);
      v89 = OUTLINED_FUNCTION_17_3();
      v91 = sub_1A35E570C(v89, v90);
      __swift_destroy_boxed_opaque_existential_1(v122);
      if (v91)
      {
        v60 = 0x10000;
      }

      else
      {
        v60 = 0;
      }

      if (v55)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1A35BAABC(v122, &qword_1EB0EEC00, &qword_1A3627218);
      v60 = 0;
      if (v55)
      {
        goto LABEL_19;
      }
    }

LABEL_44:
    sub_1A362122C();
    v65 = 1;
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    goto LABEL_45;
  }

  v60 = 0x10000;
  if (!v55)
  {
    goto LABEL_44;
  }

LABEL_19:
  v118 = v60;
  v61 = v55;
LABEL_20:
  v62 = v61;
  sub_1A36212FC();

  v63 = sub_1A362122C();
  OUTLINED_FUNCTION_19_1(v25, 1, v63);
  v64 = v119;
  if (!v70)
  {
    sub_1A35BAABC(v25, &qword_1EB0EF140, &unk_1A3628E90);
    v68 = v62;
    v69 = v113;
    sub_1A36212FC();

    OUTLINED_FUNCTION_19_1(v69, 1, v63);
    if (v70)
    {
      sub_1A35BAABC(v69, &qword_1EB0EF140, &unk_1A3628E90);
      v72 = 1;
    }

    else
    {
      sub_1A362121C();
      OUTLINED_FUNCTION_5_0();
      (*(v71 + 8))(v69, v63);
      v72 = 0;
    }

    v73 = v117;
    __swift_storeEnumTagSinglePayload(v64, v72, 1, v117);
    v74 = v115;
    (*(v115 + 104))(v47, *MEMORY[0x1E69DA228], v73);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v73);
    v75 = *(v114 + 48);
    v76 = v116;
    sub_1A35F81EC(v64, v116, &qword_1EB0EF178, &qword_1A3628F30);
    sub_1A35F81EC(v47, v76 + v75, &qword_1EB0EF178, &qword_1A3628F30);
    OUTLINED_FUNCTION_19_1(v76, 1, v73);
    if (v70)
    {
      OUTLINED_FUNCTION_29_1(v47);
      OUTLINED_FUNCTION_29_1(v64);
      OUTLINED_FUNCTION_19_1(v76 + v75, 1, v73);
      if (v70)
      {
        sub_1A35BAABC(v76, &qword_1EB0EF178, &qword_1A3628F30);
        v65 = 0;
        v77 = 1;
LABEL_50:
        v60 = v118;
        goto LABEL_51;
      }
    }

    else
    {
      v78 = v112;
      sub_1A35F81EC(v76, v112, &qword_1EB0EF178, &qword_1A3628F30);
      OUTLINED_FUNCTION_19_1(v76 + v75, 1, v73);
      if (!v79)
      {
        v99 = v111;
        (*(v74 + 32))(v111, v76 + v75, v73);
        sub_1A35F824C(&qword_1EB0EF180, MEMORY[0x1E69DA230], MEMORY[0x1E69DA238]);
        OUTLINED_FUNCTION_17_3();
        v100 = v54;
        v101 = v64;
        v77 = sub_1A3622B4C();
        v102 = *(v74 + 8);
        v102(v99, v73);
        sub_1A35BAABC(v47, &qword_1EB0EF178, &qword_1A3628F30);
        v103 = v101;
        v54 = v100;
        sub_1A35BAABC(v103, &qword_1EB0EF178, &qword_1A3628F30);
        v102(v112, v73);
        sub_1A35BAABC(v76, &qword_1EB0EF178, &qword_1A3628F30);
        v65 = 0;
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_29_1(v47);
      OUTLINED_FUNCTION_29_1(v64);
      (*(v74 + 8))(v78, v73);
    }

    sub_1A35BAABC(v76, &qword_1EB0EF170, &qword_1A3628F28);
    v65 = 0;
    v77 = 0;
    goto LABEL_50;
  }

  v65 = 0;
  v60 = v118;
LABEL_45:
  sub_1A35BAABC(v25, &qword_1EB0EF140, &unk_1A3628E90);
  OUTLINED_FUNCTION_0_28();
  v96 = OUTLINED_FUNCTION_2_19();
  v98 = v97(v96);
  if (v98)
  {
    v77 = sub_1A35FBF88(v98);
  }

  else
  {
    v77 = 0;
  }

LABEL_51:
  OUTLINED_FUNCTION_0_28();
  v104 = OUTLINED_FUNCTION_2_19();
  v106 = *(v105(v104) + 16);

  if (v106)
  {

LABEL_53:
    v107 = 0x100000000;
    goto LABEL_58;
  }

  if (v65)
  {
    v107 = 0;
  }

  else
  {
    v108 = v121;
    v107 = sub_1A362131C();

    if (v107)
    {

      goto LABEL_53;
    }
  }

LABEL_58:
  __swift_destroy_boxed_opaque_existential_1(a1);
  v109 = 0x1000000;
  if ((v77 & 1) == 0)
  {
    v109 = 0;
  }

  return v54 | v120 | v60 | v109 | v107;
}

uint64_t sub_1A35F6958(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBD0, "XY");
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v32 - v5;
  v35 = sub_1A362141C();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0, &unk_1A3628EC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[6];
  v16 = a1[7];
  v15(v10);
  v17 = *(v1 + 48);
  if (v17)
  {
    v36 = v13;
    v37 = v14;
    v18 = *(a1 + 2);
    v38 = *(a1 + 1);
    v39 = v18;
    v40 = v15;
    v41 = v16;
    v17(&v36);
  }

  v34 = v13;
  v19 = type metadata accessor for TipViewStyleConfiguration(0);
  sub_1A35F81EC(v1 + *(v19 + 44), v12, &qword_1EB0EE3D0, &unk_1A3628EC0);
  v20 = type metadata accessor for TipViewEnvironment(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) == 1)
  {
    sub_1A35BAABC(v12, &qword_1EB0EE3D0, &unk_1A3628EC0);
  }

  else
  {
    v21 = &v12[*(v20 + 48)];
    v22 = *v21;
    v23 = v21[1];
    sub_1A35B5EA0(*v21, v23);
    sub_1A35B4EC4(v12);
    if (v22)
    {
      v36 = v34;
      v37 = v14;
      v24 = *(a1 + 2);
      v38 = *(a1 + 1);
      v39 = v24;
      v40 = v15;
      v41 = v16;
      v22(v2, &v36);
      sub_1A35BBDF4(v22, v23);
    }
  }

  sub_1A362142C();
  v25 = sub_1A36213DC();
  v26 = *(v6 + 8);
  v27 = v35;
  result = v26(v8, v35);
  if (v25)
  {
    sub_1A362142C();
    v29 = sub_1A36213CC();
    result = v26(v8, v27);
    if (v29)
    {
      v30 = sub_1A3620CEC();
      v31 = v33;
      __swift_storeEnumTagSinglePayload(v33, 1, 1, v30);
      sub_1A362123C();
      return sub_1A35BAABC(v31, &qword_1EB0EEBD0, "XY");
    }
  }

  return result;
}

uint64_t sub_1A35F6C74()
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0x203A646928706954, 0xE800000000000000);
  v0 = sub_1A362134C();
  MEMORY[0x1A58F3290](v0);

  MEMORY[0x1A58F3290](0xD000000000000042, 0x80000001A36395D0);
  return 0;
}

uint64_t sub_1A35F6D1C()
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0x203A646928706954, 0xE800000000000000);
  v0 = sub_1A362134C();
  MEMORY[0x1A58F3290](v0);

  MEMORY[0x1A58F3290](0xD000000000000042, 0x80000001A3639580);
  return 0;
}

uint64_t sub_1A35F6DE0()
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0x203A646928706954, 0xE800000000000000);
  v0 = sub_1A362134C();
  MEMORY[0x1A58F3290](v0);

  MEMORY[0x1A58F3290](0xD000000000000046, 0x80000001A3639530);
  return 0;
}

uint64_t sub_1A35F6E88()
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0x203A646928706954, 0xE800000000000000);
  v0 = sub_1A362134C();
  MEMORY[0x1A58F3290](v0);

  MEMORY[0x1A58F3290](0xD000000000000044, 0x80000001A36394E0);
  return 0;
}

uint64_t sub_1A35F6F30(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v5[0] = *a2;
  v5[1] = v2;
  v3 = a2[3];
  v5[2] = a2[2];
  v5[3] = v3;
  return sub_1A35F6958(v5);
}

void (*TipViewStyleConfiguration.dismissalAction.getter())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v1 = type metadata accessor for TipViewStyleConfiguration(0);
  v2 = OUTLINED_FUNCTION_10_8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A35B63C8(v0, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1A35B7340(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  return sub_1A35F751C;
}

void sub_1A35F7054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30_1();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v22 = sub_1A362141C();
  OUTLINED_FUNCTION_3();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_0();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0, &unk_1A3628EC0);
  v30 = OUTLINED_FUNCTION_14(v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = type metadata accessor for TipViewStyleConfiguration(0);
  sub_1A35F81EC(v21 + *(v33 + 44), v32, &qword_1EB0EE3D0, &unk_1A3628EC0);
  v34 = type metadata accessor for TipViewEnvironment(0);
  OUTLINED_FUNCTION_19_1(v32, 1, v34);
  if (v35)
  {
    sub_1A35BAABC(v32, &qword_1EB0EE3D0, &unk_1A3628EC0);
  }

  else
  {
    v36 = &v32[*(v34 + 52)];
    v37 = *v36;
    v38 = v36[1];
    sub_1A35B5EA0(*v36, v38);
    sub_1A35B4EC4(v32);
    if (v37)
    {
      v37(v21);
      sub_1A35BBDF4(v37, v38);
      goto LABEL_8;
    }
  }

  sub_1A362142C();
  v39 = sub_1A36213CC();
  (*(v24 + 8))(v28, v22);
  if (v39)
  {
    sub_1A36210EC();
  }

LABEL_8:
  OUTLINED_FUNCTION_31_1();
}

uint64_t sub_1A35F7220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v34 = a3;
  v6 = type metadata accessor for TipViewStyleConfiguration(0);
  v33 = *(v6 - 8);
  v32 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A362127C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v31 = &v30 - v16;
  v17 = *(v9 + 16);
  v17(v15);
  (v17)(v13, a2, v8);
  sub_1A35B63C8(v34, v37);
  v18 = *(v9 + 80);
  v19 = (v18 + 16) & ~v18;
  v34 = v19 + v10;
  v30 = v18 | 7;
  v20 = (v19 + v10 + *(v33 + 80)) & ~*(v33 + 80);
  v21 = (v32 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = *(v9 + 32);
  v23(v22 + v19, v13, v8);
  sub_1A35B7340(v37, v22 + v20);
  v24 = v36;
  *(v22 + v21) = v36;
  v25 = v31;
  *a4 = sub_1A362124C();
  *(a4 + 8) = v26;
  *(a4 + 16) = v24;
  *(a4 + 24) = 0;
  *(a4 + 48) = sub_1A35F7FAC;
  *(a4 + 56) = v22;
  v27 = v35;
  v23(v35, v25, v8);
  v28 = swift_allocObject();
  result = (v23)(v28 + v19, v27, v8);
  *(a4 + 32) = sub_1A35F8088;
  *(a4 + 40) = v28;
  return result;
}

void sub_1A35F751C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_14(v19);
  v28 = v18 + ((*(v27 + 80) + 16) & ~*(v27 + 80));

  sub_1A35F7054(v28, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TipViewStyleConfiguration.ViewAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
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

uint64_t storeEnumTagSinglePayload for TipViewStyleConfiguration.ViewAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A35F7654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v46 = sub_1A362141C();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8, &qword_1A3624B28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_1A362190C();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBD0, "XY");
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = sub_1A3620CEC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  sub_1A362125C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1A35BAABC(v17, &qword_1EB0EEBD0, "XY");
    v22 = a2;
LABEL_5:
    v24 = sub_1A362124C();
    v55 = 0;
    *&v51 = v24;
    *(&v51 + 1) = v25;
    *&v52 = v49;
    BYTE8(v52) = 0;
    *&v53 = sub_1A35E4AE4;
    *(&v53 + 1) = 0;
    *&v54 = nullsub_1;
    *(&v54 + 1) = 0;
    sub_1A35F6958(&v51);
    v56[0] = v51;
    v56[1] = v52;
    v56[2] = v53;
    v56[3] = v54;
    v26 = sub_1A35F80E4(v56);
    MEMORY[0x1EEE9AC00](v26);
    *(&v43 - 2) = v22;
    MEMORY[0x1EEE9AC00](v27);
    *(&v43 - 2) = sub_1A35F8138;
    *(&v43 - 1) = v28;
    v29 = sub_1A362159C();
    sub_1A36215AC();
    return v29(&v51, 0);
  }

  (*(v19 + 32))(v21, v17, v18);
  v23 = type metadata accessor for TipViewStyleConfiguration(0);
  sub_1A35F81EC(a2 + *(v23 + 36), v9, &qword_1EB0EE3D8, &qword_1A3624B28);
  v22 = a2;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1A35BAABC(v9, &qword_1EB0EE3D8, &qword_1A3624B28);
    (*(v19 + 8))(v21, v18);
    goto LABEL_5;
  }

  v31 = v10;
  v32 = *(v48 + 32);
  v33 = v47;
  v44 = v31;
  v32(v47, v9);
  v34 = sub_1A3622E3C();
  MEMORY[0x1EEE9AC00](v34);
  *(&v43 - 2) = v33;
  *(&v43 - 1) = v21;
  sub_1A360F750(sub_1A35F8140, (&v43 - 4), "TipKit/TipViewStyleConfiguration.swift", 38, 2u, 182);
  v49 = a2;
  sub_1A362142C();
  v35 = sub_1A36213DC();
  v36 = *(v45 + 8);
  v37 = v46;
  v38 = v36(v6, v46);
  if (v35)
  {
    sub_1A362142C();
    v39 = sub_1A36213CC();
    v38 = v36(v6, v37);
    if (v39)
    {
      sub_1A362124C();
      (*(v19 + 16))(v14, v21, v18);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v18);
      sub_1A362123C();

      v38 = sub_1A35BAABC(v14, &qword_1EB0EEBD0, "XY");
    }
  }

  MEMORY[0x1EEE9AC00](v38);
  *(&v43 - 2) = v49;
  *(&v43 - 1) = v21;
  MEMORY[0x1EEE9AC00](v40);
  *(&v43 - 2) = sub_1A35F815C;
  *(&v43 - 1) = v41;
  v42 = sub_1A362159C();
  sub_1A36215AC();
  v42(v56, 0);
  (*(v48 + 8))(v47, v44);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_1A35F7D58(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A36218DC();
}

uint64_t sub_1A35F7E04()
{
  sub_1A36231BC();

  v0 = sub_1A362134C();
  MEMORY[0x1A58F3290](v0);

  MEMORY[0x1A58F3290](0xD000000000000023, 0x80000001A3639480);
  sub_1A3620CEC();
  sub_1A35F824C(&qword_1EB0EF160, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v1 = sub_1A362342C();
  MEMORY[0x1A58F3290](v1);

  return 0x203A646928706954;
}

uint64_t sub_1A35F7F10()
{
  sub_1A36231BC();

  v0 = sub_1A362134C();
  MEMORY[0x1A58F3290](v0);

  MEMORY[0x1A58F3290](0xD000000000000025, 0x80000001A36394B0);
  return 0x203A646928706954;
}

uint64_t sub_1A35F7FAC()
{
  v1 = sub_1A362127C();
  OUTLINED_FUNCTION_10_8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_10_8(v4);
  OUTLINED_FUNCTION_25_1();
  v7 = *(v0 + v6);

  return sub_1A35F7654(v0 + v3, v0 + v5, v7);
}

uint64_t sub_1A35F8088()
{
  v0 = sub_1A362127C();
  OUTLINED_FUNCTION_14(v0);

  return sub_1A35E4A98();
}

uint64_t sub_1A35F8164()
{
  v1 = type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_10_8(v1);
  OUTLINED_FUNCTION_25_1();

  return sub_1A35F6F30(v0 + v2, (v0 + v3));
}

uint64_t sub_1A35F81DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  }
}

uint64_t sub_1A35F81EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_11_2();
  v6(v5);
  return a2;
}

uint64_t sub_1A35F824C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A35F82E0()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_1A35F833C()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_1A35F8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1A35D3EE0(a3, v21 - v9);
  v11 = sub_1A3622E6C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1A35A2564(v10);
  }

  else
  {
    sub_1A3622E5C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1A3622DFC();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1A3622BEC() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1A35A2564(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A35A2564(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t static Tips.configure(_:)()
{
  OUTLINED_FUNCTION_2_4();
  *(v0 + 16) = v1;
  _s23ConfigurationOptionsSetVMa(0);
  *(v0 + 24) = swift_task_alloc();
  OUTLINED_FUNCTION_7_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1A35F8670()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(v0 + 24);
  v2 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35A22D8(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1A35F870C;
  v4 = OUTLINED_FUNCTION_8_11(*(v0 + 24));

  return sub_1A35A2D70(v4);
}

uint64_t sub_1A35F870C()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 40) = v0;

  sub_1A35A32D8(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_7_10();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_5_1();

    return v12();
  }
}

uint64_t sub_1A35F8860()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_1A35F88BC()
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0xD00000000000004FLL, 0x80000001A3639620);
  v0 = sub_1A3622BAC();
  MEMORY[0x1A58F3290](v0);

  MEMORY[0x1A58F3290](0xD000000000000018, 0x80000001A3639670);
  return 0;
}

uint64_t static Tips.ConfigurationOption.DisplayFrequency.immediate.getter@<X0>(uint64_t a2@<X8>)
{
  result = sub_1A36235BC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  return result;
}

uint64_t static Tips.ConfigurationOption.AnalyticsEngine.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A362345C();
  }
}

uint64_t static Tips.ConfigurationOption.cloudKitContainer(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1 & 1;
  if (v5 == 1)
  {
    LOBYTE(v6) = 0;
    v7 = 0;
  }

  else
  {
    v7 = a1[1];
  }

  if (v5 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1[2];
  }

  LOBYTE(v10) = v6;
  *(&v10 + 1) = v7;
  v11 = v8;
  v12 = &type metadata for Tips.ConfigurationOption.CloudKitContainer;
  *a2 = 1;
  sub_1A35A270C(&v10, (a2 + 8));
  return sub_1A35F8A58(v3, v4, v5);
}

uint64_t sub_1A35F8A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  }

  return result;
}

void static Tips.ConfigurationOption.CloudKitContainer.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static Tips.ConfigurationOption.CloudKitContainer.named(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

uint64_t static Tips.ConfigurationOption.CloudKitContainer.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
    if (!v6 && (sub_1A362345C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return 1;
}

uint64_t static Tips.ConfigurationOption.DatastoreLocation.groupContainer(identifier:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1A3620CEC();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A3620C8C();
  result = sub_1A3620C7C();
  if (!v3)
  {
    return (*(v7 + 32))(a3, v10, v5);
  }

  return result;
}

uint64_t static Tips.ConfigurationOption.DatastoreLocation.url(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3620CEC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t static Tips.ConfigurationOption.DisplayFrequency.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_1A36235AC() & ~(v2 ^ v3) & 1;
}

uint64_t sub_1A35F8D0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1A35F8D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s19ConfigurationOptionV16DisplayFrequencyVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

_BYTE *_s19ConfigurationOptionV3KeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1A35F8EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF188, &qword_1A36291B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Tips.resetDatastore()()
{
  sub_1A362158C();
  sub_1A362156C();
  v0 = sub_1A362155C();

  if (v0)
  {
    sub_1A35E7A98();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  else
  {
    v3 = sub_1A36214BC();
    sub_1A362148C();
    return v3(&v4, 0);
  }
}

uint64_t sub_1A35F9050(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
    sub_1A35F93D0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35F9110(void (*a1)(uint64_t))
{
  v2 = sub_1A36214BC();
  a1(1);
  return v2(&v4, 0);
}

uint64_t sub_1A35F91A0(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v6 = sub_1A36214DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A36214CC();
  v11 = a2(v10);
  (*(v7 + 8))(v9, v6);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1A35E4FD8(0, v12, 0);
    v13 = v24[0];
    v14 = a1 + 32;
    do
    {
      v15 = sub_1A3622BBC();
      v17 = v16;
      v24[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1A35E4FD8(v18 > 1, v19 + 1, 1);
        v13 = v24[0];
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v14 += 16;
      --v12;
    }

    while (v12);
  }

  v21 = sub_1A35F9050(v13, v11);
  v22 = sub_1A36214BC();
  a3(v21);
  return v22(v24, 0);
}

uint64_t sub_1A35F936C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1A3626820;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1A35F93D0(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1A36234CC();
  sub_1A3622BFC();
  v8 = sub_1A36234EC();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1A362345C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35F9778(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1A35F951C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF190, &unk_1A36291C0);
  result = sub_1A36231AC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1A35F936C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1A36234CC();
    sub_1A3622BFC();
    result = sub_1A36234EC();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1A35F9778(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1A35F951C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1A35F9A38(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1A36234CC();
      sub_1A3622BFC();
      result = sub_1A36234EC();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1A362345C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1A35F98E0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1A362346C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1A35F98E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF190, &unk_1A36291C0);
  v2 = *v0;
  v3 = sub_1A362319C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A35F9A38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF190, &unk_1A36291C0);
  result = sub_1A36231AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1A36234CC();
        _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
        sub_1A3622BFC();
        result = sub_1A36234EC();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_1A35F9C94(uint64_t a1)
{
  sub_1A35F9E34(319, &qword_1ED81EF10, &qword_1EB0EECF8, &unk_1A36286F0, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A35F9DDC(319);
    if (v2 <= 0x3F)
    {
      sub_1A35F9E34(319, &qword_1ED81E5F8, &qword_1EB0EEDC8, "x^", MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A35F9E34(319, &qword_1ED81E608, &qword_1EB0EEDD0, &qword_1A3628048, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A35F9DDC(uint64_t a1)
{
  if (!qword_1ED81E630)
  {
    sub_1A36216FC();
    v1 = sub_1A36217AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED81E630);
    }
  }
}

void sub_1A35F9E34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1A35F9E9C()
{
  result = qword_1EB0EF1A0;
  if (!qword_1EB0EF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF1A0);
  }

  return result;
}

uint64_t sub_1A35F9EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A3621CEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDC0, &qword_1A3629300);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AppearanceChangeMonitor(0);
  sub_1A35ABFF4(v1 + *(v10 + 28), v9, &qword_1EB0EEDC0, &qword_1A3629300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A36216FC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A362303C();
    v13 = sub_1A36221DC();
    sub_1A362166C();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A35FA0F8(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35FA1B0(a1, a2);
}

uint64_t sub_1A35FA1B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A36216FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35C22A8();
  result = sub_1A3622B4C();
  if ((result & 1) == 0)
  {
    v7 = *MEMORY[0x1E697BE38];
    v8 = *(v3 + 104);
    v8(v5, v7, v2);
    v9 = sub_1A36216EC();
    v10 = *(v3 + 8);
    v10(v5, v2);
    if (v9 & 1) != 0 || (v8(v5, v7, v2), v11 = sub_1A36216EC(), result = (v10)(v5, v2), (v11))
    {
      v8(v5, v7, v2);
      v12 = sub_1A36216EC();
      v10(v5, v2);
      if (v12)
      {
        v13 = (v20 + *(type metadata accessor for AppearanceChangeMonitor(0) + 36));
        v14 = *v13;
        v15 = *(v13 + 1);
        v22 = v14;
        v23 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1D0, &qword_1A3629318);
        sub_1A362289C();
        if (v21 != 2)
        {
          sub_1A35B4A7C();
        }
      }

      v8(v5, v7, v2);
      v16 = sub_1A3622B4C();
      result = (v10)(v5, v2);
      if ((v16 & 1) == 0)
      {
        v17 = (v20 + *(type metadata accessor for AppearanceChangeMonitor(0) + 36));
        v18 = *v17;
        v19 = *(v17 + 1);
        v22 = v18;
        v23 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1D0, &qword_1A3629318);
        result = sub_1A362289C();
        if (!v21)
        {
          return sub_1A35FA470(1u);
        }
      }
    }
  }

  return result;
}

void *sub_1A35FA470(unsigned __int8 a1)
{
  v2 = a1;
  type metadata accessor for AppearanceChangeMonitor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1D0, &qword_1A3629318);
  result = sub_1A362289C();
  if (LOBYTE(v8) == 3 || LOBYTE(v8) != v2)
  {
    result = sub_1A362289C();
    if (LOBYTE(v8) != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1D8, &qword_1A3629320);
      sub_1A362289C();
      if ((v9 & 1) == 0)
      {
        sub_1A362289C();
        if (!LOBYTE(v8))
        {
          if (*(v1 + 24))
          {
            v5 = *(v1 + 24);
            v6 = sub_1A3622F8C();
            v5(v6, v7 - v8);
          }
        }
      }

      sub_1A36228AC();
      return sub_1A36228AC();
    }
  }

  return result;
}

uint64_t sub_1A35FA614()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_2_21("TipKit/View+AppearanceChange.swift");
  }

  sub_1A35FA470(2u);
}

uint64_t sub_1A35FA734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1A8, &qword_1A36292E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35FA79C()
{
  OUTLINED_FUNCTION_1_21();

  return sub_1A35FA0F8(v1, v0);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for AppearanceChangeMonitor(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 8))
  {
  }

  if (*(v5 + 24))
  {
  }

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDC0, &qword_1A3629300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A36216FC();
    OUTLINED_FUNCTION_0_0();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_1A35FA984()
{
  result = qword_1ED81E128;
  if (!qword_1ED81E128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1E0, &qword_1A3629328);
    sub_1A35C21C0();
    sub_1A35C1FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E128);
  }

  return result;
}

uint64_t sub_1A35FAA10(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_31:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((v8 + result) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(result, v5, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
    v10 = a2 - v7;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

LABEL_27:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v7 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1A35FAB78(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(v6 - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v10 & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v12 = a3 - v9 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v9 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (a2)
        {
LABEL_37:
          if (v8 < 0x7FFFFFFF)
          {
            v21 = &a1[v10] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v21 + 8) = a2 & 0x7FFFFFFF;
              *(v21 + 16) = 0;
            }

            else
            {
              *(v21 + 8) = a2 - 1;
            }
          }

          else if (v8 >= a2)
          {
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
          }

          else
          {
            if (v10 <= 3)
            {
              v18 = ~(-1 << (8 * v10));
            }

            else
            {
              v18 = -1;
            }

            if (v10)
            {
              v19 = v18 & (~v8 + a2);
              if (v10 <= 3)
              {
                v20 = v10;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v10);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if ((v10 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if ((v10 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1A35FADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = v2[1];
  v23 = v2[2];
  v24 = v9;
  v10 = swift_allocObject();
  v11 = v2[1];
  *(v10 + 1) = *v2;
  *(v10 + 2) = v11;
  *(v10 + 3) = v2[2];
  v12 = swift_allocObject();
  v13 = v2[1];
  *(v12 + 1) = *v2;
  *(v12 + 2) = v13;
  *(v12 + 3) = v2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1E8, &qword_1A3629460);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1F0, &qword_1A3629468) + 36));
  *v15 = sub_1A35FB4A8;
  v15[1] = v10;
  v15[2] = sub_1A35FB514;
  v15[3] = v12;
  v16 = sub_1A3622E6C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  sub_1A3622E3C();

  sub_1A35FB5E8(&v24, v22, &qword_1EB0EEA38, &qword_1A3626698);
  sub_1A35FB5E8(&v23, v22, &qword_1EB0EEA38, &qword_1A3626698);

  sub_1A35FB5E8(&v24, v22, &qword_1EB0EEA38, &qword_1A3626698);
  sub_1A35FB5E8(&v23, v22, &qword_1EB0EEA38, &qword_1A3626698);

  sub_1A35FB5E8(&v24, v22, &qword_1EB0EEA38, &qword_1A3626698);
  sub_1A35FB5E8(&v23, v22, &qword_1EB0EEA38, &qword_1A3626698);
  v17 = sub_1A3622E2C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = v3[1];
  *(v18 + 32) = *v3;
  *(v18 + 48) = v20;
  *(v18 + 64) = v3[2];
  sub_1A35D34A0(0, 0, v8, &unk_1A3629480, v18);
}
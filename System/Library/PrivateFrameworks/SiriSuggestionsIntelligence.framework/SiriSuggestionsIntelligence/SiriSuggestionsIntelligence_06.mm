uint64_t sub_1DA40ED64()
{

  return v0;
}

uint64_t sub_1DA40ED94()
{
  sub_1DA40ED64();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1DA40EE2C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 16) = a1;
  v6 = sub_1DA40F050(a2);
  if (v3)
  {

    _s24ParameterizedProbabilityCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 24) = v6;

    sub_1DA3EE998();
    v7 = v22;
    sub_1DA3A8CA8(v21, &qword_1ECBAFAC8, &qword_1DA42A500);
    if (v7 && *(a1 + 16) == 1)
    {
      v8 = MEMORY[0x1E69E7CD0];
    }

    else
    {

      sub_1DA3BC49C(v9);
    }

    *(v4 + 32) = v8;
    OUTLINED_FUNCTION_30_1();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;

    v15 = 0;
    v16 = 0.0;
    while (v12)
    {
      v17 = v15;
LABEL_13:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1DA3A7ED4(*(a1 + 56) + 40 * (v18 | (v17 << 6)), v21);
      v19 = v22;
      v20 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = v16 + (*(v20 + 40))(v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        *(v4 + 40) = v16;
        return;
      }

      v12 = *(a1 + 64 + 8 * v17);
      ++v15;
      if (v12)
      {
        v15 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DA40F050(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    sub_1DA40F4D4();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = a1;
    *(v2 + 24) = 0;
    swift_willThrow();
  }

  return a1;
}

double sub_1DA40F0BC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1DA40C798(a1, a2, a3, a4 & 1);
  if (!v4)
  {
    v9 = v6;
    v10 = v7;
    v5 = v8;

    sub_1DA3EE998();

    if (v22)
    {
      sub_1DA3A1FF8(&v21, v23);
      v11 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v5 = (*(v12 + 24))(v11, v12, v5);

      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_1DA3A8CA8(&v21, &qword_1ECBAFAC8, &qword_1DA42A500);
      if (qword_1ECBAE838 != -1)
      {
        OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
      }

      v14 = sub_1DA421A94();
      __swift_project_value_buffer(v14, static Logger.inferenceCategory);

      v15 = sub_1DA421A74();
      v16 = sub_1DA421F74();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23[0] = v18;
        *v17 = 136315138;

        v19 = sub_1DA3A5FE8(v9, v10, v23);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_1DA39E000, v15, v16, "Unable to find a classification distribution for %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();
      }

      sub_1DA40F4D4();
      swift_allocError();
      *v20 = v9;
      *(v20 + 8) = v10;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0x80;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1DA40F300()
{

  return v0;
}

uint64_t sub_1DA40F328()
{
  sub_1DA40F300();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DA40F3CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1 / a2;
  return v2;
}

unint64_t sub_1DA40F42C()
{
  result = qword_1EE100860;
  if (!qword_1EE100860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100860);
  }

  return result;
}

unint64_t sub_1DA40F480()
{
  result = qword_1ECBAFAB8;
  if (!qword_1ECBAFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFAB8);
  }

  return result;
}

unint64_t sub_1DA40F4D4()
{
  result = qword_1ECBAFAD0;
  if (!qword_1ECBAFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFAD0);
  }

  return result;
}

uint64_t sub_1DA40F528(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1DA3B76EC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_18;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAF0, &unk_1DA42A520);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D71D8();
      v15 = sub_1DA3B76EC(v7, v6);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_21;
      }

      v11 = v15;
    }

    v17 = *a3;
    if (v14)
    {
      v18 = *(v17[7] + 8 * v11);

      if (__OFADD__(v18, v8))
      {
        goto LABEL_19;
      }

      *(v17[7] + 8 * v11) = v18 + v8;
    }

    else
    {
      v17[(v11 >> 6) + 8] |= 1 << v11;
      v19 = (v17[6] + 16 * v11);
      *v19 = v7;
      v19[1] = v6;
      *(v17[7] + 8 * v11) = v8;
      v20 = v17[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v17[2] = v22;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

void sub_1DA40F6F0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1DA3B76EC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAF0, &unk_1DA42A520);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D71D8();
      v15 = sub_1DA3B76EC(v7, v6);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v11 = v15;
    }

    v17 = *a3;
    if (v14)
    {
      break;
    }

    v17[(v11 >> 6) + 8] |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + 8 * v11) = v8;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v17[2] = v21;
LABEL_15:
    ++v4;
    a2 = 1;
  }

  if (*(v17[7] + 8 * v11) == v8)
  {

    *(v17[7] + 8 * v11) = v8;
    goto LABEL_15;
  }

  sub_1DA40F4D4();
  v22 = swift_allocError();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 1;
  *(v23 + 24) = -64;
  swift_willThrow();
  v24 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}

_BYTE *sub_1DA40F9F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1DA40FA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1DA422084();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

double sub_1DA40FB78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    v4 = vars8;
  }

  return result;
}

unint64_t sub_1DA40FC20()
{
  result = qword_1ECBAFAE0;
  if (!qword_1ECBAFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFAE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO17ProbabilityErrorsO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DA40FCA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 25))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DA40FCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DA40FD60(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    v2 = -64;
  }

  *(result + 24) = v2;
  return result;
}

_BYTE *_s12PosteriorKeyV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA40FE78()
{
  result = qword_1ECBAFB00;
  if (!qword_1ECBAFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB00);
  }

  return result;
}

unint64_t sub_1DA40FED0()
{
  result = qword_1ECBAFB08;
  if (!qword_1ECBAFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB08);
  }

  return result;
}

unint64_t sub_1DA40FF28()
{
  result = qword_1ECBAFB10;
  if (!qword_1ECBAFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB10);
  }

  return result;
}

uint64_t sub_1DA40FF7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA40FFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.FocusType.rawValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6D6F74737563;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 0x7065656C73;
      break;
    case 4:
      v3 = 1986622052;
      goto LABEL_13;
    case 5:
      result = 0x6573696372657865;
      break;
    case 6:
      result = 1802661751;
      break;
    case 7:
      result = 0x6C616E6F73726570;
      break;
    case 8:
      v3 = 1684104562;
LABEL_13:
      result = v3 | 0x676E6900000000;
      break;
    case 9:
      result = 0x676E696D6167;
      break;
    case 10:
      result = 0x6E6C7566646E696DLL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.FocusMode.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x7375636F466F6ELL;
  }

  v4 = a3;
  sub_1DA422094();

  v8 = SiriSuggestionsIntelligence.FocusModeDetails.description.getter(a1, a2, v4, *&a4);
  MEMORY[0x1DA74D370](v8);

  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t sub_1DA41025C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DA410304;

  return sub_1DA41D390();
}

uint64_t sub_1DA410304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_1DA410420()
{
  v0 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v1 = [v0 ComputedMode];
  swift_unknownObjectRelease();
  v2 = swift_allocObject();
  sub_1DA4104B8(v1);
  return v2;
}

uint64_t sub_1DA4104B8(uint64_t a1)
{
  v2 = v1;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBD0, &qword_1DA42AFA0);
  swift_allocObject();
  *(v2 + 16) = sub_1DA420960(a1, v5, sub_1DA410544, 0);
  return v2;
}

double sub_1DA410544@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
    v6 = sub_1DA411DB8(v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      if ([v5 starting])
      {
        v10 = [v5 semanticType];

        v11 = sub_1DA4105F8(v10);
        *a3 = v8;
        a3[1] = v9;
        a3[2] = v11;
        a3[3] = a1;
        return result;
      }
    }

    else
    {
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1DA4105F8(uint64_t result)
{
  if ((result - 1) >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t SiriSuggestionsIntelligence.FocusModeService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA410660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7375636F466F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F46657669746361 && a2 == 0xEB00000000737563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA41072C(char a1)
{
  if (a1)
  {
    return 0x6F46657669746361;
  }

  else
  {
    return 0x7375636F466F6ELL;
  }
}

uint64_t sub_1DA41076C(uint64_t a1)
{
  v2 = sub_1DA411BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4107A8(uint64_t a1)
{
  v2 = sub_1DA411BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA4107EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA410660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA410814(uint64_t a1)
{
  v2 = sub_1DA411B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA410850(uint64_t a1)
{
  v2 = sub_1DA411B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41088C(uint64_t a1)
{
  v2 = sub_1DA411C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4108C8(uint64_t a1)
{
  v2 = sub_1DA411C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.FocusMode.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a1 == a5 && a2 == a6;
      if (!v12 && (sub_1DA4223A4() & 1) == 0)
      {
        return 0;
      }

      v13 = *&a8;
      v14 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(a3);
      v16 = v15;
      v17 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(a7);
      if (v14 == v17 && v16 == v18)
      {
      }

      else
      {
        v20 = OUTLINED_FUNCTION_7_15(v17);

        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      return *&a4 == v13;
    }

    return 0;
  }

  return !a6;
}

BOOL static SiriSuggestionsIntelligence.FocusModeDetails.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v12 = a1 == a4 && a2 == a5;
  if (!v12 && (sub_1DA4223A4() & 1) == 0)
  {
    return 0;
  }

  v13 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(a3);
  v15 = v14;
  v16 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(a6);
  if (v13 == v16 && v15 == v17)
  {
  }

  else
  {
    v19 = OUTLINED_FUNCTION_7_15(v16);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  return a7 == a8;
}

uint64_t SiriSuggestionsIntelligence.FocusMode.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v31 = a3;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB18, "ti");
  OUTLINED_FUNCTION_3_1();
  v29 = v8;
  v30 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB20, &qword_1DA42A848);
  OUTLINED_FUNCTION_3_1();
  v25 = v13;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB28, &qword_1DA42A850);
  OUTLINED_FUNCTION_3_1();
  v19 = v18;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411B9C();
  v21 = v31;
  sub_1DA422494();
  if (v21)
  {
    LOBYTE(v32) = 1;
    sub_1DA411BF0();
    OUTLINED_FUNCTION_4_19();
    sub_1DA4222D4();
    v32 = v26;
    v33 = v21;
    v34 = v27;
    v35 = v28;
    sub_1DA411C44();
    v22 = v30;
    sub_1DA422334();
    (*(v29 + 8))(v11, v22);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1DA411C98();
    OUTLINED_FUNCTION_4_19();
    sub_1DA4222D4();
    (*(v25 + 8))(v16, v12);
  }

  return (*(v19 + 8))(v5, v17);
}

void *SiriSuggestionsIntelligence.FocusMode.init(from:)(void *a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB40, &qword_1DA42A858);
  OUTLINED_FUNCTION_3_1();
  v45 = v3;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB48, &qword_1DA42A860);
  OUTLINED_FUNCTION_3_1();
  v44 = v6;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB50, &unk_1DA42A868);
  OUTLINED_FUNCTION_3_1();
  v46 = v11;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39[-v13];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411B9C();
  v16 = v49;
  sub_1DA422484();
  v49 = v16;
  if (v16)
  {
    goto LABEL_10;
  }

  v41 = v5;
  v42 = v9;
  v43 = a1;
  v17 = v14;
  sub_1DA4222C4();
  result = sub_1DA3C2AA0();
  if (v20 == v21 >> 1)
  {
    goto LABEL_8;
  }

  if (v20 < (v21 >> 1))
  {
    v40 = *(v19 + v20);
    sub_1DA3C2A9C();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    v26 = v45;
    if (v23 == v25 >> 1)
    {
      if (v40)
      {
        LOBYTE(v48) = 1;
        sub_1DA411BF0();
        v15 = v17;
        v27 = v49;
        sub_1DA422244();
        if (v27)
        {
          v49 = v27;
          v28 = OUTLINED_FUNCTION_5_14();
          v29(v28);
LABEL_14:
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        sub_1DA411E28();
        sub_1DA4222B4();
        swift_unknownObjectRelease();
        (*(v26 + 8))(v1, v47);
        v37 = OUTLINED_FUNCTION_5_14();
        v38(v37);
        v15 = v48;
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_1DA411C98();
        v34 = v42;
        v35 = v49;
        sub_1DA422244();
        v36 = v46;
        if (v35)
        {
          v49 = v35;
          v15 = (v46 + 8);
          (*(v46 + 8))(v17, v10);
          goto LABEL_14;
        }

        swift_unknownObjectRelease();
        (*(v44 + 8))(v34, v41);
        (*(v36 + 8))(v17, v10);
        v15 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0(v43);
      return v15;
    }

LABEL_8:
    v30 = sub_1DA4220F4();
    v31 = swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v33 = &type metadata for SiriSuggestionsIntelligence.FocusMode;
    v15 = v17;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
    v49 = v31;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v17, v10);
LABEL_9:
    a1 = v43;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v15;
  }

  __break(1u);
  return result;
}

void *sub_1DA4112E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.FocusMode.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.FocusModeDetails.description.getter(uint64_t a1, uint64_t a2, char a3, double a4)
{
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD000000000000013, 0x80000001DA42E810);
  MEMORY[0x1DA74D370](a1, a2);
  MEMORY[0x1DA74D370](0x226570797422202CLL, 0xEA0000000000203ALL);
  sub_1DA422194();
  MEMORY[0x1DA74D370](0x747261747322202CLL, 0xEF203A22656D6954);
  sub_1DA421E94();
  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DA411474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965646F6DLL && a2 == 0xEE00726569666974;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA4223A4();

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

uint64_t sub_1DA411594(char a1)
{
  if (!a1)
  {
    return 0x6E65644965646F6DLL;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x6D69547472617473;
}

uint64_t sub_1DA4115FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA411474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA411624(uint64_t a1)
{
  v2 = sub_1DA411E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA411660(uint64_t a1)
{
  v2 = sub_1DA411E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.FocusModeDetails.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB60, &qword_1DA42A878);
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411E7C();
  sub_1DA422494();
  v18 = 0;
  sub_1DA4222F4();
  if (!v4)
  {
    v17 = v14;
    v16 = 1;
    sub_1DA411ED0();
    sub_1DA422334();
    v15 = 2;
    sub_1DA422314();
  }

  return (*(v8 + 8))(v11, v6);
}

double SiriSuggestionsIntelligence.FocusModeDetails.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB78, &qword_1DA42A880);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411E7C();
  sub_1DA422484();
  if (!v1)
  {
    sub_1DA422274();
    sub_1DA411F24();
    OUTLINED_FUNCTION_4_19();
    sub_1DA4222B4();
    sub_1DA422294();
    v2 = v6;
    v7 = OUTLINED_FUNCTION_8_14();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void sub_1DA411A68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = SiriSuggestionsIntelligence.FocusModeDetails.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

unint64_t SiriSuggestionsIntelligence.FocusType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA422234();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DA411B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.FocusType.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DA411B70@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.FocusType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DA411B9C()
{
  result = qword_1EE101030;
  if (!qword_1EE101030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101030);
  }

  return result;
}

unint64_t sub_1DA411BF0()
{
  result = qword_1ECBAFB30;
  if (!qword_1ECBAFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB30);
  }

  return result;
}

unint64_t sub_1DA411C44()
{
  result = qword_1ECBAFB38;
  if (!qword_1ECBAFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB38);
  }

  return result;
}

unint64_t sub_1DA411C98()
{
  result = qword_1EE101058;
  if (!qword_1EE101058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101058);
  }

  return result;
}

uint64_t sub_1DA411DB8(void *a1)
{
  v2 = [a1 semanticModeIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DA421B94();

  return v3;
}

unint64_t sub_1DA411E28()
{
  result = qword_1ECBAFB58;
  if (!qword_1ECBAFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB58);
  }

  return result;
}

unint64_t sub_1DA411E7C()
{
  result = qword_1ECBAFB68;
  if (!qword_1ECBAFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB68);
  }

  return result;
}

unint64_t sub_1DA411ED0()
{
  result = qword_1ECBAFB70;
  if (!qword_1ECBAFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB70);
  }

  return result;
}

unint64_t sub_1DA411F24()
{
  result = qword_1ECBAFB80;
  if (!qword_1ECBAFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB80);
  }

  return result;
}

unint64_t sub_1DA411F7C()
{
  result = qword_1ECBAFB88;
  if (!qword_1ECBAFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB88);
  }

  return result;
}

unint64_t sub_1DA411FD4()
{
  result = qword_1ECBAFB90;
  if (!qword_1ECBAFB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAFB98, &qword_1DA42AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB90);
  }

  return result;
}

uint64_t sub_1DA41205C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1DA4120AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DA412104(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t _s9FocusTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s9FocusTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s16FocusModeDetailsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9FocusModeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9FocusModeO21ActiveFocusCodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA41250C()
{
  result = qword_1ECBAFBA0;
  if (!qword_1ECBAFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBA0);
  }

  return result;
}

unint64_t sub_1DA412564()
{
  result = qword_1ECBAFBA8;
  if (!qword_1ECBAFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBA8);
  }

  return result;
}

unint64_t sub_1DA4125BC()
{
  result = qword_1ECBAFBB0;
  if (!qword_1ECBAFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBB0);
  }

  return result;
}

unint64_t sub_1DA412614()
{
  result = qword_1ECBAFBB8;
  if (!qword_1ECBAFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBB8);
  }

  return result;
}

unint64_t sub_1DA41266C()
{
  result = qword_1ECBAFBC0;
  if (!qword_1ECBAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBC0);
  }

  return result;
}

unint64_t sub_1DA4126C4()
{
  result = qword_1EE101048;
  if (!qword_1EE101048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101048);
  }

  return result;
}

unint64_t sub_1DA41271C()
{
  result = qword_1EE101050;
  if (!qword_1EE101050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101050);
  }

  return result;
}

unint64_t sub_1DA412774()
{
  result = qword_1EE101038;
  if (!qword_1EE101038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101038);
  }

  return result;
}

unint64_t sub_1DA4127CC()
{
  result = qword_1EE101040;
  if (!qword_1EE101040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101040);
  }

  return result;
}

unint64_t sub_1DA412824()
{
  result = qword_1EE101020;
  if (!qword_1EE101020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101020);
  }

  return result;
}

unint64_t sub_1DA41287C()
{
  result = qword_1EE101028;
  if (!qword_1EE101028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101028);
  }

  return result;
}

unint64_t sub_1DA4128D0()
{
  result = qword_1ECBAFBC8;
  if (!qword_1ECBAFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1)
{

  return sub_1DA4223A4();
}

BOOL sub_1DA412968(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
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

    v9 = *(type metadata accessor for SiriSuggestionsIntelligence.Device(0) - 8);
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

BOOL sub_1DA412A3C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

void *sub_1DA412AEC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA3A1FF8(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t SiriSuggestionsIntelligence.DeviceFeatureExtractor.extract(_:)()
{
  OUTLINED_FUNCTION_16();
  v1[62] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[63] = OUTLINED_FUNCTION_40();
  v2 = sub_1DA4210B4();
  v1[64] = v2;
  v1[65] = *(v2 - 8);
  v1[66] = OUTLINED_FUNCTION_40();
  v3 = sub_1DA421724();
  v1[67] = v3;
  v1[68] = *(v3 - 8);
  v1[69] = OUTLINED_FUNCTION_40();
  v1[70] = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  v1[71] = OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](sub_1DA412C90);
}

uint64_t sub_1DA412C90()
{
  v1 = v0[62];
  v0[61] = MEMORY[0x1E69E7CC0];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[72] = v4;
  *v4 = v0;
  v4[1] = sub_1DA412DCC;
  v5 = v0[71];

  return v7(v5, v2, v3);
}

uint64_t sub_1DA412DCC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  if (v0)
  {
    v7 = sub_1DA4137C8;
  }

  else
  {
    v7 = sub_1DA412ED0;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA412ED0()
{
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v59 = *(v0 + 560);
  v60 = *(v0 + 512);
  v57 = *(v0 + 568);
  v58 = *(v0 + 504);
  v5 = *v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DA42AFB0;
  v7 = v6;
  v62 = v6;
  v63 = *(v3 + 104);
  v63(v2, *MEMORY[0x1E69D2E48], v4);
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v8);
  v9 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v9, v10, v5);
  OUTLINED_FUNCTION_10_10();
  v61 = *(v3 + 8);
  v61(v2, v4);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v1 & 1, v7 + 32, 20);
  v63(v2, *MEMORY[0x1E69D2E40], v4);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v11);
  v12 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v12, v13, v5);
  OUTLINED_FUNCTION_10_10();
  v61(v2, v4);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v1 & 1, v62 + 104, 21);
  v63(v2, *MEMORY[0x1E69D2E68], v4);
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v14);
  v15 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v15, v16, v5);
  OUTLINED_FUNCTION_10_10();
  v61(v2, v4);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v1 & 1, v62 + 176, 22);
  v63(v2, *MEMORY[0x1E69D2E58], v4);
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v17);
  v18 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v18, v19, v5);
  OUTLINED_FUNCTION_10_10();
  v61(v2, v4);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v1 & 1, v62 + 248, 23);
  v63(v2, *MEMORY[0x1E69D2E50], v4);
  v20 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v20);
  v21 = OUTLINED_FUNCTION_6_14();
  v23 = sub_1DA412968(v21, v22, v5);

  v61(v2, v4);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v23, v62 + 320, 24);
  static SiriSuggestionsIntelligence.createNumericFeature(featureId:featureValue:)(*(v5 + 16), (v62 + 392), 25);
  sub_1DA3BCEF4(v62);
  sub_1DA3F7598(v57 + *(v59 + 20), v58);
  if (__swift_getEnumTagSinglePayload(v58, 1, v60) == 1)
  {
    v24 = *(v0 + 504);
    sub_1DA3A5120(*(v0 + 568));
    v25 = sub_1DA3A8CA8(v24, &qword_1ECBAE870, &qword_1DA4252E0);
  }

  else
  {
    (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
    sub_1DA421034();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DA4238F0;
    *(v28 + 32) = v27;
    v29 = *(v0 + 488);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA3A5520();
      v29 = v55;
    }

    v30 = *(v29 + 16);
    if (v30 >= *(v29 + 24) >> 1)
    {
      sub_1DA3A5520();
      v29 = v56;
    }

    v31 = *(v0 + 568);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    *(v29 + 16) = v30 + 1;
    v32 = v29 + 72 * v30;
    *(v32 + 32) = 0xD000000000000012;
    *(v32 + 40) = 0x80000001DA42C300;
    *(v32 + 48) = v27;
    *(v32 + 56) = v64;
    v33 = MEMORY[0x1E69E63E8];
    *(v32 + 72) = MEMORY[0x1E69E63B0];
    *(v32 + 80) = v33;
    *(v32 + 88) = MEMORY[0x1E69E63C0];
    *(v32 + 96) = v28;
    *(v0 + 488) = v29;
    v25 = sub_1DA3A5120(v31);
  }

  (*(*(v0 + 496) + 64))(v25);
  if (*(v0 + 472))
  {
    sub_1DA3A1FF8((v0 + 448), v0 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA42AFC0;
    OUTLINED_FUNCTION_0_20();
    v35 = OUTLINED_FUNCTION_1_18();
    result = v36(v35);
    if (!v38)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_9_13(result, v38, result, qword_1F55E7F88);

    v39 = sub_1DA3E8314();
    v41 = v40;
    *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    *(inited + 152) = OUTLINED_FUNCTION_3_21(&qword_1EE100FF0, MEMORY[0x1E69E6190]);
    v42 = OUTLINED_FUNCTION_2_19(&unk_1EE100FF8, MEMORY[0x1E69E6160]);
    *(inited + 120) = v39;
    *(inited + 128) = v41;
    strcpy((inited + 104), "osBuildVersion");
    *(inited + 119) = -18;
    *(inited + 160) = v42;
    *(inited + 168) = 0;
    OUTLINED_FUNCTION_0_20();
    v43 = OUTLINED_FUNCTION_1_18();
    v45 = v44(v43);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v45 & 1, inited + 176, 30);
    OUTLINED_FUNCTION_0_20();
    v46 = OUTLINED_FUNCTION_1_18();
    v48 = v47(v46);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v48 & 1, inited + 248, 31);
    OUTLINED_FUNCTION_0_20();
    v49 = OUTLINED_FUNCTION_1_18();
    v51 = v50(v49);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v51 & 1, inited + 320, 32);
    sub_1DA3BCEF4(inited);
    __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  }

  else
  {
    sub_1DA3A8CA8(v0 + 448, &qword_1ECBAEE58, &qword_1DA427BF0);
  }

  v52 = *(v0 + 488);
  *(v0 + 592) = v52;

  v53 = swift_task_alloc();
  *(v0 + 600) = v53;
  *v53 = v0;
  v53[1] = sub_1DA413624;
  v54 = *(v0 + 496);

  return sub_1DA3E4BE0(0xD000000000000017, 0x80000001DA42C350, v52, v54);
}

uint64_t sub_1DA413624()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v6 + 608) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1DA413734);
}

uint64_t sub_1DA413734()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 608);

  return v1(v2);
}

uint64_t sub_1DA4137C8()
{
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F74();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 584);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "DeviceFeatureExtractor: Unable to fetch account details for other devices details", v6, 2u);
    MEMORY[0x1DA74E430](v6, -1, -1);
  }

  (*(*(v0 + 496) + 64))();
  if (*(v0 + 472))
  {
    sub_1DA3A1FF8((v0 + 448), v0 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA42AFC0;
    OUTLINED_FUNCTION_0_20();
    v8 = OUTLINED_FUNCTION_1_18();
    result = v9(v8);
    if (!v11)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_9_13(result, v11, result, qword_1F55E7F88);

    v12 = sub_1DA3E8314();
    v14 = v13;
    *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    *(inited + 152) = OUTLINED_FUNCTION_3_21(&qword_1EE100FF0, MEMORY[0x1E69E6190]);
    v15 = OUTLINED_FUNCTION_2_19(&unk_1EE100FF8, MEMORY[0x1E69E6160]);
    *(inited + 120) = v12;
    *(inited + 128) = v14;
    strcpy((inited + 104), "osBuildVersion");
    *(inited + 119) = -18;
    *(inited + 160) = v15;
    *(inited + 168) = 0;
    OUTLINED_FUNCTION_0_20();
    v16 = OUTLINED_FUNCTION_1_18();
    v18 = v17(v16);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v18 & 1, inited + 176, 30);
    OUTLINED_FUNCTION_0_20();
    v19 = OUTLINED_FUNCTION_1_18();
    v21 = v20(v19);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v21 & 1, inited + 248, 31);
    OUTLINED_FUNCTION_0_20();
    v22 = OUTLINED_FUNCTION_1_18();
    v24 = v23(v22);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(v24 & 1, inited + 320, 32);
    sub_1DA3BCEF4(inited);
    __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  }

  else
  {
    sub_1DA3A8CA8(v0 + 448, &qword_1ECBAEE58, &qword_1DA427BF0);
  }

  v25 = *(v0 + 488);
  *(v0 + 592) = v25;

  v26 = swift_task_alloc();
  *(v0 + 600) = v26;
  *v26 = v0;
  v26[1] = sub_1DA413624;
  v27 = *(v0 + 496);

  return sub_1DA3E4BE0(0xD000000000000017, 0x80000001DA42C350, v25, v27);
}

uint64_t sub_1DA413B20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA413B40);
}

uint64_t sub_1DA413B40()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1DA413BD0;

  return sub_1DA3E8B3C();
}

uint64_t sub_1DA413BD0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  *v3 = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = v6;

  if (v0)
  {
    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA413CF8);
  }
}

uint64_t sub_1DA413CF8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = MEMORY[0x1E69E6160];
    v4 = MEMORY[0x1E69E6190];
    v5 = MEMORY[0x1E69E6158];
  }

  else
  {
    v2 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    *(*(v0 + 16) + 16) = 0;
  }

  v6 = *(v0 + 16);
  *v6 = v2;
  v6[1] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  return (*(v0 + 8))();
}

void *SiriSuggestionsIntelligence.DeviceFeatureExtractor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t SiriSuggestionsIntelligence.DeviceFeatureExtractor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.DeviceFeatureExtractor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DA413DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA413E54;

  return SiriSuggestionsIntelligence.DeviceFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA413E54()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_2_19(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7C70];

  return sub_1DA3B1E38(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_3_21(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7C88];

  return sub_1DA3B1E38(a1, a2, v3);
}

double OUTLINED_FUNCTION_9_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(27, a3, v5, a4, (v4 + 32));
}

uint64_t OUTLINED_FUNCTION_10_10()
{
}

uint64_t static SiriSuggestionsIntelligence.loadCDFNormalizerData(fileContents:)(uint64_t a1, uint64_t a2)
{
  sub_1DA420EA4();
  swift_allocObject();
  sub_1DA420E94();
  sub_1DA414170();
  sub_1DA420E84();

  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1DA414170()
{
  result = qword_1EE100830;
  if (!qword_1EE100830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100830);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.BucketedECDF.__allocating_init(kernelData:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static SiriSuggestionsIntelligence.BucketedECDF.create(buckets:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBD8, &qword_1DA42B050);
  swift_allocObject();

  v1 = sub_1DA3C55DC();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

Swift::Double_optional __swiftcall SiriSuggestionsIntelligence.BucketedECDF.cdf(for:)(Swift::Double a1)
{
  v1 = sub_1DA3C5770(a1);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t sub_1DA41431C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61626F725078616DLL && a2 == 0xEE007974696C6962;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469736E6564 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA4143EC(char a1)
{
  if (a1)
  {
    return 0x797469736E6564;
  }

  else
  {
    return 0x61626F725078616DLL;
  }
}

uint64_t sub_1DA414438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA41431C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA414460(uint64_t a1)
{
  v2 = sub_1DA415014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41449C(uint64_t a1)
{
  v2 = sub_1DA415014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.BucketedECDF.Bucket.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBE0, &qword_1DA42B058);
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA415014();
  sub_1DA422494();
  v12 = 0;
  sub_1DA422314();
  if (!v1)
  {
    v11 = 1;
    sub_1DA422314();
  }

  return (*(v5 + 8))(v8, v3);
}

double SiriSuggestionsIntelligence.BucketedECDF.Bucket.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBE8, &qword_1DA42B060);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1DA415014();
  OUTLINED_FUNCTION_3_22(&_s12BucketedECDFC6BucketV10CodingKeysON, v6, v5);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12 = 0;
    OUTLINED_FUNCTION_2_20(&v12);
    v2 = v7;
    v11 = 1;
    OUTLINED_FUNCTION_2_20(&v11);
    v8 = OUTLINED_FUNCTION_1_19();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v2;
}

void sub_1DA4147F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SiriSuggestionsIntelligence.BucketedECDF.Bucket.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t SiriSuggestionsIntelligence.BucketedECDF.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

Swift::Double_optional __swiftcall SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction.invCdf(for:)(Swift::Double a1)
{
  v1 = sub_1DA3C575C(a1);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t sub_1DA414970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6963696666656F63 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374656B637562 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA414A3C(char a1)
{
  if (a1)
  {
    return 0x7374656B637562;
  }

  else
  {
    return 0x6963696666656F63;
  }
}

uint64_t sub_1DA414A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA414970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA414AAC(uint64_t a1)
{
  v2 = sub_1DA415068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA414AE8(uint64_t a1)
{
  v2 = sub_1DA415068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.NormalizerData.encode(to:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBF0, &qword_1DA42B068);
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA415068();
  sub_1DA422494();
  v14 = 0;
  sub_1DA422314();
  if (!v2)
  {
    v12[1] = a2;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBF8, &qword_1DA42B070);
    sub_1DA415110(&qword_1ECBAFC00, sub_1DA4150BC, MEMORY[0x1E69E6300]);
    sub_1DA422334();
  }

  return (*(v7 + 8))(v10, v5);
}

void *SiriSuggestionsIntelligence.NormalizerData.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC10, &qword_1DA42B078);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1DA415068();
  OUTLINED_FUNCTION_3_22(&_s14NormalizerDataV10CodingKeysON, v6, v5);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
    OUTLINED_FUNCTION_2_20(&v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBF8, &qword_1DA42B070);
    sub_1DA415110(&unk_1EE100098, sub_1DA415188, MEMORY[0x1E69E6330]);
    sub_1DA4222B4();
    v7 = OUTLINED_FUNCTION_1_19();
    v8(v7);
    v4 = v10;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v4;
}

void *sub_1DA414EA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.NormalizerData.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

void (**SSCumulativeDensityFunction.approximateInvert(startingAt:endingAt:stepSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (***a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction();
  (*(v8 + 16))(v11, v3, a1);
  v13 = sub_1DA415200(v11, v12, a1, a2, -5.0, 5.0, 0.1);
  a3[3] = v12;
  result = sub_1DA415410(&qword_1EE1002F0, &protocol conformance descriptor for SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction);
  a3[4] = result;
  *a3 = v13;
  return result;
}

unint64_t sub_1DA415014()
{
  result = qword_1EE100920[0];
  if (!qword_1EE100920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE100920);
  }

  return result;
}

unint64_t sub_1DA415068()
{
  result = qword_1EE100848;
  if (!qword_1EE100848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100848);
  }

  return result;
}

unint64_t sub_1DA4150BC()
{
  result = qword_1ECBAFC08;
  if (!qword_1ECBAFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC08);
  }

  return result;
}

uint64_t sub_1DA415110(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAFBF8, &qword_1DA42B070);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA415188()
{
  result = qword_1EE100908;
  if (!qword_1EE100908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100908);
  }

  return result;
}

void (**sub_1DA415200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7))(char *, uint64_t)
{
  v12 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  (*(v12 + 32))(&v21 - v16);
  v18 = swift_allocObject();
  (*(v12 + 16))(v15, v17, a3);
  v19 = sub_1DA415790(v15, v18, a3, a4, a5, a6, a7);
  (*(v12 + 8))(v17, a3);
  return v19;
}

unint64_t sub_1DA415378()
{
  result = qword_1ECBAFC18;
  if (!qword_1ECBAFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC18);
  }

  return result;
}

uint64_t sub_1DA4153CC(uint64_t a1)
{
  result = sub_1DA415410(qword_1EE1002F8, &protocol conformance descriptor for SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DA415410(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1DA4154A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA415584()
{
  result = qword_1ECBAFC20;
  if (!qword_1ECBAFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC20);
  }

  return result;
}

unint64_t sub_1DA4155DC()
{
  result = qword_1ECBAFC28;
  if (!qword_1ECBAFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC28);
  }

  return result;
}

unint64_t sub_1DA415634()
{
  result = qword_1EE100838;
  if (!qword_1EE100838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100838);
  }

  return result;
}

unint64_t sub_1DA41568C()
{
  result = qword_1EE100840;
  if (!qword_1EE100840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100840);
  }

  return result;
}

unint64_t sub_1DA4156E4()
{
  result = qword_1EE100910;
  if (!qword_1EE100910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100910);
  }

  return result;
}

unint64_t sub_1DA41573C()
{
  result = qword_1EE100918;
  if (!qword_1EE100918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100918);
  }

  return result;
}

void (**sub_1DA415790(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, double a5, double a6, double a7))(char *, uint64_t)
{
  v15 = sub_1DA421A94();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v85 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v88 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v85 - v25;
  v93[3] = a3;
  v93[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
  v27 = *(*(a3 - 8) + 32);
  v89 = boxed_opaque_existential_1;
  v27(boxed_opaque_existential_1, a1, a3);
  sub_1DA3A7ED4(v93, v92);
  if (a7 == 0.0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    sub_1DA3A5820(0, *(v90 + 16) + 1, 1, v90);
    v50 = v79;
LABEL_24:
    v52 = *(v50 + 16);
    v51 = *(v50 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_1DA3A5820(v51 > 1, v52 + 1, 1, v50);
      v50 = v80;
    }

    *(v50 + 16) = v52 + 1;
    v53 = v50 + 16 * v52;
    *(v53 + 32) = v19;
    *(v53 + 40) = a6;
    goto LABEL_27;
  }

  v85 = v22;
  v86 = a2;
  v7 = 0;
  a2 = (v16 + 8);
  v90 = MEMORY[0x1E69E7CC0];
  *&v28 = 134217984;
  v91 = v28;
  v29 = a5;
  while (1)
  {
    v30 = v29;
    if (a7 <= 0.0 ? v29 <= a6 : v29 >= a6)
    {
      break;
    }

    v32 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    v29 = a5 + v32 * a7;
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v33 = (*(a4 + 8))(a3, a4, v30);
    if (v34)
    {
      sub_1DA4219B4();
      v35 = sub_1DA421A74();
      v36 = sub_1DA421F74();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = v91;
        *(v37 + 4) = v30;
        _os_log_impl(&dword_1DA39E000, v35, v36, "Unable to add sample. Function returns nil at: %f. Dropping sample", v37, 0xCu);
        MEMORY[0x1DA74E430](v37, -1, -1);
      }

      (*a2)(v19, v15);
      v7 = (v7 + 1);
    }

    else
    {
      v38 = v33;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v39 = v90;
      }

      else
      {
        sub_1DA3A5820(0, *(v90 + 16) + 1, 1, v90);
        v39 = v43;
      }

      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1DA3A5820(v40 > 1, v41 + 1, 1, v39);
        v39 = v44;
      }

      *(v39 + 16) = v41 + 1;
      v90 = v39;
      v42 = v39 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v30;
      v7 = v32;
    }
  }

  v7 = *(a4 + 8);
  v45 = v7(a3, a4, a6);
  if ((v46 & 1) == 0)
  {
    v19 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_48;
    }

    v50 = v90;
    goto LABEL_24;
  }

  sub_1DA4219B4();
  v47 = sub_1DA421A74();
  v48 = sub_1DA421F74();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = v91;
    *(v49 + 4) = a6;
    _os_log_impl(&dword_1DA39E000, v47, v48, "Unable to add sample. Function returns nil at: %f. Dropping sample", v49, 0xCu);
    MEMORY[0x1DA74E430](v49, -1, -1);
  }

  (*a2)(v87, v15);
  v50 = v90;
LABEL_27:
  v54 = v50;

  v55 = v7(a3, a4, -1.79769313e308);
  v90 = v54;
  if (v56)
  {
    sub_1DA4219B4();
    v57 = sub_1DA421A74();
    v58 = sub_1DA421F74();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = v91;
      *(v59 + 4) = 0xFFEFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_1DA39E000, v57, v58, "Unable to add sample. Function returns nil at: %f. Dropping sample", v59, 0xCu);
      MEMORY[0x1DA74E430](v59, -1, -1);
    }

    (*a2)(v88, v15);
    v60 = v90;
  }

  else
  {
    v61 = v55;
    v60 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA3A5820(0, *(v54 + 16) + 1, 1, v54);
      v60 = v81;
    }

    v63 = *(v60 + 16);
    v62 = *(v60 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_1DA3A5820(v62 > 1, v63 + 1, 1, v60);
      v60 = v82;
    }

    *(v60 + 16) = v63 + 1;
    v64 = v60 + 16 * v63;
    *(v64 + 32) = v61;
    *(v64 + 40) = 0xFFEFFFFFFFFFFFFFLL;
  }

  v65 = v7(a3, a4, 1.79769313e308);
  if (v66)
  {
    v67 = v85;
    sub_1DA4219B4();
    v68 = sub_1DA421A74();
    v69 = sub_1DA421F74();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = v91;
      *(v70 + 4) = 0x7FEFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_1DA39E000, v68, v69, "Unable to add sample. Function returns nil at: %f. Dropping sample", v70, 0xCu);
      MEMORY[0x1DA74E430](v70, -1, -1);
    }

    (*a2)(v67, v15);
    v71 = v86;
  }

  else
  {
    v72 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA3A5820(0, *(v60 + 16) + 1, 1, v60);
      v60 = v83;
    }

    v71 = v86;
    v74 = *(v60 + 16);
    v73 = *(v60 + 24);
    if (v74 >= v73 >> 1)
    {
      sub_1DA3A5820(v73 > 1, v74 + 1, 1, v60);
      v60 = v84;
    }

    *(v60 + 16) = v74 + 1;
    v75 = v60 + 16 * v74;
    *(v75 + 32) = v72;
    *(v75 + 40) = 0x7FEFFFFFFFFFFFFFLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF060, &qword_1DA42B510);
  swift_allocObject();
  v76 = sub_1DA3C545C();
  type metadata accessor for SiriSuggestionsIntelligence.ApproxInverseFunction();
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v93);
  v71[2] = v77;
  return v71;
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{

  return sub_1DA422294();
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA422484();
}

void static SiriSuggestionsIntelligence.MathCommon.createSamples@Sendable (for:startingAt:endingAt:stepSize:)(uint64_t (*a1)(uint64_t, double), uint64_t a2, double a3, double a4, double a5)
{
  v9 = sub_1DA421A94();
  isUniquelyReferenced_nonNull_native = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1E69E7CC0];
  if (a5 != 0.0)
  {
    v15 = 0;
    v16 = (v11 + 8);
    v32 = MEMORY[0x1E69E7CC0];
    *&v12 = 134217984;
    v33 = v12;
    v17 = a3;
    while (1)
    {
      v18 = v17;
      if (a5 <= 0.0)
      {
        v19 = v17 <= a4;
      }

      else
      {
        v19 = v17 >= a4;
      }

      if (v19)
      {
        sub_1DA4162B0(&v34, a1, a4);
        return;
      }

      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = a3 + v20 * a5;
      v21 = a1(isUniquelyReferenced_nonNull_native, v18);
      if (v22)
      {
        sub_1DA4219B4();
        v23 = sub_1DA421A74();
        v24 = sub_1DA421F74();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = v33;
          *(v25 + 4) = v18;
          _os_log_impl(&dword_1DA39E000, v23, v24, "Unable to add sample. Function returns nil at: %f. Dropping sample", v25, 0xCu);
          MEMORY[0x1DA74E430](v25, -1, -1);
        }

        isUniquelyReferenced_nonNull_native = (*v16)(v14, v9);
        ++v15;
      }

      else
      {
        v26 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DA3A5820(0, *(v32 + 16) + 1, 1, v32);
          v32 = isUniquelyReferenced_nonNull_native;
        }

        v28 = *(v32 + 16);
        v27 = *(v32 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1DA3A5820(v27 > 1, v28 + 1, 1, v32);
          v32 = isUniquelyReferenced_nonNull_native;
        }

        v29 = v32;
        *(v32 + 16) = v28 + 1;
        v30 = v29 + 16 * v28;
        *(v30 + 32) = v26;
        *(v30 + 40) = v18;
        v34 = v29;
        v15 = v20;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DA4162B0(uint64_t *a1, uint64_t (*a2)(uint64_t, double), double a3)
{
  v6 = sub_1DA421A94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2(v8, a3);
  if (v12)
  {
    sub_1DA4219B4();
    v13 = sub_1DA421A74();
    v14 = sub_1DA421F74();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a3;
      _os_log_impl(&dword_1DA39E000, v13, v14, "Unable to add sample. Function returns nil at: %f. Dropping sample", v15, 0xCu);
      MEMORY[0x1DA74E430](v15, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v17 = v11;
    sub_1DA3AFD30();
    v18 = *(*a1 + 16);
    result = sub_1DA3AFDD4(v18);
    v19 = *a1;
    *(v19 + 16) = v18 + 1;
    v20 = v19 + 16 * v18;
    *(v20 + 32) = v17;
    *(v20 + 40) = a3;
    *a1 = v19;
  }

  return result;
}

void sub_1DA416480(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1DA416574(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA421A94();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1DA4166C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DA421A94();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1DA421A14();
  return sub_1DA421A84();
}

uint64_t sub_1DA416754@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA421A94();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

uint64_t sub_1DA4168D0(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

uint64_t sub_1DA41695C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA416980);
}

uint64_t sub_1DA416980(uint64_t a1, uint64_t a2)
{
  sub_1DA41725C(*(v2 + 16), a2, *(v2 + 32));
  v3 = *(v2 + 8);

  return v3();
}

void *sub_1DA4169E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC30, &qword_1DA42B638);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_1DA4210F4();
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v66 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - v22;
  sub_1DA4171A8(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1DA3A8CA8(v4, &qword_1ECBAFC30, &qword_1DA42B638);
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
    }

    v24 = sub_1DA421A94();
    OUTLINED_FUNCTION_4_21(v24, static Logger.conversionCategory);
    (*(v7 + 16))(v11, a1, v5);
    v25 = sub_1DA421A74();
    v26 = sub_1DA421F74();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_150();
      v28 = swift_slowAlloc();
      v73 = v28;
      *v27 = 136315138;
      sub_1DA4184D0();
      v29 = sub_1DA422364();
      v31 = v30;
      (*(v7 + 8))(v11, v5);
      v32 = sub_1DA3A5FE8(v29, v31, &v73);

      *(v27 + 4) = v32;
      OUTLINED_FUNCTION_5_15(&dword_1DA39E000, v33, v26, "Error emitting request link because of nil sugID and generationId - %s");
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_17();
    }

    else
    {

      (*(v7 + 8))(v11, v5);
    }

    return 0;
  }

  (*(v7 + 32))(v23, v4, v5);
  v34 = [objc_allocWithZone(MEMORY[0x1E69CF698]) init];
  if (!v34)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
    }

    v57 = sub_1DA421A94();
    OUTLINED_FUNCTION_4_21(v57, static Logger.conversionCategory);
    v58 = sub_1DA421A74();
    v59 = sub_1DA421F74();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_19_4();
      *v60 = 0;
      _os_log_impl(&dword_1DA39E000, v58, v59, "error initializing SUGSchemaSUGClientEvent", v60, 2u);
      OUTLINED_FUNCTION_17();
    }

    goto LABEL_23;
  }

  v35 = v34;
  v72 = v15;
  v36 = [objc_allocWithZone(MEMORY[0x1E69CF6A0]) init];
  if (!v36)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
    }

    v61 = sub_1DA421A94();
    OUTLINED_FUNCTION_4_21(v61, static Logger.conversionCategory);
    v62 = sub_1DA421A74();
    v63 = sub_1DA421F74();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_19_4();
      *v64 = 0;
      _os_log_impl(&dword_1DA39E000, v62, v63, "error initializing SUGSchemaSUGClientEventMetadata", v64, 2u);
      OUTLINED_FUNCTION_17();
    }

LABEL_23:
    (*(v7 + 8))(v23, v5);
    return 0;
  }

  v37 = v36;
  sub_1DA418528();
  v38 = *(v7 + 16);
  v71 = v23;
  v38(v21);
  v39 = sub_1DA41710C(v21);
  [v37 setSugId_];

  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
  }

  v40 = sub_1DA421A94();
  OUTLINED_FUNCTION_4_21(v40, static Logger.conversionCategory);
  (v38)(v18, a1, v5);
  v42 = v71;
  v41 = v72;
  (v38)(v72, v71, v5);
  v43 = sub_1DA421A74();
  v44 = sub_1DA421F64();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v68 = v43;
    v70 = v37;
    v46 = v45;
    v69 = swift_slowAlloc();
    v73 = v69;
    *v46 = 136315394;
    v66 = sub_1DA4184D0();
    v47 = sub_1DA422364();
    v49 = v48;
    v50 = *(v7 + 8);
    v67 = v44;
    v50(v18, v5);
    v51 = sub_1DA3A5FE8(v47, v49, &v73);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v52 = sub_1DA422364();
    v54 = v53;
    v50(v41, v5);
    v55 = sub_1DA3A5FE8(v52, v54, &v73);

    *(v46 + 14) = v55;
    v56 = v68;
    _os_log_impl(&dword_1DA39E000, v68, v67, "sugId generated from generationId - %s as %s", v46, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_17();
    v37 = v70;
    v42 = v71;
    OUTLINED_FUNCTION_17();
  }

  else
  {

    v50 = *(v7 + 8);
    v50(v41, v5);
    v50(v18, v5);
  }

  [v35 setEventMetadata_];

  v50(v42, v5);
  return v35;
}

id sub_1DA41710C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DA4210D4();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1DA4210F4();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1DA4171A8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1DA4210D4();
  v4 = [v2 derivedIdentifierForComponentName:32 fromSourceIdentifier:v3];

  if (v4)
  {
    sub_1DA4210E4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1DA4210F4();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void sub_1DA41725C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v177 = a3;
  v168 = sub_1DA421314();
  OUTLINED_FUNCTION_3_1();
  v167 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v166 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA4212E4();
  OUTLINED_FUNCTION_3_1();
  v183 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_76();
  v182 = (v10 - v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v160 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v184 = (&v160 - v16);
  sub_1DA4210B4();
  OUTLINED_FUNCTION_3_1();
  v174 = v18;
  v175 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_76();
  v173 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v160 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC30, &qword_1DA42B638);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v181 = &v160 - v24;
  v25 = sub_1DA4210F4();
  OUTLINED_FUNCTION_3_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DA4211F4();
  OUTLINED_FUNCTION_3_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_76();
  v171 = v35 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v160 - v38;
  v40 = [objc_allocWithZone(MEMORY[0x1E69CF6A8]) init];
  if (v40)
  {
    v41 = v40;
    v161 = v15;
    v178 = v7;
    v162 = v30;
    v176 = a1;
    sub_1DA4212D4();
    v42 = sub_1DA421194();
    v44 = v43;
    v45 = *(v33 + 8);
    v164 = v31;
    v165 = v33 + 8;
    v163 = v45;
    v45(v39, v31);
    v185[0] = v42;
    v185[1] = v44;
    v46 = sub_1DA3A6A84();
    v47 = MEMORY[0x1DA74D750](95, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v46);

    v48 = *(v47 + 16);
    v180 = v41;
    if (v48)
    {
      v169 = v25;
      v170 = v27;
      v185[0] = MEMORY[0x1E69E7CC0];
      sub_1DA3B0160(0, v48, 0);
      v49 = v185[0];
      v50 = (v47 + 56);
      v51 = v39;
      do
      {
        v52 = *(v50 - 3);
        v53 = *(v50 - 2);
        v55 = *(v50 - 1);
        v54 = *v50;

        v56 = MEMORY[0x1DA74D340](v52, v53, v55, v54);
        v58 = v57;

        v185[0] = v49;
        v60 = *(v49 + 16);
        v59 = *(v49 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1DA3B0160(v59 > 1, v60 + 1, 1);
          v49 = v185[0];
        }

        *(v49 + 16) = v60 + 1;
        v61 = v49 + 16 * v60;
        *(v61 + 32) = v56;
        *(v61 + 40) = v58;
        v50 += 4;
        --v48;
      }

      while (v48);

      v62 = v169;
      v63 = v170;
    }

    else
    {

      v49 = MEMORY[0x1E69E7CC0];
      v63 = v27;
      v62 = v25;
      v51 = v39;
    }

    v68 = v178;
    v69 = v184;
    if (!*(v49 + 16))
    {

      goto LABEL_20;
    }

    v70 = v181;
    sub_1DA4210C4();

    if (__swift_getEnumTagSinglePayload(v70, 1, v62) == 1)
    {
      sub_1DA3A8CA8(v70, &qword_1ECBAFC30, &qword_1DA42B638);
LABEL_20:
      v71 = v182;
      v72 = v183;
      v73 = v176;
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
      }

      v74 = sub_1DA421A94();
      OUTLINED_FUNCTION_4_21(v74, static Logger.conversionCategory);
      (*(v72 + 16))(v71, v73, v68);
      v75 = sub_1DA421A74();
      v76 = sub_1DA421F74();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = OUTLINED_FUNCTION_150();
        v78 = swift_slowAlloc();
        v185[0] = v78;
        *v77 = 136315138;
        sub_1DA4212D4();
        v79 = sub_1DA421194();
        v81 = v80;
        v163(v51, v164);
        (*(v72 + 8))(v71, v68);
        v82 = sub_1DA3A5FE8(v79, v81, v185);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_1DA39E000, v75, v76, "did not get suggestionShownGenerationId UUID from %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();
      }

      else
      {

        (*(v72 + 8))(v71, v68);
      }

      return;
    }

    v83 = v162;
    (*(v63 + 32))(v162, v70, v62);
    v182 = sub_1DA4169E4(v83);
    if (!v182)
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
      }

      v118 = sub_1DA421A94();
      OUTLINED_FUNCTION_4_21(v118, static Logger.conversionCategory);
      v119 = sub_1DA421A74();
      v120 = sub_1DA421F74();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = OUTLINED_FUNCTION_19_4();
        *v121 = 0;
        _os_log_impl(&dword_1DA39E000, v119, v120, "error creating client event", v121, 2u);
        OUTLINED_FUNCTION_17();
      }

      else
      {
      }

      v147 = *(v63 + 8);
      v148 = v83;
      goto LABEL_56;
    }

    v169 = v62;
    v170 = v63;
    sub_1DA4212D4();
    v84 = v172;
    sub_1DA4211E4();
    v85 = v164;
    v86 = v163;
    v163(v51, v164);
    v62 = v171;
    sub_1DA4212D4();
    v87 = v173;
    sub_1DA4211E4();
    v86(v62, v85);
    sub_1DA421054();
    v89 = v88;
    v90 = v175;
    v91 = *(v174 + 8);
    v91(v87, v175);
    v91(v84, v90);
    if (v89 < 0.0)
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
      }

      v92 = sub_1DA421A94();
      OUTLINED_FUNCTION_4_21(v92, static Logger.conversionCategory);
      v93 = v183;
      v94 = *(v183 + 16);
      v95 = v69;
      v96 = v69;
      v97 = v177;
      v94(v95, v177, v68);
      v98 = v161;
      v94(v161, v97, v68);
      v99 = sub_1DA421A74();
      v100 = sub_1DA421F74();
      v101 = os_log_type_enabled(v99, v100);
      v102 = v169;
      v103 = v170;
      if (v101)
      {
        v104 = swift_slowAlloc();
        LODWORD(v179) = v100;
        v105 = v104;
        v181 = swift_slowAlloc();
        v185[0] = v181;
        *v105 = 136315394;
        sub_1DA4212D4();
        v106 = sub_1DA421194();
        v108 = v107;
        v177 = v99;
        v109 = v164;
        v110 = v163;
        v163(v51, v164);
        v111 = *(v93 + 8);
        v111(v96);
        v112 = sub_1DA3A5FE8(v106, v108, v185);

        *(v105 + 4) = v112;
        *(v105 + 12) = 2080;
        sub_1DA4212D4();
        v113 = sub_1DA421194();
        v115 = v114;
        v110(v51, v109);
        (v111)(v98, v68);
        v116 = sub_1DA3A5FE8(v113, v115, v185);

        *(v105 + 14) = v116;
        v117 = v177;
        _os_log_impl(&dword_1DA39E000, v177, v179, "In SELFConversionProcessor engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping", v105, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();

        (*(v170 + 8))(v162, v169);
      }

      else
      {

        v149 = *(v93 + 8);
        v149(v98, v68);
        v149(v96, v68);
        (*(v103 + 8))(v162, v102);
      }

      return;
    }

    if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v122 = v179;
      v62 = v169;
      v87 = v170;
      if (v89 > -1.0)
      {
        if (v89 < 4294967300.0)
        {
          [v180 setSecondsToConversion_];
          v123 = sub_1DA4212B4();
          sub_1DA421604();
          v124 = sub_1DA4215A4();
          sub_1DA3EA3F0(v124, v125, v123);
          v127 = v126;

          if (v127)
          {
            if (*(v127 + 16))
            {
              v128 = v167;
              v129 = v166;
              v130 = v168;
              (*(v167 + 16))(v166, v127 + ((*(v128 + 80) + 32) & ~*(v128 + 80)), v168);

              v131 = sub_1DA4212F4();
              v133 = v132;
              (*(v128 + 8))(v129, v130);
              v134 = v180;
              sub_1DA418420(v131, v133, v180);
              sub_1DA418478(v131, v133, v134);

              [v182 setEngagementMetricReported_];
              if (qword_1EE100EF8 != -1)
              {
                OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
              }

              v135 = sub_1DA421A94();
              OUTLINED_FUNCTION_4_21(v135, static Logger.conversionCategory);
              v136 = v182;
              v137 = sub_1DA421A74();
              v138 = sub_1DA421F64();

              if (os_log_type_enabled(v137, v138))
              {
                v139 = v62;
                v140 = OUTLINED_FUNCTION_150();
                v141 = swift_slowAlloc();
                *v140 = 138412290;
                *(v140 + 4) = v136;
                *v141 = v182;
                v142 = v136;
                OUTLINED_FUNCTION_5_15(&dword_1DA39E000, v143, v138, "emitting sugClientEvent - %@");
                sub_1DA3A8CA8(v141, &qword_1ECBAEC70, &qword_1DA42A510);
                OUTLINED_FUNCTION_17();
                v62 = v139;
                OUTLINED_FUNCTION_17();
              }

              __swift_project_boxed_opaque_existential_1((v122 + 40), *(v122 + 64));
              sub_1DA4168D0(v136);
              v144 = sub_1DA421A74();
              v145 = sub_1DA421F64();
              if (os_log_type_enabled(v144, v145))
              {
                v146 = OUTLINED_FUNCTION_19_4();
                *v146 = 0;
                _os_log_impl(&dword_1DA39E000, v144, v145, "emitted SELF conversion message", v146, 2u);
                OUTLINED_FUNCTION_17();
              }

              else
              {
              }

LABEL_55:
              v147 = *(v87 + 8);
              v148 = v162;
LABEL_56:
              v147(v148, v62);
              return;
            }
          }

          if (qword_1EE100EF8 == -1)
          {
LABEL_51:
            v150 = sub_1DA421A94();
            OUTLINED_FUNCTION_4_21(v150, static Logger.conversionCategory);
            v151 = sub_1DA421A74();
            v152 = sub_1DA421F74();
            if (os_log_type_enabled(v151, v152))
            {
              v153 = v62;
              v154 = OUTLINED_FUNCTION_150();
              v155 = swift_slowAlloc();
              v185[0] = v155;
              *v154 = 136315138;
              v156 = sub_1DA4215A4();
              v158 = sub_1DA3A5FE8(v156, v157, v185);

              *(v154 + 4) = v158;
              OUTLINED_FUNCTION_5_15(&dword_1DA39E000, v159, v152, "engagement message should contain a single entity with parameter key as %s");
              __swift_destroy_boxed_opaque_existential_0(v155);
              OUTLINED_FUNCTION_17();
              OUTLINED_FUNCTION_17();

              (*(v87 + 8))(v162, v153);
              return;
            }

            goto LABEL_55;
          }

LABEL_60:
          OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
          goto LABEL_51;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
  }

  v64 = sub_1DA421A94();
  OUTLINED_FUNCTION_4_21(v64, static Logger.conversionCategory);
  v184 = sub_1DA421A74();
  v65 = sub_1DA421F74();
  if (os_log_type_enabled(v184, v65))
  {
    v66 = OUTLINED_FUNCTION_19_4();
    *v66 = 0;
    _os_log_impl(&dword_1DA39E000, v184, v65, "Failed to initialize SUGSchemaSUGEngagementMetricReported object", v66, 2u);
    OUTLINED_FUNCTION_17();
  }

  v67 = v184;
}

uint64_t sub_1DA418288()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DA4182E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA3CC038;

  return sub_1DA41695C(a1, a2, a3);
}

uint64_t sub_1DA418394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3CCCC0;

  return sub_1DA3E54E0();
}

void sub_1DA418420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA421B64();
  [a3 setSuggestionId_];
}

void sub_1DA418478(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA421B64();
  [a3 setLoggingActionId_];
}

unint64_t sub_1DA4184D0()
{
  result = qword_1ECBAFC38;
  if (!qword_1ECBAFC38)
  {
    sub_1DA4210F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC38);
  }

  return result;
}

unint64_t sub_1DA418528()
{
  result = qword_1ECBAFC40;
  if (!qword_1ECBAFC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAFC40);
  }

  return result;
}

void OUTLINED_FUNCTION_5_15(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t FeatureSetProvider.__allocating_init(features:)(uint64_t a1)
{
  v2 = swift_allocObject();
  static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(a1);
  v4 = v3;

  *(v2 + 16) = v4;
  return v2;
}

uint64_t FeatureSetProvider.init(features:)(uint64_t a1)
{
  static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(a1);
  v3 = v2;

  *(v1 + 16) = v3;
  return v1;
}

void *sub_1DA418644(void *result, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = *(v2 + 16);
    v7 = (a2 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      v10 = sub_1DA421894();
      if (*(v6 + 16))
      {
        v12 = sub_1DA3B77A8(v8, v10, v11, 0);
        v14 = v13;

        if (v14)
        {
          v15 = *(*(v6 + 56) + 8 * v12);
        }
      }

      else
      {
      }

      MEMORY[0x1DA74D470](v15);
      if (*(v24 + 16) >= *(v24 + 24) >> 1)
      {
        sub_1DA421D54();
      }

      v16 = sub_1DA421D84();
      if (*(v6 + 16))
      {
        v16 = sub_1DA3B77A8(v8, 0, 0, 2);
        if (v17)
        {
          v16 = *(*(v6 + 56) + 8 * v16);
        }
      }

      MEMORY[0x1DA74D470](v16);
      if (*(v24 + 16) >= *(v24 + 24) >> 1)
      {
        sub_1DA421D54();
      }

      result = sub_1DA421D84();
      --v4;
    }

    while (v4);
    v18 = v24;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = 0;
  v23 = v3;
  v20 = *(v18 + 16);
  while (1)
  {
    if (v20 == v19)
    {

      return v3;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    v21 = *(v18 + 8 * v19++ + 32);
    if (v21)
    {
      v22 = v21;
      MEMORY[0x1DA74D470]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DA421D54();
      }

      result = sub_1DA421D84();
      v3 = v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeatureSetProvider.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

SiriSuggestionsIntelligence::EngagementModelTypes_optional __swiftcall EngagementModelTypes.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1DA422234();

  if (v1 == 1)
  {
    v2.value = SiriSuggestionsIntelligence_EngagementModelTypes_identityModel;
  }

  else
  {
    v2.value = SiriSuggestionsIntelligence_EngagementModelTypes_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t EngagementModelTypes.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x796142657669616ELL;
  }
}

SiriSuggestionsIntelligence::EngagementModelTypes_optional sub_1DA4189B8@<W0>(Swift::String *a1@<X0>, SiriSuggestionsIntelligence::EngagementModelTypes_optional *a2@<X8>)
{
  result.value = EngagementModelTypes.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1DA4189E8@<X0>(uint64_t *a1@<X8>)
{
  result = EngagementModelTypes.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *SiriSuggestionsIntelligence.EngagementEstimatorService.__allocating_init(classifier:modelName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[3] = a3;
  result[4] = a1;
  result[2] = a2;
  return result;
}

void *SiriSuggestionsIntelligence.EngagementEstimatorService.init(classifier:modelName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v3[4] = a1;
  v3[2] = a2;
  return v3;
}

Swift::String __swiftcall SiriSuggestionsIntelligence.EngagementEstimatorService.getEstimatorModelName()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id SiriSuggestionsIntelligence.EngagementEstimatorService.getScore(candidate:featureSetProvider:)(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA418644(a1, &unk_1F55E8098);
  v4 = *(v1 + 32);
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider();
  v5 = sub_1DA3D6124(v3, 0);

  if (!v2)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
    v16[0] = 0;
    v7 = [v4 predictionFromFeatures:v5 options:v6 error:v16];

    v8 = v16[0];
    if (v7)
    {
      ObjectType = swift_getObjectType();
      v10 = v8;
      v11 = MLFeatureProvider.getLikelihoodPredictions()(ObjectType);
      swift_unknownObjectRelease();
      v12 = (v11 + 48);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v4 = *v12;
        if (*(v12 - 2) != 0xD000000000000012 || 0x80000001DA42DC00 != *(v12 - 1))
        {
          v12 += 3;
          if ((sub_1DA4223A4() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v4 = 0;
LABEL_13:
    }

    else
    {
      v4 = v16[0];
      sub_1DA420FB4();

      swift_willThrow();
    }
  }

  return v4;
}

uint64_t SiriSuggestionsIntelligence.EngagementEstimatorService.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SiriSuggestionsIntelligence.EngagementEstimatorService.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.EngagementEstimatorService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t SiriSuggestionsIntelligence.IntelligenceFeatureSetService.__allocating_init(featureService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DA3A1FF8(a1, v2 + 16);
  return v2;
}

uint64_t SiriSuggestionsIntelligence.IntelligenceFeatureSetService.createFeatureSetProvider(candidates:generationId:environment:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA418D7C);
}

uint64_t sub_1DA418D7C()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1DA418EAC;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1DA418EAC(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DA418FAC);
}

uint64_t sub_1DA418FAC()
{
  v1 = *(v0 + 40);
  type metadata accessor for FeatureSetProvider();
  v2 = swift_allocObject();
  static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(v1);
  v4 = v3;

  *(v2 + 16) = v4;
  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t SiriSuggestionsIntelligence.IntelligenceFeatureSetService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1DA4190C0()
{
  result = qword_1ECBAFC48;
  if (!qword_1ECBAFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EngagementModelTypes(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA419238(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v2[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA4192FC);
}

uint64_t sub_1DA4192FC()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  *(v0 + 256) = v2;
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  *(v0 + 264) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  sub_1DA3A88F8(v1 + 24, v0 + 120, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (*(v0 + 144))
  {
    sub_1DA3A1FF8((v0 + 120), v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
    sub_1DA421934();
    sub_1DA421024();
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
    sub_1DA4210B4();
    v4 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    sub_1DA4210B4();
    v4 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v7 = *(v0 + 240);
  v8 = sub_1DA421A94();
  v9 = __swift_project_value_buffer(v8, static Logger.extractionCategory);
  v11 = OUTLINED_FUNCTION_57_0(v9, v10, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v11, v12, &qword_1ECBAFDA8, &qword_1DA42C180);
  v13 = sub_1DA421A74();
  v14 = sub_1DA421F64();
  v15 = OUTLINED_FUNCTION_33_1(v14);
  v16 = *(v0 + 240);
  if (v15)
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 216);
    swift_slowAlloc();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v7 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v17 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v17, v18, v19, v20);
    OUTLINED_FUNCTION_30_4();
    v21 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v22 = sub_1DA3A8CA8(v0 + 16, &qword_1ECBAFDA8, &qword_1DA42C180);
    OUTLINED_FUNCTION_31_3(v22, v23, v24, v25);
    OUTLINED_FUNCTION_53_1();
    *(v7 + 14) = v21;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v26, v27, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v16, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8(v0 + 16, &qword_1ECBAFDA8, &qword_1DA42C180);
  }

  v28 = *(v0 + 208);
  v29 = sub_1DA4210B4();
  v30 = OUTLINED_FUNCTION_15_5(v29);
  OUTLINED_FUNCTION_56_1(v30, v31, &qword_1ECBAE870, &qword_1DA4252E0);
  v32 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v33 = OUTLINED_FUNCTION_6_15();
  v34 = OUTLINED_FUNCTION_58_1(v33, sel_publisherWithOptions_);
  *(v0 + 272) = v34;

  v35 = swift_task_alloc();
  *(v0 + 280) = v35;
  v35[2] = v34;
  v35[3] = v2;
  v35[4] = v3;
  v35[5] = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 288) = v36;
  *v36 = v37;
  v36[1] = sub_1DA4196A0;
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v38, v39, v40, v41, v42, v43, v44, v45);
}

uint64_t sub_1DA4196A0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA4197A0()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);

  sub_1DA3A8CA8(v1, &qword_1ECBAE870, &qword_1DA4252E0);

  v3 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);

  *v2 = v7;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DA419884()
{
  v1[22] = v0;
  v1[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA419948);
}

uint64_t sub_1DA419948()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_46(v2);
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_17_7(v3);
  OUTLINED_FUNCTION_67_0(v4, v5, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v6 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    sub_1DA4210B4();
    v6 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v9 = OUTLINED_FUNCTION_50_1();
  v10 = __swift_project_value_buffer(v9, static Logger.extractionCategory);
  v12 = OUTLINED_FUNCTION_57_0(v10, v11, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v12, v13, &qword_1ECBAFD90, &qword_1DA42C160);
  v14 = sub_1DA421A74();
  v15 = sub_1DA421F64();
  v16 = OUTLINED_FUNCTION_33_1(v15);
  v17 = v0[26];
  if (v16)
  {
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v18 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v18, v19, v20, v21);
    OUTLINED_FUNCTION_30_4();
    v22 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v23 = sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD90, &qword_1DA42C160);
    OUTLINED_FUNCTION_31_3(v23, v24, v25, v26);
    OUTLINED_FUNCTION_53_1();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v27, v28, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v17, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD90, &qword_1DA42C160);
  }

  v29 = OUTLINED_FUNCTION_23_4();
  v30 = OUTLINED_FUNCTION_15_5(v29);
  OUTLINED_FUNCTION_56_1(v30, v31, &qword_1ECBAE870, &qword_1DA4252E0);
  v32 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v33 = OUTLINED_FUNCTION_6_15();
  v0[30] = OUTLINED_FUNCTION_58_1(v33, sel_publisherWithOptions_);

  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v35;
  *v35 = v36;
  v35[1] = sub_1DA419C2C;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_1DA419C2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA419D2C()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_65_0();
  sub_1DA3A8CA8(v0, &qword_1ECBAE870, &qword_1DA4252E0);

  v2 = *(v1 + 160);
  v3 = *(v1 + 168);

  OUTLINED_FUNCTION_41_0();

  return v4(v2, v3);
}

uint64_t sub_1DA419DE8()
{
  v1[24] = v0;
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA419EAC);
}

uint64_t sub_1DA419EAC()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_28_3();
  v1 = swift_allocObject();
  v0[30] = v1;
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_52_1();
  v2 = swift_allocObject();
  v0[31] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  OUTLINED_FUNCTION_67_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v4 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    sub_1DA4210B4();
    v4 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v7 = v0[28];
  v8 = sub_1DA421A94();
  v9 = __swift_project_value_buffer(v8, static Logger.extractionCategory);
  v11 = OUTLINED_FUNCTION_57_0(v9, v10, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v11, v12, &qword_1ECBAFD78, &qword_1DA42C140);
  v13 = sub_1DA421A74();
  v14 = sub_1DA421F64();
  v15 = OUTLINED_FUNCTION_33_1(v14);
  v16 = v0[28];
  if (v15)
  {
    v1 = v0[27];
    v2 = v0[25];
    swift_slowAlloc();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v7 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v17 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v17, v18, v19, v20);
    OUTLINED_FUNCTION_30_4();
    v21 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v22 = sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD78, &qword_1DA42C140);
    OUTLINED_FUNCTION_31_3(v22, v23, v24, v25);
    OUTLINED_FUNCTION_53_1();
    *(v7 + 14) = v21;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v26, v27, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v16, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD78, &qword_1DA42C140);
  }

  v28 = v0[24];
  v29 = sub_1DA4210B4();
  v30 = OUTLINED_FUNCTION_15_5(v29);
  OUTLINED_FUNCTION_56_1(v30, v31, &qword_1ECBAE870, &qword_1DA4252E0);
  v32 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v33 = OUTLINED_FUNCTION_6_15();
  v34 = OUTLINED_FUNCTION_58_1(v33, sel_publisherWithOptions_);
  v0[32] = v34;

  v35 = swift_task_alloc();
  v0[33] = v35;
  v35[2] = v34;
  v35[3] = v1;
  v35[4] = v2;
  v35[5] = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[34] = v36;
  *v36 = v37;
  v36[1] = sub_1DA41A1E8;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v38, v39, v40, v41, v42, v43, v44, v45);
}

uint64_t sub_1DA41A1E8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA41A2E8()
{
  v1 = *(v0 + 232);

  sub_1DA3A8CA8(v1, &qword_1ECBAE870, &qword_1DA4252E0);

  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);

  v6 = *(v0 + 8);

  return v6(v3, v2, v4, v5);
}

uint64_t sub_1DA41A3CC()
{
  v1[22] = v0;
  v1[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA41A490);
}

uint64_t sub_1DA41A490()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_46(v2);
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_17_7(v3);
  OUTLINED_FUNCTION_67_0(v4, v5, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v6 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    sub_1DA4210B4();
    v6 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v9 = OUTLINED_FUNCTION_50_1();
  v10 = __swift_project_value_buffer(v9, static Logger.extractionCategory);
  v12 = OUTLINED_FUNCTION_57_0(v10, v11, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v12, v13, &qword_1ECBAFD60, &qword_1DA42C120);
  v14 = sub_1DA421A74();
  v15 = sub_1DA421F64();
  v16 = OUTLINED_FUNCTION_33_1(v15);
  v17 = v0[26];
  if (v16)
  {
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v18 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v18, v19, v20, v21);
    OUTLINED_FUNCTION_30_4();
    v22 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v23 = sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD60, &qword_1DA42C120);
    OUTLINED_FUNCTION_31_3(v23, v24, v25, v26);
    OUTLINED_FUNCTION_53_1();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v27, v28, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v17, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD60, &qword_1DA42C120);
  }

  v29 = OUTLINED_FUNCTION_23_4();
  v30 = OUTLINED_FUNCTION_15_5(v29);
  OUTLINED_FUNCTION_56_1(v30, v31, &qword_1ECBAE870, &qword_1DA4252E0);
  v32 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v33 = OUTLINED_FUNCTION_6_15();
  v0[30] = OUTLINED_FUNCTION_58_1(v33, sel_publisherWithOptions_);

  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v35;
  *v35 = v36;
  v35[1] = sub_1DA419C2C;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_1DA41A774()
{
  v1[22] = v0;
  v1[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA41A838);
}

uint64_t sub_1DA41A838()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_46(v2);
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_17_7(v3);
  OUTLINED_FUNCTION_67_0(v4, v5, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v6 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    sub_1DA4210B4();
    v6 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v9 = OUTLINED_FUNCTION_50_1();
  v10 = __swift_project_value_buffer(v9, static Logger.extractionCategory);
  v12 = OUTLINED_FUNCTION_57_0(v10, v11, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v12, v13, &unk_1ECBAFD40, &unk_1DA42C0F0);
  v14 = sub_1DA421A74();
  v15 = sub_1DA421F64();
  v16 = OUTLINED_FUNCTION_33_1(v15);
  v17 = v0[26];
  if (v16)
  {
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v18 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v18, v19, v20, v21);
    OUTLINED_FUNCTION_30_4();
    v22 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v23 = sub_1DA3A8CA8((v0 + 2), &unk_1ECBAFD40, &unk_1DA42C0F0);
    OUTLINED_FUNCTION_31_3(v23, v24, v25, v26);
    OUTLINED_FUNCTION_53_1();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v27, v28, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v17, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &unk_1ECBAFD40, &unk_1DA42C0F0);
  }

  v29 = OUTLINED_FUNCTION_23_4();
  v30 = OUTLINED_FUNCTION_15_5(v29);
  OUTLINED_FUNCTION_56_1(v30, v31, &qword_1ECBAE870, &qword_1DA4252E0);
  v32 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v33 = OUTLINED_FUNCTION_6_15();
  v0[30] = OUTLINED_FUNCTION_58_1(v33, sel_publisherWithOptions_);

  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v35;
  *v35 = v36;
  v35[1] = sub_1DA41AB1C;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_1DA41AB1C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

void sub_1DA41AC1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFDB0, &qword_1DA42C188);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  sub_1DA3A88F8(a5, &v23, &qword_1ECBAFDA8, &qword_1DA42C180);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = v16;
  v17 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v17;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_1DA420844;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_121;
  v18 = _Block_copy(aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *&v25 = sub_1DA420990;
  *(&v25 + 1) = v19;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1DA42098C;
  *(&v24 + 1) = &block_descriptor_127;
  v20 = _Block_copy(&v23);

  v21 = [a2 sinkWithCompletion:v18 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v18);
}

void sub_1DA41AED8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD98, &qword_1DA42C168);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  sub_1DA3A88F8(a5, &v23, &qword_1ECBAFD90, &qword_1DA42C160);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = v16;
  v17 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v17;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_1DA4207EC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_103;
  v18 = _Block_copy(aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *&v25 = sub_1DA420814;
  *(&v25 + 1) = v19;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1DA42098C;
  *(&v24 + 1) = &block_descriptor_109;
  v20 = _Block_copy(&v23);

  v21 = [a2 sinkWithCompletion:v18 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v18);
}

void sub_1DA41B194(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD80, &qword_1DA42C148);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  sub_1DA3A88F8(a5, &v23, &qword_1ECBAFD78, &qword_1DA42C140);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = v16;
  v17 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v17;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_1DA4207B8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_85;
  v18 = _Block_copy(aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *&v25 = sub_1DA420990;
  *(&v25 + 1) = v19;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1DA42098C;
  *(&v24 + 1) = &block_descriptor_91;
  v20 = _Block_copy(&v23);

  v21 = [a2 sinkWithCompletion:v18 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v18);
}

void sub_1DA41B450(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD68, &qword_1DA42C128);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  sub_1DA3A88F8(a5, &v23, &qword_1ECBAFD60, &qword_1DA42C120);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = v16;
  v17 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v17;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_1DA42077C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_67;
  v18 = _Block_copy(aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *&v25 = sub_1DA420990;
  *(&v25 + 1) = v19;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1DA42098C;
  *(&v24 + 1) = &block_descriptor_73;
  v20 = _Block_copy(&v23);

  v21 = [a2 sinkWithCompletion:v18 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v18);
}

void sub_1DA41B70C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD50, &unk_1DA42C100);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  sub_1DA3A88F8(a5, &v23, &unk_1ECBAFD40, &unk_1DA42C0F0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = v16;
  v17 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v17;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_1DA42064C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *&v25 = sub_1DA420990;
  *(&v25 + 1) = v19;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1DA42098C;
  *(&v24 + 1) = &block_descriptor_55;
  v20 = _Block_copy(&v23);

  v21 = [a2 sinkWithCompletion:v18 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v18);
}

void sub_1DA41B9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v18 = *(a3 + 16);
    v19 = qword_1EE102E00;
    v20 = v7;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA421A94();
    __swift_project_value_buffer(v21, static Logger.extractionCategory);
    v22 = v20;
    v23 = sub_1DA421A74();
    v24 = sub_1DA421F64();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v22;
      v34[0] = v26;
      *v25 = 136315394;
      sub_1DA3A6990(0, &qword_1EE100F78, 0x1E698ECF8);
      v27 = v22;
      v28 = sub_1DA421BB4();
      v30 = sub_1DA3A5FE8(v28, v29, v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v18;
      _os_log_impl(&dword_1DA39E000, v23, v24, "BiomeLatestEventProcessor: Latest event: %s at: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1DA74E430](v26, -1, -1);
      MEMORY[0x1DA74E430](v25, -1, -1);
    }

    v31 = *(a4 + 8);
    v32 = v22;
    v31(v34, v18, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFDB0, &qword_1DA42C188);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v34, &qword_1ECBAFDA8, &qword_1DA42C180);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v13 = [v34[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v34, &qword_1ECBAFDA8, &qword_1DA42C180);
      v17 = sub_1DA3A5FE8(v14, v16, &v33);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v34, &qword_1ECBAFDA8, &qword_1DA42C180);
    }

    (*(a4 + 8))(v34, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFDB0, &qword_1DA42C188);
    sub_1DA421DF4();
  }
}

void sub_1DA41BDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v18 = *(a3 + 16);
    v19 = qword_1EE102E00;
    v20 = v7;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA421A94();
    __swift_project_value_buffer(v21, static Logger.extractionCategory);
    v22 = v20;
    v23 = sub_1DA421A74();
    v24 = sub_1DA421F64();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v22;
      v34[0] = v26;
      *v25 = 136315394;
      sub_1DA3A6990(0, &unk_1EE100F90, 0x1E698EDA0);
      v27 = v22;
      v28 = sub_1DA421BB4();
      v30 = sub_1DA3A5FE8(v28, v29, v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v18;
      _os_log_impl(&dword_1DA39E000, v23, v24, "BiomeLatestEventProcessor: Latest event: %s at: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1DA74E430](v26, -1, -1);
      MEMORY[0x1DA74E430](v25, -1, -1);
    }

    v31 = *(a4 + 8);
    v32 = v22;
    v31(v34, v18, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD98, &qword_1DA42C168);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v34, &qword_1ECBAFD90, &qword_1DA42C160);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v13 = [v34[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v34, &qword_1ECBAFD90, &qword_1DA42C160);
      v17 = sub_1DA3A5FE8(v14, v16, &v33);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v34, &qword_1ECBAFD90, &qword_1DA42C160);
    }

    (*(a4 + 8))(v34, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD98, &qword_1DA42C168);
    sub_1DA421DF4();
  }
}

void sub_1DA41C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v18 = *(a3 + 16);
    v19 = qword_1EE102E00;
    v20 = v7;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA421A94();
    __swift_project_value_buffer(v21, static Logger.extractionCategory);
    v22 = v20;
    v23 = sub_1DA421A74();
    v24 = sub_1DA421F64();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v22;
      v34[0] = v26;
      *v25 = 136315394;
      sub_1DA3A6990(0, &qword_1EE100F58, 0x1E698EFC8);
      v27 = v22;
      v28 = sub_1DA421BB4();
      v30 = sub_1DA3A5FE8(v28, v29, v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v18;
      _os_log_impl(&dword_1DA39E000, v23, v24, "BiomeLatestEventProcessor: Latest event: %s at: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1DA74E430](v26, -1, -1);
      MEMORY[0x1DA74E430](v25, -1, -1);
    }

    v31 = *(a4 + 8);
    v32 = v22;
    v31(v34, v18, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD80, &qword_1DA42C148);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v34, &qword_1ECBAFD78, &qword_1DA42C140);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v13 = [v34[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v34, &qword_1ECBAFD78, &qword_1DA42C140);
      v17 = sub_1DA3A5FE8(v14, v16, &v33);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v34, &qword_1ECBAFD78, &qword_1DA42C140);
    }

    (*(a4 + 8))(v34, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD80, &qword_1DA42C148);
    sub_1DA421DF4();
  }
}

void sub_1DA41C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v18 = *(a3 + 16);
    v19 = qword_1EE102E00;
    v20 = v7;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA421A94();
    __swift_project_value_buffer(v21, static Logger.extractionCategory);
    v22 = v20;
    v23 = sub_1DA421A74();
    v24 = sub_1DA421F64();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v22;
      v34[0] = v26;
      *v25 = 136315394;
      sub_1DA3A6990(0, &qword_1EE100080, 0x1E698EB50);
      v27 = v22;
      v28 = sub_1DA421BB4();
      v30 = sub_1DA3A5FE8(v28, v29, v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v18;
      _os_log_impl(&dword_1DA39E000, v23, v24, "BiomeLatestEventProcessor: Latest event: %s at: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1DA74E430](v26, -1, -1);
      MEMORY[0x1DA74E430](v25, -1, -1);
    }

    v31 = *(a4 + 8);
    v32 = v22;
    v31(v34, v18, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD68, &qword_1DA42C128);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v34, &qword_1ECBAFD60, &qword_1DA42C120);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v13 = [v34[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v34, &qword_1ECBAFD60, &qword_1DA42C120);
      v17 = sub_1DA3A5FE8(v14, v16, &v33);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v34, &qword_1ECBAFD60, &qword_1DA42C120);
    }

    (*(a4 + 8))(v34, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD68, &qword_1DA42C128);
    sub_1DA421DF4();
  }
}

void sub_1DA41C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v18 = *(a3 + 16);
    v19 = qword_1EE102E00;
    v20 = v7;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA421A94();
    __swift_project_value_buffer(v21, static Logger.extractionCategory);
    v22 = v20;
    v23 = sub_1DA421A74();
    v24 = sub_1DA421F64();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v22;
      v34[0] = v26;
      *v25 = 136315394;
      sub_1DA3A6990(0, &unk_1EE100F68, 0x1E698EC78);
      v27 = v22;
      v28 = sub_1DA421BB4();
      v30 = sub_1DA3A5FE8(v28, v29, v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v18;
      _os_log_impl(&dword_1DA39E000, v23, v24, "BiomeLatestEventProcessor: Latest event: %s at: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1DA74E430](v26, -1, -1);
      MEMORY[0x1DA74E430](v25, -1, -1);
    }

    v31 = *(a4 + 8);
    v32 = v22;
    v31(v34, v18, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD50, &unk_1DA42C100);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v34, &unk_1ECBAFD40, &unk_1DA42C0F0);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v13 = [v34[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v34, &unk_1ECBAFD40, &unk_1DA42C0F0);
      v17 = sub_1DA3A5FE8(v14, v16, &v33);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v34, &unk_1ECBAFD40, &unk_1DA42C0F0);
    }

    (*(a4 + 8))(v34, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD50, &unk_1DA42C100);
    sub_1DA421DF4();
  }
}

void sub_1DA41CDF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1DA74DD10]();
  sub_1DA41CE50((a2 + 16), a1, a3 + 16);
  objc_autoreleasePoolPop(v6);
}

void sub_1DA41CE50(void **a1, id a2, uint64_t a3)
{
  v6 = [a2 eventBody];
  swift_beginAccess();
  v7 = *a1;
  *a1 = v6;

  [a2 timestamp];
  v9 = v8;
  swift_beginAccess();
  *a3 = v9;
  *(a3 + 8) = 0;
}

void sub_1DA41CF0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1DA41CF74(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return OUTLINED_FUNCTION_2_15();
}

uint64_t sub_1DA41CF88()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[16];
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  v0[3] = sub_1DA420830;
  v0[4] = v1;
  OUTLINED_FUNCTION_18_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[17] = v4;
  *v4 = v5;
  v4[1] = sub_1DA41D068;

  return v7(v0 + 10);
}

uint64_t sub_1DA41D068()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;
  v4 = *(v1 + 120);
  v5 = *v0;
  *v3 = *v0;

  sub_1DA3A8CA8(v2 + 16, &qword_1ECBAFDA8, &qword_1DA42C180);
  v7 = *(v2 + 80);
  v6 = *(v2 + 96);
  *(v4 + 32) = *(v1 + 112);
  *v4 = v7;
  *(v4 + 16) = v6;
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1DA41D1B8()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA420638;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8();

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D284()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v8 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  sub_1DA3A8CA8(v6 + 16, &qword_1ECBAFD90, &qword_1DA42C160);
  OUTLINED_FUNCTION_41_0();

  return v10(v4, v2);
}

uint64_t sub_1DA41D3A4()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA4207A4;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8();

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D470()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  OUTLINED_FUNCTION_13_0();
  *v11 = v10;
  v12 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v13 = v12;

  sub_1DA3A8CA8(v10 + 16, &qword_1ECBAFD78, &qword_1DA42C140);
  v14 = *(v12 + 8);

  return v14(v8, v6, v4, v2);
}

uint64_t sub_1DA41D5AC()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA42068C;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8();

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D678()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v8 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  sub_1DA3A8CA8(v6 + 16, &qword_1ECBAFD60, &qword_1DA42C120);
  OUTLINED_FUNCTION_41_0();

  return v10(v4, v2 & 1);
}

uint64_t sub_1DA41D7A4()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA420638;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8();

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D870()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v8 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  sub_1DA3A8CA8(v6 + 16, &unk_1ECBAFD40, &unk_1DA42C0F0);
  OUTLINED_FUNCTION_41_0();

  return v10(v4, v2);
}

double sub_1DA41D97C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  (*(a1 + 24))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1DA41DA50()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1DA41DAF4;

  return sub_1DA41D784();
}

uint64_t sub_1DA41DAF4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;
  *(v1 + 25) = v4;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1DA41DBE4()
{
  v16 = v0;
  if (qword_1EE102CB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  __swift_project_value_buffer(v1, static Logger.intelligenceCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    v8 = sub_1DA421BB4();
    v10 = sub_1DA3A5FE8(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DA39E000, v2, v3, "LocationService:: Got Location as: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_53_0();
    MEMORY[0x1DA74E430](v6, -1, -1);
  }

  OUTLINED_FUNCTION_41_0();
  v12 = *(v0 + 48);
  v13 = *(v0 + 25);

  return v11(v12, v13);
}

uint64_t sub_1DA41DD70()
{
  v0 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v1 = [v0 Semantic];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  sub_1DA41DE04(v1);
  return v2;
}

uint64_t sub_1DA41DE04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD30, &qword_1DA42C0C8);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = sub_1DA41DE6C;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v1 + 16) = v3;
  return v1;
}

void sub_1DA41DE6C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
    if ([v5 starting])
    {
      v6 = [v5 userSpecificPlaceType];

      switch(v6)
      {
        case 1u:
          *a3 = a1;
          *(a3 + 8) = 0;
          break;
        case 2u:
          *a3 = a1;
          v7 = 1;
          goto LABEL_7;
        case 3u:
          *a3 = a1;
          v7 = 3;
          goto LABEL_7;
        case 4u:
          *a3 = a1;
          v7 = 2;
          goto LABEL_7;
        default:
          goto LABEL_6;
      }

      return;
    }
  }

LABEL_6:
  *a3 = 0;
  v7 = 4;
LABEL_7:
  *(a3 + 8) = v7;
}

uint64_t SiriSuggestionsIntelligence.LocationService.__deallocating_deinit()
{

  OUTLINED_FUNCTION_28_3();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DA41DF8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701670760 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1802661751 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7174503 && a2 == 0xE300000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6F6F686373 && a2 == 0xE600000000000000;
        if (v8 || (sub_1DA4223A4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA4223A4();

          if (v10)
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

uint64_t sub_1DA41E130(char a1)
{
  result = 1701670760;
  switch(a1)
  {
    case 1:
      result = 1802661751;
      break;
    case 2:
      result = 7174503;
      break;
    case 3:
      result = 0x6C6F6F686373;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA41E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA41DF8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA41E1DC(uint64_t a1)
{
  v2 = sub_1DA41EAB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E218(uint64_t a1)
{
  v2 = sub_1DA41EAB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E254(uint64_t a1)
{
  v2 = sub_1DA41EC04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E290(uint64_t a1)
{
  v2 = sub_1DA41EC04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E2CC(uint64_t a1)
{
  v2 = sub_1DA41ECAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E308(uint64_t a1)
{
  v2 = sub_1DA41ECAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E344(uint64_t a1)
{
  v2 = sub_1DA41EB5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E380(uint64_t a1)
{
  v2 = sub_1DA41EB5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E3BC(uint64_t a1)
{
  v2 = sub_1DA41EB08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E3F8(uint64_t a1)
{
  v2 = sub_1DA41EB08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E434(uint64_t a1)
{
  v2 = sub_1DA41EC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E470(uint64_t a1)
{
  v2 = sub_1DA41EC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.SemanticLocation.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_17;
      }

      v6 = *&a1;
      v7 = *&a3;
      goto LABEL_16;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 3:
      if (a4 == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 4:
      if (a4 != 4 || a3 != 0)
      {
        goto LABEL_17;
      }

      result = 1;
      break;
    default:
      if (a4)
      {
LABEL_17:
        result = 0;
      }

      else
      {
LABEL_13:
        v6 = *&a1;
        v7 = *&a3;
LABEL_16:
        result = v6 == v7;
      }

      break;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.SemanticLocation.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC50, &qword_1DA42B7C0);
  OUTLINED_FUNCTION_3_1();
  v62 = v5;
  v63 = v4;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_5();
  v59 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC58, &qword_1DA42B7C8);
  OUTLINED_FUNCTION_3_1();
  v60 = v9;
  v61 = v8;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_5();
  v58 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC60, &qword_1DA42B7D0);
  OUTLINED_FUNCTION_3_1();
  v56 = v13;
  v57 = v12;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC68, &qword_1DA42B7D8);
  OUTLINED_FUNCTION_3_1();
  v55 = v18;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC70, &qword_1DA42B7E0);
  OUTLINED_FUNCTION_3_1();
  v54 = v21;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC78, &qword_1DA42B7E8);
  OUTLINED_FUNCTION_3_1();
  v66 = v26;
  v67 = v25;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v27);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA41EAB4();
  sub_1DA422494();
  switch(v65)
  {
    case 1:
      v68[0] = 1;
      v50 = sub_1DA41EC58();
      OUTLINED_FUNCTION_21_6(&_s16SemanticLocationO14WorkCodingKeysON, v68, v51, v52, v50);
      OUTLINED_FUNCTION_66_0();
      sub_1DA422334();
      v44 = OUTLINED_FUNCTION_39_1();
      v49 = v17;
      goto LABEL_8;
    case 2:
      v68[0] = 2;
      v39 = sub_1DA41EC04();
      OUTLINED_FUNCTION_21_6(&_s16SemanticLocationO13GymCodingKeysON, v68, v40, v41, v39);
      OUTLINED_FUNCTION_66_0();
      v42 = v57;
      sub_1DA422334();
      v43 = *(v56 + 8);
      v44 = v16;
      goto LABEL_6;
    case 3:
      v68[0] = 3;
      v45 = sub_1DA41EB5C();
      v46 = v58;
      OUTLINED_FUNCTION_21_6(&_s16SemanticLocationO16SchoolCodingKeysON, v68, v47, v48, v45);
      OUTLINED_FUNCTION_66_0();
      v42 = v61;
      sub_1DA422334();
      v43 = *(v60 + 8);
      v44 = v46;
LABEL_6:
      v49 = v42;
LABEL_8:
      v43(v44, v49);
      v29 = OUTLINED_FUNCTION_44_0();
      v31 = v24;
      return v30(v29, v31);
    case 4:
      v68[0] = 4;
      v32 = sub_1DA41EB08();
      v33 = v59;
      OUTLINED_FUNCTION_21_6(&_s16SemanticLocationO17UnknownCodingKeysON, v68, v34, v35, v32);
      (*(v62 + 8))(v33, v63);
      v36 = OUTLINED_FUNCTION_44_0();
      return v37(v36, v24);
    default:
      v68[0] = 0;
      sub_1DA41ECAC();
      v28 = v67;
      sub_1DA4222D4();
      OUTLINED_FUNCTION_66_0();
      sub_1DA422334();
      (*(v54 + 8))(v24, v20);
      v29 = OUTLINED_FUNCTION_44_0();
      v31 = v28;
      return v30(v29, v31);
  }
}

unint64_t sub_1DA41EAB4()
{
  result = qword_1EE102310;
  if (!qword_1EE102310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102310);
  }

  return result;
}

unint64_t sub_1DA41EB08()
{
  result = qword_1EE1022A8;
  if (!qword_1EE1022A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022A8);
  }

  return result;
}

unint64_t sub_1DA41EB5C()
{
  result = qword_1ECBAFC80;
  if (!qword_1ECBAFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC80);
  }

  return result;
}

unint64_t sub_1DA41EBB0()
{
  result = qword_1EE101AA8;
  if (!qword_1EE101AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AA8);
  }

  return result;
}

unint64_t sub_1DA41EC04()
{
  result = qword_1ECBAFC90;
  if (!qword_1ECBAFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC90);
  }

  return result;
}

unint64_t sub_1DA41EC58()
{
  result = qword_1ECBAFC98;
  if (!qword_1ECBAFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC98);
  }

  return result;
}

unint64_t sub_1DA41ECAC()
{
  result = qword_1EE1022E0;
  if (!qword_1EE1022E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022E0);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.SemanticLocation.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCA8, &qword_1DA42B7F0);
  OUTLINED_FUNCTION_3_1();
  v63 = v2;
  v64 = v3;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_5();
  v69 = v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCB0, &qword_1DA42B7F8);
  OUTLINED_FUNCTION_3_1();
  v65 = v6;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_5();
  v66 = v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCB8, &qword_1DA42B800);
  OUTLINED_FUNCTION_3_1();
  v67 = v9;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_5();
  v68 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCC0, &qword_1DA42B808);
  OUTLINED_FUNCTION_3_1();
  v59[5] = v13;
  v60 = v12;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCC8, &qword_1DA42B810);
  OUTLINED_FUNCTION_3_1();
  v59[4] = v18;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFCD0, &unk_1DA42B818);
  OUTLINED_FUNCTION_3_1();
  v24 = v23;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v59 - v26;
  v28 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1DA41EAB4();
  v29 = v71;
  sub_1DA422484();
  if (v29)
  {
    goto LABEL_9;
  }

  v59[0] = v17;
  v59[1] = v21;
  v59[2] = v16;
  v59[3] = 0;
  v30 = v68;
  v31 = v69;
  v71 = v24;
  sub_1DA4222C4();
  result = sub_1DA3C2AA0();
  v36 = v22;
  if (v34 == v35 >> 1)
  {
LABEL_8:
    v24 = sub_1DA4220F4();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v46 = &type metadata for SiriSuggestionsIntelligence.SemanticLocation;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v24 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_39_1();
    v48(v47, v36);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v70);
    return v24;
  }

  if (v34 < (v35 >> 1))
  {
    v37 = v22;
    v38 = *(v33 + v34);
    sub_1DA3C2A9C();
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      v43 = v67;
      switch(v38)
      {
        case 1:
          LOBYTE(v72) = 1;
          sub_1DA41EC58();
          OUTLINED_FUNCTION_8_17(&_s16SemanticLocationO14WorkCodingKeysON, &v72);
          sub_1DA41FBE0();
          v44 = v60;
          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_45_1();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 2:
          LOBYTE(v72) = 2;
          sub_1DA41EC04();
          OUTLINED_FUNCTION_8_17(&_s16SemanticLocationO13GymCodingKeysON, &v72);
          v52 = v38;
          sub_1DA41FBE0();
          v53 = v62;
          sub_1DA4222B4();
          swift_unknownObjectRelease();
          (*(v43 + 8))(v30, v53);
          v54 = OUTLINED_FUNCTION_10_11();
          v55(v54, v52);
          goto LABEL_16;
        case 3:
          LOBYTE(v72) = 3;
          sub_1DA41EB5C();
          OUTLINED_FUNCTION_8_17(&_s16SemanticLocationO16SchoolCodingKeysON, &v72);
          sub_1DA41FBE0();
          v49 = v61;
          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_45_1();
          swift_unknownObjectRelease();
          v56 = OUTLINED_FUNCTION_39_1();
          v58 = v49;
          goto LABEL_15;
        case 4:
          LOBYTE(v72) = 4;
          sub_1DA41EB08();
          OUTLINED_FUNCTION_8_17(&_s16SemanticLocationO17UnknownCodingKeysON, &v72);
          swift_unknownObjectRelease();
          (*(v64 + 8))(v31, v63);
          v50 = OUTLINED_FUNCTION_10_11();
          v51(v50, v38);
          v24 = 0;
          goto LABEL_9;
        default:
          LOBYTE(v72) = 0;
          sub_1DA41ECAC();
          OUTLINED_FUNCTION_8_17(&_s16SemanticLocationO14HomeCodingKeysON, &v72);
          sub_1DA41FBE0();
          v44 = v59[0];
          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_45_1();
          swift_unknownObjectRelease();
LABEL_14:
          v56 = OUTLINED_FUNCTION_39_1();
          v58 = v44;
LABEL_15:
          v57(v56, v58);
          MEMORY[8](v27, v38);
LABEL_16:
          v24 = v72;
          break;
      }

      goto LABEL_9;
    }

    v36 = v37;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA41F564(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA4223A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA41F600@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = SiriSuggestionsIntelligence.SemanticLocation.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1DA41F66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA41F564(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA41F698(uint64_t a1)
{
  v2 = sub_1DA41FC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41F6D4(uint64_t a1)
{
  v2 = sub_1DA41FC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.SemanticLocationDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFCE8, &qword_1DA42B828);
  OUTLINED_FUNCTION_3_1();
  v4 = v3;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA41FC34();
  sub_1DA422494();
  sub_1DA422314();
  return (*(v4 + 8))(v7, v2);
}

double SiriSuggestionsIntelligence.SemanticLocationDetails.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCF8, &qword_1DA42B830);
  OUTLINED_FUNCTION_3_1();
  v6 = v5;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA41FC34();
  sub_1DA422484();
  if (!v1)
  {
    sub_1DA422294();
    v2 = v10;
    (*(v6 + 8))(v9, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void sub_1DA41F984(void *a1@<X0>, double *a2@<X8>)
{
  v4 = SiriSuggestionsIntelligence.SemanticLocationDetails.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

id sub_1DA41F9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DA4210B4();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DA421064();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DA421064();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

double sub_1DA41FB14@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1DA41D97C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1DA41FB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DA41D9C4(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t sub_1DA41FB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1DA41DA00(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

uint64_t sub_1DA41FBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DA41D9C4(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1DA41FBE0()
{
  result = qword_1ECBAFCE0;
  if (!qword_1ECBAFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFCE0);
  }

  return result;
}

unint64_t sub_1DA41FC34()
{
  result = qword_1EE101AC0;
  if (!qword_1EE101AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AC0);
  }

  return result;
}

uint64_t _s16SemanticLocationOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s16SemanticLocationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DA41FD30(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DA41FD48(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *_s16SemanticLocationO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DA41FE9C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA41FF5C()
{
  result = qword_1ECBAFD00;
  if (!qword_1ECBAFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD00);
  }

  return result;
}

unint64_t sub_1DA41FFB4()
{
  result = qword_1ECBAFD08;
  if (!qword_1ECBAFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD08);
  }

  return result;
}

unint64_t sub_1DA42000C()
{
  result = qword_1ECBAFD10;
  if (!qword_1ECBAFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD10);
  }

  return result;
}

unint64_t sub_1DA420064()
{
  result = qword_1ECBAFD18;
  if (!qword_1ECBAFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD18);
  }

  return result;
}

unint64_t sub_1DA4200BC()
{
  result = qword_1ECBAFD20;
  if (!qword_1ECBAFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD20);
  }

  return result;
}

unint64_t sub_1DA420114()
{
  result = qword_1ECBAFD28;
  if (!qword_1ECBAFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD28);
  }

  return result;
}

unint64_t sub_1DA42016C()
{
  result = qword_1EE101AB0;
  if (!qword_1EE101AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AB0);
  }

  return result;
}

unint64_t sub_1DA4201C4()
{
  result = qword_1EE101AB8;
  if (!qword_1EE101AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AB8);
  }

  return result;
}

unint64_t sub_1DA42021C()
{
  result = qword_1EE1022D0;
  if (!qword_1EE1022D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022D0);
  }

  return result;
}

unint64_t sub_1DA420274()
{
  result = qword_1EE1022D8;
  if (!qword_1EE1022D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022D8);
  }

  return result;
}

unint64_t sub_1DA4202CC()
{
  result = qword_1EE1022C0;
  if (!qword_1EE1022C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022C0);
  }

  return result;
}

unint64_t sub_1DA420324()
{
  result = qword_1EE1022C8;
  if (!qword_1EE1022C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022C8);
  }

  return result;
}

unint64_t sub_1DA42037C()
{
  result = qword_1EE1022F0;
  if (!qword_1EE1022F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022F0);
  }

  return result;
}

unint64_t sub_1DA4203D4()
{
  result = qword_1EE1022F8;
  if (!qword_1EE1022F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022F8);
  }

  return result;
}

unint64_t sub_1DA42042C()
{
  result = qword_1EE1022B0;
  if (!qword_1EE1022B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022B0);
  }

  return result;
}

unint64_t sub_1DA420484()
{
  result = qword_1EE1022B8;
  if (!qword_1EE1022B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022B8);
  }

  return result;
}

unint64_t sub_1DA4204DC()
{
  result = qword_1EE102290;
  if (!qword_1EE102290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102290);
  }

  return result;
}

unint64_t sub_1DA420534()
{
  result = qword_1EE102298;
  if (!qword_1EE102298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102298);
  }

  return result;
}

unint64_t sub_1DA42058C()
{
  result = qword_1EE102300;
  if (!qword_1EE102300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102300);
  }

  return result;
}

unint64_t sub_1DA4205E4()
{
  result = qword_1EE102308;
  if (!qword_1EE102308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102308);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_48Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  }

  v9 = (v6 + 96) & ~v6;
  (*(v5 + 8))(v2 + v9, v3);

  return MEMORY[0x1EEE6BDD0](v2, v9 + v8, v6 | 7);
}

uint64_t sub_1DA42086C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v4 + ((*(v6 + 80) + 96) & ~*(v6 + 80));

  return a4(a1, v7, v8, v4 + 32, v9);
}

uint64_t objectdestroy_51Tm()
{

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

double OUTLINED_FUNCTION_5_16()
{
  sub_1DA3A1FF8((v0 + 80), v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));

  sub_1DA421934();
  return result;
}

id OUTLINED_FUNCTION_6_15()
{

  return sub_1DA41F9D8(v0, v1, 1, 1, 0);
}

uint64_t OUTLINED_FUNCTION_7_17()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2080;
  return *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2)
{

  return sub_1DA422244();
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return sub_1DA3A8CA8(v2, v0, v1);
}

unint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DA3A5FE8(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1DA3A88F8(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t result)
{
  *(v1 + 232) = result;
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

id OUTLINED_FUNCTION_18_8()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA4222D4();
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_1DA4210B4();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_26_3(void *result)
{
  *(v2 + 248) = result;
  result[2] = v1;
  result[3] = v4;
  result[4] = v5;
  result[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_4()
{
}

unint64_t OUTLINED_FUNCTION_31_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DA3A5FE8(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_33_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t result)
{
  *(v1 + 224) = result;
  *(result + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_1DA421A94();
}

void *OUTLINED_FUNCTION_51_1()
{

  return sub_1DA4222B4();
}

uint64_t OUTLINED_FUNCTION_53_1()
{
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_1DA421BB4();
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v5, v4 + 16, a3, a4);
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4, v5, a3, a4);
}

id OUTLINED_FUNCTION_58_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_59_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4 + 40, v5 + 40, a3, a4);
}

void OUTLINED_FUNCTION_60_0()
{
}

uint64_t OUTLINED_FUNCTION_62_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 120));

  return sub_1DA4210B4();
}

void OUTLINED_FUNCTION_65_0()
{
  v2 = *(v0 + 240);
}

unint64_t OUTLINED_FUNCTION_66_0()
{
  *(v0 - 72) = *(v0 - 120);

  return sub_1DA41EBB0();
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4 + 24, v5 + 80, a3, a4);
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}
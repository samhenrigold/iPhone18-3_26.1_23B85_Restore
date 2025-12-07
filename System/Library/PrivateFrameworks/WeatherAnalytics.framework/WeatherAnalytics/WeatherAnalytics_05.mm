unint64_t sub_220C5D1F8()
{
  result = qword_27CF7C910;
  if (!qword_27CF7C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C910);
  }

  return result;
}

unint64_t sub_220C5D250()
{
  result = qword_27CF7C918;
  if (!qword_27CF7C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C918);
  }

  return result;
}

unint64_t sub_220C5D2A8()
{
  result = qword_27CF7C920;
  if (!qword_27CF7C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C920);
  }

  return result;
}

uint64_t sub_220C5D3C4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C940);
  __swift_project_value_buffer(v0, qword_27CF7C940);
  return sub_220CA0244();
}

uint64_t ReverseGeocodingEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C958, &qword_220CAB080);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ReverseGeocodingEvent.data.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C958, &qword_220CAB080);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ReverseGeocodingEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReverseGeocodingEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReverseGeocodingEvent.timedData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for ReverseGeocodingEvent(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*ReverseGeocodingEvent.timedData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReverseGeocodingEvent(v0);
  return nullsub_1;
}

uint64_t ReverseGeocodingEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReverseGeocodingEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReverseGeocodingEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for ReverseGeocodingEvent(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*ReverseGeocodingEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for ReverseGeocodingEvent(v0);
  return nullsub_1;
}

uint64_t ReverseGeocodingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C958, &qword_220CAB080);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for ReverseGeocodingEvent(0);
  v5 = *(v4 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t ReverseGeocodingEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReverseGeocodingEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReverseGeocodingEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReverseGeocodingEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ReverseGeocodingEvent.Model.init(data:timedData:privateUserData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 4);
  v9 = *(a3 + 20);
  *a4 = *a1;
  v10 = type metadata accessor for ReverseGeocodingEvent.Model(0);
  v11 = *(v10 + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  result = (*(v12 + 32))(&a4[v11], a2);
  v14 = &a4[*(v10 + 24)];
  *v14 = v6;
  *(v14 + 1) = v7;
  *(v14 + 4) = v8;
  v14[20] = v9;
  return result;
}

uint64_t sub_220C5DA6C(uint64_t a1)
{
  v2 = sub_220C5DD04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C5DAA8(uint64_t a1)
{
  v2 = sub_220C5DD04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C960, &qword_220CAB088);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C5DD04();
  sub_220CA1254();
  LOBYTE(v18) = *v3;
  v22 = 0;
  sub_220C3F804();
  sub_220CA1104();
  if (!v2)
  {
    v11 = type metadata accessor for ReverseGeocodingEvent.Model(0);
    LOBYTE(v18) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80, MEMORY[0x277CEAED8]);
    sub_220CA1104();
    v12 = &v3[*(v11 + 24)];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 4);
    LOBYTE(v12) = v12[20];
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = v12;
    v22 = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C5DD04()
{
  result = qword_27CF7C968;
  if (!qword_27CF7C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C968);
  }

  return result;
}

uint64_t ReverseGeocodingEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v29 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C970, &qword_220CAB090);
  OUTLINED_FUNCTION_3();
  v30 = v7;
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ReverseGeocodingEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C5DD04();
  v13 = v33;
  sub_220CA1234();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v14 = v31;
  v38 = 0;
  sub_220C3F7AC();
  sub_220CA1034();
  v27 = v12;
  *v12 = v34;
  LOBYTE(v34) = 1;
  sub_220C315AC(&qword_2812D0D78, MEMORY[0x277CEAEE0]);
  v15 = v6;
  sub_220CA1034();
  v16 = *(v29 + 32);
  v17 = v27;
  v26 = *(v9 + 20);
  v16(&v27[v26], v15, v14);
  v38 = 2;
  sub_220BFF730();
  sub_220CA1034();
  v18 = OUTLINED_FUNCTION_3_14();
  v19(v18);
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v17 + *(v9 + 24);
  *v23 = v34;
  *(v23 + 8) = v20;
  *(v23 + 16) = v21;
  *(v23 + 20) = v22;
  sub_220C5E0CC(v17, v28);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_220C5E130(v17);
}

uint64_t sub_220C5E0CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodingEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C5E130(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodingEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C5E1F4(uint64_t a1)
{
  sub_220C5E300(319, &qword_2812D0E68, sub_220C3F7AC, sub_220C3F804, &type metadata for ReverseGeocodingEventData);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C5E300(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C5E300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C5E3A4(uint64_t a1)
{
  result = sub_220CA04D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C5E508()
{
  result = qword_27CF7C988;
  if (!qword_27CF7C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C988);
  }

  return result;
}

unint64_t sub_220C5E560()
{
  result = qword_27CF7C990;
  if (!qword_27CF7C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C990);
  }

  return result;
}

unint64_t sub_220C5E5B8()
{
  result = qword_27CF7C998;
  if (!qword_27CF7C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C998);
  }

  return result;
}

uint64_t sub_220C5E658(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000220CB5830 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C5E6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C5E658(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C5E724(uint64_t a1)
{
  v2 = sub_220C5E8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C5E760(uint64_t a1)
{
  v2 = sub_220C5E8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElevatedViewData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C9A0, &qword_220CAB2A0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C5E8DC();
  sub_220CA1254();
  v12 = v9;
  sub_220C5E930();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C5E8DC()
{
  result = qword_27CF7C9A8;
  if (!qword_27CF7C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9A8);
  }

  return result;
}

unint64_t sub_220C5E930()
{
  result = qword_27CF7C9B0;
  if (!qword_27CF7C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9B0);
  }

  return result;
}

uint64_t ElevatedViewData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C9B8, &qword_220CAB2A8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C5E8DC();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C5EAE4();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C5EAE4()
{
  result = qword_27CF7C9C0;
  if (!qword_27CF7C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ElevatedViewData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ElevatedViewData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C5ECFC()
{
  result = qword_27CF7C9C8;
  if (!qword_27CF7C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9C8);
  }

  return result;
}

unint64_t sub_220C5ED54()
{
  result = qword_27CF7C9D0;
  if (!qword_27CF7C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9D0);
  }

  return result;
}

unint64_t sub_220C5EDAC()
{
  result = qword_27CF7C9D8;
  if (!qword_27CF7C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9D8);
  }

  return result;
}

WeatherAnalytics::ElevatedViewType_optional __swiftcall ElevatedViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ElevatedViewType.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6C41657265766573;
      break;
    case 3:
      result = 0x696C617551726961;
      break;
    case 4:
      result = 0x6B694C736C656566;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C5EF10()
{
  result = qword_27CF7C9E0;
  if (!qword_27CF7C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9E0);
  }

  return result;
}

unint64_t sub_220C5EF88@<X0>(unint64_t *a1@<X8>)
{
  result = ElevatedViewType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ElevatedViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C5F13C()
{
  result = qword_27CF7C9E8;
  if (!qword_27CF7C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9E8);
  }

  return result;
}

WeatherAnalytics::DescriptionFeedbackData __swiftcall DescriptionFeedbackData.init(pleasantReport:unpleasantReport:hotReport:chillyReport:muggyReport:dryReport:windyReport:calmReport:)(Swift::Bool pleasantReport, Swift::Bool unpleasantReport, Swift::Bool hotReport, Swift::Bool chillyReport, Swift::Bool muggyReport, Swift::Bool dryReport, Swift::Bool windyReport, Swift::Bool calmReport)
{
  *v8 = pleasantReport;
  v8[1] = unpleasantReport;
  v8[2] = hotReport;
  v8[3] = chillyReport;
  v8[4] = muggyReport;
  v8[5] = dryReport;
  v8[6] = windyReport;
  v8[7] = calmReport;
  result.pleasantReport = pleasantReport;
  return result;
}

uint64_t sub_220C5F33C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E617361656C70 && a2 == 0xEE0074726F706552;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000220CB5850 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F706552746F68 && a2 == 0xE900000000000074;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552796C6C696863 && a2 == 0xEC00000074726F70;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706552796767756DLL && a2 == 0xEB0000000074726FLL;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x726F706552797264 && a2 == 0xE900000000000074;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x70655279646E6977 && a2 == 0xEB0000000074726FLL;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6F7065526D6C6163 && a2 == 0xEA00000000007472)
              {

                return 7;
              }

              else
              {
                v13 = sub_220CA1154();

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

uint64_t sub_220C5F5E4(char a1)
{
  result = 0x746E617361656C70;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      v4 = 1383362408;
      return v4 | 0x726F706500000000;
    case 3:
      return 0x6552796C6C696863;
    case 4:
      v3 = 1734833517;
      goto LABEL_10;
    case 5:
      v4 = 1383690852;
      return v4 | 0x726F706500000000;
    case 6:
      v3 = 1684957559;
LABEL_10:
      result = v3 | 0x7065527900000000;
      break;
    case 7:
      result = 0x6F7065526D6C6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C5F6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C5F33C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C5F708(uint64_t a1)
{
  v2 = sub_220C5F9AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C5F744(uint64_t a1)
{
  v2 = sub_220C5F9AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DescriptionFeedbackData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C9F0, &qword_220CAB5E0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = v1[1];
  v23 = v1[2];
  v24 = v8;
  v9 = v1[3];
  v21 = v1[4];
  v22 = v9;
  HIDWORD(v20) = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_220C5F9AC();
  sub_220CA1254();
  v32[1] = 0;
  v16 = v25;
  sub_220CA10D4();
  if (!v16)
  {
    v18 = v22;
    v17 = v23;
    v32[0] = 1;
    OUTLINED_FUNCTION_1_19(v24, v32);
    v31 = 2;
    OUTLINED_FUNCTION_1_19(v17, &v31);
    v30 = 3;
    OUTLINED_FUNCTION_1_19(v18, &v30);
    v29 = 4;
    OUTLINED_FUNCTION_1_19(v21, &v29);
    v28 = 5;
    OUTLINED_FUNCTION_1_19(HIDWORD(v20), &v28);
    v27 = 6;
    OUTLINED_FUNCTION_1_19(v10, &v27);
    v26 = 7;
    OUTLINED_FUNCTION_1_19(v11, &v26);
  }

  return (*(v4 + 8))(v7, v15);
}

unint64_t sub_220C5F9AC()
{
  result = qword_27CF7C9F8;
  if (!qword_27CF7C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C9F8);
  }

  return result;
}

uint64_t DescriptionFeedbackData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA00, &qword_220CAB5E8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C5F9AC();
  sub_220CA1234();
  if (!v2)
  {
    v34 = 0;
    v11 = OUTLINED_FUNCTION_0_17(&v34);
    v33 = 1;
    v12 = OUTLINED_FUNCTION_0_17(&v33);
    v32 = 2;
    v26 = OUTLINED_FUNCTION_0_17(&v32);
    v31 = 3;
    v25 = OUTLINED_FUNCTION_0_17(&v31);
    v30 = 4;
    v24 = OUTLINED_FUNCTION_0_17(&v30);
    v29 = 5;
    v23 = OUTLINED_FUNCTION_0_17(&v29);
    v28 = 6;
    v22 = OUTLINED_FUNCTION_0_17(&v28);
    v27 = 7;
    v13 = OUTLINED_FUNCTION_0_17(&v27);
    HIDWORD(v20) = v12 & 1;
    v21 = v11 & 1;
    v25 &= 1u;
    v26 &= 1u;
    v24 &= 1u;
    v15 = v23 & 1;
    v16 = v22 & 1;
    v17 = v13;
    (*(v7 + 8))(v10, v5);
    v18 = BYTE4(v20);
    *a2 = v21;
    a2[1] = v18;
    v19 = v25;
    a2[2] = v26;
    a2[3] = v19;
    a2[4] = v24;
    a2[5] = v15;
    a2[6] = v16;
    a2[7] = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C5FC90()
{
  result = qword_27CF7CA08;
  if (!qword_27CF7CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA08);
  }

  return result;
}

unint64_t sub_220C5FCE8()
{
  result = qword_27CF7CA10;
  if (!qword_27CF7CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DescriptionFeedbackData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[8])
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

uint64_t storeEnumTagSinglePayload for DescriptionFeedbackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DescriptionFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C5FEF4()
{
  result = qword_27CF7CA18;
  if (!qword_27CF7CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA18);
  }

  return result;
}

unint64_t sub_220C5FF4C()
{
  result = qword_27CF7CA20;
  if (!qword_27CF7CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA20);
  }

  return result;
}

unint64_t sub_220C5FFA4()
{
  result = qword_27CF7CA28;
  if (!qword_27CF7CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA28);
  }

  return result;
}

WeatherAnalytics::TemperatureScale_optional __swiftcall TemperatureScale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C60064()
{
  result = qword_27CF7CA30;
  if (!qword_27CF7CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScale(_BYTE *result, unsigned int a2, unsigned int a3)
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

WeatherAnalytics::NetworkEventType_optional __swiftcall NetworkEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NetworkEventType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 7562359;
      break;
    case 2:
      result = 6518644;
      break;
    case 3:
      result = 0x6C7265764F70616DLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C60314()
{
  result = qword_27CF7CA38;
  if (!qword_27CF7CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA38);
  }

  return result;
}

unint64_t sub_220C6038C@<X0>(unint64_t *a1@<X8>)
{
  result = NetworkEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkEventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C60540()
{
  result = qword_2812D01E8;
  if (!qword_2812D01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01E8);
  }

  return result;
}

uint64_t sub_220C6065C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7CA70);
  __swift_project_value_buffer(v0, qword_27CF7CA70);
  return sub_220CA0244();
}

uint64_t WidgetRefreshFailedEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA88, &qword_220CABA70);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t WidgetRefreshFailedEvent.data.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA88, &qword_220CABA70);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t WidgetRefreshFailedEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetRefreshFailedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetRefreshFailedEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_9() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t WidgetRefreshFailedEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetRefreshFailedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetRefreshFailedEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_9() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t WidgetRefreshFailedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA88, &qword_220CABA70);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  refreshed = type metadata accessor for WidgetRefreshFailedEvent(0);
  v5 = *(refreshed + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(refreshed + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t WidgetRefreshFailedEvent.Model.data.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t WidgetRefreshFailedEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetRefreshFailedEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetRefreshFailedEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WidgetRefreshFailedEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WidgetRefreshFailedEvent.Model.init(data:timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 4);
  v11 = *(a3 + 20);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  refreshed = type metadata accessor for WidgetRefreshFailedEvent.Model(0);
  v13 = *(refreshed + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  result = (*(v14 + 32))(a4 + v13, a2);
  v16 = a4 + *(refreshed + 24);
  *v16 = v8;
  *(v16 + 8) = v9;
  *(v16 + 16) = v10;
  *(v16 + 20) = v11;
  return result;
}

uint64_t sub_220C60D04(uint64_t a1)
{
  v2 = sub_220C60F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C60D40(uint64_t a1)
{
  v2 = sub_220C60F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRefreshFailedEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA90, &qword_220CABA78);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C60F88();
  sub_220CA1254();
  v10 = v2[1];
  v11 = *(v2 + 8);
  v26 = *v2;
  v27 = v10;
  LOWORD(v28) = v11;
  v30 = 0;
  v12 = sub_220C46ABC();

  OUTLINED_FUNCTION_3_3(v13, v14, v15, &type metadata for WidgetRefreshFailedEventData);

  if (!v12)
  {
    refreshed = type metadata accessor for WidgetRefreshFailedEvent.Model(0);
    LOBYTE(v26) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80, MEMORY[0x277CEAED8]);
    sub_220CA1104();
    v17 = (v2 + *(refreshed + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 4);
    LOBYTE(v17) = *(v17 + 20);
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v17;
    v30 = 2;
    sub_220BFF788();

    OUTLINED_FUNCTION_3_3(v21, v22, v23, &type metadata for PrivateUserData);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C60F88()
{
  result = qword_27CF7CA98;
  if (!qword_27CF7CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CA98);
  }

  return result;
}

uint64_t WidgetRefreshFailedEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v28 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CAA0, &qword_220CABA80);
  OUTLINED_FUNCTION_3();
  v29 = v10;
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  refreshed = type metadata accessor for WidgetRefreshFailedEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_220C60F88();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v16 = v14;
  v17 = v28;
  v36 = 0;
  sub_220C46A64();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v18 = v33;
  v19 = v34;
  *v16 = v32;
  *(v16 + 8) = v18;
  *(v16 + 16) = v19;
  LOBYTE(v32) = 1;
  sub_220C315AC(&qword_2812D0D78, MEMORY[0x277CEAEE0]);
  sub_220CA1034();
  (*(v17 + 32))(v16 + *(refreshed + 20), v8, v4);
  v36 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v20 = OUTLINED_FUNCTION_6_1();
  v21(v20, v30);
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v16 + *(refreshed + 24);
  *v25 = v32;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 20) = v24;
  sub_220C61358(v16, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_220C613BC(v16);
}

uint64_t sub_220C61358(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for WidgetRefreshFailedEvent.Model(0);
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_220C613BC(uint64_t a1)
{
  refreshed = type metadata accessor for WidgetRefreshFailedEvent.Model(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

void sub_220C61480(uint64_t a1)
{
  sub_220C6158C(319, &qword_27CF7CAB8, sub_220C46A64, sub_220C46ABC, &type metadata for WidgetRefreshFailedEventData);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C6158C(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C6158C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C61630(uint64_t a1)
{
  result = sub_220CA04D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshFailedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C61794()
{
  result = qword_27CF7CAD0;
  if (!qword_27CF7CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CAD0);
  }

  return result;
}

unint64_t sub_220C617EC()
{
  result = qword_27CF7CAD8;
  if (!qword_27CF7CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CAD8);
  }

  return result;
}

unint64_t sub_220C61844()
{
  result = qword_27CF7CAE0;
  if (!qword_27CF7CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CAE0);
  }

  return result;
}

WeatherAnalytics::AQIFeedback_optional __swiftcall AQIFeedback.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AQIFeedback.rawValue.getter()
{
  v1 = 0x74726F7065527361;
  if (*v0 != 1)
  {
    v1 = 0x6573726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726574746562;
  }
}

unint64_t sub_220C6195C()
{
  result = qword_27CF7CAE8;
  if (!qword_27CF7CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CAE8);
  }

  return result;
}

uint64_t sub_220C619D4@<X0>(uint64_t *a1@<X8>)
{
  result = AQIFeedback.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AQIFeedback(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C61B88()
{
  result = qword_27CF7CAF0;
  if (!qword_27CF7CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CAF0);
  }

  return result;
}

uint64_t sub_220C61C28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C61CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C61C28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C61CE0(uint64_t a1)
{
  v2 = sub_220C61E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C61D1C(uint64_t a1)
{
  v2 = sub_220C61E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrentLocationUpdateFailedEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CAF8, &qword_220CABDC0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C61E98();
  sub_220CA1254();
  v12 = v9;
  sub_220C61EEC();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C61E98()
{
  result = qword_27CF7CB00;
  if (!qword_27CF7CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB00);
  }

  return result;
}

unint64_t sub_220C61EEC()
{
  result = qword_27CF7CB08;
  if (!qword_27CF7CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB08);
  }

  return result;
}

uint64_t CurrentLocationUpdateFailedEventData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CB10, &qword_220CABDC8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C61E98();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C620A0();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C620A0()
{
  result = qword_27CF7CB18;
  if (!qword_27CF7CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB18);
  }

  return result;
}

unint64_t sub_220C620F8()
{
  result = qword_27CF7CB20;
  if (!qword_27CF7CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB20);
  }

  return result;
}

unint64_t sub_220C62150()
{
  result = qword_27CF7CB28;
  if (!qword_27CF7CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateFailedEventData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateFailedEventData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C62360()
{
  result = qword_27CF7CB30;
  if (!qword_27CF7CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB30);
  }

  return result;
}

unint64_t sub_220C623B8()
{
  result = qword_27CF7CB38;
  if (!qword_27CF7CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB38);
  }

  return result;
}

unint64_t sub_220C62410()
{
  result = qword_27CF7CB40;
  if (!qword_27CF7CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB40);
  }

  return result;
}

WeatherAnalytics::WeatherDataLoadEventData __swiftcall WeatherDataLoadEventData.init(loadAlreadyInProgress:conclusion:)(Swift::Bool loadAlreadyInProgress, WeatherAnalytics::WeatherDataLoadEventConclusion conclusion)
{
  v3 = *conclusion;
  *v2 = loadAlreadyInProgress;
  v2[1] = v3;
  result.loadAlreadyInProgress = loadAlreadyInProgress;
  return result;
}

uint64_t sub_220C624E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000220CB5870 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973756C636E6F63 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C625BC(char a1)
{
  if (a1)
  {
    return 0x6973756C636E6F63;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_220C62604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C624E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C6262C(uint64_t a1)
{
  v2 = sub_220C62820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C62668(uint64_t a1)
{
  v2 = sub_220C62820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherDataLoadEventData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CB48, &qword_220CABFE0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  v12 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C62820();
  sub_220CA1254();
  v15 = 0;
  sub_220CA10D4();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_220C62874();
    sub_220CA1104();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C62820()
{
  result = qword_2812D08D0[0];
  if (!qword_2812D08D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D08D0);
  }

  return result;
}

unint64_t sub_220C62874()
{
  result = qword_2812D09B0[0];
  if (!qword_2812D09B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D09B0);
  }

  return result;
}

uint64_t WeatherDataLoadEventData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CB50, &qword_220CABFE8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C62820();
  sub_220CA1234();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_220CA1004();
    v15 = 1;
    sub_220C62A7C();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    v13 = v16;
    *a2 = v11 & 1;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C62A7C()
{
  result = qword_27CF7CB58;
  if (!qword_27CF7CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB58);
  }

  return result;
}

unint64_t sub_220C62AD4()
{
  result = qword_2812D08A8;
  if (!qword_2812D08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D08A8);
  }

  return result;
}

unint64_t sub_220C62B2C()
{
  result = qword_2812D08B0;
  if (!qword_2812D08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D08B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherDataLoadEventData(unsigned __int16 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WeatherDataLoadEventData(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherDataLoadEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C62E08()
{
  result = qword_27CF7CB60;
  if (!qword_27CF7CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB60);
  }

  return result;
}

unint64_t sub_220C62E60()
{
  result = qword_2812D08C0;
  if (!qword_2812D08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D08C0);
  }

  return result;
}

unint64_t sub_220C62EB8()
{
  result = qword_2812D08C8;
  if (!qword_2812D08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D08C8);
  }

  return result;
}

uint64_t ReferralData.referringApplication.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReferralData.referringApplication.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferralData.referringUrl.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReferralData.referringUrl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

WeatherAnalytics::ReferralData __swiftcall ReferralData.init(referringApplication:referringUrl:)(Swift::String referringApplication, Swift::String referringUrl)
{
  *v2 = referringApplication;
  v2[1] = referringUrl;
  result.referringUrl = referringUrl;
  result.referringApplication = referringApplication;
  return result;
}

uint64_t sub_220C63030(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000220CB5890 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69727265666572 && a2 == 0xEC0000006C725567)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C63104(char a1)
{
  if (a1)
  {
    return 0x6E69727265666572;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_220C63150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C63030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C63178(uint64_t a1)
{
  v2 = sub_220C63360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C631B4(uint64_t a1)
{
  v2 = sub_220C63360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CB68, &qword_220CAC1F0);
  OUTLINED_FUNCTION_3();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C63360();
  sub_220CA1254();
  v14 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v13 = 1;
    sub_220CA10C4();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_220C63360()
{
  result = qword_2812D0710;
  if (!qword_2812D0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0710);
  }

  return result;
}

uint64_t ReferralData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CB70, &qword_220CAC1F8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C63360();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_220CA0FF4();
  v13 = v12;
  v21 = 1;
  v14 = sub_220CA0FF4();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v5);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C635AC()
{
  result = qword_2812D06F0;
  if (!qword_2812D06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06F0);
  }

  return result;
}

unint64_t sub_220C63604()
{
  result = qword_2812D06F8;
  if (!qword_2812D06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReferralData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C63778()
{
  result = qword_27CF7CB78;
  if (!qword_27CF7CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CB78);
  }

  return result;
}

unint64_t sub_220C637D0()
{
  result = qword_2812D0700;
  if (!qword_2812D0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0700);
  }

  return result;
}

unint64_t sub_220C63828()
{
  result = qword_2812D0708;
  if (!qword_2812D0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0708);
  }

  return result;
}

uint64_t sub_220C6387C()
{
  result = *(v0 + 16);
  if (result == 7)
  {
    sub_220C9F964();
    sub_220C63EF0();
    sub_220C9F994();

    result = v2;
    *(v0 + 16) = v2;
  }

  return result;
}

uint64_t sub_220C6390C()
{
  v1 = sub_220C9FB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  sub_220C9FD94();
  sub_220C6387C();
  sub_220C9FB64();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_220C63B08@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CB80, &qword_220CAC478);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_220C9FD04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_220C6390C();
  sub_220C9FCE4();
  v17 = *(v8 + 8);
  v17(v16, v7);
  v18 = sub_220C9F754();
  OUTLINED_FUNCTION_0_18(v6);
  if (!v19)
  {
    return (*(*(v18 - 8) + 32))(v22, v6, v18);
  }

  sub_220C6387C();
  sub_220C9FCF4();
  sub_220C9FCE4();
  v17(v13, v7);
  OUTLINED_FUNCTION_0_18(v3);
  if (v19)
  {
    sub_220C6390C();
    sub_220C9FCD4();
    v17(v10, v7);
    OUTLINED_FUNCTION_0_18(v3);
    if (!v19)
    {
      sub_220C63F44(v3);
    }
  }

  else
  {
    (*(*(v18 - 8) + 32))(v22, v3, v18);
  }

  result = OUTLINED_FUNCTION_0_18(v6);
  if (!v19)
  {
    return sub_220C63F44(v6);
  }

  return result;
}

uint64_t sub_220C63E2C()
{
  v0 = sub_220C6387C();

  return MEMORY[0x2821E1F88](v0);
}

unint64_t sub_220C63EF0()
{
  result = qword_2812CFA60[0];
  if (!qword_2812CFA60[0])
  {
    type metadata accessor for WidgetDynamicEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CFA60);
  }

  return result;
}

uint64_t sub_220C63F44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CB80, &qword_220CAC478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C64074()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7CBB8);
  __swift_project_value_buffer(v0, qword_27CF7CBB8);
  return sub_220CA0244();
}

uint64_t CurrentLocationUpdateFailedEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD0, &qword_220CAC480);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t CurrentLocationUpdateFailedEvent.data.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD0, &qword_220CAC480);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t CurrentLocationUpdateFailedEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for CurrentLocationUpdateFailedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t CurrentLocationUpdateFailedEvent.timedData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for CurrentLocationUpdateFailedEvent(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*CurrentLocationUpdateFailedEvent.timedData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for CurrentLocationUpdateFailedEvent(v0);
  return nullsub_1;
}

uint64_t CurrentLocationUpdateFailedEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for CurrentLocationUpdateFailedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t CurrentLocationUpdateFailedEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for CurrentLocationUpdateFailedEvent(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*CurrentLocationUpdateFailedEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for CurrentLocationUpdateFailedEvent(v0);
  return nullsub_1;
}

uint64_t CurrentLocationUpdateFailedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD0, &qword_220CAC480);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  updated = type metadata accessor for CurrentLocationUpdateFailedEvent(0);
  v5 = *(updated + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(updated + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t CurrentLocationUpdateFailedEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for CurrentLocationUpdateFailedEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t CurrentLocationUpdateFailedEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for CurrentLocationUpdateFailedEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t CurrentLocationUpdateFailedEvent.Model.init(data:timedData:privateUserData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 4);
  v9 = *(a3 + 20);
  *a4 = *a1;
  updated = type metadata accessor for CurrentLocationUpdateFailedEvent.Model(0);
  v11 = *(updated + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  result = (*(v12 + 32))(&a4[v11], a2);
  v14 = &a4[*(updated + 24)];
  *v14 = v6;
  *(v14 + 1) = v7;
  *(v14 + 4) = v8;
  v14[20] = v9;
  return result;
}

uint64_t sub_220C6471C(uint64_t a1)
{
  v2 = sub_220C649B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C64758(uint64_t a1)
{
  v2 = sub_220C649B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrentLocationUpdateFailedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD8, &qword_220CAC488);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C649B4();
  sub_220CA1254();
  LOBYTE(v18) = *v3;
  v22 = 0;
  sub_220C62150();
  sub_220CA1104();
  if (!v2)
  {
    updated = type metadata accessor for CurrentLocationUpdateFailedEvent.Model(0);
    LOBYTE(v18) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80, MEMORY[0x277CEAED8]);
    sub_220CA1104();
    v12 = &v3[*(updated + 24)];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 4);
    LOBYTE(v12) = v12[20];
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = v12;
    v22 = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C649B4()
{
  result = qword_27CF7CBE0;
  if (!qword_27CF7CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CBE0);
  }

  return result;
}

uint64_t CurrentLocationUpdateFailedEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v29 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBE8, &qword_220CAC490);
  OUTLINED_FUNCTION_3();
  v30 = v7;
  MEMORY[0x28223BE20](v8);
  updated = type metadata accessor for CurrentLocationUpdateFailedEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C649B4();
  v13 = v33;
  sub_220CA1234();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v14 = v31;
  v38 = 0;
  sub_220C620F8();
  sub_220CA1034();
  v27 = v12;
  *v12 = v34;
  LOBYTE(v34) = 1;
  sub_220C315AC(&qword_2812D0D78, MEMORY[0x277CEAEE0]);
  v15 = v6;
  sub_220CA1034();
  v16 = *(v29 + 32);
  v17 = v27;
  v26 = *(updated + 20);
  v16(&v27[v26], v15, v14);
  v38 = 2;
  sub_220BFF730();
  sub_220CA1034();
  v18 = OUTLINED_FUNCTION_3_14();
  v19(v18);
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v17 + *(updated + 24);
  *v23 = v34;
  *(v23 + 8) = v20;
  *(v23 + 16) = v21;
  *(v23 + 20) = v22;
  sub_220C64D7C(v17, v28);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_220C64DE0(v17);
}

uint64_t sub_220C64D7C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CurrentLocationUpdateFailedEvent.Model(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_220C64DE0(uint64_t a1)
{
  updated = type metadata accessor for CurrentLocationUpdateFailedEvent.Model(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

void sub_220C64EA4(uint64_t a1)
{
  sub_220C64FB0(319, &qword_27CF7CC00, sub_220C620F8, sub_220C62150, &type metadata for CurrentLocationUpdateFailedEventData);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C64FB0(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C64FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C65054(uint64_t a1)
{
  result = sub_220CA04D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateFailedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C651B8()
{
  result = qword_27CF7CC18;
  if (!qword_27CF7CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC18);
  }

  return result;
}

unint64_t sub_220C65210()
{
  result = qword_27CF7CC20;
  if (!qword_27CF7CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC20);
  }

  return result;
}

unint64_t sub_220C65268()
{
  result = qword_27CF7CC28;
  if (!qword_27CF7CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC28);
  }

  return result;
}

_BYTE *TemperatureFeedbackData.init(reportedTemperature:currrentDewPoint:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 4) = a2;
  return result;
}

uint64_t sub_220C6533C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000220CB58E0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220CB5900 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

unint64_t sub_220C65414(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_220C65454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C6533C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C6547C(uint64_t a1)
{
  v2 = sub_220C6566C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C654B8(uint64_t a1)
{
  v2 = sub_220C6566C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureFeedbackData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CC30, &qword_220CAC6B0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6566C();
  sub_220CA1254();
  v16 = v10;
  v15 = 0;
  sub_220C656C0();
  sub_220CA1104();
  if (!v2)
  {
    v14 = 1;
    sub_220CA1114();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C6566C()
{
  result = qword_27CF7CC38;
  if (!qword_27CF7CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC38);
  }

  return result;
}

unint64_t sub_220C656C0()
{
  result = qword_27CF7CC40;
  if (!qword_27CF7CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC40);
  }

  return result;
}

uint64_t TemperatureFeedbackData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CC48, &qword_220CAC6B8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6566C();
  sub_220CA1234();
  if (!v2)
  {
    v16 = 0;
    sub_220C658C4();
    sub_220CA1034();
    v11 = v17;
    v15 = 1;
    v12 = sub_220CA1044();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C658C4()
{
  result = qword_27CF7CC50;
  if (!qword_27CF7CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC50);
  }

  return result;
}

unint64_t sub_220C6591C()
{
  result = qword_27CF7CC58;
  if (!qword_27CF7CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC58);
  }

  return result;
}

unint64_t sub_220C65974()
{
  result = qword_27CF7CC60;
  if (!qword_27CF7CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureFeedbackData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[8])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t storeEnumTagSinglePayload for TemperatureFeedbackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C65B64()
{
  result = qword_27CF7CC68;
  if (!qword_27CF7CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC68);
  }

  return result;
}

unint64_t sub_220C65BBC()
{
  result = qword_27CF7CC70;
  if (!qword_27CF7CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC70);
  }

  return result;
}

unint64_t sub_220C65C14()
{
  result = qword_27CF7CC78;
  if (!qword_27CF7CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC78);
  }

  return result;
}

uint64_t AQIFeedbackData.currentAQI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

double AQIFeedbackData.currentAQI.setter(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

double AQIFeedbackData.init(reportedAQI:currentAQI:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  return result;
}

uint64_t sub_220C65D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646574726F706572 && a2 == 0xEB00000000495141;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41746E6572727563 && a2 == 0xEA00000000004951)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C65E2C(char a1)
{
  if (a1)
  {
    return 0x41746E6572727563;
  }

  else
  {
    return 0x646574726F706572;
  }
}

uint64_t sub_220C65E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C65D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C65EA0(uint64_t a1)
{
  v2 = sub_220C660E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C65EDC(uint64_t a1)
{
  v2 = sub_220C660E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AQIFeedbackData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CC80, &qword_220CAC8C0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 3);
  v16 = *(v1 + 2);
  v15 = v1[32];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C660E0();
  sub_220CA1254();
  LOBYTE(v18) = v9;
  v22 = 0;
  sub_220C66134();
  v12 = v17;
  sub_220CA1104();
  if (!v12)
  {
    v18 = v10;
    v19 = v16;
    v20 = v11;
    v21 = v15;
    v22 = 1;
    sub_220C05760();

    sub_220CA1104();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C660E0()
{
  result = qword_27CF7CC88;
  if (!qword_27CF7CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC88);
  }

  return result;
}

unint64_t sub_220C66134()
{
  result = qword_27CF7CC90;
  if (!qword_27CF7CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CC90);
  }

  return result;
}

uint64_t AQIFeedbackData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CC98, &qword_220CAC8C8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C660E0();
  sub_220CA1234();
  if (!v2)
  {
    v19 = 0;
    sub_220C66334();
    OUTLINED_FUNCTION_0_19(&type metadata for AQIFeedback);
    v11 = v17[0];
    v19 = 1;
    sub_220C0570C();
    OUTLINED_FUNCTION_0_19(&type metadata for AQIData);
    (*(v7 + 8))(v10, v5);
    v12 = v17[1];
    v13 = v17[2];
    v14 = v18;
    v15 = v17[0];
    *a2 = v11;
    *(a2 + 8) = v15;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C66334()
{
  result = qword_27CF7CCA0;
  if (!qword_27CF7CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCA0);
  }

  return result;
}

unint64_t sub_220C6638C()
{
  result = qword_27CF7CCA8;
  if (!qword_27CF7CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCA8);
  }

  return result;
}

unint64_t sub_220C663E4()
{
  result = qword_27CF7CCB0;
  if (!qword_27CF7CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCB0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220C6647C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_220C664BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AQIFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C665F0()
{
  result = qword_27CF7CCB8;
  if (!qword_27CF7CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCB8);
  }

  return result;
}

unint64_t sub_220C66648()
{
  result = qword_27CF7CCC0;
  if (!qword_27CF7CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCC0);
  }

  return result;
}

unint64_t sub_220C666A0()
{
  result = qword_27CF7CCC8;
  if (!qword_27CF7CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCC8);
  }

  return result;
}

uint64_t sub_220C666F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_220C66734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_220C66790()
{
  OUTLINED_FUNCTION_13_4();
  v31 = v1;
  sub_220CA0B54();
  OUTLINED_FUNCTION_3();
  v34 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  sub_220CA0B94();
  OUTLINED_FUNCTION_3();
  v32 = v5;
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v9 = type metadata accessor for GeocodeTaskCompletedEvent(0);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
  v13 = OUTLINED_FUNCTION_12_3();
  if (v14(v13))
  {
    v30 = v0[6];
    sub_220C674B0(v31, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GeocodeTaskCompletedEvent);
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_16_3(v15);
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_5_8(COERCE_DOUBLE(1107296256));
    v36[2] = v16;
    v36[3] = &block_descriptor_9;
    v17 = _Block_copy(v36);

    sub_220CA0B64();
    v35 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_8();
    sub_220BFD0B4(v18, v19, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
    v20 = sub_220BF8A20(&qword_2812D1748, &qword_27CF7BF30, &qword_220CA6BB0);
    OUTLINED_FUNCTION_11_0(v20);
    OUTLINED_FUNCTION_15_0();
    _Block_release(v17);
    v21 = OUTLINED_FUNCTION_18_1();
    v22(v21);
    (*(v32 + 8))(v8, v33);

    OUTLINED_FUNCTION_10_5();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2812D1768);
    }

    v23 = sub_220CA0A84();
    __swift_project_value_buffer(v23, qword_2812D1770);
    v34 = sub_220CA0A64();
    v24 = sub_220CA0D84();
    if (os_log_type_enabled(v34, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      OUTLINED_FUNCTION_20_0(&dword_220BF4000, v26, v27, "Skipping logging of reverse-geocoding finished event; session is not part of sample.");
      MEMORY[0x223D95B30](v25, -1, -1);
    }

    OUTLINED_FUNCTION_10_5();
  }
}

uint64_t sub_220C66B1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v6, v3);
  sub_220C9FF74();

  type metadata accessor for ReverseGeocodingEvent(0);
  sub_220BFD0B4(&qword_2812CFB00, type metadata accessor for ReverseGeocodingEvent, &protocol conformance descriptor for ReverseGeocodingEvent);
  sub_220C9FF94();
  v8[15] = *(a2 + *(type metadata accessor for GeocodeTaskCompletedEvent(0) + 28));
  sub_220C676B8();
  sub_220C9FFC4();
  sub_220C9FFA4();
  return sub_220C9FF84();
}

void sub_220C66CF8()
{
  OUTLINED_FUNCTION_13_4();
  v31 = v1;
  sub_220CA0B54();
  OUTLINED_FUNCTION_3();
  v34 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  sub_220CA0B94();
  OUTLINED_FUNCTION_3();
  v32 = v5;
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v9 = type metadata accessor for GeocodeTaskFailedEvent(0);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
  v13 = OUTLINED_FUNCTION_12_3();
  if (v14(v13))
  {
    v30 = v0[6];
    sub_220C674B0(v31, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GeocodeTaskFailedEvent);
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_16_3(v15);
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_5_8(COERCE_DOUBLE(1107296256));
    v36[2] = v16;
    v36[3] = &block_descriptor_0;
    v17 = _Block_copy(v36);

    sub_220CA0B64();
    v35 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_8();
    sub_220BFD0B4(v18, v19, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
    v20 = sub_220BF8A20(&qword_2812D1748, &qword_27CF7BF30, &qword_220CA6BB0);
    OUTLINED_FUNCTION_11_0(v20);
    OUTLINED_FUNCTION_15_0();
    _Block_release(v17);
    v21 = OUTLINED_FUNCTION_18_1();
    v22(v21);
    (*(v32 + 8))(v8, v33);

    OUTLINED_FUNCTION_10_5();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2812D1768);
    }

    v23 = sub_220CA0A84();
    __swift_project_value_buffer(v23, qword_2812D1770);
    v34 = sub_220CA0A64();
    v24 = sub_220CA0D84();
    if (os_log_type_enabled(v34, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      OUTLINED_FUNCTION_20_0(&dword_220BF4000, v26, v27, "Skipping logging of reverse-geocoding failed event; session is not part of sample.");
      MEMORY[0x223D95B30](v25, -1, -1);
    }

    OUTLINED_FUNCTION_10_5();
  }
}

uint64_t sub_220C67084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v8 = a3(0);
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_220C674B0(a2, &v17 - v12, a4);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_220C67510(v13, v15 + v14, a4);
  sub_220CA0444();
}

uint64_t sub_220C67194(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v6, v3);
  sub_220C9FF74();

  type metadata accessor for ReverseGeocodingFailedEvent(0);
  sub_220BFD0B4(&qword_2812CF248, type metadata accessor for ReverseGeocodingFailedEvent, &protocol conformance descriptor for ReverseGeocodingFailedEvent);
  sub_220C9FF94();
  v7 = type metadata accessor for GeocodeTaskFailedEvent(0);
  v8 = (a2 + *(v7 + 28));
  v9 = *v8;
  v10 = v8[1];
  LOBYTE(v8) = *(a2 + *(v7 + 32));
  v12[1] = v9;
  v12[2] = v10;
  v13 = v8;
  sub_220C6745C();

  sub_220C9FFC4();

  sub_220C9FFA4();
  return sub_220C9FF84();
}

uint64_t sub_220C67398()
{
  v1 = type metadata accessor for GeocodeTaskFailedEvent(0);
  OUTLINED_FUNCTION_14_1(v1);
  return sub_220C67084(*(v0 + 16), v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)), type metadata accessor for GeocodeTaskFailedEvent, type metadata accessor for GeocodeTaskFailedEvent, &unk_28346ABE0, sub_220C67430);
}

unint64_t sub_220C6745C()
{
  result = qword_2812CEC20;
  if (!qword_2812CEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC20);
  }

  return result;
}

uint64_t sub_220C674B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220C67510(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220C67570()
{
  v1 = type metadata accessor for GeocodeTaskCompletedEvent(0);
  OUTLINED_FUNCTION_14_1(v1);
  return sub_220C67084(*(v0 + 16), v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)), type metadata accessor for GeocodeTaskCompletedEvent, type metadata accessor for GeocodeTaskCompletedEvent, &unk_28346AC58, sub_220C67608);
}

uint64_t sub_220C67634(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a2(0);
  OUTLINED_FUNCTION_14_1(v5);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, v7);
}

unint64_t sub_220C676B8()
{
  result = qword_2812CF450;
  if (!qword_2812CF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF450);
  }

  return result;
}

void OUTLINED_FUNCTION_21_0()
{
  v3 = *(v1 + *(v0 + 32));
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_220C9F7D4();
}

uint64_t sub_220C67790(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6570795465646F6DLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C67824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C67790(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C67850(uint64_t a1)
{
  v2 = sub_220C67A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C6788C(uint64_t a1)
{
  v2 = sub_220C67A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetDisplayModeData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CCD8, &qword_220CACB60);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C67A08();
  sub_220CA1254();
  v12 = v9;
  sub_220C67A5C();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C67A08()
{
  result = qword_27CF7CCE0;
  if (!qword_27CF7CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCE0);
  }

  return result;
}

unint64_t sub_220C67A5C()
{
  result = qword_27CF7CCE8;
  if (!qword_27CF7CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCE8);
  }

  return result;
}

uint64_t WidgetDisplayModeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CCF0, &qword_220CACB68);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C67A08();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C67C10();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C67C10()
{
  result = qword_27CF7CCF8;
  if (!qword_27CF7CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CCF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetDisplayModeData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WidgetDisplayModeData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C67E28()
{
  result = qword_27CF7CD00;
  if (!qword_27CF7CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD00);
  }

  return result;
}

unint64_t sub_220C67E80()
{
  result = qword_27CF7CD08;
  if (!qword_27CF7CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD08);
  }

  return result;
}

unint64_t sub_220C67ED8()
{
  result = qword_27CF7CD10;
  if (!qword_27CF7CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD10);
  }

  return result;
}

WeatherAnalytics::WidgetLocation_optional __swiftcall WidgetLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WidgetLocation.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6761507961646F74;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C6805C()
{
  result = qword_27CF7CD18;
  if (!qword_27CF7CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD18);
  }

  return result;
}

unint64_t sub_220C680D4@<X0>(unint64_t *a1@<X8>)
{
  result = WidgetLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C68288()
{
  result = qword_27CF7CD20;
  if (!qword_27CF7CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD20);
  }

  return result;
}

uint64_t WindFeedbackData.currrentWindGust.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

_BYTE *WindFeedbackData.init(reportedWind:currrentWind:currrentWindGust:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  *(a4 + 12) = BYTE4(a3) & 1;
  return result;
}

uint64_t sub_220C683B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646574726F706572 && a2 == 0xEC000000646E6957;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E657272727563 && a2 == 0xEC000000646E6957;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000220CB59F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

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

uint64_t sub_220C684D8(char a1)
{
  if (!a1)
  {
    return 0x646574726F706572;
  }

  if (a1 == 1)
  {
    return 0x746E657272727563;
  }

  return 0xD000000000000010;
}

uint64_t sub_220C68540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C683B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C68568(uint64_t a1)
{
  v2 = sub_220C68788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C685A4(uint64_t a1)
{
  v2 = sub_220C68788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WindFeedbackData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CD28, &qword_220CACEA0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 2);
  v17 = *(v1 + 1);
  v16 = v11;
  v15 = v1[12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C68788();
  sub_220CA1254();
  v22 = v10;
  v21 = 0;
  sub_220C687DC();
  OUTLINED_FUNCTION_1_2();
  sub_220CA1104();
  if (!v2)
  {
    v12 = v15;
    v20 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
    v19 = 2;
    v18 = v12;
    OUTLINED_FUNCTION_1_2();
    sub_220CA10A4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C68788()
{
  result = qword_27CF7CD30;
  if (!qword_27CF7CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD30);
  }

  return result;
}

unint64_t sub_220C687DC()
{
  result = qword_27CF7CD38;
  if (!qword_27CF7CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD38);
  }

  return result;
}

uint64_t WindFeedbackData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CD40, &qword_220CACEA8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C68788();
  sub_220CA1234();
  if (!v2)
  {
    v18 = 0;
    sub_220C68A10();
    sub_220CA1034();
    v11 = v19;
    v17 = 1;
    v12 = sub_220CA1044();
    v16 = 2;
    v14 = sub_220CA0FD4();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 4) = v12;
    *(a2 + 8) = v14;
    *(a2 + 12) = BYTE4(v14) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C68A10()
{
  result = qword_27CF7CD48;
  if (!qword_27CF7CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD48);
  }

  return result;
}

unint64_t sub_220C68A68()
{
  result = qword_27CF7CD50;
  if (!qword_27CF7CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD50);
  }

  return result;
}

unint64_t sub_220C68AC0()
{
  result = qword_27CF7CD58;
  if (!qword_27CF7CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD58);
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WindFeedbackData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[13])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t storeEnumTagSinglePayload for WindFeedbackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WindFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C68CCC()
{
  result = qword_27CF7CD60;
  if (!qword_27CF7CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD60);
  }

  return result;
}

unint64_t sub_220C68D24()
{
  result = qword_27CF7CD68;
  if (!qword_27CF7CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD68);
  }

  return result;
}

unint64_t sub_220C68D7C()
{
  result = qword_27CF7CD70;
  if (!qword_27CF7CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD70);
  }

  return result;
}

WeatherAnalytics::ReverseGeocodeSource_optional __swiftcall ReverseGeocodeSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReverseGeocodeSource.rawValue.getter()
{
  v1 = 0x6953746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6953726576726573;
  }
}

unint64_t sub_220C68E94()
{
  result = qword_27CF7CD78;
  if (!qword_27CF7CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD78);
  }

  return result;
}

uint64_t sub_220C68F0C@<X0>(uint64_t *a1@<X8>)
{
  result = ReverseGeocodeSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodeSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C690C0()
{
  result = qword_27CF7CD80;
  if (!qword_27CF7CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD80);
  }

  return result;
}

uint64_t sub_220C69154(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C691E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C69154(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C69214(uint64_t a1)
{
  v2 = sub_220C693B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C69250(uint64_t a1)
{
  v2 = sub_220C693B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationListPositionData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CD88, &qword_220CAD1E0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C693B4();
  sub_220CA1254();
  sub_220CA1114();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_220C693B4()
{
  result = qword_2812CF698;
  if (!qword_2812CF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF698);
  }

  return result;
}

uint64_t LocationListPositionData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CD90, &qword_220CAD1E8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C693B4();
  sub_220CA1234();
  if (!v2)
  {
    v11 = sub_220CA1044();
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for LocationListPositionData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C69644()
{
  result = qword_27CF7CD98;
  if (!qword_27CF7CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CD98);
  }

  return result;
}

unint64_t sub_220C6969C()
{
  result = qword_2812CF688;
  if (!qword_2812CF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF688);
  }

  return result;
}

unint64_t sub_220C696F4()
{
  result = qword_2812CF690;
  if (!qword_2812CF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF690);
  }

  return result;
}

uint64_t Settings.WeatherAnalytics.SamplingRate.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_220CA0F84();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_220C697D4(uint64_t a1)
{
  v2 = sub_220C03F9C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_220C69828(uint64_t a1, uint64_t a2)
{
  v4 = sub_220C03F9C();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_220C698F0()
{
  sub_220C9FA34();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_14();
  sub_220C9FA14();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_20();
  (*(v3 + 104))(v0, *MEMORY[0x277D6D098]);
  v4 = OUTLINED_FUNCTION_5_9();
  v5(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDA8, &qword_220CAD568);
  OUTLINED_FUNCTION_13_5(v6);
  OUTLINED_FUNCTION_7_10();
  result = sub_220C9FA74();
  qword_2812D1718 = result;
  return result;
}

uint64_t sub_220C69A80()
{
  sub_220C9FA14();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_14();
  v1 = sub_220C9FA34();
  v2 = OUTLINED_FUNCTION_14_1(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_20_1();
  v3 = OUTLINED_FUNCTION_5_9();
  v4(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDA8, &qword_220CAD568);
  OUTLINED_FUNCTION_13_5(v5);
  OUTLINED_FUNCTION_7_10();
  result = OUTLINED_FUNCTION_8_10(60, v6, v7);
  qword_2812D0F00 = result;
  return result;
}

uint64_t sub_220C69BB8()
{
  sub_220C9FA34();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_14();
  sub_220C9FA14();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_20();
  (*(v3 + 104))(v0, *MEMORY[0x277D6D098]);
  v4 = OUTLINED_FUNCTION_5_9();
  v5(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDA8, &qword_220CAD568);
  OUTLINED_FUNCTION_13_5(v6);
  OUTLINED_FUNCTION_7_10();
  result = sub_220C9FA74();
  qword_2812D0EF0 = result;
  return result;
}

uint64_t sub_220C69D48()
{
  v0 = sub_220C9FA14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_220C9FA34();
  MEMORY[0x28223BE20](v4 - 8);
  sub_220C9FA24();
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v6[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDA8, &qword_220CAD568);
  swift_allocObject();
  result = sub_220C9FA74();
  qword_27CF7CDA0 = result;
  return result;
}

uint64_t static Settings.WeatherAnalytics.Debugging.Overrides.dnuConsent.getter()
{
  if (qword_27CF7B490 != -1)
  {
    swift_once();
  }
}

uint64_t Settings.WeatherAnalytics.Debugging.Overrides.init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_10_6();
  v3(v2);
  OUTLINED_FUNCTION_19_2();
  v4 = OUTLINED_FUNCTION_16_4();
  v5(v4);
  return v0;
}

uint64_t Settings.WeatherAnalytics.Debugging.Overrides.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C16WeatherAnalyticsEADV9DebuggingV9OverridesCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

_BYTE *sub_220C6A0C0(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of GeocodeTelemetryAnalyticsBackend.record(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

uint64_t sub_220C6A1E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6174536465626D65 && a2 == 0xEA00000000006574)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C6A288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C6A1E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C6A2B4(uint64_t a1)
{
  v2 = sub_220C6A46C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C6A2F0(uint64_t a1)
{
  v2 = sub_220C6A46C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapEmbedStateData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDD8, &qword_220CAD5D0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6A46C();
  sub_220CA1254();
  v12 = v9;
  sub_220C6A4C0();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C6A46C()
{
  result = qword_27CF7CDE0;
  if (!qword_27CF7CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CDE0);
  }

  return result;
}

unint64_t sub_220C6A4C0()
{
  result = qword_27CF7CDE8;
  if (!qword_27CF7CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CDE8);
  }

  return result;
}

uint64_t MapEmbedStateData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CDF0, &qword_220CAD5D8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6A46C();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C6A674();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C6A674()
{
  result = qword_27CF7CDF8;
  if (!qword_27CF7CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CDF8);
  }

  return result;
}

unint64_t sub_220C6A6CC()
{
  result = qword_27CF7CE00;
  if (!qword_27CF7CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE00);
  }

  return result;
}

unint64_t sub_220C6A724()
{
  result = qword_27CF7CE08;
  if (!qword_27CF7CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapEmbedStateData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MapEmbedStateData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C6A934()
{
  result = qword_27CF7CE10;
  if (!qword_27CF7CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE10);
  }

  return result;
}

unint64_t sub_220C6A98C()
{
  result = qword_27CF7CE18;
  if (!qword_27CF7CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE18);
  }

  return result;
}

unint64_t sub_220C6A9E4()
{
  result = qword_27CF7CE20;
  if (!qword_27CF7CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE20);
  }

  return result;
}

uint64_t sub_220C6AB00()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812D0660);
  __swift_project_value_buffer(v0, qword_2812D0660);
  return sub_220CA0244();
}

uint64_t ListViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ListViewEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ListViewEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ListViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ListViewEvent.timedData.setter()
{
  OUTLINED_FUNCTION_11_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ListViewEvent.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ListViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ListViewEvent.viewData.setter()
{
  OUTLINED_FUNCTION_11_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ListViewEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ListViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ListViewEvent.orientationData.setter()
{
  OUTLINED_FUNCTION_11_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ListViewEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ListViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ListViewEvent.temperatureScaleData.setter()
{
  OUTLINED_FUNCTION_11_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ListViewEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ListViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ListViewEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_11_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ListViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for ListViewEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_16_0();
  v12(v11);
  v13 = *(v4 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v15 = *(v14 + 104);

  return v15(a1 + v13, v2);
}

uint64_t ListViewEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t ListViewEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ListViewEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ListViewEvent.Model.viewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ListViewEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t ListViewEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ListViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t ListViewEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ListViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t ListViewEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ListViewEvent.Model(v2) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ListViewEvent.Model.init(eventData:timedData:viewData:orientationData:temperatureScaleData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int16 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v13 = *a4;
  v14 = *a5;
  v15 = a6[1];
  v25 = *a6;
  v23 = *(a6 + 20);
  v24 = *(a6 + 4);
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v16 + 32))(a7, a1);
  v17 = type metadata accessor for ListViewEvent.Model(0);
  v18 = v17[5];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v19 + 32))(a7 + v18, a2);
  v21 = a7 + v17[6];
  *v21 = v10;
  *(v21 + 8) = v11;
  *(v21 + 16) = v12;
  *(a7 + v17[7]) = v13;
  *(a7 + v17[8]) = v14;
  v22 = a7 + v17[9];
  *v22 = v25;
  *(v22 + 8) = v15;
  *(v22 + 16) = v24;
  *(v22 + 20) = v23;
  return result;
}

uint64_t sub_220C6B6F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
          {

            return 5;
          }

          else
          {
            v11 = sub_220CA1154();

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

uint64_t sub_220C6B908(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_6;
    case 2:
      result = 0x6174614477656976;
      break;
    case 3:
      v3 = 0x746E6569726FLL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x5565746176697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C6B9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C6B6F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C6BA04(uint64_t a1)
{
  v2 = sub_220C6BD64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C6BA40(uint64_t a1)
{
  v2 = sub_220C6BD64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ListViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CE28, &qword_220CAD7E0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6BD64();
  sub_220CA1254();
  LOBYTE(v50) = 0;
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v14 = sub_220C04F84(v12, v13, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_17(v3, &v50, v5, v11, v14);
  if (!v2)
  {
    v15 = type metadata accessor for ListViewEvent.Model(0);
    v16 = v15[5];
    LOBYTE(v50) = 1;
    v17 = sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    v20 = sub_220C04F84(v18, v19, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_17(v3 + v16, &v50, v5, v17, v20);
    v21 = v3 + v15[6];
    v22 = *v21;
    v23 = *(v21 + 8);
    LOWORD(v21) = *(v21 + 16);
    v50 = v22;
    v51 = v23;
    LOWORD(v52) = v21;
    v54 = 2;
    v24 = sub_220C04820();

    v25 = OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17(v25, v26, v27, v28, v24);
    if (!v24)
    {

      LOWORD(v50) = *(v3 + v15[7]);
      v54 = 3;
      sub_220BFE5BC();
      v29 = OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_17(v29, v30, v31, v32, v33);
      LOBYTE(v50) = *(v3 + v15[8]);
      v54 = 4;
      sub_220BFF604();
      v34 = OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_17(v34, v35, v36, v37, v38);
      v40 = v3 + v15[9];
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      LOBYTE(v40) = *(v40 + 20);
      v50 = v41;
      v51 = v42;
      v52 = v43;
      v53 = v40;
      v54 = 5;
      v44 = sub_220BFF788();

      v45 = OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_17(v45, v46, v47, v48, v44);
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C6BD64()
{
  result = qword_27CF7CE30;
  if (!qword_27CF7CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE30);
  }

  return result;
}

uint64_t ListViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v29 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v9 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v34 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v13 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CE38, &qword_220CAD7E8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v31 = type metadata accessor for ListViewEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v33 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6BD64();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_7();
  sub_220C04F84(v19, v20, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v34 + 32))(v33, v14, v9);
  LOBYTE(v35) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v21, v22, MEMORY[0x277CEAEE0]);
  sub_220CA1034();
  (*(v29 + 32))(v33 + v31[5], v8, v32);
  sub_220C0449C();
  sub_220CA1034();
  v23 = v33 + v31[6];
  *v23 = v35;
  *(v23 + 8) = v36;
  *(v23 + 16) = v37;
  sub_220BFE564();
  OUTLINED_FUNCTION_7_0(&type metadata for OrientationData);
  *(v33 + v31[7]) = v35;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_7_0(&type metadata for TemperatureScaleData);
  *(v33 + v31[8]) = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_7_0(&type metadata for PrivateUserData);
  v24 = OUTLINED_FUNCTION_13_0();
  v25(v24, v30);
  v26 = v33 + v31[9];
  *v26 = v35;
  *(v26 + 8) = v36;
  *(v26 + 16) = v37;
  *(v26 + 20) = v38;
  sub_220C6C2E0(v33, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C6C344(v33);
}

uint64_t sub_220C6C2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C6C344(uint64_t a1)
{
  v2 = type metadata accessor for ListViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C6C408(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C6C5CC(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_220C6C5CC(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC, &type metadata for OrientationData);
        if (v4 <= 0x3F)
        {
          sub_220C6C5CC(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604, &type metadata for TemperatureScaleData);
          if (v5 <= 0x3F)
          {
            sub_220C6C5CC(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
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

void sub_220C6C5CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C6C670(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListViewEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C6C800()
{
  result = qword_27CF7CE50;
  if (!qword_27CF7CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE50);
  }

  return result;
}

unint64_t sub_220C6C858()
{
  result = qword_27CF7CE58;
  if (!qword_27CF7CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE58);
  }

  return result;
}

unint64_t sub_220C6C8B0()
{
  result = qword_27CF7CE60;
  if (!qword_27CF7CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE60);
  }

  return result;
}

uint64_t UserData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserData.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C6C9C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00006574614474)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C6CA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C6C9C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C6CAB8(uint64_t a1)
{
  v2 = sub_220C01AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C6CAF4(uint64_t a1)
{
  v2 = sub_220C01AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CE70, &qword_220CADA38);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C01AE4();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_220CA0FF4();
  v8 = v7;
  v9 = sub_220CA1054();
  v10 = OUTLINED_FUNCTION_0_10();
  v11(v10);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v9;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C6CD00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_220C6CD40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for UserData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C6CE50()
{
  result = qword_27CF7CE78;
  if (!qword_27CF7CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE78);
  }

  return result;
}

uint64_t sub_220C6CEF0(uint64_t a1)
{
  v2 = sub_220C6D0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C6CF2C(uint64_t a1)
{
  v2 = sub_220C6D0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetTypeData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CE80, &qword_220CADC40);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6D0A8();
  sub_220CA1254();
  v12 = v9;
  sub_220C6D0FC();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C6D0A8()
{
  result = qword_27CF7CE88;
  if (!qword_27CF7CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE88);
  }

  return result;
}

unint64_t sub_220C6D0FC()
{
  result = qword_27CF7CE90;
  if (!qword_27CF7CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CE90);
  }

  return result;
}

uint64_t WidgetTypeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CE98, &qword_220CADC48);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6D0A8();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C6D2B0();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C6D2B0()
{
  result = qword_27CF7CEA0;
  if (!qword_27CF7CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CEA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetTypeData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WidgetTypeData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C6D4C8()
{
  result = qword_27CF7CEA8;
  if (!qword_27CF7CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CEA8);
  }

  return result;
}

unint64_t sub_220C6D520()
{
  result = qword_27CF7CEB0;
  if (!qword_27CF7CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CEB0);
  }

  return result;
}

unint64_t sub_220C6D578()
{
  result = qword_27CF7CEB8;
  if (!qword_27CF7CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CEB8);
  }

  return result;
}

uint64_t sub_220C6D694()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7CEF0);
  __swift_project_value_buffer(v0, qword_27CF7CEF0);
  return sub_220CA0244();
}

uint64_t DetailViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t DetailViewEvent.eventData.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_12_5();

  return v1(v0);
}

uint64_t DetailViewEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.timedData.setter()
{
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t DetailViewEvent.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.viewData.setter()
{
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t DetailViewEvent.detailViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF08, &qword_220CADE48);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.detailViewData.setter()
{
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF08, &qword_220CADE48);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t DetailViewEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.orientationData.setter()
{
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t DetailViewEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.locationData.setter()
{
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t DetailViewEvent.detailViewOriginationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF10, &unk_220CADE50);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.detailViewOriginationData.setter()
{
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF10, &unk_220CADE50);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t DetailViewEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t DetailViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for DetailViewEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF08, &qword_220CADE48);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_16_0();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v13 = OUTLINED_FUNCTION_16_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF10, &unk_220CADE50);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_16_0();
  v16(v15);
  v17 = *(v4 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v19 = *(v18 + 104);

  return v19(a1 + v17, v2);
}

uint64_t DetailViewEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t DetailViewEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for DetailViewEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t DetailViewEvent.Model.viewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for DetailViewEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t DetailViewEvent.Model.detailViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for DetailViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t DetailViewEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for DetailViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

__n128 DetailViewEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for DetailViewEvent.Model(v2) + 36));
  *v0 = result;
  return result;
}

uint64_t DetailViewEvent.Model.detailViewOriginationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for DetailViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t DetailViewEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for DetailViewEvent.Model(v2) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t DetailViewEvent.Model.init(eventData:timedData:viewData:detailViewData:orientationData:locationData:detailViewOriginationData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 8);
  v15 = *a4;
  v16 = *a5;
  v17 = *a6;
  v18 = a6[1];
  v19 = *a7;
  v30 = a8[1];
  v31 = *a8;
  v28 = *(a8 + 20);
  v29 = *(a8 + 4);
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v20 + 32))(a9, a1);
  v21 = type metadata accessor for DetailViewEvent.Model(0);
  v22 = v21[5];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v23 + 32))(a9 + v22, a2);
  v25 = a9 + v21[6];
  *v25 = v12;
  *(v25 + 8) = v13;
  *(v25 + 16) = v14;
  *(a9 + v21[7]) = v15;
  *(a9 + v21[8]) = v16;
  v26 = (a9 + v21[9]);
  *v26 = v17;
  v26[1] = v18;
  *(a9 + v21[10]) = v19;
  v27 = a9 + v21[11];
  *v27 = v31;
  *(v27 + 8) = v30;
  *(v27 + 16) = v29;
  *(v27 + 20) = v28;
  return result;
}

uint64_t sub_220C6E5C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69566C6961746564 && a2 == 0xEE00617461447765;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000019 && 0x8000000220CB5DA0 == a2;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
              {

                return 7;
              }

              else
              {
                v13 = sub_220CA1154();

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

uint64_t sub_220C6E870(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_4;
    case 2:
      result = 0x6174614477656976;
      break;
    case 3:
      result = 0x69566C6961746564;
      break;
    case 4:
      v3 = 0x746E6569726FLL;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0x5565746176697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C6E988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C6E5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C6E9B0(uint64_t a1)
{
  v2 = sub_220C6ED78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C6E9EC(uint64_t a1)
{
  v2 = sub_220C6ED78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetailViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF18, &qword_220CADE60);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6ED78();
  sub_220CA1254();
  LOBYTE(v59) = 0;
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v14 = sub_220C04F84(v12, v13, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_17(v3, &v59, v5, v11, v14);
  if (!v2)
  {
    v15 = type metadata accessor for DetailViewEvent.Model(0);
    v16 = v15[5];
    LOBYTE(v59) = 1;
    v17 = sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    v20 = sub_220C04F84(v18, v19, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_17(v3 + v16, &v59, v5, v17, v20);
    v21 = v3 + v15[6];
    v22 = *v21;
    v23 = *(v21 + 8);
    LOWORD(v21) = *(v21 + 16);
    *&v59 = v22;
    *(&v59 + 1) = v23;
    LOWORD(v60) = v21;
    v62 = 2;
    v24 = sub_220C04820();

    v25 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v25, v26, v27, v28, v24);
    if (!v24)
    {

      LOBYTE(v59) = *(v3 + v15[7]);
      v62 = 3;
      sub_220C6EDCC();
      v29 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v29, v30, v31, v32, v33);
      LOWORD(v59) = *(v3 + v15[8]);
      v62 = 4;
      sub_220BFE5BC();
      v34 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v34, v35, v36, v37, v38);
      v59 = *(v3 + v15[9]);
      v62 = 5;
      sub_220C05568();
      v39 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v39, v40, v41, v42, v43);
      LOWORD(v59) = *(v3 + v15[10]);
      v62 = 6;
      sub_220C6EE20();
      v44 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v44, v45, v46, v47, v48);
      v50 = v3 + v15[11];
      v51 = *v50;
      v52 = *(v50 + 8);
      v53 = *(v50 + 16);
      LOBYTE(v50) = *(v50 + 20);
      *&v59 = v51;
      *(&v59 + 1) = v52;
      v60 = v53;
      v61 = v50;
      v62 = 7;
      v54 = sub_220BFF788();

      v55 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v55, v56, v57, v58, v54);
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C6ED78()
{
  result = qword_27CF7CF20;
  if (!qword_27CF7CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF20);
  }

  return result;
}

unint64_t sub_220C6EDCC()
{
  result = qword_27CF7CF28;
  if (!qword_27CF7CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF28);
  }

  return result;
}

unint64_t sub_220C6EE20()
{
  result = qword_27CF7CF30;
  if (!qword_27CF7CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF30);
  }

  return result;
}

uint64_t DetailViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v28 = v4;
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v7 = v6 - v5;
  sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v30 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF38, &qword_220CADE68);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v32 = type metadata accessor for DetailViewEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C6ED78();
  sub_220CA1234();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_7();
  sub_220C04F84(v18, v19, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v30 + 32))(v17, v12);
  LOBYTE(v33) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v20, v21, MEMORY[0x277CEAEE0]);
  sub_220CA1034();
  (*(v28 + 32))(v17 + v32[5], v7, v29);
  sub_220C0449C();
  OUTLINED_FUNCTION_2_15(&type metadata for ViewData);
  v22 = v17 + v32[6];
  *v22 = v33;
  *(v22 + 16) = v34;
  sub_220C6F41C();
  OUTLINED_FUNCTION_2_15(&type metadata for DetailViewData);
  *(v17 + v32[7]) = 1;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_15(&type metadata for OrientationData);
  *(v17 + v32[8]) = v33;
  sub_220C05514();
  OUTLINED_FUNCTION_2_15(&type metadata for LocationData);
  *(v17 + v32[9]) = v33;
  sub_220C6F470();
  OUTLINED_FUNCTION_2_15(&type metadata for DetailViewOriginationData);
  *(v17 + v32[10]) = v33;
  sub_220BFF730();
  OUTLINED_FUNCTION_2_15(&type metadata for PrivateUserData);
  v23 = OUTLINED_FUNCTION_12_5();
  v24(v23);
  v25 = v17 + v32[11];
  *v25 = v33;
  *(v25 + 16) = v34;
  *(v25 + 20) = v35;
  sub_220C6F4C4(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C6F528(v17);
}

unint64_t sub_220C6F41C()
{
  result = qword_27CF7CF40;
  if (!qword_27CF7CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF40);
  }

  return result;
}

unint64_t sub_220C6F470()
{
  result = qword_27CF7CF48;
  if (!qword_27CF7CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF48);
  }

  return result;
}

uint64_t sub_220C6F4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C6F528(uint64_t a1)
{
  v2 = type metadata accessor for DetailViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C6F5EC(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C6F850(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_220C6F850(319, &qword_27CF7CF60, sub_220C6F41C, sub_220C6EDCC, &type metadata for DetailViewData);
        if (v4 <= 0x3F)
        {
          sub_220C6F850(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_220C6F850(319, &qword_2812D0E38, sub_220C05514, sub_220C05568, &type metadata for LocationData);
            if (v6 <= 0x3F)
            {
              sub_220C6F850(319, &qword_27CF7CF68, sub_220C6F470, sub_220C6EE20, &type metadata for DetailViewOriginationData);
              if (v7 <= 0x3F)
              {
                sub_220C6F850(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
                if (v8 <= 0x3F)
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

void sub_220C6F850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C6F8F4(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailViewEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C6FA9C()
{
  result = qword_27CF7CF80;
  if (!qword_27CF7CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF80);
  }

  return result;
}

unint64_t sub_220C6FAF4()
{
  result = qword_27CF7CF88;
  if (!qword_27CF7CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF88);
  }

  return result;
}

unint64_t sub_220C6FB4C()
{
  result = qword_27CF7CF90;
  if (!qword_27CF7CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7CF90);
  }

  return result;
}

uint64_t sub_220C6FBA0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_220CA09D4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C6FE8C(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
      v7 = 3;
      goto LABEL_4;
    case 0x12u:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF20, &unk_220CA6BA0);

      v11 = *(v10 + 64);
      *a1 = 1;
      sub_220C71714(&v6[v11], &qword_27CF7CF98, &qword_220CAE0D8);
      goto LABEL_5;
    case 0x14u:
      v7 = 4;
      goto LABEL_4;
    default:
      v7 = 1;
LABEL_4:
      *a1 = v7;
LABEL_5:
      sub_220CA0684();
      OUTLINED_FUNCTION_1();
      return (*(v8 + 8))(v6);
  }
}

uint64_t sub_220C6FCE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF98, &qword_220CAE0D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  sub_220CA09D4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C6FE8C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 18)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF20, &unk_220CA6BA0);
    v10 = *&v8[*(v9 + 48)];
    sub_220C6FEF0(&v8[*(v9 + 64)], v5);
    sub_220C6FF60(v5, v10, a1);

    sub_220C71714(v5, &qword_27CF7CF98, &qword_220CAE0D8);
    sub_220CA0684();
    OUTLINED_FUNCTION_1();
    return (*(v11 + 8))(v8);
  }

  else
  {
    sub_220CA0684();
    OUTLINED_FUNCTION_1();
    result = (*(v13 + 8))(v8);
    *a1 = 0;
  }

  return result;
}

uint64_t sub_220C6FE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_220CA09D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C6FEF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF98, &qword_220CAE0D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C6FF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v165 = a2;
  v167 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFA0, &qword_220CAE0E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v135 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFA8, &qword_220CAE0E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v135 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFB0, &qword_220CAE0F0);
  MEMORY[0x28223BE20](v10 - 8);
  v150 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFB8, &qword_220CAE0F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v135 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFC0, &qword_220CAE100);
  MEMORY[0x28223BE20](v15 - 8);
  v170 = &v135 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFC8, &qword_220CAE108);
  MEMORY[0x28223BE20](v17 - 8);
  v156 = &v135 - v18;
  v160 = sub_220CA0A44();
  v164 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFD0, &qword_220CAE110);
  MEMORY[0x28223BE20](v20 - 8);
  v161 = &v135 - v21;
  v22 = sub_220CA0854();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v149 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v168 = &v135 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v135 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF98, &qword_220CAE0D8);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v135 - v31;
  v33 = sub_220CA07F4();
  v153 = *(v33 - 8);
  v154 = v33;
  MEMORY[0x28223BE20](v33);
  v169 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v35 = sub_220CA0A84();
  v148 = __swift_project_value_buffer(v35, qword_2812D1770);
  v36 = sub_220CA0A64();
  v37 = sub_220CA0DA4();
  v38 = os_log_type_enabled(v36, v37);
  v152 = v14;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_220BF4000, v36, v37, "About to get provider data", v39, 2u);
    MEMORY[0x223D95B30](v39, -1, -1);
  }

  sub_220C712D0(v167, v32);
  v40 = v154;
  if (__swift_getEnumTagSinglePayload(v32, 1, v154) == 1)
  {
    result = sub_220C71714(v32, &qword_27CF7CF98, &qword_220CAE0D8);
    v42 = 0;
    goto LABEL_85;
  }

  v147 = a3;
  (*(v153 + 32))(v169, v32, v40);
  v44 = *(v165 + 16);
  if (v44)
  {
    v142 = v9;
    v144 = v6;
    v46 = *(v23 + 16);
    v45 = v23 + 16;
    v47 = v165 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v165 = v45 + 72;
    v166 = v46;
    v48 = v45 - 8;
    v157 = (v164 + 8);
    v162 = MEMORY[0x277D84F90];
    v167 = v45;
    v164 = *(v45 + 56);
    v163 = *MEMORY[0x277D7AD00];
    v158 = *MEMORY[0x277D7ACF8];
    v155 = *MEMORY[0x277D7AD18];
    v151 = *MEMORY[0x277D7AD30];
    v146 = *MEMORY[0x277D7AD58];
    v145 = *MEMORY[0x277D7AD20];
    v143 = *MEMORY[0x277D7AD40];
    *&v43 = 136446210;
    v141 = v43;
    v49 = v161;
    while (1)
    {
      v50 = v166;
      v166(v29, v47, v22);
      v51 = v168;
      v50(v168, v29, v22);
      v52 = (*v165)(v51, v22);
      if (v52 == v163)
      {
        break;
      }

      if (v52 == v158)
      {
        v57 = v156;
        sub_220CA0784();
        v58 = v57;
        v59 = sub_220CA0774();
        if (__swift_getEnumTagSinglePayload(v58, 1, v59) != 1)
        {
          v73 = v159;
          sub_220CA0764();
          (*(*(v59 - 8) + 8))(v58, v59);
          v62 = sub_220CA0A34();
          v64 = v74;
          (*v157)(v73, v160);
          if (!v64)
          {
            goto LABEL_77;
          }

          v75 = v162;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_220C7142C(0, *(v75 + 2) + 1, 1, v75);
          }

          v77 = *(v75 + 2);
          v76 = *(v75 + 3);
          v162 = v75;
          if (v77 >= v76 >> 1)
          {
            v162 = sub_220C7142C((v76 > 1), v77 + 1, 1, v162);
          }

          (*v48)(v29, v22);
          v78 = v162;
          *(v162 + 2) = v77 + 1;
          v69 = &v78[24 * v77];
          v70 = 2;
          goto LABEL_31;
        }

        (*v48)(v29, v22);
        v54 = v58;
        v55 = &qword_27CF7CFC8;
        v56 = &qword_220CAE108;
        goto LABEL_15;
      }

      if (v52 != v155)
      {
        if (v52 == v151)
        {
          v79 = v152;
          sub_220CA07D4();
          v80 = sub_220CA08B4();
          if (__swift_getEnumTagSinglePayload(v79, 1, v80) != 1)
          {
            v92 = v159;
            sub_220CA08A4();
            (*(*(v80 - 8) + 8))(v79, v80);
            v93 = sub_220CA0A34();
            v95 = v94;
            (*v157)(v92, v160);
            if (!v95)
            {
              goto LABEL_77;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v49 = v161;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v162 = sub_220C7142C(0, *(v162 + 2) + 1, 1, v162);
            }

            v98 = *(v162 + 2);
            v97 = *(v162 + 3);
            if (v98 >= v97 >> 1)
            {
              v162 = sub_220C7142C((v97 > 1), v98 + 1, 1, v162);
            }

            (*v48)(v29, v22);
            v99 = v162;
            *(v162 + 2) = v98 + 1;
            v100 = &v99[24 * v98];
            v101 = 4;
LABEL_76:
            v100[32] = v101;
            *(v100 + 5) = v93;
            *(v100 + 6) = v95;
            goto LABEL_79;
          }

          (*v48)(v29, v22);
          v54 = v79;
          v55 = &qword_27CF7CFB8;
          v56 = &qword_220CAE0F8;
        }

        else if (v52 == v146)
        {
          v90 = v150;
          sub_220CA07E4();
          v91 = sub_220CA08E4();
          if (__swift_getEnumTagSinglePayload(v90, 1, v91) != 1)
          {
            v104 = v159;
            sub_220CA08D4();
            (*(*(v91 - 8) + 8))(v90, v91);
            v93 = sub_220CA0A34();
            v95 = v105;
            (*v157)(v104, v160);
            if (!v95)
            {
              goto LABEL_77;
            }

            v106 = swift_isUniquelyReferenced_nonNull_native();
            v49 = v161;
            if ((v106 & 1) == 0)
            {
              v162 = sub_220C7142C(0, *(v162 + 2) + 1, 1, v162);
            }

            v108 = *(v162 + 2);
            v107 = *(v162 + 3);
            if (v108 >= v107 >> 1)
            {
              v162 = sub_220C7142C((v107 > 1), v108 + 1, 1, v162);
            }

            (*v48)(v29, v22);
            v109 = v162;
            *(v162 + 2) = v108 + 1;
            v100 = &v109[24 * v108];
            v101 = 5;
            goto LABEL_76;
          }

          (*v48)(v29, v22);
          v54 = v90;
          v55 = &qword_27CF7CFB0;
          v56 = &qword_220CAE0F0;
        }

        else if (v52 == v145)
        {
          v102 = v144;
          sub_220CA07B4();
          v103 = sub_220CA0814();
          if (__swift_getEnumTagSinglePayload(v102, 1, v103) != 1)
          {
            v112 = v159;
            sub_220CA0804();
            (*(*(v103 - 8) + 8))(v102, v103);
            v93 = sub_220CA0A34();
            v95 = v113;
            (*v157)(v112, v160);
            if (!v95)
            {
              goto LABEL_77;
            }

            v114 = swift_isUniquelyReferenced_nonNull_native();
            v49 = v161;
            if ((v114 & 1) == 0)
            {
              v162 = sub_220C7142C(0, *(v162 + 2) + 1, 1, v162);
            }

            v116 = *(v162 + 2);
            v115 = *(v162 + 3);
            if (v116 >= v115 >> 1)
            {
              v162 = sub_220C7142C((v115 > 1), v116 + 1, 1, v162);
            }

            (*v48)(v29, v22);
            v117 = v162;
            *(v162 + 2) = v116 + 1;
            v100 = &v117[24 * v116];
            v101 = 7;
            goto LABEL_76;
          }

          (*v48)(v29, v22);
          v54 = v102;
          v55 = &qword_27CF7CFA0;
          v56 = &qword_220CAE0E0;
        }

        else
        {
          if (v52 != v143)
          {
            v118 = v149;
            v166(v149, v29, v22);
            v119 = sub_220CA0A64();
            v120 = sub_220CA0D94();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v139 = v48 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v122 = v121;
              v140 = swift_slowAlloc();
              v171 = v140;
              *v122 = v141;
              v138 = v119;
              v135 = sub_220CA0844();
              v124 = v123;
              v137 = v120;
              v125 = *v48;
              (*v48)(v118, v22);
              v126 = sub_220BFC484(v135, v124, &v171);

              v136 = v122;
              *(v122 + 4) = v126;
              v127 = v138;
              _os_log_impl(&dword_220BF4000, v138, v137, "Please update this switch to account for the new weather product. product=%{public}s", v122, 0xCu);
              v128 = v140;
              __swift_destroy_boxed_opaque_existential_1(v140);
              MEMORY[0x223D95B30](v128, -1, -1);
              MEMORY[0x223D95B30](v136, -1, -1);
            }

            else
            {

              v125 = *v48;
              (*v48)(v118, v22);
            }

            v125(v29, v22);
            v125(v168, v22);
            goto LABEL_79;
          }

          v110 = v142;
          sub_220CA07C4();
          v111 = sub_220CA0834();
          if (__swift_getEnumTagSinglePayload(v110, 1, v111) != 1)
          {
            v129 = v159;
            sub_220CA0824();
            (*(*(v111 - 8) + 8))(v110, v111);
            v93 = sub_220CA0A34();
            v95 = v130;
            (*v157)(v129, v160);
            if (!v95)
            {
              goto LABEL_77;
            }

            v131 = swift_isUniquelyReferenced_nonNull_native();
            v49 = v161;
            if ((v131 & 1) == 0)
            {
              v162 = sub_220C7142C(0, *(v162 + 2) + 1, 1, v162);
            }

            v133 = *(v162 + 2);
            v132 = *(v162 + 3);
            if (v133 >= v132 >> 1)
            {
              v162 = sub_220C7142C((v132 > 1), v133 + 1, 1, v162);
            }

            (*v48)(v29, v22);
            v134 = v162;
            *(v162 + 2) = v133 + 1;
            v100 = &v134[24 * v133];
            v101 = 8;
            goto LABEL_76;
          }

          (*v48)(v29, v22);
          v54 = v110;
          v55 = &qword_27CF7CFA8;
          v56 = &qword_220CAE0E8;
        }

        goto LABEL_15;
      }

      sub_220CA07A4();
      v71 = v170;
      v72 = sub_220CA0894();
      if (__swift_getEnumTagSinglePayload(v71, 1, v72) != 1)
      {
        v81 = v159;
        sub_220CA0884();
        (*(*(v72 - 8) + 8))(v71, v72);
        v82 = sub_220CA0A34();
        v84 = v83;
        (*v157)(v81, v160);
        if (v84)
        {
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v49 = v161;
          if ((v85 & 1) == 0)
          {
            v162 = sub_220C7142C(0, *(v162 + 2) + 1, 1, v162);
          }

          v87 = *(v162 + 2);
          v86 = *(v162 + 3);
          if (v87 >= v86 >> 1)
          {
            v162 = sub_220C7142C((v86 > 1), v87 + 1, 1, v162);
          }

          (*v48)(v29, v22);
          v88 = v162;
          *(v162 + 2) = v87 + 1;
          v89 = &v88[24 * v87];
          v89[32] = 3;
          *(v89 + 5) = v82;
          *(v89 + 6) = v84;
          goto LABEL_79;
        }

LABEL_77:
        (*v48)(v29, v22);
LABEL_78:
        v49 = v161;
        goto LABEL_79;
      }

      (*v48)(v29, v22);
      sub_220C71714(v71, &qword_27CF7CFC0, &qword_220CAE100);
LABEL_79:
      v47 += v164;
      if (!--v44)
      {
        goto LABEL_84;
      }
    }

    sub_220CA0794();
    v53 = sub_220CA0874();
    if (__swift_getEnumTagSinglePayload(v49, 1, v53) != 1)
    {
      v60 = v49;
      v61 = v159;
      sub_220CA0864();
      (*(*(v53 - 8) + 8))(v60, v53);
      v62 = sub_220CA0A34();
      v64 = v63;
      (*v157)(v61, v160);
      if (!v64)
      {
        goto LABEL_77;
      }

      v65 = v162;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_220C7142C(0, *(v65 + 2) + 1, 1, v65);
      }

      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      v162 = v65;
      if (v67 >= v66 >> 1)
      {
        v162 = sub_220C7142C((v66 > 1), v67 + 1, 1, v162);
      }

      (*v48)(v29, v22);
      v68 = v162;
      *(v162 + 2) = v67 + 1;
      v69 = &v68[24 * v67];
      v70 = 1;
LABEL_31:
      v69[32] = v70;
      *(v69 + 5) = v62;
      *(v69 + 6) = v64;
      goto LABEL_78;
    }

    (*v48)(v29, v22);
    v54 = v49;
    v55 = &qword_27CF7CFD0;
    v56 = &qword_220CAE110;
LABEL_15:
    sub_220C71714(v54, v55, v56);
    goto LABEL_79;
  }

  v162 = MEMORY[0x277D84F90];
LABEL_84:
  result = (*(v153 + 8))(v169, v154);
  a3 = v147;
  v42 = v162;
LABEL_85:
  *a3 = v42;
  return result;
}
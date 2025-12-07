uint64_t Assembly.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95600, &qword_220DC29D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220DC1CC0;
  v3 = type metadata accessor for ChartAssembly();
  v4 = OUTLINED_FUNCTION_0_4(v3);
  *(v2 + 56) = v1;
  *(v2 + 64) = sub_220CD3254(&qword_280FA7700, type metadata accessor for ChartAssembly, &unk_220DC43B0);
  *(v2 + 32) = v4;
  v5 = type metadata accessor for DetailsAssembly();
  v6 = OUTLINED_FUNCTION_0_4(v5);
  *(v2 + 96) = v1;
  *(v2 + 104) = sub_220CD3254(qword_280FA7528, type metadata accessor for DetailsAssembly, &unk_220DC2864);
  *(v2 + 72) = v6;
  v7 = type metadata accessor for StringBuilderAssembly();
  v8 = OUTLINED_FUNCTION_0_4(v7);
  *(v2 + 136) = v1;
  *(v2 + 144) = sub_220CD3254(&qword_280FA72F0, type metadata accessor for StringBuilderAssembly, &unk_220DC3348);
  *(v2 + 112) = v8;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_220CD3254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return sub_220DBF240();
}

double OUTLINED_FUNCTION_0_8@<D0>(uint64_t a1@<X8>)
{
  result = *(a1 + 24);
  *v1 = *a1;
  *(v1 + 8) = *(a1 + 8);
  *(v1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return sub_220DBF250();
}

double OUTLINED_FUNCTION_0_14()
{
  *(v1 - 240) = v0;
  v3 = *(v1 - 160);
  *(v1 - 224) = *(v1 - 176);
  *(v1 - 208) = v3;
  *(v1 - 192) = *(v1 - 144);

  return CurrentWeather.chartValue(for:units:)((v1 - 240), (v1 - 224));
}

uint64_t OUTLINED_FUNCTION_0_25()
{
  sub_220DA9DA4(*(v0 + 16), *(v0 + 24));
}

__n128 OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, uint64_t a13)
{
  result = a11;
  *v13 = a11;
  *(v13 + 16) = a12;
  *(v13 + 32) = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_30(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_220CD36EC()
{
  sub_220DBF230();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  OUTLINED_FUNCTION_0_13(v0);

  sub_220DBF230();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
  OUTLINED_FUNCTION_0_13(v1);

  sub_220DBF230();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A68, &qword_220DC43E8);
  OUTLINED_FUNCTION_0_13(v2);

  sub_220DBF230();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A70, &qword_220DC43F0);
  OUTLINED_FUNCTION_0_13(v3);
}

uint64_t sub_220CD3830()
{
  v0 = sub_220DBF2B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBF230();
  sub_220DC0400();
  OUTLINED_FUNCTION_0_3();
  sub_220DBF240();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  sub_220DC0330();
  OUTLINED_FUNCTION_0_3();
  sub_220DBF240();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95550, &qword_220DC28A0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95558, &qword_220DC28A8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  v4 = *MEMORY[0x277D6CF10];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_220DBF1E0();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95560, &qword_220DC28B0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  v5(v3, v4, v0);
  sub_220DBF1E0();

  v6(v3, v0);
  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95568, &qword_220DC28B8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95570, &qword_220DC28C0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95578, &qword_220DC28C8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95580, &qword_220DC28D0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95588, &qword_220DC28D8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95590, &qword_220DC28E0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95598, &qword_220DC28E8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955A0, &qword_220DC28F0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955A8, &qword_220DC28F8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955B0, &qword_220DC2900);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955B8, &qword_220DC2908);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955C0, &qword_220DC2910);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955C8, &qword_220DC2918);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955D0, &qword_220DC2920);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955D8, &qword_220DC2928);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();
}

uint64_t sub_220CD3F64(uint64_t a1)
{
  sub_220DBF230();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95878, &qword_220DC3370);
  OUTLINED_FUNCTION_0_6(v1);

  sub_220DBF230();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95880, &qword_220DC3378);
  OUTLINED_FUNCTION_0_6(v2);

  sub_220DBF230();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95888, &qword_220DC3380);
  OUTLINED_FUNCTION_0_6(v3);

  sub_220DBF230();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95890, &qword_220DC3388);
  OUTLINED_FUNCTION_0_6(v4);

  sub_220DBF230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95898, &unk_220DC3390);
  OUTLINED_FUNCTION_0_6(v5);
}

uint64_t type metadata accessor for UVIndexComponentDescriptionContext(uint64_t a1)
{
  result = qword_280FA6A38;
  if (!qword_280FA6A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220CD411C(uint64_t a1)
{
  sub_220DBEAD0();
  if (v1 <= 0x3F)
  {
    sub_220CD41D0(319);
    if (v2 <= 0x3F)
    {
      sub_220CD431C(319);
      if (v3 <= 0x3F)
      {
        sub_220DBE740();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220CD41D0(uint64_t a1)
{
  if (!qword_280FA7730)
  {
    sub_220DBE830();
    v1 = MEMORY[0x277CE3158];
    sub_220CD42D4(&qword_280FA7770, MEMORY[0x277CE3158], MEMORY[0x277CE3170]);
    sub_220CD42D4(&qword_280FA7780, v1, MEMORY[0x277CE3160]);
    sub_220CD42D4(&qword_280FA7778, v1, MEMORY[0x277CE3168]);
    v2 = sub_220DBEFC0();
    if (!v3)
    {
      atomic_store(v2, &qword_280FA7730);
    }
  }
}

uint64_t sub_220CD42D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220CD431C(uint64_t a1)
{
  if (!qword_280FA7718)
  {
    sub_220DBE960();
    v1 = MEMORY[0x277CE31A0];
    sub_220CD42D4(&qword_280FA7758, MEMORY[0x277CE31A0], MEMORY[0x277CE31B8]);
    sub_220CD42D4(&qword_280FA7768, v1, MEMORY[0x277CE31A8]);
    sub_220CD42D4(&qword_280FA7760, v1, MEMORY[0x277CE31B0]);
    v2 = sub_220DBEFC0();
    if (!v3)
    {
      atomic_store(v2, &qword_280FA7718);
    }
  }
}

uint64_t type metadata accessor for PrecipitationComponentDescriptionContext(uint64_t a1)
{
  result = qword_280FA6858;
  if (!qword_280FA6858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220CD446C(uint64_t a1)
{
  sub_220DBEAD0();
  if (v1 <= 0x3F)
  {
    sub_220CD41D0(319);
    if (v2 <= 0x3F)
    {
      sub_220CD431C(319);
      if (v3 <= 0x3F)
      {
        sub_220DBE740();
        if (v4 <= 0x3F)
        {
          sub_220CD4540();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_220CD4540()
{
  if (!qword_280FA72F8)
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA72F8);
    }
  }
}

uint64_t IsSameDayCache.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E8, &unk_220DC2EA0);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

uint64_t type metadata accessor for IsSameDayCache.StartOfDayKey(uint64_t a1)
{
  result = qword_280FA7628;
  if (!qword_280FA7628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CD4650(uint64_t a1)
{
  result = sub_220DBE560();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220CD46CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_220CD475C()
{
  result = qword_280FA7038;
  if (!qword_280FA7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7038);
  }

  return result;
}

uint64_t sub_220CD47D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  sub_220DBEAD0();
  sub_220CD5EAC();
  sub_220CD5F00();
  sub_220CD489C();
  sub_220CD48F0();
  sub_220CD5F54();
  return sub_220DC0360();
}

unint64_t sub_220CD489C()
{
  result = qword_280FA7328;
  if (!qword_280FA7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7328);
  }

  return result;
}

unint64_t sub_220CD48F0()
{
  result = qword_280FA7338[0];
  if (!qword_280FA7338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA7338);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC87E0];

  return sub_220CE161C(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_1_16(unint64_t *a1)
{
  v4 = MEMORY[0x277CE37A8];

  return sub_220CE161C(a1, v2, v1, v4);
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_220D2D7A4(v1, v0, type metadata accessor for PrecipitationPlatterPrecipitationKind);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_220CD4DEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CD4E24(uint64_t a1)
{
  sub_220CD60C4(319, &qword_280FA6638, type metadata accessor for DetailChartDataElement);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = type metadata accessor for DetailChartDataElement(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    v4 = sub_220DBF1D0();
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_220DBE560();
      if (v7 <= 0x3F)
      {
        sub_220CD60C4(319, &qword_280FA6630, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_220CD62EC();
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_220CD60C4(319, &qword_280FA6640, MEMORY[0x277CC9578]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_220CD4FAC(uint64_t a1)
{
  sub_220DBE560();
  if (v1 <= 0x3F)
  {
    sub_220CD617C(319, &qword_280FA77C8, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DetailChartDataElement.ValueLabel(319);
      if (v3 <= 0x3F)
      {
        sub_220CD617C(319, &qword_280FA6688, MEMORY[0x277CE0F78]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220CD5094(uint64_t a1)
{
  sub_220CD511C(319);
  if (v1 <= 0x3F)
  {
    sub_220CD61E8();
    if (v2 <= 0x3F)
    {
      sub_220CD6210();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220CD511C(uint64_t a1)
{
  if (!qword_280FA6650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95A48, &unk_220DC4100);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA6650);
    }
  }
}

uint64_t sub_220CD5194(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  swift_allocObject();
  return sub_220DC0380();
}

uint64_t sub_220CD5204()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220DBEAD0();
  sub_220CD5288();
  sub_220CD52DC();

  return MEMORY[0x2821E36B8]();
}

unint64_t sub_220CD5288()
{
  result = qword_280FA7030;
  if (!qword_280FA7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7030);
  }

  return result;
}

unint64_t sub_220CD52DC()
{
  result = qword_280FA7040;
  if (!qword_280FA7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7040);
  }

  return result;
}

uint64_t sub_220CD5330(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95898, &unk_220DC3390);
  swift_allocObject();
  return sub_220DC0380();
}

void *sub_220CD5398(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
  result = sub_220DBF200();
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_220CD570C(&v12, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_220CD570C(&v10, &v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_220CD570C(&v8, &v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220CD570C(&v6, &v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (v5)
  {
    sub_220CD570C(&v4, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    type metadata accessor for PrecipitationComponentDescriptionContext(0);
    sub_220CD57E0();
    sub_220CD5834();
    sub_220CD5888();
    sub_220CD58DC();
    sub_220CD5930();
    v3 = sub_220DC0360();
    sub_220CD5998(&v6);
    sub_220CD59EC(&v8);
    sub_220CD5A40(&v10);
    sub_220CD5A94(&v12);
    sub_220CD5AE8(v14);
    return v3;
  }

LABEL_11:
  __break(1u);
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

void *sub_220CD565C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v6)
  {
    a2[3] = &type metadata for PrecipitationEventCalculator;
    a2[4] = &protocol witness table for PrecipitationEventCalculator;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_220CD570C(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220CD570C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_220CD5724()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220CD575C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for PrecipitationCalculator;
  a1[4] = &protocol witness table for PrecipitationCalculator;
  type metadata accessor for IsSameDayCache();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E8, &unk_220DC2EA0);
  swift_allocObject();
  result = sub_220DBF280();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

unint64_t sub_220CD57E0()
{
  result = qword_280FA6E30;
  if (!qword_280FA6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6E30);
  }

  return result;
}

unint64_t sub_220CD5834()
{
  result = qword_280FA7708;
  if (!qword_280FA7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7708);
  }

  return result;
}

unint64_t sub_220CD5888()
{
  result = qword_280FA7028;
  if (!qword_280FA7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7028);
  }

  return result;
}

unint64_t sub_220CD58DC()
{
  result = qword_280FA6CE0;
  if (!qword_280FA6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6CE0);
  }

  return result;
}

unint64_t sub_220CD5930()
{
  result = qword_280FA6CE8[0];
  if (!qword_280FA6CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA6CE8);
  }

  return result;
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

void *sub_220CD5B3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v7)
  {
    v4 = type metadata accessor for PrecipitationTotalHeroStringBuilder();
    v5 = swift_allocObject();
    result = sub_220CD570C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_283474388;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220CD5C34()
{
  sub_220DBEF70();
  type metadata accessor for UVIndexComponentDescriptionContext(0);
  sub_220CD5D08();
  sub_220CD5D5C();
  sub_220CD5DB0();
  sub_220CD5E04();
  sub_220CD5E58();
  sub_220CD475C();
  return sub_220DC0350();
}

unint64_t sub_220CD5D08()
{
  result = qword_280FA7488[0];
  if (!qword_280FA7488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA7488);
  }

  return result;
}

unint64_t sub_220CD5D5C()
{
  result = qword_280FA7710;
  if (!qword_280FA7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7710);
  }

  return result;
}

unint64_t sub_220CD5DB0()
{
  result = qword_280FA6ED8[0];
  if (!qword_280FA6ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA6ED8);
  }

  return result;
}

unint64_t sub_220CD5E04()
{
  result = qword_280FA6868[0];
  if (!qword_280FA6868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA6868);
  }

  return result;
}

unint64_t sub_220CD5E58()
{
  result = qword_280FA7250;
  if (!qword_280FA7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7250);
  }

  return result;
}

unint64_t sub_220CD5EAC()
{
  result = qword_280FA73D8[0];
  if (!qword_280FA73D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA73D8);
  }

  return result;
}

unint64_t sub_220CD5F00()
{
  result = qword_280FA7330;
  if (!qword_280FA7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7330);
  }

  return result;
}

unint64_t sub_220CD5F54()
{
  result = qword_280FA7048[0];
  if (!qword_280FA7048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA7048);
  }

  return result;
}

uint64_t sub_220CD5FD0()
{
  v0 = sub_220DBEAD0();
  v1 = sub_220CD6024();
  v2 = MEMORY[0x277D839F8];

  return MEMORY[0x2821E36A0](v1, v2, v0, &type metadata for HumidityDewPointRule, v1);
}

unint64_t sub_220CD6024()
{
  result = qword_280FA7320;
  if (!qword_280FA7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7320);
  }

  return result;
}

void sub_220CD60C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220DC0770();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220CD6118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_220CD617C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_220DC0AE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220CD61E8()
{
  result = qword_280FA6628;
  if (!qword_280FA6628)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_280FA6628);
  }

  return result;
}

uint64_t sub_220CD6210()
{
  result = qword_280FA6648;
  if (!qword_280FA6648)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280FA6648);
  }

  return result;
}

uint64_t sub_220CD6258(uint64_t a1)
{
  result = sub_220DBE560();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DetailChartDataElement(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_220CD62EC()
{
  if (!qword_280FA6E38[0])
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, qword_280FA6E38);
    }
  }
}

uint64_t IsSameDayCache.startOfDay(_:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4();
  v37 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsSameDay = type metadata accessor for IsSameDayCache.StartOfDayKey(0);
  v18 = IsSameDay - 8;
  MEMORY[0x28223BE20](IsSameDay);
  OUTLINED_FUNCTION_4();
  v35 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v34 - v22);
  v36 = a2;
  sub_220DBE6B0();
  v24 = sub_220DBE6F0();
  v26 = v25;
  (*(v13 + 8))(v16, v11);
  v27 = *(v18 + 28);
  v28 = sub_220DBE560();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v30(v23 + v27, a1, v28);
  *v23 = v24;
  v23[1] = v26;
  sub_220DBF290();
  if (__swift_getEnumTagSinglePayload(v10, 1, v28) == 1)
  {
    sub_220CD8040(v10);
    v31 = v38;
    sub_220DBE5F0();
    sub_220CD80A8(v23, v35);
    v32 = v37;
    v30(v37, v31, v28);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v28);
    sub_220DBF2A0();
    return sub_220CD6B34(v23);
  }

  else
  {
    sub_220CD6B34(v23);
    return (*(v29 + 32))(v38, v10, v28);
  }
}

uint64_t sub_220CD6660()
{
  sub_220DC0CE0();
  sub_220DC0660();
  sub_220DBE560();
  sub_220CD46CC(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return sub_220CE1D80(v0, type metadata accessor for PrecipitationTomorrowSentence);
}

uint64_t OUTLINED_FUNCTION_4_17()
{

  return sub_220CE1E88(v0, type metadata accessor for PrecipitationWithinOneDaySentence);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_220D6F900(v0, type metadata accessor for ChartKind);
}

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_4_24()
{
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211C5E0](v2 - 144, a2, a2);
}

uint64_t sub_220CD6AB4(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IsSameDayCache.StartOfDayKey(0);

  return sub_220DBE460();
}

uint64_t sub_220CD6B34(uint64_t a1)
{
  IsSameDay = type metadata accessor for IsSameDayCache.StartOfDayKey(0);
  (*(*(IsSameDay - 8) + 8))(a1, IsSameDay);
  return a1;
}

BOOL FeelsLikeNoDifferenceRule.isSatisfied(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  sub_220DBE110();
  sub_220DBE050();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  v10 = round(v8);
  sub_220DBE9B0();
  sub_220DBE110();
  v9(v6, v0);
  sub_220DBE050();
  v12 = v11;
  v9(v4, v0);
  return v10 - round(v12) == 0.0;
}

BOOL FeelsLikeDifferenceRule.isSatisfied(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_220DBE110();
  sub_220DBE050();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v8, v0);
  v12 = round(v10);
  sub_220DBE9B0();
  sub_220DBE110();
  v11(v8, v0);
  sub_220DBE050();
  v14 = v13;
  v11(v6, v0);
  v15 = round(v14);
  return v12 > v15 || v12 < v15;
}

uint64_t FeelsLikeDifferenceRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v30[1] = a2;
  sub_220DBE5C0();
  OUTLINED_FUNCTION_0();
  v33 = v3;
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE5E0();
  OUTLINED_FUNCTION_0();
  v31 = v7;
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v30 - v17;
  v19 = objc_opt_self();
  v20 = [v19 fahrenheit];
  sub_220DBE130();

  sub_220DBE050();
  v22 = v21;
  v23 = *(v12 + 8);
  v23(v18, v10);
  sub_220DBE9B0();
  v24 = [v19 fahrenheit];
  sub_220DBE130();

  v23(v16, v10);
  sub_220DBE050();
  v26 = v25;
  v23(v18, v10);
  sub_220DBE580();
  sub_220DBE5D0();
  (*(v31 + 8))(v9, v32);
  v27 = sub_220DBE5A0();
  (*(v33 + 8))(v5, v34);
  if (v22 <= v26)
  {
    if (v27)
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v22 < 40.0)
      {
        OUTLINED_FUNCTION_19();
        if (!v28)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        goto LABEL_21;
      }

      OUTLINED_FUNCTION_19();
      if (v28)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_0();
        return sub_220DBE240();
      }
    }

    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_21;
  }

  if ((v27 & 1) == 0)
  {
    if (v22 >= 92.0)
    {
      OUTLINED_FUNCTION_19();
      if (!v28)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v28)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    goto LABEL_21;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  return sub_220DBE240();
}

void OUTLINED_FUNCTION_5_10()
{

  sub_220CE5648();
}

void OUTLINED_FUNCTION_5_19()
{
  v2 = (v0 + *(v1 + 24));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_5_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return type metadata accessor for ConditionDetailChartHeaderInput(0);
}

void OUTLINED_FUNCTION_5_32()
{
  v4 = (v0 + *(v1 + 28));
  *v4 = v2;
  v4[1] = v3;
}

void *OUTLINED_FUNCTION_18_0(void *result)
{
  v2 = *(v1 - 264);
  *result = *(v1 - 400);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_18_14@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 - 256) = a1;
  a1[1] = a3;
  return *(v3 - 272);
}

uint64_t OUTLINED_FUNCTION_18_15(uint64_t a1)
{

  return sub_220DC0CA0();
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_220DBF310();
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return sub_220DB7114(v0, v1);
}

id sub_220CD78F0()
{
  _s12BundleLookupCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280FA6608 = result;
  return result;
}

void OUTLINED_FUNCTION_2_1()
{
  v4 = (v3 + v0[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v3 + v0[7]);
  *v5 = v1;
  v5[1] = v2;
  v6 = (v3 + v0[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v3 + v0[11]);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + v0[9]) = 0;
}

__n128 *OUTLINED_FUNCTION_2_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v2);
  v5 = *(v3 - 320);
  *v4 = *(v3 - 328);
  v4[1] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_220D18B64(v0, type metadata accessor for PrecipitationTotalStringAmount);
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1)
{
  v4 = v2 + *(a1 + 48);

  return sub_220D18B04(v4, v1, type metadata accessor for PrecipitationTotalStringAmount);
}

uint64_t OUTLINED_FUNCTION_2_14(unint64_t *a1)
{
  v4 = MEMORY[0x277CE37B8];

  return sub_220CE161C(a1, v2, v1, v4);
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{
  v3 = *(v1 - 432);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

void OUTLINED_FUNCTION_2_17()
{
  v3 = (v0 + v1[8]);
  v4 = *(v2 - 128);
  *v3 = *(v2 - 160);
  v3[1] = v4;
  v5 = (v0 + v1[11]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[9]) = 0;
}

uint64_t OUTLINED_FUNCTION_2_36@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 8) = a2;
  *(a1 + 24) = v3;
  return v2;
}

uint64_t sub_220CD7E14(uint64_t a1)
{
  result = type metadata accessor for PrecipitationTotalStringAmount.Format(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220CD7E90(uint64_t a1)
{
  if (!qword_280FA77A8)
  {
    sub_220CD8184(255, &qword_280FA6618, 0x277CCAE20);
    v1 = sub_220DBE140();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA77A8);
    }
  }
}

void sub_220CD7EF8(uint64_t a1)
{
  sub_220CD7F80();
  if (v1 <= 0x3F)
  {
    sub_220CD7FC8(319);
    if (v2 <= 0x3F)
    {
      sub_220CD81C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220CD7F80()
{
  if (!qword_280FA77B0)
  {
    sub_220CD7E90(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280FA77B0);
    }
  }
}

void sub_220CD7FC8(uint64_t a1)
{
  if (!qword_280FA77C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95208, &unk_220DC1E40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA77C0);
    }
  }
}

uint64_t sub_220CD8040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CD80A8(uint64_t a1, uint64_t a2)
{
  IsSameDay = type metadata accessor for IsSameDayCache.StartOfDayKey(0);
  (*(*(IsSameDay - 8) + 16))(a2, a1, IsSameDay);
  return a2;
}

uint64_t SevereAlertComponentStringsBuilder.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_220DC0200();
  swift_allocObject();
  result = sub_220DC01F0();
  *a1 = result;
  return result;
}

uint64_t sub_220CD8184(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_220CD81C4(uint64_t a1)
{
  if (!qword_280FA77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95208, &unk_220DC1E40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA77B8);
    }
  }
}

uint64_t sub_220CD8288(uint64_t a1)
{
  result = type metadata accessor for PrecipitationTotalStringAmount(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrecipitationTotalHeroStringTimeframe(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220CD831C(uint64_t a1)
{
  v1 = sub_220DBE560();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_220CD83AC@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v151 = a4;
  v149 = a3;
  v146 = a2;
  v152 = a5;
  v145 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_57();
  v131[4] = v9;
  v143 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_57();
  v133 = v13;
  v140 = type metadata accessor for PresentativePastHourRange(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v141 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v147 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v153 = v19;
  v154 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  v27 = v131 - v26;
  v28 = sub_220DBEE10();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9();
  v138 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  v137 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = v131 - v36;
  v38 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = v131 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = v131 - v45;
  sub_220DBEA60();
  sub_220DBE480();
  v47 = *(v40 + 8);
  v48 = v44;
  v49 = v38;
  v151 = v40 + 8;
  v47(v48, v38);
  v50 = v47;
  v156 = 2;
  v148 = a1;
  sub_220DBEA50();
  sub_220DBEDD0();
  v53 = *(v30 + 8);
  v51 = v30 + 8;
  v52 = v53;
  v139 = v28;
  v53(v37, v28);
  v54 = v154;
  sub_220DBE050();
  v56 = v55;
  v58 = v153 + 8;
  v57 = *(v153 + 8);
  v142 = v27;
  v59 = v150;
  v144 = v57;
  (v57)(v27, v54);
  if (v56 > 0.0 && (sub_220CD9818(&v156, v59, v46, v148, v146) & 1) != 0)
  {
    v131[1] = v58;
    v131[3] = v50;
    v146 = v46;
    v149 = v49;
    v60 = v59[5];
    v61 = v59[6];
    v131[2] = __swift_project_boxed_opaque_existential_1(v59 + 2, v60);
    sub_220DBEA20();
    v62 = v137;
    sub_220DBEA30();
    v63 = v138;
    sub_220DBEA50();
    v64 = v147;
    (*(v61 + 40))(v37, v62, v63, v60, v61);
    v65 = v139;
    v52(v63, v139);
    v52(v62, v65);
    v52(v37, v65);
    v66 = v141;
    sub_220D5AC7C(v64, v141);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v68 = v154;
      v69 = v142;
      if (EnumCaseMultiPayload == 1)
      {
        v70 = OUTLINED_FUNCTION_1_28();
        v71 = v134;
        sub_220D5ACE0(v70, v134, v72);
        OUTLINED_FUNCTION_9_16();
        v74 = *(v73 + 24);
        v155[1] = *(v71 + v74);
        OUTLINED_FUNCTION_18_9();
        v75 = OUTLINED_FUNCTION_13_11();
        v76(v75);
        v77 = *(v153 + 16);
        v78 = OUTLINED_FUNCTION_16_13(&v157);
        v77(v78);
        (v77)(v69, v63, v68);
        OUTLINED_FUNCTION_11_11();
        if (v79)
        {
          v80 = 1;
        }

        else
        {
          v80 = 0;
        }

        v81 = (2 * v80);
        v82 = v152;
        if (v79)
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CF8B70();
        }

        else
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CDB1D4();
        }

        v106 = OUTLINED_FUNCTION_19_9(&v157);
        v107 = v144;
        v144(v106);
        *v52 = v81;
        v108 = *(v71 + v74);
        v109 = type metadata accessor for PrecipitationTotalHeroString(0);
        v110 = OUTLINED_FUNCTION_12_15(v109);
        OUTLINED_FUNCTION_15_10(v110, 2);
        v111 = v71 + v150;
        sub_220DBE050();
        v112 = &v160;
      }

      else
      {
        v96 = OUTLINED_FUNCTION_1_28();
        v71 = v135;
        sub_220D5ACE0(v96, v135, v97);
        OUTLINED_FUNCTION_9_16();
        v99 = *(v98 + 24);
        v155[2] = *(v71 + v99);
        OUTLINED_FUNCTION_18_9();
        v100 = OUTLINED_FUNCTION_13_11();
        v101(v100);
        v102 = *(v153 + 16);
        v103 = OUTLINED_FUNCTION_16_13(&v159);
        v102(v103);
        (v102)(v69, v63, v68);
        OUTLINED_FUNCTION_11_11();
        if (v104)
        {
          v105 = 1;
        }

        else
        {
          v105 = 0;
        }

        v81 = (2 * v105);
        v82 = v152;
        if (v104)
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CF8B70();
        }

        else
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CDB1D4();
        }

        v122 = OUTLINED_FUNCTION_19_9(&v159);
        v107 = v144;
        v144(v122);
        *v52 = v81;
        v108 = *(v71 + v99);
        v123 = type metadata accessor for PrecipitationTotalHeroString(0);
        v124 = OUTLINED_FUNCTION_12_15(v123);
        OUTLINED_FUNCTION_15_10(v124, 3);
        v111 = v71 + v150;
        sub_220DBE050();
        v112 = &v161;
      }

      v125 = OUTLINED_FUNCTION_19_9(v112);
      v107(v125);
      OUTLINED_FUNCTION_6_14();
      sub_220CDD864(v71, v126);
      OUTLINED_FUNCTION_7_17();
      v127 = OUTLINED_FUNCTION_14_15();
      v128(v127);
      v129 = OUTLINED_FUNCTION_0_18();
      result = sub_220D5ACE0(v129, v82, v130);
      v82[*(v81 + 20)] = v108;
    }

    else
    {
      v84 = OUTLINED_FUNCTION_1_28();
      v85 = v133;
      sub_220D5ACE0(v84, v133, v86);
      OUTLINED_FUNCTION_9_16();
      v88 = *(v87 + 20);
      v89 = *(v87 + 24);
      v155[0] = *(v85 + v89);
      v90 = v136;
      (*(v51 + 8))(v85, v85 + v88, v155, v66, v51);
      v91 = v154;
      v92 = *(v153 + 16);
      v93 = v132;
      v92(v132, v90, v154);
      v92(v142, v93, v91);
      OUTLINED_FUNCTION_11_11();
      if (v94)
      {
        v95 = 1;
      }

      else
      {
        v95 = 0;
      }

      v81 = (2 * v95);
      if (v94)
      {
        OUTLINED_FUNCTION_10_15();
        sub_220CF8B70();
      }

      else
      {
        OUTLINED_FUNCTION_10_15();
        sub_220CDB1D4();
      }

      v82 = v152;
      v113 = v144;
      (v144)(v93, v91);
      *v52 = v81;
      LODWORD(v153) = *(v85 + v89);
      v114 = type metadata accessor for PrecipitationTotalHeroString(0);
      v115 = OUTLINED_FUNCTION_12_15(v114);
      OUTLINED_FUNCTION_15_10(v115, 1);
      v111 = v85 + v88;
      sub_220DBE050();
      v116 = OUTLINED_FUNCTION_19_9(&v158);
      v113(v116);
      OUTLINED_FUNCTION_6_14();
      sub_220CDD864(v85, v117);
      OUTLINED_FUNCTION_7_17();
      v118 = OUTLINED_FUNCTION_14_15();
      v119(v118);
      v120 = OUTLINED_FUNCTION_0_18();
      result = sub_220D5ACE0(v120, v82, v121);
      v82[*(v81 + 20)] = v153;
    }

    v82[*(v81 + 28)] = v111;
  }

  else
  {
    sub_220CDA608(v149, 0, v152);
    return v50(v46, v49);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_220DBE020();
}

uint64_t OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X8>)
{

  return sub_220CDDBBC(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v3, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, uint64_t a2)
{

  return sub_220DBE020();
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_220DBE020();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_220DB7064(v1, v0);
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  v3 = *(v1 - 104);

  return sub_220D15FF4(v0, v3);
}

void OUTLINED_FUNCTION_13_13()
{
  v2 = *(v0 + 104);
  *(v1 - 288) = v0 + 104;
  *(v1 - 280) = v2;
}

uint64_t OUTLINED_FUNCTION_13_15()
{
  v3 = *v0;
  *(v2 - 160) = v0[1];
  *(v2 - 144) = v3;
  *(v2 - 176) = v0[2];
  return v1;
}

double OUTLINED_FUNCTION_13_18()
{

  sub_220DBE050();
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{

  return swift_once();
}

__n128 *OUTLINED_FUNCTION_6_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v2);
  v5 = *(v3 - 304);
  *v4 = *(v3 - 464);
  v4[1] = v5;
  return result;
}

void OUTLINED_FUNCTION_6_10()
{
  v2 = (v1 + *(v0 + 32));
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + *(v0 + 44));
  *v3 = 0;
  v3[1] = 0;
}

void *OUTLINED_FUNCTION_6_13()
{
  v2 = *(v0 + 16) + 1;

  return sub_220D563D8(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_6_19()
{
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_26(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_9_0(void *result)
{
  v2 = *(v1 - 200);
  *result = *(v1 - 312);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2)
{

  return sub_220DC0580();
}

uint64_t OUTLINED_FUNCTION_9_19(unint64_t *a1)
{
  v4 = MEMORY[0x277D83958];

  return sub_220CE161C(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1)
{

  return sub_220CDA548(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_23(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_25(uint64_t a1, uint64_t a2)
{

  return sub_220DC0580();
}

void sub_220CD95D4(uint64_t a1)
{
  sub_220CD7E90(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{

  return sub_220DC06D0();
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return sub_220DBF0D0();
}

uint64_t OUTLINED_FUNCTION_24_7()
{
}

void sub_220CD976C()
{
  if (!qword_280FA7020)
  {
    v0 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280FA7020);
    }
  }
}

void sub_220CD97B4(uint64_t a1)
{
  sub_220CD976C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_220CD9818(unsigned __int8 *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v36 = a5;
  v37 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C18, qword_220DC5160);
  v8 = MEMORY[0x28223BE20](v35);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = sub_220DBE560();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v31 - v19;
  v21 = *a1;
  if (v21 != 2)
  {
    return v21 & 1;
  }

  v34 = v18;
  v22 = a2[5];
  v32 = a2[6];
  v33 = v22;
  v23 = __swift_project_boxed_opaque_existential_1(a2 + 2, v22);
  sub_220DBEA60();
  sub_220CD9B24();
  result = sub_220DC0590();
  if (result)
  {
    (*(v14 + 16))(v12, a3, v13);
    v25 = v35;
    v26 = *(v35 + 48);
    v37 = v23;
    v27 = *(v14 + 32);
    v27(&v12[v26], v16, v13);
    sub_220CD9B7C(v12, v10);
    v28 = *(v25 + 48);
    v27(v20, v10, v13);
    v31 = a1;
    v29 = *(v14 + 8);
    v29(&v10[v28], v13);
    sub_220CD9BEC(v12, v10);
    v27(&v20[*(v34 + 36)], &v10[*(v25 + 48)], v13);
    v29(v10, v13);
    LOBYTE(v21) = (*(v32 + 88))(v20, v36, v33);
    sub_220CDA5A0(v20);
    v30 = v31;
    swift_beginAccess();
    *v30 = v21 & 1;
    return v21 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_220CD9B24()
{
  result = qword_280FA7798;
  if (!qword_280FA7798)
  {
    sub_220DBE560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7798);
  }

  return result;
}

uint64_t sub_220CD9B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C18, qword_220DC5160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CD9BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C18, qword_220DC5160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL PrecipitationCalculator.hasPrecipitationOccurred(within:hourlyForecast:)(uint64_t a1)
{
  v2 = *v1;
  v4[2] = a1;
  v4[3] = v2;
  return sub_220CD9CC0(sub_220CDA528, v4);
}

BOOL sub_220CD9CC0(uint64_t (*a1)(char *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v27 = sub_220DBE960();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  (*(v6 + 16))(v8, v2, v5);
  sub_220CDA008(&qword_280FA7728, MEMORY[0x277CE37A8]);
  sub_220DC06D0();
  v13 = *(v10 + 44);
  sub_220CDA008(&qword_280FA7720, MEMORY[0x277CE37B8]);
  v24 = (v3 + 16);
  v25 = (v3 + 8);
  do
  {
    sub_220DC08B0();
    v14 = v31[0];
    v30 = *&v12[v13];
    if (v30 == v31[0])
    {
      break;
    }

    v15 = sub_220DC08E0();
    v16 = v5;
    v17 = v26;
    v18 = v27;
    (*v24)(v26);
    v15(v31, 0);
    sub_220DC08C0();
    v19 = v32;
    v20 = v28(v17);
    v32 = v19;
    if (v19)
    {
      (*v25)(v17, v18);
      break;
    }

    v21 = v20;
    (*v25)(v17, v18);
    v5 = v16;
  }

  while ((v21 & 1) == 0);
  sub_220CDA548(v12, &qword_27CF959D8, &unk_220DC3B00);
  return v30 != v14;
}

uint64_t sub_220CDA008(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95270, &unk_220DC3AF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_220CDA058(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v37 - v7;
  MEMORY[0x28223BE20](v6);
  v40 = &v37 - v8;
  v9 = sub_220DBEBA0();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v37 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = sub_220DBE560();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE8F0();
  sub_220CD9B24();
  v18 = sub_220DC0580();
  v19 = *(v15 + 8);
  v19(v17, v14);
  if (v18)
  {
    return 0;
  }

  sub_220DBE8F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  v20 = sub_220DC0580();
  v19(v17, v14);
  if (v20)
  {
    return 0;
  }

  sub_220DBE950();
  v21 = sub_220DBEB80();
  v22 = *(v43 + 8);
  v23 = v13;
  v24 = v44;
  v22(v23, v44);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v25 = v38;
  sub_220DBE8A0();
  v26 = v39;
  sub_220DBE880();
  v27 = v37;
  sub_220DBE950();
  WeatherCondition.dominantPrecipitation.getter(&v45);
  v22(v27, v24);
  v29 = v40;
  v28 = v41;
  switch(v45)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
      v30 = v42;
      v31 = *(v42 + 8);
      v31(v26, v41);
      (*(v30 + 32))(v29, v25, v28);
      break;
    case 2:
      v36 = v42;
      v31 = *(v42 + 8);
      v31(v25, v41);
      (*(v36 + 32))(v29, v26, v28);
      break;
    default:
      v35 = [objc_opt_self() centimeters];
      sub_220CDB190();
      sub_220DBE040();
      v31 = *(v42 + 8);
      v31(v26, v28);
      v31(v25, v28);
      break;
  }

  sub_220DBE050();
  v33 = v32;
  v31(v29, v28);
  return v33 > 0.0;
}

uint64_t sub_220CDA548(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220CDA5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CDA608@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v43 = a2;
  v47 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v45 = v6;
  v46 = v5;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_57();
  v44 = v10;
  v11 = sub_220DBEE10();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  v42[1] = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v3[5];
  v19 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v20);
  if ((*(v19 + 56))(a1, v20, v19))
  {
    v21 = v3[5];
    v22 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
    (*(v22 + 16))(&v49, a1, v21, v22);
    v23 = v49;
    if (v43)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    if (v49 != 2)
    {
      v24 = 0;
    }

    v48 = v24;
    sub_220DBE7E0();
    PrecipitationTotalStringAmount.init(context:precipitationAmountByType:)();
    v25 = type metadata accessor for PrecipitationTotalHeroString(0);
    v26 = v25[6];
    v27 = v47;
    sub_220DBE810();
    v28 = sub_220DBE560();
    __swift_storeEnumTagSinglePayload(v27 + v26, 0, 3, v28);
    v29 = v44;
    sub_220DBE790();
    v30 = v46;
    sub_220DBE050();
    (*(v45 + 8))(v29, v30);
    v31 = OUTLINED_FUNCTION_0_18();
    result = sub_220D5ACE0(v31, v27, v32);
    *(v27 + v25[5]) = v23;
    *(v27 + v25[7]) = v29;
  }

  else
  {
    sub_220DBE7E0();
    sub_220DBEDD0();
    (*(v13 + 8))(v16, v11);
    v34 = v46;
    sub_220DBE030();
    v35 = v45;
    v36 = *(v45 + 8);
    v36(v9, v34);
    sub_220CDB190();
    v37 = v44;
    sub_220DBE040();
    (*(v35 + 16))(v9, v37, v34);
    v38 = v47;
    sub_220CDB1D4();
    v36(v37, v34);
    *v38 = 0;
    v39 = type metadata accessor for PrecipitationTotalHeroString(0);
    v40 = v39[6];
    sub_220DBE810();
    v41 = sub_220DBE560();
    result = __swift_storeEnumTagSinglePayload(&v38[v40], 0, 3, v41);
    v38[v39[5]] = 5;
    v38[v39[7]] = 0;
  }

  return result;
}

void PrecipitationCalculator.hasPrecipitation(in:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28_3();
  v16 = sub_220DBEE10();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_24();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  sub_220DBE820();
  v12 = sub_220DBEB80();
  v13 = OUTLINED_FUNCTION_28();
  v14(v13);
  if (v12)
  {
    sub_220DBE7E0();
    sub_220DBEDD0();
    (*(v3 + 8))(v1, v16);
    sub_220DBE050();
    (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_29_0();
}

double OUTLINED_FUNCTION_28_6@<D0>(int a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  return result;
}

void *OUTLINED_FUNCTION_16_0(void *result)
{
  v2 = *(v1 - 336);
  *result = *(v1 - 488);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_16_6()
{
  *(v3 - 136) = v1;
  *(v3 - 128) = v2;
  v4 = *(v3 - 224);
  v5 = *(v3 - 216);
  *(v3 - 120) = v0;
  *(v3 - 112) = v4;
  v6 = *(v3 - 208);
  *(v3 - 104) = v5;
  *(v3 - 96) = v6;
}

void *OUTLINED_FUNCTION_16_7()
{

  return sub_220DC08B0();
}

uint64_t OUTLINED_FUNCTION_16_12(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return type metadata accessor for SunriseSunsetTableViewModelFactory(0);
}

void OUTLINED_FUNCTION_16_19()
{
  v1 = *(v0 - 272);
  *(v0 - 152) = *(v0 - 280);
  *(v0 - 144) = v1;
}

void OUTLINED_FUNCTION_16_20()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x223D98FB0);
}

uint64_t OUTLINED_FUNCTION_16_25()
{
}

uint64_t OUTLINED_FUNCTION_22_0()
{
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_14()
{

  return sub_220DB70BC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_22_16(uint64_t a1)
{

  return sub_220DC0280();
}

unint64_t sub_220CDB190()
{
  result = qword_280FA6618;
  if (!qword_280FA6618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA6618);
  }

  return result;
}

void sub_220CDB1D4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v28 = v2;
  v3 = sub_220DBE5E0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_220DC0460();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220DBE580();
  sub_220DBE0F0();

  (*(v5 + 8))(v9, v3);
  (*(v12 + 16))(v16, v19, v10);
  if ((*(v12 + 88))(v16, v10) != *MEMORY[0x277D7B450])
  {
    (*(v12 + 8))(v16, v10);
    goto LABEL_5;
  }

  (*(v12 + 96))(v16, v10);
  v20 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95250, &qword_220DC1FC8) + 48));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_6();
  v23 = *(v22 + 8);
  v23(v16, v21);
  if (v20 != 1)
  {
LABEL_5:
    sub_220DC0410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    OUTLINED_FUNCTION_6();
    (*(v26 + 8))(v1);
    (*(v12 + 8))(v19, v10);
    goto LABEL_6;
  }

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58) + 48);
  v25 = v28;
  sub_220DC0420();
  v23(v1, v21);
  (*(v12 + 8))(v19, v10);
  *(v25 + v24) = 1;
LABEL_6:
  OUTLINED_FUNCTION_28_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);
  v5 = *(v2 - 208);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 160);

  return __swift_storeEnumTagSinglePayload(a1, a2, 3, v4);
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_15_14@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_15_16()
{

  return memcpy((v0 + 312), (v1 + 8), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t result)
{
  v4[12] = v1;
  v4[13] = result;
  v4[8] = result;
  v4[9] = v3;
  v4[10] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_32_5()
{

  return sub_220DBE3E0();
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t a1)
{
  v3[17] = v2;
  v3[18] = a1;
  v3[14] = *(v4 - 192);
  v3[15] = v1;

  return sub_220DC05F0();
}

void OUTLINED_FUNCTION_17()
{

  JUMPOUT(0x223D98FB0);
}

uint64_t OUTLINED_FUNCTION_27_6(uint64_t a1, uint64_t a2)
{

  return sub_220DBE020();
}

uint64_t PrecipitationCalculator.findUniquePrecipitation(currentWeather:dailyForecast:)@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v109 = a1;
  v96 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v95 = v6 - v5;
  OUTLINED_FUNCTION_6_1();
  v113 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v97 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v112 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v111 = &v79 - v11;
  OUTLINED_FUNCTION_6_1();
  v110 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_220DBEE10();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v30 = type metadata accessor for PresentativePastHourRange(0);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_9();
  v94 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_22();
  sub_220DBEA20();
  sub_220DBEA30();
  sub_220DBEA50();
  v99 = v2;
  PrecipitationCalculator.findPresentativePastHourRange(pastHourAmounts:past6HourAmounts:past24HourAmounts:)(v2);
  v33 = *(v20 + 8);
  v33(v24, v18);
  v33(v27, v18);
  v33(v29, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  v34 = sub_220DBEF90();
  v35 = *(v34 + 16);
  if (v35)
  {
    v93 = a2;
    v114 = MEMORY[0x277D84F90];
    sub_220CDD440(0, v35, 0);
    v36 = v114;
    v38 = *(v13 + 16);
    v37 = v13 + 16;
    v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v92 = v34;
    v40 = v34 + v39;
    v107 = *(v37 + 56);
    v108 = v38;
    v106 = (v37 - 8);
    v41 = (v97 + 88);
    v105 = *MEMORY[0x277CE32F8];
    v42 = *MEMORY[0x277CE3228];
    v103 = *MEMORY[0x277CE32F0];
    v104 = v42;
    v43 = *MEMORY[0x277CE3300];
    v101 = *MEMORY[0x277CE3270];
    v102 = v43;
    v100 = *MEMORY[0x277CE3240];
    v98 = *MEMORY[0x277CE3290];
    v44 = *MEMORY[0x277CE3308];
    v90 = *MEMORY[0x277CE3310];
    v91 = v44;
    v89 = *MEMORY[0x277CE3318];
    v88 = *MEMORY[0x277CE32A0];
    v87 = *MEMORY[0x277CE3280];
    v86 = *MEMORY[0x277CE32C0];
    v85 = *MEMORY[0x277CE32A8];
    v84 = *MEMORY[0x277CE3258];
    v83 = *MEMORY[0x277CE3238];
    v82 = *MEMORY[0x277CE3218];
    v81 = *MEMORY[0x277CE3260];
    v80 = *MEMORY[0x277CE3268];
    v79 = (v97 + 8);
    LODWORD(v97) = *MEMORY[0x277CE3320];
    v109 = v37;
    while (1)
    {
      v45 = v110;
      v108(v17, v40, v110);
      sub_220DBE820();
      (*v106)(v17, v45);
      v47 = v112;
      v46 = v113;
      v48 = OUTLINED_FUNCTION_17_1();
      v49(v48);
      v50 = (*v41)(v47, v46);
      v51 = v50 == v105 || v50 == v104;
      if (!v51)
      {
        if (v50 == v103)
        {
          goto LABEL_10;
        }

        if (v50 != v102)
        {
          if (v50 == v101 || v50 == v100)
          {
            goto LABEL_10;
          }

          if (v50 == v98)
          {
            goto LABEL_21;
          }

          if (v50 == v91)
          {
            goto LABEL_10;
          }

          if (v50 != v90)
          {
            OUTLINED_FUNCTION_12_2();
            if (v51 || v56 == v88 || v56 == v87)
            {
              goto LABEL_10;
            }

            OUTLINED_FUNCTION_12_2();
            if (v51)
            {
              v52 = 4;
              goto LABEL_11;
            }

            OUTLINED_FUNCTION_12_2();
            if (!v59)
            {
              OUTLINED_FUNCTION_12_2();
              if (v51)
              {
                goto LABEL_10;
              }

              OUTLINED_FUNCTION_12_2();
              if (!v51)
              {
                break;
              }
            }
          }
        }
      }

      v52 = 2;
LABEL_11:
      v114 = v36;
      v54 = *(v36 + 16);
      v53 = *(v36 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_17_16(v53);
        v36 = v114;
      }

      *(v36 + 16) = v54 + 1;
      *(v36 + v54 + 32) = v52;
      v40 += v107;
      if (!--v35)
      {

        a2 = v93;
        goto LABEL_48;
      }
    }

    OUTLINED_FUNCTION_12_2();
    if (!v51 && v60 != v81 && v60 != v80)
    {
      if (v60 == v97)
      {
        v52 = 1;
        goto LABEL_11;
      }

      (*v79)(v112, v113);
LABEL_21:
      v52 = 5;
      goto LABEL_11;
    }

LABEL_10:
    v52 = 3;
    goto LABEL_11;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_48:
  v63 = *(v36 + 16);
  if (v63)
  {
    v64 = (v36 + 32);
    v65 = MEMORY[0x277D84F90];
    do
    {
      v67 = *v64++;
      v66 = v67;
      if (v67)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_220CDD440(0, *(v65 + 16) + 1, 1);
          v65 = v114;
        }

        v70 = *(v65 + 16);
        v69 = *(v65 + 24);
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_17_16(v69);
          v65 = v114;
        }

        *(v65 + 16) = v70 + 1;
        *(v65 + v70 + 32) = v66;
      }

      --v63;
    }

    while (v63);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  v71 = sub_220CDD464(v65);
  result = sub_220CDD7D0(v71);
  if ((v74 & 1) == 0)
  {
    if (*(v71 + 36) == v73)
    {
      if (result == 1 << *(v71 + 32))
      {
        sub_220CDD864(v99, type metadata accessor for PresentativePastHourRange);
      }

      else
      {
        sub_220CDD810(result, v73, v71, &v114);
        v75 = v114;
        v76 = v94;
        sub_220CDD014(v99, v94);
        OUTLINED_FUNCTION_7_28();
        v77 = v95;
        sub_220CDD014(v76, v95);
        LODWORD(v76) = *(v77 + *(v96 + 24));
        sub_220CDD864(v77, type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext);
        if (v75 == v76)
        {
          v78 = *(v71 + 16);

          if (v78 == 1)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }
      }

LABEL_67:
      LOBYTE(v75) = 0;
LABEL_68:
      *a2 = v75;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PrecipitationCalculator.findPresentativePastHourRange(pastHourAmounts:past6HourAmounts:past24HourAmounts:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v91 = v5 - v4;
  OUTLINED_FUNCTION_6_1();
  v95 = sub_220DBEC90();
  OUTLINED_FUNCTION_0();
  v89 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v81 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v80 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v92 = v12;
  OUTLINED_FUNCTION_23();
  v14 = MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22_15(v14, v15, v16, v17, v18, v19, v20, v21, v79);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  v83 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v88 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v82 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v87 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  v86 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  v84 = v36;
  OUTLINED_FUNCTION_23();
  v38 = MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_22();
  sub_220DBEDD0();
  v39 = objc_opt_self();
  v40 = [v39 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  v41 = *(v24 + 8);
  v42 = OUTLINED_FUNCTION_17_1();
  v41(v42);
  v43 = OUTLINED_FUNCTION_13_18();
  v44 = OUTLINED_FUNCTION_28();
  v41(v44);
  sub_220DBEDD0();
  v45 = [v39 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  v46 = OUTLINED_FUNCTION_17_1();
  v41(v46);
  v47 = OUTLINED_FUNCTION_13_18();
  v48 = OUTLINED_FUNCTION_28();
  v41(v48);
  sub_220DBEDD0();
  v49 = [v39 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  v50 = OUTLINED_FUNCTION_17_1();
  v41(v50);
  v51 = OUTLINED_FUNCTION_13_18();
  v52 = OUTLINED_FUNCTION_28();
  v41(v52);
  if (v51 - v43 < v43)
  {
    v53 = v39;
    sub_220DBEDD0();
    sub_220DBEDC0();
    sub_220DBEC60();
    v94 = *(v89 + 8);
    v94(v85, v95);
    v54 = [v39 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    OUTLINED_FUNCTION_13_18();
    v55 = OUTLINED_FUNCTION_28();
    v41(v55);
    v56 = [v39 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    v57 = OUTLINED_FUNCTION_13_18();
    v58 = OUTLINED_FUNCTION_28();
    v41(v58);
    (v41)(v86, v22);
    (v41)(v84, v22);
    OUTLINED_FUNCTION_18_19();
    if (v61 ^ v62 | v60)
    {
      v59 = 0;
    }

    if (v57 <= 0.0)
    {
      v63 = v59;
    }

    else
    {
      v63 = 2;
    }

LABEL_8:
    v64 = v91;
    sub_220DBEDD0();
    sub_220DBEDC0();
    OUTLINED_FUNCTION_15_17();
    sub_220DBEC60();
    v94(v92, v95);
    goto LABEL_23;
  }

  v65 = (v89 + 8);
  if (v51 - v47 < v47)
  {
    sub_220DBEDD0();
    sub_220DBEDC0();
    v53 = v82;
    sub_220DBEC60();
    v94 = *v65;
    (*v65)(v80, v95);
    v66 = [v39 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    OUTLINED_FUNCTION_13_18();
    v67 = OUTLINED_FUNCTION_28();
    v41(v67);
    v68 = [v39 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    v69 = OUTLINED_FUNCTION_13_18();
    v70 = OUTLINED_FUNCTION_28();
    v41(v70);
    (v41)(v82, v22);
    (v41)(v87, v22);
    OUTLINED_FUNCTION_18_19();
    if (v61 ^ v62 | v60)
    {
      v71 = 0;
    }

    if (v69 <= 0.0)
    {
      v63 = v71;
    }

    else
    {
      v63 = 2;
    }

    goto LABEL_8;
  }

  sub_220DBEDD0();
  sub_220DBEDC0();
  v53 = v83;
  sub_220DBEC60();
  v90 = *v65;
  (*v65)(v81, v95);
  v72 = [v39 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  OUTLINED_FUNCTION_13_18();
  v73 = OUTLINED_FUNCTION_28();
  v41(v73);
  v74 = [v39 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  v75 = OUTLINED_FUNCTION_13_18();
  v76 = OUTLINED_FUNCTION_28();
  v41(v76);
  (v41)(v83, v22);
  (v41)(v88, v22);
  OUTLINED_FUNCTION_18_19();
  if (v61 ^ v62 | v60)
  {
    v77 = 0;
  }

  if (v75 <= 0.0)
  {
    v63 = v77;
  }

  else
  {
    v63 = 2;
  }

  v64 = v91;
  sub_220DBEDD0();
  sub_220DBEDC0();
  OUTLINED_FUNCTION_15_17();
  sub_220DBEC60();
  v90(v92, v95);
LABEL_23:
  *(v64 + v53[6]) = v63;
  OUTLINED_FUNCTION_7_28();
  sub_220CDD014(v64, a1);
  type metadata accessor for PresentativePastHourRange(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC87F0];

  return sub_220CE161C(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1)
{

  return sub_220DC0160();
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 3, v0);
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{
  v5 = *(a1 + 48);
  v6 = *(v3 - 104);
  *v6 = v1;

  return sub_220D15FF4(v2, &v6[v5]);
}

uint64_t OUTLINED_FUNCTION_12_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 128) = v3;
  *(v5 - 120) = v4;
  *(v5 - 144) = a1;
  *(v5 - 136) = a2;
  *(v5 - 160) = a3;
  return 0;
}

void OUTLINED_FUNCTION_12_9()
{
  v2 = (v1 + *(v0 + 24));
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_12_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_12_22()
{
  v3 = *(v1 - 176);
  *(v1 - 136) = *(v1 - 184);
  *(v1 - 128) = v3;
  v4 = *(v1 - 192);
  v6 = *(v1 - 168);
  v5 = *(v1 - 160);
  *(v1 - 120) = *(v1 - 200);
  *(v1 - 112) = v6;
  *(v1 - 104) = v4;
  *(v1 - 96) = v5;

  return sub_220D96EB4(v0, (v1 - 136));
}

uint64_t OUTLINED_FUNCTION_12_26(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 128) = v2;

  return VisibilityCondition.shortDescription.getter();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_220D7FCF0();
}

uint64_t OUTLINED_FUNCTION_21_15@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_220CEF48C(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata3();
}

void OUTLINED_FUNCTION_11_8(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_220D65BF8(v0, type metadata accessor for NextPrecipitation);
}

uint64_t OUTLINED_FUNCTION_11_17()
{
  v3 = *(v1 - 160);
  *(v1 - 104) = *(v1 - 192);
  *(v1 - 96) = v3;

  return sub_220D96EB4(v0, (v1 - 136));
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_220DC05F0();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return sub_220DC08E0();
}

void OUTLINED_FUNCTION_14_16()
{
  v2 = *(v0 + 104);
  *(v1 - 328) = v0 + 104;
  *(v1 - 320) = v2;
}

void OUTLINED_FUNCTION_14_17()
{
  v1 = *(v0 - 176);
  *(v0 - 136) = *(v0 - 184);
  *(v0 - 128) = v1;
}

uint64_t OUTLINED_FUNCTION_14_20(uint64_t a1, uint64_t a2)
{

  return sub_220DBE010();
}

uint64_t OUTLINED_FUNCTION_14_21()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220CDD014(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v5(v4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 32))(a2, v2);
  return a2;
}

void OUTLINED_FUNCTION_7_0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return sub_220D16918(v0, type metadata accessor for PrecipitationPlatterPrecipitationKind);
}

void OUTLINED_FUNCTION_7_10(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_7_15@<X0>(unint64_t a1@<X8>)
{

  return sub_220D563D8((a1 > 1), v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_17()
{
  v2 = *(v0 - 176);

  return sub_220CDD864(v2, type metadata accessor for PresentativePastHourRange);
}

uint64_t OUTLINED_FUNCTION_7_19@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_7_21(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v3;

  return sub_220DC05F0();
}

uint64_t OUTLINED_FUNCTION_7_25(uint64_t a1)
{

  return swift_once();
}

char *sub_220CDD34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95288, &qword_220DC2178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_220CDD440(char *a1, int64_t a2, char a3)
{
  result = sub_220CDD34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_220CDD464(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_220CDD4FC();
  v4 = MEMORY[0x223D98400](v2, &type metadata for DominantPrecipitation, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_220CDD5A8(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

unint64_t sub_220CDD4FC()
{
  result = qword_280FA7308;
  if (!qword_280FA7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7308);
  }

  return result;
}

unint64_t sub_220CDD554()
{
  result = qword_280FA7300;
  if (!qword_280FA7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7300);
  }

  return result;
}

BOOL sub_220CDD5A8(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  sub_220DC0CE0();
  MEMORY[0x223D98920](a2);
  v6 = sub_220DC0D20();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_220CDD698(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

unint64_t sub_220CDD698(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_220D12C5C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_220D13C18(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_220DC0CE0();
      MEMORY[0x223D98920](v5);
      result = sub_220DC0D20();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_220D135E8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_220DC0CB0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_220CDD810@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_220CDD864(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PrecipitationTotalHeroString.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrecipitationTotalHeroString(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

_BYTE *storeEnumTagSinglePayload for DominantPrecipitation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220CDD9D4);
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

BOOL PrecipitationTotalHeroString.isDescriptionAllowedToShowNext24HourTotal.getter()
{
  v1 = OUTLINED_FUNCTION_13_5();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_25_3(v2);
  v3 = sub_220DBE560();
  v4 = OUTLINED_FUNCTION_19_4(v3) != 0;
  sub_220CDDDE8(v0);
  return v4;
}

void *OUTLINED_FUNCTION_20_0()
{
  result = (v0 + 2 * v1);
  v4 = *(v2 - 248);
  *result = *(v2 - 504);
  result[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for PrecipitationTotalHeroString(0);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_220CDA548(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1)
{
  v1[4] = v2;
  v1[5] = v6;
  v1[12] = v5;
  v1[13] = a1;
  v1[8] = a1;
  v1[9] = v4;
  v1[10] = v3;
  *(v7 - 176) = *(v7 - 192);

  return VisibilityCondition.shortDescription.getter();
}

uint64_t sub_220CDDBBC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v5(v4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_220CDDC14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *OUTLINED_FUNCTION_19_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[7] = a2;
  result[8] = v2;
  v4 = *(v3 - 160);
  result[4] = *(v3 - 248);
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1)
{
  v4 = *(v1 - 264);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 392);

  return sub_220CE1ABC(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 3, a1);
}

BOOL OUTLINED_FUNCTION_19_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_13(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_14()
{

  JUMPOUT(0x223D98FB0);
}

uint64_t OUTLINED_FUNCTION_19_15(uint64_t a1, uint64_t a2)
{
  v2[17] = v5;
  v2[18] = v4;
  v2[14] = a1;
  v2[15] = a2;
  v2[22] = v5;
  v2[23] = v4;
  v8 = *(v6 - 184);
  v2[19] = v3;
  v2[20] = v8;

  return sub_220DC05F0();
}

uint64_t sub_220CDDDE8(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalHeroStringTimeframe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecipitationComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:heroStringPrecipitationType:isAllowedToShowNext24HourTotal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  sub_220DBEAD0();
  OUTLINED_FUNCTION_6();
  (*(v14 + 32))(a7, a1);
  v15 = type metadata accessor for PrecipitationComponentDescriptionContext(0);
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6();
  (*(v17 + 32))(a7 + v16, a2);
  v18 = v15[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6();
  (*(v19 + 32))(a7 + v18, a3);
  *(a7 + v15[8]) = v13;
  v20 = v15[7];
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  result = (*(v21 + 32))(a7 + v20, a4);
  *(a7 + v15[9]) = a6;
  return result;
}

BOOL PrecipitationWithinOneDayRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NextPrecipitationEvent(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  (*(v12 + 8))(a2, v11, v12);
  sub_220CE1D20(v10, v7, type metadata accessor for NextPrecipitationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for NextPrecipitationEvent;
    v15 = v7;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A8, &qword_220DC4FE0);
    v17 = *(v16 + 48);
    sub_220CE1E88(v7 + *(v16 + 64), type metadata accessor for PrecipitationTotalStringAmount);
    v15 = v7 + v17;
    v14 = type metadata accessor for PrecipitationTotalStringAmount;
  }

  sub_220CE1E88(v15, v14);
  return EnumCaseMultiPayload == 0;
}

uint64_t type metadata accessor for NextPrecipitationEvent(uint64_t a1)
{
  result = qword_280FA70E8;
  if (!qword_280FA70E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220CDE164(uint64_t a1)
{
  if (!qword_280FA7310)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280FA7310);
    }
  }
}

void sub_220CDE1D4(uint64_t a1)
{
  sub_220CDE164(319);
  if (v1 <= 0x3F)
  {
    sub_220CDE248(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220CDE248(uint64_t a1)
{
  if (!qword_280FA7318)
  {
    MEMORY[0x28223BE20](0);
    sub_220DBE560();
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280FA7318);
    }
  }
}

uint64_t PrecipitationEventCalculator.nextEvent(from:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v136 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  MEMORY[0x28223BE20](v3 - 8);
  v116 = &v110 - v4;
  v129 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v118 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v113 = v8 - v7;
  v139 = sub_220DBEC90();
  OUTLINED_FUNCTION_0();
  v144 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v122 = v12 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v143 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v135 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v134 = &v110 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v110 - v19;
  v142 = sub_220DBEE10();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v132 = type metadata accessor for PrecipitationTotalStringAmount(0);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_9();
  v140 = v27;
  MEMORY[0x28223BE20](v28);
  v145 = &v110 - v29;
  v126 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v125 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v141 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v110 - v38;
  sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v127 = v44;
  v45 = *(v44 + 16);
  v120 = a1;
  v128 = v46;
  v45(v43, a1);
  v47 = type metadata accessor for PrecipitationComponentDescriptionContext(0);
  v48 = v47[5];
  v121 = v47[6];
  v123 = v36;
  v49 = *(v36 + 16);
  v133 = v39;
  v124 = v34;
  v49(v39, &a1[v48], v34);
  sub_220DBEA60();
  v114 = v47;
  v119 = v47[7];
  sub_220DBEA40();
  sub_220DBEDD0();
  v131 = *(v22 + 8);
  v137 = v22 + 8;
  v131(v26, v142);
  v50 = v143;
  v51 = *(v143 + 16);
  v52 = v134;
  v53 = v130;
  v112 = v143 + 16;
  v111 = v51;
  v51(v134, v20, v130);
  v54 = v132;
  v55 = v145;
  sub_220CDB1D4();
  v56 = *(v50 + 8);
  v56(v20, v53);
  *v55 = 0;
  v138 = v43;
  v57 = v122;
  sub_220DBEA40();
  sub_220DBEDD0();
  sub_220DBEDC0();
  sub_220DBEC80();
  v58 = v135;
  sub_220DBEC70();
  v59 = v140;
  sub_220CDEE30(v52, v58, &v140[*(v54 + 20)]);
  v60 = *(v144 + 8);
  v61 = v57;
  v62 = v131;
  v144 += 8;
  v115 = v60;
  v60(v61, v139);
  v56(v20, v53);
  v63 = v26;
  v62(v26, v142);
  *v59 = 1;
  v64 = v120;
  Forecast<>.dominantPrecipitationTypeIfNotAmbiguous(from:hourCount:timeZone:)();
  v65 = v147;
  PrecipitationTotalStringAmount.maxAmount.getter(v20);
  sub_220DBE050();
  v67 = v66;
  v68 = v20;
  v143 = v50 + 8;
  v121 = v56;
  v69 = (v56)(v20, v53);
  if (v67 > 0.0 && v64[v114[9]] == 1)
  {
    v70 = OUTLINED_FUNCTION_1_33();
    v71(v70);
    OUTLINED_FUNCTION_8_0();
    v72(v133, v124);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A8, &qword_220DC4FE0);
    v74 = *(v73 + 48);
    v75 = v65;
    v76 = *(v73 + 64);
    v77 = v136;
    *v136 = v75;
    sub_220D15FF4(v145, &v77[v74]);
    sub_220D15FF4(v140, &v77[v76]);
    type metadata accessor for NextPrecipitationEvent(0);
  }

  else
  {
    MEMORY[0x28223BE20](v69);
    v78 = v117;
    *(&v110 - 2) = v138;
    *(&v110 - 1) = v78;
    v79 = v116;
    v80 = v133;
    sub_220CE108C(sub_220CE1918, (&v110 - 4));
    v81 = v129;
    if (__swift_getEnumTagSinglePayload(v79, 1, v129) == 1)
    {
      sub_220CE1C00(v140);
      sub_220CE1C00(v145);
      v82 = OUTLINED_FUNCTION_1_33();
      v83(v82);
      OUTLINED_FUNCTION_8_0();
      v84(v80, v124);
      sub_220CE1C5C(v79);
    }

    else
    {
      v85 = v113;
      (*(v118 + 32))(v113, v79, v81);
      v86 = v78[3];
      v87 = v78[4];
      __swift_project_boxed_opaque_existential_1(v78, v86);
      (*(v87 + 16))(&v146, v85, v86, v87);
      v88 = v146;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
      v90 = &v136[*(v89 + 64)];
      v120 = &v136[*(v89 + 80)];
      *v136 = v88;
      sub_220DBE810();
      sub_220DBE7E0();
      sub_220DBEDD0();
      sub_220DBEDC0();
      v91 = v134;
      v111(v134, v68, v130);
      v92 = v132;
      sub_220CDB1D4();
      v93 = OUTLINED_FUNCTION_5_25();
      v94(v93);
      v95 = OUTLINED_FUNCTION_4_20();
      v96(v95);
      v97 = v131;
      v131(v63, v142);
      *v90 = 0;
      sub_220DBE7E0();
      sub_220DBEDD0();
      sub_220DBEDC0();
      sub_220DBEC80();
      v98 = v135;
      sub_220DBEC70();
      v99 = v120;
      sub_220CDEE30(v91, v98, &v120[*(v92 + 20)]);
      v100 = OUTLINED_FUNCTION_5_25();
      v101(v100);
      v102 = OUTLINED_FUNCTION_4_20();
      v103(v102);
      v97(v63, v142);
      OUTLINED_FUNCTION_8_0();
      v104(v85, v129);
      sub_220CE1C00(v140);
      sub_220CE1C00(v145);
      v105 = OUTLINED_FUNCTION_1_33();
      v106(v105);
      OUTLINED_FUNCTION_8_0();
      v107(v133, v124);
      *v99 = 1;
    }

    type metadata accessor for NextPrecipitationEvent(0);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_0();
  return v108(v138, v128);
}

uint64_t sub_220CDEE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  sub_220DC0C80();
  OUTLINED_FUNCTION_0();
  v81 = v10;
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v80 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v84 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v83 = v16 - v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  v86 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v87 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11_1();
  sub_220DBF100();
  sub_220DBF0D0();
  v29 = sub_220DBF0B0();

  OUTLINED_FUNCTION_27_0();
  sub_220DBE130();
  OUTLINED_FUNCTION_27_0();
  sub_220DBE130();
  sub_220DBE050();
  if (v30 == 0.0)
  {

    v31 = v84;
    v32 = *(v84 + 8);
    v33 = OUTLINED_FUNCTION_36();
    v32(v33);
    (v32)(a1, v13);
    v34 = OUTLINED_FUNCTION_39();
    v32(v34);
    (*(v31 + 32))(v85, v3, v13);
    OUTLINED_FUNCTION_28_1();
  }

  else
  {
    v74 = v22;
    v75 = v4;
    v76 = a2;
    v77 = a1;
    v79 = v5;
    sub_220DBE060();
    sub_220DBE060();
    v35 = sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
    OUTLINED_FUNCTION_17_3();
    v36 = sub_220DBE020();
    v78 = v3;
    v37 = v84;
    if (v36)
    {
      v38 = *MEMORY[0x277D84688];
      v39 = v81;
      v40 = v82;
      v71 = v29;
      v72 = v6;
      v70 = *(v81 + 104);
      v41 = v80;
      v70(v80, v38, v82);
      OUTLINED_FUNCTION_14_2();
      sub_220DBE070();
      v69 = *(v39 + 8);
      v69(v41, v40);
      v81 = v35;
      v73 = *(v37 + 8);
      v73(v87, v13);
      v42 = *(v37 + 32);
      (v42)(v87, v86, v13);
      v70(v41, *MEMORY[0x277D84680], v40);
      v29 = v71;
      OUTLINED_FUNCTION_14_2();
      sub_220DBE070();
      v43 = v41;
      v6 = v72;
      v44 = v40;
      v45 = v87;
      v69(v43, v44);
      v46 = OUTLINED_FUNCTION_14_2();
      (v73)(v46);
      OUTLINED_FUNCTION_26();
      v82 = v37 + 32;
      v80 = v42;
      v42();
      OUTLINED_FUNCTION_17_3();
      if (sub_220DBE020())
      {
        sub_220DBE050();
        v47 = v29;
        sub_220DBE040();
        v48 = v73;
        v73(v45, v13);
        OUTLINED_FUNCTION_26();
        v49 = v80;
        v80();
        sub_220DBE050();
        v50 = v47;
        sub_220DBE040();
        v51 = OUTLINED_FUNCTION_14_2();
        v48(v51);
        OUTLINED_FUNCTION_26();
        v49();
      }
    }

    sub_220DBE050();
    v52 = v75;
    if (v53 == 0.0)
    {
      sub_220DC0430();
      OUTLINED_FUNCTION_27_0();
      sub_220DBE130();
      OUTLINED_FUNCTION_17_3();
      v54 = sub_220DBE010();

      v55 = *(v37 + 8);
      v55(v76, v13);
      v55(v77, v13);
      v56 = OUTLINED_FUNCTION_39();
      (v55)(v56);
      v55(v87, v13);
      v57 = OUTLINED_FUNCTION_33_0();
      (v55)(v57);
      v55(v79, v13);
      v58 = v54 & 1;
      if (v58)
      {
        v59 = v6;
      }

      else
      {
        v59 = v52;
      }

      v55(v59, v13);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58) + 48);
      v61 = v85;
      v62 = OUTLINED_FUNCTION_29_1();
      v63(v62);
      *(v61 + v60) = v58;
      OUTLINED_FUNCTION_28_1();
    }

    else
    {

      v64 = *(v37 + 8);
      v64(v76, v13);
      v64(v77, v13);
      v64(v78, v13);
      v64(v79, v13);
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
      v66 = *(v37 + 32);
      v67 = v85;
      v66(v85, v87, v13);
      v66(v67 + v65, v6, v13);
      OUTLINED_FUNCTION_28_1();
    }
  }

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_8_2(void *result)
{
  v2 = *(v1 - 200);
  *result = *(v1 - 312);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_220DBE6E0();
}

uint64_t OUTLINED_FUNCTION_8_17()
{
  v2 = *(v1 - 160);
  *(v1 - 128) = *(v1 - 144);
  *(v1 - 112) = v2;
  *(v1 - 96) = *(v1 - 176);
  return v0;
}

void *OUTLINED_FUNCTION_10_0(void *result)
{
  v2 = *(v1 - 360);
  *result = *(v1 - 208);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_10_9(__n128 *a1, __n128 a2)
{
  *(v3 - 200) = a1;
  a1[1] = a2;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return type metadata accessor for DetailChartDataElement.ValueLabel(0);
}

uint64_t OUTLINED_FUNCTION_10_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_10_24()
{
  v3 = v1 + *(v2 + 44);
  result = *(v0 + 216);
  v5 = *(v0 + 232);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v0 + 248);
  return result;
}

void *OUTLINED_FUNCTION_35()
{
  result = (v0 + v2);
  *result = *(v3 - 400);
  result[1] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  v3 = *(v1 + 8);
  *(v2 - 120) = v1 + 8;
  *(v2 - 352) = v3;
  return v0;
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v6 = *(v4 - 160);
  *(v4 - 136) = *(v4 - 168);
  *(v4 - 128) = v6;
  return result;
}

void OUTLINED_FUNCTION_31_1()
{

  JUMPOUT(0x223D98920);
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(a1, 0, 1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_220DC0250();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t result, uint64_t a2)
{
  *(v2 - 272) = result;
  *(v2 - 264) = a2;
  return result;
}

void Forecast<>.dominantPrecipitationTypeIfNotAmbiguous(from:hourCount:timeZone:)()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v90 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v89 = v9 - v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  v88 = &v57 - v12;
  v87 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v91 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = v3;
  v29 = v28;
  sub_220CE02DC(v27, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v29) == 1)
  {
    sub_220CD8040(v20);
    if (qword_27CF94F48 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_3;
  }

  (*(v22 + 32))(v26, v20, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v34 = sub_220DBEF90();
  MEMORY[0x28223BE20](v34);
  *(&v57 - 2) = v26;
  *(&v57 - 1) = v1;
  v36 = sub_220CE0914(sub_220CE0BF8, (&v57 - 4), v35, MEMORY[0x277CE31A0], sub_220CE5648);
  v37 = v36;
  v86 = *(v36 + 16);
  if (!v86)
  {

    *v5 = 0;
    (*(v22 + 8))(v26, v29);
    goto LABEL_59;
  }

  v72 = v26;
  v73 = v29;
  v74 = v5;
  v38 = 0;
  v85 = v36 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v84 = *MEMORY[0x277CE32F8];
  v83 = v91 + 16;
  v81 = (v7 + 32);
  v82 = v91 + 8;
  v80 = *MEMORY[0x277CE3228];
  v39 = (v7 + 88);
  v79 = *MEMORY[0x277CE32F0];
  v78 = *MEMORY[0x277CE3300];
  v77 = *MEMORY[0x277CE3270];
  v76 = *MEMORY[0x277CE3240];
  v75 = *MEMORY[0x277CE3290];
  v71 = *MEMORY[0x277CE3308];
  v70 = *MEMORY[0x277CE3310];
  v69 = *MEMORY[0x277CE3318];
  v68 = *MEMORY[0x277CE32A0];
  v67 = *MEMORY[0x277CE3280];
  v66 = *MEMORY[0x277CE32C0];
  v65 = *MEMORY[0x277CE32A8];
  v64 = *MEMORY[0x277CE3258];
  v63 = *MEMORY[0x277CE3238];
  v62 = *MEMORY[0x277CE3218];
  v61 = *MEMORY[0x277CE3260];
  v60 = *MEMORY[0x277CE3268];
  v58 = (v7 + 8);
  v5 = 6;
  v59 = *MEMORY[0x277CE3320];
  v40 = v22;
  while (v38 < *(v37 + 16))
  {
    v41 = v91;
    v42 = v87;
    (*(v91 + 16))(v17, v85 + *(v91 + 72) * v38, v87);
    v43 = v88;
    sub_220DBE950();
    (*(v41 + 8))(v17, v42);
    v45 = v89;
    v44 = v90;
    (*v81)(v89, v43, v90);
    v46 = (*v39)(v45, v44);
    v47 = v46 == v84 || v46 == v80;
    if (v47)
    {
LABEL_14:
      v48 = 2;
      goto LABEL_17;
    }

    if (v46 == v79)
    {
      goto LABEL_16;
    }

    if (v46 == v78)
    {
      goto LABEL_14;
    }

    if (v46 == v77 || v46 == v76)
    {
LABEL_16:
      v48 = 3;
      goto LABEL_17;
    }

    if (v46 == v75)
    {
      v48 = 5;
    }

    else
    {
      if (v46 == v71)
      {
        goto LABEL_16;
      }

      if (v46 == v70)
      {
        goto LABEL_14;
      }

      v50 = v46 == v69 || v46 == v68;
      if (v50 || v46 == v67)
      {
        goto LABEL_16;
      }

      if (v46 == v66)
      {
        v48 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_12_2();
        if (v47)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_2();
        if (v47)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_12_2();
        if (v47)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_2();
        v53 = v47 || v52 == v61;
        if (v53 || v52 == v60)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_12_2();
        if (!v47)
        {
          (*v58)(v89, v90);
          goto LABEL_20;
        }

        v48 = 1;
      }
    }

LABEL_17:
    if (v5 == 6)
    {
      v5 = v48;
    }

    else if (v48 != v5)
    {

      v55 = 5;
LABEL_58:
      v56 = v73;
      *v74 = v55;
      (*(v40 + 8))(v72, v56);
      goto LABEL_59;
    }

LABEL_20:
    if (v86 == ++v38)
    {

      if (v5 == 6)
      {
        v55 = 5;
      }

      else
      {
        v55 = v5;
      }

      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_61:
  OUTLINED_FUNCTION_6_3(&qword_27CF94F48);
LABEL_3:
  v30 = sub_220DBF410();
  __swift_project_value_buffer(v30, qword_27CF95F60);
  v31 = sub_220DBF3F0();
  v32 = sub_220DC0980();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_220CD1000, v31, v32, "Failed to find precipitation due to missing next hour", v33, 2u);
    MEMORY[0x223D98FB0](v33, -1, -1);
  }

  *v5 = 0;
LABEL_59:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220CE02DC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v19 = a3;
  v20 = sub_220DBE1A0();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_220DBE6E0();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v9 = sub_220DBE6C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220DC1CE0;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277CC9988], v9);
  v15(v14 + v11, *MEMORY[0x277CC9998], v9);
  v15(v14 + 2 * v11, *MEMORY[0x277CC9968], v9);
  v15(v14 + 3 * v11, *MEMORY[0x277CC9980], v9);
  sub_220CE05C8(v13);
  sub_220DBE630();

  sub_220DBE180();
  sub_220DBE190();
  sub_220DBE660();
  (*(v3 + 8))(v5, v20);
  return (*(v6 + 8))(v8, v18);
}

uint64_t sub_220CE05C8(uint64_t a1)
{
  v2 = sub_220DBE6C0();
  OUTLINED_FUNCTION_0();
  v35 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v39 = &v30 - v9;
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96558, &qword_220DC7AC8);
  result = sub_220DC0B60();
  v11 = result;
  v34 = *(a1 + 16);
  if (!v34)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v38 = result + 56;
  v13 = *(v35 + 80);
  v32 = a1;
  v33 = a1 + ((v13 + 32) & ~v13);
  v37 = v35 + 16;
  v14 = (v35 + 8);
  v31 = (v35 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = *(v35 + 72);
    v36 = v12 + 1;
    v16 = *(v35 + 16);
    v16(v39, v33 + v15 * v12, v2);
    sub_220CE08D0(&qword_280FA7790, MEMORY[0x277CC99D8]);
    v17 = sub_220DC0550();
    v18 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v38 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v11;
      v16(v7, *(v11 + 48) + v19 * v15, v2);
      sub_220CE08D0(&qword_280FA7788, MEMORY[0x277CC99E0]);
      v24 = sub_220DC05B0();
      v25 = *v14;
      (*v14)(v7, v2);
      if (v24)
      {
        result = (v25)(v39, v2);
        v11 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v11 = v23;
    }

    v26 = v39;
    *(v38 + 8 * v20) = v22 | v21;
    result = (*v31)(*(v11 + 48) + v19 * v15, v26, v2);
    v27 = *(v11 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_17;
    }

    *(v11 + 16) = v29;
LABEL_12:
    v12 = v36;
    a1 = v32;
    if (v36 == v34)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220CE08D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_220DBE6C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220CE0914(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v32 = a5;
  v37 = a1;
  v38 = a2;
  v40 = a4(0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v34 = v10 - v11;
  OUTLINED_FUNCTION_23();
  result = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = 0;
  v39 = *(a3 + 16);
  v36 = v8 + 16;
  v17 = (v8 + 8);
  v33 = (v8 + 32);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v39 == v16)
    {

      return v35;
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v19 = *(v8 + 72);
    v20 = a3;
    (*(v8 + 16))(v15, a3 + v18 + v19 * v16, v40);
    v21 = v37(v15);
    if (v5)
    {
      (*v17)(v15, v40);
      v28 = v35;

      return v28;
    }

    if (v21)
    {
      v31 = *v33;
      v31(v34, v15, v40);
      v22 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v22;
      }

      else
      {
        v32(0, *(v22 + 16) + 1, 1);
        v24 = v41;
      }

      a3 = v20;
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v35 = v26 + 1;
        v30 = v26;
        v32(v25 > 1, v26 + 1, 1);
        v27 = v35;
        v26 = v30;
        a3 = v20;
        v24 = v41;
      }

      ++v16;
      *(v24 + 16) = v27;
      v35 = v24;
      result = (v31)(v24 + v18 + v26 * v19, v34, v40);
    }

    else
    {
      result = (*v17)(v15, v40);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220CE0C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v30 = v5;
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v29 = v7 - v6;
  v32 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  v34 = a1;
  sub_220DBE8F0();
  LOBYTE(a1) = sub_220DBE430();
  v24 = *(v16 + 8);
  v24(v23, v14);
  if ((a1 & 1) != 0 && (sub_220DBE8F0(), sub_220DBE6A0(), sub_220DBE3A0(), (*(v9 + 8))(v13, v32), sub_220CD9B24(), v25 = sub_220DC0580(), v24(v20, v14), v24(v23, v14), (v25 & 1) == 0))
  {
    v27 = v29;
    sub_220DBE950();
    v26 = sub_220DBEB80();
    (*(v30 + 8))(v27, v31);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t PrecipitationTotalStringAmount.maxAmount.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v1 + v7, v6);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    v13 = *(v12 - 8);
    (*(v13 + 32))(a1, v6 + v11, v12);
    return (*(v13 + 8))(v6, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    OUTLINED_FUNCTION_6();
    v8 = OUTLINED_FUNCTION_27_0();
    return v9(v8);
  }
}

uint64_t sub_220CE1028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220CE108C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_12_8(v5, v6, v7);
  v8 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_11(v10, v40);
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_5(v12, v13, v14, v15, v16, v17, v18, v19, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A08, &qword_220DC3C88);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_4_10();
  v23(v22);
  v24 = OUTLINED_FUNCTION_1_16(&qword_280FA7740);
  OUTLINED_FUNCTION_24_4(v24);
  OUTLINED_FUNCTION_2_14(&qword_280FA7738);
  OUTLINED_FUNCTION_7_9();
  while (1)
  {
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_19_6();
    if (v25)
    {
      sub_220CE1ABC(v4, &qword_27CF95A08, &qword_220DC3C88);
      OUTLINED_FUNCTION_20_4();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_14_9();
    v26 = OUTLINED_FUNCTION_10_10();
    v27(v26);
    v28 = OUTLINED_FUNCTION_23_6();
    v2(v28);
    OUTLINED_FUNCTION_17_7();
    v29 = OUTLINED_FUNCTION_3_13();
    v8(v29);
    v30 = OUTLINED_FUNCTION_22_5();
    v32 = v31(v30);
    v2 = v3;
    if (v3)
    {
      v37 = OUTLINED_FUNCTION_21_4();
      v38(v37);
      sub_220CE1ABC(v4, &qword_27CF95A08, &qword_220DC3C88);
      goto LABEL_10;
    }

    if (v32)
    {
      break;
    }

    v33 = OUTLINED_FUNCTION_9_7();
    v34(v33);
  }

  sub_220CE1ABC(v4, &qword_27CF95A08, &qword_220DC3C88);
  v39 = OUTLINED_FUNCTION_8_8();
  v35 = (v8)(v39);
  v36 = 0;
LABEL_9:
  OUTLINED_FUNCTION_25_4(v35, v36);
LABEL_10:
  OUTLINED_FUNCTION_27_2();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_3_28(uint64_t a1, uint64_t a2)
{

  return sub_220DC0C40();
}

uint64_t OUTLINED_FUNCTION_3_30()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t sub_220CE161C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return sub_220CE1ABC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t result)
{
  v2[8] = result;
  v2[4] = v1;
  v2[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_220DC08C0();
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t result, uint64_t a2)
{
  *(v2 - 480) = result;
  *(v2 - 488) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_17_11()
{
  *(v4 - 136) = v1;
  *(v4 - 128) = v0;
  v7 = *(v4 - 168);
  v6 = *(v4 - 160);
  *(v4 - 120) = *(v4 - 200);
  *(v4 - 112) = v7;
  *(v4 - 104) = v3;
  *(v4 - 96) = v6;

  return sub_220D96EB4(v2, (v4 - 136));
}

void OUTLINED_FUNCTION_17_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

char *OUTLINED_FUNCTION_17_16@<X0>(unint64_t a1@<X8>)
{

  return sub_220CDD440((a1 > 1), v1, 1);
}

unint64_t OUTLINED_FUNCTION_23_0(uint64_t a1, uint64_t a2)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;
  *(v2 - 152) = 0;
  *(v2 - 144) = 0xE000000000000000;

  return sub_220CEFF14();
}

uint64_t OUTLINED_FUNCTION_23_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;

  return sub_220DC05F0();
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_220DC0250();
}

uint64_t OUTLINED_FUNCTION_23_8()
{
  v3 = *(v1 - 112);

  return sub_220D15FF4(v0, v3);
}

uint64_t sub_220CE1938(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_220DBE560();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  sub_220DBE810();
  sub_220DBEA60();
  v12 = sub_220DBE430();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    v14 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v14);
    v16 = (*(v15 + 56))(a1, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_220CE1ABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_26_7()
{
  v3 = *(v0 + 8);
  *(v2 - 128) = v0 + 8;
  *(v2 - 304) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_26_8()
{
  v6 = *(v3 - 168);
  v5 = *(v3 - 160);
  *(v3 - 120) = v0;
  *(v3 - 112) = v6;
  *(v3 - 104) = v2;
  *(v3 - 96) = v5;

  return sub_220D96EB4(v1, (v3 - 136));
}

uint64_t sub_220CE1C00(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CE1C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CE1CC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  return a2;
}

uint64_t sub_220CE1D20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220CE1D80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220CE1DD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220CE1E30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220CE1E88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL PrecipitationNoPrecipitationRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent(0);
  v5 = MEMORY[0x28223BE20](PrecipitationEvent);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = v2[3];
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v10);
  (*(v11 + 8))(a2, v10, v11);
  sub_220CE1FF0(v9, v7);
  v12 = swift_getEnumCaseMultiPayload() == 2;
  sub_220CE2054(v7);
  return v12;
}

uint64_t sub_220CE1FF0(uint64_t a1, uint64_t a2)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent(0);
  (*(*(PrecipitationEvent - 8) + 32))(a2, a1, PrecipitationEvent);
  return a2;
}

uint64_t sub_220CE2054(uint64_t a1)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent(0);
  (*(*(PrecipitationEvent - 8) + 8))(a1, PrecipitationEvent);
  return a1;
}

uint64_t PrecipitationNoPrecipitationRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220DC17A0;
  v1 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v1;
  *(v0 + 32) = 10;
  v2 = sub_220DC05F0();

  return v2;
}

void PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v22;
  a20 = v23;
  v213 = v24;
  LODWORD(v226) = v25;
  v221 = v26;
  v232 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v223 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v222 = v30 - v29;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v228 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v217 = v33 - v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  v229 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  v215 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v39);
  v214 = &v202 - v40;
  v219 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v220 = v43 - v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v44);
  v46 = &v202 - v45;
  v224 = sub_220DC02F0();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v218 = sub_220DC0960();
  OUTLINED_FUNCTION_0();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4();
  v205 = v56 - v57;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25_0();
  v204 = v59;
  OUTLINED_FUNCTION_23();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v202 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v202 - v64;
  v66 = sub_220DC0950();
  OUTLINED_FUNCTION_0();
  v231 = v67;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_4();
  v203 = v69 - v70;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_25_0();
  v216 = v72;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_9_1();
  v75 = MEMORY[0x28223BE20](v74);
  v233 = &v202 - v76;
  v225 = v20;
  v79 = *(v54 + 104);
  v78 = v54 + 104;
  v77 = v79;
  if (*v20)
  {
    v80 = MEMORY[0x277D7B4C0];
  }

  else
  {
    v80 = MEMORY[0x277D7B4B8];
  }

  v81 = *v80;
  v82 = v78;
  v83 = v48 + 104;
  v84 = (v48 + 8);
  v85 = (v78 - 96);
  v227 = v75;
  v212 = v46;
  v211 = v52;
  v210 = v82;
  v209 = v83;
  v208 = v77;
  v86 = v218;
  if (v226)
  {
    v87 = v77(v65, v81);
    v88 = OUTLINED_FUNCTION_41_0(v87, *MEMORY[0x277D7B3E8]);
    v89 = v224;
    v206 = v90;
    v90(v88);
    v91 = sub_220DBE5E0();
    OUTLINED_FUNCTION_43(v91);
    v92 = v221;
    OUTLINED_FUNCTION_39();
    sub_220DC0280();
    sub_220CDA548(v46, &qword_27CF95228, &unk_220DC1E60);
    v207 = *v84;
    v207(v52, v89);
    v93 = *v85;
    (*v85)(v65, v86);
    v94 = v233;
    sub_220DC0940();
    (*(v231 + 8))(v21, v66);
    v95 = v92;
  }

  else
  {
    v96 = (v77)(v63, v81, v218);
    v97 = OUTLINED_FUNCTION_41_0(v96, *MEMORY[0x277D7B3E8]);
    v206 = v98;
    v98(v97);
    v99 = sub_220DBE5E0();
    OUTLINED_FUNCTION_43(v99);
    v100 = v233;
    v95 = v221;
    OUTLINED_FUNCTION_29_1();
    sub_220DC0280();
    sub_220CDA548(v46, &qword_27CF95228, &unk_220DC1E60);
    v101 = OUTLINED_FUNCTION_36();
    v207 = v102;
    (v102)(v101);
    v93 = *v85;
    (*v85)(v63, v86);
    v94 = v100;
  }

  v103 = v84;
  OUTLINED_FUNCTION_5_2();
  v105 = v220;
  sub_220CE1028(&v225[v104], v220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v107 = v229;
  if (!EnumCaseMultiPayload)
  {
    v118 = v228;
    v119 = v214;
    v120 = v230;
    (*(v228 + 32))(v214, v105, v230);
    v122 = v222;
    v121 = v223;
    (*(v223 + 104))(v222, *MEMORY[0x277D7B408], v232);
    sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_0_0();
    sub_220CE33B8(v123, v124, MEMORY[0x277D7B4A0]);
    v125 = v227;
    v226 = sub_220DBE0B0();
    v126 = v231;
    OUTLINED_FUNCTION_40_0();

    (*(v121 + 8))(v122, v232);
    (*(v118 + 8))(v119, v120);
    (*(v126 + 8))(v94, v125);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v218 = v93;
    v219 = v103;
    v221 = v85;
    v127 = v105;
    v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    v129 = v228;
    v130 = *(v228 + 32);
    v131 = v95;
    v132 = v230;
    v130(v107, v127, v230);
    v130(v217, v127 + v128, v132);
    v133 = sub_220DC0820();
    v134 = sub_220CF9528(v131, v133);

    if (v134)
    {
      (*(v223 + 104))(v222, *MEMORY[0x277D7B408], v232);
      sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_0_0();
      sub_220CE33B8(v135, v136, MEMORY[0x277D7B4A0]);
      v137 = v233;
      v138 = v227;
      v226 = sub_220DBE0B0();
      OUTLINED_FUNCTION_40_0();

      v139 = OUTLINED_FUNCTION_14_2();
      v140(v139);
      v141 = *(v129 + 8);
      v142 = OUTLINED_FUNCTION_38_0();
      v141(v142);
      (v141)(v229, v132);
      (*(v231 + 8))(v137, v138);
      goto LABEL_21;
    }

    sub_220DC0830();
    if (v226)
    {
      v150 = OUTLINED_FUNCTION_13_1(&a9);
      v151(v150);
      v152 = OUTLINED_FUNCTION_8_3();
      v153(v152);
      v154 = sub_220DBE5E0();
      OUTLINED_FUNCTION_19_1(v154);
      v155 = v203;
      OUTLINED_FUNCTION_30_2();

      sub_220CDA548(v107, &qword_27CF95228, &unk_220DC1E60);
      v156 = OUTLINED_FUNCTION_22_2();
      v157(v156);
      v158 = OUTLINED_FUNCTION_35_0();
      v159(v158);
      sub_220DC0940();
      (*(v231 + 8))(v155, v227);
      v160 = v232;
      if (qword_280FA6600 == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v172 = OUTLINED_FUNCTION_13_1(&a10);
      v173(v172);
      v174 = OUTLINED_FUNCTION_8_3();
      v175(v174);
      v176 = sub_220DBE5E0();
      OUTLINED_FUNCTION_19_1(v176);
      OUTLINED_FUNCTION_30_2();

      sub_220CDA548(v107, &qword_27CF95228, &unk_220DC1E60);
      v177 = OUTLINED_FUNCTION_22_2();
      v178(v177);
      v179 = OUTLINED_FUNCTION_35_0();
      v180(v179);
      v160 = v232;
      if (qword_280FA6600 == -1)
      {
LABEL_20:
        OUTLINED_FUNCTION_21_1();
        v181 = sub_220DBE240();
        v225 = v182;
        v226 = v181;
        v183 = v223;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v184 = swift_allocObject();
        *(v184 + 16) = xmmword_220DC17C0;
        LODWORD(v224) = *MEMORY[0x277D7B408];
        v223 = *(v183 + 104);
        v185 = v222;
        (v223)(v222);
        v221 = sub_220DBF100();
        sub_220DBF0D0();
        OUTLINED_FUNCTION_0_0();
        v220 = sub_220CE33B8(v186, v187, MEMORY[0x277D7B4A0]);
        v188 = sub_220DBE0B0();
        v190 = v189;

        v191 = *(v183 + 8);
        v192 = OUTLINED_FUNCTION_38_0();
        v191(v192);
        *(v184 + 56) = MEMORY[0x277D837D0];
        v193 = sub_220CEFDB0();
        *(v184 + 64) = v193;
        *(v184 + 32) = v188;
        *(v184 + 40) = v190;
        (v223)(v185, v224, v160);
        sub_220DBF0D0();
        v194 = v230;
        v195 = v217;
        v196 = sub_220DBE0B0();
        v198 = v197;

        (v191)(v185, v232);
        *(v184 + 96) = MEMORY[0x277D837D0];
        *(v184 + 104) = v193;
        *(v184 + 72) = v196;
        *(v184 + 80) = v198;
        v226 = sub_220DC05F0();
        OUTLINED_FUNCTION_40_0();

        v199 = *(v231 + 8);
        v200 = v227;
        v199(v216, v227);
        v201 = *(v228 + 8);
        v201(v195, v194);
        v201(v229, v194);
        v199(v233, v200);
        goto LABEL_21;
      }
    }

    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_20;
  }

  v108 = v228;
  v109 = v215;
  v110 = v230;
  (*(v228 + 32))(v215, v105, v230);
  sub_220DC0820();
  v111 = OUTLINED_FUNCTION_29_1();
  v113 = sub_220CF9528(v111, v112);

  if ((v113 & 1) != 0 || (v213 & 1) == 0)
  {
    v144 = v222;
    v143 = v223;
    (*(v223 + 104))(v222, *MEMORY[0x277D7B408], v232);
    sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_0_0();
    sub_220CE33B8(v145, v146, MEMORY[0x277D7B4A0]);
    v226 = sub_220DBE0B0();
    OUTLINED_FUNCTION_40_0();

    (*(v143 + 8))(v144, v232);
    (*(v108 + 8))(v109, v110);
    v147 = OUTLINED_FUNCTION_32_0();
    v149(v147, v148);
  }

  else
  {
    v114 = sub_220DBE030();
    sub_220DC0930();

    sub_220CD8184(0, &qword_27CF95230, 0x277CCA8D8);
    v115 = sub_220DC0AA0();
    v116 = v109;
    v117 = v223;
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_15_1();
    v229 = sub_220DBE240();
    v225 = v161;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_220DC17A0;
    v163 = v222;
    v164 = v232;
    (*(v117 + 104))(v222, *MEMORY[0x277D7B408], v232);
    sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_0_0();
    sub_220CE33B8(v165, v166, MEMORY[0x277D7B4A0]);
    v167 = v227;
    v168 = v116;
    v169 = sub_220DBE0B0();
    v171 = v170;

    (*(v117 + 8))(v163, v164);
    *(v162 + 56) = MEMORY[0x277D837D0];
    *(v162 + 64) = sub_220CEFDB0();
    *(v162 + 32) = v169;
    *(v162 + 40) = v171;
    v226 = sub_220DC05F0();

    (*(v108 + 8))(v168, v230);
    (*(v231 + 8))(v233, v167);
  }

LABEL_21:
  OUTLINED_FUNCTION_24();
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, int a2)
{
  result = v2;
  *(v3 - 316) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 168);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t sub_220CE33B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_39_1()
{

  return sub_220D563D8((v2 > 1), v1, 1, v0);
}

uint64_t PrecipitationTotalHeroString.shortSubtitle.getter()
{
  v2 = OUTLINED_FUNCTION_13_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_25_3(v4);
  v5 = sub_220DBE560();
  switch(OUTLINED_FUNCTION_19_4(v5))
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_7_6();
      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_6_7();
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v8 = OUTLINED_FUNCTION_24_3(v7);
      *(v8 + 16) = xmmword_220DC17A0;
      v9 = MEMORY[0x277D83C10];
      *(v8 + 56) = MEMORY[0x277D83B88];
      *(v8 + 64) = v9;
      v10 = 6;
      goto LABEL_12;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_6_7();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v8 = OUTLINED_FUNCTION_24_3(v11);
      *(v8 + 16) = xmmword_220DC17A0;
      v12 = MEMORY[0x277D83C10];
      *(v8 + 56) = MEMORY[0x277D83B88];
      *(v8 + 64) = v12;
      v10 = 24;
LABEL_12:
      v1 = OUTLINED_FUNCTION_23_4(v8, v10);

      break;
    default:
      if (*(v1 + *(v3 + 20)) == 2)
      {
        OUTLINED_FUNCTION_29();
        if (!v6)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }
      }

      else
      {
        OUTLINED_FUNCTION_29();
        if (!v6)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }
      }

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_7_6();
      sub_220CDDDE8(v0);
      break;
  }

  return v1;
}

uint64_t UVIndexComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_220DBEAD0();
  OUTLINED_FUNCTION_6();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for UVIndexComponentDescriptionContext(0);
  v12 = v11[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6();
  (*(v13 + 32))(a5 + v12, a2);
  v14 = v11[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6();
  (*(v15 + 32))(a5 + v14, a3);
  v16 = v11[7];
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  v18 = *(v17 + 32);

  return v18(a5 + v16, a4);
}

uint64_t UVIndexNightRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v54 - v4;
  sub_220DBF070();
  OUTLINED_FUNCTION_0();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v61 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v54 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v65 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v54 - v20;
  v22 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v66 = v29;
  v67 = v28;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v54 - v33;
  type metadata accessor for UVIndexComponentDescriptionContext(0);
  sub_220DBE600();
  v69 = v34;
  v60 = a2;
  sub_220CE108C(sub_220CE408C, v68);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v35 = &qword_27CF95A10;
    v36 = "Z";
    v37 = v21;
LABEL_5:
    sub_220CE1ABC(v37, v35, v36);
    v39 = 0;
    v40 = v66;
    goto LABEL_17;
  }

  (*(v24 + 32))(v27, v21, v22);
  sub_220DBE800();
  v38 = v64;
  sub_220DBF020();
  (*(v62 + 8))(v8, v63);
  if (__swift_getEnumTagSinglePayload(v38, 1, v9) == 1)
  {
    (*(v24 + 8))(v27, v22);
    v35 = &qword_27CF951E0;
    v36 = &unk_220DC1D80;
    v37 = v38;
    goto LABEL_5;
  }

  v55 = v27;
  v62 = v24;
  v63 = v22;
  v41 = v61;
  (*(v61 + 32))(v65, v38, v9);
  v42 = v57;
  sub_220DBEA60();
  sub_220DBE6A0();
  v43 = v58;
  sub_220DBE390();
  v40 = v66;
  (*(v66 + 8))(v32, v67);
  v44 = *(v41 + 8);
  v44(v42, v9);
  v45 = v59;
  sub_220DBE5F0();
  v44(v43, v9);
  sub_220DBEA60();
  v46 = sub_220DBE430();
  v44(v43, v9);
  if (v46 & 1) != 0 && (sub_220DBEA60(), v47 = sub_220DBE440(), v44(v43, v9), (v47))
  {
    sub_220DBEF60();
    v48 = sub_220DBEF40();
    v50 = v49;
    if (v48 == sub_220DBEF40() && v50 == v51)
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_220DC0CA0();
    }
  }

  else
  {
    v39 = 0;
  }

  v44(v45, v9);
  v44(v65, v9);
  (*(v62 + 8))(v55, v63);
LABEL_17:
  (*(v40 + 8))(v34, v67);
  return v39 & 1;
}

uint64_t sub_220CE3FA0()
{
  v0 = sub_220DBE560();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE810();
  v4 = sub_220DBE610();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t UVIndexNotLowNotIncreasingBeforeSunsetRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v59[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0();
  v60 = v5;
  v61 = v4;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v62 = v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v69 = v59 - v10;
  sub_220DBF070();
  OUTLINED_FUNCTION_0();
  v67 = v12;
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_12();
  v13 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v66 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v63 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v22 = v59 - v21;
  v23 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v70 = v31;
  v71 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = type metadata accessor for UVIndexComponentDescriptionContext(0);
  sub_220DBE600();
  v73 = v34;
  v64 = a2;
  sub_220CE108C(sub_220CE47A4, v72);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v36 = &qword_27CF95A10;
    v37 = "Z";
    v38 = v22;
LABEL_5:
    sub_220CE1ABC(v38, v36, v37);
LABEL_6:
    LOBYTE(v40) = 0;
    goto LABEL_7;
  }

  (*(v25 + 32))(v29, v22, v23);
  sub_220DBE800();
  v39 = v69;
  sub_220DBF020();
  (*(v67 + 8))(v2, v68);
  if (__swift_getEnumTagSinglePayload(v39, 1, v13) == 1)
  {
    (*(v25 + 8))(v29, v23);
    v36 = &qword_27CF951E0;
    v37 = &unk_220DC1D80;
    v38 = v69;
    goto LABEL_5;
  }

  v67 = v29;
  v68 = v23;
  v42 = v65;
  v43 = v66;
  (*(v66 + 32))(v65, v69, v13);
  v45 = v63;
  v44 = v64;
  sub_220DBEA60();
  v46 = sub_220DBE440();
  v47 = v45;
  v48 = *(v43 + 8);
  v48(v47, v13);
  if ((v46 & 1) == 0)
  {
    v48(v42, v13);
    (*(v25 + 8))(v67, v68);
    goto LABEL_6;
  }

  v49 = v48;
  v50 = v42;
  v51 = (*(v60 + 16))(v62, v44 + *(v35 + 24), v61);
  MEMORY[0x28223BE20](v51);
  v59[-2] = v44;
  v40 = *(sub_220CE5008(sub_220D2B9E0, &v59[-4]) + 16);

  if (v40)
  {
    sub_220DBEF60();
    v52 = sub_220DBEF40();
    v54 = v53;
    v56 = v52 == sub_220DBEF40() && v54 == v55;
    v57 = v50;
    if (v56)
    {

      LOBYTE(v40) = 0;
    }

    else
    {
      v58 = sub_220DC0CA0();

      LOBYTE(v40) = v58 ^ 1;
    }
  }

  else
  {
    v57 = v50;
  }

  v49(v57, v13);
  (*(v25 + 8))(v67, v68);
LABEL_7:
  (*(v70 + 8))(v34, v71);
  return v40 & 1;
}

uint64_t sub_220CE46B8()
{
  v0 = sub_220DBE560();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE810();
  v4 = sub_220DBE610();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t UVIndexSteadyBeforeNoonRule.isSatisfied(for:data:)(char *a1, uint64_t a2)
{
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0();
  v36 = v4;
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - v5;
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v40 = v7;
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  sub_220DBEA60();
  sub_220DBEA60();
  v21 = type metadata accessor for UVIndexComponentDescriptionContext(0);
  sub_220DBE3D0();
  v22 = *(v11 + 8);
  v22(v15, v9);
  v23 = sub_220DBE440();
  v22(v18, v9);
  v22(v20, v9);
  if (v23)
  {
    v24 = v35;
    sub_220DBE600();
    v25 = (*(v36 + 16))(v38, a2 + *(v21 + 24), v37);
    MEMORY[0x28223BE20](v25);
    v26 = v39;
    *(&v35 - 2) = v24;
    *(&v35 - 1) = v26;
    v27 = *(sub_220CE5008(sub_220CE7828, (&v35 - 4)) + 16);

    if (v27)
    {
      v28 = 0;
    }

    else
    {
      sub_220DBEF60();
      v29 = sub_220DBEF40();
      v31 = v30;
      if (v29 == sub_220DBEF40() && v31 == v32)
      {
        v28 = 1;
      }

      else
      {
        v28 = sub_220DC0CA0();
      }
    }

    (*(v40 + 8))(v24, v41);
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t UVIndexSteadyBetweenNoonAndMidnightRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v44[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0();
  v45 = v4;
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v44 - v5;
  v52 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v50 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v48 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = v44 - v10;
  v12 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  v49 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v44 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v44 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v44 - v24;
  sub_220DBEA60();
  sub_220DBEA60();
  v26 = type metadata accessor for UVIndexComponentDescriptionContext(0);
  v27 = *(v26 + 28);
  v53 = a2;
  v51 = v27;
  sub_220DBE3D0();
  v28 = *(v14 + 8);
  v28(v20, v12);
  LOBYTE(a2) = sub_220DBE430();
  v28(v23, v12);
  v28(v25, v12);
  if (a2 & 1) != 0 && (v44[0] = v26, sub_220DBEA60(), v29 = v49, sub_220DBEA60(), sub_220DBE6A0(), sub_220DBE390(), v30 = v11, v31 = v52, v50 = *(v50 + 8), (v50)(v30, v52), v28(v29, v12), sub_220DBE3E0(), v28(v20, v12), v32 = sub_220DBE440(), v28(v23, v12), v28(v25, v12), (v32))
  {
    v33 = v53;
    v34 = v48;
    sub_220DBE600();
    v35 = (*(v45 + 16))(v47, v33 + *(v44[0] + 24), v46);
    MEMORY[0x28223BE20](v35);
    v44[-2] = v34;
    v44[-1] = v33;
    v36 = *(sub_220CE5008(sub_220CE5628, &v44[-4]) + 16);

    if (v36)
    {
      v37 = 0;
    }

    else
    {
      sub_220DBEF60();
      v38 = sub_220DBEF40();
      v40 = v39;
      if (v38 == sub_220DBEF40() && v40 == v41)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_220DC0CA0();
      }
    }

    (v50)(v34, v31);
  }

  else
  {
    v37 = 0;
  }

  return v37 & 1;
}

uint64_t sub_220CE5008(uint64_t (*a1)(char *), uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v44 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v35 = (v6 - v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v43 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_1_15();
  sub_220CDA008(v16, v17);
  sub_220DC06D0();
  v18 = *(v13 + 44);
  OUTLINED_FUNCTION_2_13();
  sub_220CDA008(v19, v20);
  v42 = (v4 + 32);
  v34 = v4;
  v37 = (v4 + 8);
  v38 = (v4 + 16);
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_220DC08B0();
    if (*&v15[v18] == v45[0])
    {
      sub_220CE58C8(v15);
      return v36;
    }

    v21 = sub_220DC08E0();
    v22 = v39;
    v23 = v44;
    (*v38)(v39);
    v21(v45, 0);
    sub_220DC08C0();
    v24 = v43;
    v25 = *v42;
    (*v42)(v43, v22, v23);
    v26 = v40(v24);
    if (v2)
    {
      break;
    }

    if (v26)
    {
      v25(v35, v43, v44);
      v27 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_5_10();
        v27 = v46;
      }

      v29 = *(v27 + 16);
      if (v29 >= *(v27 + 24) >> 1)
      {
        sub_220CE5648();
        v27 = v46;
      }

      *(v27 + 16) = v29 + 1;
      v30 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v36 = v27;
      v25((v27 + v30 + *(v34 + 72) * v29), v35, v44);
    }

    else
    {
      (*v37)(v43, v44);
    }
  }

  (*v37)(v43, v44);
  sub_220CE58C8(v15);
  v31 = v36;

  return v31;
}

uint64_t sub_220CE538C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a3;
  v3 = sub_220DBEF70();
  v24[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DBE560();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  sub_220DBE8F0();
  v13 = sub_220DBE610();
  v14 = *(v7 + 8);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_220DBE8F0();
  sub_220DBEA60();
  v15 = sub_220DBE430();
  v14(v10, v6);
  v14(v12, v6);
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_220DBE910();
  sub_220DBEF60();
  (*(v24[0] + 8))(v5, v3);
  v16 = sub_220DBEF40();
  v18 = v17;
  if (v16 == sub_220DBEF40() && v18 == v19)
  {

LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_220DC0CA0();

  v22 = v21 ^ 1;
  return v22 & 1;
}

void sub_220CE5648()
{
  OUTLINED_FUNCTION_7_2();
  sub_220CE5690();
  *v0 = v1;
}

void sub_220CE5690()
{
  OUTLINED_FUNCTION_25();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_9_2();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = *(*(v7(0) - 8) + 72);
  v19 = OUTLINED_FUNCTION_10_1();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v16;
  v19[3] = 2 * ((v20 - v0) / v18);
LABEL_18:
  v7(0);
  OUTLINED_FUNCTION_13_2();
  if (v11)
  {
    sub_220CE580C(v9 + v22, v16, v19 + v22, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220CE580C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_14_3();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_3_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_3_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_220CE58C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UVIndexIncreasingRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v50 = sub_220DBEF70();
  OUTLINED_FUNCTION_0();
  v48 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  v43 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_7();
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v45 = v23;
  v46 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = type metadata accessor for UVIndexComponentDescriptionContext(0);
  sub_220DBE600();
  (*(v20 + 16))(v2, a2 + *(v27 + 24), v18);
  v44 = v26;
  v52 = v26;
  result = sub_220CE5008(sub_220CE5E94, v51);
  v29 = v9;
  v30 = result;
  v31 = 0;
  v32 = *(result + 16);
  v49 = v11 + 16;
  v33 = (v48 + 8);
  while (1)
  {
    if (v32 == v31)
    {

      v34 = 1;
      v35 = v43;
      goto LABEL_8;
    }

    if (v31 >= *(v30 + 16))
    {
      break;
    }

    (*(v11 + 16))(v15, v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, v29);
    sub_220DBE910();
    sub_220DBEF60();
    (*v33)(v8, v50);
    if (sub_220DBEF20())
    {

      v35 = v43;
      (*(v11 + 32))(v43, v15, v29);
      v34 = 0;
LABEL_8:
      __swift_storeEnumTagSinglePayload(v35, v34, 1, v29);
      sub_220DBEF60();
      v36 = sub_220DBEF40();
      v38 = v37;
      if (v36 == sub_220DBEF40() && v38 == v39)
      {
      }

      else
      {
        v41 = sub_220DC0CA0();

        v42 = 0;
        if ((v41 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v42 = __swift_getEnumTagSinglePayload(v35, 1, v29) != 1;
LABEL_16:
      sub_220CE1ABC(v35, &qword_27CF959E0, &unk_220DC3C00);
      (*(v45 + 8))(v44, v46);
      return v42;
    }

    ++v31;
    result = (*(v11 + 8))(v15, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_220CE5DBC()
{
  v0 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  sub_220DBE8F0();
  v7 = sub_220DBE610();
  (*(v2 + 8))(v6, v0);
  return v7 & 1;
}

uint64_t UVIndexPolarEdgeCaseRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v48[1] = a1;
  v56 = sub_220DBEF70();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v55 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v52 = (v10 - v11);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = v48 - v23;
  v25 = type metadata accessor for UVIndexComponentDescriptionContext(0);
  (*(v21 + 16))(v24, a2 + *(v25 + 24), v19);
  OUTLINED_FUNCTION_1_15();
  sub_220CDA008(v26, v27);
  sub_220DC06D0();
  v28 = *(v16 + 44);
  OUTLINED_FUNCTION_2_13();
  sub_220CDA008(v29, v30);
  v31 = (v8 + 16);
  v32 = (v4 + 8);
  v54 = (v8 + 8);
  v49 = v8;
  v51 = (v8 + 32);
  v53 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_220DC08B0();
    if (*&v18[v28] == v58[0])
    {
      break;
    }

    v33 = sub_220DC08E0();
    (*v31)(v14);
    v33(v58, 0);
    sub_220DC08C0();
    v34 = v55;
    sub_220DBE910();
    sub_220DBEF60();
    (*v32)(v34, v56);
    v35 = sub_220DBEF40();
    v37 = v36;
    if (v35 == sub_220DBEF40() && v37 == v38)
    {

LABEL_10:
      v50 = *v51;
      v50(v52, v14, v57);
      v41 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_220CE5648();
        v41 = v59;
      }

      v43 = *(v41 + 16);
      if (v43 >= *(v41 + 24) >> 1)
      {
        sub_220CE5648();
        v41 = v59;
      }

      *(v41 + 16) = v43 + 1;
      v44 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v53 = v41;
      v50(v41 + v44 + *(v49 + 72) * v43, v52, v57);
    }

    else
    {
      v40 = sub_220DC0CA0();

      if (v40)
      {
        goto LABEL_10;
      }

      (*v54)(v14, v57);
    }
  }

  sub_220CE58C8(v18);
  v45 = *(v53 + 16);

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    sub_220DBEF60();
    v46 = sub_220DBEF20();
  }

  return v46 & 1;
}

uint64_t UVIndexPolarEdgeCaseRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = (v6 - v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  sub_220DBEA60();
  sub_220DBEA60();
  type metadata accessor for UVIndexComponentDescriptionContext(0);
  sub_220DBE3D0();
  v15 = *(v4 + 8);
  v15(v8, v2);
  v16 = sub_220DBE430();
  v15(v12, v2);
  v15(v14, v2);
  if (v16)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_6;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_6:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  return sub_220DBE240();
}

uint64_t UVIndex.ExposureCategory.localizedString.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      return sub_220DBE240();
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    case 3:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    case 4:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_10;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_12();
      swift_once();
LABEL_9:
      OUTLINED_FUNCTION_1_38();
LABEL_10:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t VisibilityFogRule.isSatisfied(for:data:)()
{
  v0 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v17 = v16;
  (*(v11 + 8))(v14, v9);
  if (v17 >= 2.0)
  {
    v18 = 0;
  }

  else
  {
    sub_220DBEAC0();
    (*(v2 + 104))(v6, *MEMORY[0x277CE32B8], v0);
    v18 = sub_220CE6A64(v8, v6);
    v19 = *(v2 + 8);
    v19(v6, v0);
    v19(v8, v0);
  }

  return v18 & 1;
}

uint64_t sub_220CE6AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_220CE6B84(a4, a5, a6);
  sub_220DC0710();
  sub_220DC0710();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220DC0CA0();
  }

  return v10 & 1;
}

uint64_t sub_220CE6B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL VisibilityHazeRule.isSatisfied(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_220DBEAC0();
  (*(v8 + 104))(v12, *MEMORY[0x277CE3298], v6);
  sub_220CE6E40();
  v15 = sub_220DC05B0();
  v16 = *(v8 + 8);
  v16(v12, v6);
  v16(v14, v6);
  if (v15)
  {
    return 1;
  }

  v18 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v20 = v19;
  (*(v2 + 8))(v5, v0);
  return v20 > 2.0 && v20 < 10.0;
}

unint64_t sub_220CE6E40()
{
  result = qword_280FA7750;
  if (!qword_280FA7750)
  {
    sub_220DBEBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7750);
  }

  return result;
}

uint64_t VisibilitySmokeRule.isSatisfied(for:data:)()
{
  v0 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v17 = v16;
  (*(v11 + 8))(v14, v9);
  sub_220DBEAC0();
  (*(v2 + 104))(v6, *MEMORY[0x277CE32C8], v0);
  v18 = sub_220CE6A64(v8, v6);
  v19 = *(v2 + 8);
  v19(v6, v0);
  v19(v8, v0);
  return v18 & (v17 < 10.0);
}

uint64_t VisibilityDustRule.isSatisfied(for:data:)()
{
  v0 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v17 = v16;
  (*(v11 + 8))(v14, v9);
  sub_220DBEAC0();
  (*(v2 + 104))(v6, *MEMORY[0x277CE3220], v0);
  v18 = sub_220CE6A64(v8, v6);
  v19 = *(v2 + 8);
  v19(v6, v0);
  v19(v8, v0);
  return v18 & (v17 < 10.0);
}

uint64_t VisibilityFallbackRule.description(for:data:)()
{
  static VisibilityCondition.condition(for:)(&v1);
  switch(v1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      return sub_220DBE240();
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 3:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      return sub_220DBE240();
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 5:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_13;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_12();
      swift_once();
LABEL_13:
      OUTLINED_FUNCTION_1_19();
      return sub_220DBE240();
  }
}

uint64_t static VisibilityCondition.condition(for:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = objc_opt_self();
  v7 = [v6 miles];
  sub_220DBE130();

  sub_220DBE050();
  v9 = v8;
  v10 = *(v3 + 8);
  result = v10(v5, v2);
  v12 = round(v9);
  if (v12 >= 10.0)
  {
    v13 = 0;
  }

  else if (v12 <= 6.2)
  {
    v14 = [v6 meters];
    sub_220DBE130();

    sub_220DBE050();
    v16 = v15;
    result = v10(v5, v2);
    if (v16 <= 50.0)
    {
      v13 = 5;
    }

    else if (v16 <= 200.0)
    {
      v13 = 4;
    }

    else if (v16 <= 1000.0)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 1;
  }

  *a1 = v13;
  return result;
}

_BYTE *sub_220CE7848(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_220CE7858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  v3 = sub_220DBEF70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBE560();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE8F0();
  v11 = sub_220DBE610();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_220DBE910();
  sub_220DBEF60();
  (*(v4 + 8))(v6, v3);
  sub_220DBEF60();
  v12 = sub_220DBEF40();
  v14 = v13;
  if (v12 == sub_220DBEF40() && v14 == v15)
  {

LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  v17 = sub_220DC0CA0();

  v18 = v17 ^ 1;
  return v18 & 1;
}

uint64_t sub_220CE7A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBE560();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220DBE740();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CE7B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBE560();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220DBE740();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CE7BC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CE7BE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_220CE7C2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_220CE7CC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE7EF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_220CE7F78(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE80A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220CE8124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewTableRowViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220CE81D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OverviewTableRowViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CE8278(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95358, &qword_220DC2300);
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_220CE82D8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95358, &qword_220DC2300);
  OUTLINED_FUNCTION_6();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220CE8384()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220CE83D0(void *a1)
{
  sub_220DBF8A0();
  sub_220CFF458();
  return swift_getWitnessTable();
}

uint64_t sub_220CE8434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953C8, &unk_220DC2440);
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for OverviewTableRowViewModel(0);
  OUTLINED_FUNCTION_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 36));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220CE852C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953C8, &unk_220DC2440);
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for OverviewTableRowViewModel(0);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CE8620(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F8, &qword_220DC2520);
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_220CE8680()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F8, &qword_220DC2520);
  OUTLINED_FUNCTION_0_2();
  v1 = OUTLINED_FUNCTION_20();
  v2(v1);
  return v0;
}

uint64_t sub_220CE874C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220CE87E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE886C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220CE88B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_220CE88F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_220CE8A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBF1D0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220DBE560();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CE8AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBF1D0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220DBE560();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CE8C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220DBE560();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220CE8D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220DBE560();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE8DA4()
{
  OUTLINED_FUNCTION_7_5();
  v0 = sub_220DC0AE0();
  v1 = OUTLINED_FUNCTION_11_3(v0, v0, MEMORY[0x277CE1180]);
  OUTLINED_FUNCTION_12_5(v1);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF957B8, &qword_220DC3078);
  OUTLINED_FUNCTION_7_5();
  sub_220DBF8A0();
  OUTLINED_FUNCTION_7_5();
  sub_220DC0AE0();
  sub_220D13EA0();
  sub_220DC00C0();
  OUTLINED_FUNCTION_5_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DBF7A0();
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  sub_220DBF8A0();
  OUTLINED_FUNCTION_6_6();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_5(TupleTypeMetadata2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0050();
  OUTLINED_FUNCTION_3_9();
  return swift_getWitnessTable();
}

uint64_t sub_220CE8F54()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220CE8F94()
{
  v1 = sub_220DBF780();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_220CE9074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PrecipitationTotalStringAmount(v6);
  OUTLINED_FUNCTION_5();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for PrecipitationTotalHeroStringTimeframe(0);
    OUTLINED_FUNCTION_5();
    if (*(v12 + 84) != a2)
    {
      v14 = *(v3 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v10 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_220CE916C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PrecipitationTotalStringAmount(v8);
  OUTLINED_FUNCTION_5();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for PrecipitationTotalHeroStringTimeframe(0);
    OUTLINED_FUNCTION_5();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 28)) = a2 + 1;
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CE9250(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_0();
  v4 = sub_220DBE560();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CE9294(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_220DBE560();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220CE935C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CE93A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220CE9510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_2_9();
  v7 = type metadata accessor for ChartLineStrokeStyle(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_220CE95B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChartLineStrokeStyle(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CE9660(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220DBEAD0();
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    OUTLINED_FUNCTION_5();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      OUTLINED_FUNCTION_5();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = sub_220DBE740();
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_220CE9790(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220DBEAD0();
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      OUTLINED_FUNCTION_5();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = sub_220DBE740();
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CE9908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CE9950(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220CE9EB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220CE9FB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220CE9FF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220CEA030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220DBE560();
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_220DBE740();
  OUTLINED_FUNCTION_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220CEA11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220DBE560();
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_220DBE740();
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CEA2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBF1D0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220DBE560();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CEA388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBF1D0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220DBE560();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CEA498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBF370();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220CEA548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220DBF370();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CEA6C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220CEA6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220DC04D0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220CEA784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_220DC04D0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CEA87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  v6 = sub_220DBEC20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    if (a2 == 253)
    {
      v9 = *(v3 + *(a3 + 20) + 8);
      if (v9 > 2)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_220DBE560();
    v8 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CEA944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_0();
  result = sub_220DBEC20();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 253)
    {
      *(v4 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    v9 = sub_220DBE560();
    v10 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CEAB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE560();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_220CEABB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE560();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_220CEAC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220CEAD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_11_0();
  result = type metadata accessor for SunriseSunsetDetailChartViewModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CEAE2C(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_19(*a1);
  }

  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_5();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    sub_220DBF1D0();
    OUTLINED_FUNCTION_5();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[6];
    }

    else
    {
      v9 = sub_220DBE560();
      v10 = a3[10];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_220CEAF28(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for DetailChartDataElement(0);
    OUTLINED_FUNCTION_5();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_220DBF1D0();
      OUTLINED_FUNCTION_5();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = sub_220DBE560();
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_220CEB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220DBE560();
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_7_19(*(a1 + *(a3 + 20) + 8));
    }

    v8 = type metadata accessor for DetailChartDataElement(0);
    v9 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_220CEB0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220DBE560();
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return;
    }

    v10 = type metadata accessor for DetailChartDataElement(0);
    v11 = a1 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CEB1BC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220DBE960();
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  OUTLINED_FUNCTION_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_220DBEAD0();
    OUTLINED_FUNCTION_5();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[8];
    }

    else
    {
      v8 = sub_220DBE740();
      v12 = a3[9];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_220CEB314(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220DBE960();
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      sub_220DBEAD0();
      OUTLINED_FUNCTION_5();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        v10 = sub_220DBE740();
        v14 = a4[9];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CEB494()
{
  v1 = (type metadata accessor for ChartAreaSeries(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = sub_220DBE560();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  v7(v5 + *(v8 + 36), v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220CEB5CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_220CEB660(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CEB6EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96038, &unk_220DC6000);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96030, &qword_220DC5FF8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96028, &qword_220DC5FF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96050, &qword_220DC6030);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96020, &qword_220DC5FE8);
  sub_220D8AC0C();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_5_27(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  v43 = sub_220DBF590();
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_5_27(v12, v13, v14, v15, v16, v17, v18, v19, v43);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_5_27(v20, v21, v22, v23, v24, v25, v26, v27, v2);
  OUTLINED_FUNCTION_1_34();
  v44 = OUTLINED_FUNCTION_5_27(v28, v29, v30, v31, v32, v33, v34, v35, v1);
  return OUTLINED_FUNCTION_5_27(v44, MEMORY[0x277CBB280], v36, v37, v38, v39, v40, v41, v0);
}

uint64_t sub_220CEB868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220CEB848(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220CEB9CC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220DBEAD0();
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    OUTLINED_FUNCTION_5();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      OUTLINED_FUNCTION_5();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_220DBE740();
        OUTLINED_FUNCTION_5();
        if (*(v16 + 84) != a2)
        {
          v18 = *(a1 + a3[9]);
          if (v18 >= 2)
          {
            return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_220CEBB60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220DBEAD0();
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      OUTLINED_FUNCTION_5();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_220DBE740();
        OUTLINED_FUNCTION_5();
        if (*(v18 + 84) != a3)
        {
          *(a1 + a4[9]) = a2 + 1;
          return;
        }

        v10 = v17;
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CEBD3C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96298, &qword_220DC6F80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  OUTLINED_FUNCTION_6_6();
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  OUTLINED_FUNCTION_6_6();
  sub_220DBF8A0();
  sub_220DBFB20();
  v1 = MEMORY[0x277CE0740];
  sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88, MEMORY[0x277CE0740]);
  swift_getWitnessTable();
  sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, v1);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  OUTLINED_FUNCTION_0_22();
  sub_220CE161C(v2, &qword_27CF96298, &qword_220DC6F80, v3);
  sub_220DC00C0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  return swift_getWitnessTable();
}

uint64_t sub_220CEBF48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220DBED90();
  *a1 = result;
  return result;
}

uint64_t sub_220CEBF9C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220CEBFE8()
{
  type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  OUTLINED_FUNCTION_1_36();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 28);
  sub_220DC0150();
  OUTLINED_FUNCTION_6();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_220CEC0DC()
{
  type metadata accessor for ChartPointMarkSeriesContent(0);
  OUTLINED_FUNCTION_1_36();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 28);
  sub_220DC0150();
  OUTLINED_FUNCTION_6();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_220CEC21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220DBE210();
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  OUTLINED_FUNCTION_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220CEC318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220DBE210();
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CEC4B0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 247)
    {
      v10 = *(a1 + a3[5]);
      if (v10 >= 9)
      {
        return v10 - 8;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      sub_220DBE560();
      OUTLINED_FUNCTION_5();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[7];
      }

      else
      {
        v8 = sub_220DBE740();
        v14 = a3[8];
      }
    }

    v9 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_220CEC600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 247)
    {
      *(a1 + a4[5]) = a2 + 8;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_220DBE560();
      OUTLINED_FUNCTION_5();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        v10 = sub_220DBE740();
        v14 = a4[8];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CEC81C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_220CEC878()
{
  OUTLINED_FUNCTION_0_25();

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_220CEC8E4()
{
  OUTLINED_FUNCTION_0_25();

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_220CECA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E0, &qword_220DC7DE0);
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E8, &qword_220DC7DE8);
  OUTLINED_FUNCTION_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220CECB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E0, &qword_220DC7DE0);
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965E8, &qword_220DC7DE8);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CECCE0()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF960();
  *v0 = result & 1;
  return result;
}

void sub_220CECD0C()
{
  OUTLINED_FUNCTION_1_40();
  sub_220DBF920();
  *v0 = v1;
}

uint64_t sub_220CECD5C()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF970();
  *v0 = result;
  return result;
}

uint64_t sub_220CECD88()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF990();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_220CECDBC()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF940();
  *v0 = result;
  return result;
}

uint64_t sub_220CECE0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96640, &qword_220DC7E98);
  OUTLINED_FUNCTION_6();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220CECE74()
{
  OUTLINED_FUNCTION_1_40();
  result = sub_220DBF8F0();
  *v0 = result;
  return result;
}

uint64_t sub_220CECF34(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_21();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  OUTLINED_FUNCTION_5();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[6];
  }

  else
  {
    type metadata accessor for ChartLineStyle(0);
    OUTLINED_FUNCTION_5();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[8];
    }

    else
    {
      sub_220DBFA30();
      v7 = a3[11];
    }
  }

  v9 = OUTLINED_FUNCTION_23_14(v7);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_220CED034()
{
  OUTLINED_FUNCTION_17_15();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    OUTLINED_FUNCTION_5();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[6];
    }

    else
    {
      type metadata accessor for ChartLineStyle(0);
      OUTLINED_FUNCTION_5();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[8];
      }

      else
      {
        sub_220DBFA30();
        v8 = v5[11];
      }
    }

    v10 = OUTLINED_FUNCTION_23_14(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_220CED138(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_21();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  OUTLINED_FUNCTION_5();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[6];
  }

  else
  {
    type metadata accessor for ChartLineStyle(0);
    OUTLINED_FUNCTION_5();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
      OUTLINED_FUNCTION_5();
      if (*(v9 + 84) == a2)
      {
        v7 = a3[12];
      }

      else
      {
        sub_220DBFA30();
        v7 = a3[15];
      }
    }
  }

  v10 = OUTLINED_FUNCTION_23_14(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_220CED284()
{
  OUTLINED_FUNCTION_17_15();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    OUTLINED_FUNCTION_5();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[6];
    }

    else
    {
      type metadata accessor for ChartLineStyle(0);
      OUTLINED_FUNCTION_5();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
        OUTLINED_FUNCTION_5();
        if (*(v10 + 84) == v6)
        {
          v8 = v5[12];
        }

        else
        {
          sub_220DBFA30();
          v8 = v5[15];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_23_14(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, v0, v13);
  }
}

uint64_t sub_220CED3FC()
{
  v1 = type metadata accessor for StyledLineMark(0);
  v2 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = *(v3 + 80);
  v23 = *(v6 + 64);
  v25 = v0;
  v7 = v0 + ((v2 + 16) & ~v2);

  v8 = v7 + v1[6];
  v9 = sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  v11(v8 + *(v12 + 36), v9);

  v13 = v7 + v1[10];
  type metadata accessor for ChartLineStrokeStyle(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v11(v13, v9);
  }

  v14 = type metadata accessor for ChartLineStyle(0);
  sub_220D1ECD8(*(v13 + *(v14 + 24)), *(v13 + *(v14 + 24) + 8), *(v13 + *(v14 + 24) + 16), *(v13 + *(v14 + 24) + 24));

  v15 = v1[12];
  if (!__swift_getEnumTagSinglePayload(v7 + v15, 1, v9))
  {
    v11(v7 + v15, v9);
  }

  v16 = v1[13];
  if (!__swift_getEnumTagSinglePayload(v7 + v16, 1, v9))
  {
    v11(v7 + v16, v9);
  }

  v17 = v2 | v5;
  v18 = (((v2 + 16) & ~v2) + v22 + v5) & ~v5;
  v19 = v1[15];
  sub_220DBFA30();
  OUTLINED_FUNCTION_6();
  (*(v20 + 8))(v7 + v19);

  (*(v4 + 8))(v25 + v18, v24);

  return MEMORY[0x2821FE8E8](v25, v18 + v23, v17 | 7);
}
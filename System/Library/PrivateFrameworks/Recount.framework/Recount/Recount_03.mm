unint64_t sub_261A61C18()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x437265746E756F63;
  }
}

uint64_t sub_261A61C7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A62290(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A61CA4(uint64_t a1)
{
  v2 = sub_261A620C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A61CE0(uint64_t a1)
{
  v2 = sub_261A620C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PMUInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBAE8, &qword_261A8B580);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A620C8();
  sub_261A85CD4();
  v13 = 0;
  sub_261A85B44();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_261A85B44();
  v11 = 2;
  sub_261A85B44();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PMUInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBAF8, &qword_261A8B588);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A620C8();
  sub_261A85CB4();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_261A85A84();
    v16 = 1;
    v14 = sub_261A85A84();
    v15 = 2;
    v11 = sub_261A85A84();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_261A620C8()
{
  result = qword_27FECBAF0;
  if (!qword_27FECBAF0)
  {
    result = swift_getWitnessTable(aE, &type metadata for PMUInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBAF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMUInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PMUInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_261A6218C()
{
  result = qword_27FECBB00;
  if (!qword_27FECBB00)
  {
    result = swift_getWitnessTable(asc_261A8B69C, &type metadata for PMUInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBB00);
  }

  return result;
}

unint64_t sub_261A621E4()
{
  result = qword_27FECBB08;
  if (!qword_27FECBB08)
  {
    result = swift_getWitnessTable(byte_261A8B60C, &type metadata for PMUInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBB08);
  }

  return result;
}

unint64_t sub_261A6223C()
{
  result = qword_27FECBB10;
  if (!qword_27FECBB10)
  {
    result = swift_getWitnessTable(byte_261A8B634, &type metadata for PMUInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBB10);
  }

  return result;
}

uint64_t sub_261A62290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437265746E756F63 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000261A8E750 == a2 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000261A8E770 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t static CountingMode.Metric.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4();
  }
}

uint64_t CountingMode.Metric.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CountingMode.Metric.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CountingMode.Metric.displayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CountingMode.Metric.shortDisplayName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t CountingMode.Metric.synopsis.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CountingMode.Metric.documentation.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t CountingMode.Metric.commentary.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t CountingMode.Metric.expression.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_261A62580()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 7173491;
  }
}

uint64_t sub_261A625B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7173491 && a2 == 0xE300000000000000;
  if (v5 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000261A8E830 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_261A6269C(uint64_t a1)
{
  v2 = sub_261A63964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A626D8(uint64_t a1)
{
  v2 = sub_261A63964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A62714(uint64_t a1)
{
  v2 = sub_261A63A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A62750(uint64_t a1)
{
  v2 = sub_261A63A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A6278C(uint64_t a1)
{
  v2 = sub_261A639B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A627C8(uint64_t a1)
{
  v2 = sub_261A639B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountingMode.Metric.Aggregation.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A6288C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6973736572707865;
    v6 = 0x7461676572676761;
    if (a1 != 8)
    {
      v6 = 0x6E7265746E497369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746E656D75636F64;
    if (a1 != 5)
    {
      v7 = 0x61746E656D6D6F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x4E79616C70736964;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x736973706F6E7973;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_261A629EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A64560(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A62A20(uint64_t a1)
{
  v2 = sub_261A62DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A62A5C(uint64_t a1)
{
  v2 = sub_261A62DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *CountingMode.Metric.deinit()
{

  return v0;
}

uint64_t CountingMode.Metric.__deallocating_deinit()
{
  CountingMode.Metric.deinit();

  return MEMORY[0x2821FE8D8](v0, 146, 7);
}

uint64_t CountingMode.Metric.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB18, &qword_261A8B720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A62DE4();
  sub_261A85CD4();
  v10[15] = 0;
  sub_261A85B14();
  if (!v2)
  {
    v10[14] = 1;
    sub_261A85B14();
    v10[13] = 2;
    sub_261A85B14();
    v10[12] = 3;
    sub_261A85AE4();
    v10[11] = 4;
    sub_261A85B14();
    v10[10] = 5;
    sub_261A85AE4();
    v10[9] = 6;
    sub_261A85AE4();
    v10[8] = 7;
    sub_261A85B14();
    v10[7] = *(v3 + 144);
    v10[6] = 8;
    sub_261A62E38();
    sub_261A85B54();
    v10[5] = 9;
    sub_261A85B24();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_261A62DE4()
{
  result = qword_27FECBB20;
  if (!qword_27FECBB20)
  {
    result = swift_getWitnessTable(aI_6, &_s6MetricC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBB20);
  }

  return result;
}

unint64_t sub_261A62E38()
{
  result = qword_27FECBB28;
  if (!qword_27FECBB28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Metric.Aggregation, &type metadata for CountingMode.Metric.Aggregation, v0, v1);
    atomic_store(result, &qword_27FECBB28);
  }

  return result;
}

uint64_t CountingMode.Metric.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CountingMode.Metric.init(from:)(a1);
  return v2;
}

uint64_t *CountingMode.Metric.init(from:)(void *a1)
{
  v3 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB30, &qword_261A8B728);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A62DE4();
  sub_261A85CB4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v18 = a1;
  }

  else
  {
    v20 = a1;
    v32 = 0;
    *(v1 + 16) = sub_261A85A54();
    *(v1 + 24) = v8;
    v31 = 1;
    *(v1 + 32) = sub_261A85A54();
    *(v1 + 40) = v9;
    v30 = 2;
    *(v1 + 48) = sub_261A85A54();
    *(v1 + 56) = v10;
    v29 = 3;
    v19 = 0;
    *(v1 + 64) = sub_261A85A14();
    *(v1 + 72) = v11;
    v28 = 4;
    *(v1 + 80) = sub_261A85A54();
    *(v1 + 88) = v12;
    v27 = 5;
    *(v1 + 96) = sub_261A85A14();
    *(v1 + 104) = v13;
    v26 = 6;
    *(v1 + 112) = sub_261A85A14();
    *(v1 + 120) = v14;
    v25 = 7;
    *(v1 + 128) = sub_261A85A54();
    *(v1 + 136) = v15;
    v23 = 8;
    sub_261A63440();
    sub_261A85A94();
    *(v1 + 144) = v24;
    v22 = 9;
    v17 = sub_261A85A64();
    (*(v5 + 8))(v7, v21);
    *(v3 + 145) = v17 & 1;
    v18 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v3;
}

unint64_t sub_261A63440()
{
  result = qword_27FECBB38;
  if (!qword_27FECBB38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Metric.Aggregation, &type metadata for CountingMode.Metric.Aggregation, v0, v1);
    atomic_store(result, &qword_27FECBB38);
  }

  return result;
}

uint64_t *sub_261A63494@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = CountingMode.Metric.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t CountingMode.Metric.hash(into:)(uint64_t a1)
{
  sub_261A85554();

  return sub_261A85554();
}

uint64_t CountingMode.Metric.hashValue.getter()
{
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A635A0()
{
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A635F4(uint64_t a1)
{
  sub_261A85554();

  return sub_261A85554();
}

uint64_t sub_261A63638(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A63688(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4();
  }
}

uint64_t CountingMode.Metric.Aggregation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB40, &qword_261A8B730);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB48, &qword_261A8B738);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB50, &qword_261A8B740);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A63964();
  sub_261A85CD4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_261A639B8();
    v14 = v18;
    sub_261A85AD4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_261A63A0C();
    sub_261A85AD4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_261A63964()
{
  result = qword_27FECBB58;
  if (!qword_27FECBB58)
  {
    result = swift_getWitnessTable(byte_261A8BC70, &_s6MetricC11AggregationO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBB58);
  }

  return result;
}

unint64_t sub_261A639B8()
{
  result = qword_27FECBB60;
  if (!qword_27FECBB60)
  {
    result = swift_getWitnessTable(asc_261A8BC20, &_s6MetricC11AggregationO29TimeWeightedAverageCodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBB60);
  }

  return result;
}

unint64_t sub_261A63A0C()
{
  result = qword_27FECBB68;
  if (!qword_27FECBB68)
  {
    result = swift_getWitnessTable(aY_3, &_s6MetricC11AggregationO13SumCodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBB68);
  }

  return result;
}

uint64_t CountingMode.Metric.Aggregation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB70, &qword_261A8B748);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB78, &qword_261A8B750);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBB80, &unk_261A8B758);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A63964();
  v12 = v31;
  sub_261A85CB4();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_261A85AC4();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_261A612E8();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_261A85904();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6F8, &qword_261A89A40);
      *v22 = &type metadata for CountingMode.Metric.Aggregation;
      sub_261A85A04();
      sub_261A858F4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_261A639B8();
        sub_261A859F4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_261A63A0C();
        sub_261A859F4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_261A63F20()
{
  result = qword_27FECBB88;
  if (!qword_27FECBB88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Metric.Aggregation, &type metadata for CountingMode.Metric.Aggregation, v0, v1);
    atomic_store(result, &qword_27FECBB88);
  }

  return result;
}

unint64_t sub_261A63F78(uint64_t a1, uint64_t a2)
{
  result = qword_27FECBB90;
  if (!qword_27FECBB90)
  {
    v5 = type metadata accessor for CountingMode.Metric();
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Metric, v5, v2, v3);
    atomic_store(result, &qword_27FECBB90);
  }

  return result;
}

uint64_t _s6MetricC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6MetricC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261A641F4()
{
  result = qword_27FECBB98;
  if (!qword_27FECBB98)
  {
    result = swift_getWitnessTable(aY_4, &_s6MetricC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBB98);
  }

  return result;
}

unint64_t sub_261A6424C()
{
  result = qword_27FECBBA0;
  if (!qword_27FECBBA0)
  {
    result = swift_getWitnessTable(asc_261A8BBA8, &_s6MetricC11AggregationO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBA0);
  }

  return result;
}

unint64_t sub_261A642A4()
{
  result = qword_27FECBBA8;
  if (!qword_27FECBBA8)
  {
    result = swift_getWitnessTable(byte_261A8BAC8, &_s6MetricC11AggregationO13SumCodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBA8);
  }

  return result;
}

unint64_t sub_261A642FC()
{
  result = qword_27FECBBB0;
  if (!qword_27FECBBB0)
  {
    result = swift_getWitnessTable(byte_261A8BAF0, &_s6MetricC11AggregationO13SumCodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBB0);
  }

  return result;
}

unint64_t sub_261A64354()
{
  result = qword_27FECBBB8;
  if (!qword_27FECBBB8)
  {
    result = swift_getWitnessTable(asc_261A8BA78, &_s6MetricC11AggregationO29TimeWeightedAverageCodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBB8);
  }

  return result;
}

unint64_t sub_261A643AC()
{
  result = qword_27FECBBC0;
  if (!qword_27FECBBC0)
  {
    result = swift_getWitnessTable(a9_3, &_s6MetricC11AggregationO29TimeWeightedAverageCodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBC0);
  }

  return result;
}

unint64_t sub_261A64404()
{
  result = qword_27FECBBC8;
  if (!qword_27FECBBC8)
  {
    result = swift_getWitnessTable(byte_261A8BB18, &_s6MetricC11AggregationO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBC8);
  }

  return result;
}

unint64_t sub_261A6445C()
{
  result = qword_27FECBBD0;
  if (!qword_27FECBBD0)
  {
    result = swift_getWitnessTable(byte_261A8BB40, &_s6MetricC11AggregationO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBD0);
  }

  return result;
}

unint64_t sub_261A644B4()
{
  result = qword_27FECBBD8;
  if (!qword_27FECBBD8)
  {
    result = swift_getWitnessTable(byte_261A8B9C0, &_s6MetricC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBD8);
  }

  return result;
}

unint64_t sub_261A6450C()
{
  result = qword_27FECBBE0;
  if (!qword_27FECBBE0)
  {
    result = swift_getWitnessTable(byte_261A8B9E8, &_s6MetricC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27FECBBE0);
  }

  return result;
}

uint64_t sub_261A64560(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261A8E570 == a2 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461 || (sub_261A85BA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61746E656D6D6F63 && a2 == 0xEA00000000007972 || (sub_261A85BA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL || (sub_261A85BA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEB000000006E6F69 || (sub_261A85BA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 9;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_261A648C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  if ((*v2 & 1) == 0)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;

    goto LABEL_9;
  }

  v7 = a1[1];
  v8 = *a1 - v7;
  if (__OFSUB__(*a1, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v5 + 16);
  if (v7 < v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8)
  {
LABEL_15:
    sub_261A65A2C(v5, v5 + 32, v8, (2 * v7) | 1);
    v5 = v10;
    goto LABEL_8;
  }

LABEL_8:
  *a2 = v4 & 0xFFFFFFFE;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
LABEL_9:
}

BOOL sub_261A64A18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_261A64A48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_261A64A74@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_261A64B60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261A64B94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_261A64BEC(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = ((*a1 << 63) >> 63) & 0x30000 | (((*a1 >> 1) & 1) << 18);
    v13 = MEMORY[0x277D84F90];
    sub_261A3EF90(0, v4, 0);
    result = v13;
    v7 = (v3 + 32);
    v8 = *(v13 + 16);
    do
    {
      v9 = *v7++;
      v10 = v6 | v9;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v14 = result;
      v12 = *(result + 24);
      if (v8 >= v12 >> 1)
      {
        sub_261A3EF90((v12 > 1), v8 + 1, 1);
        result = v14;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8++ + 32) = v11;
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KPCSettings.apply(triggerKPerfActionID:options:)(Swift::UInt_optional triggerKPerfActionID, Recount::KPCSettings::ApplyOptions options)
{
  LODWORD(v101) = *&triggerKPerfActionID.is_nil;
  value = triggerKPerfActionID.value;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v99 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v88 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v88 - v10;
  v12 = *options.rawValue;
  v103 = *v2;
  v14 = *(v2 + 1);
  v13 = *(v2 + 2);
  if (!kpc_force_all_ctrs_set())
  {
    v93 = v7;
    v94 = v11;
    v95 = v5;
    v91 = v9;
    v92 = v8;
    LODWORD(v9) = v103;
    LODWORD(v104[0]) = v103;
    v104[1] = v14;
    v105 = v13;
    v106 = v12;
    sub_261A64BEC(&v106);
    if (kpc_set_config())
    {
      v18 = MEMORY[0x2667166F0]();
      sub_261A3BDE0();
      v16 = swift_allocError();
      *v19 = v18;
      v20 = 0x666E6F632D746573;
      v21 = 0xEA00000000006769;
LABEL_5:
      *(v19 + 8) = v20;
      *(v19 + 16) = v21;
      swift_willThrow();

      goto LABEL_6;
    }

    if (v13)
    {
      if (kpc_set_period())
      {
        v34 = MEMORY[0x2667166F0]();
        sub_261A3BDE0();
        v16 = swift_allocError();
        *v35 = v34;
        *(v35 + 8) = 0x697265702D746573;
        *(v35 + 16) = 0xEA0000000000646FLL;
        swift_willThrow();
        goto LABEL_6;
      }

      v90 = (v13 + 32);
      if (v101)
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        goto LABEL_54;
      }

      v101 = v13;
      v42 = *(v13 + 16);
      v43 = MEMORY[0x277D84F90];
      if (v42)
      {
        v89 = v14;
        v104[0] = MEMORY[0x277D84F90];
        sub_261A3F330(0, v42, 0);
        v43 = v104[0];
        v39 = v99;
        v44 = value;
        v45 = value >> 31;
        v9 = v90;
        v38 = v95;
        while (1)
        {
          v46 = *v9;
          v9 += 8;
          v47 = v46 == 0;
          v13 = v46 ? v44 : 0;
          if (!v47 && v45 != 0)
          {
            goto LABEL_60;
          }

          v104[0] = v43;
          v14 = *(v43 + 16);
          v49 = *(v43 + 24);
          if (v14 >= v49 >> 1)
          {
            v88 = v45;
            sub_261A3F330((v49 > 1), v14 + 1, 1);
            v45 = v88;
            v44 = value;
            v43 = v104[0];
          }

          *(v43 + 16) = v14 + 1;
          *(v43 + 4 * v14 + 32) = v13;
          if (!--v42)
          {
            v14 = v89;
            LODWORD(v9) = v103;
            goto LABEL_39;
          }
        }
      }

      v38 = v95;
      v39 = v99;
LABEL_39:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A67B5C(v43);
      }

      v13 = v101;
      if (!kpc_set_actionid())
      {

        v51 = 0;
        v52 = *(v13 + 16);
        v53 = MEMORY[0x277D84F90];
        v54 = v93;
        v55 = v90;
LABEL_44:
        v56 = v51;
        v57 = v97;
        while (1)
        {
          if (v52 == v56)
          {
            v106 = v53;
            v67 = *MEMORY[0x277CC8AF0];
            v68 = *(v39 + 104);
            v69 = v54;
            v102 = v53;
            v68(v54, v67, v38);
            v70 = v96;
            (*(v96 + 104))(v57, *MEMORY[0x277CC8B10], v98);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
            v101 = sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83970]);
            sub_261A85154();
            (*(v70 + 8))(v57, v98);
            (*(v39 + 8))(v69, v95);
            sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20, MEMORY[0x277CC8B28]);
            v71 = v94;
            v72 = v92;
            sub_261A85674();
            (*(v91 + 8))(v71, v72);

            v74 = v104[0];
            v73 = v104[1];
            v104[0] = 0;
            v104[1] = 0xE000000000000000;
            sub_261A858C4();

            strcpy(v104, " on action ID ");
            HIBYTE(v104[1]) = -18;
            v106 = value;
            v75 = sub_261A85B94();
            MEMORY[0x2667168A0](v75);

            MEMORY[0x2667168A0](0xD000000000000019, 0x8000000261A8E850);
            MEMORY[0x2667168A0](v74, v73);

            v38 = v104[0];
            v39 = v104[1];
            goto LABEL_54;
          }

          if (v56 >= *(v13 + 16))
          {
            break;
          }

          v51 = v56 + 1;
          if (v55[v56++])
          {
            v59 = v39;
            v104[0] = v51 - 1;
            v60 = v53;
            v61 = sub_261A85B94();
            v101 = v62;
            v102 = v61;
            v63 = v60;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_261A66A68(0, *(v60 + 16) + 1, 1, v60);
            }

            v53 = v63;
            v9 = *(v63 + 2);
            v64 = *(v63 + 3);
            v54 = v93;
            v55 = v90;
            v39 = v59;
            if (v9 >= v64 >> 1)
            {
              v66 = sub_261A66A68((v64 > 1), v9 + 1, 1, v63);
              v55 = v90;
              v53 = v66;
              v54 = v93;
            }

            v38 = v95;
            *(v53 + 16) = v9 + 1;
            v65 = v53 + 16 * v9;
            *(v65 + 32) = v102;
            *(v65 + 40) = v101;
            LODWORD(v9) = v103;
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      v36 = *(v14 + 16);
      if (v36)
      {
        v37 = sub_261A856E4();
        *(v37 + 16) = v36;
        bzero((v37 + 32), 8 * v36);
      }

      if (kpc_set_period())
      {
        v40 = MEMORY[0x2667166F0]();
        sub_261A3BDE0();
        v16 = swift_allocError();
        *v19 = v40;
        v20 = 0x697265702D746573;
        v21 = 0xEA0000000000646FLL;
        goto LABEL_5;
      }

      if (v36)
      {
        v41 = sub_261A856E4();
        *(v41 + 16) = v36;
        bzero((v41 + 32), 4 * v36);
      }

      if (!kpc_set_actionid())
      {

        v38 = 0;
        v39 = 0xE000000000000000;
LABEL_54:
        if (qword_27FECAD68 == -1)
        {
LABEL_55:
          v76 = sub_261A853D4();
          __swift_project_value_buffer(v76, qword_27FED7CA8);

          v77 = sub_261A853B4();
          v78 = sub_261A85754();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = v9;
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v82 = v13;
            v83 = v81;
            v106 = v81;
            *v80 = 136446466;
            LODWORD(v104[0]) = v79;
            v104[1] = v14;
            v105 = v82;
            v84 = sub_261A65928();
            v86 = sub_261A3E9E8(v84, v85, &v106);

            *(v80 + 4) = v86;
            *(v80 + 12) = 2082;
            v87 = sub_261A3E9E8(v38, v39, &v106);

            *(v80 + 14) = v87;
            _os_log_impl(&dword_261A33000, v77, v78, "applied %{public}s%{public}s", v80, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266717700](v83, -1, -1);
            MEMORY[0x266717700](v80, -1, -1);
          }

          else
          {
          }

          return;
        }

LABEL_61:
        swift_once();
        goto LABEL_55;
      }
    }

    v50 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v16 = swift_allocError();
    *v19 = v50;
    v20 = 0x697463612D746573;
    v21 = 0xEC00000064696E6FLL;
    goto LABEL_5;
  }

  v15 = MEMORY[0x2667166F0]();
  sub_261A3BDE0();
  v16 = swift_allocError();
  *v17 = v15;
  strcpy((v17 + 8), "force-counters");
  *(v17 + 23) = -18;
  swift_willThrow();
  LODWORD(v9) = v103;
LABEL_6:
  if (qword_27FECAD68 != -1)
  {
    swift_once();
  }

  v22 = sub_261A853D4();
  __swift_project_value_buffer(v22, qword_27FED7CA8);

  v23 = v16;
  v24 = sub_261A853B4();
  v25 = sub_261A85744();

  MEMORY[0x2667175A0](v16);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v106 = v27;
    *v26 = 136446466;
    LODWORD(v104[0]) = v9;
    v104[1] = v14;
    v105 = v13;
    v28 = sub_261A65928();
    v30 = sub_261A3E9E8(v28, v29, &v106);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    swift_getErrorValue();
    v31 = sub_261A85BF4();
    v33 = sub_261A3E9E8(v31, v32, &v106);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_261A33000, v24, v25, "applying %{public}s failed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266717700](v27, -1, -1);
    MEMORY[0x266717700](v26, -1, -1);
  }

  swift_willThrow();
}

unint64_t sub_261A65928()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  sub_261A858C4();

  v3 = MEMORY[0x277D84D38];
  v4 = MEMORY[0x2667169D0](v2, MEMORY[0x277D84D38]);
  MEMORY[0x2667168A0](v4);

  MEMORY[0x2667168A0](0x646F69726570202CLL, 0xEB00000000203A73);
  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x2667169D0](v1, v3);
  v7 = v6;

  MEMORY[0x2667168A0](v5, v7);

  return 0xD00000000000001ALL;
}

void sub_261A65A2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_261A65AFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC88, &qword_261A8BF98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A65C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_261A65D30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC58, &qword_261A8BF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC60, &qword_261A8BF70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A65E78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A65FE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC38, &qword_261A8BF48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_261A660EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB080, &qword_261A87908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB088, &unk_261A87D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A66234(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC68, &qword_261A8BF78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB978, &qword_261A8AC28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A663B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_261A664AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB110, &qword_261A87988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A665CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC70, &qword_261A8BF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A666EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC78, &qword_261A8BF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC80, &qword_261A8BF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A66820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB060, &unk_261A8D2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_261A6695C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_261A66A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB118, &qword_261A8D2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A66B74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC48, &qword_261A8BF58);
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

char *sub_261A66C68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC30, &qword_261A8BF40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A66D98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A66ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB078, &qword_261A87900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A66FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC18, &qword_261A8BF28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A670F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC20, &qword_261A8BF30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC28, &qword_261A8BF38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A67244(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B0, &qword_261A87930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A67388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB108, &qword_261A87980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A674A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC10, &qword_261A8BF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A675C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB068, &qword_261A878F0);
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

void *sub_261A676B8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB120, &qword_261A8D2E0);
  v10 = *(sub_261A85394() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_261A85394() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_261A67890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB048, "@|");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A6799C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBC08, "xC");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_261A67C34()
{
  config_count = kpc_get_config_count();
  if (!config_count)
  {
    return;
  }

  v1 = config_count;
  if (kpc_set_counting())
  {
    v2 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v4 = v2;
    strcpy((v4 + 8), "set-counting");
    *(v4 + 21) = 0;
    *(v4 + 22) = -5120;
    swift_willThrow();
LABEL_10:
    if (qword_27FECAD68 != -1)
    {
      swift_once();
    }

    v10 = sub_261A853D4();
    __swift_project_value_buffer(v10, qword_27FED7CA8);
    v11 = v3;
    v12 = sub_261A853B4();
    v13 = sub_261A85744();
    MEMORY[0x2667175A0](v3);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_261A85BF4();
      v18 = sub_261A3E9E8(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_261A33000, v12, v13, "resetting KPC failed: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x266717700](v15, -1, -1);
      MEMORY[0x266717700](v14, -1, -1);
    }

    swift_willThrow();
    return;
  }

  v5 = 0xEA0000000000646FLL;
  v6 = sub_261A856E4();
  *(v6 + 16) = v1;
  bzero((v6 + 32), 8 * v1);
  if (kpc_set_config())
  {
    v5 = 0xEA00000000006769;
    v7 = 0x666E6F632D746573;
LABEL_8:
    v8 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v9 = v8;
    *(v9 + 8) = v7;
    *(v9 + 16) = v5;
LABEL_9:
    swift_willThrow();

    goto LABEL_10;
  }

  if (kpc_set_period())
  {
    v7 = 0x697265702D746573;
    goto LABEL_8;
  }

  v19 = sub_261A856E4();
  *(v19 + 16) = v1;
  bzero((v19 + 32), 4 * v1);
  if (kpc_set_actionid())
  {
    v20 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v21 = v20;
    strcpy((v21 + 8), "set-actionid");
    *(v21 + 21) = 0;
    *(v21 + 22) = -5120;
    goto LABEL_9;
  }

  if (qword_27FECAD68 != -1)
  {
    swift_once();
  }

  v22 = sub_261A853D4();
  __swift_project_value_buffer(v22, qword_27FED7CA8);
  v23 = sub_261A853B4();
  v24 = sub_261A85754();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_261A33000, v23, v24, "reset KPC", v25, 2u);
    MEMORY[0x266717700](v25, -1, -1);
  }
}

unint64_t sub_261A6802C()
{
  result = qword_27FECBBE8;
  if (!qword_27FECBBE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KPCSettings.ApplyOptions, &type metadata for KPCSettings.ApplyOptions, v0, v1);
    atomic_store(result, &qword_27FECBBE8);
  }

  return result;
}

unint64_t sub_261A68084()
{
  result = qword_27FECBBF0;
  if (!qword_27FECBBF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KPCSettings.ApplyOptions, &type metadata for KPCSettings.ApplyOptions, v0, v1);
    atomic_store(result, &qword_27FECBBF0);
  }

  return result;
}

unint64_t sub_261A680DC()
{
  result = qword_27FECBBF8;
  if (!qword_27FECBBF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KPCSettings.ApplyOptions, &type metadata for KPCSettings.ApplyOptions, v0, v1);
    atomic_store(result, &qword_27FECBBF8);
  }

  return result;
}

unint64_t sub_261A68134()
{
  result = qword_27FECBC00;
  if (!qword_27FECBC00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KPCSettings.ApplyOptions, &type metadata for KPCSettings.ApplyOptions, v0, v1);
    atomic_store(result, &qword_27FECBC00);
  }

  return result;
}

void Silicon.init()(uint64_t a1@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (!v3 || (v4 = MobileGestalt_copy_hardwarePlatform_obj()) == 0)
  {
    sub_261A6842C();
    swift_allocError();
    *v16 = 0xD000000000000010;
    *(v16 + 8) = 0x8000000261A8E890;
    *(v16 + 16) = 0;
    *(v16 + 20) = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_261A854C4();
  v8 = v7;

  v9 = MobileGestalt_copy_marketingSOCNameString_obj();
  if (!v9)
  {
    v9 = MobileGestalt_copy_physicalHardwareNameString_obj();
    if (!v9)
    {
      sub_261A6842C();
      swift_allocError();
      *v17 = 0xD000000000000030;
      *(v17 + 8) = 0x8000000261A8E8B0;
      *(v17 + 16) = 0;
      *(v17 + 20) = 0;
      swift_willThrow();
      goto LABEL_8;
    }
  }

  v10 = v9;
  v11 = sub_261A854C4();
  v13 = v12;

  v14 = sub_261A68BE4(0x79747570632E7768, 0xEA00000000006570);
  if (v1)
  {

LABEL_8:

LABEL_10:

    return;
  }

  v15 = v14;
  v25 = sub_261A68BE4(0x75737570632E7768, 0xED00006570797462);
  v24 = sub_261A68BE4(0x61667570632E7768, 0xEC000000796C696DLL);
  counter_count = kpc_get_counter_count();
  v19 = kpc_get_counter_count();
  v23 = counter_count + v19;
  if (__CFADD__(counter_count, v19))
  {
    __break(1u);
  }

  else
  {
    v21 = counter_count;
    v22 = v19;
    v20 = sub_261A699DC(MEMORY[0x277D84F90]);

    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 16) = v6;
    *(a1 + 24) = v8;
    *(a1 + 32) = v15;
    *(a1 + 36) = v25;
    *(a1 + 40) = v24;
    *(a1 + 48) = v23;
    *(a1 + 56) = v21;
    *(a1 + 64) = v22;
    *(a1 + 72) = v20;
  }
}

unint64_t sub_261A6842C()
{
  result = qword_27FECBCC0;
  if (!qword_27FECBCC0)
  {
    result = swift_getWitnessTable(byte_261A8C3FC, &type metadata for Silicon.CurrentSiliconError, v0, v1);
    atomic_store(result, &qword_27FECBCC0);
  }

  return result;
}

uint64_t sub_261A68480()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = *(v0 + 10);
  v11 = *v0;

  MEMORY[0x2667168A0](10272, 0xE200000000000000);
  MEMORY[0x2667168A0](v1, v2);
  MEMORY[0x2667168A0](0x20555043202CLL, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB030, &qword_261A88860);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84CC0];
  *(v6 + 16) = xmmword_261A886D0;
  v8 = MEMORY[0x277D84D30];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v3;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = v5;
  v9 = sub_261A854D4();
  MEMORY[0x2667168A0](v9);

  MEMORY[0x2667168A0](41, 0xE100000000000000);
  return v11;
}

uint64_t Silicon.marketingName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Silicon.platform.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_261A68600()
{
  v1 = 0x65707974627573;
  if (*v0 != 1)
  {
    v1 = 0x796C696D6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_261A68650@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A6A0AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A68678(uint64_t a1)
{
  v2 = sub_261A69AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A686B4(uint64_t a1)
{
  v2 = sub_261A69AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Silicon.CPUTriplet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCC8, &qword_261A8BFD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 4);
  v9[3] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69AE0();
  sub_261A85CD4();
  v12 = 0;
  sub_261A85B64();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_261A85B64();
  v10 = 2;
  sub_261A85B64();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Silicon.CPUTriplet.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCD8, &qword_261A8BFD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69AE0();
  sub_261A85CB4();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_261A85AA4();
    v16 = 1;
    v14 = sub_261A85AA4();
    v15 = 2;
    v11 = sub_261A85AA4();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

char *sub_261A68AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) == 0)
  {
    sub_261A858C4();

    v8 = 0xD00000000000001DLL;
    MEMORY[0x2667168A0](a1, a2);
    return v8;
  }

  v5 = a3;
  sub_261A858C4();

  v8 = 0xD000000000000010;
  MEMORY[0x2667168A0](a1, a2);
  MEMORY[0x2667168A0](0x3A64656C69616620, 0xE900000000000020);
  result = strerror(v5);
  if (result)
  {
    v7 = sub_261A855A4();
    MEMORY[0x2667168A0](v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_261A68BE4(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 4;
  v8 = 0;
  MEMORY[0x2667168A0]();
  v2 = sub_261A85524();
  v3 = sysctlbyname((v2 + 32), &v8, v9, 0, 0);

  if (v3 < 0)
  {
    v6 = MEMORY[0x2667166F0](v4);
    sub_261A6842C();
    swift_allocError();
    *v7 = 0x206C7463737973;
    *(v7 + 8) = 0xE700000000000000;
    *(v7 + 16) = v6;
    *(v7 + 20) = 1;
    return swift_willThrow();
  }

  else
  {

    return v8;
  }
}

uint64_t Silicon.init(platform:marketingName:cpuType:cpuSubtype:cpuFamily:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, _OWORD *a8@<X8>)
{
  v69 = a4;
  v47 = a3;
  v48 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = sub_261A85394();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __PAIR64__(a6, a5);
  v58 = __PAIR64__(a6, a5);
  v50 = a7;
  LODWORD(v59) = a7;
  sub_261A4AF88(&v58, 0, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_261A4E124(v15);

    a8[3] = 0u;
    a8[4] = 0u;
    a8[1] = 0u;
    a8[2] = 0u;
    *a8 = 0u;
  }

  else
  {
    v45 = a8;
    v46 = a2;
    (*(v17 + 32))(v19, v15, v16);
    v21 = v51;
    v22 = sub_261A853A4();
    if (v21)
    {
      (*(v17 + 8))(v19, v16);
    }

    else
    {
      v24 = v22;
      v25 = v23;
      sub_261A4777C(v22, v23);
      v26 = sub_261A4CBB8(v24, v25);
      v28 = v27;

      v29 = vcnt_s8(v26);
      v29.i16[0] = vaddlv_u8(v29);
      v30 = v29.u32[0];
      v31 = vcnt_s8(v28);
      v31.i16[0] = vaddlv_u8(v31);
      v32 = v31.u32[0];
      v51 = v30 + v31.u32[0];
      sub_261A47728(v24, v25);
      (*(v17 + 8))(v19, v16);
      v33 = sub_261A699DC(MEMORY[0x277D84F90]);
      v34 = v47;
      v35 = v69;
      *&v53 = v47;
      *(&v53 + 1) = v69;
      v36 = v48;
      v37 = v46;
      *&v54 = v48;
      *(&v54 + 1) = v46;
      v38 = v49;
      v39 = HIDWORD(v49);
      *&v55 = v49;
      v40 = v50;
      DWORD2(v55) = v50;
      v41 = v51;
      *&v56 = v51;
      *(&v56 + 1) = v32;
      *&v57 = v30;
      *(&v57 + 1) = v33;
      v42 = v56;
      v43 = v45;
      v45[2] = v55;
      v43[3] = v42;
      v43[4] = v57;
      v44 = v54;
      *v43 = v53;
      v43[1] = v44;
      v58 = v34;
      v59 = v35;
      v60 = v36;
      v61 = v37;
      v62 = v38;
      v63 = v39;
      v64 = v40;
      v65 = v41;
      v66 = v32;
      v67 = v30;
      v68 = v33;
      sub_261A39B98(&v53, v52);
      return sub_261A39BF4(&v58);
    }
  }

  return result;
}

uint64_t sub_261A690BC()
{
  v1 = *v0;
  v2 = 0x6E6974656B72616DLL;
  v3 = 0x6C70697254757063;
  v4 = 1970106467;
  if (v1 != 3)
  {
    v4 = 0x746E6174736E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D726F6674616C70;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261A69164@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261A6A1C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261A6918C(uint64_t a1)
{
  v2 = sub_261A69B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A691C8(uint64_t a1)
{
  v2 = sub_261A69B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Silicon.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCE0, &qword_261A8BFE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v7;
  v8 = *(v1 + 32);
  v21 = *(v1 + 40);
  v9 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = v9;
  v10 = *(v1 + 64);
  v17 = *(v1 + 72);
  v18 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69B34();
  sub_261A85CD4();
  LOBYTE(v25) = 0;
  v11 = v24;
  sub_261A85B14();
  if (!v11)
  {
    v12 = v21;
    v13 = v18;
    v14 = v19;
    v15 = v20;
    LOBYTE(v25) = 1;
    sub_261A85B14();
    v25 = v8;
    LODWORD(v26) = v12;
    v28 = 2;
    sub_261A69B88();
    sub_261A85B54();
    v25 = v15;
    v26 = v14;
    v27 = v13;
    v28 = 3;
    sub_261A5BE50();
    sub_261A85B54();
    v25 = v17;
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9E0, &unk_261A8BFF0);
    sub_261A5FF00();
    sub_261A85B54();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Silicon.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCF8, &qword_261A8C000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A69B34();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  v9 = sub_261A85A54();
  v11 = v10;
  v29 = v9;
  LOBYTE(v35) = 1;
  *&v28 = sub_261A85A54();
  *(&v28 + 1) = v12;
  LOBYTE(v30) = 2;
  sub_261A69BDC();
  sub_261A85A94();
  v25 = HIDWORD(v35);
  v26 = v35;
  v27 = v36;
  LOBYTE(v30) = 3;
  sub_261A5C014();
  sub_261A85A94();
  v24 = v35;
  v23 = v36;
  v22 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9E0, &unk_261A8BFF0);
  v45[0] = 4;
  sub_261A60114();
  sub_261A85A94();
  (*(v6 + 8))(v8, v5);
  v21 = v46;
  v13 = v29;
  *&v30 = v29;
  *(&v30 + 1) = v11;
  v14 = v28;
  v31 = v28;
  v15 = v26;
  v16 = v25;
  *&v32 = __PAIR64__(v25, v26);
  DWORD2(v32) = v27;
  *&v33 = v24;
  *(&v33 + 1) = v23;
  *&v34 = v22;
  *(&v34 + 1) = v46;
  v17 = v33;
  a2[2] = v32;
  a2[3] = v17;
  v18 = v31;
  *a2 = v30;
  a2[1] = v18;
  a2[4] = v34;
  sub_261A39B98(&v30, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = v13;
  v36 = v11;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v27;
  v41 = v24;
  v42 = v23;
  v43 = v22;
  v44 = v21;
  return sub_261A39BF4(&v35);
}

unint64_t sub_261A698B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD38, &unk_261A8C440);
    v3 = sub_261A859C4();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_261A5BD84(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261A699DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
    v3 = sub_261A859C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_261A5BD84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261A69AE0()
{
  result = qword_27FECBCD0;
  if (!qword_27FECBCD0)
  {
    result = swift_getWitnessTable(asc_261A8C3AC, &type metadata for Silicon.CPUTriplet.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBCD0);
  }

  return result;
}

unint64_t sub_261A69B34()
{
  result = qword_27FECBCE8;
  if (!qword_27FECBCE8)
  {
    result = swift_getWitnessTable(byte_261A8C35C, &type metadata for Silicon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBCE8);
  }

  return result;
}

unint64_t sub_261A69B88()
{
  result = qword_27FECBCF0;
  if (!qword_27FECBCF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Silicon.CPUTriplet, &type metadata for Silicon.CPUTriplet, v0, v1);
    atomic_store(result, &qword_27FECBCF0);
  }

  return result;
}

unint64_t sub_261A69BDC()
{
  result = qword_27FECBD00;
  if (!qword_27FECBD00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Silicon.CPUTriplet, &type metadata for Silicon.CPUTriplet, v0, v1);
    atomic_store(result, &qword_27FECBD00);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Silicon.CPUTriplet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Silicon.CPUTriplet(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_261A69CF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A69D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

unint64_t sub_261A69DA4()
{
  result = qword_27FECBD08;
  if (!qword_27FECBD08)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for Silicon.CPUTriplet.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD08);
  }

  return result;
}

unint64_t sub_261A69DFC()
{
  result = qword_27FECBD10;
  if (!qword_27FECBD10)
  {
    result = swift_getWitnessTable(byte_261A8C334, &type metadata for Silicon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD10);
  }

  return result;
}

unint64_t sub_261A69E54()
{
  result = qword_27FECBD18;
  if (!qword_27FECBD18)
  {
    result = swift_getWitnessTable(byte_261A8C2A4, &type metadata for Silicon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD18);
  }

  return result;
}

unint64_t sub_261A69EAC()
{
  result = qword_27FECBD20;
  if (!qword_27FECBD20)
  {
    result = swift_getWitnessTable(asc_261A8C2CC, &type metadata for Silicon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD20);
  }

  return result;
}

unint64_t sub_261A69F04()
{
  result = qword_27FECBD28;
  if (!qword_27FECBD28)
  {
    result = swift_getWitnessTable(byte_261A8C1EC, &type metadata for Silicon.CPUTriplet.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD28);
  }

  return result;
}

unint64_t sub_261A69F5C()
{
  result = qword_27FECBD30;
  if (!qword_27FECBD30)
  {
    result = swift_getWitnessTable(byte_261A8C214, &type metadata for Silicon.CPUTriplet.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD30);
  }

  return result;
}

unint64_t sub_261A69FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD48, &qword_261A8C890);
    v3 = sub_261A859C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_261A5BD84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_261A6A0AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A6A1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6974656B72616DLL && a2 == 0xED0000656D614E67;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C70697254757063 && a2 == 0xEA00000000007465 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1970106467 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_261A6A388(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 2);
  if (!v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v8 = 0uLL;
    goto LABEL_6;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v5 = *(v3 + 2);
    if (v5)
    {
LABEL_4:
      v6 = v5 - 1;
      v7 = &v3[48 * v5];
      v4 = *(v7 - 2);
      v8 = *(v7 - 8);
      v9 = *(v7 + 1);
      v10 = *(v7 + 2);
      v11 = *(v7 + 3);
      *(v3 + 2) = v6;
      *v1 = v3;
LABEL_6:
      *a1 = v4;
      *(a1 + 8) = v8;
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;
      *(a1 + 40) = v11;
      return;
    }
  }

  else
  {
    v3 = sub_261A67BF8(v3);
    v5 = *(v3 + 2);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_261A6A430(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_261A856E4();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2 & 1, a2);
    return v4;
  }

  return result;
}

uint64_t CountingModeError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  if (!*(v0 + 32))
  {
    sub_261A858C4();

    v8 = v1;
    v5 = 0xD000000000000020;
    v6 = 0x8000000261A8E990;
LABEL_6:
    MEMORY[0x2667168A0](v5, v6);
    MEMORY[0x2667168A0](v2, v3);
    return v8;
  }

  if (*(v0 + 32) != 1)
  {
    sub_261A858C4();

    v8 = v1;
    v6 = 0x8000000261A8E950;
    v5 = 0xD000000000000019;
    goto LABEL_6;
  }

  sub_261A858C4();

  v8 = v1;
  MEMORY[0x2667168A0](0xD000000000000019, 0x8000000261A8E970);
  swift_getErrorValue();
  v4 = sub_261A85BF4();
  MEMORY[0x2667168A0](v4);

  return v8;
}

uint64_t CountingMode.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CountingMode.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CountingMode.displayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CountingMode.synopsis.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t CountingMode.documentation.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CountingMode.settings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  *a1 = *(v1 + 112);
  *(a1 + 8) = *(v1 + 120);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
}

void *sub_261A6A790(uint64_t *a1, uint64_t a2)
{
  v436 = a2;
  v419 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD90, &unk_261A8C880);
  v413 = *(v4 - 8);
  v414 = v4;
  MEMORY[0x28223BE20](v4);
  v412 = &v409 - v5;
  v7 = *a1;
  v6 = a1[1];
  v2[2] = *a1;
  v2[3] = v6;
  v415 = v7;
  v416 = v6;
  v2[4] = v7;
  v2[5] = v6;
  v8 = *(a1 + 1);
  v478 = *(a1 + 2);
  v9 = v478;
  v479[0] = v8;
  *(v2 + 3) = v8;
  *(v2 + 4) = v9;
  v477 = *(a1 + 3);
  *(v2 + 5) = v477;
  v426 = a1;
  v10 = a1[8];
  v11 = *(v10 + 16);
  v432 = v2;
  v433 = v10;
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_261A3DF5C(v479, v460);
    sub_261A3DF5C(&v478, v460);
    sub_261A702E0(&v477, v460, &qword_27FECB010, &unk_261A8D2B0);
    *v460 = v12;
    sub_261A3EFB0(0, v11, 0);
    v13 = *v460;
    v14 = (v10 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      *v460 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_261A3EFB0((v17 > 1), v18 + 1, 1);
        v13 = *v460;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v14 += 11;
      --v11;
    }

    while (v11);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_261A3DF5C(v479, v460);
    sub_261A3DF5C(&v478, v460);
    sub_261A702E0(&v477, v460, &qword_27FECB010, &unk_261A8D2B0);
    v13 = MEMORY[0x277D84F90];
  }

  v434 = v13;
  v466 = MEMORY[0x277D84FA0];
  v20 = *(*(v436 + 104) + 16);

  if (!v20)
  {
    v440 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v22 = 0;
  v23 = v21 + 40;
  v441 = v20;
  v438 = (v20 - 1);
  v439 = v21 + 40;
  v440 = MEMORY[0x277D84F90];
  v443 = v21;
  do
  {
    v24 = (v23 + 48 * v22);
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

      v444 = &v409;
      v25 = *(v24 - 1);
      v26 = *v24;
      v27 = v24[1];
      v28 = v24[2];
      v29 = v24[4];
      v442 = v24[3];
      v30 = v22 + 1;
      *v460 = v25;
      *&v460[8] = v26;
      MEMORY[0x28223BE20](v21);
      *(&v409 - 2) = v460;

      v31 = v435;
      v32 = sub_261A779E4(sub_261A38AEC, (&v409 - 4), v434);
      v435 = v31;
      if (v32)
      {
        break;
      }

      v24 += 6;
      ++v22;
      v21 = v443;
      if (v441 == v30)
      {
        goto LABEL_22;
      }
    }

    v444 = v22;
    v33 = v442;
    v34 = v440;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v445 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_261A3F4A0(0, v34[2].isa + 1, 1);
      v34 = v445;
    }

    v36 = v33;
    v37 = v25;
    isa = v34[2].isa;
    v38 = v34[3].isa;
    v40 = (isa + 1);
    if (isa >= v38 >> 1)
    {
      v440 = (isa + 1);
      v437 = isa;
      sub_261A3F4A0((v38 > 1), isa + 1, 1);
      v40 = v440;
      isa = v437;
      v37 = v25;
      v36 = v33;
      v34 = v445;
    }

    v34[2].isa = v40;
    v440 = v34;
    v41 = &v34[6 * isa];
    v41[4].isa = v37;
    v41[5].isa = v26;
    v41[6].isa = v27;
    v41[7].isa = v28;
    v41[8].isa = v36;
    v41[9].isa = v29;
    v21 = v443;
    v23 = v439;
    v22 = v30;
  }

  while (v438 != v444);
LABEL_22:

  v42 = v440;
  v465 = v440;
  v464 = v440;

  sub_261A6A388(&v467);
  v43 = v467;
  v44 = v468;
  v45 = v469;
  v46 = v470;
  v472 = v471;
  if (v468)
  {
LABEL_26:
    v473 = v472;
    v480 = v46;

    v50 = sub_261A6E998(v434, v46);
    v476[0] = v43;
    v476[1] = v44;
    sub_261A7023C(v476);
    v474 = v45;
    sub_261A5E854(&v474, &qword_27FECBDB8, &qword_261A8C8E0);
    sub_261A5E854(&v480, &qword_27FECBDC0, &qword_261A8C8E8);
    v475 = v473;
    sub_261A7023C(&v475);
    if (*(v466 + 16) <= v50[2] >> 3)
    {
      *v460 = v50;
      sub_261A6EE44(v466);
      v51 = *v460;
    }

    else
    {
      v51 = sub_261A6E428(v466, v50);
    }

    v52 = *(*(v436 + 104) + 16);

    v441 = v52;
    if (!v52)
    {
      v56 = MEMORY[0x277D84F90];
      goto LABEL_52;
    }

    v54 = 0;
    v438 = (v53 + 32);
    v55 = v51 + 56;
    v56 = MEMORY[0x277D84F90];
    v437 = v53;
    while (1)
    {
      v57 = v54;
      v440 = v56;
      while (1)
      {
        if (v57 >= *(v53 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v54 = v57 + 1;
        if (*(v51 + 16))
        {
          break;
        }

LABEL_33:
        v57 = v54;
        if (v54 == v441)
        {
          goto LABEL_52;
        }
      }

      v58 = &v438[48 * v57];
      v60 = *v58;
      v59 = *(v58 + 1);
      v61 = *(v58 + 2);
      v62 = *(v58 + 3);
      v42 = *(v58 + 5);
      v439 = *(v58 + 4);
      sub_261A85C44();

      v444 = v61;

      v443 = v62;

      v442 = v42;

      sub_261A85554();
      v63 = sub_261A85C84();
      v64 = -1 << *(v51 + 32);
      v65 = v63 & ~v64;
      if (((*(v55 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
      {
        break;
      }

      v66 = ~v64;
      while (1)
      {
        v67 = (*(v51 + 48) + 16 * v65);
        v68 = *v67 == v60 && v67[1] == v59;
        if (v68 || (sub_261A85BA4() & 1) != 0)
        {
          break;
        }

        v65 = (v65 + 1) & v66;
        if (((*(v55 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v56 = v440;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v445 = v56;
      if ((v69 & 1) == 0)
      {
        sub_261A3F4A0(0, v56[2].isa + 1, 1);
        v56 = v445;
      }

      v42 = v56[2].isa;
      v70 = v56[3].isa;
      if (v42 >= v70 >> 1)
      {
        sub_261A3F4A0((v70 > 1), v42 + 1, 1);
        v56 = v445;
      }

      v56[2].isa = (v42 + 1);
      v71 = &v56[6 * v42];
      v71[4].isa = v60;
      v71[5].isa = v59;
      v72 = v443;
      v71[6].isa = v444;
      v71[7].isa = v72;
      v73 = v442;
      v71[8].isa = v439;
      v71[9].isa = v73;
      v53 = v437;
      if (v54 == v441)
      {
LABEL_52:
        v440 = v56;

        v74 = v56[2].isa;
        if (v74)
        {
          *v460 = MEMORY[0x277D84F90];
          sub_261A3EFB0(0, v74, 0);
          v47 = *v460;
          v75 = v440 + 5;
          do
          {
            v42 = v75[-1].isa;
            v76 = v75->isa;
            *v460 = v47;
            v78 = *(v47 + 16);
            v77 = *(v47 + 24);

            if (v78 >= v77 >> 1)
            {
              sub_261A3EFB0((v77 > 1), v78 + 1, 1);
              v47 = *v460;
            }

            *(v47 + 16) = v78 + 1;
            v79 = v47 + 16 * v78;
            *(v79 + 32) = v42;
            *(v79 + 40) = v76;
            v75 += 6;
            --v74;
          }

          while (v74);
        }

        else
        {
          v47 = MEMORY[0x277D84F90];
        }

        sub_261A84448(v47);

        v48 = v440;

        sub_261A7F648(v49);
        sub_261A7F648(v48);
        sub_261A6A388(&v467);
        v43 = v467;
        v44 = v468;
        v45 = v469;
        v46 = v470;
        v472 = v471;
        if (!v468)
        {
          v42 = v465;
          goto LABEL_59;
        }

        goto LABEL_26;
      }
    }

LABEL_32:

    v56 = v440;
    v53 = v437;
    goto LABEL_33;
  }

LABEL_59:

  v81 = sub_261A77B20(v80);

  v83 = sub_261A6D428(v82, v81);
  v84 = MEMORY[0x277D84F90];
  *v460 = MEMORY[0x277D84F90];
  v85 = *(v42 + 16);
  v421 = v83;
  if (v85)
  {
    v86 = 0;
    v87 = (v42 + 56);
    do
    {
      if (v86 >= *(v42 + 16))
      {
        goto LABEL_287;
      }

      v86 = (v86 + 1);
      v87 += 6;

      sub_261A7F848(v88);
    }

    while (v85 != v86);
    v84 = *v460;
    v89 = v421;
  }

  else
  {
    v89 = v83;
  }

  v90 = sub_261A7BF08(v84);

  v91 = *(v89 + 16);
  v92 = *(v90 + 16);
  v417 = v90;
  if (v91 <= v92 >> 3)
  {
    *v460 = v90;

    sub_261A6EE44(v89);
    v93 = *v460;
  }

  else
  {

    v93 = sub_261A6E428(v89, v90);
  }

  v94 = v426[11];
  v95 = *(v94 + 16);
  v440 = v42;
  v428 = v94;
  v418 = v93;
  if (v95)
  {
    *&v445 = MEMORY[0x277D84F90];
    sub_261A3F460(0, v95, 0);
    v96 = 0;
    v97 = v445;
    v98 = (v94 + 40);
    v443 = v95;
    while (1)
    {
      if (v96 >= *(v94 + 16))
      {
        goto LABEL_331;
      }

      v444 = v97;
      v99 = *(v98 - 1);
      v100 = *v98;
      v101 = *(v436 + 112);
      if (!*(v101 + 16))
      {
        break;
      }

      v102 = sub_261A5BD84(v99, v100);
      if ((v103 & 1) == 0)
      {
        goto LABEL_84;
      }

      v104 = *(v436 + 120);
      if (!*(v104 + 16))
      {
        goto LABEL_87;
      }

      v105 = (*(v101 + 56) + 16 * v102);
      v106 = *v105;
      v107 = v105[1];

      v108 = sub_261A5BD84(v99, v100);
      if ((v109 & 1) == 0)
      {

LABEL_87:

        *v460 = 0;
        *&v460[8] = 0xE000000000000000;
        v116 = v416;

        sub_261A858C4();

        *v460 = 0xD000000000000015;
        *&v460[8] = 0x8000000261A8EA90;
        MEMORY[0x2667168A0](v99, v100);
        MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EA70);
        v117 = *v460;
        v118 = *&v460[8];
LABEL_88:
        sub_261A6FF78();
        v119 = swift_allocError();
        *v120 = v415;
        *(v120 + 8) = v116;
        *(v120 + 16) = v117;
        *(v120 + 24) = v118;
        *(v120 + 32) = 0;
        v443 = v119;
        swift_willThrow();

        sub_261A3DF08(v426);

        v128 = 0;
        v129 = 0;
        v130 = 0;
        goto LABEL_92;
      }

      v110 = *(*(v104 + 56) + 8 * v108);

      v97 = v444;
      *&v445 = v444;
      v112 = *(v444 + 16);
      v111 = *(v444 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_261A3F460((v111 > 1), v112 + 1, 1);
        v97 = v445;
      }

      ++v96;
      *(v97 + 16) = v112 + 1;
      v113 = (v97 + 24 * v112);
      v113[4] = v106;
      v113[5] = v107;
      v113[6] = v110;
      v98 += 2;
      v42 = v440;
      v94 = v428;
      if (v443 == v96)
      {
        goto LABEL_89;
      }
    }

LABEL_84:

    *v460 = 0;
    *&v460[8] = 0xE000000000000000;
    v116 = v416;

    sub_261A858C4();

    *v460 = 0xD000000000000019;
    *&v460[8] = 0x8000000261A8EA50;
    MEMORY[0x2667168A0](v99, v100);
    MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EA70);
    v117 = *v460;
    v118 = *&v460[8];
    goto LABEL_88;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_89:
    v115 = v435;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD48, &qword_261A8C890);
    v114 = sub_261A859C4();
  }

  else
  {
LABEL_82:
    v114 = MEMORY[0x277D84F98];
    v115 = v435;
  }

  *v460 = v114;

  sub_261A6E0AC(v121, 1, v460);
  if (v115)
  {
    goto LABEL_359;
  }

  v122 = *v460;
  v123 = v436;
  v124 = *(v436 + 80);
  v445 = *(v436 + 64);
  *&v446 = v124;

  v126 = sub_261A77A90(v125);
  v127 = *(v123 + 96);

  sub_261A59268(&v445, v126, v122, v127, v460);
  v443 = 0;
  v411 = v122;
  v134 = *&v460[24];
  v135 = v432;
  v432[14] = *v460;
  *(v135 + 15) = *&v460[8];
  v135[17] = v134;
  *(v135 + 9) = *&v460[32];
  v136 = *(v433 + 16);
  if (v136)
  {
    v137 = 0;
    v138 = (v433 + 40);
    v139 = MEMORY[0x277D84F90];
    while (v137 < *(v433 + 16))
    {
      v141 = *(v138 - 1);
      v140 = *v138;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_261A66A68(0, *(v139 + 2) + 1, 1, v139);
      }

      v143 = *(v139 + 2);
      v142 = *(v139 + 3);
      v144 = v143 + 1;
      if (v143 >= v142 >> 1)
      {
        v139 = sub_261A66A68((v142 > 1), v143 + 1, 1, v139);
      }

      ++v137;
      *(v139 + 2) = v144;
      v145 = &v139[16 * v143];
      *(v145 + 4) = v141;
      *(v145 + 5) = v140;
      v138 += 11;
      if (v136 == v137)
      {
        goto LABEL_111;
      }
    }

    goto LABEL_332;
  }

  v146 = MEMORY[0x277D84F90];
  v144 = *(MEMORY[0x277D84F90] + 16);
  v139 = MEMORY[0x277D84F90];
  if (!v144)
  {
    goto LABEL_124;
  }

LABEL_111:
  v147 = 0;
  v148 = v139 + 40;
  v442 = v144 - 1;
  v146 = MEMORY[0x277D84F90];
  v444 = (v139 + 40);
  while (2)
  {
    v149 = &v148[16 * v147];
    v150 = v147;
    while (2)
    {
      if (v150 >= *(v139 + 2))
      {
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        v285 = v445;
LABEL_216:
        v286 = v432;
        v432[13] = v285;
        v287 = sub_261A6FC44(0, v286[15]);
        v288 = v286[13];
        if (v288 >> 62)
        {
          v289 = sub_261A85994();
        }

        else
        {
          v289 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v289)
        {
          v290 = 0;
          v219 = v288 & 0xC000000000000001;
          v441 = v288 & 0xFFFFFFFFFFFFFF8;
          v442 = v288 & 0xC000000000000001;
          v438 = v288;
          v439 = v289;
          do
          {
            if (v442)
            {
              v291 = MEMORY[0x266716BE0](v290, v288);
            }

            else
            {
              if (v290 >= *(v441 + 16))
              {
                goto LABEL_340;
              }
            }

            v292 = v290 + 1;
            if (__OFADD__(v290, 1))
            {
              goto LABEL_339;
            }

            v293 = *(v436 + 112);
            if (!*(v293 + 16))
            {
              goto LABEL_341;
            }

            v294 = v287;
            v295 = v291;
            v296 = *(v291 + 16);
            v297 = *(v296 + 32);
            v298 = *(v296 + 40);

            v299 = sub_261A5BD84(v297, v298);
            v301 = v300;

            if ((v301 & 1) == 0)
            {
              goto LABEL_342;
            }

            v302 = (*(v293 + 56) + 16 * v299);
            v303 = v302[1];
            v304 = v432[14];
            if (!*(v304 + 16))
            {
              goto LABEL_357;
            }

            v305 = *v302;

            v306 = sub_261A5BD84(v305, v303);
            if ((v307 & 1) == 0)
            {
              goto LABEL_358;
            }

            v308 = v306;

            v309 = *(*(v304 + 56) + 8 * v308);

            v287 = v294;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if ((v309 & 0x8000000000000000) != 0)
              {
                goto LABEL_235;
              }
            }

            else
            {
              v287 = sub_261A67BE4(v294);
              if ((v309 & 0x8000000000000000) != 0)
              {
LABEL_235:
                __break(1u);
                break;
              }
            }

            if (v309 >= *(v287 + 16))
            {
              goto LABEL_344;
            }

            *(v287 + 8 * v309 + 32) = v295;

            ++v290;
            v288 = v438;
          }

          while (v292 != v439);
        }

        v432[25] = v287;
        v310 = v426[9];
        v311 = *(v310 + 16);

        v434 = v311;
        if (v311)
        {
          v312 = 0;
          v433 = v310 + 32;
          v219 = v444 & 0xC000000000000001;
          v428 = v444 & 0xFFFFFFFFFFFFFF8;
          v430 = v444 & 0xC000000000000001;
          v431 = (v427 + 40);
          v438 = MEMORY[0x277D84F90];
          v421 = v310;
          v422 = v287;
          while (1)
          {
            while (1)
            {
              if (v312 >= *(v310 + 16))
              {
                goto LABEL_343;
              }

              v313 = v433 + 40 * v312;
              v315 = *v313;
              v314 = *(v313 + 8);
              v219 = *(v313 + 24);
              v441 = *(v313 + 16);
              v442 = v219;
              ++v312;
              v316 = v427;
              LODWORD(v439) = *(v313 + 32);
              if ((v439 & 0x80000000) != 0)
              {
                break;
              }

              v328 = *(v315 + 16);

              v425 = v328;
              if (v328)
              {
                v329 = 0;
                v420 = v315 + 32;
                v437 = MEMORY[0x277D84F90];
                while (1)
                {
                  v330 = v329;
                  v219 = *(v315 + 16);
                  if (v330 >= v219)
                  {
                    goto LABEL_345;
                  }

                  v435 = v330 + 1;
                  v331 = *(v316 + 16);
                  if (v331)
                  {
                    v332 = 0;
                    v219 = 24;
                    v333 = v420 + 24 * v330;
                    v335 = *v333;
                    v334 = *(v333 + 8);
                    LODWORD(v424) = *(v333 + 16);
                    v336 = v431;
                    while (1)
                    {
                      v337 = *(v336 - 1) == v335 && *v336 == v334;
                      if (v337 || (sub_261A85BA4() & 1) != 0)
                      {
                        break;
                      }

                      ++v332;
                      v336 += 2;
                      if (v331 == v332)
                      {
                        goto LABEL_262;
                      }
                    }

                    v338 = v437;
                    if (v430)
                    {

                      v423 = MEMORY[0x266716BE0](v332, v444);
                    }

                    else
                    {
                      if (v332 >= *(v428 + 16))
                      {
                        goto LABEL_347;
                      }

                      v423 = *(v444 + 8 * v332 + 32);
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v338 = sub_261A674A8(0, *(v338 + 2) + 1, 1, v338);
                    }

                    v340 = *(v338 + 2);
                    v339 = *(v338 + 3);
                    if (v340 >= v339 >> 1)
                    {
                      v338 = sub_261A674A8((v339 > 1), v340 + 1, 1, v338);
                    }

                    *(v338 + 2) = v340 + 1;
                    v437 = v338;
                    v341 = &v338[24 * v340];
                    *(v341 + 4) = v423;
                    *(v341 + 5) = v332;
                    v341[48] = v424;
                    v329 = v435;
                    v316 = v427;
                    if (v435 == v425)
                    {
                      goto LABEL_284;
                    }
                  }

                  else
                  {
LABEL_262:
                    v329 = v435;
                    v316 = v427;
                    if (v435 == v425)
                    {
                      goto LABEL_284;
                    }
                  }
                }
              }

              v437 = MEMORY[0x277D84F90];
LABEL_284:
              sub_261A7022C(v315, v314, v441, v442, v439);
              v321 = 0;
              v442 = 0;
              v323 = 0;
LABEL_254:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v438 = sub_261A66FD8(0, *(v438 + 2) + 1, 1, v438);
              }

              v325 = *(v438 + 2);
              v324 = *(v438 + 3);
              if (v325 >= v324 >> 1)
              {
                v438 = sub_261A66FD8((v324 > 1), v325 + 1, 1, v438);
              }

              v326 = v438;
              *(v438 + 2) = v325 + 1;
              v327 = &v326[40 * v325];
              *(v327 + 4) = v437;
              *(v327 + 5) = v314;
              v219 = v442;
              *(v327 + 6) = v321;
              *(v327 + 7) = v219;
              v327[64] = v323;
              v310 = v421;
              if (v312 == v434)
              {
                goto LABEL_289;
              }
            }

            v317 = *(v427 + 16);
            if (v317)
            {
              v318 = 0;
              v319 = v431;
              while (1)
              {
                v320 = *(v319 - 1) == v315 && v314 == *v319;
                if (v320 || (sub_261A85BA4() & 1) != 0)
                {
                  break;
                }

                ++v318;
                v319 += 2;
                if (v317 == v318)
                {
                  goto LABEL_238;
                }
              }

              if (v430)
              {
                v321 = v441;
                v342 = v442;
                v322 = v439;
                sub_261A7021C(v315, v314, v441, v442, v439);
                v437 = MEMORY[0x266716BE0](v318, v444);
                sub_261A7022C(v315, v314, v321, v342, v322);
              }

              else
              {
                LOBYTE(v321) = v441;
                if (v318 >= *(v428 + 16))
                {
                  goto LABEL_346;
                }

                v437 = *(v444 + 8 * v318 + 32);

                v322 = v439;
              }

              v321 = v321;
              v323 = v322 & 0x81;
              v314 = v318;
              goto LABEL_254;
            }

LABEL_238:
            if (v312 == v434)
            {
              goto LABEL_289;
            }
          }
        }

LABEL_288:
        v438 = MEMORY[0x277D84F90];
LABEL_289:

        v132 = v432;
        v432[20] = v438;
        v343 = v426;
        v344 = *(v426 + 3);
        *(v132 + 15) = *(v426 + 2);
        *(v132 + 16) = v344;
        v345 = v343[5];
        *(v132 + 17) = v343[4];
        *(v132 + 18) = v345;
        v346 = v343[1];
        *(v132 + 13) = *v343;
        *(v132 + 14) = v346;
        v132[38] = v436;
        v347 = qword_27FECAD60;

        if (v347 != -1)
        {
          swift_once();
        }

        v348 = sub_261A853D4();
        __swift_project_value_buffer(v348, qword_27FED7C90);

        v349 = sub_261A853B4();
        v350 = sub_261A85754();

        if (!os_log_type_enabled(v349, v350))
        {

          return v132;
        }

        LODWORD(v439) = v350;
        v440 = v349;
        v351 = swift_slowAlloc();
        v438 = swift_slowAlloc();
        *&v458[0] = v438;
        *v351 = 136446722;
        v352 = sub_261A6D52C();
        v354 = sub_261A3E9E8(v352, v353, v458);

        *(v351 + 4) = v354;
        *(v351 + 12) = 2082;
        v355 = v132[12];
        if (v355 >> 62)
        {
          v405 = v132[12];
          v406 = sub_261A85994();
          v355 = v405;
          v356 = v406;
        }

        else
        {
          v356 = *((v355 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v357 = MEMORY[0x277D84F90];
        v441 = v351;
        if (v356)
        {
          v358 = v355;
          *&v445 = MEMORY[0x277D84F90];
          sub_261A3EFB0(0, v356 & ~(v356 >> 63), 0);
          if (v356 < 0)
          {
            __break(1u);
LABEL_356:
            __break(1u);
LABEL_357:

            __break(1u);
LABEL_358:

            __break(1u);
LABEL_359:
            swift_unexpectedError();
            __break(1u);
            goto LABEL_360;
          }

          v359 = 0;
          v357 = v445;
          v360 = v358;
          v442 = v358 & 0xC000000000000001;
          v444 = v358;
          v361 = v356;
          do
          {
            if (v442)
            {
              v362 = MEMORY[0x266716BE0](v359, v360);
            }

            else
            {
              v362 = *(v360 + 8 * v359 + 32);
            }

            *v460 = 0;
            *&v460[8] = 0xE000000000000000;

            sub_261A858C4();

            strcpy(v460, "Metric named ");
            *&v460[14] = -4864;
            MEMORY[0x2667168A0](*(v362 + 48), *(v362 + 56));
            MEMORY[0x2667168A0](10272, 0xE200000000000000);
            MEMORY[0x2667168A0](*(v362 + 32), *(v362 + 40));
            if (*(v362 + 145))
            {
              v363 = 0x6E7265746E69202CLL;
            }

            else
            {
              v363 = 0;
            }

            if (*(v362 + 145))
            {
              v364 = 0xEA00000000006C61;
            }

            else
            {
              v364 = 0xE000000000000000;
            }

            MEMORY[0x2667168A0](v363, v364);

            MEMORY[0x2667168A0](41, 0xE100000000000000);

            v365 = *v460;
            v366 = *&v460[8];
            *&v445 = v357;
            v368 = *(v357 + 16);
            v367 = *(v357 + 24);
            if (v368 >= v367 >> 1)
            {
              sub_261A3EFB0((v367 > 1), v368 + 1, 1);
              v357 = v445;
            }

            ++v359;
            *(v357 + 16) = v368 + 1;
            v369 = v357 + 16 * v368;
            *(v369 + 32) = v365;
            *(v369 + 40) = v366;
            v360 = v444;
          }

          while (v361 != v359);
          v351 = v441;
        }

        *v460 = v357;
        v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
        v371 = sub_261A3BF78(&qword_27FECAF60, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83958]);
        v372 = sub_261A85474();
        v374 = v373;

        v375 = sub_261A3E9E8(v372, v374, v458);

        *(v351 + 14) = v375;
        *(v351 + 22) = 2082;
        v376 = v432[13];
        if (v376 >> 62)
        {
          v407 = v432[13];
          v408 = sub_261A85994();
          v376 = v407;
          v377 = v408;
        }

        else
        {
          v377 = *((v376 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v378 = MEMORY[0x277D84F90];
        if (!v377)
        {
LABEL_329:
          *v460 = v378;
          v392 = sub_261A85474();
          v394 = v393;

          v395 = sub_261A3E9E8(v392, v394, v458);

          *(v351 + 24) = v395;
          v396 = v440;
          _os_log_impl(&dword_261A33000, v440, v439, "initialized %{public}s with metrics %{public}s, triggers %{public}s)", v351, 0x20u);
          v397 = v438;
          swift_arrayDestroy();
          MEMORY[0x266717700](v397, -1, -1);
          MEMORY[0x266717700](v351, -1, -1);

          return v432;
        }

        v379 = v376;
        v435 = v371;
        v437 = v370;
        *&v451 = MEMORY[0x277D84F90];
        sub_261A3EFB0(0, v377 & ~(v377 >> 63), 0);
        v444 = v377;
        if ((v377 & 0x8000000000000000) == 0)
        {
          v380 = 0;
          v378 = v451;
          v381 = v379;
          v442 = v379 & 0xC000000000000001;
          v382 = v379;
          do
          {
            if (v442)
            {
              v383 = MEMORY[0x266716BE0](v380, v381);
            }

            else
            {
              v383 = *(v381 + 8 * v380 + 32);
            }

            strcpy(v460, "Trigger for ");
            v460[13] = 0;
            *&v460[14] = -5120;
            v384 = *(v383 + 16);
            *&v445 = 0;
            *(&v445 + 1) = 0xE000000000000000;
            sub_261A858C4();

            strcpy(&v445, "Metric named ");
            HIWORD(v445) = -4864;
            MEMORY[0x2667168A0](*(v384 + 48), *(v384 + 56));
            MEMORY[0x2667168A0](10272, 0xE200000000000000);
            MEMORY[0x2667168A0](*(v384 + 32), *(v384 + 40));
            if (*(v384 + 145))
            {
              v385 = 0x6E7265746E69202CLL;
            }

            else
            {
              v385 = 0;
            }

            if (*(v384 + 145))
            {
              v386 = 0xEA00000000006C61;
            }

            else
            {
              v386 = 0xE000000000000000;
            }

            MEMORY[0x2667168A0](v385, v386);

            MEMORY[0x2667168A0](41, 0xE100000000000000);
            MEMORY[0x2667168A0](v445, *(&v445 + 1));

            v387 = *v460;
            v388 = *&v460[8];
            *&v451 = v378;
            v390 = *(v378 + 16);
            v389 = *(v378 + 24);
            if (v390 >= v389 >> 1)
            {
              sub_261A3EFB0((v389 > 1), v390 + 1, 1);
              v378 = v451;
            }

            ++v380;
            *(v378 + 16) = v390 + 1;
            v391 = v378 + 16 * v390;
            *(v391 + 32) = v387;
            *(v391 + 40) = v388;
            v381 = v382;
          }

          while (v444 != v380);
          v351 = v441;
          goto LABEL_329;
        }

        goto LABEL_356;
      }

      if (!*(*(v436 + 112) + 16))
      {
        goto LABEL_113;
      }

      v152 = *(v149 - 1);
      v151 = *v149;

      sub_261A5BD84(v152, v151);
      if ((v153 & 1) == 0)
      {

LABEL_113:
        ++v150;
        v149 += 2;
        if (v144 == v150)
        {
          goto LABEL_123;
        }

        continue;
      }

      break;
    }

    v154 = swift_isUniquelyReferenced_nonNull_native();
    *v460 = v146;
    if ((v154 & 1) == 0)
    {
      sub_261A3EFB0(0, *(v146 + 16) + 1, 1);
      v146 = *v460;
    }

    v156 = *(v146 + 16);
    v155 = *(v146 + 24);
    v157 = v156 + 1;
    if (v156 >= v155 >> 1)
    {
      sub_261A3EFB0((v155 > 1), v156 + 1, 1);
      v157 = v156 + 1;
      v146 = *v460;
    }

    v147 = v150 + 1;
    *(v146 + 16) = v157;
    v158 = v146 + 16 * v156;
    *(v158 + 32) = v152;
    *(v158 + 40) = v151;
    v148 = v444;
    if (v442 != v150)
    {
      continue;
    }

    break;
  }

LABEL_123:
  v42 = v440;
LABEL_124:

  *v460 = v146;

  v159 = v443;
  sub_261A7B22C(v460);
  v444 = v159;
  if (v159)
  {
LABEL_360:
    MEMORY[0x2667175A0](v444);

    __break(1u);
    return result;
  }

  v160 = *v460;
  v161 = v432;
  v432[21] = v42;
  v161[23] = *(v436 + 128);
  v162 = v426[10];
  v163 = MEMORY[0x277D84F90];
  *&v445 = MEMORY[0x277D84F90];
  v164 = *(v162 + 16);
  swift_bridgeObjectRetain_n();

  v427 = v160;
  v425 = v164;
  if (!v164)
  {
    v166 = v163;
    goto LABEL_152;
  }

  v165 = 0;
  v424 = v162 + 32;
  v422 = (v160 + 40);
  v166 = MEMORY[0x277D84F90];
  v423 = v162;
  while (2)
  {
    v420 = v166;
    while (2)
    {
      if (v165 >= *(v162 + 16))
      {
        goto LABEL_333;
      }

      v441 = v165;
      v167 = (v424 + 80 * v165);
      v168 = v167[1];
      v443 = *v167;
      v169 = v167[2];
      v170 = v167[3];
      v171 = v167[4];
      v430 = v167[5];
      v431 = v169;
      v172 = v167[6];
      v429 = v167[7];
      v173 = v167[8];
      v174 = v167[9];
      v175 = *(v174 + 16);

      v438 = v170;

      v439 = v171;

      v437 = v172;

      v435 = v173;

      v442 = v175;
      if (!v175)
      {
        v179 = 0;
        goto LABEL_137;
      }

      v177 = 0;
      v178 = (v174 + 40);
      while (2)
      {
        if (v177 >= *(v174 + 16))
        {
          __break(1u);
LABEL_215:

          v285 = MEMORY[0x277D84F90];
          goto LABEL_216;
        }

        v179 = *(v178 - 1);
        v175 = *v178;
        v180 = *(v436 + 136);
        *v460 = v179;
        *&v460[8] = v175;
        MEMORY[0x28223BE20](v176);
        *(&v409 - 2) = v460;

        v181 = v180;
        v182 = v444;
        v183 = sub_261A779E4(sub_261A391E0, (&v409 - 4), v181);
        v444 = v182;
        if (v183)
        {
          goto LABEL_135;
        }

        ++v177;
        v178 += 2;
        if (v442 != v177)
        {
          continue;
        }

        break;
      }

      v179 = 0;
      v175 = 0;
LABEL_135:
      v42 = v440;
      v160 = v427;
LABEL_137:
      ++v441;
      v184 = *(v160 + 16) + 1;
      v185 = v422;
LABEL_138:
      if (!--v184)
      {

        v165 = v441;
        v162 = v423;
        if (v441 == v425)
        {
          v166 = v420;
          goto LABEL_152;
        }

        continue;
      }

      break;
    }

    if (*(v185 - 1) != v443 || *v185 != v168)
    {
      v185 += 2;
      if ((sub_261A85BA4() & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    type metadata accessor for CountingMode.Threshold();
    v187 = swift_allocObject();
    v188 = v438;
    v187[2] = v431;
    v187[3] = v188;
    v189 = v437;
    v187[4] = v430;
    v187[5] = v189;
    v190 = v435;
    v187[6] = v429;
    v187[7] = v190;
    v187[8] = v179;
    v187[9] = v175;
    v187[10] = v179;
    v187[11] = v175;
    v191 = v443;
    v187[12] = 0;
    v187[13] = v191;
    v192 = v439;
    v187[14] = v168;
    v187[15] = v192;

    MEMORY[0x2667169A0](v193);
    if (*((v445 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v445 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_261A856D4();
    }

    sub_261A856F4();
    v166 = v445;
    v165 = v441;
    v162 = v423;
    if (v441 != v425)
    {
      continue;
    }

    break;
  }

LABEL_152:
  v194 = v432;
  v432[22] = v166;
  v195 = *(v436 + 80);
  v420 = v166;

  v196 = sub_261A6FB90(0, 0, 0, v195);
  v197 = v194[18];
  v198 = *(v197 + 16);
  v199 = MEMORY[0x277D84F90];
  v410 = v196;
  if (v198)
  {
    *v460 = MEMORY[0x277D84F90];

    sub_261A3F440(0, v198, 0);
    v199 = *v460;
    v442 = v197;
    v200 = (v197 + 64);
    do
    {
      v201 = *(v200 - 3);
      if (v201)
      {
        v202 = *(v200 - 4);
      }

      else
      {
        v202 = 0;
      }

      if (v201)
      {
        v203 = *v200 & 1;
      }

      else
      {
        v203 = 0;
      }

      LODWORD(v443) = v203;
      *v460 = v199;
      v205 = v199[2];
      v204 = v199[3];

      if (v205 >= v204 >> 1)
      {
        sub_261A3F440((v204 > 1), v205 + 1, 1);
        v199 = *v460;
      }

      v200 += 40;
      v199[2] = v205 + 1;
      v206 = &v199[3 * v205];
      v206[4] = v202;
      v206[5] = v201;
      *(v206 + 48) = v443;
      --v198;
    }

    while (v198);

    v42 = v440;
    v207 = v410;
  }

  else
  {
    v207 = v196;
  }

  *v460 = v207;

  sub_261A7F740(v199);
  v208 = *v460;
  v209 = *(v436 + 128);
  type metadata accessor for Evaluator();
  swift_allocObject();
  v210 = v420;

  v211 = v427;

  v212 = v444;
  v213 = sub_261A718C4(v42, v211, v209, v208, v210);
  v443 = v212;
  if (v212)
  {

    sub_261A3DF08(v426);

    v128 = 0;
    v130 = 0;
    v129 = 1;
    goto LABEL_92;
  }

  v422 = v208;
  v214 = v433;
  v432[24] = v213;
  v215 = *(v214 + 16);
  v429 = v213;

  if (!v215)
  {
    v218 = MEMORY[0x277D84F90];
    goto LABEL_183;
  }

  v216 = 0;
  v217 = v214 + 32;
  v444 = v215 - 1;
  v218 = MEMORY[0x277D84F90];
  v219 = 88;
  while (2)
  {
    v220 = (v217 + 88 * v216);
    v221 = v216;
    while (2)
    {
      if (v221 >= *(v214 + 16))
      {
        __break(1u);
        goto LABEL_336;
      }

      v222 = *v220;
      v446 = v220[1];
      v223 = v220[2];
      v224 = v220[3];
      v225 = v220[4];
      v450 = *(v220 + 80);
      v448 = v224;
      v449 = v225;
      v447 = v223;
      v445 = v222;
      v226 = *(v436 + 112);
      if (!*(v226 + 16))
      {
LABEL_170:
        ++v221;
        v220 = (v220 + 88);
        if (v215 == v221)
        {
          goto LABEL_183;
        }

        continue;
      }

      break;
    }

    v227 = v445;
    sub_261A57C8C(&v445, v460);
    v228 = sub_261A5BD84(v227, *(&v227 + 1));
    if ((v229 & 1) == 0)
    {
      sub_261A57CC4(&v445);
      v214 = v433;
      goto LABEL_170;
    }

    v230 = (*(v226 + 56) + 16 * v228);
    v232 = *v230;
    v231 = v230[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_261A670F4(0, v218[2] + 1, 1, v218);
    }

    v234 = v218[2];
    v233 = v218[3];
    if (v234 >= v233 >> 1)
    {
      v218 = sub_261A670F4((v233 > 1), v234 + 1, 1, v218);
    }

    v216 = v221 + 1;
    *&v460[32] = v447;
    *&v460[48] = v448;
    *&v460[64] = v449;
    v460[80] = v450;
    v235 = v445;
    *v460 = v445;
    *&v460[16] = v446;
    v218[2] = v234 + 1;
    v236 = &v218[13 * v234];
    v237 = *&v460[80];
    v239 = *&v460[48];
    v238 = *&v460[64];
    *(v236 + 4) = *&v460[32];
    *(v236 + 5) = v239;
    *(v236 + 6) = v238;
    v236[14] = v237;
    v240 = *&v460[16];
    *(v236 + 2) = v235;
    *(v236 + 3) = v240;
    v236[15] = v232;
    v236[16] = v231;
    v214 = v433;
    v219 = 88;
    if (v444 != v221)
    {
      continue;
    }

    break;
  }

LABEL_183:
  *v460 = v218;
  swift_getKeyPath();
  v241 = v412;
  sub_261A85284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD98, &unk_261A8C8C0);
  sub_261A3BF78(&qword_27FECBDA0, &qword_27FECBD98, &unk_261A8C8C0, MEMORY[0x277D83970]);
  sub_261A3BF78(&qword_27FECBDA8, &qword_27FECBD90, &unk_261A8C880, MEMORY[0x277CC8C98]);
  v242 = v414;
  v243 = sub_261A85664();
  (*(v413 + 8))(v241, v242);

  v244 = *(v243 + 16);
  v219 = MEMORY[0x277D84F90];
  v425 = v243;
  if (v244)
  {
    v463 = MEMORY[0x277D84F90];

    sub_261A85944();
    v423 = *(v243 + 16);
    if (v423)
    {
      v245 = 0;
      v424 = v244 - 1;
      v246 = 32;
      while (v245 < *(v243 + 16))
      {
        v247 = *(v243 + v246);
        v248 = *(v243 + v246 + 32);
        v458[1] = *(v243 + v246 + 16);
        v458[2] = v248;
        v458[0] = v247;
        v249 = *(v243 + v246 + 48);
        v250 = *(v243 + v246 + 64);
        v251 = *(v243 + v246 + 80);
        v459 = *(v243 + v246 + 96);
        v458[4] = v250;
        v458[5] = v251;
        v458[3] = v249;
        v252 = *(v243 + v246 + 80);
        v455 = *(v243 + v246 + 64);
        v456 = v252;
        v457 = *(v243 + v246 + 96);
        v253 = *(v243 + v246 + 16);
        v451 = *(v243 + v246);
        v452 = v253;
        v254 = *(v243 + v246 + 48);
        v453 = *(v243 + v246 + 32);
        v454 = v254;
        *v460 = v245;
        *&v460[56] = v254;
        *&v460[72] = v455;
        v461 = v252;
        v462 = v457;
        *&v460[8] = v451;
        *&v460[24] = v253;
        *&v460[40] = v453;
        v255 = v429[8];
        v219 = *(v255 + 16);
        if (v245 >= v219)
        {
          goto LABEL_337;
        }

        v437 = *&v460[72];
        v438 = *&v460[80];
        v256 = *&v460[64];
        v435 = *&v460[56];
        v257 = *&v460[48];
        v430 = v246;
        v431 = *&v460[40];
        v258 = *&v460[32];
        v433 = *&v460[32];
        v259 = *&v460[24];
        v260 = *&v460[16];
        v261 = *&v460[8];
        LODWORD(v444) = v461;
        v442 = v462;
        v439 = *(&v461 + 1);
        LODWORD(v441) = *(v255 + v245 + 32);
        type metadata accessor for CountingMode.Metric();
        v262 = swift_allocObject();
        *(v262 + 16) = v261;
        *(v262 + 24) = v260;
        *(v262 + 32) = v261;
        *(v262 + 40) = v260;
        *(v262 + 48) = v259;
        *(v262 + 56) = v258;
        *(v262 + 64) = v431;
        *(v262 + 72) = v257;
        *(v262 + 80) = v435;
        *(v262 + 88) = v256;
        v263 = v438;
        *(v262 + 96) = v437;
        *(v262 + 104) = v263;
        swift_bridgeObjectRetain_n();
        sub_261A702E0(v458, &v445, &qword_27FECBC28, &qword_261A8BF38);
        sub_261A702E0(v460, &v445, &qword_27FECBDB0, &unk_261A8C8D0);

        sub_261A57CC4(&v460[8]);
        *(v262 + 112) = 0;
        *(v262 + 120) = 0;
        v264 = v442;
        *(v262 + 128) = v439;
        *(v262 + 136) = v264;
        *(v262 + 144) = v444;
        *(v262 + 145) = v441;
        sub_261A5E854(v460, &qword_27FECBDB0, &unk_261A8C8D0);
        sub_261A85924();
        sub_261A85954();
        sub_261A85964();
        sub_261A85934();
        if (v424 == v245)
        {
          goto LABEL_191;
        }

        ++v245;
        v246 = v430 + 104;
        v243 = v425;
        if (v423 == v245)
        {
          goto LABEL_190;
        }
      }

LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      v398 = v219;
      v399 = sub_261A85994();
      v219 = v398;
      v266 = v399;
      v265 = v444;
      if (!v266)
      {
        goto LABEL_350;
      }

      goto LABEL_195;
    }

LABEL_190:
    __break(1u);
LABEL_191:

    v265 = v463;
    v219 = MEMORY[0x277D84F90];
  }

  else
  {
    v265 = MEMORY[0x277D84F90];
  }

  v444 = v265;
  if (v265 >> 62)
  {
    goto LABEL_349;
  }

  v266 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v266)
  {
LABEL_350:

    v401 = *(v436 + 32);
    v400 = *(v436 + 40);
    sub_261A6FF78();
    v402 = swift_allocError();
    v403 = v416;
    *v404 = v415;
    *(v404 + 8) = v403;
    *(v404 + 16) = v401;
    *(v404 + 24) = v400;
    *(v404 + 32) = 2;
    v443 = v402;
    swift_willThrow();

    sub_261A3DF08(v426);

    v128 = 0;
    goto LABEL_351;
  }

LABEL_195:
  v432[12] = v265;
  v267 = v428;
  v268 = *(v428 + 16);
  if (!v268)
  {
    goto LABEL_215;
  }

  *&v445 = v219;
  v269 = v265;

  sub_261A85944();
  v270 = 0;
  v441 = v267 + 32;
  v271 = v269 & 0xC000000000000001;
  v272 = v269 & 0xFFFFFFFFFFFFFF8;
  v439 = v268;
LABEL_198:
  v219 = *(v267 + 16);
  if (v270 >= v219)
  {
    goto LABEL_348;
  }

  v442 = v270 + 1;
  v273 = (v441 + 16 * v270);
  v275 = *v273;
  v274 = v273[1];

  v276 = 0;
  while (v271)
  {
    v277 = MEMORY[0x266716BE0](v276, v444);
    v278 = v276 + 1;
    if (__OFADD__(v276, 1))
    {
      goto LABEL_212;
    }

LABEL_203:
    v279 = *(v277 + 32) == v275 && *(v277 + 40) == v274;
    if (v279 || (sub_261A85BA4() & 1) != 0)
    {

      type metadata accessor for CountingMode.Trigger();
      *(swift_allocObject() + 16) = v277;
      sub_261A85924();
      sub_261A85954();
      sub_261A85964();
      sub_261A85934();
      v270 = v442;
      v267 = v428;
      if (v442 == v439)
      {
        goto LABEL_334;
      }

      goto LABEL_198;
    }

    ++v276;
    if (v278 == v266)
    {
      goto LABEL_213;
    }
  }

  if (v276 >= *(v272 + 16))
  {
    goto LABEL_338;
  }

  v277 = *(v444 + 8 * v276 + 32);

  v278 = v276 + 1;
  if (!__OFADD__(v276, 1))
  {
    goto LABEL_203;
  }

LABEL_212:
  __break(1u);
LABEL_213:

  *v460 = 0;
  *&v460[8] = 0xE000000000000000;
  v280 = v416;

  sub_261A858C4();

  *v460 = 0xD000000000000019;
  *&v460[8] = 0x8000000261A8EAD0;
  MEMORY[0x2667168A0](v275, v274);
  MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EA70);
  v281 = *v460;
  v282 = *&v460[8];
  sub_261A6FF78();
  v283 = swift_allocError();
  *v284 = v415;
  *(v284 + 8) = v280;
  *(v284 + 16) = v281;
  *(v284 + 24) = v282;
  *(v284 + 32) = 0;
  v443 = v283;
  swift_willThrow();

  sub_261A3DF08(v426);

  v128 = 1;
LABEL_351:
  v129 = 1;
  v130 = 1;
LABEL_92:

  if (!v128)
  {
    if (!v129)
    {
      goto LABEL_94;
    }

LABEL_99:

    v131 = v432;
    if (!v130)
    {
      goto LABEL_96;
    }

LABEL_95:

    v131 = v432;
    goto LABEL_96;
  }

  if (v129)
  {
    goto LABEL_99;
  }

LABEL_94:
  v131 = v432;
  if (v130)
  {
    goto LABEL_95;
  }

LABEL_96:
  v132 = v131;
  swift_deallocPartialClassInstance();
  return v132;
}

uint64_t sub_261A6D428(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_261A81300(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261A6D52C()
{
  v1 = v0;
  sub_261A858C4();

  MEMORY[0x2667168A0](v1[6], v1[7]);
  MEMORY[0x2667168A0](10272, 0xE200000000000000);
  MEMORY[0x2667168A0](v1[4], v1[5]);
  MEMORY[0x2667168A0](0xD000000000000010, 0x8000000261A8EB10);
  v2 = sub_261A5AF3C();
  MEMORY[0x2667168A0](v2);

  MEMORY[0x2667168A0](0x20726F6620, 0xE500000000000000);
  v3 = sub_261A68480();
  MEMORY[0x2667168A0](v3);

  return 0xD000000000000013;
}

void CountingMode.metricValues(cpuKind:counterValues:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  sub_261A705A8(&v3, a2);
  if (!v2)
  {
  }
}

void *CountingMode.deinit()
{

  return v0;
}

uint64_t CountingMode.__deallocating_deinit()
{
  CountingMode.deinit();

  return MEMORY[0x2821FE8D8](v0, 312, 7);
}

uint64_t CountingMode.hash(into:)(uint64_t a1)
{
  sub_261A85554();

  sub_261A85554();
}

uint64_t CountingMode.hashValue.getter()
{
  sub_261A85C44();
  sub_261A85554();

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6D8E4()
{
  sub_261A85C44();
  sub_261A85554();

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6D954(uint64_t a1)
{
  sub_261A85554();

  sub_261A85554();
}

uint64_t sub_261A6D9BC(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6DA34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D726F6674616C70;
  }

  else
  {
    v3 = 1667592307;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D726F6674616C70;
  }

  else
  {
    v5 = 1667592307;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261A85BA4();
  }

  return v8 & 1;
}

uint64_t sub_261A6DAD4()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6DB50(uint64_t a1)
{
  sub_261A85554();
}

uint64_t sub_261A6DBB8(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A6DC30@<X0>(char *a2@<X8>)
{
  v3 = sub_261A859E4();

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

void sub_261A6DC90(uint64_t *a1@<X8>)
{
  v2 = 1667592307;
  if (*v1)
  {
    v2 = 0x6D726F6674616C70;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261A6DCC8()
{
  if (*v0)
  {
    return 0x6D726F6674616C70;
  }

  else
  {
    return 1667592307;
  }
}

uint64_t sub_261A6DCFC@<X0>(char *a3@<X8>)
{
  v4 = sub_261A859E4();

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

uint64_t sub_261A6DD60(uint64_t a1)
{
  v2 = sub_261A6F940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A6DD9C(uint64_t a1)
{
  v2 = sub_261A6F940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountingMode.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD50, &qword_261A8C460);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A6F940();
  sub_261A85CD4();
  v8 = *(v3 + 240);
  v9 = *(v3 + 272);
  v28 = *(v3 + 256);
  v29 = v9;
  v10 = *(v3 + 272);
  v30 = *(v3 + 288);
  v11 = *(v3 + 208);
  v12 = *(v3 + 240);
  v26 = *(v3 + 224);
  v27 = v12;
  v13 = *(v3 + 208);
  v22 = v28;
  v23 = v10;
  v24 = *(v3 + 288);
  v25 = v13;
  v19 = v11;
  v20 = v26;
  v21 = v8;
  v18 = 0;
  sub_261A3DEAC(&v25, v17);
  sub_261A5073C();
  sub_261A85B54();
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_261A3DF08(v17);
  if (!v2)
  {
    v16 = *(v3 + 304);
    v15[7] = 1;
    type metadata accessor for Platform();
    sub_261A70298(&qword_27FECBD60, 255, type metadata accessor for Platform, asc_261A8AFAC);
    sub_261A85B54();
  }

  return (*(v31 + 8))(v7, v5);
}

uint64_t sub_261A6E05C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261A6FCE0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_261A6E0AC(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_261A5BD84(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_261A757BC(v15, v5 & 1);
    v10 = sub_261A5BD84(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_261A85BE4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_261A74F44();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x2667175A0](v18);
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD00000000000001BLL, 0x8000000261A8EB60);
    sub_261A85974();
    MEMORY[0x2667168A0](39, 0xE100000000000000);
    result = sub_261A85984();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v38 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_261A5BD84(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_261A757BC(v32, 1);
        v28 = sub_261A5BD84(v7, v6);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v28) = v26;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v34[2] = v37;
      v5 += 3;
      if (v38 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_261A6E428(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_261A85C44();

    sub_261A85554();
    v23 = sub_261A85C84();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_261A85BA4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_261A6F4C8(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_261A85C44();

            sub_261A85554();
            v41 = sub_261A85C84();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_261A85BA4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_261A6F0AC(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x266717700](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_261A70290(v13);
    return v5;
  }

  MEMORY[0x2667175A0](v51);
  result = MEMORY[0x266717700](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_261A6E998(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_261A85C44();

    sub_261A85554();
    v11 = sub_261A85C84();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_261A85BA4() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_261A6F4C8(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_261A85C44();

        sub_261A85554();
        v33 = sub_261A85C84();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_261A6F2E4(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x266717700](v44, -1, -1);

    return v46;
  }

  MEMORY[0x2667175A0](v45);
  result = MEMORY[0x266717700](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_261A6EE44(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_261A6EF70(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_261A6EF70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_261A85C44();
  sub_261A85554();
  v6 = sub_261A85C84();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_261A85BA4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_261A81830();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_261A6F6EC(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_261A6F0AC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_261A6F4C8(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_261A85C44();

        sub_261A85554();
        v19 = sub_261A85C84();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t *sub_261A6F2E4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_261A6F4C8(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_261A85C44();

        sub_261A85554();
        v16 = sub_261A85C84();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_261A6F4C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  result = sub_261A85894();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_261A85C44();

    sub_261A85554();
    result = sub_261A85C84();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_261A6F6EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_261A85864();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_261A85C44();

        sub_261A85554();
        v10 = sub_261A85C84();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _s7Recount12CountingModeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[4] == a2[4] && a1[5] == a2[5];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[38];
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = a2[38];
    if (v8 == *(v10 + 32) && v9 == *(v10 + 40))
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}

unint64_t sub_261A6F940()
{
  result = qword_27FECBD58;
  if (!qword_27FECBD58)
  {
    result = swift_getWitnessTable(byte_261A8C82C, &type metadata for CountingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD58);
  }

  return result;
}

uint64_t sub_261A6F994(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB988, &unk_261A8C920);
    v4 = sub_261A856E4();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 88;
      do
      {
        sub_261A702E0(v3, v14, &qword_27FECB988, &unk_261A8C920);
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_261A702E0(v3, v14, &qword_27FECB988, &unk_261A8C920);
    return v5;
  }

  return result;
}

uint64_t sub_261A6FA98(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB978, &qword_261A8AC28);
    v4 = sub_261A856E4();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = *(v3 + 32);
    v7 = *(v3 + 16);
    *(v4 + 32) = *v3;
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    v8 = a2 - 1;
    if (a2 != 1)
    {
      v9 = v4 + 72;
      do
      {
        sub_261A702E0(v3, v12, &qword_27FECB978, &qword_261A8AC28);
        v10 = *v3;
        v11 = *(v3 + 16);
        *(v9 + 32) = *(v3 + 32);
        *v9 = v10;
        *(v9 + 16) = v11;
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    sub_261A702E0(v3, v12, &qword_27FECB978, &qword_261A8AC28);
    return v5;
  }

  return result;
}

uint64_t sub_261A6FB90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      return MEMORY[0x277D84F90];
    }

    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
    v8 = sub_261A856E4();
    v9 = v8;
    *(v8 + 16) = a4;
    *(v8 + 32) = v7;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    v10 = a4 - 1;
    if (v10)
    {
      v11 = (v8 + 72);
      do
      {
        *(v11 - 2) = v7;
        *(v11 - 1) = a2;
        *v11 = a3;
        v11 += 24;

        --v10;
      }

      while (v10);
    }

    return v9;
  }

  return result;
}

uint64_t sub_261A6FC44(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDD0, &qword_261A8C8F8);
    v4 = sub_261A856E4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_261A6FCE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDD8, &qword_261A8C918);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A6F940();
  sub_261A85CB4();
  v10 = 0;
  sub_261A547AC();
  sub_261A85A94();
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v16;
  v17[0] = v11;
  v17[1] = v12;
  type metadata accessor for Platform();
  v10 = 1;
  sub_261A70298(&qword_27FECBDE0, 255, type metadata accessor for Platform, byte_261A8AF84);
  sub_261A85A94();
  v6 = v11;
  type metadata accessor for CountingMode();
  v7 = swift_allocObject();
  sub_261A6A790(v17, v6);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_261A6FF78()
{
  result = qword_27FECBD68;
  if (!qword_27FECBD68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingModeError, &type metadata for CountingModeError, v0, v1);
    atomic_store(result, &qword_27FECBD68);
  }

  return result;
}

uint64_t sub_261A70044(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A7008C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_261A70118()
{
  result = qword_27FECBD78;
  if (!qword_27FECBD78)
  {
    result = swift_getWitnessTable(byte_261A8C804, &type metadata for CountingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD78);
  }

  return result;
}

unint64_t sub_261A70170()
{
  result = qword_27FECBD80;
  if (!qword_27FECBD80)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for CountingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD80);
  }

  return result;
}

unint64_t sub_261A701C8()
{
  result = qword_27FECBD88;
  if (!qword_27FECBD88)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for CountingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBD88);
  }

  return result;
}

uint64_t sub_261A70298(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_261A702E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_261A70348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_261A3F400(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_261A85854();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v30 = *v11;
    v13 = v3;
    v14 = *(*(v3 + 56) + 8 * v6);
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_261A3F400((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = (v31 + 24 * v15);
    v17[4] = v30;
    v17[5] = v12;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_261A4984C(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_261A4984C(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
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
  return result;
}

void sub_261A705A8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1 > 1u;
  v5 = *(v2 + 24);
  if (*(v5 + 16) <= v4)
  {
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v42[4];
  v8 = *(v6 + 16);
  v9 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9)
    {
      v10 = sub_261A856E4();
      *(v10 + 16) = v9;
      bzero((v10 + 32), 8 * v9);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    sub_261A7F454(v10);

    sub_261A7F454(v11);
    v12 = v42[6];
    if (v12 < 0)
    {
      goto LABEL_53;
    }

    v13 = v6;
    if (v12)
    {
      v14 = sub_261A856E4();
      *(v14 + 16) = v12;
      v39 = v14;
      bzero((v14 + 32), 8 * v12);
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v15 = v42[2];
    v40 = *(v15 + 16);
    if (v40)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v15 + 32);
      v41 = 1;
      while (v17 < *(v15 + 16))
      {
        v19 = *v18;

        sub_261A8433C(v13, v19);
        if (v3)
        {

          return;
        }

        v21 = v20;

        v22 = v42[5];
        if (v17 >= *(v22 + 16))
        {
          goto LABEL_47;
        }

        v23 = v22 + v16;
        if ((*(v23 + 40) & 1) == 0)
        {
          v24 = *(v23 + 32);
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          if (v24 >= *(v39 + 16))
          {
            goto LABEL_50;
          }

          *(v39 + 32 + 8 * v24) = v21;
          v41 &= (v21 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_261A67BA8(v13);
        }

        if (v8 >= *(v13 + 2))
        {
          goto LABEL_48;
        }

        ++v17;
        *&v13[8 * v8++ + 32] = v21;
        v16 += 16;
        v18 += 4;
        if (v40 == v17)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      v25 = v42[7];
      v26 = *(v25 + 16);
      if (!v26)
      {
LABEL_43:

        return;
      }

      v27 = v13 + 32;
      v28 = (v25 + 56);
      v29 = MEMORY[0x277D84F90];
      v30 = MEMORY[0x277D84F90];
      while (1)
      {
        v32 = *(v28 - 3);
        if ((v32 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v32 >= *(v13 + 2))
        {
          goto LABEL_45;
        }

        if (*(v28 - 1) <= *&v27[8 * v32])
        {
          v33 = *v28;
          swift_retain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_261A66940(0, *(v29 + 2) + 1, 1, v29);
          }

          v35 = *(v29 + 2);
          v34 = *(v29 + 3);
          if (v35 >= v34 >> 1)
          {
            v29 = sub_261A66940((v34 > 1), v35 + 1, 1, v29);
          }

          *(v29 + 2) = v35 + 1;
          v36 = &v29[16 * v35];
          *(v36 + 4) = v33;
          v36[40] = 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_261A66924(0, *(v30 + 2) + 1, 1, v30);
          }

          v38 = *(v30 + 2);
          v37 = *(v30 + 3);
          if (v38 >= v37 >> 1)
          {
            v30 = sub_261A66924((v37 > 1), v38 + 1, 1, v30);
          }

          *(v30 + 2) = v38 + 1;
          v31 = &v30[16 * v38];
          *(v31 + 4) = v33;
          v31[40] = 1;
          v27 = v13 + 32;
        }

        v28 += 4;
        if (!--v26)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_261A70A30(uint64_t result)
{
  v3 = v2;
  v4 = result;
  v5 = 0;
  v6 = *(v1 + 56);
  v7 = result + 32;
  v8 = v6 + 56;
  v9 = -*(v6 + 16);
  v10 = MEMORY[0x277D84F90];
  v11 = 1;
LABEL_2:
  v12 = v11;
LABEL_3:
  v13 = v5 + 1;
  v14 = (v8 + 32 * v5);
  while (1)
  {
    v5 = v13;
    if (v9 + v13 == 1)
    {
      break;
    }

    v15 = v14;
    if ((v13 - 1) >= *(v6 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v16 = *(v14 - 2);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    if (v16 >= *(v4 + 16))
    {
      goto LABEL_22;
    }

    v17 = *(v14 - 1);
    v18 = *(v7 + 8 * v16);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v12 = 0;
      v11 = 0;
      if (v17 > v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    v13 = v5 + 1;
    v14 += 4;
    if (v17 <= v18)
    {
      v11 = v12;
LABEL_12:
      v25 = v8;
      v23 = *v15;

      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v3;
      if ((result & 1) == 0)
      {
        result = sub_261A66924(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      v21 = v20 + 1;
      v8 = v25;
      if (v20 >= v19 >> 1)
      {
        result = sub_261A66924((v19 > 1), v20 + 1, 1, v10);
        v21 = v20 + 1;
        v8 = v25;
        v10 = result;
      }

      *(v10 + 16) = v21;
      v22 = v10 + 16 * v20;
      v3 = v24;
      *(v22 + 32) = v23;
      *(v22 + 40) = 1;
      goto LABEL_2;
    }
  }

  if ((v12 & 1) == 0)
  {

    return 0;
  }

  return v10;
}
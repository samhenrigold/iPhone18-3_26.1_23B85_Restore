uint64_t sub_35A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_35A70()
{
  result = qword_782F8;
  if (!qword_782F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_782F8);
  }

  return result;
}

unint64_t sub_35AC8()
{
  result = qword_78380;
  if (!qword_78380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78380);
  }

  return result;
}

unint64_t sub_35B20()
{
  result = qword_78388;
  if (!qword_78388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78388);
  }

  return result;
}

unint64_t sub_35BA8()
{
  result = qword_783A0;
  if (!qword_783A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783A0);
  }

  return result;
}

unint64_t sub_35C00()
{
  result = qword_783A8;
  if (!qword_783A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783A8);
  }

  return result;
}

unint64_t sub_35C58()
{
  result = qword_783B0;
  if (!qword_783B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783B0);
  }

  return result;
}

uint64_t sub_35CDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_35D34()
{
  result = qword_783C8;
  if (!qword_783C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Opentelemetry_Proto_Metrics_V1_DataPointFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Opentelemetry_Proto_Metrics_V1_DataPointFlags(uint64_t result, int a2, int a3)
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

uint64_t sub_36FE8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_37004(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_37110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_39Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_5BCE4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_40Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = sub_5BCE4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_37480(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_37110(319, a4, a5, &type metadata accessor for Array);
  if (v9 <= 0x3F)
  {
    sub_5BCE4();
    if (v10 <= 0x3F)
    {
      sub_37110(319, a6, a7, &type metadata accessor for Optional);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_37580(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_5BCE4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_376C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_5BCE4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_377F4(uint64_t a1)
{
  sub_37110(319, &qword_78528, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_5BCE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_37908(uint64_t a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_37A14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_37AD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_37B78(uint64_t a1)
{
  sub_37110(319, &qword_78530, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_91Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_92Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_37E2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_37110(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_5BCE4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_37F1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_37110(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_5BCE4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_37FD0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_38090(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38134(uint64_t a1)
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_392F4(319, &qword_78550, &type metadata for Opentelemetry_Proto_Metrics_V1_NumberDataPoint.OneOf_Value, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_37110(319, &qword_78558, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_5BCE4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_382A8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_38368(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3840C(uint64_t a1)
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_392F4(319, &qword_78288, &type metadata for UInt64, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_392F4(319, &qword_78280, &type metadata for Double, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_37110(319, &qword_78558, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_5BCE4();
          if (v5 <= 0x3F)
          {
            sub_392F4(319, &qword_78560, &type metadata for Double, &type metadata accessor for Optional);
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

uint64_t sub_385E4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_38728(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_38858(uint64_t a1)
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_37110(319, &qword_78558, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_5BCE4();
      if (v3 <= 0x3F)
      {
        sub_392F4(319, &qword_78560, &type metadata for Double, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_37110(319, &qword_78568, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_38A28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_38AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38B8C(uint64_t a1)
{
  sub_392F4(319, &qword_78288, &type metadata for UInt64, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_38C58(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_38D18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38DBC(uint64_t a1)
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_37110(319, &qword_78570, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_5BCE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_38EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_5BCE4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_38F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_5BCE4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_38FF8(uint64_t a1)
{
  result = sub_5BCE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_39088(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_39148(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_391EC(uint64_t a1)
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_392F4(319, &qword_78578, &type metadata for Opentelemetry_Proto_Metrics_V1_Exemplar.OneOf_Value, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_5BCE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_392F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_39348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_39394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_393FC()
{
  result = qword_78600;
  if (!qword_78600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78600);
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v64 = *(v4 - 8);
  v5 = off_70AD0(v4 - 8);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AD0(v5);
  v8 = &v57 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  v10 = off_70AD0(v9 - 8);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AD0(v10);
  v66 = (&v57 - v12);
  v13 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  v14 = off_70AD0(v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AD0(v14);
  v18 = (&v57 - v17);
  v19 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v20 = *(v19 - 8);
  v21 = off_70AD0(v19);
  v23 = (&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = off_70AD0(v21);
  v26 = (&v57 - v25);
  off_70AD0(v24);
  v28 = &v57 - v27;
  v29 = sub_A08C(a2);
  sub_D0E0(v29);
  Opentelemetry_Proto_Common_V1_AnyValue.init()(v28);
  sub_62FC(a1, v68);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.stringValue.setter(*&v67[0], *(&v67[0] + 1));
    goto LABEL_9;
  }

  sub_62FC(a1, v68);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.setter(*v67);
    goto LABEL_9;
  }

  sub_62FC(a1, v68);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.intValue.setter(*&v67[0]);
    goto LABEL_9;
  }

  sub_62FC(a1, v68);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.setter(v67[0]);
    goto LABEL_9;
  }

  sub_62FC(a1, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78668, &qword_61A70);
  if (swift_dynamicCast())
  {
    v59 = a1;
    v60 = a2;
    v33 = *&v67[0];
    Opentelemetry_Proto_Common_V1_ArrayValue.init()(v18);
    v34 = v33[2];
    if (v34)
    {
      v35 = *v18;
      v66 = v33;
      v36 = (v33 + 4);
      do
      {
        sub_62FC(v36, v68);
        Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(v68, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_3A1A4(0, v35[2] + 1, 1, v35, &qword_78670, &qword_61A78, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        }

        v38 = v35[2];
        v37 = v35[3];
        if (v38 >= v37 >> 1)
        {
          v35 = sub_3A1A4((v37 > 1), v38 + 1, 1, v35, &qword_78670, &qword_61A78, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        }

        v35[2] = v38 + 1;
        sub_3A13C(v26, v35 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v38, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v36 += 32;
        --v34;
      }

      while (v34);

      *v18 = v35;
    }

    else
    {
    }

    sub_3A380(v18, v16, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    Opentelemetry_Proto_Common_V1_AnyValue.arrayValue.setter(v16);
    __swift_destroy_boxed_opaque_existential_0(v59);
    a2 = v60;
    sub_3A3E8(v60, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    v30 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
    v31 = v18;
    goto LABEL_10;
  }

  sub_62FC(a1, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78080, &unk_5EEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v30 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue;
    v31 = a2;
LABEL_10:
    sub_3A3E8(v31, v30);
    return sub_3A13C(v28, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  v59 = a1;
  v60 = a2;
  v39 = *&v67[0];
  result = Opentelemetry_Proto_Common_V1_KeyValueList.init()(v66);
  v40 = 0;
  v42 = v39 + 64;
  v41 = *(v39 + 64);
  v58 = v39;
  v43 = 1 << *(v39 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v41;
  v46 = (v43 + 63) >> 6;
  if ((v44 & v41) != 0)
  {
LABEL_30:
    while (1)
    {
      v48 = __clz(__rbit64(v45)) | (v40 << 6);
      v49 = (*(v58 + 48) + 16 * v48);
      v50 = *v49;
      v51 = v49[1];
      sub_39E64(*(v58 + 56) + 32 * v48, v68);
      v61 = v68[0];
      v62 = v68[1];

      if (!v51)
      {
        break;
      }

      v45 &= v45 - 1;
      v67[1] = v62;
      v67[0] = v61;
      if (*(&v62 + 1))
      {
        sub_9B3C(v67, v68);
        Opentelemetry_Proto_Common_V1_KeyValue.init()(v8);

        *v8 = v50;
        *(v8 + 1) = v51;
        sub_62FC(v68, v67);
        Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(v67, v23);
        Opentelemetry_Proto_Common_V1_KeyValue.value.setter(v23);
        sub_3A380(v8, v65, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        v52 = *v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_3A1A4(0, v52[2] + 1, 1, v52, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        }

        v54 = v52[2];
        v53 = v52[3];
        if (v54 >= v53 >> 1)
        {
          v52 = sub_3A1A4((v53 > 1), v54 + 1, 1, v52, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        }

        __swift_destroy_boxed_opaque_existential_0(v68);
        v52[2] = v54 + 1;
        sub_3A13C(v65, v52 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v54, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        *v66 = v52;
        result = sub_3A3E8(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (!v45)
        {
          goto LABEL_26;
        }
      }

      else
      {

        result = sub_39ED4(v67);
        if (!v45)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_38:

    v55 = v66;
    v56 = v63;
    sub_3A380(v66, v63, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    Opentelemetry_Proto_Common_V1_AnyValue.kvlistValue.setter(v56);
    __swift_destroy_boxed_opaque_existential_0(v59);
    a2 = v60;
    sub_3A3E8(v60, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    v30 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
    v31 = v55;
    goto LABEL_10;
  }

LABEL_26:
  while (1)
  {
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v47 >= v46)
    {
      goto LABEL_38;
    }

    v45 = *(v42 + 8 * v47);
    ++v40;
    if (v45)
    {
      v40 = v47;
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_39E64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_39ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *Array<A>.init(from:)(uint64_t a1)
{
  v2 = sub_3A7B0(_swiftEmptyArrayStorage);
  v27 = *(a1 + 16);
  if (!v27)
  {
LABEL_16:

    v25 = sub_17740(v2);

    return _sSa16TelemetrySupportAA38Opentelemetry_Proto_Common_V1_KeyValueVRszlE4fromSayACGSDySSypSgG_tcfC_0(v25);
  }

  v3 = 0;
  v4 = (a1 + 56);
  while (v3 < *(a1 + 16))
  {
    v8 = *(v4 - 3);
    v7 = *(v4 - 2);
    v10 = *(v4 - 1);
    v9 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_9094(v8, v7);
    v14 = v2[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_20;
    }

    v18 = v13;
    if (v2[3] < v17)
    {
      sub_17CCC(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_9094(v8, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v12;
    sub_17F8C();
    v12 = v24;
    if (v18)
    {
LABEL_3:
      v5 = v12;

      v6 = (v2[7] + 16 * v5);
      *v6 = v10;
      v6[1] = v9;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v2[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v7;
    v21 = (v2[7] + 16 * v12);
    *v21 = v10;
    v21[1] = v9;
    v22 = v2[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_21;
    }

    v2[2] = v23;
LABEL_4:
    ++v3;
    v4 += 4;
    if (v27 == v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_5C3C4();
  __break(1u);
  return result;
}

uint64_t sub_3A13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_3A1A4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_3A380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *_sSa16TelemetrySupportAA38Opentelemetry_Proto_Common_V1_KeyValueVRszlE4fromSayACGSDySSypSgG_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  off_70AD0(v2 - 8);
  v26 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v25 = *(v4 - 8);
  v5 = off_70AD0(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = off_70AD0(v5);
  v10 = &v25 - v9;
  v11 = 0;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v11;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v14)) | (v11 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    sub_39E64(*(a1 + 56) + 32 * v18, v30);
    v27 = v30[0];
    v28 = v30[1];

    if (!v21)
    {
LABEL_16:

      return v16;
    }

    v14 &= v14 - 1;
    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      sub_9B3C(v29, v30);
      Opentelemetry_Proto_Common_V1_KeyValue.init()(v10);

      *v10 = v20;
      *(v10 + 1) = v21;
      sub_62FC(v30, v29);
      v22 = v26;
      Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(v29, v26);
      Opentelemetry_Proto_Common_V1_KeyValue.value.setter(v22);
      sub_3A380(v10, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_3A1A4(0, v16[2] + 1, 1, v16, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      }

      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        v16 = sub_3A1A4((v23 > 1), v24 + 1, 1, v16, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      }

      __swift_destroy_boxed_opaque_existential_0(v30);
      v16[2] = v24 + 1;
      sub_3A13C(v7, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      result = sub_3A3E8(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    }

    else
    {

      result = sub_39ED4(v29);
    }
  }

  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v15)
    {
      goto LABEL_16;
    }

    v14 = *(a1 + 64 + 8 * v11);
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3A7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78270, &unk_5F9D0);
    v3 = sub_5C374();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_9094(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.attributes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(uint64_t a1)
{
  result = qword_7DC80;
  if (!qword_7DC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  return sub_5BCD4();
}

uint64_t sub_3AB40()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7D968);
  __swift_project_value_buffer(v0, qword_7D968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attributes";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dropped_attributes_count";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_3AD10()
{
  if (qword_7D960 != -1)
  {
    swift_once();
  }

  v0 = sub_5C044();

  return __swift_project_value_buffer(v0, qword_7D968);
}

uint64_t static Opentelemetry_Proto_Resource_V1_Resource._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_7D960 != -1)
  {
    swift_once();
  }

  v2 = sub_5C044();
  v3 = __swift_project_value_buffer(v2, qword_7D968);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
        sub_3B880(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_5BE84();
      }

      else if (result == 2)
      {
        sub_5BE64();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0), sub_3B880(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue), result = sub_5BFD4(), !v4))
  {
    if (!v3[2] || (result = sub_5BFC4(), !v4))
    {
      type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Resource_V1_Resource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  sub_5BCE4();
  sub_3B880(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

Swift::Int Opentelemetry_Proto_Resource_V1_Resource.hashValue.getter()
{
  sub_5C454();
  type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  sub_3B880(&qword_78680, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_3B160@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  return sub_5BCD4();
}

uint64_t sub_3B1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B880(&qword_78690, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_3B258@<X0>(uint64_t a1@<X8>)
{
  if (qword_7D960 != -1)
  {
    swift_once();
  }

  v2 = sub_5C044();
  v3 = __swift_project_value_buffer(v2, qword_7D968);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_3B300(uint64_t a1)
{
  v2 = sub_3B880(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_3B36C(uint64_t a1, uint64_t a2)
{
  sub_3B880(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);

  return sub_5BF14();
}

uint64_t sub_3B3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_5BCE4();
  sub_3B880(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_3B5D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_3B694(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3B738(uint64_t a1)
{
  sub_3B7C4(319);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3B7C4(uint64_t a1)
{
  if (!qword_781C8)
  {
    type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(255);
    v1 = sub_5C1A4();
    if (!v2)
    {
      atomic_store(v1, &qword_781C8);
    }
  }
}

uint64_t sub_3B81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3B880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3B8C8(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3B9A0()
{
  sub_5BAF4();
  off_70B48();
  v0 = sub_5BAD4();
  __swift_allocate_value_buffer(v0, qword_80978);
  __swift_project_value_buffer(v0, qword_80978);
  sub_5BAE4();
  return sub_5BAC4();
}

uint64_t sub_3BAE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78710, &qword_61E48);
  v0 = sub_5BAD4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5EBD0;
  if (qword_7DC98 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_80978);
  result = (*(v1 + 16))(v3 + v2, v4, v0);
  qword_80990 = v3;
  return result;
}

uint64_t *sub_3BC00()
{
  if (qword_7DCA0 != -1)
  {
    swift_once();
  }

  return &qword_80990;
}

uint64_t sub_3BC50()
{
  if (qword_7DCA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_3BCB8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_5BAF4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_5BAE4();
}

uint64_t sub_3BD50(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_3BDE8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_3BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a5;
  v29 = a1;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  off_70B48();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78698, &qword_61C60);
  v27 = *(v12 - 8);
  v28 = v12;
  off_70B48();
  v14 = v23 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786A0, &qword_61C68);
  v24 = *(v26 - 8);
  off_70B48();
  v16 = v23 - v15;
  if (qword_7DC98 != -1)
  {
    swift_once();
  }

  v17 = sub_5BAD4();
  v23[1] = __swift_project_value_buffer(v17, qword_80978);
  v23[0] = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  sub_3C2B8(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
  sub_5BCB4();
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_3C2B8(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
  sub_5BCA4();
  (*(v10 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a2);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = v25;
  (*(v10 + 32))(&v19[v18], v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_5BC94();
  sub_3DD98(&qword_786B8, &qword_786A0, &qword_61C68, &protocol conformance descriptor for ProtobufDeserializer<A>);
  sub_3DD98(&qword_786C0, &qword_78698, &qword_61C60, &protocol conformance descriptor for ProtobufSerializer<A>);
  v20 = v28;
  v21 = v26;
  sub_5BC84();

  (*(v27 + 8))(v14, v20);
  return (*(v24 + 8))(v16, v21);
}

uint64_t sub_3C2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a7 + 16) + **(a7 + 16));
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1B30;

  return v15(a1, a2, a3, a5, a7);
}

uint64_t sub_3C448()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3C4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 32);
  v10 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_65E4;

  return sub_3C300(a1, a2, a3, v3 + v10, v8, v11, v9);
}

uint64_t sub_3C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786C8, &qword_61C88);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786D0, &qword_61C90);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786D8, &unk_61C98);
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_3C77C, 0, 0);
}

uint64_t sub_3C77C()
{
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  *v1 = v0;
  v1[1] = sub_3C840;
  v3 = v0[13];
  v4 = v0[10];

  return ServerRequest.init(stream:)(v3, v4, v2);
}

uint64_t sub_3C840()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_3CCA4, 0, 0);
  }

  else
  {
    v10 = (*(v2[6] + 16) + **(v2[6] + 16));
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_3CA3C;
    v4 = v2[17];
    v5 = v2[13];
    v6 = v2[6];
    v7 = v2[4];
    v8 = v2[5];

    return v10(v4, v5, v7, v8, v6);
  }
}

uint64_t sub_3CA3C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_3CD30;
  }

  else
  {
    v5 = sub_3CBAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3CBAC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v3 + 16))(v0[16], v1, v2);
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_5BB04();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_3CCA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3CD30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_5BB34();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  v6[10] = swift_task_alloc();
  v6[11] = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_3CEBC, 0, 0);
}

uint64_t sub_3CEBC()
{
  v9 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786D0, &qword_61C90);
  sub_5BA64();
  v8 = (*(v9 + 16) + **(v9 + 16));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_3D004;
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];

  return v8(v2, v3, v5, v6, v4);
}

uint64_t sub_3D004()
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  sub_3D29C(v2);
  if (v0)
  {
    v3 = sub_3D210;
  }

  else
  {
    v3 = sub_3D134;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3D134()
{
  sub_5BB14();
  sub_5BB14();
  sub_5BAB4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3D210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3D29C(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3E8F8, 0, 0);
}

uint64_t sub_3D338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v12;
  *(v8 + 112) = v13;
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_3D380, 0, 0);
}

uint64_t sub_3D380()
{
  if (qword_7DC98 != -1)
  {
    swift_once();
  }

  v1 = sub_5BAD4();
  v2 = __swift_project_value_buffer(v1, qword_80978);
  v3 = swift_task_alloc();
  v0[15] = v3;
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  *v3 = v0;
  v3[1] = sub_3D4A8;
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  v10 = v0[2];

  return GRPCClient.unary<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v10, v9, v2, v7, v8, v5, v6, v4);
}

uint64_t sub_3D4A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_3D59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_65E4;

  return sub_3D338(a1, a2, a3, a4, a5, a6, a7, v12);
}

uint64_t sub_3D6B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3D6D4, 0, 0);
}

uint64_t sub_3D6D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78708, &qword_61E40);
  sub_5BAA4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3D768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786E0, &qword_61CC8);
  v9[11] = v10;
  v9[12] = *(v10 - 8);
  v9[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786E8, &qword_61CD0);
  v9[14] = v11;
  v9[15] = *(v11 - 8);
  v9[16] = swift_task_alloc();

  return _swift_task_switch(sub_3D8AC, 0, 0);
}

void sub_3D8AC()
{
  v3 = *(v0 + 72);
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  sub_3C2B8(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
  sub_5BCA4();
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_3C2B8(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
  sub_5BCB4();
  v2 = *(v3 + 8) + **(v3 + 8);
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  sub_3DD98(&qword_786F0, &qword_786E8, &qword_61CD0, &protocol conformance descriptor for ProtobufSerializer<A>);
  sub_3DD98(&qword_786F8, &qword_786E0, &qword_61CC8, &protocol conformance descriptor for ProtobufDeserializer<A>);
  *v1 = v0;
  v1[1] = sub_3DAFC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_3DAFC()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_3DD28, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_3DD28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3DD98(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_3DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v14;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = sub_5BB34();
  v9[12] = v10;
  v9[13] = *(v10 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  v9[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78700, &qword_61CE8);
  v9[17] = v11;
  v9[18] = *(v11 - 8);
  v9[19] = swift_task_alloc();

  return _swift_task_switch(sub_3DF78, 0, 0);
}

uint64_t sub_3DF78()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[4];
  sub_3E2D0(v0[3], v0[16]);
  (*(v2 + 16))(v1, v4, v3);
  sub_5BA44();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_3E084;
  v6 = v0[19];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];
  v13 = v0[2];

  return sub_3D768(v13, v6, v12, v10, v11, v8, v9, v7);
}

uint64_t sub_3E084()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_3E234;
  }

  else
  {
    v2 = sub_3E198;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3E198()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_3E234()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_3E2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3E364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_65E4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_3E4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_65E4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_3E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B30;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_3E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = (*(a14 + 8) + **(a14 + 8));
  v18 = swift_task_alloc();
  *(v14 + 16) = v18;
  *v18 = v14;
  v18[1] = sub_65E4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_3E8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t Opentelemetry_Proto_Logs_V1_SeverityNumber.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x19;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_3E954@<X0>(uint64_t *a1@<X8>)
{
  result = Opentelemetry_Proto_Logs_V1_SeverityNumber.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_3E97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_48BD8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecordFlags.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 255)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v3 = result == 255;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecordFlags.rawValue.getter()
{
  v1 = 255;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_3EA58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result == 0;
  if (result == 255)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a2 = v3;
  if (result == 255)
  {
    v2 = 1;
  }

  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_3EA84()
{
  v1 = 255;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t *sub_3EAB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  v4 = *result == 255;
  if (*result == 255)
  {
    v2 = 1;
  }

  *a2 = v2;
  v5 = v4 || v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

void sub_3EAE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 255;
  if (!*v1)
  {
    v3 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_3EB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_49B94();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_3EB54(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v3;
  }

  if (*a2)
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 8))
  {
    v4 = *a2;
  }

  return v2 == v4;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.resourceLogs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70B50(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78298, &qword_5FB00);
  v7 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_405A4(v5, a1, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_3EEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70B50(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78298, &qword_5FB00);
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_405A4(v6, a2, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_3F054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v5 = *(v4 - 8);
  off_70B50(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3FCFC(a1, v7, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 28);
  sub_60C4(a2 + v8, &qword_78298, &qword_5FB00);
  sub_405A4(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 28);
  sub_60C4(v1 + v3, &qword_78298, &qword_5FB00);
  sub_405A4(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 28);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_78298, &qword_5FB00);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Opentelemetry_Proto_Resource_V1_Resource.init()(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78298, &qword_5FB00);
    }
  }

  else
  {
    sub_405A4(v7, v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  return sub_3F44C;
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.scope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70B50(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_782A0, &qword_5FB08);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_405A4(v5, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_3F770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70B50(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_782A0, &qword_5FB08);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_405A4(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_3F8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  off_70B50(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3FCFC(a1, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 28);
  sub_60C4(a2 + v8, &qword_782A0, &qword_5FB08);
  sub_405A4(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.scope.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 28);
  sub_60C4(v1 + v3, &qword_782A0, &qword_5FB08);
  sub_405A4(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Logs_V1_ScopeLogs.scope.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 28);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_782A0, &qword_5FB08);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_782A0, &qword_5FB08);
    }
  }

  else
  {
    sub_405A4(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  return sub_3FCC0;
}

uint64_t sub_3FCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3FD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_3FE00(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  off_70B50(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_A024(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_60C4(v11, a1, a2);
  return v14;
}

uint64_t sub_3FF38(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_60C4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.schemaURL.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.schemaURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_400A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_40140(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_40234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = _swiftEmptyArrayStorage;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0xE000000000000000;
  v5 = a1(0);
  sub_5BCD4();
  v6 = *(v5 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

void Opentelemetry_Proto_Logs_V1_LogRecord.severityNumber.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.severityNumber.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.severityText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.severityText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_70B50(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(v1 + *(v6 + 60), v5, &qword_78110, &qword_61E70);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_405A4(v5, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  Opentelemetry_Proto_Common_V1_AnyValue.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_405A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4060C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_70B50(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(a1 + *(v7 + 60), v6, &qword_78110, &qword_61E70);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_405A4(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  Opentelemetry_Proto_Common_V1_AnyValue.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_40764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  off_70B50(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3FCFC(a1, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  sub_60C4(a2 + v8, &qword_78110, &qword_61E70);
  sub_405A4(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.body.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  sub_60C4(v1 + v3, &qword_78110, &qword_61E70);
  sub_405A4(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Logs_V1_LogRecord.body.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_78110, &qword_61E70);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Opentelemetry_Proto_Common_V1_AnyValue.init()(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78110, &qword_61E70);
    }
  }

  else
  {
    sub_405A4(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  return sub_40B5C;
}

void sub_40B98(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_3FCFC(v12, v11, a6);
    sub_60C4(v15 + v10, a3, a4);
    sub_405A4(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_3FD64(v12, a6);
  }

  else
  {
    sub_60C4(v15 + v10, a3, a4);
    sub_405A4(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Opentelemetry_Proto_Logs_V1_LogRecord.hasBody.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_70B50(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(v0 + *(v4 + 60), v3, &qword_78110, &qword_61E70);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_60C4(v3, &qword_78110, &qword_61E70);
  return v6;
}

Swift::Void __swiftcall Opentelemetry_Proto_Logs_V1_LogRecord.clearBody()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  sub_60C4(v0 + v1, &qword_78110, &qword_61E70);
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.attributes.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.traceID.getter()
{
  v1 = *(v0 + 64);
  sub_D038(v1, *(v0 + 72));
  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.traceID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.spanID.getter()
{
  v1 = *(v0 + 80);
  sub_D038(v1, *(v0 + 88));
  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.spanID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.eventName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.eventName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 56);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 56);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = _swiftEmptyArrayStorage;
  *(a1 + 72) = xmmword_61E50;
  *(a1 + 88) = xmmword_61E50;
  *(a1 + 104) = 0xE000000000000000;
  v2 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_5BCD4();
  v3 = *(v2 + 60);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_412C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_41338()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD38);
  __swift_project_value_buffer(v0, qword_7DD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_61E60;
  v4 = v55 + v3;
  v5 = v55 + v3 + v1[14];
  *(v55 + v3) = 0;
  *v5 = "SEVERITY_NUMBER_UNSPECIFIED";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v55 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SEVERITY_NUMBER_TRACE";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v55 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SEVERITY_NUMBER_TRACE2";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v55 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SEVERITY_NUMBER_TRACE3";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v55 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "SEVERITY_NUMBER_TRACE4";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v55 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SEVERITY_NUMBER_DEBUG";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v55 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "SEVERITY_NUMBER_DEBUG2";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v55 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SEVERITY_NUMBER_DEBUG3";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v55 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "SEVERITY_NUMBER_DEBUG4";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  v23 = (v55 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SEVERITY_NUMBER_INFO";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v55 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SEVERITY_NUMBER_INFO2";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v55 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SEVERITY_NUMBER_INFO3";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v55 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SEVERITY_NUMBER_INFO4";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v8();
  v31 = (v55 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SEVERITY_NUMBER_WARN";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v55 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SEVERITY_NUMBER_WARN2";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  v35 = (v55 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SEVERITY_NUMBER_WARN3";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v55 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "SEVERITY_NUMBER_WARN4";
  *(v37 + 8) = 21;
  *(v37 + 16) = 2;
  v8();
  v38 = (v55 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "SEVERITY_NUMBER_ERROR";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v55 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "SEVERITY_NUMBER_ERROR2";
  *(v41 + 1) = 22;
  v41[16] = 2;
  v8();
  v42 = (v55 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "SEVERITY_NUMBER_ERROR3";
  *(v43 + 1) = 22;
  v43[16] = 2;
  v8();
  v44 = (v55 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "SEVERITY_NUMBER_ERROR4";
  *(v45 + 1) = 22;
  v45[16] = 2;
  v8();
  v46 = (v55 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "SEVERITY_NUMBER_FATAL";
  *(v47 + 1) = 21;
  v47[16] = 2;
  v8();
  v48 = (v55 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "SEVERITY_NUMBER_FATAL2";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v55 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "SEVERITY_NUMBER_FATAL3";
  *(v51 + 1) = 22;
  v51[16] = 2;
  v8();
  v52 = (v55 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "SEVERITY_NUMBER_FATAL4";
  *(v53 + 1) = 22;
  v53[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t sub_41AC4()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD58);
  __swift_project_value_buffer(v0, qword_7DD58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOG_RECORD_FLAGS_DO_NOT_USE";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 255;
  *v10 = "LOG_RECORD_FLAGS_TRACE_FLAGS_MASK";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_41D20()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD78);
  __swift_project_value_buffer(v0, qword_7DD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5EBD0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "resource_logs";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = sub_5C024();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
        sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        sub_5BE84();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0), sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ResourceLogs), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Logs_V1_LogsData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0);
  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_421D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78818, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogsData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_42278(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78088, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogsData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_422E4(uint64_t a1, uint64_t a2)
{
  sub_47EAC(&qword_78088, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogsData);

  return sub_5BF14();
}

uint64_t sub_42360(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_42430()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD98);
  __swift_project_value_buffer(v0, qword_7DD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resource";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scope_logs";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "schema_url";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_5BE54();
          break;
        case 2:
          type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
          sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
          sub_5BE84();
          break;
        case 1:
          type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
          type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
          sub_47EAC(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_42948(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
      sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
      sub_5BFD4();
    }

    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_5BFB4();
    }

    type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_42948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70B50(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v9 = *(v8 - 8);
  off_70B50(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  sub_A024(a1 + *(v12 + 28), v7, &qword_78298, &qword_5FB00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_78298, &qword_5FB00);
  }

  sub_405A4(v7, v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_47EAC(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_5C004();
  return sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
}

uint64_t sub_42BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78810, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ResourceLogs);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_42C9C(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ResourceLogs);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_42D08(uint64_t a1, uint64_t a2)
{
  sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ResourceLogs);

  return sub_5BF14();
}

uint64_t sub_42DB0()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DDB8);
  __swift_project_value_buffer(v0, qword_7DDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scope";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "log_records";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "schema_url";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_5BE54();
          break;
        case 2:
          type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
          sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogRecord);
          sub_5BE84();
          break;
        case 1:
          type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
          type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
          sub_47EAC(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_432CC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
      sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogRecord);
      sub_5BFD4();
    }

    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_5BFB4();
    }

    type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_432CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70B50(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v9 = *(v8 - 8);
  off_70B50(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  sub_A024(a1 + *(v12 + 28), v7, &qword_782A0, &qword_5FB08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_782A0, &qword_5FB08);
  }

  sub_405A4(v7, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_47EAC(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_5C004();
  return sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
}

uint64_t sub_43580(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78808, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ScopeLogs);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_43620(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ScopeLogs);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4368C(uint64_t a1, uint64_t a2)
{
  sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ScopeLogs);

  return sub_5BF14();
}

uint64_t sub_43734()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DDD8);
  __swift_project_value_buffer(v0, qword_7DDD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_5FAD0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "time_unix_nano";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 11;
  *v9 = "observed_time_unix_nano";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "severity_number";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "severity_text";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "body";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "attributes";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dropped_attributes_count";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "flags";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "trace_id";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "span_id";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "event_name";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 6)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
LABEL_26:
            sub_5BEA4();
            goto LABEL_5;
          }

          if (result == 2)
          {
            sub_48BD8();
            sub_5BDA4();
          }
        }

        else
        {
          switch(result)
          {
            case 3:
              goto LABEL_27;
            case 5:
              type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
              type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
              sub_47EAC(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);
              sub_5BEB4();
              break;
            case 6:
              type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
              sub_47EAC(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
              sub_5BE84();
              break;
          }
        }
      }

      else
      {
        if (result > 9)
        {
          if (result != 10)
          {
            if (result == 11)
            {
              goto LABEL_26;
            }

            if (result != 12)
            {
              goto LABEL_5;
            }

LABEL_27:
            sub_5BE54();
            goto LABEL_5;
          }
        }

        else
        {
          if (result == 7)
          {
            sub_5BE64();
            goto LABEL_5;
          }

          if (result == 8)
          {
            sub_5BE94();
            goto LABEL_5;
          }
        }

        sub_5BDC4();
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_5BFF4(), !v4))
  {
    if (!*(v3 + 16) || (sub_48BD8(), result = sub_5BF54(), !v4))
    {
      v9 = *(v3 + 40);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v10 || (result = sub_5BFB4(), !v4))
      {
        result = sub_4410C(v3, a1, a2, a3);
        if (!v4)
        {
          if (*(*(v3 + 48) + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_47EAC(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BFD4();
          }

          if (*(v3 + 56))
          {
            sub_5BFC4();
          }

          if (*(v3 + 60))
          {
            sub_5BFE4();
          }

          v11 = *(v3 + 64);
          v12 = *(v3 + 72);
          v13 = v12 >> 62;
          if ((v12 >> 62) > 1)
          {
            if (v13 != 2)
            {
              goto LABEL_26;
            }

            v14 = *(v11 + 16);
            v15 = *(v11 + 24);
          }

          else
          {
            if (!v13)
            {
              if ((v12 & 0xFF000000000000) == 0)
              {
LABEL_26:
                v16 = *(v3 + 80);
                v17 = *(v3 + 88);
                v18 = v17 >> 62;
                if ((v17 >> 62) > 1)
                {
                  if (v18 != 2)
                  {
                    goto LABEL_35;
                  }

                  v19 = *(v16 + 16);
                  v20 = *(v16 + 24);
                }

                else
                {
                  if (!v18)
                  {
                    if ((v17 & 0xFF000000000000) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_34;
                  }

                  v19 = v16;
                  v20 = v16 >> 32;
                }

                if (v19 != v20)
                {
LABEL_34:
                  sub_5BF74();
                }

LABEL_35:
                if (*(v3 + 8))
                {
                  sub_5BFF4();
                }

                v21 = *(v3 + 104);
                v22 = HIBYTE(v21) & 0xF;
                if ((v21 & 0x2000000000000000) == 0)
                {
                  v22 = *(v3 + 96) & 0xFFFFFFFFFFFFLL;
                }

                if (v22)
                {
                  sub_5BFB4();
                }

                type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
                return sub_5BCC4();
              }

LABEL_25:
              sub_5BF74();
              goto LABEL_26;
            }

            v14 = v11;
            v15 = v11 >> 32;
          }

          if (v14 == v15)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }
    }
  }

  return result;
}

uint64_t sub_4410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_70B50(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v9 = *(v8 - 8);
  off_70B50(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(a1 + *(v12 + 60), v7, &qword_78110, &qword_61E70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_78110, &qword_61E70);
  }

  sub_405A4(v7, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_47EAC(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_5C004();
  return sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
}

Swift::Int sub_44374(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_5C454();
  a1(0);
  sub_47EAC(a2, a3, a4);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_443FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 72) = xmmword_61E50;
  *(a2 + 88) = xmmword_61E50;
  *(a2 + 104) = 0xE000000000000000;
  sub_5BCD4();
  v4 = *(a1 + 60);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_444D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_44548(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_44610(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78800, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogRecord);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_446B0(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogRecord);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4471C(uint64_t a1, uint64_t a2)
{
  sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_LogRecord);

  return sub_5BF14();
}

uint64_t sub_4479C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v5 = *(v4 - 8);
  v194 = v4;
  v195 = v5;
  v6 = off_70B50(v4);
  v8 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v6);
  v10 = &v163 - v9;
  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v12 = *(v11 - 8);
  off_70B50(v11);
  v14 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_70B50(v15 - 8);
  v17 = &v163 - v16;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  off_70B50(v187);
  v19 = &v163 - v18;
  v190 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v184 = *(v190 - 8);
  v20 = off_70B50(v190);
  v196 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v20);
  v197 = &v163 - v22;
  v188 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v23 = *(v188 - 8);
  off_70B50(v188);
  v185 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70B50(v25 - 8);
  v186 = &v163 - v26;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  off_70B50(v189);
  v193 = &v163 - v27;
  v28 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v29 = off_70B50(v28);
  v192 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = off_70B50(v29);
  v191 = &v163 - v33;
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
    goto LABEL_254;
  }

  if (!v34 || a1 == a2)
  {
    v161 = 1;
    return v161 & 1;
  }

  v177 = v8;
  v183 = v31;
  v169 = 0;
  v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v36 = a1 + v35;
  v37 = 0;
  v180 = a2 + v35;
  v179 = (v23 + 48);
  v173 = (v12 + 48);
  v38 = *(v32 + 72);
  v175 = v11;
  v166 = v14;
  v168 = v17;
  v174 = v19;
  v39 = v188;
  v41 = v191;
  v40 = v192;
  v42 = v193;
  v182 = v34;
  v171 = v36;
  v170 = v38;
  v178 = v10;
  while (1)
  {
    v43 = v38 * v37;
    sub_3FCFC(v36 + v38 * v37, v41, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    if (v37 == v182)
    {
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
    }

    sub_3FCFC(v180 + v43, v40, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    v44 = *(v183 + 28);
    v45 = *(v189 + 48);
    sub_A024(v41 + v44, v42, &qword_782A0, &qword_5FB08);
    sub_A024(v40 + v44, v42 + v45, &qword_782A0, &qword_5FB08);
    v46 = *v179;
    v47 = (*v179)(v42, 1, v39);
    v181 = v37;
    if (v47 == 1)
    {
      if (v46(v42 + v45, 1, v39) != 1)
      {
        goto LABEL_249;
      }

      sub_60C4(v42, &qword_782A0, &qword_5FB08);
      v48 = v178;
    }

    else
    {
      v49 = v186;
      sub_A024(v42, v186, &qword_782A0, &qword_5FB08);
      if (v46(v42 + v45, 1, v39) == 1)
      {
        sub_3FD64(v49, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
LABEL_249:
        sub_60C4(v42, &qword_78640, &unk_628E0);
        goto LABEL_253;
      }

      v50 = v42 + v45;
      v51 = v185;
      sub_405A4(v50, v185, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_47EAC(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v52 = sub_5C114();
      sub_3FD64(v51, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v42 = v193;
      sub_3FD64(v49, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v42, &qword_782A0, &qword_5FB08);
      v48 = v178;
      if ((v52 & 1) == 0)
      {
        goto LABEL_253;
      }
    }

    v53 = *v41;
    v54 = *v40;
    v55 = *(*v41 + 16);
    if (v55 != *(*v40 + 16))
    {
      goto LABEL_253;
    }

    if (v55 && v53 != v54)
    {
      break;
    }

LABEL_241:
    if ((v41[1] != v40[1] || v41[2] != v40[2]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_253;
    }

    sub_5BCE4();
    sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v161 = sub_5C114();
    sub_3FD64(v40, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    sub_3FD64(v41, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    if (v161)
    {
      v37 = v181 + 1;
      v36 = v171;
      v38 = v170;
      if (v181 + 1 != v182)
      {
        continue;
      }
    }

    return v161 & 1;
  }

  v56 = 0;
  v57 = (*(v184 + 80) + 32) & ~*(v184 + 80);
  v58 = v53 + v57;
  v172 = v54 + v57;
  v59 = *(v184 + 72);
  v167 = v55;
  v165 = v58;
  v164 = v59;
  while (1)
  {
    v60 = v59 * v56;
    v61 = v197;
    sub_3FCFC(v58 + v59 * v56, v197, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    if (v56 == v55)
    {
      goto LABEL_259;
    }

    v176 = v56;
    v62 = v172 + v60;
    v63 = v196;
    sub_3FCFC(v62, v196, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v64 = v177;
    if (*v61 != *v63 || *(v197 + 8) != *(v196 + 8))
    {
      goto LABEL_252;
    }

    v65 = *(v197 + 16);
    v66 = *(v196 + 16);
    if (*(v196 + 24) == 1)
    {
      switch(v66)
      {
        case 1:
          if (v65 != 1)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 2:
          if (v65 != 2)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 3:
          if (v65 != 3)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 4:
          if (v65 != 4)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 5:
          if (v65 != 5)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 6:
          if (v65 != 6)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 7:
          if (v65 != 7)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 8:
          if (v65 != 8)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 9:
          if (v65 != 9)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 10:
          if (v65 != 10)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 11:
          if (v65 != 11)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 12:
          if (v65 != 12)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 13:
          if (v65 != 13)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 14:
          if (v65 != 14)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 15:
          if (v65 != 15)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 16:
          if (v65 != 16)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 17:
          if (v65 != 17)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 18:
          if (v65 != 18)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 19:
          if (v65 != 19)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 20:
          if (v65 != 20)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 21:
          if (v65 != 21)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 22:
          if (v65 != 22)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 23:
          if (v65 != 23)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 24:
          if (v65 != 24)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        default:
          if (v65)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
      }
    }

    if (v65 != v66)
    {
      goto LABEL_252;
    }

LABEL_23:
    if ((*(v197 + 32) != *(v196 + 32) || *(v197 + 40) != *(v196 + 40)) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_252;
    }

    v67 = *(v190 + 60);
    v68 = *(v187 + 48);
    v69 = v174;
    sub_A024(v197 + v67, v174, &qword_78110, &qword_61E70);
    sub_A024(v196 + v67, v69 + v68, &qword_78110, &qword_61E70);
    v70 = *v173;
    v71 = v175;
    if ((*v173)(v69, 1, v175) == 1)
    {
      if (v70(v69 + v68, 1, v71) != 1)
      {
        goto LABEL_251;
      }

      sub_60C4(v69, &qword_78110, &qword_61E70);
      goto LABEL_31;
    }

    v72 = v168;
    sub_A024(v69, v168, &qword_78110, &qword_61E70);
    if (v70(v69 + v68, 1, v71) == 1)
    {
      break;
    }

    v73 = v69 + v68;
    v74 = v166;
    sub_405A4(v73, v166, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_47EAC(&qword_78158, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);
    v75 = sub_5C114();
    sub_3FD64(v74, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_3FD64(v72, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_60C4(v69, &qword_78110, &qword_61E70);
    if ((v75 & 1) == 0)
    {
      goto LABEL_252;
    }

LABEL_31:
    v76 = *(v197 + 48);
    v77 = *(v196 + 48);
    v78 = *(v76 + 16);
    if (v78 != *(v77 + 16))
    {
      goto LABEL_252;
    }

    if (v78 && v76 != v77)
    {
      v79 = 0;
      v80 = (*(v195 + 80) + 32) & ~*(v195 + 80);
      v81 = v76 + v80;
      v82 = v77 + v80;
      while (v79 < *(v76 + 16))
      {
        v83 = *(v195 + 72) * v79;
        sub_3FCFC(v81 + v83, v48, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (v79 >= *(v77 + 16))
        {
          goto LABEL_257;
        }

        sub_3FCFC(v82 + v83, v64, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_47EAC(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
        v84 = sub_5C114();
        sub_3FD64(v64, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_3FD64(v48, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v84 & 1) == 0)
        {
          goto LABEL_252;
        }

        if (v78 == ++v79)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

LABEL_39:
    if (*(v197 + 56) != *(v196 + 56) || *(v197 + 60) != *(v196 + 60))
    {
      goto LABEL_252;
    }

    v85 = *(v197 + 64);
    v86 = *(v197 + 72);
    v87 = *(v196 + 64);
    v88 = *(v196 + 72);
    v89 = v86 >> 62;
    v90 = v88 >> 62;
    if (v86 >> 62 == 3)
    {
      v91 = 0;
      if (!v85 && v86 == 0xC000000000000000 && v88 >> 62 == 3)
      {
        v91 = 0;
        if (!v87 && v88 == 0xC000000000000000)
        {
          goto LABEL_118;
        }
      }

LABEL_63:
      if (v90 <= 1)
      {
        goto LABEL_64;
      }

      goto LABEL_51;
    }

    if (v89 <= 1)
    {
      if (!v89)
      {
        v91 = BYTE6(v86);
        if (v90 <= 1)
        {
          goto LABEL_64;
        }

        goto LABEL_51;
      }

      LODWORD(v91) = HIDWORD(v85) - v85;
      if (__OFSUB__(HIDWORD(v85), v85))
      {
        goto LABEL_264;
      }

      v91 = v91;
      goto LABEL_63;
    }

    if (v89 == 2)
    {
      v97 = *(v85 + 16);
      v96 = *(v85 + 24);
      v94 = __OFSUB__(v96, v97);
      v91 = v96 - v97;
      if (v94)
      {
        goto LABEL_265;
      }

      goto LABEL_63;
    }

    v91 = 0;
    if (v90 <= 1)
    {
LABEL_64:
      if (v90)
      {
        LODWORD(v95) = HIDWORD(v87) - v87;
        if (__OFSUB__(HIDWORD(v87), v87))
        {
          goto LABEL_261;
        }

        v95 = v95;
      }

      else
      {
        v95 = BYTE6(v88);
      }

      goto LABEL_68;
    }

LABEL_51:
    if (v90 != 2)
    {
      if (v91)
      {
        goto LABEL_252;
      }

      goto LABEL_118;
    }

    v93 = *(v87 + 16);
    v92 = *(v87 + 24);
    v94 = __OFSUB__(v92, v93);
    v95 = v92 - v93;
    if (v94)
    {
      goto LABEL_260;
    }

LABEL_68:
    if (v91 != v95)
    {
      goto LABEL_252;
    }

    if (v91 < 1)
    {
      goto LABEL_118;
    }

    if (v89 > 1)
    {
      if (v89 == 2)
      {
        v105 = *(v85 + 16);
        v106 = *(v85 + 24);
        v107 = sub_5B944();
        if (v107)
        {
          v108 = sub_5B964();
          if (__OFSUB__(v105, v108))
          {
            goto LABEL_272;
          }

          v107 += v105 - v108;
        }

        if (__OFSUB__(v106, v105))
        {
          goto LABEL_269;
        }

        goto LABEL_92;
      }

      memset(__s1, 0, 14);
      if (!v90)
      {
LABEL_102:
        v198 = v87;
        v199 = v88;
        v200 = BYTE2(v88);
        v201 = BYTE3(v88);
        v202 = BYTE4(v88);
        v116 = BYTE6(v88);
        v203 = BYTE5(v88);
        v117 = &v198;
        goto LABEL_117;
      }

      if (v90 == 2)
      {
        v113 = *(v87 + 16);
        v114 = *(v87 + 24);
        v103 = sub_5B944();
        if (v103)
        {
          v115 = sub_5B964();
          if (__OFSUB__(v113, v115))
          {
            goto LABEL_285;
          }

          v103 += v113 - v115;
        }

        v94 = __OFSUB__(v114, v113);
        v99 = v114 - v113;
        if (v94)
        {
          goto LABEL_279;
        }

        v104 = sub_5B954();
        if (!v103)
        {
          goto LABEL_289;
        }
      }

      else
      {
        v121 = v87;
        v99 = (v87 >> 32) - v87;
        if (v87 >> 32 < v87)
        {
          goto LABEL_277;
        }

        v122 = sub_5B944();
        if (!v122)
        {
          sub_5B954();
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          sub_5B954();
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:

          __break(1u);
          JUMPOUT(0x45F30);
        }

        v123 = v122;
        v124 = sub_5B964();
        if (__OFSUB__(v121, v124))
        {
          goto LABEL_281;
        }

        v103 = v121 - v124 + v123;
        v104 = sub_5B954();
        if (!v103)
        {
          goto LABEL_288;
        }
      }
    }

    else
    {
      if (v89)
      {
        v109 = v85;
        if (v85 >> 32 < v85)
        {
          goto LABEL_268;
        }

        v107 = sub_5B944();
        if (v107)
        {
          v110 = sub_5B964();
          if (__OFSUB__(v109, v110))
          {
            goto LABEL_273;
          }

          v107 += v109 - v110;
        }

LABEL_92:
        sub_5B954();
        v111 = v87;
        v112 = v169;
        sub_13DF0(v107, v111, v88, __s1);
        v169 = v112;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_118;
      }

      __s1[0] = *(v197 + 64);
      LOWORD(__s1[1]) = v86;
      BYTE2(__s1[1]) = BYTE2(v86);
      BYTE3(__s1[1]) = BYTE3(v86);
      BYTE4(__s1[1]) = BYTE4(v86);
      BYTE5(__s1[1]) = BYTE5(v86);
      if (!v90)
      {
        goto LABEL_102;
      }

      if (v90 == 1)
      {
        v98 = v87;
        v99 = (v87 >> 32) - v87;
        if (v87 >> 32 < v87)
        {
          goto LABEL_276;
        }

        v100 = sub_5B944();
        if (!v100)
        {
          goto LABEL_292;
        }

        v101 = v100;
        v102 = sub_5B964();
        if (__OFSUB__(v98, v102))
        {
          goto LABEL_280;
        }

        v103 = v98 - v102 + v101;
        v104 = sub_5B954();
        if (!v103)
        {
          goto LABEL_291;
        }
      }

      else
      {
        v118 = *(v87 + 16);
        v119 = *(v87 + 24);
        v103 = sub_5B944();
        if (v103)
        {
          v120 = sub_5B964();
          if (__OFSUB__(v118, v120))
          {
            goto LABEL_284;
          }

          v103 += v118 - v120;
        }

        v94 = __OFSUB__(v119, v118);
        v99 = v119 - v118;
        if (v94)
        {
          goto LABEL_278;
        }

        v104 = sub_5B954();
        if (!v103)
        {
          goto LABEL_290;
        }
      }
    }

    if (v104 >= v99)
    {
      v116 = v99;
    }

    else
    {
      v116 = v104;
    }

    v117 = v103;
LABEL_117:
    if (memcmp(__s1, v117, v116))
    {
      goto LABEL_252;
    }

LABEL_118:
    v125 = *(v197 + 80);
    v126 = *(v197 + 88);
    v127 = *(v196 + 80);
    v128 = *(v196 + 88);
    v129 = v126 >> 62;
    v130 = v128 >> 62;
    if (v126 >> 62 == 3)
    {
      v131 = 0;
      if (!v125 && v126 == 0xC000000000000000 && v128 >> 62 == 3)
      {
        v131 = 0;
        if (!v127 && v128 == 0xC000000000000000)
        {
          goto LABEL_187;
        }
      }

LABEL_140:
      if (v130 > 1)
      {
        goto LABEL_128;
      }

      goto LABEL_141;
    }

    if (v129 <= 1)
    {
      if (!v129)
      {
        v131 = BYTE6(v126);
        if (v130 > 1)
        {
          goto LABEL_128;
        }

        goto LABEL_141;
      }

      LODWORD(v131) = HIDWORD(v125) - v125;
      if (__OFSUB__(HIDWORD(v125), v125))
      {
        goto LABEL_267;
      }

      v131 = v131;
      goto LABEL_140;
    }

    if (v129 == 2)
    {
      v136 = *(v125 + 16);
      v135 = *(v125 + 24);
      v94 = __OFSUB__(v135, v136);
      v131 = v135 - v136;
      if (v94)
      {
        goto LABEL_266;
      }

      goto LABEL_140;
    }

    v131 = 0;
    if (v130 > 1)
    {
LABEL_128:
      if (v130 != 2)
      {
        if (v131)
        {
          goto LABEL_252;
        }

        goto LABEL_187;
      }

      v133 = *(v127 + 16);
      v132 = *(v127 + 24);
      v94 = __OFSUB__(v132, v133);
      v134 = v132 - v133;
      if (v94)
      {
        goto LABEL_263;
      }

      goto LABEL_145;
    }

LABEL_141:
    if (v130)
    {
      LODWORD(v134) = HIDWORD(v127) - v127;
      if (__OFSUB__(HIDWORD(v127), v127))
      {
        goto LABEL_262;
      }

      v134 = v134;
    }

    else
    {
      v134 = BYTE6(v128);
    }

LABEL_145:
    if (v131 != v134)
    {
      goto LABEL_252;
    }

    if (v131 >= 1)
    {
      if (v129 > 1)
      {
        if (v129 != 2)
        {
          memset(__s1, 0, 14);
          if (!v130)
          {
LABEL_171:
            v198 = v127;
            v199 = v128;
            v200 = BYTE2(v128);
            v201 = BYTE3(v128);
            v202 = BYTE4(v128);
            v151 = BYTE6(v128);
            v203 = BYTE5(v128);
            v152 = &v198;
LABEL_186:
            if (memcmp(__s1, v152, v151))
            {
              goto LABEL_252;
            }

            goto LABEL_187;
          }

          if (v130 != 2)
          {
            v153 = v127;
            v154 = (v127 >> 32) - v127;
            if (v127 >> 32 < v127)
            {
              goto LABEL_283;
            }

            v155 = sub_5B944();
            if (v155)
            {
              v156 = sub_5B964();
              if (__OFSUB__(v153, v156))
              {
                goto LABEL_286;
              }

              v155 = (v155 + v153 - v156);
            }

            v157 = sub_5B954();
            if (v157 >= v154)
            {
              v151 = v154;
            }

            else
            {
              v151 = v157;
            }

            if (!v155)
            {
              goto LABEL_293;
            }

            if (__s1 == v155)
            {
              goto LABEL_187;
            }

            v152 = v155;
            goto LABEL_186;
          }

          v147 = *(v127 + 16);
          v148 = *(v127 + 24);
          v149 = v169;
          v150 = sub_47EF4(v147, v148, v128 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          goto LABEL_174;
        }

        v139 = *(v125 + 16);
        v140 = *(v125 + 24);
        v141 = sub_5B944();
        if (v141)
        {
          v142 = sub_5B964();
          if (__OFSUB__(v139, v142))
          {
            goto LABEL_274;
          }

          v141 += v139 - v142;
        }

        if (__OFSUB__(v140, v139))
        {
          goto LABEL_271;
        }
      }

      else
      {
        if (!v129)
        {
          __s1[0] = *(v197 + 80);
          LOWORD(__s1[1]) = v126;
          BYTE2(__s1[1]) = BYTE2(v126);
          BYTE3(__s1[1]) = BYTE3(v126);
          BYTE4(__s1[1]) = BYTE4(v126);
          BYTE5(__s1[1]) = BYTE5(v126);
          if (!v130)
          {
            goto LABEL_171;
          }

          if (v130 == 1)
          {
            v137 = v127;
            v138 = v127 >> 32;
            if (v127 >> 32 < v127)
            {
              goto LABEL_282;
            }
          }

          else
          {
            v137 = *(v127 + 16);
            v138 = *(v127 + 24);
          }

          v149 = v169;
          v150 = sub_47EF4(v137, v138, v128 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          if (v149)
          {
            goto LABEL_294;
          }

LABEL_174:
          v169 = v149;
          if ((v150 & 1) == 0)
          {
            goto LABEL_252;
          }

          goto LABEL_187;
        }

        v143 = v125;
        if (v125 >> 32 < v125)
        {
          goto LABEL_270;
        }

        v141 = sub_5B944();
        if (v141)
        {
          v144 = sub_5B964();
          if (__OFSUB__(v143, v144))
          {
            goto LABEL_275;
          }

          v141 += v143 - v144;
        }
      }

      sub_5B954();
      v145 = v127;
      v146 = v169;
      sub_13DF0(v141, v145, v128, __s1);
      v169 = v146;
      if ((__s1[0] & 1) == 0)
      {
        goto LABEL_252;
      }
    }

LABEL_187:
    if ((*(v197 + 96) != *(v196 + 96) || *(v197 + 104) != *(v196 + 104)) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_252;
    }

    sub_5BCE4();
    sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v158 = v196;
    v159 = v197;
    v160 = sub_5C114();
    sub_3FD64(v158, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    sub_3FD64(v159, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v39 = v188;
    v41 = v191;
    v40 = v192;
    v42 = v193;
    v55 = v167;
    if ((v160 & 1) == 0)
    {
      goto LABEL_253;
    }

    v56 = v176 + 1;
    v58 = v165;
    v59 = v164;
    if (v176 + 1 == v167)
    {
      goto LABEL_241;
    }
  }

  sub_3FD64(v72, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_251:
  sub_60C4(v69, &qword_78210, &qword_5F8A8);
LABEL_252:
  sub_3FD64(v196, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  sub_3FD64(v197, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  v41 = v191;
  v40 = v192;
LABEL_253:
  sub_3FD64(v40, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
  sub_3FD64(v41, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
LABEL_254:
  v161 = 0;
  return v161 & 1;
}

uint64_t sub_45F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) - 8;
  v5 = off_70B50(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_3FCFC(v13, v10, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        sub_3FCFC(v14, v7, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        v16 = _s16TelemetrySupport37Opentelemetry_Proto_Logs_V1_LogRecordV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_3FD64(v7, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        sub_3FD64(v10, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_4613C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v5 = *(v4 - 8);
  v225 = v4;
  v226 = v5;
  v6 = off_70B50(v4);
  v224 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v6);
  v9 = &v180 - v8;
  v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v11 = *(v10 - 8);
  off_70B50(v10);
  v13 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_70B50(v14 - 8);
  v16 = &v180 - v15;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  off_70B50(v210);
  v211 = &v180 - v17;
  v214 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v215 = *(v214 - 8);
  v18 = off_70B50(v214);
  v229 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v18);
  v230 = &v180 - v20;
  v213 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v21 = *(v213 - 8);
  off_70B50(v213);
  v206 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70B50(v23 - 8);
  v207 = &v180 - v24;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  off_70B50(v212);
  v219 = &v180 - v25;
  v221 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v218 = *(v221 - 8);
  v26 = off_70B50(v221);
  v223 = (&v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70B50(v26);
  v222 = (&v180 - v28);
  v217 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v29 = *(v217 - 8);
  off_70B50(v217);
  v208 = &v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70B50(v31 - 8);
  v209 = &v180 - v32;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  off_70B50(v216);
  v220 = &v180 - v33;
  v34 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  v35 = off_70B50(v34);
  v228 = (&v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = off_70B50(v35);
  v227 = &v180 - v39;
  v40 = *(a1 + 16);
  if (v40 == *(a2 + 16))
  {
    if (v40 && a1 != a2)
    {
      v205 = v37;
      v191 = 0;
      v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v42 = a1 + v41;
      v202 = a2 + v41;
      v43 = 0;
      v201 = (v29 + 48);
      v193 = (v11 + 48);
      v44 = *(v38 + 72);
      v194 = v10;
      v185 = v13;
      v186 = v16;
      v45 = v227;
      v46 = v220;
      v204 = v40;
      v196 = v42;
      v200 = (v21 + 48);
      v195 = v44;
      while (1)
      {
        v47 = v44 * v43;
        sub_3FCFC(v42 + v44 * v43, v45, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        if (v43 == v204)
        {
          goto LABEL_258;
        }

        v203 = v43;
        v48 = v9;
        v49 = v228;
        sub_3FCFC(v202 + v47, v228, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        v50 = *(v205 + 28);
        v51 = *(v216 + 48);
        sub_A024(v45 + v50, v46, &qword_78298, &qword_5FB00);
        sub_A024(v49 + v50, v46 + v51, &qword_78298, &qword_5FB00);
        v52 = *v201;
        v53 = v217;
        if ((*v201)(v46, 1, v217) == 1)
        {
          v54 = v52(v46 + v51, 1, v53);
          v55 = v227;
          if (v54 != 1)
          {
            goto LABEL_246;
          }

          sub_60C4(v46, &qword_78298, &qword_5FB00);
        }

        else
        {
          v56 = v46;
          v57 = v46;
          v58 = v209;
          sub_A024(v56, v209, &qword_78298, &qword_5FB00);
          if (v52(v57 + v51, 1, v53) == 1)
          {
            sub_3FD64(v58, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
            v55 = v227;
            v46 = v57;
LABEL_246:
            sub_60C4(v46, &qword_78648, &qword_61A60);
            goto LABEL_253;
          }

          v59 = v208;
          sub_405A4(v57 + v51, v208, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_47EAC(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
          v60 = sub_5C114();
          sub_3FD64(v59, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_3FD64(v58, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_60C4(v57, &qword_78298, &qword_5FB00);
          v55 = v227;
          v9 = v48;
          v46 = v57;
          if ((v60 & 1) == 0)
          {
            goto LABEL_253;
          }
        }

        v61 = *v55;
        v62 = *v228;
        v63 = *(*v55 + 16);
        if (v63 != *(*v228 + 16))
        {
          goto LABEL_253;
        }

        if (v63 && v61 != v62)
        {
          break;
        }

LABEL_238:
        if ((v55[1] != v228[1] || v55[2] != v228[2]) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_253;
        }

        sub_5BCE4();
        sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v177 = v228;
        v178 = sub_5C114();
        v45 = v227;
        sub_3FD64(v177, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        sub_3FD64(v45, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        if (v178)
        {
          v43 = v203 + 1;
          v42 = v196;
          v44 = v195;
          if (v203 + 1 != v204)
          {
            continue;
          }
        }

        return v178 & 1;
      }

      v64 = 0;
      v65 = (*(v218 + 80) + 32) & ~*(v218 + 80);
      v198 = v61 + v65;
      v197 = v62 + v65;
      v188 = v62;
      v187 = v63;
      while (1)
      {
        if (v64 >= *(v61 + 16))
        {
          goto LABEL_259;
        }

        v66 = v9;
        v67 = v64;
        v68 = *(v218 + 72) * v64;
        v69 = v222;
        sub_3FCFC(v198 + v68, v222, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        v70 = *(v62 + 16);
        v199 = v67;
        if (v67 >= v70)
        {
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
        }

        v71 = v223;
        sub_3FCFC(v197 + v68, v223, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        v72 = *(v221 + 28);
        v73 = *(v212 + 48);
        v74 = v69 + v72;
        v75 = v219;
        sub_A024(v74, v219, &qword_782A0, &qword_5FB08);
        sub_A024(v71 + v72, v75 + v73, &qword_782A0, &qword_5FB08);
        v76 = *v200;
        v77 = v213;
        if ((*v200)(v75, 1, v213) == 1)
        {
          v78 = v76(v75 + v73, 1, v77);
          v55 = v227;
          if (v78 != 1)
          {
            goto LABEL_248;
          }

          v9 = v66;
          sub_60C4(v75, &qword_782A0, &qword_5FB08);
          v79 = v222;
        }

        else
        {
          v80 = v207;
          sub_A024(v75, v207, &qword_782A0, &qword_5FB08);
          if (v76(v75 + v73, 1, v77) == 1)
          {
            sub_3FD64(v80, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
            v55 = v227;
LABEL_248:
            sub_60C4(v75, &qword_78640, &unk_628E0);
            v79 = v222;
            goto LABEL_252;
          }

          v9 = v66;
          v81 = v206;
          sub_405A4(v75 + v73, v206, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_47EAC(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          v82 = sub_5C114();
          sub_3FD64(v81, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_3FD64(v80, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_60C4(v219, &qword_782A0, &qword_5FB08);
          v79 = v222;
          v46 = v220;
          v55 = v227;
          if ((v82 & 1) == 0)
          {
            goto LABEL_252;
          }
        }

        v83 = *v79;
        v84 = *v223;
        v85 = *(*v79 + 16);
        if (v85 != *(*v223 + 16))
        {
          goto LABEL_252;
        }

        if (v85 && v83 != v84)
        {
          break;
        }

LABEL_233:
        if ((v79[1] != v223[1] || v79[2] != v223[2]) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_252;
        }

        sub_5BCE4();
        sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v175 = v223;
        v176 = sub_5C114();
        sub_3FD64(v175, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        sub_3FD64(v79, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        v62 = v188;
        if ((v176 & 1) == 0)
        {
LABEL_253:
          sub_3FD64(v228, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
          sub_3FD64(v55, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
          goto LABEL_254;
        }

        v64 = v199 + 1;
        if (v199 + 1 == v187)
        {
          goto LABEL_238;
        }
      }

      v86 = 0;
      v87 = (*(v215 + 80) + 32) & ~*(v215 + 80);
      v190 = v83 + v87;
      v189 = v84 + v87;
      v184 = v61;
      v183 = v83;
      v182 = v84;
      v181 = v85;
      while (1)
      {
        if (v86 >= *(v83 + 16))
        {
          goto LABEL_261;
        }

        v88 = v86;
        v89 = *(v215 + 72) * v86;
        v90 = v230;
        sub_3FCFC(v190 + v89, v230, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        v91 = *(v84 + 16);
        v192 = v88;
        if (v88 >= v91)
        {
          goto LABEL_262;
        }

        v92 = v189 + v89;
        v93 = v229;
        sub_3FCFC(v92, v229, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        if (*v90 != *v93 || *(v230 + 8) != *(v229 + 8))
        {
          goto LABEL_251;
        }

        v94 = *(v230 + 16);
        v95 = *(v229 + 16);
        if (*(v229 + 24) == 1)
        {
          switch(v95)
          {
            case 1:
              if (v94 != 1)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 2:
              if (v94 != 2)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 3:
              if (v94 != 3)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 4:
              if (v94 != 4)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 5:
              if (v94 != 5)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 6:
              if (v94 != 6)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 7:
              if (v94 != 7)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 8:
              if (v94 != 8)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 9:
              if (v94 != 9)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 10:
              if (v94 != 10)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 11:
              if (v94 != 11)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 12:
              if (v94 != 12)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 13:
              if (v94 != 13)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 14:
              if (v94 != 14)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 15:
              if (v94 != 15)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 16:
              if (v94 != 16)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 17:
              if (v94 != 17)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 18:
              if (v94 != 18)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 19:
              if (v94 != 19)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 20:
              if (v94 != 20)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 21:
              if (v94 != 21)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 22:
              if (v94 != 22)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 23:
              if (v94 != 23)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 24:
              if (v94 != 24)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            default:
              if (v94)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
          }
        }

        if (v94 != v95)
        {
          goto LABEL_251;
        }

LABEL_35:
        if ((*(v230 + 32) != *(v229 + 32) || *(v230 + 40) != *(v229 + 40)) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_251;
        }

        v96 = *(v214 + 60);
        v97 = *(v210 + 48);
        v98 = v211;
        sub_A024(v230 + v96, v211, &qword_78110, &qword_61E70);
        sub_A024(v229 + v96, v98 + v97, &qword_78110, &qword_61E70);
        v99 = *v193;
        v100 = v194;
        if ((*v193)(v98, 1, v194) == 1)
        {
          if (v99(v98 + v97, 1, v100) != 1)
          {
            goto LABEL_250;
          }

          sub_60C4(v98, &qword_78110, &qword_61E70);
        }

        else
        {
          v101 = v186;
          sub_A024(v98, v186, &qword_78110, &qword_61E70);
          if (v99(v98 + v97, 1, v100) == 1)
          {
            sub_3FD64(v101, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_250:
            sub_60C4(v98, &qword_78210, &qword_5F8A8);
LABEL_251:
            sub_3FD64(v229, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
            sub_3FD64(v230, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
            v79 = v222;
            v55 = v227;
LABEL_252:
            sub_3FD64(v223, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
            sub_3FD64(v79, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
            goto LABEL_253;
          }

          v102 = v185;
          sub_405A4(v98 + v97, v185, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_47EAC(&qword_78158, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);
          v103 = sub_5C114();
          sub_3FD64(v102, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_3FD64(v101, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_60C4(v98, &qword_78110, &qword_61E70);
          if ((v103 & 1) == 0)
          {
            goto LABEL_251;
          }
        }

        v104 = *(v230 + 48);
        v105 = *(v229 + 48);
        v106 = *(v104 + 16);
        if (v106 != *(v105 + 16))
        {
          goto LABEL_251;
        }

        if (v106 && v104 != v105)
        {
          v107 = 0;
          v108 = (*(v226 + 80) + 32) & ~*(v226 + 80);
          v109 = v104 + v108;
          v110 = v105 + v108;
          while (v107 < *(v104 + 16))
          {
            v111 = *(v226 + 72) * v107;
            sub_3FCFC(v109 + v111, v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if (v107 >= *(v105 + 16))
            {
              goto LABEL_257;
            }

            v112 = v224;
            sub_3FCFC(v110 + v111, v224, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_47EAC(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            v113 = sub_5C114();
            sub_3FD64(v112, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_3FD64(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if ((v113 & 1) == 0)
            {
              goto LABEL_251;
            }

            if (v106 == ++v107)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

LABEL_51:
        if (*(v230 + 56) != *(v229 + 56) || *(v230 + 60) != *(v229 + 60))
        {
          goto LABEL_251;
        }

        v114 = *(v230 + 64);
        v115 = *(v230 + 72);
        v116 = *(v229 + 64);
        v117 = *(v229 + 72);
        v118 = v115 >> 62;
        v119 = v117 >> 62;
        if (v115 >> 62 == 3)
        {
          v120 = 0;
          if (!v114 && v115 == 0xC000000000000000 && v117 >> 62 == 3)
          {
            v120 = 0;
            if (!v116 && v117 == 0xC000000000000000)
            {
              goto LABEL_121;
            }
          }
        }

        else if (v118 > 1)
        {
          if (v118 == 2)
          {
            v122 = *(v114 + 16);
            v121 = *(v114 + 24);
            v123 = __OFSUB__(v121, v122);
            v120 = v121 - v122;
            if (v123)
            {
              goto LABEL_268;
            }
          }

          else
          {
            v120 = 0;
          }
        }

        else if (v118)
        {
          LODWORD(v120) = HIDWORD(v114) - v114;
          if (__OFSUB__(HIDWORD(v114), v114))
          {
            goto LABEL_267;
          }

          v120 = v120;
        }

        else
        {
          v120 = BYTE6(v115);
        }

        if (v119 > 1)
        {
          if (v119 != 2)
          {
            if (v120)
            {
              goto LABEL_251;
            }

            goto LABEL_121;
          }

          v126 = *(v116 + 16);
          v125 = *(v116 + 24);
          v123 = __OFSUB__(v125, v126);
          v124 = v125 - v126;
          if (v123)
          {
            goto LABEL_263;
          }
        }

        else if (v119)
        {
          LODWORD(v124) = HIDWORD(v116) - v116;
          if (__OFSUB__(HIDWORD(v116), v116))
          {
            goto LABEL_264;
          }

          v124 = v124;
        }

        else
        {
          v124 = BYTE6(v117);
        }

        if (v120 != v124)
        {
          goto LABEL_251;
        }

        if (v120 < 1)
        {
          goto LABEL_121;
        }

        if (v118 <= 1)
        {
          break;
        }

        if (v118 == 2)
        {
          v129 = *(v114 + 16);
          v130 = *(v114 + 24);
          v131 = sub_5B944();
          if (v131)
          {
            v132 = sub_5B964();
            if (__OFSUB__(v129, v132))
            {
              goto LABEL_275;
            }

            v131 += v129 - v132;
          }

          if (__OFSUB__(v130, v129))
          {
            goto LABEL_272;
          }

          goto LABEL_100;
        }

        memset(__s1, 0, 14);
        if (!v119)
        {
          goto LABEL_105;
        }

        if (v119 == 2)
        {
          v137 = *(v116 + 16);
          v138 = *(v116 + 24);
          v139 = v191;
          v140 = sub_47EF4(v137, v138, v117 & 0x3FFFFFFFFFFFFFFFLL, __s1);
LABEL_108:
          v191 = v139;
          if ((v140 & 1) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_121;
        }

        v143 = v116;
        v123 = __OFSUB__(v116 >> 32, v116);
        v144 = (v116 >> 32) - v116;
        if (v144 < 0 != v123)
        {
          goto LABEL_279;
        }

        v145 = sub_5B944();
        if (v145)
        {
          v146 = sub_5B964();
          if (__OFSUB__(v143, v146))
          {
            goto LABEL_283;
          }

          v145 = (v145 + v143 - v146);
        }

        v147 = sub_5B954();
        if (v147 >= v144)
        {
          v141 = v144;
        }

        else
        {
          v141 = v147;
        }

        if (!v145)
        {
          __break(1u);
LABEL_285:

          __break(1u);
          JUMPOUT(0x47E48);
        }

        if (__s1 != v145)
        {
          p_s2 = v145;
          goto LABEL_120;
        }

LABEL_121:
        v148 = *(v230 + 80);
        v149 = *(v230 + 88);
        v150 = *(v229 + 80);
        v151 = *(v229 + 88);
        v152 = v149 >> 62;
        v153 = v151 >> 62;
        if (v149 >> 62 == 3)
        {
          v154 = 0;
          if (!v148 && v149 == 0xC000000000000000 && v151 >> 62 == 3)
          {
            v154 = 0;
            if (!v150 && v151 == 0xC000000000000000)
            {
              goto LABEL_179;
            }
          }
        }

        else if (v152 > 1)
        {
          if (v152 == 2)
          {
            v156 = *(v148 + 16);
            v155 = *(v148 + 24);
            v123 = __OFSUB__(v155, v156);
            v154 = v155 - v156;
            if (v123)
            {
              goto LABEL_269;
            }
          }

          else
          {
            v154 = 0;
          }
        }

        else if (v152)
        {
          LODWORD(v154) = HIDWORD(v148) - v148;
          if (__OFSUB__(HIDWORD(v148), v148))
          {
            goto LABEL_270;
          }

          v154 = v154;
        }

        else
        {
          v154 = BYTE6(v149);
        }

        if (v153 > 1)
        {
          if (v153 != 2)
          {
            if (v154)
            {
              goto LABEL_251;
            }

            goto LABEL_179;
          }

          v159 = *(v150 + 16);
          v158 = *(v150 + 24);
          v123 = __OFSUB__(v158, v159);
          v157 = v158 - v159;
          if (v123)
          {
            goto LABEL_266;
          }
        }

        else if (v153)
        {
          LODWORD(v157) = HIDWORD(v150) - v150;
          if (__OFSUB__(HIDWORD(v150), v150))
          {
            goto LABEL_265;
          }

          v157 = v157;
        }

        else
        {
          v157 = BYTE6(v151);
        }

        if (v154 != v157)
        {
          goto LABEL_251;
        }

        if (v154 >= 1)
        {
          if (v152 > 1)
          {
            if (v152 != 2)
            {
              memset(__s1, 0, 14);
              if (v153 == 2)
              {
                goto LABEL_174;
              }

              if (v153 == 1)
              {
                v160 = v150;
                v161 = v150 >> 32;
                if (v150 >> 32 < v150)
                {
                  goto LABEL_281;
                }

                goto LABEL_175;
              }

              goto LABEL_178;
            }

            v162 = *(v148 + 16);
            v163 = *(v148 + 24);
            v164 = sub_5B944();
            if (v164)
            {
              v165 = sub_5B964();
              if (__OFSUB__(v162, v165))
              {
                goto LABEL_277;
              }

              v164 += v162 - v165;
            }

            if (__OFSUB__(v163, v162))
            {
              goto LABEL_274;
            }
          }

          else
          {
            if (!v152)
            {
              __s1[0] = *(v230 + 80);
              LOWORD(__s1[1]) = v149;
              BYTE2(__s1[1]) = BYTE2(v149);
              BYTE3(__s1[1]) = BYTE3(v149);
              BYTE4(__s1[1]) = BYTE4(v149);
              BYTE5(__s1[1]) = BYTE5(v149);
              if (v153)
              {
                if (v153 == 1)
                {
                  v160 = v150;
                  v161 = v150 >> 32;
                  if (v150 >> 32 < v150)
                  {
                    goto LABEL_282;
                  }
                }

                else
                {
LABEL_174:
                  v160 = *(v150 + 16);
                  v161 = *(v150 + 24);
                }

LABEL_175:
                v170 = v191;
                v171 = sub_47EF4(v160, v161, v151 & 0x3FFFFFFFFFFFFFFFLL, __s1);
                if (v170)
                {
                  goto LABEL_285;
                }

                v191 = 0;
                if ((v171 & 1) == 0)
                {
                  goto LABEL_251;
                }

                goto LABEL_179;
              }

LABEL_178:
              __s2 = v150;
              v232 = v151;
              v233 = BYTE2(v151);
              v234 = BYTE3(v151);
              v235 = BYTE4(v151);
              v236 = BYTE5(v151);
              if (memcmp(__s1, &__s2, BYTE6(v151)))
              {
                goto LABEL_251;
              }

              goto LABEL_179;
            }

            v166 = v148;
            if (v148 >> 32 < v148)
            {
              goto LABEL_273;
            }

            v164 = sub_5B944();
            if (v164)
            {
              v167 = sub_5B964();
              if (__OFSUB__(v166, v167))
              {
                goto LABEL_278;
              }

              v164 += v166 - v167;
            }
          }

          sub_5B954();
          v168 = v150;
          v169 = v191;
          sub_13DF0(v164, v168, v151, __s1);
          v191 = v169;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_251;
          }
        }

LABEL_179:
        if ((*(v230 + 96) != *(v229 + 96) || *(v230 + 104) != *(v229 + 104)) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_251;
        }

        sub_5BCE4();
        sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v172 = v229;
        v173 = v230;
        v174 = sub_5C114();
        sub_3FD64(v172, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        sub_3FD64(v173, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        v79 = v222;
        v55 = v227;
        v46 = v220;
        v61 = v184;
        v83 = v183;
        v84 = v182;
        if ((v174 & 1) == 0)
        {
          goto LABEL_252;
        }

        v86 = v192 + 1;
        if (v192 + 1 == v181)
        {
          goto LABEL_233;
        }
      }

      if (v118)
      {
        v133 = v114;
        if (v114 >> 32 < v114)
        {
          goto LABEL_271;
        }

        v131 = sub_5B944();
        if (v131)
        {
          v134 = sub_5B964();
          if (__OFSUB__(v133, v134))
          {
            goto LABEL_276;
          }

          v131 += v133 - v134;
        }

LABEL_100:
        sub_5B954();
        v135 = v116;
        v136 = v191;
        sub_13DF0(v131, v135, v117, __s1);
        v191 = v136;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_121;
      }

      __s1[0] = *(v230 + 64);
      LOWORD(__s1[1]) = v115;
      BYTE2(__s1[1]) = BYTE2(v115);
      BYTE3(__s1[1]) = BYTE3(v115);
      BYTE4(__s1[1]) = BYTE4(v115);
      BYTE5(__s1[1]) = BYTE5(v115);
      if (v119)
      {
        if (v119 == 1)
        {
          v127 = v116;
          v128 = v116 >> 32;
          if (v116 >> 32 < v116)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v127 = *(v116 + 16);
          v128 = *(v116 + 24);
        }

        v139 = v191;
        v140 = sub_47EF4(v127, v128, v117 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        if (v139)
        {
          goto LABEL_285;
        }

        goto LABEL_108;
      }

LABEL_105:
      __s2 = v116;
      v232 = v117;
      v233 = BYTE2(v117);
      v234 = BYTE3(v117);
      v235 = BYTE4(v117);
      v141 = BYTE6(v117);
      v236 = BYTE5(v117);
      p_s2 = &__s2;
LABEL_120:
      if (memcmp(__s1, p_s2, v141))
      {
        goto LABEL_251;
      }

      goto LABEL_121;
    }

    v178 = 1;
  }

  else
  {
LABEL_254:
    v178 = 0;
  }

  return v178 & 1;
}

uint64_t sub_47EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_47EF4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_5B944();
  v8 = result;
  if (result)
  {
    result = sub_5B964();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_5B954();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return (&dword_0 + 1);
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t _s16TelemetrySupport37Opentelemetry_Proto_Logs_V1_LogRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  off_70B50(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_70B50(v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  v12 = off_70B50(v11);
  v14 = &v23 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_22;
  }

  v15 = v12;
  if (!sub_3E9E4(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    goto LABEL_22;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v23 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v16 = *(v23 + 60);
  v17 = *(v15 + 48);
  sub_A024(a1 + v16, v14, &qword_78110, &qword_61E70);
  v24 = v17;
  sub_A024(a2 + v16, &v14[v17], &qword_78110, &qword_61E70);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v24], 1, v4) == 1)
    {
      sub_60C4(v14, &qword_78110, &qword_61E70);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_A024(v14, v10, &qword_78110, &qword_61E70);
  v19 = v24;
  if (v18(&v14[v24], 1, v4) == 1)
  {
    sub_3FD64(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_11:
    sub_60C4(v14, &qword_78210, &qword_5F8A8);
LABEL_22:
    v21 = 0;
    return v21 & 1;
  }

  sub_405A4(&v14[v19], v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_47EAC(&qword_78158, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);
  v20 = sub_5C114();
  sub_3FD64(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_3FD64(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_60C4(v14, &qword_78110, &qword_61E70);
  if ((v20 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((sub_12FAC(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || !sub_14268(*(a1 + 64), *(a1 + 72), *(a2 + 64), *(a2 + 72)) || !sub_14268(*(a1 + 80), *(a1 + 88), *(a2 + 80), *(a2 + 88)) || (*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104)) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v21 = sub_5C114();
  return v21 & 1;
}

uint64_t _s16TelemetrySupport036Opentelemetry_Proto_Logs_V1_ResourceE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v5 = *(v4 - 8);
  off_70B50(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70B50(v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  v11 = v10 - 8;
  off_70B50(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_A024(a1 + v14, v13, &qword_78298, &qword_5FB00);
  sub_A024(a2 + v14, &v13[v15], &qword_78298, &qword_5FB00);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_A024(v13, v9, &qword_78298, &qword_5FB00);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_405A4(&v13[v15], v24, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_47EAC(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
      v18 = sub_5C114();
      sub_3FD64(v17, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_3FD64(v9, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_60C4(v13, &qword_78298, &qword_5FB00);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_3FD64(v9, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
LABEL_6:
    sub_60C4(v13, &qword_78648, &qword_61A60);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_60C4(v13, &qword_78298, &qword_5FB00);
LABEL_8:
  v19 = v25;
  if ((sub_4479C(*v25, *a2) & 1) == 0 || (v19[1] != a2[1] || v19[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = sub_5C114();
  return v20 & 1;
}

uint64_t _s16TelemetrySupport033Opentelemetry_Proto_Logs_V1_ScopeE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  off_70B50(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70B50(v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v11 = v10 - 8;
  off_70B50(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_A024(a1 + v14, v13, &qword_782A0, &qword_5FB08);
  sub_A024(a2 + v14, &v13[v15], &qword_782A0, &qword_5FB08);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_A024(v13, v9, &qword_782A0, &qword_5FB08);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_405A4(&v13[v15], v24, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_47EAC(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v18 = sub_5C114();
      sub_3FD64(v17, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_3FD64(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v13, &qword_782A0, &qword_5FB08);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_3FD64(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
LABEL_6:
    sub_60C4(v13, &qword_78640, &unk_628E0);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_60C4(v13, &qword_782A0, &qword_5FB08);
LABEL_8:
  v19 = v25;
  if ((sub_45F94(*v25, *a2) & 1) == 0 || (v19[1] != a2[1] || v19[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = sub_5C114();
  return v20 & 1;
}

unint64_t sub_48BD8()
{
  result = qword_78748;
  if (!qword_78748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78748);
  }

  return result;
}

unint64_t sub_48C30()
{
  result = qword_78758;
  if (!qword_78758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78758);
  }

  return result;
}

unint64_t sub_48C88()
{
  result = qword_78760;
  if (!qword_78760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78760);
  }

  return result;
}

unint64_t sub_48D10()
{
  result = qword_78778;
  if (!qword_78778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78778);
  }

  return result;
}

unint64_t sub_48D68()
{
  result = qword_78780;
  if (!qword_78780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78780);
  }

  return result;
}

unint64_t sub_48DC0()
{
  result = qword_78788;
  if (!qword_78788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78788);
  }

  return result;
}

unint64_t sub_48E48()
{
  result = qword_787A0;
  if (!qword_787A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_787A0);
  }

  return result;
}

uint64_t sub_49350(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_49410(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_494B4(uint64_t a1)
{
  sub_495F4(319, &qword_787E8, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_495F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_496E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_495F4(319, a4, a5, &type metadata accessor for Array);
  if (v9 <= 0x3F)
  {
    sub_5BCE4();
    if (v10 <= 0x3F)
    {
      sub_495F4(319, a6, a7, &type metadata accessor for Optional);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_497E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_49928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_49A58(uint64_t a1)
{
  sub_495F4(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      sub_495F4(319, &qword_781D0, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_49B94()
{
  result = qword_78820;
  if (!qword_78820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78820);
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.resourceLogs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
  off_70B58();
  v4 = &v9 - v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(v1 + *(v5 + 20), v4);
  v6 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v7 = *(*(v6 - 8) + 48);
  if (v7(v4, 1, v6) != 1)
  {
    return sub_4A334(v4, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  sub_5BCD4();
  result = (v7)(v4, 1, v6);
  if (result != 1)
  {
    return sub_60C4(v4, &qword_78828, &qword_628F0);
  }

  return result;
}

uint64_t sub_49F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
  off_70B58();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(a1 + *(v6 + 20), v5);
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_4A334(v5, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  sub_5BCD4();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78828, &qword_628F0);
  }

  return result;
}

uint64_t sub_4A080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = *(v4 - 8);
  off_70B58();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4CFC0(a1, v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  sub_60C4(a2 + v8, &qword_78828, &qword_628F0);
  sub_4A334(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  sub_60C4(v1 + v3, &qword_78828, &qword_628F0);
  sub_4A334(a1, v1 + v3);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  return sub_5BCD4();
}

uint64_t sub_4A2A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_4A2A4(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0xE000000000000000;
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78828, &qword_628F0);
    }
  }

  else
  {
    sub_4A334(v7, v13);
  }

  return sub_4A590;
}

void sub_4A590(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_4CFC0((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
    sub_60C4(v9 + v3, &qword_78828, &qword_628F0);
    sub_4A334(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_4D028(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78828, &qword_628F0);
    sub_4A334(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.hasPartialSuccess.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
  off_70B58();
  v2 = &v7 - v1;
  v3 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(v0 + *(v3 + 20), v2);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4) != 1;
  sub_60C4(v2, &qword_78828, &qword_628F0);
  return v5;
}

Swift::Void __swiftcall Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.clearPartialSuccess()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  sub_60C4(v0 + v1, &qword_78828, &qword_628F0);
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.init()@<X0>(uint64_t a2@<X8>)
{
  sub_5BCD4();
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_4A9B0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.errorMessage.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.errorMessage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
        sub_4C0E8(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        sub_5BE84();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0), sub_4C0E8(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &protocol conformance descriptor for Opentelemetry_Proto_Logs_V1_ResourceLogs), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_4AFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4C0E8(&qword_788A8, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_4B040(uint64_t a1)
{
  v2 = sub_4C0E8(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4B0AC(uint64_t a1, uint64_t a2)
{
  sub_4C0E8(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  return sub_5BF14();
}

uint64_t sub_4B128(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
        type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
        sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
        sub_5BEB4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_4B39C(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_4B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
  off_70B58();
  v6 = v13 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v8 = *(v7 - 8);
  off_70B58();
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(a1 + *(v11 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_60C4(v6, &qword_78828, &qword_628F0);
  }

  sub_4A334(v6, v10);
  sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
  sub_5C004();
  return sub_4D028(v10, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
}

uint64_t sub_4B5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5BCD4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_4B670@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_4B6D8(uint64_t a1)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_4B770(uint64_t a1, uint64_t a2)
{
  v4 = sub_4C0E8(&qword_788A0, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_4B810(uint64_t a1)
{
  v2 = sub_4C0E8(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4B87C(uint64_t a1, uint64_t a2)
{
  sub_4C0E8(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);

  return sub_5BF14();
}

uint64_t sub_4B924()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7F078);
  __swift_project_value_buffer(v0, qword_7F078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rejected_log_records";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error_message";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_5BD64();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_5BDE4();
    }

    else if (result == 2)
    {
      sub_5BE54();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_5BF84(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_5BFB4(), !v4))
    {
      type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v2 && (sub_5C3A4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

Swift::Int sub_4BD8C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_5C454();
  a1(0);
  sub_4C0E8(a2, a3, a4);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_4BE14@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  return sub_5BCD4();
}

uint64_t sub_4BE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4C0E8(&qword_78898, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_4BF2C(uint64_t a1)
{
  v2 = sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4BF98(uint64_t a1, uint64_t a2)
{
  sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);

  return sub_5BF14();
}

uint64_t sub_4C014(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v3 && (sub_5C3A4() & 1) == 0)
  {
    return 0;
  }

  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_4C0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16TelemetrySupport044Opentelemetry_Proto_Collector_Logs_V1_ExportF15ServiceResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = *(v4 - 8);
  off_70B58();
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
  off_70B58();
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788B0, &unk_62E40) - 8;
  off_70B58();
  v12 = &v22 - v11;
  v13 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  v14 = *(v10 + 56);
  sub_4A2A4(a1 + v13, v12);
  sub_4A2A4(a2 + v13, &v12[v14]);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) != 1)
  {
    sub_4A2A4(v12, v9);
    if (v15(&v12[v14], 1, v4) != 1)
    {
      sub_4A334(&v12[v14], v7);
      if (*v9 == *v7)
      {
        v19 = v9[1] == v7[1] && v9[2] == v7[2];
        if (v19 || (sub_5C3A4() & 1) != 0)
        {
          sub_5BCE4();
          sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          v20 = sub_5C114();
          sub_4D028(v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
          sub_4D028(v9, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
          sub_60C4(v12, &qword_78828, &qword_628F0);
          if (v20)
          {
            goto LABEL_4;
          }

LABEL_18:
          v16 = 0;
          return v16 & 1;
        }
      }

      sub_4D028(v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
      sub_4D028(v9, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
      v17 = &qword_78828;
      v18 = &qword_628F0;
LABEL_17:
      sub_60C4(v12, v17, v18);
      goto LABEL_18;
    }

    sub_4D028(v9, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
LABEL_7:
    v17 = &qword_788B0;
    v18 = &unk_62E40;
    goto LABEL_17;
  }

  if (v15(&v12[v14], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_60C4(v12, &qword_78828, &qword_628F0);
LABEL_4:
  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v16 = sub_5C114();
  return v16 & 1;
}

uint64_t sub_4C868(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_4C928(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4C9CC(uint64_t a1)
{
  sub_4CD60(319, &qword_787E8, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_4CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5BCE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_4CBA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5BCE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_4CCAC(uint64_t a1)
{
  sub_5BCE4();
  if (v1 <= 0x3F)
  {
    sub_4CD60(319, &qword_78890, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4CD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_4CDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4CE98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_4CF3C(uint64_t a1)
{
  result = sub_5BCE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4CFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4D028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4D104()
{
  sub_5BAF4();
  off_70B70();
  v0 = sub_5BAD4();
  __swift_allocate_value_buffer(v0, qword_809C8);
  __swift_project_value_buffer(v0, qword_809C8);
  sub_5BAE4();
  return sub_5BAC4();
}

uint64_t sub_4D248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78710, &qword_61E48);
  v0 = sub_5BAD4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5EBD0;
  if (qword_7F9C8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_809C8);
  result = (*(v1 + 16))(v3 + v2, v4, v0);
  qword_809E0 = v3;
  return result;
}

uint64_t *sub_4D364()
{
  if (qword_7F9D0 != -1)
  {
    swift_once();
  }

  return &qword_809E0;
}

uint64_t sub_4D3B4()
{
  if (qword_7F9D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_4D41C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_5BAF4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_5BAE4();
}

uint64_t sub_4D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a5;
  v29 = a1;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  off_70B70();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788B8, &qword_62E50);
  v27 = *(v12 - 8);
  v28 = v12;
  off_70B70();
  v14 = v23 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788C0, &qword_62E58);
  v24 = *(v26 - 8);
  off_70B70();
  v16 = v23 - v15;
  if (qword_7F9C8 != -1)
  {
    swift_once();
  }

  v17 = sub_5BAD4();
  v23[1] = __swift_project_value_buffer(v17, qword_809C8);
  v23[0] = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  sub_4D918(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_5BCB4();
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4D918(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
  sub_5BCA4();
  (*(v10 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a2);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = v25;
  (*(v10 + 32))(&v19[v18], v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_5BC94();
  sub_3DD98(&qword_788C8, &qword_788C0, &qword_62E58, &protocol conformance descriptor for ProtobufDeserializer<A>);
  sub_3DD98(&qword_788D0, &qword_788B8, &qword_62E50, &protocol conformance descriptor for ProtobufSerializer<A>);
  v20 = v28;
  v21 = v26;
  sub_5BC84();

  (*(v27 + 8))(v14, v20);
  return (*(v24 + 8))(v16, v21);
}

uint64_t sub_4D918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4D960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a7 + 16) + **(a7 + 16));
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1B30;

  return v15(a1, a2, a3, a5, a7);
}

uint64_t sub_4DAA8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4DB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 32);
  v10 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_65E4;

  return sub_4D960(a1, a2, a3, v3 + v10, v8, v11, v9);
}

uint64_t sub_4DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788D8, &qword_62E78);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788E0, &qword_62E80);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788E8, &unk_62E88);
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_4DDDC, 0, 0);
}

uint64_t sub_4DDDC()
{
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  *v1 = v0;
  v1[1] = sub_4DEA0;
  v3 = v0[13];
  v4 = v0[10];

  return ServerRequest.init(stream:)(v3, v4, v2);
}

uint64_t sub_4DEA0()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_3CCA4, 0, 0);
  }

  else
  {
    v10 = (*(v2[6] + 16) + **(v2[6] + 16));
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_4E09C;
    v4 = v2[17];
    v5 = v2[13];
    v6 = v2[6];
    v7 = v2[4];
    v8 = v2[5];

    return v10(v4, v5, v7, v8, v6);
  }
}

uint64_t sub_4E09C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_3CD30;
  }

  else
  {
    v5 = sub_4E20C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_4E20C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v3 + 16))(v0[16], v1, v2);
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_5BB04();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_4E304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_5BB34();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  v6[10] = swift_task_alloc();
  v6[11] = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_4E404, 0, 0);
}

uint64_t sub_4E404()
{
  v9 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788E0, &qword_62E80);
  sub_5BA64();
  v8 = (*(v9 + 16) + **(v9 + 16));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_4E54C;
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];

  return v8(v2, v3, v5, v6, v4);
}

uint64_t sub_4E54C()
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  sub_4E67C(v2);
  if (v0)
  {
    v3 = sub_3D210;
  }

  else
  {
    v3 = sub_3D134;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4E67C(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4E6F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4F6A0, 0, 0);
}

uint64_t sub_4E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v12;
  *(v8 + 112) = v13;
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_4E75C, 0, 0);
}

uint64_t sub_4E75C()
{
  if (qword_7F9C8 != -1)
  {
    swift_once();
  }

  v1 = sub_5BAD4();
  v2 = __swift_project_value_buffer(v1, qword_809C8);
  v3 = swift_task_alloc();
  v0[15] = v3;
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  *v3 = v0;
  v3[1] = sub_3D4A8;
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  v10 = v0[2];

  return GRPCClient.unary<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v10, v9, v2, v7, v8, v5, v6, v4);
}

uint64_t sub_4E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_65E4;

  return sub_4E714(a1, a2, a3, a4, a5, a6, a7, v12);
}

uint64_t sub_4E99C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4E9BC, 0, 0);
}

uint64_t sub_4E9BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78918, &unk_63020);
  sub_5BAA4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788F0, &qword_62EB8);
  v9[11] = v10;
  v9[12] = *(v10 - 8);
  v9[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788F8, &qword_62EC0);
  v9[14] = v11;
  v9[15] = *(v11 - 8);
  v9[16] = swift_task_alloc();

  return _swift_task_switch(sub_4EB94, 0, 0);
}

void sub_4EB94()
{
  v3 = *(v0 + 72);
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  sub_4D918(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_5BCA4();
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4D918(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
  sub_5BCB4();
  v2 = *(v3 + 8) + **(v3 + 8);
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  sub_3DD98(&qword_78900, &qword_788F8, &qword_62EC0, &protocol conformance descriptor for ProtobufSerializer<A>);
  sub_3DD98(&qword_78908, &qword_788F0, &qword_62EB8, &protocol conformance descriptor for ProtobufDeserializer<A>);
  *v1 = v0;
  v1[1] = sub_3DAFC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_4EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v14;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = sub_5BB34();
  v9[12] = v10;
  v9[13] = *(v10 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  v9[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78910, &qword_62ED8);
  v9[17] = v11;
  v9[18] = *(v11 - 8);
  v9[19] = swift_task_alloc();

  return _swift_task_switch(sub_4EF70, 0, 0);
}

uint64_t sub_4EF70()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[4];
  sub_4F07C(v0[3], v0[16]);
  (*(v2 + 16))(v1, v4, v3);
  sub_5BA44();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_3E084;
  v6 = v0[19];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];
  v13 = v0[2];

  return sub_4EA50(v13, v6, v12, v10, v11, v8, v9, v7);
}

uint64_t sub_4F07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_65E4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_4F254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_65E4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_4F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B30;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_4F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = (*(a14 + 8) + **(a14 + 8));
  v18 = swift_task_alloc();
  *(v14 + 16) = v18;
  *v18 = v14;
  v18[1] = sub_65E4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_4F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.resourceMetrics.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
  off_70B78();
  v4 = &v9 - v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(v1 + *(v5 + 20), v4);
  v6 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v7 = *(*(v6 - 8) + 48);
  if (v7(v4, 1, v6) != 1)
  {
    return sub_4FDD0(v4, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  sub_5BCD4();
  result = (v7)(v4, 1, v6);
  if (result != 1)
  {
    return sub_60C4(v4, &qword_78920, &qword_63030);
  }

  return result;
}

uint64_t sub_4F9D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
  off_70B78();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(a1 + *(v6 + 20), v5);
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_4FDD0(v5, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  sub_5BCD4();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78920, &qword_63030);
  }

  return result;
}

uint64_t sub_4FB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = *(v4 - 8);
  off_70B78();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_528DC(a1, v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  sub_60C4(a2 + v8, &qword_78920, &qword_63030);
  sub_4FDD0(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  sub_60C4(v1 + v3, &qword_78920, &qword_63030);
  sub_4FDD0(a1, v1 + v3);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  return sub_5BCD4();
}

uint64_t sub_4FD40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4FDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_4FD40(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0xE000000000000000;
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78920, &qword_63030);
    }
  }

  else
  {
    sub_4FDD0(v7, v13);
  }

  return sub_5002C;
}

void sub_5002C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_528DC((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
    sub_60C4(v9 + v3, &qword_78920, &qword_63030);
    sub_4FDD0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_52944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78920, &qword_63030);
    sub_4FDD0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.hasPartialSuccess.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
  off_70B78();
  v2 = &v7 - v1;
  v3 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(v0 + *(v3 + 20), v2);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4) != 1;
  sub_60C4(v2, &qword_78920, &qword_63030);
  return v5;
}

Swift::Void __swiftcall Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.clearPartialSuccess()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  sub_60C4(v0 + v1, &qword_78920, &qword_63030);
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.init()@<X0>(uint64_t a2@<X8>)
{
  sub_5BCD4();
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_5044C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.errorMessage.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.errorMessage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
        sub_51A88(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
        sub_5BE84();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0), sub_51A88(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_320FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_50A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51A88(&qword_78990, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_50ADC(uint64_t a1)
{
  v2 = sub_51A88(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_50B48(uint64_t a1, uint64_t a2)
{
  sub_51A88(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  return sub_5BF14();
}

uint64_t sub_50BC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_320FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
        type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
        sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
        sub_5BEB4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_50E38(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_50E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
  off_70B78();
  v6 = v13 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v8 = *(v7 - 8);
  off_70B78();
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(a1 + *(v11 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_60C4(v6, &qword_78920, &qword_63030);
  }

  sub_4FDD0(v6, v10);
  sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
  sub_5C004();
  return sub_52944(v10, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
}

uint64_t sub_51078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5BCD4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_5113C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51A88(&qword_78988, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_511DC(uint64_t a1)
{
  v2 = sub_51A88(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_51248(uint64_t a1, uint64_t a2)
{
  sub_51A88(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);

  return sub_5BF14();
}

uint64_t sub_512F0()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7FAA8);
  __swift_project_value_buffer(v0, qword_7FAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rejected_data_points";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error_message";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_5BD64();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_5BDE4();
    }

    else if (result == 2)
    {
      sub_5BE54();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_5BF84(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_5BFB4(), !v4))
    {
      type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
      return sub_5BCC4();
    }
  }

  return result;
}
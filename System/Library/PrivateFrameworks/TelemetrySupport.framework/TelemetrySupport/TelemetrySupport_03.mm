uint64_t static Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.== infix(_:_:)(void *a1, void *a2)
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

  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

Swift::Int sub_51758(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_5C454();
  a1(0);
  sub_51A88(a2, a3, a4);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_5182C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51A88(&qword_78980, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_518CC(uint64_t a1)
{
  v2 = sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_51938(uint64_t a1, uint64_t a2)
{
  sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess, &protocol conformance descriptor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);

  return sub_5BF14();
}

uint64_t sub_519B4(void *a1, void *a2, uint64_t a3)
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
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_51A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16TelemetrySupport047Opentelemetry_Proto_Collector_Metrics_V1_ExportF15ServiceResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = *(v4 - 8);
  off_70B78();
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
  off_70B78();
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78998, &qword_635A8) - 8;
  off_70B78();
  v12 = &v22 - v11;
  v13 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  v14 = *(v10 + 56);
  sub_4FD40(a1 + v13, v12);
  sub_4FD40(a2 + v13, &v12[v14]);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) != 1)
  {
    sub_4FD40(v12, v9);
    if (v15(&v12[v14], 1, v4) != 1)
    {
      sub_4FDD0(&v12[v14], v7);
      if (*v9 == *v7)
      {
        v19 = v9[1] == v7[1] && v9[2] == v7[2];
        if (v19 || (sub_5C3A4() & 1) != 0)
        {
          sub_5BCE4();
          sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          v20 = sub_5C114();
          sub_52944(v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
          sub_52944(v9, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
          sub_60C4(v12, &qword_78920, &qword_63030);
          if (v20)
          {
            goto LABEL_4;
          }

LABEL_18:
          v16 = 0;
          return v16 & 1;
        }
      }

      sub_52944(v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
      sub_52944(v9, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
      v17 = &qword_78920;
      v18 = &qword_63030;
LABEL_17:
      sub_60C4(v12, v17, v18);
      goto LABEL_18;
    }

    sub_52944(v9, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
LABEL_7:
    v17 = &qword_78998;
    v18 = &qword_635A8;
    goto LABEL_17;
  }

  if (v15(&v12[v14], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_60C4(v12, &qword_78920, &qword_63030);
LABEL_4:
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v16 = sub_5C114();
  return v16 & 1;
}

uint64_t sub_52208(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_522C8(void *result, uint64_t a2, int a3, uint64_t a4)
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

void sub_5236C(uint64_t a1)
{
  sub_52700(319, &qword_78500, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_52434(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_52544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_5264C(uint64_t a1)
{
  sub_5BCE4();
  if (v1 <= 0x3F)
  {
    sub_52700(319, &qword_78978, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_52700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_52778(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_52838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_528DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_52944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_529B0()
{
  v0 = [objc_opt_self() sharedSession];

  return v0;
}

void *MetricExporter.__allocating_init(config:globalDimensions:urlSession:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for MetricExporterConfiguration(0);
  off_70BA8();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config;
  sub_53C28(a1, v9 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config, type metadata accessor for MetricExporterConfiguration);
  *(v9 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789A0, &qword_635B0);
  sub_53C28(a1, v8, type metadata accessor for MetricExporterConfiguration);
  v11 = sub_53688(v8, a3);

  sub_5398C(a1);
  if (v3)
  {

    sub_5398C(v9 + v10);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v9 + 16) = v11;
  }

  return v9;
}

void *MetricExporter.init(config:globalDimensions:urlSession:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  type metadata accessor for MetricExporterConfiguration(0);
  off_70BA8();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config;
  sub_53C28(a1, v5 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config, type metadata accessor for MetricExporterConfiguration);
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789A0, &qword_635B0);
  sub_53C28(a1, v10, type metadata accessor for MetricExporterConfiguration);
  v12 = sub_53688(v10, a3);

  sub_5398C(a1);
  if (v4)
  {

    sub_5398C(v5 + v11);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = v12;
  }

  return v5;
}

uint64_t OTLPGRPCClient<>.init(configuration:urlSession:)(uint64_t a1, void *a2)
{
  v3 = sub_53688(a1, a2);

  return v3;
}

{
  v3 = sub_5A738(a1, a2);

  return v3;
}

uint64_t sub_52D70()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_416C;

  return OTLPGRPCClient.run()();
}

uint64_t MetricExporter.export(metrics:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_5BD04();
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_52EF4, 0, 0);
}

uint64_t sub_52EF4()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v24 = v0[6];
    v25 = v0;
    v4 = v0[3];
    v5 = v4 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config;
    v6 = (v5 + *(type metadata accessor for MetricExporterConfiguration(0) + 20));
    v8 = *v6;
    v7 = v6[1];
    v26 = *(v4 + 24);
    v9 = (v2 + 32);
    v10 = _swiftEmptyArrayStorage;
    v23 = v7;
    do
    {
      v11 = v9[3];
      v12 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v11);
      v13 = (*(v12 + 48))(v8, v7, v26, v11, v12);
      v15 = v14;
      v16 = v8;
      sub_D038(v13, v14);
      sub_5BCF4();
      sub_53A2C();
      sub_5BEE4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_534B0(0, v10[2] + 1, 1, v10);
      }

      v1 = v25;
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        v10 = sub_534B0((v17 > 1), v18 + 1, 1, v10);
      }

      v19 = v25[7];
      sub_D08C(v13, v15);
      v10[2] = v18 + 1;
      sub_53A84(v19, v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18);
      v8 = v16;
      v7 = v23;
      v9 += 5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v1[8] = v10;
  if (v10[2])
  {
    v20 = swift_task_alloc();
    v1[9] = v20;
    *v20 = v1;
    v20[1] = sub_53214;

    return OTLPGRPCClient.export(request:)(v10);
  }

  else
  {

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_53214()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_53368, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_53368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MetricExporter.deinit()
{

  sub_5398C(v0 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config);
  return v0;
}

uint64_t MetricExporter.__deallocating_deinit()
{

  sub_5398C(v0 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config);

  return swift_deallocClassInstance();
}

void *sub_534B0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789A8, &qword_63610);
  v10 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) - 8);
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
  v15 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) - 8);
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

uint64_t sub_53688(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for OTLPExporterConfiguration(0);
  off_70BA8();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C094();
  off_70BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789B0, &qword_63618);
  off_70BA8();
  v9 = &v17 - v8;
  sub_5BA94();
  off_70BA8();
  sub_5B984();
  off_70BA8();
  (*(v11 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v12 = sub_5BA84();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = a2;
  sub_5BA74();
  sub_5C084();
  sub_5C0B4();
  swift_allocObject();
  v18 = sub_5C0A4();
  sub_53C28(a1, v7, type metadata accessor for OTLPExporterConfiguration);
  v14 = *(v3 + 136);

  v15 = v14(&v18, v7);
  sub_5398C(a1);

  return v15;
}

uint64_t sub_5398C(uint64_t a1)
{
  v2 = type metadata accessor for MetricExporterConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_53A2C()
{
  result = qword_786A8;
  if (!qword_786A8)
  {
    type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_786A8);
  }

  return result;
}

uint64_t sub_53A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MetricExporter(uint64_t a1)
{
  result = qword_803F8;
  if (!qword_803F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_53B3C(uint64_t a1)
{
  result = type metadata accessor for MetricExporterConfiguration(319);
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

uint64_t sub_53C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static TSDeadLine.now()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_5C0E4();
  v3 = *(v2 - 8);
  off_70BB0();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C0D4();
  v6 = sub_5C0C4();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t static TSDeadLine.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = sub_5C484();
  v8 = 1000000000 * result + v7 / 1000000000;
  v9 = __OFADD__(1000000000 * result, v7 / 1000000000);
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63 || v9)
  {
    v11 = v5 - 1;
    if (!v5)
    {
LABEL_11:
      *a4 = v11;
      return result;
    }

LABEL_10:
    v11 = -1;
    goto LABEL_11;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = __CFADD__(v5, v8);
    v11 = v5 + v8;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall Duration.nanoSeconds()()
{
  v0 = sub_5C484();
  v1 = (v0 * 1000000000) >> 64 != (1000000000 * v0) >> 63;
  v3 = 1000000000 * v0 + v2 / 1000000000;
  v4 = __OFADD__(1000000000 * v0, v2 / 1000000000);
  result = -1;
  if (!v1 && !v4)
  {
    result = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static TSDeadLine.>= infix(_:_:)(unint64_t *a1)
{
  v1 = *a1;
  result = sub_5C484();
  v4 = __OFADD__(1000000000 * result, v3 / 1000000000);
  v5 = -1;
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63)
  {
    return v1 >= v5;
  }

  if (v4)
  {
    return v1 >= v5;
  }

  v5 = 1000000000 * result + v3 / 1000000000;
  if ((v5 & 0x8000000000000000) == 0)
  {
    return v1 >= v5;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TSDeadLine(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TSDeadLine(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_53FD0()
{
  sub_65E8();

  return sub_5C064();
}

uint64_t sub_54064@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  sub_5C1A4();
  v4 = sub_5C274();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_5410C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  sub_5C1A4();
  v4 = sub_5C234();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_541B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_5420C(a1, a2, a3);
  return v6;
}

char *sub_5420C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v24 = a1;
  v25 = a2;
  v21 = *(*v3 + 80);
  v4 = sub_5C1A4();
  v22 = sub_5C214();
  v5 = *(v22 - 8);
  off_70C40(v22);
  v7 = &v19 - v6;
  v26 = sub_5C234();
  v23 = *(v26 - 8);
  off_70C40(v26);
  v9 = &v19 - v8;
  v20 = sub_5C274();
  v10 = *(v20 - 8);
  off_70C40(v20);
  v12 = &v19 - v11;
  sub_65E8();

  sub_5C064();
  v28 = sub_5C154();
  v13 = sub_55D8(&v28, v4);

  *(v3 + 2) = v13;
  v14 = v25;
  *&v3[qword_80A00] = v24;
  v15 = &v3[qword_80A08];
  v16 = v27;
  *v15 = v14;
  v15[1] = v16;
  v17 = v22;
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v22);
  sub_5C1F4();
  (*(v5 + 8))(v7, v17);
  (*(v10 + 32))(&v3[*(*v3 + 120)], v12, v20);
  (*(v23 + 32))(&v3[*(*v3 + 128)], v9, v26);
  return v3;
}

Swift::Void __swiftcall EventBuffer.flush()()
{
  v1 = *(v0 + 16);
  sub_5C1A4();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_55764((v1 + v2));

  os_unfair_lock_unlock((v1 + v3));
}

void sub_545F8(uint64_t *a1, uint64_t a2)
{
  sub_5C1A4();
  v3 = sub_5C204();
  v4 = *(v3 - 8);
  off_70C40(v3);
  v6 = v8 - v5;
  v7 = *a1;
  if (sub_5C174() >= 1)
  {
    v8[1] = v7;
    sub_5C234();

    sub_5C224();
    (*(v4 + 8))(v6, v3);
    swift_checkMetadataState();
    sub_5C194(0);
  }
}

void EventBuffer.process(event:)()
{
  v1 = *(v0 + 16);
  sub_5C1A4();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_55790((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

void sub_54824(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a3 + 80);
  sub_5C1A4();
  v7 = sub_5C204();
  v8 = *(v7 - 8);
  v9 = off_70C40(v7);
  v11 = v15 - v10;
  off_70C40(v9);
  (*(v13 + 16))(v15 - v12, a2, v6);
  swift_checkMetadataState();
  sub_5C184();
  v14 = *a1;
  if (sub_5C174() >= *(a3 + qword_80A00))
  {
    v15[1] = v14;
    sub_5C234();

    sub_5C224();
    (*(v8 + 8))(v11, v7);
    sub_5C194(0);
  }
}

uint64_t sub_54A64()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_54B38;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)();
}

uint64_t sub_54B38()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_54C64;
  }

  else
  {
    v2 = sub_54C4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_54C9C()
{
  v1 = (v0[2] + qword_80A08);
  v0[3] = *v1;
  v0[4] = v1[1];
  v2 = Duration.nanoSeconds()();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_54D58;

  return static Task<>.sleep(nanoseconds:)(v2);
}

uint64_t sub_54D58()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_54E88, 0, 0);
  }
}

uint64_t sub_54E88()
{
  EventBuffer.flush()();
  v1 = Duration.nanoSeconds()();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_54D58;

  return static Task<>.sleep(nanoseconds:)(v1);
}

char *EventBuffer.deinit()
{

  v1 = qword_80410;
  v2 = sub_5C074();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  sub_5C1A4();
  v4 = sub_5C274();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 128);
  v6 = sub_5C234();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t EventBuffer.__deallocating_deinit()
{
  EventBuffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t EventBuffer.makeAsyncIterator()()
{
  v1 = *v0;
  sub_5C1A4();
  v2 = sub_5C274();
  v3 = *(v2 - 8);
  off_70C40(v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, &v0[*(v1 + 120)], v2);
  sub_5C244();
  return (*(v3 + 8))(v5, v2);
}

uint64_t EventBuffer.AsyncIterator.next()(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  sub_5C1A4();
  v3 = sub_5C264();
  *v2 = v1;
  v2[1] = sub_552A4;

  return AsyncStream.Iterator.next()(v1 + 16, v3);
}

uint64_t sub_552A4()
{

  return _swift_task_switch(sub_553A0, 0, 0);
}

uint64_t sub_553B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_55450;

  return EventBuffer.AsyncIterator.next()(a2);
}

uint64_t sub_55450(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_55564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_55630;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6);
}

uint64_t sub_55630()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5572C()
{
  EventBuffer.makeAsyncIterator()();
}

uint64_t sub_557BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B30;

  return sub_54C7C(v2, v0);
}

uint64_t sub_55878(uint64_t a1)
{
  result = sub_5C074();
  if (v2 <= 0x3F)
  {
    sub_5C1A4();
    result = sub_5C274();
    if (v3 <= 0x3F)
    {
      result = sub_5C234();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_559EC(uint64_t a1)
{
  sub_5C1A4();
  result = sub_5C264();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_55A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5C1A4();
  v5 = sub_5C264();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_55B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_5C1A4();
  v6 = sub_5C264();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_55BAC(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_55BD8()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_55C08(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_55C60(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_55CB8()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_55CE8(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_55D40()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_55D70(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_55DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JSONEvent(0) + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for JSONEvent(uint64_t a1)
{
  result = qword_80620;
  if (!qword_80620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_55E90(uint64_t a1)
{
  v3 = *(type metadata accessor for JSONEvent(0) + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_55F54()
{
  type metadata accessor for JSONEvent(0);
}

uint64_t sub_55F88(uint64_t a1)
{
  v3 = *(type metadata accessor for JSONEvent(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_56010()
{
  type metadata accessor for JSONEvent(0);
}

uint64_t sub_56044(uint64_t a1)
{
  v3 = *(type metadata accessor for JSONEvent(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t JSONEvent.init(event:serial:source:sourceType:splunkIndex:resourceAttributes:attributes:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = type metadata accessor for JSONEvent(0);
  v26 = v22[11];
  v27 = v22[10];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v23 = v22[9];
  v24 = sub_5B9B4();
  result = (*(*(v24 - 8) + 32))(&a9[v23], a13, v24);
  *&a9[v27] = a11;
  *&a9[v26] = a12;
  return result;
}

uint64_t JSONEvent.toOTLPData()()
{
  v1 = sub_5BD24();
  v2 = *(v1 - 8);
  off_70C48(v1);
  v125 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0);
  off_70C48(v124);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  off_70C48(v6 - 8);
  v123 = (&v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  v9 = *(v8 - 8);
  v10 = off_70C48(v8 - 8);
  v135 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C48(v10);
  v13 = (&v119 - v12);
  v14 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v130 = *(v14 - 8);
  v15 = off_70C48(v14 - 8);
  v129 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C48(v15);
  v18 = &v119 - v17;
  v19 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  off_70C48(v19 - 8);
  v127 = (&v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v128 = *(v21 - 8);
  v22 = off_70C48(v21 - 8);
  v136 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C48(v22);
  v25 = &v119 - v24;
  Opentelemetry_Proto_Logs_V1_LogRecord.init()(&v119 - v24);
  v137 = type metadata accessor for JSONEvent(0);
  v138 = v0;
  v26 = (v0 + v137[9]);
  sub_5B994();
  v28 = v27 * 1000000000.0;
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_94;
  }

  if (v28 <= -1.0)
  {
    goto LABEL_95;
  }

  if (v28 >= 1.84467441e19)
  {
    goto LABEL_96;
  }

  v120 = v9;
  v121 = v2;
  v132 = v18;
  v133 = v13;
  v134 = v5;
  v122 = v1;
  v131 = v25;
  *v25 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
  inited = swift_initStackObject();
  v31 = inited;
  *(inited + 16) = xmmword_5FAB0;
  *(inited + 32) = 0x656C69662E676F6CLL;
  v9 = inited + 32;
  *(inited + 40) = 0xED0000687461702ELL;
  v32 = v138;
  if (v138[4])
  {
    v33 = v138[3];
    v34 = &type metadata for String;
    v35 = v138[4];
  }

  else
  {
    v33 = 0;
    v35 = 0;
    v34 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v33;
  *(inited + 56) = v35;
  *(inited + 72) = v34;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000000065720;
  v36 = v32[8];
  v126 = v29;
  if (v36)
  {
    v37 = v32[7];
    v38 = &type metadata for String;
    v39 = v36;
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v38 = 0;
    v31[14] = 0;
  }

  v31[12] = v37;
  v31[13] = v39;
  v31[15] = v38;
  v31[16] = 0xD000000000000015;
  v31[17] = 0x8000000000065740;
  v40 = v32[6];
  if (v40)
  {
    v41 = v32[5];
    v42 = &type metadata for String;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v31[20] = 0;
  }

  v31[18] = v41;
  v31[19] = v40;
  v31[21] = v42;

  v26 = sub_981C(v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  swift_arrayDestroy();
  v43 = *(v32 + v137[11]);
  if (!v43)
  {
    v18 = v133;
    v13 = v134;
    v9 = v131;
    v25 = v132;
LABEL_44:
    v69 = Array<A>.init(from:)(v26);

    *(v9 + 48) = v69;
    v70 = *v32;
    *(&v148 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780C8, &unk_5EF40);
    *&v147 = v70;

    v71 = v127;
    Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(&v147, v127);
    Opentelemetry_Proto_Logs_V1_LogRecord.body.setter(v71);
    Opentelemetry_Proto_Logs_V1_ScopeLogs.init()(v25);
    sub_99B4(v9, v136, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v26 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v129;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

  v25 = v43 + 64;
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v5 = v45 & *(v43 + 64);
  v46 = (v44 + 63) >> 6;
  v139 = *(v32 + v137[11]);

  v47 = 0;
  v140 = v46;
  v141 = v25;
  while (v5)
  {
    v48 = v47;
LABEL_28:
    v50 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v51 = v50 | (v48 << 6);
    v52 = (*(v139 + 48) + 16 * v51);
    v54 = *v52;
    v53 = v52[1];
    sub_62FC(*(v139 + 56) + 32 * v51, &v142);
    *&v144 = v54;
    *(&v144 + 1) = v53;
    sub_9B3C(&v142, &v145);

    v18 = v48;
LABEL_29:
    v147 = v144;
    v148 = v145;
    v149 = v146;
    v9 = *(&v144 + 1);
    if (!*(&v144 + 1))
    {

      v18 = v133;
      v13 = v134;
      v9 = v131;
      v25 = v132;
      v32 = v138;
      goto LABEL_44;
    }

    v13 = v147;
    sub_9B3C(&v148, &v144);
    v142 = v144;
    v143 = v145;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v26;
    v25 = sub_9094(v13, v9);
    v57 = v26[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_90;
    }

    v60 = v56;
    if (v26[3] >= v59)
    {
      if (v55)
      {
        if (v56)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_9668();
        if (v60)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_93A0(v59, v55);
      v61 = sub_9094(v13, v9);
      if ((v60 & 1) != (v62 & 1))
      {
LABEL_98:
        result = sub_5C3C4();
        __break(1u);
        return result;
      }

      v25 = v61;
      if (v60)
      {
LABEL_17:

        v26 = v150;
        sub_9B4C(&v142, v150[7] + 32 * v25);
        goto LABEL_18;
      }
    }

    v26 = v150;
    v150[(v25 >> 6) + 8] |= 1 << v25;
    v63 = (v26[6] + 16 * v25);
    *v63 = v13;
    v63[1] = v9;
    v64 = (v26[7] + 32 * v25);
    v65 = v143;
    *v64 = v142;
    v64[1] = v65;
    v66 = v26[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_92;
    }

    v26[2] = v68;
LABEL_18:
    v47 = v18;
    v46 = v140;
    v25 = v141;
  }

  if (v46 <= v47 + 1)
  {
    v49 = v47 + 1;
  }

  else
  {
    v49 = v46;
  }

  v18 = v49 - 1;
  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v46)
    {
      v5 = 0;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      goto LABEL_29;
    }

    v5 = *(v25 + 8 * v48);
    ++v47;
    if (v5)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    v26 = sub_91C4(0, v26[2] + 1, 1, v26, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
LABEL_45:
    v74 = v26[2];
    v73 = v26[3];
    if (v74 >= v73 >> 1)
    {
      v26 = sub_91C4((v73 > 1), v74 + 1, 1, v26, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    }

    v26[2] = v74 + 1;
    sub_9A1C(v136, v26 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v74, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    *v25 = v26;
    Opentelemetry_Proto_Logs_V1_ResourceLogs.init()(v18);
    sub_99B4(v25, v5, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    v75 = *v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_91C4(0, v75[2] + 1, 1, v75, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v77 = v75[2];
    v76 = v75[3];
    if (v77 >= v76 >> 1)
    {
      v75 = sub_91C4((v76 > 1), v77 + 1, 1, v75, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v75[2] = v77 + 1;
    sub_9A1C(v5, v75 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v77, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    *v18 = v75;
    v78 = swift_initStackObject();
    v79 = v78;
    *(v78 + 16) = xmmword_5EBD0;
    *(v78 + 32) = 0x692E656369766564;
    v80 = v78 + 32;
    *(v78 + 40) = 0xE900000000000064;
    v81 = v138;
    v82 = v138[2];
    if (v82)
    {
      v83 = v138[1];
      v84 = &type metadata for String;
    }

    else
    {
      v83 = 0;
      v84 = 0;
      *(v78 + 64) = 0;
    }

    *(v78 + 48) = v83;
    *(v78 + 56) = v82;
    *(v78 + 72) = v84;

    v26 = sub_981C(v79);
    swift_setDeallocating();
    sub_994C(v80);
    v85 = *(v81 + v137[10]);
    if (!v85)
    {
      goto LABEL_83;
    }

    v18 = v85 + 64;
    v86 = 1 << *(v85 + 32);
    v87 = -1;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v88 = v87 & *(v85 + 64);
    v25 = (v86 + 63) >> 6;
    v140 = *(v81 + v137[10]);

    v89 = 0;
    if (v88)
    {
      break;
    }

LABEL_61:
    if (v25 <= v89 + 1)
    {
      v91 = v89 + 1;
    }

    else
    {
      v91 = v25;
    }

    v92 = v91 - 1;
    while (1)
    {
      v5 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v5 >= v25)
      {
        v88 = 0;
        v145 = 0u;
        v146 = 0u;
        v144 = 0u;
        goto LABEL_69;
      }

      v88 = *(v18 + 8 * v5);
      ++v89;
      if (v88)
      {
        goto LABEL_68;
      }
    }
  }

  while (2)
  {
    v5 = v89;
LABEL_68:
    v93 = __clz(__rbit64(v88));
    v88 &= v88 - 1;
    v94 = v93 | (v5 << 6);
    v95 = (*(v140 + 48) + 16 * v94);
    v97 = *v95;
    v96 = v95[1];
    sub_62FC(*(v140 + 56) + 32 * v94, &v142);
    *&v144 = v97;
    *(&v144 + 1) = v96;
    sub_9B3C(&v142, &v145);

    v92 = v5;
LABEL_69:
    v147 = v144;
    v148 = v145;
    v149 = v146;
    v5 = *(&v144 + 1);
    if (*(&v144 + 1))
    {
      v9 = v18;
      v141 = v92;
      v13 = v147;
      sub_9B3C(&v148, &v144);
      v142 = v144;
      v143 = v145;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v150 = v26;
      v98 = sub_9094(v13, v5);
      v100 = v26[2];
      v101 = (v99 & 1) == 0;
      v67 = __OFADD__(v100, v101);
      v102 = v100 + v101;
      if (v67)
      {
        goto LABEL_91;
      }

      v103 = v99;
      if (v26[3] < v102)
      {
        sub_93A0(v102, v18);
        v98 = sub_9094(v13, v5);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_98;
        }

        goto LABEL_75;
      }

      if (v18)
      {
LABEL_75:
        v18 = v9;
        if (v103)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v110 = v98;
        sub_9668();
        v98 = v110;
        v18 = v9;
        if (v103)
        {
LABEL_59:
          v90 = v98;

          v26 = v150;
          sub_9B4C(&v142, v150[7] + 32 * v90);
          v89 = v141;
          if (!v88)
          {
            goto LABEL_61;
          }

          continue;
        }
      }

      v26 = v150;
      v150[(v98 >> 6) + 8] |= 1 << v98;
      v105 = (v26[6] + 16 * v98);
      *v105 = v13;
      v105[1] = v5;
      v106 = (v26[7] + 32 * v98);
      v107 = v143;
      *v106 = v142;
      v106[1] = v107;
      v108 = v26[2];
      v67 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v67)
      {
        goto LABEL_93;
      }

      v26[2] = v109;
      v89 = v141;
      if (!v88)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  v18 = v133;
  v13 = v134;
  v9 = v131;
  v25 = v132;
LABEL_83:
  v111 = Array<A>.init(from:)(v26);
  v112 = v123;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.getter(v123);

  *v112 = v111;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.setter(v112);
  Opentelemetry_Proto_Logs_V1_LogsData.init()(v13);
  sub_99B4(v18, v135, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  v113 = *v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v113 = sub_91C4(0, v113[2] + 1, 1, v113, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v115 = v113[2];
  v114 = v113[3];
  if (v115 >= v114 >> 1)
  {
    v113 = sub_91C4((v114 > 1), v115 + 1, 1, v113, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v113[2] = v115 + 1;
  sub_9A1C(v135, v113 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v115, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  *v13 = v113;
  v116 = v125;
  sub_5BD14();
  sub_9A84();
  v117 = sub_5BED4();
  (*(v121 + 8))(v116, v122);
  sub_9ADC(v13, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData);
  sub_9ADC(v18, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  sub_9ADC(v25, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
  sub_9ADC(v9, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  return v117;
}

uint64_t sub_57134(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5B9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_571F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_57298(uint64_t a1)
{
  sub_57350();
  if (v1 <= 0x3F)
  {
    sub_573B4();
    if (v2 <= 0x3F)
    {
      sub_5B9B4();
      if (v3 <= 0x3F)
      {
        sub_57404(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_57350()
{
  if (!qword_789B8)
  {
    v0 = sub_5C0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_789B8);
    }
  }
}

void sub_573B4()
{
  if (!qword_780A8)
  {
    v0 = sub_5C2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_780A8);
    }
  }
}

void sub_57404(uint64_t a1)
{
  if (!qword_780C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_780C8, &unk_5EF40);
    v1 = sub_5C2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_780C0);
    }
  }
}

uint64_t static MetricsService.request(fromUTF8Data:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_5BD04();
  off_70C58(v4 - 8);
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  sub_D038(a1, a2);
  sub_53A2C();
  sub_5BCF4();
  return sub_5BEE4();
}

uint64_t static MetricsService.handle(response:)(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  v3 = off_70C58(v2 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C58(v3);
  v7 = &v55 - v6;
  v8 = sub_5C074();
  v9 = *(v8 - 8);
  v10 = off_70C58(v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = off_70C58(v10);
  v57 = &v55 - v14;
  off_70C58(v13);
  v16 = &v55 - v15;
  v17 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v18 = off_70C58(v17 - 8);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70C58(v18);
  v22 = (&v55 - v21);
  if (Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.hasPartialSuccess.getter())
  {
    Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v22);
    v23 = *v22;
    sub_5849C(v22, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
    if (v23 < 1)
    {
      Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v20);
      v40 = v20[1];
      v39 = v20[2];

      sub_5849C(v20, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39 == 0xE000000000000000;
      }

      if (v41)
      {
      }

      else
      {
        v42 = sub_5C3A4();

        if ((v42 & 1) == 0)
        {
          v43 = sub_1508();
          v44 = v57;
          (*(v9 + 16))(v57, v43, v8);
          sub_584FC(a1, v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
          v45 = sub_5C054();
          v46 = sub_5C2B4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v56 = v8;
            v48 = v47;
            v49 = swift_slowAlloc();
            v59 = v49;
            *v48 = 136446210;
            Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v22);
            sub_5849C(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
            v50 = v44;
            v51 = v22[1];
            v52 = v22[2];

            sub_5849C(v22, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
            v53 = sub_4F84(v51, v52, &v59);

            *(v48 + 4) = v53;
            _os_log_impl(&dword_0, v45, v46, "Publish accepted data but sent warning. warning=%{public}s", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v49);

            return (*(v9 + 8))(v50, v56);
          }

          else
          {

            sub_5849C(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
            return (*(v9 + 8))(v44, v8);
          }
        }
      }
    }

    else
    {
      v24 = sub_1508();
      (*(v9 + 16))(v16, v24, v8);
      sub_584FC(a1, v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
      v25 = sub_5C054();
      v26 = sub_5C2B4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v56 = v8;
        v28 = v27;
        v29 = swift_slowAlloc();
        v58 = v23;
        v30 = v29;
        v59 = v29;
        *v28 = 134218242;
        *(v28 + 4) = v58;
        *(v28 + 12) = 2082;
        Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v22);
        sub_5849C(v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
        v31 = v22[1];
        v32 = v22[2];

        sub_5849C(v22, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
        v33 = sub_4F84(v31, v32, &v59);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_0, v25, v26, "Publish rejected data points. rejected_data_points=%ld error=%{public}s", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v23 = v58;

        (*(v9 + 8))(v16, v56);
      }

      else
      {

        sub_5849C(v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
        (*(v9 + 8))(v16, v8);
      }

      sub_5FD0();
      swift_allocError();
      *v54 = v23;
      *(v54 + 8) = 1;
      return swift_willThrow();
    }
  }

  else
  {
    v34 = sub_1508();
    (*(v9 + 16))(v12, v34, v8);
    v35 = sub_5C054();
    v36 = sub_5C2C4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Publish completed", v37, 2u);
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t MetricsService.export(_:metadata:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = a5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = sub_5BB34();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  v6[12] = swift_task_alloc();
  v6[13] = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) - 8);
  v6[14] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v5;
  v6[15] = v8;
  v6[16] = v9;

  return _swift_task_switch(sub_57DC4, 0, 0);
}

uint64_t sub_57DC4()
{
  v1 = v0[4];
  Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.init()(v0[15]);
  v33 = *(v1 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0[13];
    v29 = v0[11];
    v30 = *(v3 + 72);
    v31 = v0[4] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    do
    {
      v5 = v0[14];
      sub_584FC(v31 + v2 * v30, v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
      v6 = *v5;

      sub_5849C(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *v0[15];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_17AF4(0, v8[2] + 1, 1, v8);
        }

        v9 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v10 = v6 + v9;
        v11 = *(v29 + 72);
        do
        {
          sub_584FC(v10, v0[12], type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_17AF4((v12 > 1), v13 + 1, 1, v8);
          }

          v14 = v0[12];
          v8[2] = v13 + 1;
          sub_18454(v14, v8 + v9 + v13 * v11);
          v10 += v11;
          --v7;
        }

        while (v7);
        v4 = v0[15];

        *v4 = v8;
      }

      else
      {
      }

      ++v2;
    }

    while (v2 != v33);
  }

  v15 = v0[7];
  v0[2] = v0[16];

  Metadata.init(dict:)(v16);
  v18 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_MetricsService.Client(0, *(v15 + 16), *(v15 + 24), v17);
  v19 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  v20 = sub_3DDEC();
  v22 = v21;
  v0[17] = v21;
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = sub_58098;
  v24 = v0[15];
  v25 = v0[10];
  v26 = v0[6];
  v27 = v0[3];

  return sub_3DE08(v27, v24, v25, v26, v20, v22, v18, v19);
}

uint64_t sub_58098()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_582F4;
  }

  else
  {
    v5 = sub_58248;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_58248()
{
  sub_5849C(*(v0 + 120), type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_582F4()
{
  sub_5849C(*(v0 + 120), type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_583D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B30;

  return MetricsService.export(_:metadata:options:)(a1, a2, a3, a4, a5);
}

uint64_t sub_5849C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_584FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5856C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_58650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_58698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static LogsService.request(fromUTF8Data:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_5BD04();
  off_70C68(v4 - 8);
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  sub_D038(a1, a2);
  sub_587EC();
  sub_5BCF4();
  return sub_5BEE4();
}

unint64_t sub_587EC()
{
  result = qword_78850;
  if (!qword_78850)
  {
    type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78850);
  }

  return result;
}

uint64_t static LogsService.handle(response:)(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  v3 = off_70C68(v2 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C68(v3);
  v7 = &v55 - v6;
  v8 = sub_5C074();
  v9 = *(v8 - 8);
  v10 = off_70C68(v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = off_70C68(v10);
  v57 = &v55 - v14;
  off_70C68(v13);
  v16 = &v55 - v15;
  v17 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v18 = off_70C68(v17 - 8);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70C68(v18);
  v22 = (&v55 - v21);
  if (Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.hasPartialSuccess.getter())
  {
    Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v22);
    v23 = *v22;
    sub_59944(v22, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
    if (v23 < 1)
    {
      Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v20);
      v40 = v20[1];
      v39 = v20[2];

      sub_59944(v20, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39 == 0xE000000000000000;
      }

      if (v41)
      {
      }

      else
      {
        v42 = sub_5C3A4();

        if ((v42 & 1) == 0)
        {
          v43 = sub_1508();
          v44 = v57;
          (*(v9 + 16))(v57, v43, v8);
          sub_599A4(a1, v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
          v45 = sub_5C054();
          v46 = sub_5C2B4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v56 = v8;
            v48 = v47;
            v49 = swift_slowAlloc();
            v59 = v49;
            *v48 = 136446210;
            Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v22);
            sub_59944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
            v50 = v44;
            v51 = v22[1];
            v52 = v22[2];

            sub_59944(v22, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
            v53 = sub_4F84(v51, v52, &v59);

            *(v48 + 4) = v53;
            _os_log_impl(&dword_0, v45, v46, "Publish accepted data but sent warning. warning=%{public}s", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v49);

            return (*(v9 + 8))(v50, v56);
          }

          else
          {

            sub_59944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
            return (*(v9 + 8))(v44, v8);
          }
        }
      }
    }

    else
    {
      v24 = sub_1508();
      (*(v9 + 16))(v16, v24, v8);
      sub_599A4(a1, v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
      v25 = sub_5C054();
      v26 = sub_5C2B4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v56 = v8;
        v28 = v27;
        v29 = swift_slowAlloc();
        v58 = v23;
        v30 = v29;
        v59 = v29;
        *v28 = 134218242;
        *(v28 + 4) = v58;
        *(v28 + 12) = 2082;
        Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v22);
        sub_59944(v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
        v31 = v22[1];
        v32 = v22[2];

        sub_59944(v22, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
        v33 = sub_4F84(v31, v32, &v59);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_0, v25, v26, "Publish rejected log records rejected_log_records=%ld error=%{public}s", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v23 = v58;

        (*(v9 + 8))(v16, v56);
      }

      else
      {

        sub_59944(v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
        (*(v9 + 8))(v16, v8);
      }

      sub_5FD0();
      swift_allocError();
      *v54 = v23;
      *(v54 + 8) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v34 = sub_1508();
    (*(v9 + 16))(v12, v34, v8);
    v35 = sub_5C054();
    v36 = sub_5C2C4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Publish completed", v37, 2u);
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t LogsService.export(_:metadata:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = a5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = sub_5BB34();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
  v6[12] = swift_task_alloc();
  v6[13] = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) - 8);
  v6[14] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v5;
  v6[15] = v8;
  v6[16] = v9;

  return _swift_task_switch(sub_59094, 0, 0);
}

uint64_t sub_59094()
{
  v1 = v0[4];
  Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.init()(v0[15]);
  v33 = *(v1 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0[13];
    v29 = v0[11];
    v30 = *(v3 + 72);
    v31 = v0[4] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    do
    {
      v5 = v0[14];
      sub_599A4(v31 + v2 * v30, v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
      v6 = *v5;

      sub_59944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *v0[15];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5976C(0, v8[2] + 1, 1, v8);
        }

        v9 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v10 = v6 + v9;
        v11 = *(v29 + 72);
        do
        {
          sub_599A4(v10, v0[12], type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_5976C((v12 > 1), v13 + 1, 1, v8);
          }

          v14 = v0[12];
          v8[2] = v13 + 1;
          sub_59A0C(v14, v8 + v9 + v13 * v11);
          v10 += v11;
          --v7;
        }

        while (v7);
        v4 = v0[15];

        *v4 = v8;
      }

      else
      {
      }

      ++v2;
    }

    while (v2 != v33);
  }

  v15 = v0[7];
  v0[2] = v0[16];

  Metadata.init(dict:)(v16);
  v18 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_LogsService.Client(0, *(v15 + 16), *(v15 + 24), v17);
  v19 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  v20 = sub_4EDE4();
  v22 = v21;
  v0[17] = v21;
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = sub_59368;
  v24 = v0[15];
  v25 = v0[10];
  v26 = v0[6];
  v27 = v0[3];

  return sub_4EE00(v27, v24, v25, v26, v20, v22, v18, v19);
}

uint64_t sub_59368()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_595C4;
  }

  else
  {
    v5 = sub_59518;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_59518()
{
  sub_59944(*(v0 + 120), type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_595C4()
{
  sub_59944(*(v0 + 120), type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_596A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B30;

  return LogsService.export(_:metadata:options:)(a1, a2, a3, a4, a5);
}

void *sub_5976C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780E0, &unk_5EF70);
  v10 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
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
  v15 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
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

uint64_t sub_59944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_599A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_59A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_59A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int sub_59ACC()
{
  sub_5C454();
  sub_5C464(0);
  return sub_5C474();
}

Swift::Int sub_59B38(uint64_t a1)
{
  sub_5C454();
  sub_5C464(0);
  return sub_5C474();
}

uint64_t LogExporter.__allocating_init(config:urlSession:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  LogExporter.init(config:urlSession:)(a1, a2);
  return v4;
}

void *LogExporter.init(config:urlSession:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for OTLPExporterConfiguration(0);
  v8 = off_70C80(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C80(v8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for LogExporterConfiguration(0);
  off_70C80(v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59E50(a1, v15, type metadata accessor for LogExporterConfiguration);
  sub_6810(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789C0, &qword_63990);
  sub_59E50(v12, v10, type metadata accessor for OTLPExporterConfiguration);
  v16 = sub_5A738(v10, a2);

  sub_5AA50(a1, type metadata accessor for LogExporterConfiguration);
  sub_5AA50(v12, type metadata accessor for OTLPExporterConfiguration);
  if (v3)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v16;
  }

  return v4;
}

uint64_t type metadata accessor for LogExporterConfiguration(uint64_t a1)
{
  result = qword_80830;
  if (!qword_80830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_59E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LogExporter.export(jsonEvent:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_5BD04();
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_59FB8, 0, 0);
}

uint64_t sub_59FB8()
{
  v2 = JSONEvent.toOTLPData()();
  v4 = v3;
  sub_D038(v2, v3);
  sub_5BCF4();
  sub_587EC();
  sub_5BEE4();
  if (*(v0[3] + 16))
  {
    OTLPGRPCClient.enqueue(request:)();
  }

  sub_5AA50(v0[6], type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_D08C(v2, v4);

  v1 = v0[1];

  return v1();
}

uint64_t LogExporter.export(logEvent:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_5BD04();
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_5A1F4, 0, 0);
}

uint64_t sub_5A1F4()
{
  v2 = LogEvent.toOTLPData()();
  v4 = v3;
  sub_D038(v2, v3);
  sub_5BCF4();
  sub_587EC();
  sub_5BEE4();
  if (*(v0[3] + 16))
  {
    OTLPGRPCClient.enqueue(request:)();
  }

  sub_5AA50(v0[6], type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_D08C(v2, v4);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A390()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_416C;

    return OTLPGRPCClient.run()();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LogExporter.gracefulShutdown()()
{
  if (*(v0 + 16))
  {
    OTLPGRPCClient.gracefulShutdown()();
  }
}

uint64_t LogExporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t default argument 1 of OTLPGRPCClient<>.init(inProcessTransport:configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789C8, &qword_639B0);
  off_70C80(v2 - 8);
  v4 = &v17 - v3;
  sub_5B974();
  v5 = sub_5B984();
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_529A4();
    v8 = sub_5B3A0();
    v10 = v9;
    v11 = sub_5B3B4();
    v13 = v12;
    v14 = sub_5B3C8();
    v15 = sub_5B3B4();
    return OTLPExporterConfiguration.init(endpoint:timeout:metadata:defaultBackoff:maxBackoff:maxBufferSize:bufferFlushTimeout:)(v4, 0, 0, 1, v7, v8, v10, v11, a1, v13, v14, v15, v16);
  }

  return result;
}

uint64_t OTLPGRPCClient<>.init(inProcessTransport:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OTLPExporterConfiguration(0);
  off_70C80(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  sub_59E50(a2, v7, type metadata accessor for OTLPExporterConfiguration);
  v8 = *(v2 + 136);

  v9 = v8(&v12, v7);
  sub_5AA50(a2, type metadata accessor for OTLPExporterConfiguration);

  return v9;
}

uint64_t sub_5A738(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OTLPExporterConfiguration(0);
  off_70C80(v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5C094();
  off_70C80(v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789B0, &qword_63618);
  off_70C80(v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_5BA94();
  off_70C80(v13 - 8);
  v14 = sub_5B984();
  off_70C80(v14);
  (*(v16 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v17 = sub_5BA84();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = a2;
  sub_5BA74();
  sub_5C084();
  sub_5C0B4();
  swift_allocObject();
  v23 = sub_5C0A4();
  sub_59E50(a1, v8, type metadata accessor for OTLPExporterConfiguration);
  v19 = *(v3 + 136);

  v20 = v19(&v23, v8);
  sub_5AA50(a1, type metadata accessor for OTLPExporterConfiguration);

  return v20;
}

uint64_t sub_5AA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_5AAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789D0, qword_639B8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_5AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789D0, qword_639B8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_5ABB0(uint64_t a1)
{
  sub_5AC68();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for OTLPExporterConfiguration(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_5AC68()
{
  if (!qword_789D8)
  {
    v0 = type metadata accessor for OTLPExporterConfiguration(0);
    if (!v1)
    {
      atomic_store(v0, &qword_789D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for LogExporter.ExporterType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LogExporter.ExporterType(_WORD *result, int a2, int a3)
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

unint64_t sub_5ADF8()
{
  result = qword_80840[0];
  if (!qword_80840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_80840);
  }

  return result;
}

uint64_t sub_5AE4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5B984();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_5AEB4(uint64_t a1)
{
  v3 = sub_5B984();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for OTLPExporterConfiguration(uint64_t a1)
{
  result = qword_80950;
  if (!qword_80950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5AFA4(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for OTLPExporterConfiguration(0);
  v8 = v3 + *(result + 20);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t sub_5B038()
{
  type metadata accessor for OTLPExporterConfiguration(0);
}

uint64_t sub_5B06C(uint64_t a1)
{
  v3 = *(type metadata accessor for OTLPExporterConfiguration(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_5B11C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OTLPExporterConfiguration(0);
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_5B1CC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OTLPExporterConfiguration(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_5B278(uint64_t a1)
{
  result = type metadata accessor for OTLPExporterConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_5B318(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OTLPExporterConfiguration(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t OTLPExporterConfiguration.init(endpoint:timeout:metadata:defaultBackoff:maxBackoff:maxBufferSize:bufferFlushTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = type metadata accessor for OTLPExporterConfiguration(0);
  v20 = a9 + v19[5];
  v21 = sub_5B984();
  result = (*(*(v21 - 8) + 32))(a9, a1, v21);
  *v20 = a2;
  *(v20 + 8) = a3;
  *(v20 + 16) = a4 & 1;
  *(a9 + v19[6]) = a5;
  v23 = (a9 + v19[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + v19[8]);
  *v24 = a8;
  v24[1] = a10;
  *(a9 + v19[9]) = a11;
  v25 = (a9 + v19[10]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t sub_5B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5B984();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_5B5D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_5B984();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_5B68C(uint64_t a1)
{
  sub_5B984();
  if (v1 <= 0x3F)
  {
    sub_5B744();
    if (v2 <= 0x3F)
    {
      sub_1878C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_5B744()
{
  if (!qword_789E0)
  {
    v0 = sub_5C2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_789E0);
    }
  }
}

uint64_t dispatch thunk of OTLPServiceProtocol.export(_:metadata:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B30;

  return v15(a1, a2, a3, a4, a5, a6);
}
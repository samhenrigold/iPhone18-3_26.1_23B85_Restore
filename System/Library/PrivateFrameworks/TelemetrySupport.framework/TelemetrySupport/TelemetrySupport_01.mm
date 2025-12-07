void sub_19C24(uint64_t a1)
{
  sub_1878C();
  if (v1 <= 0x3F)
  {
    sub_5B9B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Histogram.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Histogram.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Histogram.dimensions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Histogram.unit.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Histogram.unit.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Histogram.startTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Histogram(0) + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Histogram(uint64_t a1)
{
  result = qword_79E50;
  if (!qword_79E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Histogram.startTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Histogram(0) + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Histogram.lastUpdateTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Histogram(0) + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Histogram.lastUpdateTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Histogram(0) + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Histogram.count.setter(uint64_t a1)
{
  result = type metadata accessor for Histogram(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Histogram.sum.setter(double a1)
{
  result = type metadata accessor for Histogram(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Histogram.bucketBounds.getter()
{
  type metadata accessor for Histogram(0);
}

uint64_t Histogram.bucketBounds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Histogram(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

void Histogram.init(name:dimensions:unit:sum:bucketBounds:bucketCounts:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  v13 = type metadata accessor for Histogram(0);
  sub_5B9A4();
  sub_5B9A4();
  *(a8 + v13[11]) = a6;
  if (a7)
  {
    v14 = *(a6 + 16) + 1;
    if (v14 == *(a7 + 16))
    {
      sub_1B288(0, v14, 0);
      v15 = 32;
      v16 = _swiftEmptyArrayStorage;
      while (1)
      {
        v17 = *(a7 + v15);
        if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_23;
        }

        if (v17 <= -1.0)
        {
          goto LABEL_24;
        }

        if (v17 >= 1.84467441e19)
        {
          goto LABEL_25;
        }

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_1B288((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        _swiftEmptyArrayStorage[v19 + 4] = v17;
        v15 += 8;
        if (!--v14)
        {

          goto LABEL_15;
        }
      }
    }
  }

  else
  {
  }

  v20 = *(a6 + 16);

  v21 = sub_5C164();
  v16 = v21;
  v21[2] = v20 + 1;
  v21[4] = 0;
  if (v20)
  {
    bzero(v21 + 5, 8 * v20);
  }

LABEL_15:
  *(a8 + v13[12]) = v16;
  v22 = v16[2];
  if (!v22)
  {
    v23 = 0;
LABEL_21:
    *(a8 + v13[9]) = v23;
    *(a8 + v13[10]) = a9;
    return;
  }

  v23 = 0;
  v24 = v16 + 4;
  while (1)
  {
    v25 = *v24++;
    v26 = __CFADD__(v23, v25);
    v23 += v25;
    if (v26)
    {
      break;
    }

    if (!--v22)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall Histogram.record(_:)(Swift::Double a1)
{
  v3 = sub_5B9B4();
  v4 = *(v3 - 8);
  off_70A28(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B9A4();
  v7 = type metadata accessor for Histogram(0);
  (*(v4 + 40))(v1 + *(v7 + 32), v6, v3);
  v8 = *(v7 + 36);
  v9 = *(v1 + v8);
  v10 = __CFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + v8) = v11;
  *(v1 + *(v7 + 40)) = *(v1 + *(v7 + 40)) + a1;
  v12 = *(v1 + *(v7 + 44));
  v3 = *(v12 + 16);
  if (!v3)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    v7 = sub_1B3AC(v7);
LABEL_5:
    v14 = *(v7 + 16);
    if (v3 >= v14)
    {
      __break(1u);
    }

    else
    {
      v14 = v7 + 32;
      v15 = *(v7 + 32 + 8 * v3);
      v10 = __CFADD__(v15, 1);
      v16 = v15 + 1;
      if (!v10)
      {
        *(v14 + 8 * v3) = v16;
        *(v1 + v6) = v7;
        return;
      }
    }

    __break(1u);
LABEL_21:
    v23 = v7;
    v24 = v14;
    v25 = sub_1B3AC(v23);
    v14 = v24;
    v7 = v25;
LABEL_12:
    if (v14 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v20 = v7 + 8 * v6;
      v21 = *(v20 + 24);
      v10 = __CFADD__(v21, 1);
      v22 = v21 + 1;
      if (!v10)
      {
        *(v20 + 24) = v22;
        *(v1 + v3) = v7;
        return;
      }
    }

    __break(1u);
    return;
  }

  v13 = v12 + 32;
  if (*(v13 + 8 * v3 - 8) < a1)
  {
    v6 = *(v7 + 48);
    v7 = *(v1 + v6);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v17 = 0;
  while (v3 != v17)
  {
    v6 = v17 + 1;
    v18 = *(v13 + 8 * v17++);
    if (v18 >= a1)
    {
      v3 = *(v7 + 48);
      v7 = *(v1 + v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v6 - 1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }
  }
}

uint64_t Histogram.toOTLPData(serviceName:globalDimensions:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v81 = a2;
  v80 = a1;
  v6 = sub_5BD24();
  v92 = *(v6 - 8);
  v93 = v6;
  off_70A28(v6);
  v91 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0);
  off_70A28(v88);
  v90 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  v87 = *(v9 - 8);
  v10 = off_70A28(v9 - 8);
  v94 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A28(v10);
  v89 = &v72 - v12;
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v86 = *(v13 - 8);
  off_70A28(v13 - 8);
  v97 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v84 = *(v82 - 8);
  off_70A28(v82);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  off_70A28(v17 - 8);
  v96 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v77 = *(v19 - 8);
  off_70A28(v19 - 8);
  v21 = (&v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v23 = off_70A28(v22 - 8);
  v83 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A28(v23);
  v26 = &v72 - v25;
  v27 = v4[1];
  v79 = *v4;
  v78 = v27;
  v28 = v4[2];
  v29 = type metadata accessor for Histogram(0);
  v31 = v29[7];
  v30 = v29[8];
  v32 = v29[12];
  v33 = *(v4 + v29[11]);
  v34 = v29[10];
  v73 = *(v4 + v29[9]);
  v35 = *(v4 + v34);
  v36 = v4[4];
  v76 = v4[3];
  v75 = v36;
  v74 = *(v4 + v32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = a3;
  v38 = v98;
  sub_1814C(v28, sub_18104, 0, isUniquelyReferenced_nonNull_native, &v99);
  v85 = v38;

  v39 = v99;
  v95 = v26;
  Opentelemetry_Proto_Resource_V1_Resource.init()(v26);
  v40 = (v4 + v31);
  sub_5B994();
  v42 = v41 * 1000000000.0;
  if (COERCE__INT64(fabs(v41 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v42 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v42 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40 = (v4 + v30);
  sub_5B994();
  v44 = v43 * 1000000000.0;
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v44 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v44 < 1.84467441e19)
  {
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
    inited = swift_initStackObject();
    v98 = xmmword_5EBD0;
    *(inited + 16) = xmmword_5EBD0;
    strcpy((inited + 32), "service.name");
    *(inited + 72) = &type metadata for String;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v80;
    *(inited + 56) = v81;

    v47 = sub_981C(inited);
    swift_setDeallocating();
    sub_60C4(inited + 32, &qword_78078, &qword_5EEE8);
    v48 = Array<A>.init(from:)(v47);
    v49 = v95;

    *v49 = v48;
    Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.init()(v21);
    v21[1] = v42;
    v21[2] = v45;
    v21[3] = v73;
    Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.setter(v35);

    v21[5] = v33;
    v50 = v74;

    v21[4] = v50;
    v51 = sub_17740(v39);

    v52 = Array<A>.init(from:)(v51);

    *v21 = v52;
    v53 = v96;
    Opentelemetry_Proto_Metrics_V1_Histogram.init()(v96);
    *(v53 + 8) = 2;
    *(v53 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78278, &unk_5F9E0);
    v54 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = v98;
    sub_1B4C4(v21, v55 + v54, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);

    *v53 = v55;
    Opentelemetry_Proto_Metrics_V1_Metric.init()(v16);
    v56 = v78;

    *v16 = v79;
    *(v16 + 1) = v56;
    v57 = v75;

    *(v16 + 4) = v76;
    *(v16 + 5) = v57;
    v58 = *(v82 + 28);
    sub_60C4(&v16[v58], &qword_78240, &qword_5FB10);
    sub_1B4C4(v53, &v16[v58], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    v59 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v59 - 8) + 56))(&v16[v58], 0, 1, v59);
    v60 = v97;
    Opentelemetry_Proto_Metrics_V1_ScopeMetrics.init()(v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78248, &qword_5F8E0);
    v61 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v98;
    sub_1B4C4(v16, v62 + v61, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);

    *v60 = v62;
    v26 = v89;
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.init()(v89);
    v63 = v83;
    sub_1B4C4(v49, v83, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78250, &qword_5F8E8);
    v64 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v98;
    sub_1B4C4(v60, v65 + v64, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

    *v26 = v65;
    v39 = v90;
    Opentelemetry_Proto_Metrics_V1_MetricsData.init()(v90);
    sub_1B4C4(v26, v94, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v40 = *v39;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v40 = sub_17AF4(0, v40[2] + 1, 1, v40);
LABEL_8:
  v66 = v93;
  v67 = v91;
  v69 = v40[2];
  v68 = v40[3];
  if (v69 >= v68 >> 1)
  {
    v40 = sub_17AF4((v68 > 1), v69 + 1, 1, v40);
  }

  v40[2] = v69 + 1;
  sub_18454(v94, v40 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v69);
  *v39 = v40;
  sub_5BD14();
  sub_184B8();
  v70 = sub_5BED4();
  (*(v92 + 8))(v67, v66);
  sub_1B52C(v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);
  sub_1B52C(v26, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
  sub_1B52C(v97, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
  sub_1B52C(v16, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
  sub_1B52C(v96, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
  sub_1B52C(v21, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);
  sub_1B52C(v95, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return v70;
}

char *sub_1B288(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B2A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78290, qword_5FA60);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1B3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78290, qword_5FA60);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_1B4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5B9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B704(uint64_t a1)
{
  sub_1878C();
  if (v1 <= 0x3F)
  {
    sub_5B9B4();
    if (v2 <= 0x3F)
    {
      sub_1B7F4(319, &qword_78280, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        sub_1B7F4(319, &qword_78288, &type metadata for UInt64);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_5C1A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t Opentelemetry_Proto_Metrics_V1_AggregationTemporality.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_1B904@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1B934@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A70();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t Opentelemetry_Proto_Metrics_V1_DataPointFlags.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_DataPointFlags.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_1BA18@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1BA30()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1BA5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1BA78(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int sub_1BA9C(uint64_t a1, uint64_t a2)
{
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_1BB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_393FC();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

BOOL sub_1BBC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t Opentelemetry_Proto_Metrics_V1_MetricsData.resourceMetrics.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70AC0(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78298, &qword_5FB00);
  v7 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_1BE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70AC0(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78298, &qword_5FB00);
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_1BFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v7, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 28);
  sub_60C4(a2 + v8, &qword_78298, &qword_5FB00);
  sub_1C814(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 28);
  sub_60C4(v1 + v3, &qword_78298, &qword_5FB00);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 28);
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
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  return sub_1C3C4;
}

void sub_1C3C4(uint64_t **a1, char a2)
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
    sub_1CF34((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    sub_60C4(v9 + v3, &qword_78298, &qword_5FB00);
    sub_1C814(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78298, &qword_5FB00);
    sub_1C814(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.scope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70AC0(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_782A0, &qword_5FB08);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_1C814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70AC0(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_782A0, &qword_5FB08);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_1C9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 28);
  sub_60C4(a2 + v8, &qword_782A0, &qword_5FB08);
  sub_1C814(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.scope.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 28);
  sub_60C4(v1 + v3, &qword_782A0, &qword_5FB08);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Metrics_V1_ScopeMetrics.scope.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 28);
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
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  return sub_1CDCC;
}

void sub_1CDCC(uint64_t **a1, char a2)
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
    sub_1CF34((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
    sub_60C4(v9 + v3, &qword_782A0, &qword_5FB08);
    sub_1C814(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_782A0, &qword_5FB08);
    sub_1C814(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1CF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D038(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  off_70AC0(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_A024(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_60C4(v11, a1, a2);
  return v14;
}

uint64_t sub_1D170(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_60C4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.schemaURL.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.schemaURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1D2DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D378(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D46C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
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

uint64_t sub_1D538@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.description_p.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.description_p.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.unit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.unit.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.data.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);

  return sub_1D828(a1, v3);
}

uint64_t sub_1D828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.gauge.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  return sub_5BCD4();
}

uint64_t sub_1DA5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78240, &qword_5FB10);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_60C4(v6, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    }

    sub_1CF9C(v6, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a2 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  return sub_5BCD4();
}

uint64_t sub_1DC54@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a1(0);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.gauge.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v11;
  sub_A024(v1 + v11, v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      return sub_1DEF0;
    }

    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *v10 = _swiftEmptyArrayStorage;
  sub_5BCD4();
  return sub_1DEF0;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.sum.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.sum.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v11;
  sub_A024(v1 + v11, v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    sub_5BCD4();
    return sub_1E3E8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
  return sub_1E3E8;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.histogram.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.histogram.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v11;
  sub_A024(v1 + v11, v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    sub_5BCD4();
    return sub_1E8B0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
  return sub_1E8B0;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.exponentialHistogram.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
  return sub_5BCD4();
}

uint64_t sub_1EB18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  a1(0);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.exponentialHistogram.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v11;
  sub_A024(v1 + v11, v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    sub_5BCD4();
    return sub_1EDC8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  return sub_1EDC8;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.summary.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  return sub_5BCD4();
}

uint64_t sub_1EF8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78240, &qword_5FB10);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_60C4(v6, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    }

    sub_1CF9C(v6, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a2 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  return sub_5BCD4();
}

uint64_t sub_1F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  off_70AC0(v12 - 8);
  v14 = &v18 - v13;
  sub_1CF34(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  sub_60C4(a2 + v15, &qword_78240, &qword_5FB10);
  sub_1C814(v14, a2 + v15, a7);
  v16 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t sub_1F290(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  sub_60C4(v3 + v6, &qword_78240, &qword_5FB10);
  sub_1C814(a1, v3 + v6, a2);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.summary.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v11;
  sub_A024(v1 + v11, v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    sub_5BCD4();
    return sub_1F5CC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
  return sub_1F5CC;
}

void sub_1F610(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1CF34(v12, v11, a5);
    sub_60C4(v13 + v10, &qword_78240, &qword_5FB10);
    sub_1C814(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_1CF9C(v12, a6);
  }

  else
  {
    sub_60C4(v13 + v10, &qword_78240, &qword_5FB10);
    sub_1C814(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.metadata.getter()
{
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[*(v2 + 32)] = _swiftEmptyArrayStorage;
  return sub_5BCD4();
}

uint64_t sub_1F9F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1FA90(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void Opentelemetry_Proto_Metrics_V1_Sum.aggregationTemporality.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.aggregationTemporality.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void Opentelemetry_Proto_Metrics_V1_NumberDataPoint.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

double Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asDouble.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 32))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_20008@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 32))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

void *sub_20024(void *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  *(a2 + 32) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asDouble.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_2007C;
}

void *sub_2007C(void *result)
{
  v1 = result[1];
  *(v1 + 24) = *result;
  *(v1 + 32) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asInt.getter()
{
  v1 = *(v0 + 32);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t sub_200AC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = *(result + 24);
  }

  return result;
}

void *sub_200D0(void *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  *(a2 + 32) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asInt.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 32) = 1;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asInt.modify(void *a1))()
{
  a1[1] = v1;
  v2 = *(v1 + 32);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 24);
  }

  *a1 = v3;
  return sub_20138;
}

void *sub_20138(void *result)
{
  v1 = result[1];
  *(v1 + 24) = *result;
  *(v1 + 32) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.exemplars.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0) + 40);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0) + 40);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
  return sub_5BCD4();
}

double Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 52);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2041C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a1 + *(result + 52);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20468(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a2 + *(result + 52);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.clearSum()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 52);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.bucketCounts.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.exemplars.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.min.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.min.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.clearMin()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 56);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.max.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 60);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_20824@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a1 + *(result + 60);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20870(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a2 + *(result + 60);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.max.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.max.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 60);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_20950;
}

uint64_t sub_20950(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.clearMax()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 60);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 48);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 48);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = _swiftEmptyArrayStorage;
  *(a1 + 56) = 0;
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  result = sub_5BCD4();
  v4 = a1 + v2[13];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v2[14];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v2[15];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

double sub_20C28(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 56);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_20C80@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, double *a3@<X8>)
{
  result = a2(0);
  v6 = a1 + *(result + 56);
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20CE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = (a5)(0, a2, a3, a4);
  v8 = a2 + *(result + 56);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.sum.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.sum.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearSum()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 56);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.positive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v1 + *(v6 + 60), v5, &qword_782A8, &qword_5FB18);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  sub_5BCD4();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_20FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v7 + 60), v6, &qword_782A8, &qword_5FB18);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_21160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  sub_60C4(a2 + v8, &qword_782A8, &qword_5FB18);
  sub_1C814(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.positive.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  sub_60C4(v1 + v3, &qword_782A8, &qword_5FB18);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.positive.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_782A8, &qword_5FB18);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = _swiftEmptyArrayStorage;
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_782A8, &qword_5FB18);
    }
  }

  else
  {
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  return sub_39584;
}

BOOL Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.hasPositive.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v0 + *(v4 + 60), v3, &qword_782A8, &qword_5FB18);
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_60C4(v3, &qword_782A8, &qword_5FB18);
  return v6;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearPositive()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  sub_60C4(v0 + v1, &qword_782A8, &qword_5FB18);
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.negative.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v1 + *(v6 + 64), v5, &qword_782A8, &qword_5FB18);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  sub_5BCD4();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_21898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v7 + 64), v6, &qword_782A8, &qword_5FB18);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_21A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  sub_60C4(a2 + v8, &qword_782A8, &qword_5FB18);
  sub_1C814(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.negative.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  sub_60C4(v1 + v3, &qword_782A8, &qword_5FB18);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.negative.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_782A8, &qword_5FB18);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = _swiftEmptyArrayStorage;
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_782A8, &qword_5FB18);
    }
  }

  else
  {
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  return sub_21E10;
}

void sub_21E10(uint64_t **a1, char a2)
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
    sub_1CF34((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    sub_60C4(v9 + v3, &qword_782A8, &qword_5FB18);
    sub_1C814(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_782A8, &qword_5FB18);
    sub_1C814(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.hasNegative.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v0 + *(v4 + 64), v3, &qword_782A8, &qword_5FB18);
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_60C4(v3, &qword_782A8, &qword_5FB18);
  return v6;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearNegative()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  sub_60C4(v0 + v1, &qword_782A8, &qword_5FB18);
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.exemplars.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

double Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.min.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 68);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_221A4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a1 + *(result + 68);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_221F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a2 + *(result + 68);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.min.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v4 = v1 + *(result + 68);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.min.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 68);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearMin()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 68);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.max.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 72);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_22368@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a1 + *(result + 72);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_223B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a2 + *(result + 72);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.max.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v4 = v1 + *(result + 72);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.max.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 72);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearMax()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 72);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 52);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 52);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.bucketCounts.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = _swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_5BCD4();
  v3 = a1 + v2[14];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[15];
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  result = (v6)(a1 + v2[16], 1, 1, v5);
  v8 = a1 + v2[17];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v2[18];
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0) + 44);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0) + 44);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
  *a1 = 0;
  a1[1] = 0;
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0);
  return sub_5BCD4();
}

void Opentelemetry_Proto_Metrics_V1_Exemplar.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

double Opentelemetry_Proto_Metrics_V1_Exemplar.asDouble.getter()
{
  result = *(v0 + 16);
  if (*(v0 + 24))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_22CE8@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 16);
  if (*(result + 24))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

void *sub_22D04(void *result, uint64_t a2)
{
  *(a2 + 16) = *result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_Exemplar.asDouble.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_22D5C;
}

void *sub_22D5C(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.asInt.getter()
{
  v1 = *(v0 + 24);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t sub_22D8C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

void *sub_22DB0(void *result, uint64_t a2)
{
  *(a2 + 16) = *result;
  *(a2 + 24) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.asInt.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_Exemplar.asInt.modify(void *a1))()
{
  a1[1] = v1;
  v2 = *(v1 + 24);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3;
  return sub_22E18;
}

void *sub_22E18(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.spanID.getter()
{
  v1 = *(v0 + 32);
  sub_D038(v1, *(v0 + 40));
  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.spanID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.traceID.getter()
{
  v1 = *(v0 + 48);
  sub_D038(v1, *(v0 + 56));
  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.traceID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_22F68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23004(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_230D0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 8) & 1) == 0)
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  if (*&v2 == *&v3)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 24) = -1;
  *(a1 + 32) = xmmword_5EFA0;
  *(a1 + 48) = xmmword_5EFA0;
  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
  return sub_5BCD4();
}

uint64_t sub_23170()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79E68);
  __swift_project_value_buffer(v0, qword_79E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AGGREGATION_TEMPORALITY_UNSPECIFIED";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AGGREGATION_TEMPORALITY_DELTA";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "AGGREGATION_TEMPORALITY_CUMULATIVE";
  *(v11 + 8) = 34;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_233EC()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79E88);
  __swift_project_value_buffer(v0, qword_79E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DATA_POINT_FLAGS_DO_NOT_USE";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DATA_POINT_FLAGS_NO_RECORDED_VALUE_MASK";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_MetricsData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0), sub_35A28(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_23814(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_23960(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785F8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_MetricsData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_23A00(uint64_t a1)
{
  v2 = sub_35A28(&qword_78258, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_MetricsData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_23A6C(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78258, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_MetricsData);

  return sub_5BF14();
}

uint64_t sub_23B28()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79EC8);
  __swift_project_value_buffer(v0, qword_79EC8);
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
  *v10 = "scope_metrics";
  *(v10 + 1) = 13;
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

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
          sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
          sub_5BE84();
          break;
        case 1:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
          type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
          sub_35A28(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_24044(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
      sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
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

    type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_24044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v9 = *(v8 - 8);
  off_70AC0(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  sub_A024(a1 + *(v12 + 28), v7, &qword_78298, &qword_5FB00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_78298, &qword_5FB00);
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_35A28(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_5C004();
  return sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
}

uint64_t sub_24334(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785F0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_243D4(uint64_t a1)
{
  v2 = sub_35A28(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_24440(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);

  return sub_5BF14();
}

uint64_t sub_244E8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79EE8);
  __swift_project_value_buffer(v0, qword_79EE8);
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
  *v10 = "metrics";
  *(v10 + 1) = 7;
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

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
          sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Metric);
          sub_5BE84();
          break;
        case 1:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
          type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
          sub_35A28(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A00(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
      sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Metric);
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

    type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_24A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v9 = *(v8 - 8);
  off_70AC0(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  sub_A024(a1 + *(v12 + 28), v7, &qword_782A0, &qword_5FB08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_782A0, &qword_5FB08);
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_35A28(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_5C004();
  return sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
}

uint64_t sub_24C80@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = _swiftEmptyArrayStorage;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0xE000000000000000;
  sub_5BCD4();
  v6 = *(a1 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t sub_24D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_24E18(uint64_t a1)
{
  v2 = sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_24E84(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

  return sub_5BF14();
}

uint64_t sub_24F2C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F08);
  __swift_project_value_buffer(v0, qword_79F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_5FAC0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "description";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "unit";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "gauge";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "sum";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 9;
  *v17 = "histogram";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 10;
  *v19 = "exponential_histogram";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "summary";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 12;
  *v22 = "metadata";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_5BD64();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 6)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

          if (result == 5)
          {
            sub_254F4(v5, a1, a2, a3);
          }
        }

        else if (result == 1 || result == 2)
        {
LABEL_4:
          sub_5BE54();
        }
      }

      else if (result <= 9)
      {
        if (result == 7)
        {
          sub_25ABC(v5, a1, a2, a3);
        }

        else if (result == 9)
        {
          sub_26084(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 10:
            sub_2664C(v5, a1, a2, a3);
            break;
          case 11:
            sub_26C14(v5, a1, a2, a3);
            break;
          case 12:
            type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BE84();
            break;
        }
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t sub_254F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  v6 = *(v5 - 8);
  v7 = off_70AC0(v5);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v7);
  v44 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = off_70AC0(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78618, &qword_61A30);
  v21 = off_70AC0(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v43 = a1;
  v41 = v28;
  sub_A024(a1 + v28, v12, &qword_78240, &qword_5FB10);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_60C4(v12, &qword_78240, &qword_5FB10);
    v30 = v13;
    v31 = v49;
  }

  else
  {
    sub_1C814(v12, v19, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v19, v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      v31 = v49;
    }

    else
    {
      sub_60C4(v24, &qword_78618, &qword_61A30);
      v32 = v17;
      v33 = v44;
      sub_1C814(v32, v44, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      sub_1C814(v33, v24, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      v31 = v49;
      v27(v24, 0, 1, v49);
    }
  }

  v34 = v47;
  sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Gauge);
  v35 = v48;
  sub_5BEB4();
  if (v35)
  {
    return sub_60C4(v24, &qword_78618, &qword_61A30);
  }

  sub_A024(v24, v34, &qword_78618, &qword_61A30);
  if ((*(v46 + 48))(v34, 1, v31) == 1)
  {
    sub_60C4(v24, &qword_78618, &qword_61A30);
    return sub_60C4(v34, &qword_78618, &qword_61A30);
  }

  else
  {
    v37 = v45;
    sub_1C814(v34, v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    if (v29 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v24, &qword_78618, &qword_61A30);
    v38 = v43;
    v39 = v41;
    sub_60C4(v43 + v41, &qword_78240, &qword_5FB10);
    sub_1C814(v37, v38 + v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_25ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  v6 = *(v5 - 8);
  v7 = off_70AC0(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = off_70AC0(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78620, &qword_61A38);
  v21 = off_70AC0(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v43 = a1;
  v41 = v28;
  sub_A024(a1 + v28, v12, &qword_78240, &qword_5FB10);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_60C4(v12, &qword_78240, &qword_5FB10);
    v30 = v13;
  }

  else
  {
    sub_1C814(v12, v19, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v19, v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_60C4(v24, &qword_78620, &qword_61A38);
      v31 = v17;
      v32 = v45;
      sub_1C814(v31, v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
      sub_1C814(v32, v24, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Sum);
  v35 = v48;
  sub_5BEB4();
  if (v35)
  {
    return sub_60C4(v24, &qword_78620, &qword_61A38);
  }

  sub_A024(v24, v34, &qword_78620, &qword_61A38);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_60C4(v24, &qword_78620, &qword_61A38);
    return sub_60C4(v34, &qword_78620, &qword_61A38);
  }

  else
  {
    v37 = v44;
    sub_1C814(v34, v44, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    if (v29 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v24, &qword_78620, &qword_61A38);
    v38 = v43;
    v39 = v41;
    sub_60C4(v43 + v41, &qword_78240, &qword_5FB10);
    sub_1C814(v37, v38 + v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_26084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  v6 = *(v5 - 8);
  v7 = off_70AC0(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = off_70AC0(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78628, &qword_61A40);
  v21 = off_70AC0(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v43 = a1;
  v41 = v28;
  sub_A024(a1 + v28, v12, &qword_78240, &qword_5FB10);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_60C4(v12, &qword_78240, &qword_5FB10);
    v30 = v13;
  }

  else
  {
    sub_1C814(v12, v19, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v19, v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_60C4(v24, &qword_78628, &qword_61A40);
      v31 = v17;
      v32 = v45;
      sub_1C814(v31, v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      sub_1C814(v32, v24, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Histogram);
  v35 = v48;
  sub_5BEB4();
  if (v35)
  {
    return sub_60C4(v24, &qword_78628, &qword_61A40);
  }

  sub_A024(v24, v34, &qword_78628, &qword_61A40);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_60C4(v24, &qword_78628, &qword_61A40);
    return sub_60C4(v34, &qword_78628, &qword_61A40);
  }

  else
  {
    v37 = v44;
    sub_1C814(v34, v44, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    if (v29 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v24, &qword_78628, &qword_61A40);
    v38 = v43;
    v39 = v41;
    sub_60C4(v43 + v41, &qword_78240, &qword_5FB10);
    sub_1C814(v37, v38 + v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_2664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
  v6 = *(v5 - 8);
  v7 = off_70AC0(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = off_70AC0(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78630, &qword_61A48);
  v21 = off_70AC0(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v43 = a1;
  v41 = v28;
  sub_A024(a1 + v28, v12, &qword_78240, &qword_5FB10);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_60C4(v12, &qword_78240, &qword_5FB10);
    v30 = v13;
  }

  else
  {
    sub_1C814(v12, v19, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v19, v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_60C4(v24, &qword_78630, &qword_61A48);
      v31 = v17;
      v32 = v45;
      sub_1C814(v31, v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
      sub_1C814(v32, v24, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  v35 = v48;
  sub_5BEB4();
  if (v35)
  {
    return sub_60C4(v24, &qword_78630, &qword_61A48);
  }

  sub_A024(v24, v34, &qword_78630, &qword_61A48);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_60C4(v24, &qword_78630, &qword_61A48);
    return sub_60C4(v34, &qword_78630, &qword_61A48);
  }

  else
  {
    v37 = v44;
    sub_1C814(v34, v44, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    if (v29 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v24, &qword_78630, &qword_61A48);
    v38 = v43;
    v39 = v41;
    sub_60C4(v43 + v41, &qword_78240, &qword_5FB10);
    sub_1C814(v37, v38 + v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_26C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  v6 = *(v5 - 8);
  v7 = off_70AC0(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = off_70AC0(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78638, &unk_61A50);
  v21 = off_70AC0(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v43 = a1;
  v41 = v28;
  sub_A024(a1 + v28, v12, &qword_78240, &qword_5FB10);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_60C4(v12, &qword_78240, &qword_5FB10);
    v30 = v13;
  }

  else
  {
    sub_1C814(v12, v19, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v19, v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_60C4(v24, &qword_78638, &unk_61A50);
      v31 = v17;
      v32 = v45;
      sub_1C814(v31, v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
      sub_1C814(v32, v24, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Summary);
  v35 = v48;
  sub_5BEB4();
  if (v35)
  {
    return sub_60C4(v24, &qword_78638, &unk_61A50);
  }

  sub_A024(v24, v34, &qword_78638, &unk_61A50);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_60C4(v24, &qword_78638, &unk_61A50);
    return sub_60C4(v34, &qword_78638, &unk_61A50);
  }

  else
  {
    v37 = v44;
    sub_1C814(v34, v44, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    if (v29 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v24, &qword_78638, &unk_61A50);
    v38 = v43;
    v39 = v41;
    sub_60C4(v43 + v41, &qword_78240, &qword_5FB10);
    sub_1C814(v37, v38 + v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v8 - 8);
  v10 = &v21 - v9;
  v11 = v3[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = sub_5BFB4(), !v4))
  {
    v14 = v3[3];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 || (result = sub_5BFB4(), !v4))
    {
      v16 = v3[5];
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v17 || (result = sub_5BFB4(), !v4))
      {
        v18 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
        sub_A024(v3 + *(v18 + 28), v10, &qword_78240, &qword_5FB10);
        v19 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
        if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
        {
          goto LABEL_29;
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            sub_27730(v3, a1, a2, a3);
          }

          else
          {
            sub_274F0(v3, a1, a2, a3);
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          sub_27974(v3, a1, a2, a3);
        }

        else if (EnumCaseMultiPayload == 3)
        {
          sub_27BB8(v3, a1, a2, a3);
        }

        else
        {
          sub_27DFC(v3, a1, a2, a3);
        }

        result = sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
        if (!v4)
        {
LABEL_29:
          if (!*(*(v3 + *(v18 + 32)) + 16))
          {
            return sub_5BCC4();
          }

          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
          result = sub_5BFD4();
          if (!v4)
          {
            return sub_5BCC4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_274F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  off_70AC0(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v11 + 28), v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Gauge);
    sub_5C004();
    return sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
  }

  result = sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  off_70AC0(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v11 + 28), v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Sum);
    sub_5C004();
    return sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
  }

  result = sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  off_70AC0(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v11 + 28), v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Histogram);
    sub_5C004();
    return sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
  }

  result = sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
  off_70AC0(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v11 + 28), v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    sub_5C004();
    return sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  }

  result = sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  off_70AC0(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v11 + 28), v7, &qword_78240, &qword_5FB10);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C814(v7, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Summary);
    sub_5C004();
    return sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
  }

  result = sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_2808C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *&a2[*(a1 + 32)] = _swiftEmptyArrayStorage;
  return sub_5BCD4();
}

uint64_t sub_2819C(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785E0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Metric);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2823C(uint64_t a1)
{
  v2 = sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Metric);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_282A8(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Metric);

  return sub_5BF14();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Gauge.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0), sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_28584(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785D8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Gauge);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_28624(uint64_t a1)
{
  v2 = sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Gauge);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_28690(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Gauge);

  return sub_5BF14();
}

uint64_t sub_2874C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F48);
  __swift_project_value_buffer(v0, qword_79F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data_points";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aggregation_temporality";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_monotonic";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_5BD94();
          break;
        case 2:
          sub_35A70();
          sub_5BDA4();
          break;
        case 1:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
          sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
          sub_5BE84();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
    sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    v6 = sub_5BFD4();
    if (v4)
    {
      return v6;
    }

    v5 = 0;
  }

  if (*(v3 + 8))
  {
    sub_35A70();
    v7 = v5;
    v6 = sub_5BF54();
    if (v5)
    {
      return v6;
    }
  }

  else
  {
    v7 = v5;
  }

  if (*(v3 + 17) != 1 || (v6 = sub_5BF44(), !v7))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
    return sub_5BCC4();
  }

  return v6;
}

uint64_t sub_28C8C@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_5BCD4();
}

uint64_t sub_28CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_28D50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_28E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Sum);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_28EB8(uint64_t a1)
{
  v2 = sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Sum);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_28F24(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Sum);

  return sub_5BF14();
}

uint64_t sub_28FCC()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F68);
  __swift_project_value_buffer(v0, qword_79F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data_points";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aggregation_temporality";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Histogram.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0), sub_35A28(&qword_78308, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint), v5 = sub_5BFD4(), !v4))
  {
    if (!v3[1] || (sub_35A70(), v5 = sub_5BF54(), !v4))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
      return sub_5BCC4();
    }
  }

  return v5;
}

uint64_t sub_29404(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785C8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Histogram);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_294A4(uint64_t a1)
{
  v2 = sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Histogram);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_29510(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Histogram);

  return sub_5BF14();
}

uint64_t sub_295B8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F88);
  __swift_project_value_buffer(v0, qword_79F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data_points";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aggregation_temporality";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_29824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  result = sub_5BD64();
  if (!v7)
  {
    while ((v13 & 1) == 0)
    {
      if (result == 1)
      {
        a4(0);
        sub_35A28(a5, a6, a7);
        sub_5BE84();
      }

      else if (result == 2)
      {
        sub_35A70();
        sub_5BDA4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogram.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0), sub_35A28(&qword_78318, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint), v5 = sub_5BFD4(), !v4))
  {
    if (!v3[1] || (sub_35A70(), v5 = sub_5BF54(), !v4))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
      return sub_5BCC4();
    }
  }

  return v5;
}

uint64_t sub_29AE8@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_5BCD4();
}

uint64_t sub_29B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_29C08(uint64_t a1)
{
  v2 = sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_29C74(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);

  return sub_5BF14();
}

uint64_t sub_29D34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_5C044();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5EBD0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = sub_5C024();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_5C034();
}

uint64_t sub_29F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_5BD64();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_35A28(a5, a6, a7);
      sub_5BE84();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Summary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0), sub_35A28(&qword_78328, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_2A198(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785B8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Summary);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2A238(uint64_t a1)
{
  v2 = sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Summary);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2A2A4(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Summary);

  return sub_5BF14();
}

uint64_t sub_2A338(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2A40C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79FC8);
  __swift_project_value_buffer(v0, qword_79FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_5EEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 7;
  *v4 = "attributes";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_5C024();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "start_time_unix_nano";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "time_unix_nano";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "as_double";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "as_int";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "exemplars";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        if (result == 2 || result == 3)
        {
          sub_5BEA4();
        }

        else if (result == 4)
        {
          sub_5BE14();
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          v6 = v3;
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
          goto LABEL_5;
        }

        if (result == 8)
        {
          sub_5BE64();
        }
      }

      else
      {
        if (result == 5)
        {
          v6 = v3;
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);
LABEL_5:
          v3 = v6;
          sub_5BE84();
          goto LABEL_6;
        }

        sub_5BEC4();
      }

LABEL_6:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + 8) || (result = sub_5BFF4(), !v4))
  {
    result = *(v3 + 16);
    if (!result || (result = sub_5BFF4(), !v4))
    {
      v6 = *(v3 + 32);
      if (v6 != 255 && (v6 & 1) == 0)
      {
        result = sub_5BF94();
      }

      if (!v4)
      {
        if (*(*(v3 + 40) + 16))
        {
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);
          sub_5BFD4();
          v6 = *(v3 + 32);
          if (v6 == 255)
          {
            goto LABEL_16;
          }
        }

        else if (v6 == 255)
        {
LABEL_16:
          if (*(*v3 + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BFD4();
          }

          if (*(v3 + 48))
          {
            sub_5BFC4();
          }

          type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
          return sub_5BCC4();
        }

        if (v6)
        {
          sub_5C014();
        }

        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_2AC48@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = 0;
  return sub_5BCD4();
}

uint64_t sub_2ACA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2AD18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2ADE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2AE80(uint64_t a1)
{
  v2 = sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2AEEC(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

  return sub_5BF14();
}

uint64_t sub_2AF94()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79FE8);
  __swift_project_value_buffer(v0, qword_79FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_5FAD0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 9;
  *v5 = "attributes";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_time_unix_nano";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "time_unix_nano";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "count";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sum";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bucket_counts";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "explicit_bounds";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "exemplars";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "flags";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "min";
  *(v24 + 1) = 3;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "max";
  *(v26 + 1) = 3;
  v26[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result > 3)
        {
          if (result == 4)
          {
            goto LABEL_4;
          }

          if (result != 5)
          {
            sub_5BE74();
            goto LABEL_5;
          }

LABEL_26:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
          sub_5BE14();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
LABEL_4:
          sub_5BEA4();
        }
      }

      else if (result > 9)
      {
        if (result == 10)
        {
          sub_5BE64();
        }

        else if (result == 11 || result == 12)
        {
          goto LABEL_26;
        }
      }

      else if (result == 7)
      {
        sub_5BDF4();
      }

      else
      {
        if (result == 8)
        {
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        }

        else
        {
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
        }

        sub_5BE84();
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + 8) || (result = sub_5BFF4(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_5BFF4(), !v4))
    {
      if (!*(v3 + 24) || (result = sub_5BFF4(), !v4))
      {
        result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
        if (*(v3 + *(result + 52) + 8))
        {
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_5BF94();
          if (v4)
          {
            return result;
          }
        }

        if (*(*(v3 + 32) + 16))
        {
          sub_5BF64();
        }

        if (*(*(v3 + 40) + 16))
        {
          sub_5BF24();
        }

        if (*(*(v3 + 48) + 16))
        {
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);
          sub_5BFD4();
        }

        if (*(*v3 + 16))
        {
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
          sub_5BFD4();
        }

        if (*(v3 + 56))
        {
          sub_5BFC4();
        }

        sub_2B8D8(v3, a1, a2, a3);
        sub_2B950(v3, a1, a2, a3);
        return sub_5BCC4();
      }
    }
  }

  return result;
}

uint64_t sub_2B8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2BA14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = 0;
  result = sub_5BCD4();
  v5 = a1[14];
  v6 = a2 + a1[13];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[15];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_2BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2BB20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2BBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785A8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2BC88(uint64_t a1)
{
  v2 = sub_35A28(&qword_78308, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2BCF4(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78308, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);

  return sub_5BF14();
}

uint64_t sub_2BD9C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A008);
  __swift_project_value_buffer(v0, qword_7A008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_5FAE0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "attributes";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_time_unix_nano";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "time_unix_nano";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "count";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sum";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "scale";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "zero_count";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "positive";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "negative";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "flags";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "exemplars";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "min";
  *(v28 + 1) = 3;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "max";
  *(v30 + 1) = 3;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "zero_threshold";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v6 = v3;
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
          goto LABEL_14;
        case 2:
        case 3:
        case 4:
        case 7:
          sub_5BEA4();
          break;
        case 5:
        case 12:
        case 13:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
          sub_5BE14();
          break;
        case 6:
          sub_5BE34();
          break;
        case 8:
        case 9:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
          sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
          sub_5BEB4();
          break;
        case 10:
          sub_5BE64();
          break;
        case 11:
          v6 = v3;
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);
LABEL_14:
          v3 = v6;
          sub_5BE84();
          break;
        case 14:
          sub_5BE24();
          break;
        default:
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0), sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue), result = sub_5BFD4(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_5BFF4(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_5BFF4(), !v4))
      {
        if (!*(v3 + 24) || (result = sub_5BFF4(), !v4))
        {
          result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
          if (*(v3 + *(result + 56) + 8))
          {
            if (v4)
            {
              return result;
            }
          }

          else
          {
            result = sub_5BF94();
            if (v4)
            {
              return result;
            }
          }

          if (*(v3 + 32))
          {
            sub_5BFA4();
          }

          if (*(v3 + 40))
          {
            sub_5BFF4();
          }

          sub_2C860(v3, a1, a2, a3);
          sub_2CA7C(v3, a1, a2, a3);
          if (*(v3 + 48))
          {
            sub_5BFC4();
          }

          if (*(*(v3 + 56) + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
            sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);
            sub_5BFD4();
          }

          sub_2CC98(v3, a1, a2, a3);
          sub_2CD10(v3, a1, a2, a3);
          if (*(v3 + 64))
          {
            sub_5BF94();
          }

          return sub_5BCC4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2C860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v9 = *(v8 - 8);
  off_70AC0(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v12 + 60), v7, &qword_782A8, &qword_5FB18);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_782A8, &qword_5FB18);
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_5C004();
  return sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
}

uint64_t sub_2CA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  off_70AC0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v9 = *(v8 - 8);
  off_70AC0(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v12 + 64), v7, &qword_782A8, &qword_5FB18);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_782A8, &qword_5FB18);
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_5C004();
  return sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
}

uint64_t sub_2CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  if ((*(a1 + *(result + 68) + 8) & 1) == 0)
  {
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  if ((*(a1 + *(result + 72) + 8) & 1) == 0)
  {
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2CDD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = _swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  sub_5BCD4();
  v4 = a1[15];
  v5 = a2 + a1[14];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v4, 1, 1, v6);
  result = (v7)(a2 + a1[16], 1, 1, v6);
  v9 = a1[18];
  v10 = a2 + a1[17];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_2CEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2CF60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2D028(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785A0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2D0C8(uint64_t a1)
{
  v2 = sub_35A28(&qword_78318, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2D134(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78318, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint);

  return sub_5BF14();
}

void sub_2D1B4()
{
  v0._countAndFlagsBits = 0x7374656B6375422ELL;
  v0._object = 0xE800000000000000;
  sub_5C134(v0);
  qword_7A028 = 0xD00000000000003CLL;
  unk_7A030 = 0x8000000000065B40;
}

uint64_t *sub_2D220()
{
  if (qword_7A020 != -1)
  {
    swift_once();
  }

  return &qword_7A028;
}

uint64_t sub_2D298()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A040);
  __swift_project_value_buffer(v0, qword_7A040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offset";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket_counts";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_5BE34();
    }

    else if (result == 2)
    {
      sub_5BE04();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_5BFA4(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (result = sub_5BF34(), !v4))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t sub_2D630@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  return sub_5BCD4();
}

uint64_t sub_2D6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78598, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2D758(uint64_t a1)
{
  v2 = sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2D7C4(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);

  return sub_5BF14();
}

uint64_t sub_2D840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_30350(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2D920()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A060);
  __swift_project_value_buffer(v0, qword_7A060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_5EEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 7;
  *v4 = "attributes";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_5C024();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "start_time_unix_nano";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "time_unix_nano";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "count";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sum";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "quantile_values";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        if (result == 2 || result == 3 || result == 4)
        {
          sub_5BEA4();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            sub_5BE24();
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
          sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
          goto LABEL_20;
        }

        if (result == 7)
        {
          v6 = v3;
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
LABEL_20:
          v3 = v6;
          sub_5BE84();
          goto LABEL_5;
        }

        if (result == 8)
        {
          sub_5BE64();
        }
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + 8) || (result = sub_5BFF4(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_5BFF4(), !v4))
    {
      if (!*(v3 + 24) || (result = sub_5BFF4(), !v4))
      {
        if (!*(v3 + 32) || (result = sub_5BF94(), !v4))
        {
          v6 = v4;
          if (*(*(v3 + 40) + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
            sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
            result = sub_5BFD4();
            if (v4)
            {
              return result;
            }

            v6 = 0;
          }

          if (*(*v3 + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            v7 = v6;
            result = sub_5BFD4();
            if (v6)
            {
              return result;
            }
          }

          else
          {
            v7 = v6;
          }

          if (!*(v3 + 48) || (result = sub_5BFC4(), !v7))
          {
            type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0);
            return sub_5BCC4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2E094@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = 0;
  return sub_5BCD4();
}

uint64_t sub_2E0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2E164(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2E22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78590, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2E2CC(uint64_t a1)
{
  v2 = sub_35A28(&qword_78328, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2E338(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78328, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);

  return sub_5BF14();
}

void sub_2E3B8()
{
  v0._object = 0x8000000000065C40;
  v0._countAndFlagsBits = 0xD000000000000010;
  sub_5C134(v0);
  qword_7A080 = 0xD00000000000002FLL;
  *algn_7A088 = 0x8000000000065B80;
}

uint64_t *sub_2E42C()
{
  if (qword_7A078 != -1)
  {
    swift_once();
  }

  return &qword_7A080;
}

uint64_t sub_2E4A4(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_2E500()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A098);
  __swift_project_value_buffer(v0, qword_7A098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "quantile";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_5BD64();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_5BE24();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_5BF94(), !v4))
  {
    if (!v3[1] || (result = sub_5BF94(), !v4))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2E940@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  return sub_5BCD4();
}

uint64_t sub_2E98C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_2E9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2EA60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2EB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78588, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2EBA4(uint64_t a1)
{
  v2 = sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2EC10(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);

  return sub_5BF14();
}

uint64_t sub_2EC8C(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2ED68()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A0B8);
  __swift_project_value_buffer(v0, qword_7A0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 7;
  *v6 = "filtered_attributes";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_unix_nano";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "as_double";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "as_int";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "span_id";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "trace_id";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 4)
      {
        switch(result)
        {
          case 5:
            goto LABEL_16;
          case 6:
            sub_5BEC4();
            break;
          case 7:
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BE84();
            break;
        }
      }

      else
      {
        if (result == 2)
        {
          sub_5BEA4();
          goto LABEL_5;
        }

        if (result != 3)
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

LABEL_16:
          sub_5BDC4();
          goto LABEL_5;
        }

        sub_5BE14();
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(v3 + 8);
  if (!result || (result = sub_5BFF4(), !v4))
  {
    v6 = *(v3 + 24);
    if (v6 != 255 && (v6 & 1) == 0)
    {
      result = sub_5BF94();
    }

    if (!v4)
    {
      v7 = *(v3 + 32);
      v8 = *(v3 + 40);
      v9 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        if (v9 != 2)
        {
          goto LABEL_17;
        }

        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
      }

      else
      {
        if (!v9)
        {
          if ((v8 & 0xFF000000000000) == 0)
          {
LABEL_17:
            v12 = *(v3 + 48);
            v13 = *(v3 + 56);
            v14 = v13 >> 62;
            if ((v13 >> 62) > 1)
            {
              if (v14 != 2)
              {
                goto LABEL_26;
              }

              v15 = *(v12 + 16);
              v16 = *(v12 + 24);
            }

            else
            {
              if (!v14)
              {
                if ((v13 & 0xFF000000000000) == 0)
                {
LABEL_26:
                  if (v6 != 255 && (v6 & 1) != 0)
                  {
                    sub_5C014();
                  }

                  if (*(*v3 + 16))
                  {
                    type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
                    sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
                    sub_5BFD4();
                  }

                  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
                  return sub_5BCC4();
                }

LABEL_25:
                sub_5BF74();
                goto LABEL_26;
              }

              v15 = v12;
              v16 = v12 >> 32;
            }

            if (v15 == v16)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

LABEL_16:
          sub_5BF74();
          goto LABEL_17;
        }

        v10 = v7;
        v11 = v7 >> 32;
      }

      if (v10 == v11)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  return result;
}

Swift::Int sub_2F4CC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_5C454();
  a1(0);
  sub_35A28(a2, a3, a4);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_2F554@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 24) = -1;
  *(a2 + 32) = xmmword_5EFA0;
  *(a2 + 48) = xmmword_5EFA0;
  return sub_5BCD4();
}

uint64_t sub_2F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2F628(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78580, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2F76C(uint64_t a1)
{
  v2 = sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2F7D8(uint64_t a1, uint64_t a2)
{
  sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &protocol conformance descriptor for Opentelemetry_Proto_Metrics_V1_Exemplar);

  return sub_5BF14();
}

uint64_t sub_2F858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v5 = *(v4 - 8);
  v101 = v4;
  v102 = v5;
  v6 = off_70AC0(v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v6);
  v10 = &v92 - v9;
  v11 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
  v12 = off_70AC0(v11);
  v100 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v12);
  v16 = &v92 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (v17 && a1 != a2)
    {
      v18 = 0;
      v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v20 = a1 + v19;
      v96 = a2 + v19;
      v97 = 0;
      v21 = *(v14 + 72);
      v94 = v17;
      v95 = v11;
      v99 = &v92 - v15;
      v92 = v21;
      v93 = v20;
      while (1)
      {
        sub_1CF34(v20 + v21 * v18, v16, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        if (v18 == v17)
        {
          goto LABEL_132;
        }

        v98 = v18;
        v22 = v100;
        sub_1CF34(v96 + v21 * v18, v100, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        v23 = *v16;
        v24 = *v22;
        v25 = *(*v16 + 16);
        if (v25 != *(*v22 + 16))
        {
          goto LABEL_127;
        }

        if (v25 && v23 != v24)
        {
          v26 = 0;
          v27 = (*(v102 + 80) + 32) & ~*(v102 + 80);
          v28 = v23 + v27;
          v29 = v24 + v27;
          while (v26 < *(v23 + 16))
          {
            v30 = *(v102 + 72) * v26;
            sub_1CF34(v28 + v30, v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if (v26 >= *(v24 + 16))
            {
              goto LABEL_131;
            }

            sub_1CF34(v29 + v30, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            v31 = sub_5C114();
            sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if ((v31 & 1) == 0)
            {
              goto LABEL_127;
            }

            if (v25 == ++v26)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
        }

LABEL_14:
        if (*(v99 + 1) != *(v100 + 8))
        {
          goto LABEL_127;
        }

        v32 = v99[24];
        v33 = *(v100 + 24);
        if (v32 == 255)
        {
          if (v33 != 255)
          {
            goto LABEL_127;
          }
        }

        else
        {
          if (v33 == 255)
          {
            goto LABEL_127;
          }

          v34 = *(v99 + 2);
          v35 = *(v100 + 16);
          if (v32)
          {
            if ((v33 & 1) == 0 || *&v34 != *&v35)
            {
              goto LABEL_127;
            }
          }

          else if ((v33 & 1) != 0 || v34 != v35)
          {
LABEL_127:
            sub_1CF9C(v100, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
            sub_1CF9C(v99, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
            goto LABEL_128;
          }
        }

        v36 = *(v99 + 4);
        v37 = *(v99 + 5);
        v38 = *(v100 + 32);
        v39 = *(v100 + 40);
        v40 = v37 >> 62;
        v41 = v39 >> 62;
        if (v37 >> 62 == 3)
        {
          break;
        }

        if (v40 > 1)
        {
          if (v40 == 2)
          {
            v48 = *(v36 + 16);
            v47 = *(v36 + 24);
            v45 = __OFSUB__(v47, v48);
            v42 = v47 - v48;
            if (v45)
            {
              goto LABEL_138;
            }

            goto LABEL_41;
          }

          v42 = 0;
          if (v41 <= 1)
          {
            goto LABEL_42;
          }
        }

        else if (v40)
        {
          LODWORD(v42) = HIDWORD(v36) - v36;
          if (__OFSUB__(HIDWORD(v36), v36))
          {
            goto LABEL_137;
          }

          v42 = v42;
          if (v41 <= 1)
          {
LABEL_42:
            if (v41)
            {
              LODWORD(v46) = HIDWORD(v38) - v38;
              if (__OFSUB__(HIDWORD(v38), v38))
              {
                goto LABEL_133;
              }

              v46 = v46;
            }

            else
            {
              v46 = BYTE6(v39);
            }

            goto LABEL_48;
          }
        }

        else
        {
          v42 = BYTE6(v37);
          if (v41 <= 1)
          {
            goto LABEL_42;
          }
        }

LABEL_35:
        if (v41 != 2)
        {
          if (v42)
          {
            goto LABEL_127;
          }

          goto LABEL_74;
        }

        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        v45 = __OFSUB__(v43, v44);
        v46 = v43 - v44;
        if (v45)
        {
          goto LABEL_134;
        }

LABEL_48:
        if (v42 != v46)
        {
          goto LABEL_127;
        }

        if (v42 < 1)
        {
          goto LABEL_74;
        }

        if (v40 > 1)
        {
          if (v40 != 2)
          {
            memset(v104, 0, 14);
            sub_D038(v38, v39);
LABEL_69:
            v62 = v97;
            sub_13DF0(v104, v38, v39, &v103);
            v97 = v62;
            sub_D08C(v38, v39);
            if (!v103)
            {
              goto LABEL_127;
            }

            goto LABEL_74;
          }

          v49 = *(v36 + 16);
          v50 = *(v36 + 24);
          sub_D038(*(v100 + 32), *(v100 + 40));
          v51 = sub_5B944();
          if (v51)
          {
            v52 = sub_5B964();
            if (__OFSUB__(v49, v52))
            {
              goto LABEL_145;
            }

            v51 += v49 - v52;
          }

          if (__OFSUB__(v50, v49))
          {
            goto LABEL_142;
          }

          sub_5B954();
          v53 = v51;
          v54 = v38;
          v55 = v39;
          v56 = v97;
        }

        else
        {
          if (!v40)
          {
            v104[0] = *(v99 + 4);
            LOWORD(v104[1]) = v37;
            BYTE2(v104[1]) = BYTE2(v37);
            BYTE3(v104[1]) = BYTE3(v37);
            BYTE4(v104[1]) = BYTE4(v37);
            BYTE5(v104[1]) = BYTE5(v37);
            sub_D038(v38, v39);
            goto LABEL_69;
          }

          v57 = v36;
          if (v36 >> 32 < v36)
          {
            goto LABEL_141;
          }

          sub_D038(*(v100 + 32), *(v100 + 40));
          v58 = sub_5B944();
          if (v58)
          {
            v59 = v58;
            v60 = sub_5B964();
            if (__OFSUB__(v57, v60))
            {
              goto LABEL_146;
            }

            v61 = v57 - v60 + v59;
          }

          else
          {
            v61 = 0;
          }

          v56 = v97;
          sub_5B954();
          v53 = v61;
          v54 = v38;
          v55 = v39;
        }

        sub_13DF0(v53, v54, v55, v104);
        v97 = v56;
        sub_D08C(v38, v39);
        if ((v104[0] & 1) == 0)
        {
          goto LABEL_127;
        }

LABEL_74:
        v63 = *(v99 + 6);
        v64 = *(v99 + 7);
        v65 = *(v100 + 48);
        v66 = *(v100 + 56);
        v67 = v64 >> 62;
        v68 = v66 >> 62;
        if (v64 >> 62 == 3)
        {
          v69 = 0;
          if (!v63 && v64 == 0xC000000000000000 && v66 >> 62 == 3)
          {
            v69 = 0;
            if (!v65 && v66 == 0xC000000000000000)
            {
              goto LABEL_123;
            }
          }

LABEL_90:
          if (v68 > 1)
          {
            goto LABEL_84;
          }

          goto LABEL_91;
        }

        if (v67 > 1)
        {
          if (v67 == 2)
          {
            v74 = *(v63 + 16);
            v73 = *(v63 + 24);
            v45 = __OFSUB__(v73, v74);
            v69 = v73 - v74;
            if (v45)
            {
              goto LABEL_140;
            }

            goto LABEL_90;
          }

          v69 = 0;
          if (v68 > 1)
          {
            goto LABEL_84;
          }
        }

        else if (v67)
        {
          LODWORD(v69) = HIDWORD(v63) - v63;
          if (__OFSUB__(HIDWORD(v63), v63))
          {
            goto LABEL_139;
          }

          v69 = v69;
          if (v68 > 1)
          {
LABEL_84:
            if (v68 != 2)
            {
              if (v69)
              {
                goto LABEL_127;
              }

              goto LABEL_123;
            }

            v71 = *(v65 + 16);
            v70 = *(v65 + 24);
            v45 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v45)
            {
              goto LABEL_135;
            }

            goto LABEL_97;
          }
        }

        else
        {
          v69 = BYTE6(v64);
          if (v68 > 1)
          {
            goto LABEL_84;
          }
        }

LABEL_91:
        if (v68)
        {
          LODWORD(v72) = HIDWORD(v65) - v65;
          if (__OFSUB__(HIDWORD(v65), v65))
          {
            goto LABEL_136;
          }

          v72 = v72;
        }

        else
        {
          v72 = BYTE6(v66);
        }

LABEL_97:
        if (v69 != v72)
        {
          goto LABEL_127;
        }

        if (v69 >= 1)
        {
          if (v67 > 1)
          {
            if (v67 == 2)
            {
              v75 = *(v63 + 16);
              v76 = *(v63 + 24);
              sub_D038(*(v100 + 48), *(v100 + 56));
              v77 = sub_5B944();
              if (v77)
              {
                v78 = sub_5B964();
                if (__OFSUB__(v75, v78))
                {
                  goto LABEL_147;
                }

                v77 += v75 - v78;
              }

              if (__OFSUB__(v76, v75))
              {
                goto LABEL_144;
              }

              sub_5B954();
              v79 = v77;
              v80 = v65;
              v81 = v66;
              v82 = v97;
              goto LABEL_122;
            }

            memset(v104, 0, 14);
            sub_D038(v65, v66);
          }

          else
          {
            if (v67)
            {
              v83 = v63;
              if (v63 >> 32 < v63)
              {
                goto LABEL_143;
              }

              sub_D038(*(v100 + 48), *(v100 + 56));
              v84 = sub_5B944();
              if (v84)
              {
                v85 = v84;
                v86 = sub_5B964();
                if (__OFSUB__(v83, v86))
                {
                  goto LABEL_148;
                }

                v87 = v83 - v86 + v85;
              }

              else
              {
                v87 = 0;
              }

              v82 = v97;
              sub_5B954();
              v79 = v87;
              v80 = v65;
              v81 = v66;
LABEL_122:
              sub_13DF0(v79, v80, v81, v104);
              v97 = v82;
              sub_D08C(v65, v66);
              if ((v104[0] & 1) == 0)
              {
                goto LABEL_127;
              }

              goto LABEL_123;
            }

            v104[0] = *(v99 + 6);
            LOWORD(v104[1]) = v64;
            BYTE2(v104[1]) = BYTE2(v64);
            BYTE3(v104[1]) = BYTE3(v64);
            BYTE4(v104[1]) = BYTE4(v64);
            BYTE5(v104[1]) = BYTE5(v64);
            sub_D038(v65, v66);
          }

          v88 = v97;
          sub_13DF0(v104, v65, v66, &v103);
          v97 = v88;
          sub_D08C(v65, v66);
          if (!v103)
          {
            goto LABEL_127;
          }
        }

LABEL_123:
        sub_5BCE4();
        sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v16 = v99;
        v89 = v100;
        v90 = sub_5C114();
        sub_1CF9C(v89, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        sub_1CF9C(v16, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        if (v90)
        {
          v18 = v98 + 1;
          v20 = v93;
          v17 = v94;
          v21 = v92;
          if (v98 + 1 != v94)
          {
            continue;
          }
        }

        return v90 & 1;
      }

      v42 = 0;
      if (!v36 && v37 == 0xC000000000000000 && v39 >> 62 == 3)
      {
        v42 = 0;
        if (!v38 && v39 == 0xC000000000000000)
        {
          goto LABEL_74;
        }
      }

LABEL_41:
      if (v41 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    v90 = 1;
  }

  else
  {
LABEL_128:
    v90 = 0;
  }

  return v90 & 1;
}

uint64_t sub_30350(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_303AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_30408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
  v5 = off_70AC0(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1CF34(v13, v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      sub_1CF34(v14, v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      if (*v10 != *v7 || v10[1] != v7[1])
      {
        break;
      }

      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v16 = sub_5C114();
      sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
    sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_3066C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
  v5 = *(v4 - 8);
  v6 = off_70AC0(v4);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v6);
  v10 = (&v51 - v9);
  v64 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v66 = *(v64 - 8);
  v11 = off_70AC0(v64);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v11);
  v15 = &v51 - v14;
  v16 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0);
  v17 = off_70AC0(v16);
  v65 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = off_70AC0(v17);
  v22 = (&v51 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_33:
    v50 = 0;
    return v50 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v50 = 1;
    return v50 & 1;
  }

  v61 = v8;
  v62 = v10;
  v60 = v4;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v28 = *(v20 + 72);
  v52 = v5;
  v53 = v28;
  v63 = &v51 - v21;
  v55 = a1 + v25;
  v56 = v19;
  v58 = v23;
  v54 = v27;
  while (1)
  {
    result = sub_1CF34(v26 + v28 * v24, v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    if (v24 == v58)
    {
      break;
    }

    v57 = v24;
    v30 = v65;
    result = sub_1CF34(v27 + v28 * v24, v65, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    v31 = *v22;
    v32 = *v30;
    v33 = *(v31 + 16);
    if (v33 != *(*v30 + 16))
    {
      goto LABEL_32;
    }

    if (v33 && v31 != v32)
    {
      v34 = 0;
      v35 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v36 = v31 + v35;
      v37 = v32 + v35;
      while (v34 < *(v31 + 16))
      {
        v38 = *(v66 + 72) * v34;
        result = sub_1CF34(v36 + v38, v15, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (v34 >= *(v32 + 16))
        {
          goto LABEL_36;
        }

        sub_1CF34(v37 + v38, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
        v39 = sub_5C114();
        sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        result = sub_1CF9C(v15, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v39 & 1) == 0)
        {
          goto LABEL_32;
        }

        if (v33 == ++v34)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      __break(1u);
      break;
    }

LABEL_14:
    if (*(v63 + 8) != *(v65 + 8))
    {
      goto LABEL_32;
    }

    if (*(v63 + 16) != *(v65 + 16))
    {
      goto LABEL_32;
    }

    if (*(v63 + 24) != *(v65 + 24))
    {
      goto LABEL_32;
    }

    if (*(v63 + 32) != *(v65 + 32))
    {
      goto LABEL_32;
    }

    v40 = *(v63 + 40);
    v41 = *(v65 + 40);
    v42 = *(v40 + 16);
    if (v42 != *(v41 + 16))
    {
      goto LABEL_32;
    }

    if (v42 && v40 != v41)
    {
      v43 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v44 = v40 + v43;
      v45 = v41 + v43;
      v59 = *(v52 + 72);
      while (1)
      {
        v46 = v62;
        sub_1CF34(v44, v62, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        v47 = v61;
        sub_1CF34(v45, v61, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        if (*v46 != *v47 || v46[1] != v47[1])
        {
          break;
        }

        sub_5BCE4();
        sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v48 = sub_5C114();
        sub_1CF9C(v47, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        sub_1CF9C(v46, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        if ((v48 & 1) == 0)
        {
          goto LABEL_32;
        }

        v45 += v59;
        v44 += v59;
        if (!--v42)
        {
          goto LABEL_26;
        }
      }

      sub_1CF9C(v47, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      sub_1CF9C(v46, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
LABEL_32:
      sub_1CF9C(v65, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
      sub_1CF9C(v63, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
      goto LABEL_33;
    }

LABEL_26:
    if (*(v63 + 48) != *(v65 + 48))
    {
      goto LABEL_32;
    }

    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v22 = v63;
    v49 = v65;
    v50 = sub_5C114();
    sub_1CF9C(v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    sub_1CF9C(v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    if (v50)
    {
      v24 = v57 + 1;
      v27 = v54;
      v26 = v55;
      v28 = v53;
      if (v57 + 1 != v58)
      {
        continue;
      }
    }

    return v50 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_30D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = off_70AC0(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1CF34(v20, v17, a4);
        sub_1CF34(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1CF9C(v14, a6);
        sub_1CF9C(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_30EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v45 = *(v4 - 8);
  v5 = off_70AC0(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
  v11 = off_70AC0(v10);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v11);
  v15 = &v39 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_31:
    v38 = 0;
    return v38 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v17 = 0;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = a1 + v18;
  v42 = v10;
  v43 = a2 + v18;
  v20 = *(v13 + 72);
  v40 = v19;
  v41 = v16;
  v39 = v20;
  while (1)
  {
    v21 = v20 * v17;
    result = sub_1CF34(v19 + v20 * v17, v15, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    if (v17 == v16)
    {
      break;
    }

    v44 = v17;
    v23 = v43 + v21;
    v24 = v46;
    sub_1CF34(v23, v46, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    v25 = *v15;
    v26 = *v24;
    v27 = *(*v15 + 16);
    if (v27 != *(*v24 + 16))
    {
      goto LABEL_30;
    }

    if (v27 && v25 != v26)
    {
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v29 = v25 + v28;
      v30 = v26 + v28;
      v31 = *(v45 + 72);
      while (1)
      {
        sub_1CF34(v29, v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_1CF34(v30, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
        v32 = sub_5C114();
        sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_1CF9C(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v32 & 1) == 0)
        {
          break;
        }

        v30 += v31;
        v29 += v31;
        if (!--v27)
        {
          goto LABEL_12;
        }
      }

LABEL_30:
      sub_1CF9C(v46, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
      sub_1CF9C(v15, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
      goto LABEL_31;
    }

LABEL_12:
    if (*(v15 + 1) != *(v46 + 8) || *(v15 + 2) != *(v46 + 16))
    {
      goto LABEL_30;
    }

    v33 = v15[32];
    v34 = *(v46 + 32);
    if (v33 == 255)
    {
      if (v34 != 255)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v34 == 255)
      {
        goto LABEL_30;
      }

      v35 = *(v15 + 3);
      v36 = *(v46 + 24);
      if (v33)
      {
        if ((v34 & 1) == 0 || *&v35 != *&v36)
        {
          goto LABEL_30;
        }
      }

      else if ((v34 & 1) != 0 || v35 != v36)
      {
        goto LABEL_30;
      }
    }

    if ((sub_2F858(*(v15 + 5), *(v46 + 40)) & 1) == 0 || *(v15 + 12) != *(v46 + 48))
    {
      goto LABEL_30;
    }

    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v37 = v46;
    v38 = sub_5C114();
    sub_1CF9C(v37, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    sub_1CF9C(v15, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    if (v38)
    {
      v17 = v44 + 1;
      v19 = v40;
      v16 = v41;
      v20 = v39;
      if (v44 + 1 != v41)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_313CC(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v4 = *(v45 - 8);
  off_70AC0(v45);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70AC0(v7 - 8);
  v9 = &v35 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  off_70AC0(v41);
  v11 = &v35 - v10;
  v46 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v12 = off_70AC0(v46);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v12);
  v17 = (&v35 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_22:
    v34 = 0;
    return v34 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v36 = v6;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v39 = v14;
  v40 = (v4 + 48);
  v38 = *(v15 + 72);
  v22 = &qword_782A0;
  v23 = v45;
  while (1)
  {
    result = sub_1CF34(v20, v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    if (!v18)
    {
      break;
    }

    v43 = v21;
    v44 = v20;
    sub_1CF34(v21, v14, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v25 = *(v46 + 28);
    v26 = *(v41 + 48);
    sub_A024(v17 + v25, v11, v22, &qword_5FB08);
    sub_A024(v14 + v25, &v11[v26], v22, &qword_5FB08);
    v27 = v22;
    v28 = *v40;
    v29 = (*v40)(v11, 1, v23);
    v42 = v18;
    if (v29 == 1)
    {
      v30 = v23;
      if (v28(&v11[v26], 1, v23) != 1)
      {
        goto LABEL_20;
      }

      sub_60C4(v11, v22, &qword_5FB08);
      v14 = v39;
    }

    else
    {
      v31 = v37;
      sub_A024(v11, v37, v22, &qword_5FB08);
      if (v28(&v11[v26], 1, v23) == 1)
      {
        sub_1CF9C(v31, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
LABEL_20:
        sub_60C4(v11, &qword_78640, &unk_628E0);
        v14 = v39;
LABEL_21:
        sub_1CF9C(v14, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        goto LABEL_22;
      }

      v32 = v36;
      sub_1C814(&v11[v26], v36, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_35A28(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v33 = sub_5C114();
      v30 = v45;
      sub_1CF9C(v32, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_1CF9C(v31, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v11, v27, &qword_5FB08);
      v22 = v27;
      v14 = v39;
      if ((v33 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if ((sub_31970(*v17, *v14) & 1) == 0 || (v17[1] != v14[1] || v17[2] != v14[2]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v34 = sub_5C114();
    sub_1CF9C(v14, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    if (v34)
    {
      v21 = v43 + v38;
      v20 = v44 + v38;
      v23 = v30;
      v18 = v42 - 1;
      if (v42 != 1)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_31970(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v68 = *(v66 - 8);
  v4 = off_70AC0(v66);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v4);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v10 = *(v9 - 8);
  off_70AC0(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v13 - 8);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78610, &qword_61A28);
  off_70AC0(v16);
  v18 = &v53 - v17;
  v64 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v19 = off_70AC0(v64);
  v67 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v19);
  v65 = (&v53 - v22);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_37:
    v52 = 0;
    return v52 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v56 = v16;
  v57 = v18;
  v53 = v12;
  v54 = v15;
  v24 = 0;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v58 = v9;
  v59 = a2 + v25;
  v55 = (v10 + 48);
  v60 = *(v21 + 72);
  v61 = a1 + v25;
  v26 = v65;
  v63 = v23;
  while (1)
  {
    v27 = v60 * v24;
    result = sub_1CF34(v61 + v60 * v24, v26, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    if (v24 == v63)
    {
      break;
    }

    v62 = v24;
    v29 = v59 + v27;
    v30 = v67;
    sub_1CF34(v29, v67, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    v31 = *v26 == *v30 && v26[1] == v30[1];
    if (!v31 && (sub_5C3A4() & 1) == 0 || (v65[2] != v67[2] || v65[3] != v67[3]) && (sub_5C3A4() & 1) == 0 || (v65[4] != v67[4] || v65[5] != v67[5]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_36;
    }

    v32 = *(v64 + 28);
    v33 = v57;
    v34 = *(v56 + 48);
    sub_A024(v65 + v32, v57, &qword_78240, &qword_5FB10);
    sub_A024(v67 + v32, v33 + v34, &qword_78240, &qword_5FB10);
    v35 = *v55;
    v36 = v58;
    if ((*v55)(v33, 1, v58) == 1)
    {
      if (v35(v33 + v34, 1, v36) != 1)
      {
        goto LABEL_35;
      }

      result = sub_60C4(v33, &qword_78240, &qword_5FB10);
    }

    else
    {
      v37 = v54;
      sub_A024(v33, v54, &qword_78240, &qword_5FB10);
      if (v35(v33 + v34, 1, v36) == 1)
      {
        sub_1CF9C(v37, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
LABEL_35:
        sub_60C4(v33, &qword_78610, &qword_61A28);
LABEL_36:
        sub_1CF9C(v67, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        sub_1CF9C(v65, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        goto LABEL_37;
      }

      v38 = v33 + v34;
      v39 = v53;
      sub_1C814(v38, v53, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      v40 = _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v37, v39);
      sub_1CF9C(v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      sub_1CF9C(v37, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      result = sub_60C4(v33, &qword_78240, &qword_5FB10);
      if ((v40 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v41 = *(v64 + 32);
    v42 = *(v65 + v41);
    v43 = *(v67 + v41);
    v44 = *(v42 + 16);
    if (v44 != *(v43 + 16))
    {
      goto LABEL_36;
    }

    if (v44 && v42 != v43)
    {
      v45 = 0;
      v46 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v47 = v42 + v46;
      v48 = v43 + v46;
      while (v45 < *(v42 + 16))
      {
        v49 = *(v68 + 72) * v45;
        result = sub_1CF34(v47 + v49, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (v45 >= *(v43 + 16))
        {
          goto LABEL_40;
        }

        sub_1CF34(v48 + v49, v6, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
        v50 = sub_5C114();
        sub_1CF9C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        result = sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v50 & 1) == 0)
        {
          goto LABEL_36;
        }

        if (v44 == ++v45)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_30:
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v26 = v65;
    v51 = v67;
    v52 = sub_5C114();
    sub_1CF9C(v51, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    sub_1CF9C(v26, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    if (v52)
    {
      v24 = v62 + 1;
      if (v62 + 1 != v63)
      {
        continue;
      }
    }

    return v52 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_320FC(uint64_t a1, uint64_t a2)
{
  v163 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v166 = *(v163 - 8);
  v4 = off_70AC0(v163);
  v162 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v4);
  v7 = &v118 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v144 = *(v8 - 8);
  off_70AC0(v8);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v11 - 8);
  v13 = &v118 - v12;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78610, &qword_61A28);
  off_70AC0(v150);
  v151 = &v118 - v14;
  v158 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v154 = *(v158 - 8);
  v15 = off_70AC0(v158);
  v164 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v15);
  v165 = (&v118 - v17);
  v149 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v18 = *(v149 - 8);
  off_70AC0(v149);
  v143 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70AC0(v20 - 8);
  v22 = &v118 - v21;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  off_70AC0(v147);
  v148 = &v118 - v23;
  v24 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v155 = *(v24 - 8);
  v156 = v24;
  v25 = off_70AC0(v24);
  v157 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v25);
  v160 = (&v118 - v27);
  v153 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v28 = *(v153 - 8);
  off_70AC0(v153);
  v145 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70AC0(v30 - 8);
  v146 = &v118 - v31;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  off_70AC0(v152);
  v33 = &v118 - v32;
  v34 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  v35 = off_70AC0(v34);
  v161 = (&v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = off_70AC0(v35);
  v159 = &v118 - v39;
  v40 = *(a1 + 16);
  if (v40 != *(a2 + 16))
  {
LABEL_71:
    v116 = 0;
    return v116 & 1;
  }

  if (!v40 || a1 == a2)
  {
    v116 = 1;
    return v116 & 1;
  }

  v141 = v37;
  v120 = v10;
  v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v42 = a1 + v41;
  v137 = a2 + v41;
  v136 = (v28 + 48);
  v43 = 0;
  v133 = (v144 + 48);
  v44 = *(v38 + 72);
  v121 = v22;
  v45 = v159;
  v134 = v8;
  v122 = v13;
  v140 = v40;
  v126 = a1 + v41;
  v132 = (v18 + 48);
  v125 = v44;
  while (1)
  {
    v46 = v44 * v43;
    result = sub_1CF34(v42 + v44 * v43, v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    if (v43 == v140)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v138 = v43;
    v48 = v161;
    sub_1CF34(v137 + v46, v161, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v49 = *(v141 + 28);
    v50 = *(v152 + 48);
    sub_A024(v45 + v49, v33, &qword_78298, &qword_5FB00);
    sub_A024(v48 + v49, &v33[v50], &qword_78298, &qword_5FB00);
    v51 = *v136;
    v52 = v153;
    if ((*v136)(v33, 1, v153) == 1)
    {
      if (v51(&v33[v50], 1, v52) != 1)
      {
        goto LABEL_65;
      }

      result = sub_60C4(v33, &qword_78298, &qword_5FB00);
      v53 = v157;
    }

    else
    {
      v54 = v146;
      sub_A024(v33, v146, &qword_78298, &qword_5FB00);
      if (v51(&v33[v50], 1, v52) == 1)
      {
        sub_1CF9C(v54, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
LABEL_65:
        sub_60C4(v33, &qword_78648, &qword_61A60);
LABEL_70:
        sub_1CF9C(v161, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
        sub_1CF9C(v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
        goto LABEL_71;
      }

      v55 = &v33[v50];
      v56 = v145;
      sub_1C814(v55, v145, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_35A28(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
      v57 = sub_5C114();
      sub_1CF9C(v56, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_1CF9C(v54, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      result = sub_60C4(v33, &qword_78298, &qword_5FB00);
      v53 = v157;
      if ((v57 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v58 = *v45;
    v59 = *(*v45 + 16);
    v144 = *v161;
    if (v59 != *(v144 + 16))
    {
      goto LABEL_70;
    }

    if (v59 && v58 != v144)
    {
      break;
    }

LABEL_57:
    if ((v45[1] != v161[1] || v45[2] != v161[2]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_70;
    }

    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v115 = v161;
    v116 = sub_5C114();
    v117 = v115;
    v45 = v159;
    sub_1CF9C(v117, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    sub_1CF9C(v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    if (v116)
    {
      v43 = v138 + 1;
      v42 = v126;
      v44 = v125;
      if (v138 + 1 != v140)
      {
        continue;
      }
    }

    return v116 & 1;
  }

  v60 = 0;
  v61 = (*(v155 + 80) + 32) & ~*(v155 + 80);
  v130 = v58 + v61;
  v129 = v144 + v61;
  v139 = v33;
  v119 = v58;
  v118 = v59;
  while (v60 < *(v58 + 16))
  {
    v62 = v53;
    v63 = v60;
    v64 = *(v155 + 72) * v60;
    v65 = v160;
    result = sub_1CF34(v130 + v64, v160, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v66 = *(v144 + 16);
    v131 = v63;
    if (v63 >= v66)
    {
      goto LABEL_81;
    }

    v53 = v62;
    sub_1CF34(v129 + v64, v62, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v67 = v65;
    v68 = *(v156 + 28);
    v69 = v148;
    v70 = *(v147 + 48);
    sub_A024(v67 + v68, v148, &qword_782A0, &qword_5FB08);
    sub_A024(v62 + v68, v69 + v70, &qword_782A0, &qword_5FB08);
    v71 = *v132;
    v72 = v149;
    if ((*v132)(v69, 1, v149) == 1)
    {
      if (v71(v69 + v70, 1, v72) != 1)
      {
        goto LABEL_74;
      }

      result = sub_60C4(v69, &qword_782A0, &qword_5FB08);
      v33 = v139;
    }

    else
    {
      v73 = v121;
      sub_A024(v69, v121, &qword_782A0, &qword_5FB08);
      if (v71(v69 + v70, 1, v72) == 1)
      {
        sub_1CF9C(v73, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
        v45 = v159;
LABEL_74:
        sub_60C4(v69, &qword_78640, &unk_628E0);
LABEL_69:
        sub_1CF9C(v53, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        sub_1CF9C(v160, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        goto LABEL_70;
      }

      v74 = v69 + v70;
      v75 = v143;
      sub_1C814(v74, v143, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_35A28(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v76 = sub_5C114();
      sub_1CF9C(v75, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_1CF9C(v73, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      result = sub_60C4(v69, &qword_782A0, &qword_5FB08);
      v45 = v159;
      v33 = v139;
      if ((v76 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v77 = *v160;
    v78 = *(*v160 + 16);
    v142 = *v62;
    if (v78 != *(v142 + 16))
    {
      goto LABEL_69;
    }

    if (v78 && v77 != v142)
    {
      v79 = 0;
      v80 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v128 = v77 + v80;
      v127 = v142 + v80;
      v124 = v77;
      v123 = v78;
      while (v79 < *(v77 + 16))
      {
        v81 = *(v154 + 72) * v79;
        v82 = v79;
        v83 = v165;
        result = sub_1CF34(v128 + v81, v165, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        v84 = *(v142 + 16);
        v135 = v82;
        if (v82 >= v84)
        {
          goto LABEL_79;
        }

        v85 = v127 + v81;
        v86 = v164;
        sub_1CF34(v85, v164, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        if ((*v83 != *v86 || v83[1] != v86[1]) && (sub_5C3A4() & 1) == 0 || (v165[2] != v164[2] || v165[3] != v164[3]) && (sub_5C3A4() & 1) == 0 || (v165[4] != v164[4] || v165[5] != v164[5]) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_68;
        }

        v87 = *(v158 + 28);
        v88 = v151;
        v89 = *(v150 + 48);
        sub_A024(v165 + v87, v151, &qword_78240, &qword_5FB10);
        sub_A024(v164 + v87, v88 + v89, &qword_78240, &qword_5FB10);
        v90 = *v133;
        v91 = v134;
        if ((*v133)(v88, 1, v134) == 1)
        {
          if (v90(v88 + v89, 1, v91) != 1)
          {
            goto LABEL_67;
          }

          result = sub_60C4(v88, &qword_78240, &qword_5FB10);
        }

        else
        {
          v92 = v122;
          sub_A024(v88, v122, &qword_78240, &qword_5FB10);
          if (v90(v88 + v89, 1, v91) == 1)
          {
            sub_1CF9C(v92, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
LABEL_67:
            sub_60C4(v88, &qword_78610, &qword_61A28);
LABEL_68:
            sub_1CF9C(v164, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
            sub_1CF9C(v165, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
            v53 = v157;
            v45 = v159;
            goto LABEL_69;
          }

          v93 = v88 + v89;
          v94 = v120;
          sub_1C814(v93, v120, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
          v95 = _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v92, v94);
          sub_1CF9C(v94, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
          sub_1CF9C(v92, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
          result = sub_60C4(v88, &qword_78240, &qword_5FB10);
          if ((v95 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v96 = *(v158 + 32);
        v97 = *(v165 + v96);
        v98 = *(v164 + v96);
        v99 = *(v97 + 16);
        if (v99 != *(v98 + 16))
        {
          goto LABEL_68;
        }

        if (v99 && v97 != v98)
        {
          v100 = 0;
          v101 = (*(v166 + 80) + 32) & ~*(v166 + 80);
          v102 = v97 + v101;
          v103 = v98 + v101;
          while (v100 < *(v97 + 16))
          {
            v104 = *(v166 + 72) * v100;
            result = sub_1CF34(v102 + v104, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if (v100 >= *(v98 + 16))
            {
              goto LABEL_76;
            }

            v105 = v7;
            v106 = v162;
            sub_1CF34(v103 + v104, v162, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
            v107 = sub_5C114();
            v108 = v106;
            v7 = v105;
            sub_1CF9C(v108, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            result = sub_1CF9C(v105, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if ((v107 & 1) == 0)
            {
              goto LABEL_68;
            }

            if (v99 == ++v100)
            {
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_50:
        sub_5BCE4();
        sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v109 = v164;
        v110 = v165;
        v111 = sub_5C114();
        sub_1CF9C(v109, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        result = sub_1CF9C(v110, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        v53 = v157;
        v45 = v159;
        v33 = v139;
        v77 = v124;
        if ((v111 & 1) == 0)
        {
          goto LABEL_69;
        }

        v79 = v135 + 1;
        if (v135 + 1 == v123)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_78;
    }

LABEL_52:
    if ((v160[1] != *(v53 + 8) || v160[2] != *(v53 + 16)) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_69;
    }

    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v112 = v160;
    v113 = sub_5C114();
    sub_1CF9C(v53, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v114 = v112;
    v45 = v159;
    result = sub_1CF9C(v114, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v58 = v119;
    if ((v113 & 1) == 0)
    {
      goto LABEL_70;
    }

    v60 = v131 + 1;
    if (v131 + 1 == v118)
    {
      goto LABEL_57;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV7BucketsV2eeoiySbAE_AEtFZ_0(uint64_t result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_5C114() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v9 = off_70AC0(v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v9);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78608, &qword_61A20);
  v15 = off_70AC0(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v15);
  v19 = &v46 - v18;
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_27;
  }

  v20 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v21 = *(v20 + 56);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_27;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_27;
  }

  v26 = *(v20 + 60);
  v47 = v20;
  v48 = v26;
  v49 = *(v14 + 48);
  sub_A024(v26 + a1, v19, &qword_782A8, &qword_5FB18);
  sub_A024(v48 + a2, &v19[v49], &qword_782A8, &qword_5FB18);
  v48 = *(v5 + 48);
  if (v48(v19, 1, v4) == 1)
  {
    if (v48(&v19[v49], 1, v4) == 1)
    {
      sub_60C4(v19, &qword_782A8, &qword_5FB18);
      goto LABEL_20;
    }

LABEL_18:
    v27 = v19;
LABEL_26:
    sub_60C4(v27, &qword_78608, &qword_61A20);
    goto LABEL_27;
  }

  sub_A024(v19, v13, &qword_782A8, &qword_5FB18);
  if (v48(&v19[v49], 1, v4) == 1)
  {
    sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    goto LABEL_18;
  }

  sub_1C814(&v19[v49], v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  LODWORD(v49) = _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV7BucketsV2eeoiySbAE_AEtFZ_0(v13, v7);
  v46 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets;
  sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_1CF9C(v13, v46);
  sub_60C4(v19, &qword_782A8, &qword_5FB18);
  if ((v49 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v28 = v47[16];
  v29 = *(v14 + 48);
  sub_A024(a1 + v28, v17, &qword_782A8, &qword_5FB18);
  v30 = a2 + v28;
  v31 = v29;
  sub_A024(v30, &v17[v29], &qword_782A8, &qword_5FB18);
  v32 = v48;
  if (v48(v17, 1, v4) != 1)
  {
    sub_A024(v17, v11, &qword_782A8, &qword_5FB18);
    if (v32(&v17[v31], 1, v4) != 1)
    {
      sub_1C814(&v17[v31], v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
      v35 = _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV7BucketsV2eeoiySbAE_AEtFZ_0(v11, v7);
      sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
      sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
      sub_60C4(v17, &qword_782A8, &qword_5FB18);
      if ((v35 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    goto LABEL_25;
  }

  if (v32(&v17[v31], 1, v4) != 1)
  {
LABEL_25:
    v27 = v17;
    goto LABEL_26;
  }

  sub_60C4(v17, &qword_782A8, &qword_5FB18);
LABEL_30:
  if (*(a1 + 48) != *(a2 + 48) || (sub_2F858(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_27;
  }

  v36 = v47[17];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_27;
    }
  }

  v41 = v47[18];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_27;
    }
  }

  if (*(a1 + 64) == *(a2 + 64))
  {
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v33 = sub_5C114();
    return v33 & 1;
  }

LABEL_27:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s16TelemetrySupport51Opentelemetry_Proto_Metrics_V1_ExponentialHistogramV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  if ((sub_30D5C(*a1, *a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV2eeoiySbAC_ACtFZ_0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_8:
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return sub_5C114() & 1;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s16TelemetrySupport47Opentelemetry_Proto_Metrics_V1_SummaryDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || (sub_30408(*(a1 + 40), *(a2 + 40)) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport46Opentelemetry_Proto_Metrics_V1_NumberDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *(a1 + 24);
    v7 = *(a2 + 24);
    if (v4)
    {
      if ((v5 & 1) == 0 || *&v6 != *&v7)
      {
        return 0;
      }
    }

    else if ((v5 & 1) != 0 || v6 != v7)
    {
      return 0;
    }
  }

  if ((sub_2F858(*(a1 + 40), *(a2 + 40)) & 1) != 0 && *(a1 + 48) == *(a2 + 48))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_5C114() & 1;
  }

  return 0;
}

uint64_t _s16TelemetrySupport49Opentelemetry_Proto_Metrics_V1_HistogramDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = v4[13];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((sub_30350(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_303AC(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (sub_2F858(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v10 = v4[14];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[15];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport40Opentelemetry_Proto_Metrics_V1_HistogramV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  if ((sub_30D5C(*a1, *a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, _s16TelemetrySupport49Opentelemetry_Proto_Metrics_V1_HistogramDataPointV2eeoiySbAC_ACtFZ_0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_8:
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return sub_5C114() & 1;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s16TelemetrySupport39Opentelemetry_Proto_Metrics_V1_ExemplarV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    if (v4)
    {
      if ((v5 & 1) == 0 || *&v6 != *&v7)
      {
        return 0;
      }
    }

    else if ((v5 & 1) != 0 || v6 != v7)
    {
      return 0;
    }
  }

  if (sub_14268(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) && sub_14268(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_5C114() & 1;
  }

  return 0;
}

uint64_t _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  off_70AC0(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78610, &qword_61A28);
  off_70AC0(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_5C3A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_5C3A4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = v7;
  v22 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 48);
  sub_A024(a1 + v14, v13, &qword_78240, &qword_5FB10);
  sub_A024(a2 + v14, &v13[v15], &qword_78240, &qword_5FB10);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_60C4(v13, &qword_78240, &qword_5FB10);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_A024(v13, v10, &qword_78240, &qword_5FB10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
LABEL_14:
    sub_60C4(v13, &qword_78610, &qword_61A28);
LABEL_18:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v21;
  sub_1C814(&v13[v15], v21, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  v18 = _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v10, v17);
  sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  sub_60C4(v13, &qword_78240, &qword_5FB10);
  if ((v18 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if ((sub_12FAC(*(a1 + *(v22 + 32)), *(a2 + *(v22 + 32))) & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v19 = sub_5C114();
  return v19 & 1;
}

uint64_t _s16TelemetrySupport34Opentelemetry_Proto_Metrics_V1_SumV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_30EFC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a2 + 16) != 1)
  {
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v5 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

LABEL_12:
  if (*(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport039Opentelemetry_Proto_Metrics_V1_ResourceE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  off_70AC0(v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  v11 = v10 - 8;
  off_70AC0(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
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
      sub_1C814(&v13[v15], v24, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_35A28(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource, &protocol conformance descriptor for Opentelemetry_Proto_Resource_V1_Resource);
      v18 = sub_5C114();
      sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_1CF9C(v9, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_60C4(v13, &qword_78298, &qword_5FB00);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_1CF9C(v9, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
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
  if ((sub_313CC(*v25, *a2) & 1) == 0 || (v19[1] != a2[1] || v19[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = sub_5C114();
  return v20 & 1;
}

uint64_t _s16TelemetrySupport036Opentelemetry_Proto_Metrics_V1_ScopeE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  off_70AC0(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  off_70AC0(v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v11 = v10 - 8;
  off_70AC0(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
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
      sub_1C814(&v13[v15], v24, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_35A28(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v18 = sub_5C114();
      sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_1CF9C(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v13, &qword_782A0, &qword_5FB08);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_1CF9C(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
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
  if ((sub_31970(*v25, *a2) & 1) == 0 || (v19[1] != a2[1] || v19[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = sub_5C114();
  return v20 & 1;
}

uint64_t _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v50 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  off_70AC0(v50);
  v53 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
  off_70AC0(v3 - 8);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  off_70AC0(v5 - 8);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  off_70AC0(v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  off_70AC0(v10);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v14 = off_70AC0(v13);
  v55 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = off_70AC0(v14);
  v54 = (&v50 - v17);
  v18 = off_70AC0(v16);
  v20 = (&v50 - v19);
  v21 = off_70AC0(v18);
  v23 = &v50 - v22;
  off_70AC0(v21);
  v25 = (&v50 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78660, &qword_61A68);
  v27 = off_70AC0(v26 - 8);
  v29 = &v50 - v28;
  v30 = *(v27 + 56);
  sub_1CF34(v56, &v50 - v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  sub_1CF34(v57, &v29[v30], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1CF34(v29, v23, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v9;
        sub_1C814(&v29[v30], v9, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
        v34 = _s16TelemetrySupport34Opentelemetry_Proto_Metrics_V1_SumV2eeoiySbAC_ACtFZ_0(v23, v9);
        sub_1CF9C(v45, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
        v36 = v23;
        v40 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum;
        goto LABEL_18;
      }

      v37 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum;
      v38 = v23;
      goto LABEL_23;
    }

    sub_1CF34(v29, v25, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    if (swift_getEnumCaseMultiPayload())
    {
      v37 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge;
      v38 = v25;
LABEL_23:
      sub_1CF9C(v38, v37);
      sub_60C4(v29, &qword_78660, &qword_61A68);
LABEL_24:
      v34 = 0;
      return v34 & 1;
    }

    sub_1C814(&v29[v30], v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    if (sub_30EFC(*v25, *v12))
    {
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v49 = sub_5C114();
      sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      if (v49)
      {
        v44 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge;
        v43 = v25;
        goto LABEL_30;
      }
    }

    else
    {
      sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    }

    v48 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge;
    v47 = v25;
LABEL_33:
    sub_1CF9C(v47, v48);
    sub_1CF9C(v29, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1CF34(v29, v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v39 = v51;
      sub_1C814(&v29[v30], v51, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      v34 = _s16TelemetrySupport40Opentelemetry_Proto_Metrics_V1_HistogramV2eeoiySbAC_ACtFZ_0(v20, v39);
      v35 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram;
      sub_1CF9C(v39, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      v36 = v20;
      goto LABEL_11;
    }

    v37 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram;
    v38 = v20;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v41 = v55;
    sub_1CF34(v29, v55, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v37 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary;
      v38 = v41;
      goto LABEL_23;
    }

    v42 = v53;
    sub_1C814(&v29[v30], v53, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    if (sub_3066C(*v41, *v42))
    {
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      if (sub_5C114())
      {
        sub_1CF9C(v42, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
        v43 = v41;
        v44 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary;
LABEL_30:
        sub_1CF9C(v43, v44);
        sub_1CF9C(v29, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
        v34 = 1;
        return v34 & 1;
      }
    }

    sub_1CF9C(v42, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    v47 = v41;
    v48 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary;
    goto LABEL_33;
  }

  v32 = v54;
  sub_1CF34(v29, v54, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v37 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram;
    v38 = v32;
    goto LABEL_23;
  }

  v33 = v52;
  sub_1C814(&v29[v30], v52, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  v34 = _s16TelemetrySupport51Opentelemetry_Proto_Metrics_V1_ExponentialHistogramV2eeoiySbAC_ACtFZ_0(v32, v33);
  v35 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram;
  sub_1CF9C(v33, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  v36 = v32;
LABEL_11:
  v40 = v35;
LABEL_18:
  sub_1CF9C(v36, v40);
  sub_1CF9C(v29, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  return v34 & 1;
}
uint64_t sub_1B49A758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B4D184BC();
  swift_getWitnessTable();
  sub_1B4D182EC();
  swift_getWitnessTable();
  sub_1B4D1869C();
  sub_1B4D188BC();
  swift_getWitnessTable();
  return sub_1B4D184EC();
}

uint64_t static BestRankedPropertyValueBehavior.add(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(a4 + 48);
  v7(a3, a4);
  v7(a3, a4);
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1B4D1842C();

  v10 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v13 = swift_getAssociatedConformanceWitness();
  v14 = v12(v9, 5, v8, v13, v10, AssociatedConformanceWitness);

  return (*(a4 + 56))(v14, a3, a4);
}

void static FIWorkoutDefaultMetricsProvider.getSupportedMetrics(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  sub_1B49A79FC(v4, v1, v2, v3);
}

void sub_1B49A79FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))();
  v6 = v29;
  v26 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v7 = *(a4 + 56);
  v8 = v7(a3, a4);
  v9 = objc_allocWithZone(MEMORY[0x1E699C9F8]);
  v10 = FIActivityMoveModeUserDefault();
  v11 = FIDeviceSupportsElevationGain();
  v12 = [v9 initWithMetricsVersion:6 activityType:v8 activityMoveMode:v10 deviceSupportsElevationMetrics:v11 deviceSupportsGroundElevationMetrics:FIDeviceSupportsGroundElevation()];
  if (!v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;

  v14 = (*(a4 + 256))(a3, a4);
  v15 = v7(v6, v26);
  v16 = [v13 supportedMetricsWithIsMachineWorkout:v14 & 1 activityType:v15];

  if (!v16)
  {
LABEL_22:
    __break(1u);
    return;
  }

  sub_1B49A7CD4();
  v17 = sub_1B4D183FC();

  if (v17 >> 62)
  {
    goto LABEL_19;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v13; v18; i = v13)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1B8C7CD90](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v24 = sub_1B4D1883C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1B4A1D47C(0, *(v20 + 2) + 1, 1, v20);
      }

      v13 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v13 >= v25 >> 1)
      {
        v20 = sub_1B4A1D47C((v25 > 1), v13 + 1, 1, v20);
      }

      *(v20 + 2) = v13 + 1;
      *&v20[8 * v13 + 32] = v24;
      ++v19;
      if (v23 == v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v18 = sub_1B4D18ABC();
  }

LABEL_20:

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

unint64_t sub_1B49A7CD4()
{
  result = qword_1EDC36DB0;
  if (!qword_1EDC36DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC36DB0);
  }

  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.TemplateString.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B49A7DA0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49A7E14(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49A7E68@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.placeholders()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B4D1A800;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001B4D4F0E0;
  *(v3 + 48) = sub_1B49A80CC;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v5 = v1;
  return v3;
}

uint64_t sub_1B49A7FA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v10[15] = a3;
  DistanceReference.rawValue.getter();
  sub_1B4D1232C();
  sub_1B4BC79D0();
  sub_1B499221C();
  v8 = sub_1B4D1878C();
  (*(v5 + 8))(v7, v4);

  return v8;
}

unint64_t sub_1B49A80E4()
{
  result = qword_1EB8A6E28;
  if (!qword_1EB8A6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E28);
  }

  return result;
}

unint64_t sub_1B49A813C()
{
  result = qword_1EB8A6E30;
  if (!qword_1EB8A6E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6E38, &qword_1B4D1C090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E30);
  }

  return result;
}

unint64_t sub_1B49A81A4()
{
  result = qword_1EB8A6E40;
  if (!qword_1EB8A6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E40);
  }

  return result;
}

unint64_t sub_1B49A81FC()
{
  result = qword_1EB8A6E48;
  if (!qword_1EB8A6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E48);
  }

  return result;
}

uint64_t sub_1B49A8250()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B4D1A800;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001B4D4F0E0;
  *(v3 + 48) = sub_1B49A8398;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v5 = v1;
  return v3;
}

unint64_t sub_1B49A830C(uint64_t a1)
{
  result = sub_1B49A8334();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49A8334()
{
  result = qword_1EB8A6E50;
  if (!qword_1EB8A6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E50);
  }

  return result;
}

uint64_t static RingsCountPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B49A8448(a1, &v6);
  if (!v7)
  {
    result = sub_1B49A84B8(&v6);
    goto LABEL_5;
  }

  sub_1B49A24C4(&v6, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  if (RingsRepresentable.isNil.getter(v3, v4))
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v8);
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 1;
    return result;
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1B49A8448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E58, &qword_1B4D1C110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49A84B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E58, &qword_1B4D1C110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B49A8520(uint64_t a1)
{
  result = sub_1B49A8548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49A8548()
{
  result = qword_1EDC3CC40;
  if (!qword_1EDC3CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CC40);
  }

  return result;
}

unint64_t sub_1B49A85A0()
{
  result = qword_1EDC39690;
  if (!qword_1EDC39690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39690);
  }

  return result;
}

Swift::String __swiftcall FitnessContextQueryIdentifier.makeQueryKey()()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1B4D181CC();
  v5 = v0;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  sub_1B4D1831C();
  MEMORY[0x1B8C7C620]();

  v1 = v4;
  v2 = v5;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t FitnessContext.queryResults.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FitnessContext.retrieve<A>(_:as:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a4;
  v47 = sub_1B4D1880C();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v44 - v9;
  v49 = type metadata accessor for FitnessContextQueryResult(0);
  v10 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E60, &unk_1B4D1C190);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v44 - v19;
  v20 = *v4;
  v53 = *(*v4 + 16);
  if (v53)
  {
    v44 = a3;
    a3 = 0;
    v54 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v52 = v20;
    while (1)
    {
      if (a3 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v21 = v10;
      sub_1B49AA024(v54 + *(v10 + 72) * a3, v14, type metadata accessor for FitnessContextQueryResult);
      v5 = *v14;
      if (*(*v14 + 16))
      {
        sub_1B4D18E8C();
        sub_1B4D1820C();
        v22 = sub_1B4D18EDC();
        v23 = -1 << *(v5 + 32);
        v24 = v22 & ~v23;
        if ((*(v5 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          break;
        }
      }

LABEL_3:
      ++a3;
      sub_1B49A9DE0(v14, type metadata accessor for FitnessContextQueryResult);
      v20 = v52;
      v10 = v21;
      if (a3 == v53)
      {
        v28 = 1;
        a3 = v44;
        goto LABEL_17;
      }
    }

    v25 = ~v23;
    while (1)
    {
      v26 = (*(v5 + 48) + 16 * v24);
      v27 = *v26 == a1 && v26[1] == a2;
      if (v27 || (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v5 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v5 = v50;
    sub_1B49A9CC8(v14, v50);
    v28 = 0;
    a3 = v44;
    v10 = v21;
  }

  else
  {
    v28 = 1;
LABEL_17:
    v5 = v50;
  }

  v29 = v49;
  (*(v10 + 56))(v5, v28, 1, v49);
  sub_1B4974FBC(v5, v17, &qword_1EB8A6E60, &unk_1B4D1C190);
  if ((*(v10 + 48))(v17, 1, v29) == 1)
  {
    sub_1B4975024(v17, &qword_1EB8A6E60, &unk_1B4D1C190);
    if (qword_1EDC3CEC8 != -1)
    {
LABEL_33:
      swift_once();
    }

    v30 = sub_1B4D17F6C();
    __swift_project_value_buffer(v30, qword_1EDC3CED0);

    v31 = sub_1B4D17F5C();
    v32 = sub_1B4D1871C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v57[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1B49558AC(a1, a2, v57);
      _os_log_impl(&dword_1B4953000, v31, v32, "[FitnessContext][%s] Request key does not match any query", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1B8C7DDA0](v34, -1, -1);
      MEMORY[0x1B8C7DDA0](v33, -1, -1);
    }
  }

  else
  {
    v35 = v48;
    sub_1B49A9CC8(v17, v48);
    sub_1B4974FBC(v35 + *(v29 + 24), &v55, &qword_1EB8A6E68, &qword_1B4D20870);
    if (v56)
    {
      sub_1B49A9DE0(v35, type metadata accessor for FitnessContextQueryResult);
      sub_1B4975024(v5, &qword_1EB8A6E60, &unk_1B4D1C190);
      sub_1B496F398(&v55, v57);
      sub_1B496F398(v57, &v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E70, &qword_1B4D1C1A0);
      v36 = v45;
      v37 = swift_dynamicCast();
      (*(*(a3 - 8) + 56))(v36, v37 ^ 1u, 1, a3);
      return (*(v46 + 32))(v51, v36, v47);
    }

    sub_1B4975024(&v55, &qword_1EB8A6E68, &qword_1B4D20870);
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v39 = sub_1B4D17F6C();
    __swift_project_value_buffer(v39, qword_1EDC3CED0);

    v40 = sub_1B4D17F5C();
    v41 = sub_1B4D1873C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v57[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1B49558AC(a1, a2, v57);
      _os_log_impl(&dword_1B4953000, v40, v41, "Query result was empty for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1B8C7DDA0](v43, -1, -1);
      MEMORY[0x1B8C7DDA0](v42, -1, -1);
    }

    sub_1B49A9DE0(v35, type metadata accessor for FitnessContextQueryResult);
  }

  sub_1B4975024(v5, &qword_1EB8A6E60, &unk_1B4D1C190);
  return (*(*(a3 - 8) + 56))(v51, 1, 1, a3);
}

void FitnessContext.includes(request:)(uint64_t a1)
{
  Result = type metadata accessor for FitnessContextQueryResult(0);
  v4 = *(Result - 8);
  MEMORY[0x1EEE9AC00](Result);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *v1;
  v9 = *(*v1 + 16);
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    sub_1B49AA024(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7++, v6, type metadata accessor for FitnessContextQueryResult);
    Request = type metadata accessor for FitnessContextQueryRequest(0);
    v11 = sub_1B49C1374(a1 + *(Request + 20));
    sub_1B49A9DE0(v6, type metadata accessor for FitnessContextQueryResult);
    if (v11)
    {
      return;
    }
  }
}

void sub_1B49A9058(void *a1)
{
  v2 = v1;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  MEMORY[0x1EEE9AC00](Request);
  v7 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v81 - v11);
  Result = type metadata accessor for FitnessContextQueryResult(0);
  v13 = *(Result - 8);
  MEMORY[0x1EEE9AC00](Result);
  v15 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v81 - v19);
  v21 = *v2;
  v94 = a1;
  v22 = sub_1B49A9BAC(sub_1B49A9E40, v93, v21);
  if (v23)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4D17F6C();
    __swift_project_value_buffer(v24, qword_1EDC3CED0);
    sub_1B49AA024(a1, v7, type metadata accessor for FitnessContextQueryRequest);
    v25 = sub_1B4D17F5C();
    v26 = sub_1B4D1873C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v95[0] = v28;
      *v27 = 136315138;
      v29 = *v7;
      v30 = v7[1];

      sub_1B49A9DE0(v7, type metadata accessor for FitnessContextQueryRequest);
      v31 = sub_1B49558AC(v29, v30, v95);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1B4953000, v25, v26, "[FitnessContext] Query request %s is not already covered in existing context. Cannot merge request into context.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B8C7DDA0](v28, -1, -1);
      MEMORY[0x1B8C7DDA0](v27, -1, -1);
    }

    else
    {

      sub_1B49A9DE0(v7, type metadata accessor for FitnessContextQueryRequest);
    }

    return;
  }

  v32 = v22;
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v22 >= *(v21 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v83 = Descriptor;
  Descriptor = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v81 = *(v13 + 72) * v22;
  v92 = v20;
  sub_1B49AA024(v21 + Descriptor + v81, v20, type metadata accessor for FitnessContextQueryResult);
  if (qword_1EDC3CEC8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v33 = sub_1B4D17F6C();
  v34 = __swift_project_value_buffer(v33, qword_1EDC3CED0);
  sub_1B49AA024(a1, v12, type metadata accessor for FitnessContextQueryRequest);
  v86 = v34;
  v35 = sub_1B4D17F5C();
  v36 = sub_1B4D1873C();
  v37 = os_log_type_enabled(v35, v36);
  v84 = v32;
  v85 = v21;
  v82 = Descriptor;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v95[0] = v39;
    *v38 = 136315138;
    v40 = v15;
    v41 = a1;
    v42 = v2;
    v43 = *v12;
    v44 = v12[1];

    sub_1B49A9DE0(v12, type metadata accessor for FitnessContextQueryRequest);
    v45 = sub_1B49558AC(v43, v44, v95);
    v2 = v42;
    a1 = v41;
    v15 = v40;

    *(v38 + 4) = v45;
    _os_log_impl(&dword_1B4953000, v35, v36, "[FitnessContext] Query request %s is already covered in existing context:", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1B8C7DDA0](v39, -1, -1);
    MEMORY[0x1B8C7DDA0](v38, -1, -1);
  }

  else
  {

    sub_1B49A9DE0(v12, type metadata accessor for FitnessContextQueryRequest);
  }

  v46 = v91;
  sub_1B49AA024(a1, v91, type metadata accessor for FitnessContextQueryRequest);
  v47 = sub_1B4D17F5C();
  v48 = sub_1B4D1870C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v95[0] = v50;
    *v49 = 136315138;
    v51 = v46;
    sub_1B49AA024(v46 + *(Request + 20), v89, type metadata accessor for FitnessContextQueryDescriptor);
    v52 = sub_1B4D181AC();
    v54 = v53;
    sub_1B49A9DE0(v51, type metadata accessor for FitnessContextQueryRequest);
    v55 = sub_1B49558AC(v52, v54, v95);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_1B4953000, v47, v48, "%s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1B8C7DDA0](v50, -1, -1);
    MEMORY[0x1B8C7DDA0](v49, -1, -1);
  }

  else
  {

    sub_1B49A9DE0(v46, type metadata accessor for FitnessContextQueryRequest);
  }

  v56 = v92;
  v57 = Result;
  v58 = v88;
  sub_1B49AA024(v92, v88, type metadata accessor for FitnessContextQueryResult);
  v59 = sub_1B4D17F5C();
  v60 = sub_1B4D1870C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v95[0] = v62;
    *v61 = 136315138;
    sub_1B49AA024(v58 + v57[5], v89, type metadata accessor for FitnessContextQueryDescriptor);
    v63 = sub_1B4D181AC();
    v64 = v58;
    v66 = v65;
    sub_1B49A9DE0(v64, type metadata accessor for FitnessContextQueryResult);
    v67 = sub_1B49558AC(v63, v66, v95);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_1B4953000, v59, v60, "%s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v56 = v92;
    MEMORY[0x1B8C7DDA0](v62, -1, -1);
    MEMORY[0x1B8C7DDA0](v61, -1, -1);
  }

  else
  {

    sub_1B49A9DE0(v58, type metadata accessor for FitnessContextQueryResult);
  }

  v68 = v85;
  v69 = *v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  v71 = a1[1];
  *(inited + 32) = *a1;
  v72 = inited + 32;
  *(inited + 40) = v71;

  v73 = sub_1B49A9FA4(inited, v69);
  swift_setDeallocating();
  v74 = v92;
  sub_1B497CBA8(v72);
  sub_1B49AA024(v74 + v57[5], v15 + v57[5], type metadata accessor for FitnessContextQueryDescriptor);
  sub_1B4974FBC(v74 + v57[6], v15 + v57[6], &qword_1EB8A6E68, &qword_1B4D20870);
  v75 = v57[7];
  v76 = (v74 + v75);
  *v15 = v73;
  v77 = (v15 + v75);
  v78 = v76[1];
  *v77 = *v76;
  v77[1] = v78;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_1B49A9F90(v68);
    *v2 = v68;
  }

  v80 = v84;
  sub_1B49A9DE0(v74, type metadata accessor for FitnessContextQueryResult);
  if (v80 >= v68[2])
  {
    __break(1u);
  }

  else
  {
    sub_1B49AA08C(v15, v68 + v82 + v81);
    *v2 = v68;
  }
}

uint64_t sub_1B49A9A10(uint64_t a1, double a2)
{
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v4 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = sub_1B49A9DE0(v6, type metadata accessor for FitnessContextQueryRequest))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1B49AA024(*(a1 + 48) + *(v4 + 72) * (v14 | (v13 << 6)), v6, type metadata accessor for FitnessContextQueryRequest);
    sub_1B49A9058(v6);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49A9BAC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FitnessContextQueryResult(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

Swift::Void __swiftcall FitnessContext.merge(context:)(FitnessIntelligence::FitnessContext context)
{

  sub_1B49975EC(v1);
}

uint64_t sub_1B49A9CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessContextQueryResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for FitnessContextClient(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FitnessContextClient(uint64_t result, int a2, int a3)
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

uint64_t sub_1B49A9DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49A9E40()
{
  v1 = *(v0 + 16);
  type metadata accessor for FitnessContextQueryResult(0);
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  return sub_1B49C1374(v1 + *(Request + 20)) & 1;
}

char *sub_1B49A9E9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E78, &qword_1B4D1C238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B49A9FA4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1B49FA73C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1B49AA024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49AA08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessContextQueryResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B49AA104()
{
  result = qword_1EB8A6E80;
  if (!qword_1EB8A6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E80);
  }

  return result;
}

unint64_t sub_1B49AA15C()
{
  result = qword_1EB8A6E88;
  if (!qword_1EB8A6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E88);
  }

  return result;
}

uint64_t sub_1B49AA1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B49AA274;

  return sub_1B49AA62C(a1);
}

uint64_t sub_1B49AA274(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1B49AA374(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4992854(a1, v4);
  v5 = [*&v4[*(v2 + 24)] effectiveTypeIdentifier];
  if (qword_1F2CB8798 == v5 || unk_1F2CB87A0 == v5)
  {
    sub_1B49AA7C0(v4);
  }

  else
  {
    v7 = FIShouldTrackTrainingLoad();
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E98, &qword_1B4D1C2A0);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8) - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1B4D1A800;
      v11 = *(v2 + 36);
      v12 = sub_1B4D1777C();
      (*(*(v12 - 8) + 16))(v10 + v9, &v4[v11], v12);
      sub_1B49AA7C0(v4);
      type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v13 = sub_1B4C94F64(v10);
      swift_setDeallocating();
      sub_1B49AA81C(v10 + v9);
      swift_deallocClassInstance();
      return v13;
    }

    sub_1B49AA7C0(v4);
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4D17F6C();
    __swift_project_value_buffer(v15, qword_1EDC36F00);
    v16 = sub_1B4D17F5C();
    v17 = sub_1B4D1873C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B4953000, v16, v17, "Effort Reminder turned off, skipping training load query", v18, 2u);
      MEMORY[0x1B8C7DDA0](v18, -1, -1);
    }
  }

  return sub_1B4C94F64(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B49AA64C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 16) = &type metadata for TrainingLoadFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E8, &qword_1B4D1AB00);
  v9 = sub_1B4D181CC();
  v10 = v4;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D4BEF0);
  (*(v3 + 8))(v9, v10, &type metadata for TrainingLoadContext, &type metadata for TrainingLoadContext, v2, v3);

  v5 = *(v0 + 32);
  if (v5 == 5)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E90, &qword_1B4D1C298);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B4D1A800;
    *(v6 + 32) = v5;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1B49AA7C0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49AA81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 HKActivitySummaryRepresentable.pausedInterval.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t type metadata accessor for HKActivitySummaryRepresentable(uint64_t a1)
{
  result = qword_1EDC38498;
  if (!qword_1EDC38498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKActivitySummaryRepresentable.activityMoveMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKActivitySummaryRepresentable(0);
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKActivitySummaryRepresentable.isWheelchairUser.setter(char a1)
{
  result = type metadata accessor for HKActivitySummaryRepresentable(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X7>, uint64_t a8@<X8>, void *a9, void *a10, id a11, char a12, unsigned __int8 a13)
{
  v163 = a6;
  v164 = a7;
  v166 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v167 = &v156 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v171 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v172 = &v156 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v156 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v156 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v169 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v168 = &v156 - v32;
  v33 = *a1;
  v34 = *(a2 + 16);
  if (!v34)
  {
    v36 = 0;
    v37 = 0;
    v39 = 1;
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_16:
    LODWORD(v173) = !v39;
    v47 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v48 = v47[7];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    v50 = *(*(v49 - 8) + 56);
    v51 = v166;
    v50(v166 + v48, 1, 1, v49);
    v50(v51 + v47[8], 1, 1, v49);
    v52 = v47[9];
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v54 = *(*(v53 - 8) + 56);
    v54(v51 + v52, 1, 1, v53);
    v54(v51 + v47[10], 1, 1, v53);
    v54(v51 + v47[11], 1, 1, v53);
    v54(v51 + v47[12], 1, 1, v53);
    v55 = v47[13];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v57 = *(*(v56 - 8) + 56);
    v57(v51 + v55, 1, 1, v56);
    v57(v51 + v47[14], 1, 1, v56);
    v57(v51 + v47[15], 1, 1, v56);
    v57(v51 + v47[16], 1, 1, v56);
    v58 = v47[17];
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = (*(*(v59 - 8) + 56))(v51 + v58, 1, 1, v59);
    v61 = v47[19];
    v62 = v51 + v47[18];
    *v51 = v33;
    *(v51 + 8) = v36;
    *(v51 + 16) = v37;
    *(v51 + 24) = v39;
    *(v51 + 25) = v173;
    *v62 = 0;
    *(v62 + 8) = 1;
    *(v51 + v61) = 0;
    return result;
  }

  v35 = (a2 + 40);
  while (1)
  {
    v36 = *(v35 - 1);
    v37 = *v35;
    v38 = v33 >= v36 && v33 < v37;
    v39 = !v38;
    if (v38)
    {
      break;
    }

    v35 += 2;
    if (!--v34)
    {
      v36 = 0;
      v37 = 0;
      break;
    }
  }

  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_13:
  v165 = v28;
  v162 = v39;
  v40 = a3;
  v161 = [v40 isPaused];
  v41 = [v40 activeEnergyBurnedGoal];
  v42 = objc_opt_self();
  v43 = [v42 largeCalorieUnit];
  [v41 doubleValueForUnit_];
  v45 = v44;

  v173 = v40;
  if (a4)
  {
    v46 = a4;
LABEL_19:
    v64 = a4;
    v65 = [v42 largeCalorieUnit];
    [v46 doubleValueForUnit_];
    v159 = v66;

    goto LABEL_20;
  }

  v63 = [v40 activeEnergyBurned];
  if (v63)
  {
    v46 = v63;
    goto LABEL_19;
  }

  v159 = 0;
LABEL_20:
  v67 = v173;
  v68 = [v173 appleMoveTimeGoal];
  v69 = [v42 minuteUnit];
  [v68 doubleValueForUnit_];
  v71 = v70;

  if (a5)
  {
    v72 = a5;
LABEL_24:
    v74 = v163;
    v75 = a5;
    v76 = [v42 minuteUnit];
    [v72 doubleValueForUnit_];
    v160 = v77;

    goto LABEL_25;
  }

  v73 = [v67 appleMoveTime];
  if (v73)
  {
    v72 = v73;
    goto LABEL_24;
  }

  v160 = 0;
  v74 = v163;
LABEL_25:
  v78 = v173;
  v79 = [v173 exerciseTimeGoal];
  if (v79)
  {
    v80 = v79;
    v81 = [v42 minuteUnit];
    [v80 doubleValueForUnit_];
    v83 = v82;

    if (v74)
    {
LABEL_27:
      v84 = v74;
LABEL_31:
      v86 = v74;
      v87 = [v42 minuteUnit];
      [v84 doubleValueForUnit_];

      goto LABEL_32;
    }
  }

  else
  {
    v83 = 0.0;
    if (v74)
    {
      goto LABEL_27;
    }
  }

  v85 = [v78 appleExerciseTime];
  if (v85)
  {
    v84 = v85;
    goto LABEL_31;
  }

LABEL_32:
  v88 = [v78 standHoursGoal];
  if (v88)
  {
    v89 = v88;
    v90 = [v42 countUnit];
    [v89 doubleValueForUnit_];
    v92 = v91;
  }

  else
  {
    v92 = 0.0;
  }

  v93 = v173;
  v94 = [v173 appleStandHours];
  v95 = [v42 countUnit];
  [v94 doubleValueForUnit_];
  v163 = v96;

  v97 = v164;
  if (v164)
  {
    v98 = v164;
  }

  else
  {
    v99 = [v93 stepCount];
    if (!v99)
    {
      v100 = v165;
      v103 = a10;
      if (a9)
      {
        goto LABEL_40;
      }

      goto LABEL_45;
    }

    v98 = v99;
  }

  v100 = v165;
  v101 = v97;
  v102 = [v42 countUnit];
  [v98 doubleValueForUnit_];

  v103 = a10;
  if (a9)
  {
LABEL_40:
    v104 = a9;
LABEL_47:
    v106 = a9;
    v107 = [v42 countUnit];
    [v104 doubleValueForUnit_];

    goto LABEL_48;
  }

LABEL_45:
  v105 = [v173 _flightsClimbed];
  if (v105)
  {
    v104 = v105;
    goto LABEL_47;
  }

LABEL_48:
  v109 = v173;
  if (v103)
  {
    v110 = v103;
  }

  else
  {
    v111 = [v173 distanceWalkingRunning];
    if (!v111)
    {
      v114 = a13;
      if ((a12 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v110 = v111;
  }

  v112 = v103;
  v113 = [v42 meterUnit];
  [v110 doubleValueForUnit_];

  v114 = a13;
  if (a12)
  {
LABEL_53:
    a11 = [v109 activityMoveMode];
  }

LABEL_54:
  if (v114 == 2)
  {
    v114 = [v109 _wheelchairUse] == 2;
  }

  v157 = [v109 _activitySummaryIndex];
  v158 = v114;
  if (v45 <= 0.0)
  {
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v119 - 8) + 56))(v168, 1, 1, v119);
  }

  else
  {
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v115 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v116 = v115;
    v117 = v168;
    sub_1B4D1741C();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  }

  v164 = a11;
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDC36DF8;
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v121 = v120;
  v122 = v169;
  sub_1B4D1741C();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v124 = 1;
  (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
  if (v71 > 0.0)
  {
    v125 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v124 = 0;
  }

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v127 = 1;
  (*(*(v126 - 8) + 56))(v100, v124, 1, v126);
  v128 = objc_opt_self();
  v129 = [v128 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v130 = v170;
  sub_1B4D1741C();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v132 = *(*(v131 - 8) + 56);
  v132(v130, 0, 1, v131);
  if (v83 > 0.0)
  {
    v133 = [v128 minutes];
    sub_1B4D1741C();
    v127 = 0;
  }

  v134 = 1;
  v132(v172, v127, 1, v131);
  v135 = [v128 minutes];
  v136 = v171;
  sub_1B4D1741C();
  v132(v136, 0, 1, v131);
  v137 = v167;
  if (v92 > 0.0)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v138 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v139 = v138;
    sub_1B4D1741C();
    v134 = 0;
  }

  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  (*(*(v140 - 8) + 56))(v137, v134, 1, v140);
  v141 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v142 = v141[14];
  if (qword_1EDC36E70 != -1)
  {
    swift_once();
  }

  v143 = qword_1EDC36E78;
  type metadata accessor for UnitCount();
  v144 = v143;
  v145 = v166;
  sub_1B4D1741C();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v147 = *(*(v146 - 8) + 56);
  v147(v145 + v142, 0, 1, v146);
  v148 = v141[15];
  sub_1B4D1741C();
  v147(v145 + v148, 0, 1, v146);
  v149 = v141[16];
  sub_1B4D1741C();
  v147(v145 + v149, 0, 1, v146);
  v150 = v141[17];
  v151 = [objc_opt_self() meters];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();

  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v152 - 8) + 56))(v145 + v150, 0, 1, v152);
  LOBYTE(v150) = v158 & 1;
  v153 = v141[19];
  v154 = v145 + v141[18];
  *v145 = v157;
  *(v145 + 8) = v36;
  *(v145 + 16) = v37;
  v155 = v161;
  *(v145 + 24) = v162;
  *(v145 + 25) = v155;
  sub_1B498B270(v168, v145 + v141[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v169, v145 + v141[8], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v165, v145 + v141[9], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v170, v145 + v141[10], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v172, v145 + v141[11], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v171, v145 + v141[12], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  result = sub_1B498B270(v167, v145 + v141[13], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  *v154 = v164;
  *(v154 + 8) = 0;
  *(v145 + v153) = v150;
  return result;
}

unint64_t sub_1B49ABE8C(char a1)
{
  result = 0x646E496568636163;
  switch(a1)
  {
    case 1:
      result = 0x6E49646573756170;
      break;
    case 2:
      result = 0x6465737561507369;
      break;
    case 3:
      result = 0x6C616F4765766F6DLL;
      break;
    case 4:
      result = 0x676F725065766F6DLL;
      break;
    case 5:
      result = 0x756E694D65766F6DLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x616F47646E617473;
      break;
    case 10:
      result = 0x6F7250646E617473;
      break;
    case 11:
      result = 0x6E756F4370657473;
      break;
    case 12:
      result = 0x6F43746867696C66;
      break;
    case 13:
      result = 0x65636E6174736964;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B49AC088@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B49B002C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B49AC0BC(uint64_t a1)
{
  v2 = sub_1B49AF8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49AC0F8(uint64_t a1)
{
  v2 = sub_1B49AF8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKActivitySummaryRepresentable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA8, &unk_1B4D1C2D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49AF8A4();
  sub_1B4D18EFC();
  *&v15 = *v3;
  v17 = 0;
  sub_1B49AF8F8();
  sub_1B4D18D0C();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v15 = *(v3 + 8);
    v16 = v9;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EC0, &qword_1B4D45F60);
    sub_1B49AF9A0(&qword_1EB8A6EC8, sub_1B49AF8F8, MEMORY[0x1E69E66B0]);
    sub_1B4D18CAC();
    LOBYTE(v15) = 2;
    sub_1B4D18CCC();
    v14 = type metadata accessor for HKActivitySummaryRepresentable(0);
    LOBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v15) = 4;
    sub_1B4D18CAC();
    LOBYTE(v15) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v15) = 6;
    sub_1B4D18CAC();
    LOBYTE(v15) = 7;
    sub_1B4D18CAC();
    LOBYTE(v15) = 8;
    sub_1B4D18CAC();
    LOBYTE(v15) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    sub_1B49B0578(&qword_1EB8A6EE0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v15) = 10;
    sub_1B4D18CAC();
    LOBYTE(v15) = 11;
    sub_1B4D18CAC();
    LOBYTE(v15) = 12;
    sub_1B4D18CAC();
    LOBYTE(v15) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    v10 = (v3 + *(v14 + 72));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *&v15 = v11;
    BYTE8(v15) = v10;
    v17 = 14;
    type metadata accessor for HKActivityMoveMode(0);
    sub_1B49AFA18(&qword_1EB8A6EF0, &protocol conformance descriptor for HKActivityMoveMode);
    sub_1B4D18CAC();
    LOBYTE(v15) = 15;
    sub_1B4D18C7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HKActivitySummaryRepresentable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v57 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EF8, &qword_1B4D1C2E0);
  v60 = *(v28 - 8);
  v61 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v49 - v29;
  v31 = type metadata accessor for HKActivitySummaryRepresentable(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1B49AF8A4();
  v62 = v30;
  v35 = v63;
  sub_1B4D18EEC();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  v36 = v27;
  v50 = v31;
  v63 = v33;
  v67 = 0;
  sub_1B49AF94C();
  sub_1B4D18C0C();
  v37 = v63;
  *v63 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EC0, &qword_1B4D45F60);
  v67 = 1;
  sub_1B49AF9A0(&qword_1EB8A6F08, sub_1B49AF94C, MEMORY[0x1E69E66E0]);
  sub_1B4D18BAC();
  v38 = v66;
  *(v37 + 1) = v65;
  *(v37 + 24) = v38;
  LOBYTE(v65) = 2;
  *(v37 + 25) = sub_1B4D18BCC() & 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  LOBYTE(v65) = 3;
  sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
  v49 = v39;
  sub_1B4D18BAC();
  sub_1B498B270(v36, v37 + v50[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  LOBYTE(v65) = 4;
  sub_1B4D18BAC();
  v40 = v50;
  sub_1B498B270(v24, v37 + v50[8], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  LOBYTE(v65) = 5;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
  v49 = 0;
  sub_1B4D18BAC();
  sub_1B498B270(v21, v37 + v40[9], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  LOBYTE(v65) = 6;
  v41 = v59;
  sub_1B4D18BAC();
  sub_1B498B270(v41, v37 + v40[10], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  LOBYTE(v65) = 7;
  v42 = v58;
  sub_1B4D18BAC();
  sub_1B498B270(v42, v37 + v40[11], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  LOBYTE(v65) = 8;
  v43 = v57;
  sub_1B4D18BAC();
  sub_1B498B270(v43, v63 + v50[12], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  LOBYTE(v65) = 9;
  sub_1B49B0578(&qword_1EB8A6F20, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968098]);
  sub_1B4D18BAC();
  sub_1B498B270(v56, v63 + v50[13], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  LOBYTE(v65) = 10;
  sub_1B4D18BAC();
  sub_1B498B270(v55, v63 + v50[14], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  LOBYTE(v65) = 11;
  sub_1B4D18BAC();
  sub_1B498B270(v54, v63 + v50[15], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  LOBYTE(v65) = 12;
  sub_1B4D18BAC();
  sub_1B498B270(v53, v63 + v50[16], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  LOBYTE(v65) = 13;
  sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
  sub_1B4D18BAC();
  sub_1B498B270(v52, v63 + v50[17], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  type metadata accessor for HKActivityMoveMode(0);
  v67 = 14;
  sub_1B49AFA18(&qword_1EB8A6F30, &protocol conformance descriptor for HKActivityMoveMode);
  sub_1B4D18BAC();
  v44 = v63 + v50[18];
  v45 = BYTE8(v65);
  *v44 = v65;
  v44[8] = v45;
  LOBYTE(v65) = 15;
  LOBYTE(v43) = sub_1B4D18B7C();
  v46 = v50[19];
  (*(v60 + 8))(v62, v61);
  v47 = v63;
  *(v63 + v46) = v43;
  sub_1B49AFA5C(v47, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  return sub_1B49AFAC0(v47);
}

__n128 sub_1B49AD828@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

BOOL _s19FitnessIntelligence30HKActivitySummaryRepresentableV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v190 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v187 = &v180[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v188 = &v180[-v7];
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  MEMORY[0x1EEE9AC00](v189);
  v192 = &v180[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v202 = *(v9 - 8);
  v203 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v197 = &v180[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v191 = &v180[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v193 = &v180[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v195 = &v180[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v199 = &v180[-v18];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F58, &unk_1B4D1C540);
  MEMORY[0x1EEE9AC00](v201);
  v194 = &v180[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v198 = &v180[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v196 = &v180[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v205 = &v180[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v27 = *(v26 - 8);
  v213 = v26;
  v214 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v210 = &v180[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v200 = &v180[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v206 = &v180[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v208 = &v180[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v211 = &v180[-v36];
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  MEMORY[0x1EEE9AC00](v215);
  v204 = &v180[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v207 = &v180[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v209 = &v180[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v212 = &v180[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v216 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v180[-v45];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v180[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v180[-v51];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v180[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v180[-v57];
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }

LABEL_8:
    if (*(a1 + 25) != *(a2 + 25))
    {
      return 0;
    }

    v183 = v4;
    v60 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v186 = a2;
    v185 = v60;
    v61 = *(v60 + 28);
    v62 = *(v53 + 48);
    v184 = a1;
    sub_1B4974FBC(a1 + v61, v58, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v63 = v186 + v61;
    v64 = v62;
    sub_1B4974FBC(v63, &v58[v62], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v65 = *(v216 + 48);
    if (v65(v58, 1, v44) == 1)
    {
      if (v65(&v58[v64], 1, v44) == 1)
      {
        v182 = v65;
        sub_1B4975024(v58, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B4974FBC(v58, v52, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if (v65(&v58[v64], 1, v44) != 1)
      {
        v182 = v65;
        v69 = v64;
        v70 = v216;
        (*(v216 + 32))(v46, &v58[v69], v44);
        sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
        v181 = sub_1B4D1816C();
        v71 = *(v70 + 8);
        v71(v46, v44);
        v71(v52, v44);
        sub_1B4975024(v58, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        if ((v181 & 1) == 0)
        {
          return 0;
        }

LABEL_16:
        v72 = v185[8];
        v73 = *(v53 + 48);
        sub_1B4974FBC(v184 + v72, v55, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        sub_1B4974FBC(v186 + v72, &v55[v73], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        v74 = v182;
        if (v182(v55, 1, v44) == 1)
        {
          if (v74(&v55[v73], 1, v44) == 1)
          {
            sub_1B4975024(v55, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B4974FBC(v55, v49, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          if (v74(&v55[v73], 1, v44) != 1)
          {
            v75 = v216;
            (*(v216 + 32))(v46, &v55[v73], v44);
            sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
            v76 = sub_1B4D1816C();
            v77 = *(v75 + 8);
            v77(v46, v44);
            v77(v49, v44);
            sub_1B4975024(v55, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            if ((v76 & 1) == 0)
            {
              return 0;
            }

LABEL_23:
            v78 = v185[9];
            v79 = *(v215 + 48);
            v80 = v184;
            v81 = v212;
            sub_1B4974FBC(v184 + v78, v212, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            sub_1B4974FBC(v186 + v78, &v81[v79], &qword_1EB8A6C90, &unk_1B4D1BBD0);
            v82 = v213;
            v83 = v214;
            v84 = *(v214 + 48);
            if (v84(v81, 1, v213) == 1)
            {
              if (v84(&v81[v79], 1, v82) != 1)
              {
                goto LABEL_39;
              }

              sub_1B4975024(v81, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            }

            else
            {
              v85 = v211;
              sub_1B4974FBC(v81, v211, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if (v84(&v81[v79], 1, v82) == 1)
              {
                (*(v83 + 8))(v85, v82);
                goto LABEL_39;
              }

              v86 = v210;
              (*(v83 + 32))(v210, &v81[v79], v82);
              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
              v87 = v83;
              v88 = sub_1B4D1816C();
              v89 = *(v87 + 8);
              v89(v86, v82);
              v89(v85, v82);
              sub_1B4975024(v81, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if ((v88 & 1) == 0)
              {
                return 0;
              }
            }

            v90 = v80;
            v91 = v185[10];
            v92 = *(v215 + 48);
            v81 = v209;
            sub_1B4974FBC(v90 + v91, v209, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            sub_1B4974FBC(v186 + v91, &v81[v92], &qword_1EB8A6C90, &unk_1B4D1BBD0);
            if (v84(v81, 1, v82) == 1)
            {
              v93 = v84(&v81[v92], 1, v82);
              v94 = v214;
              if (v93 != 1)
              {
                goto LABEL_39;
              }

              sub_1B4975024(v81, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            }

            else
            {
              v95 = v208;
              sub_1B4974FBC(v81, v208, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              v96 = v84(&v81[v92], 1, v82);
              v94 = v214;
              if (v96 == 1)
              {
                goto LABEL_38;
              }

              v97 = v210;
              (*(v214 + 32))(v210, &v81[v92], v82);
              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
              v98 = sub_1B4D1816C();
              v99 = *(v94 + 8);
              v99(v97, v82);
              v99(v95, v82);
              sub_1B4975024(v81, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if ((v98 & 1) == 0)
              {
                return 0;
              }
            }

            v100 = v185[11];
            v101 = *(v215 + 48);
            v81 = v207;
            sub_1B4974FBC(v184 + v100, v207, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            sub_1B4974FBC(v186 + v100, &v81[v101], &qword_1EB8A6C90, &unk_1B4D1BBD0);
            if (v84(v81, 1, v82) == 1)
            {
              if (v84(&v81[v101], 1, v82) == 1)
              {
                sub_1B4975024(v81, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                goto LABEL_44;
              }

LABEL_39:
              v66 = &qword_1EB8A6F60;
              v67 = &qword_1B4D2C420;
              v68 = v81;
              goto LABEL_40;
            }

            v95 = v206;
            sub_1B4974FBC(v81, v206, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            if (v84(&v81[v101], 1, v82) != 1)
            {
              v102 = v210;
              (*(v94 + 32))(v210, &v81[v101], v82);
              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
              v103 = sub_1B4D1816C();
              v104 = *(v94 + 8);
              v104(v102, v82);
              v104(v95, v82);
              sub_1B4975024(v81, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if ((v103 & 1) == 0)
              {
                return 0;
              }

LABEL_44:
              v105 = v185[12];
              v106 = *(v215 + 48);
              v107 = v204;
              sub_1B4974FBC(v184 + v105, v204, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              sub_1B4974FBC(v186 + v105, &v107[v106], &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if (v84(v107, 1, v82) == 1)
              {
                v108 = v84(&v107[v106], 1, v82);
                v109 = v205;
                if (v108 == 1)
                {
                  sub_1B4975024(v107, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                  goto LABEL_52;
                }
              }

              else
              {
                v110 = v200;
                sub_1B4974FBC(v107, v200, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                v111 = v84(&v107[v106], 1, v82);
                v109 = v205;
                if (v111 != 1)
                {
                  v112 = v210;
                  (*(v94 + 32))(v210, &v107[v106], v82);
                  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
                  v113 = v110;
                  v114 = sub_1B4D1816C();
                  v115 = *(v94 + 8);
                  v115(v112, v82);
                  v115(v113, v82);
                  sub_1B4975024(v107, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                  if ((v114 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_52:
                  v116 = v185[13];
                  v117 = *(v201 + 48);
                  sub_1B4974FBC(v184 + v116, v109, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                  sub_1B4974FBC(v186 + v116, v109 + v117, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                  v118 = v203;
                  v119 = *(v202 + 48);
                  if (v119(v109, 1, v203) == 1)
                  {
                    if (v119((v109 + v117), 1, v118) == 1)
                    {
                      sub_1B4975024(v109, &qword_1EB8A6D18, &unk_1B4D1BCA0);
LABEL_59:
                      v127 = v185[14];
                      v128 = *(v201 + 48);
                      v107 = v196;
                      sub_1B4974FBC(v184 + v127, v196, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                      sub_1B4974FBC(v186 + v127, &v107[v128], &qword_1EB8A6D18, &unk_1B4D1BCA0);
                      v129 = v203;
                      if (v119(v107, 1, v203) == 1)
                      {
                        v130 = v119;
                        if (v119(&v107[v128], 1, v129) == 1)
                        {
                          sub_1B4975024(v107, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          goto LABEL_66;
                        }
                      }

                      else
                      {
                        v131 = v195;
                        sub_1B4974FBC(v107, v195, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                        v130 = v119;
                        if (v119(&v107[v128], 1, v129) != 1)
                        {
                          v132 = v202;
                          v133 = v197;
                          (*(v202 + 32))(v197, &v107[v128], v129);
                          sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
                          v134 = sub_1B4D1816C();
                          v135 = *(v132 + 8);
                          v135(v133, v129);
                          v135(v131, v129);
                          sub_1B4975024(v107, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          if ((v134 & 1) == 0)
                          {
                            return 0;
                          }

LABEL_66:
                          v136 = v185[15];
                          v137 = *(v201 + 48);
                          v138 = v198;
                          sub_1B4974FBC(v184 + v136, v198, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          sub_1B4974FBC(v186 + v136, &v138[v137], &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          if (v130(v138, 1, v203) == 1)
                          {
                            if (v130(&v198[v137], 1, v203) == 1)
                            {
                              sub_1B4975024(v198, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              goto LABEL_73;
                            }
                          }

                          else
                          {
                            v139 = v198;
                            sub_1B4974FBC(v198, v193, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                            if (v130(&v139[v137], 1, v203) != 1)
                            {
                              v141 = v202;
                              v140 = v203;
                              v142 = v197;
                              v143 = v198;
                              (*(v202 + 32))(v197, &v198[v137], v203);
                              sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
                              v144 = v193;
                              v145 = sub_1B4D1816C();
                              v146 = *(v141 + 8);
                              v146(v142, v140);
                              v146(v144, v140);
                              sub_1B4975024(v143, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              if ((v145 & 1) == 0)
                              {
                                return 0;
                              }

LABEL_73:
                              v147 = v185[16];
                              v148 = *(v201 + 48);
                              v149 = v194;
                              sub_1B4974FBC(v184 + v147, v194, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              sub_1B4974FBC(v186 + v147, &v149[v148], &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              if (v130(v149, 1, v203) == 1)
                              {
                                if (v130(&v194[v148], 1, v203) == 1)
                                {
                                  sub_1B4975024(v194, &qword_1EB8A6D18, &unk_1B4D1BCA0);
LABEL_80:
                                  v159 = v185[17];
                                  v160 = *(v189 + 48);
                                  v161 = v192;
                                  sub_1B4974FBC(v184 + v159, v192, &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                  sub_1B4974FBC(v186 + v159, &v161[v160], &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                  v162 = *(v190 + 48);
                                  if (v162(v161, 1, v183) == 1)
                                  {
                                    if (v162(&v192[v160], 1, v183) == 1)
                                    {
                                      sub_1B4975024(v192, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_87:
                                      v172 = v185[18];
                                      v173 = (v184 + v172);
                                      v174 = *(v184 + v172 + 8);
                                      v175 = (v186 + v172);
                                      v176 = *(v186 + v172 + 8);
                                      if (v174)
                                      {
                                        if (!v176)
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        if (*v173 != *v175)
                                        {
                                          LOBYTE(v176) = 1;
                                        }

                                        if (v176)
                                        {
                                          return 0;
                                        }
                                      }

                                      v177 = v185[19];
                                      v178 = *(v184 + v177);
                                      v179 = *(v186 + v177);
                                      if (v178 != 2)
                                      {
                                        return v179 != 2 && ((v179 ^ v178) & 1) == 0;
                                      }

                                      return v179 == 2;
                                    }
                                  }

                                  else
                                  {
                                    v163 = v192;
                                    sub_1B4974FBC(v192, v188, &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                    if (v162(&v163[v160], 1, v183) != 1)
                                    {
                                      v164 = v190;
                                      v165 = v192;
                                      v166 = &v192[v160];
                                      v167 = v187;
                                      v168 = v183;
                                      (*(v190 + 32))(v187, v166, v183);
                                      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
                                      v169 = v188;
                                      v170 = sub_1B4D1816C();
                                      v171 = *(v164 + 8);
                                      v171(v167, v168);
                                      v171(v169, v168);
                                      sub_1B4975024(v165, &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                      if ((v170 & 1) == 0)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_87;
                                    }

                                    (*(v190 + 8))(v188, v183);
                                  }

                                  v66 = &qword_1EB8A6F50;
                                  v67 = &qword_1B4D425A0;
                                  v68 = v192;
LABEL_40:
                                  sub_1B4975024(v68, v66, v67);
                                  return 0;
                                }
                              }

                              else
                              {
                                v150 = v194;
                                sub_1B4974FBC(v194, v191, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                                if (v130(&v150[v148], 1, v203) != 1)
                                {
                                  v152 = v202;
                                  v151 = v203;
                                  v153 = v194;
                                  v154 = &v194[v148];
                                  v155 = v197;
                                  (*(v202 + 32))(v197, v154, v203);
                                  sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
                                  v156 = v191;
                                  v157 = sub_1B4D1816C();
                                  v158 = *(v152 + 8);
                                  v158(v155, v151);
                                  v158(v156, v151);
                                  sub_1B4975024(v153, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                                  if ((v157 & 1) == 0)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_80;
                                }

                                (*(v202 + 8))(v191, v203);
                              }

                              v66 = &qword_1EB8A6F58;
                              v67 = &unk_1B4D1C540;
                              v68 = v194;
                              goto LABEL_40;
                            }

                            (*(v202 + 8))(v193, v203);
                          }

                          v66 = &qword_1EB8A6F58;
                          v67 = &unk_1B4D1C540;
                          v68 = v198;
                          goto LABEL_40;
                        }

                        (*(v202 + 8))(v131, v129);
                      }

                      v66 = &qword_1EB8A6F58;
                      v67 = &unk_1B4D1C540;
LABEL_50:
                      v68 = v107;
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    v120 = v199;
                    sub_1B4974FBC(v109, v199, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                    if (v119((v109 + v117), 1, v118) != 1)
                    {
                      v121 = v202;
                      v122 = v197;
                      (*(v202 + 32))(v197, v109 + v117, v118);
                      sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
                      v123 = v109;
                      v124 = v118;
                      v125 = sub_1B4D1816C();
                      v126 = *(v121 + 8);
                      v126(v122, v124);
                      v126(v120, v124);
                      sub_1B4975024(v123, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                      if ((v125 & 1) == 0)
                      {
                        return 0;
                      }

                      goto LABEL_59;
                    }

                    (*(v202 + 8))(v120, v118);
                  }

                  v66 = &qword_1EB8A6F58;
                  v67 = &unk_1B4D1C540;
                  v68 = v109;
                  goto LABEL_40;
                }

                (*(v94 + 8))(v110, v82);
              }

              v66 = &qword_1EB8A6F60;
              v67 = &qword_1B4D2C420;
              goto LABEL_50;
            }

LABEL_38:
            (*(v94 + 8))(v95, v82);
            goto LABEL_39;
          }

          (*(v216 + 8))(v49, v44);
        }

        v66 = &qword_1EB8A6F68;
        v67 = &unk_1B4D1C550;
        v68 = v55;
        goto LABEL_40;
      }

      (*(v216 + 8))(v52, v44);
    }

    v66 = &qword_1EB8A6F68;
    v67 = &unk_1B4D1C550;
    v68 = v58;
    goto LABEL_40;
  }

  result = 0;
  if ((*(a2 + 24) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_1B49AF8A4()
{
  result = qword_1EB8A6EB0;
  if (!qword_1EB8A6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6EB0);
  }

  return result;
}

unint64_t sub_1B49AF8F8()
{
  result = qword_1EB8A6EB8;
  if (!qword_1EB8A6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6EB8);
  }

  return result;
}

unint64_t sub_1B49AF94C()
{
  result = qword_1EB8A6F00;
  if (!qword_1EB8A6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F00);
  }

  return result;
}

uint64_t sub_1B49AF9A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6EC0, &qword_1B4D45F60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49AFA18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKActivityMoveMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49AFA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKActivitySummaryRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49AFAC0(uint64_t a1)
{
  v2 = type metadata accessor for HKActivitySummaryRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49AFB44(uint64_t a1)
{
  sub_1B49AFCD8(319, &qword_1EDC378D0, &qword_1EB8A6EC0, &qword_1B4D45F60);
  if (v1 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EDC3CB48, &qword_1EB8A6868, &unk_1B4D1AB80);
    if (v2 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC3CB20, &qword_1EB8A6850, &unk_1B4D1BC10);
      if (v3 <= 0x3F)
      {
        sub_1B49AFCD8(319, &qword_1EDC3CB50, &qword_1EB8A6870, &unk_1B4D1C2C0);
        if (v4 <= 0x3F)
        {
          sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
          if (v5 <= 0x3F)
          {
            sub_1B49AFD2C(319);
            if (v6 <= 0x3F)
            {
              sub_1B49AFD84();
              if (v7 <= 0x3F)
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

void sub_1B49AFCD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B4D1880C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B49AFD2C(uint64_t a1)
{
  if (!qword_1EDC378A0)
  {
    type metadata accessor for HKActivityMoveMode(255);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC378A0);
    }
  }
}

void sub_1B49AFD84()
{
  if (!qword_1EDC3CEB0)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CEB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HKActivitySummaryRepresentable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HKActivitySummaryRepresentable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B49AFF28()
{
  result = qword_1EB8A6F38;
  if (!qword_1EB8A6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F38);
  }

  return result;
}

unint64_t sub_1B49AFF80()
{
  result = qword_1EB8A6F40;
  if (!qword_1EB8A6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F40);
  }

  return result;
}

unint64_t sub_1B49AFFD8()
{
  result = qword_1EB8A6F48;
  if (!qword_1EB8A6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F48);
  }

  return result;
}

uint64_t sub_1B49B002C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E496568636163 && a2 == 0xEA00000000007865;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E49646573756170 && a2 == 0xEE006C6176726574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465737561507369 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F725065766F6DLL && a2 == 0xEC00000073736572 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756E694D65766F6DLL && a2 == 0xEF6C616F47736574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F100 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xEC0000006C616F47 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F120 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F7250646E617473 && a2 == 0xED00007373657267 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E756F4370657473 && a2 == 0xE900000000000074 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F43746867696C66 && a2 == 0xEB00000000746E75 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F140 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F160 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1B49B0578(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t ActivitySharingFriendWorkout.init(workoutType:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ActivitySharingFriendWorkout(0);
  v8 = *(v7 + 20);
  v9 = sub_1B4D1777C();
  v12 = *(*(v9 - 8) + 32);
  (v12)((v9 - 8), &a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return v12(v10, a3, v9);
}

uint64_t type metadata accessor for ActivitySharingFriendWorkout(uint64_t a1)
{
  result = qword_1EB8A6FC0;
  if (!qword_1EB8A6FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ActivitySharingFriendWorkout.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = v2;
    v9 = v3;
    [v5 coordinate];
    v11 = v10;
    [v7 coordinate];
    if (v11 != v12)
    {

      return 0;
    }

    [v5 coordinate];
    v14 = v13;
    [v7 coordinate];
    v16 = v15;

    if (v14 != v16)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for ActivitySharingFriendWorkout(0);
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  return sub_1B4D1774C();
}

BOOL sub_1B49B0864(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = a1;
    v9 = a2;
    [v5 coordinate];
    v11 = v10;
    [v7 coordinate];
    if (v11 == v12)
    {
      [v5 coordinate];
      v14 = v13;
      [v7 coordinate];
      v16 = v15;

      return v14 == v16;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    return sub_1B4D187AC() & 1;
  }
}

uint64_t sub_1B49B0988()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B49B09EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B49B157C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B49B0A14(uint64_t a1)
{
  v2 = sub_1B49B0CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49B0A50(uint64_t a1)
{
  v2 = sub_1B49B0CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySharingFriendWorkout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F88, &unk_1B4D1C560);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49B0CC8();
  sub_1B4D18EFC();
  v12 = *v3;
  v11[15] = 0;
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    type metadata accessor for ActivitySharingFriendWorkout(0);
    v11[14] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    v11[13] = 2;
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B49B0CC8()
{
  result = qword_1EB8A6F90;
  if (!qword_1EB8A6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F90);
  }

  return result;
}

void ActivitySharingFriendWorkout.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1B4D1777C();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6FA8, &qword_1B4D1C570);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ActivitySharingFriendWorkout(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B49B0CC8();
  v31 = v11;
  v16 = v32;
  sub_1B4D18EEC();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  else
  {
    v17 = v29;
    v32 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v36 = 0;
    sub_1B49B1148(&qword_1EB8A6FB0, &protocol conformance descriptor for CodableBridging<A>);
    v18 = v30;
    sub_1B4D18C0C();
    *v14 = v37;
    v35 = 1;
    v26 = sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
    sub_1B4D18C0C();
    v19 = *(v12 + 20);
    v24 = *(v28 + 32);
    v25 = v14;
    v24(&v14[v19], v8, v3);
    v34 = 2;
    v20 = v32;
    sub_1B4D18C0C();
    (*(v17 + 8))(v31, v18);
    v21 = *(v12 + 24);
    v22 = v25;
    v24(&v25[v21], v20, v3);
    sub_1B49B11DC(v22, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    sub_1B49B1240(v22);
  }
}

uint64_t sub_1B49B1148(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49B1198(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D1777C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49B11DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendWorkout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49B1240(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingFriendWorkout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49B12CC(void **a1, void **a2, uint64_t a3)
{
  if (!sub_1B49B0864(*a1, *a2) || (sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  return sub_1B4D1774C();
}

void sub_1B49B1378(uint64_t a1)
{
  sub_1B49B13FC(319);
  if (v1 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B49B13FC(uint64_t a1)
{
  if (!qword_1EDC37438)
  {
    v2 = sub_1B498AFB8(255, &qword_1EDC36DC8, 0x1E699C9F0);
    v5 = type metadata accessor for CodableBridging(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDC37438);
    }
  }
}

unint64_t sub_1B49B1478()
{
  result = qword_1EB8A6FD0;
  if (!qword_1EB8A6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FD0);
  }

  return result;
}

unint64_t sub_1B49B14D0()
{
  result = qword_1EB8A6FD8;
  if (!qword_1EB8A6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FD8);
  }

  return result;
}

unint64_t sub_1B49B1528()
{
  result = qword_1EB8A6FE0;
  if (!qword_1EB8A6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FE0);
  }

  return result;
}

uint64_t sub_1B49B157C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B4D4F180 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B49B16A8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;

      v10 = a1(&v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1B49B1748(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B49B17F4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8C7CD90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B4D18ABC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

FitnessIntelligence::FitnessPlusPropertyDimensionsField_optional __swiftcall FitnessPlusPropertyDimensionsField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FitnessPlusPropertyDimensionsField.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x59664F68746E6F6DLL;
  v3 = 0x6144664F72756F68;
  v4 = 0x7974696C61646F6DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656557664F796164;
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

uint64_t sub_1B49B1A4C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49B1B50(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B49B1C40(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B49B1D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726165;
  v4 = 0x59664F68746E6F6DLL;
  v5 = 0xE900000000000079;
  v6 = 0x6144664F72756F68;
  v7 = 0xEC000000646E694BLL;
  v8 = 0x7974696C61646F6DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001B4D48DB0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656557664F796164;
    v3 = 0xE90000000000006BLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void FitnessPlusPropertyDimensions.hourOfDay.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

_BYTE *FitnessPlusPropertyDimensions.init(monthOfYear:dayOfWeek:hourOfDay:modalityKind:trainerIdentifiers:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a4;
  v10 = *a5;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 8) = v7;
  *(a6 + 16) = v8;
  *(a6 + 17) = v9;
  *(a6 + 24) = v10;
  return result;
}

uint64_t FitnessPlusPropertyDimensions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B4D1777C();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(v10 + 48);
  v11(v9, v10);
  DayOfWeek.init(from:)(v8, &v29 + 2);
  v25 = BYTE2(v29);
  if (BYTE2(v29) == 7 || (v11(v9, v10), MonthOfYear.init(from:)(v8, &v29 + 1), BYTE1(v29) == 12))
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
  }

  else
  {
    v23 = BYTE1(v29);
    v11(v9, v10);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v13 = sub_1B4D1796C();
    __swift_project_value_buffer(v13, qword_1EDC3CE48);
    v14 = v27;
    (*(v27 + 104))(v6, *MEMORY[0x1E6969A58], v4);
    v15 = sub_1B4D1795C();
    (*(v14 + 8))(v6, v4);
    (*(v24 + 8))(v8, v26);
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 32))(&v29, v16, v17);
    v18 = v29;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    (*(v20 + 24))(&v28, v19, v20);
    v21 = v28;
    *a2 = v23 | (v25 << 8);
    a2[1] = v15;
    a2[2] = v18 << 8;
    a2[3] = v21;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t FitnessPlusPropertyDimensions.mask(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 1);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 17);
  v7 = *(v2 + 24);
  if (a1)
  {
    v31 = *v2;
    v32 = *(v2 + 1);
    v33 = *(v2 + 16);
    v34 = *(v2 + 8);
    v29 = *(v2 + 17);
    v8 = *(a1 + 16);
    v9 = (a1 + 32);
    v10 = v8;
    v11 = (a1 + 32);
    while (1)
    {
      if (!v10)
      {
        v31 = 12;
        goto LABEL_13;
      }

      v13 = *v11;
      if (v13 <= 2 && v13 != 1 && v13 != 2)
      {
        break;
      }

      v12 = sub_1B4D18DCC();

      ++v11;
      --v10;
      if (v12)
      {
        goto LABEL_13;
      }
    }

LABEL_13:
    v15 = v8;
    v16 = v9;
    while (1)
    {
      if (!v15)
      {
        v32 = 7;
        goto LABEL_21;
      }

      if (*v16 <= 2u && *v16 && *v16 != 2)
      {
        break;
      }

      v17 = sub_1B4D18DCC();

      ++v16;
      --v15;
      if (v17)
      {
        goto LABEL_21;
      }
    }

LABEL_21:
    v18 = v8;
    v19 = v9;
    while (1)
    {
      if (!v18)
      {
        v34 = 0;
        v33 = 1;
        goto LABEL_30;
      }

      v21 = *v19;
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v20 = sub_1B4D18DCC();

      ++v19;
      --v18;
      if (v20)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    v22 = v8;
    v23 = v9;
    while (1)
    {
      if (!v22)
      {
        v26 = 15;
        goto LABEL_43;
      }

      v25 = *v23;
      if (v25 > 2 && v25 != 4)
      {
        break;
      }

      v24 = sub_1B4D18DCC();

      ++v23;
      --v22;
      if (v24)
      {
        goto LABEL_41;
      }
    }

LABEL_41:
    v26 = v29;
    while (1)
    {
LABEL_43:
      if (!v8)
      {
        result = 0;
        goto LABEL_49;
      }

      v28 = *v9;
      if (v28 >= 4)
      {
        break;
      }

      v27 = sub_1B4D18DCC();

      ++v9;
      --v8;
      if (v27)
      {
        goto LABEL_48;
      }
    }

LABEL_48:

LABEL_49:
    *a2 = v31;
    *(a2 + 1) = v32;
    *(a2 + 8) = v34;
    *(a2 + 16) = v33;
    *(a2 + 17) = v26;
    *(a2 + 24) = result;
  }

  else
  {
    *a2 = *v2;
    *(a2 + 1) = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 17) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

Swift::Bool __swiftcall FitnessPlusPropertyDimensions.matches(_:)(FitnessIntelligence::FitnessPlusPropertyDimensionsFilters_optional *a1)
{
  rawValue = a1->value.monthOfYear._rawValue;
  if (!a1->value.monthOfYear._rawValue)
  {
    return 1;
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 1);
  v7 = v1[16];
  v8 = v1[17];
  v9 = *(v1 + 3);
  v10 = a1->value.trainerIdentifiers._rawValue;
  v36 = a1->value.modalityKind._rawValue;
  v37 = v9;
  v11 = a1->value.dayOfWeek._rawValue;
  v12 = a1->value.hourOfDay._rawValue;
  if (v4 == 12 || !rawValue[2] || sub_1B4978C4C(v4, rawValue))
  {
    v38 = v7;
    v39 = v12;
    v40 = v8;
    v35 = v10;
    if (v5 != 7)
    {
      v13 = *(v11 + 2);
      if (v13)
      {
        v14 = v11 + 32;
        do
        {
          if (!v13)
          {
            return 0;
          }

          v18 = *v14;
          if (v18 <= 2)
          {
            v22 = 0x616473656E646577;
            if (v18 == 1)
            {
              v22 = 0x79616473657574;
            }

            v23 = 0xE900000000000079;
            if (v18 == 1)
            {
              v23 = 0xE700000000000000;
            }

            if (*v14)
            {
              v19 = v22;
            }

            else
            {
              v19 = 0x7961646E6F6DLL;
            }

            if (*v14)
            {
              v20 = v23;
            }

            else
            {
              v20 = 0xE600000000000000;
            }

            if (v5 > 2)
            {
LABEL_42:
              v24 = 0x7961646E7573;
              if (v5 == 5)
              {
                v24 = 0x7961647275746173;
                v25 = 0xE800000000000000;
              }

              else
              {
                v25 = 0xE600000000000000;
              }

              v26 = 0x7961647372756874;
              if (v5 == 3)
              {
                v27 = 0xE800000000000000;
              }

              else
              {
                v26 = 0x796164697266;
                v27 = 0xE600000000000000;
              }

              if (v5 <= 4)
              {
                v28 = v26;
              }

              else
              {
                v28 = v24;
              }

              if (v5 <= 4)
              {
                v16 = v27;
              }

              else
              {
                v16 = v25;
              }

              if (v19 != v28)
              {
                goto LABEL_11;
              }

              goto LABEL_10;
            }
          }

          else if (*v14 > 4u)
          {
            if (v18 == 5)
            {
              v20 = 0xE800000000000000;
              v19 = 0x7961647275746173;
              if (v5 > 2)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v19 = 0x7961646E7573;
              v20 = 0xE600000000000000;
              if (v5 > 2)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            if (v18 == 3)
            {
              v19 = 0x7961647372756874;
            }

            else
            {
              v19 = 0x796164697266;
            }

            if (v18 == 3)
            {
              v20 = 0xE800000000000000;
            }

            else
            {
              v20 = 0xE600000000000000;
            }

            if (v5 > 2)
            {
              goto LABEL_42;
            }
          }

          if (v5)
          {
            if (v5 == 1)
            {
              v21 = 0x79616473657574;
            }

            else
            {
              v21 = 0x616473656E646577;
            }

            if (v5 == 1)
            {
              v16 = 0xE700000000000000;
            }

            else
            {
              v16 = 0xE900000000000079;
            }

            if (v19 != v21)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v19 != 0x7961646E6F6DLL)
            {
              goto LABEL_11;
            }
          }

LABEL_10:
          if (v20 == v16)
          {

            break;
          }

LABEL_11:
          v17 = sub_1B4D18DCC();

          ++v14;
          --v13;
        }

        while ((v17 & 1) == 0);
      }
    }

    v29 = v40;
    if ((v38 & 1) != 0 || (v30 = v39[2]) == 0)
    {
LABEL_67:
      if (v40 == 15 || !v36[2] || (v29 = sub_1B4978F94(v40, v36), (v29 & 1) != 0))
      {
        if (!v37)
        {
          return 1;
        }

        if (!v35[2])
        {
          return 1;
        }

        v41 = v37;
        MEMORY[0x1EEE9AC00](v29);
        v34[2] = &v41;
        if (sub_1B49B16A8(sub_1B49B2E80, v34, v33))
        {
          return 1;
        }
      }
    }

    else
    {
      v31 = v39 + 4;
      while (v30)
      {
        v32 = *v31++;
        --v30;
        if (v32 == v6)
        {
          goto LABEL_67;
        }
      }
    }
  }

  return 0;
}

uint64_t FitnessPlusPropertyDimensions.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 24);
  if (*v1 == 12)
  {
    sub_1B4D18EAC();
    if (v2 != 7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B4D18EAC();
    MonthOfYear.rawValue.getter();
    sub_1B4D1820C();

    if (v2 != 7)
    {
LABEL_3:
      sub_1B4D18EAC();
      sub_1B4D1820C();

      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  sub_1B4D18EAC();
  if ((v4 & 1) == 0)
  {
LABEL_4:
    sub_1B4D18EAC();
    MEMORY[0x1B8C7D2C0](v3);
    if (v5 != 15)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_1B4D18EAC();
  if (v5 != 15)
  {
LABEL_5:
    sub_1B4D18EAC();
    FitnessPlusModalityKind.rawValue.getter();
    sub_1B4D1820C();

    if (v6)
    {
      goto LABEL_6;
    }

    return sub_1B4D18EAC();
  }

LABEL_15:
  sub_1B4D18EAC();
  if (!v6)
  {
    return sub_1B4D18EAC();
  }

LABEL_6:
  sub_1B4D18EAC();
  result = MEMORY[0x1B8C7D290](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {

    v9 = v6 + 40;
    do
    {

      sub_1B4D1820C();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t FitnessPlusPropertyDimensions.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 3);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensions.hash(into:)(v6);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B2D70()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 3);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensions.hash(into:)(v6);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B2DE0(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 3);
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensions.hash(into:)(v7);
  return sub_1B4D18EDC();
}

BOOL _s19FitnessIntelligence0A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 1);
  v10 = a2[16];
  v11 = a2[17];
  v12 = *(a2 + 3);
  if (*a1 == 12)
  {
    if (v7 != 12)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 7)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (v8 == 7)
    {
      return 0;
    }

    v17 = v2;
    v18 = v5;
    v19 = sub_1B49767B8(v17, v8);
    v5 = v18;
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (v7 == 12)
  {
    return 0;
  }

  v28 = *(a1 + 17);
  v29 = *(a2 + 3);
  v13 = MonthOfYear.rawValue.getter();
  v15 = v14;
  if (v13 != MonthOfYear.rawValue.getter() || v15 != v16)
  {
    v20 = sub_1B4D18DCC();

    v12 = v29;
    v5 = v28;
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v12 = v29;
  v5 = v28;
  if (v2 != 7)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v8 != 7)
  {
    return 0;
  }

LABEL_12:
  if (v4)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v9)
    {
      v21 = v10;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v5 == 15)
  {
    if (v11 != 15)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v11 == 15)
  {
    return 0;
  }

  v22 = FitnessPlusModalityKind.rawValue.getter();
  v24 = v23;
  if (v22 == FitnessPlusModalityKind.rawValue.getter() && v24 == v25)
  {

    goto LABEL_29;
  }

  v26 = sub_1B4D18DCC();

  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (v6)
  {
    if (v12)
    {
      return (sub_1B4A0C158(v6, v12) & 1) != 0;
    }

    goto LABEL_34;
  }

  if (v12)
  {
LABEL_34:

    return 0;
  }

  return 1;
}

unint64_t sub_1B49B3128()
{
  result = qword_1EB8A6FE8;
  if (!qword_1EB8A6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FE8);
  }

  return result;
}

unint64_t sub_1B49B317C(void *a1)
{
  a1[1] = sub_1B49B31B4();
  a1[2] = sub_1B49B3128();
  result = sub_1B49B3208();
  a1[3] = result;
  return result;
}

unint64_t sub_1B49B31B4()
{
  result = qword_1EB8A6FF0;
  if (!qword_1EB8A6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FF0);
  }

  return result;
}

unint64_t sub_1B49B3208()
{
  result = qword_1EB8A6FF8;
  if (!qword_1EB8A6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FF8);
  }

  return result;
}

unint64_t sub_1B49B3260()
{
  result = qword_1EB8A7000;
  if (!qword_1EB8A7000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7008, &qword_1B4D1C7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7000);
  }

  return result;
}

unint64_t sub_1B49B32C8()
{
  result = qword_1EB8A7010;
  if (!qword_1EB8A7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7010);
  }

  return result;
}

unint64_t sub_1B49B3320()
{
  result = qword_1EB8A7018;
  if (!qword_1EB8A7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7018);
  }

  return result;
}

unint64_t sub_1B49B3374(uint64_t a1)
{
  *(a1 + 8) = sub_1B49B33A4();
  result = sub_1B49B33F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49B33A4()
{
  result = qword_1EDC399D0;
  if (!qword_1EDC399D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399D0);
  }

  return result;
}

unint64_t sub_1B49B33F8()
{
  result = qword_1EDC399E8[0];
  if (!qword_1EDC399E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC399E8);
  }

  return result;
}

unint64_t sub_1B49B3450()
{
  result = qword_1EDC399E0;
  if (!qword_1EDC399E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399E0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B49B34C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B49B351C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t FitnessPlusPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
}

uint64_t FitnessPlusPropertyRecord.propertyKind.getter()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t FitnessPlusPropertyRecord.genericProperty.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t FitnessPlusPropertyRecord.init(startCacheIndex:endCacheIndex:dimensions:property:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = *(a3 + 16);
  v9 = *(a3 + 17);
  v10 = *(a3 + 3);
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 33) = v9;
  *(a5 + 40) = v10;
  return sub_1B496F398(a4, a5 + 48);
}

uint64_t FitnessPlusPropertyRecord.with(startCacheIndex:endCacheIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 33);
  v11 = *(v3 + 40);
  sub_1B497558C(v3 + 48, a3 + 48);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 33) = v10;
  *(a3 + 40) = v11;
}

unint64_t sub_1B49B3780()
{
  result = qword_1EDC399D8;
  if (!qword_1EDC399D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399D8);
  }

  return result;
}

unint64_t sub_1B49B37D8()
{
  result = qword_1EB8A7020;
  if (!qword_1EB8A7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7020);
  }

  return result;
}

uint64_t sub_1B49B382C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_1B49B3858()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t sub_1B49B38A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t sub_1B49B3930@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 33);
  v11 = *(v3 + 40);
  sub_1B497558C(v3 + 48, a3 + 48);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 33) = v10;
  *(a3 + 40) = v11;
}

unint64_t sub_1B49B39C4(uint64_t a1)
{
  *(a1 + 8) = sub_1B49B39F4();
  result = sub_1B49B3A48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49B39F4()
{
  result = qword_1EDC39AA8;
  if (!qword_1EDC39AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AA8);
  }

  return result;
}

unint64_t sub_1B49B3A48()
{
  result = qword_1EDC39AB8;
  if (!qword_1EDC39AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AB8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B49B3AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B49B3B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessIntelligence::SnapshotEngineVersion_optional __swiftcall SnapshotEngineVersion.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B49B3BB4()
{
  result = qword_1EB8A7028;
  if (!qword_1EB8A7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7028);
  }

  return result;
}

uint64_t sub_1B49B3C08()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1 + 1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B3C80(uint64_t a1)
{
  v2 = *v1;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v2 + 1);
  return sub_1B4D18EDC();
}

void AudioSynthesisSettings.voiceSelection.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B49B3D28(v2, v3, v4, v5);
}

void sub_1B49B3D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 AudioSynthesisSettings.init(voiceSelection:intensity:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence28AudioSynthesisVoiceSelectionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1B49B3DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B49B3E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B49B3E90()
{
  result = qword_1EB8A7030;
  if (!qword_1EB8A7030)
  {
    type metadata accessor for WorkoutSplitFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7030);
  }

  return result;
}

unint64_t sub_1B49B3EEC()
{
  result = qword_1EB8A7038;
  if (!qword_1EB8A7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7038);
  }

  return result;
}

uint64_t sub_1B49B3F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return sub_1B49B4018(a1, a2, a3, a4);
}

uint64_t sub_1B49B4018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for WorkoutState(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49B4120, 0, 0);
}

uint64_t sub_1B49B4120()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  sub_1B4992854(v0[4], v2);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1B49B4670(v2, v1);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[9];
  if (v5 == 1)
  {
    sub_1B49933E8(v6);
    sub_1B49933E8(v0[10]);

    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }

  else
  {
    v10 = v0[8];
    v11 = v0[6];
    sub_1B49B46E0(v6, v10);
    if (*(v10 + *(v11 + 20)) == 3)
    {
      v12 = swift_task_alloc();
      v0[11] = v12;
      *v12 = v0;
      v12[1] = sub_1B49B4338;
      v13 = v0[8];
      v15 = v0[2];
      v14 = v0[3];

      return sub_1B4B9685C(v15, v14, v13);
    }

    else
    {
      v16 = swift_task_alloc();
      v0[13] = v16;
      *v16 = v0;
      v16[1] = sub_1B49B44D4;
      v17 = v0[8];
      v18 = v0[5];
      v20 = v0[2];
      v19 = v0[3];

      return sub_1B4B9811C(v20, v19, v17, v18);
    }
  }
}

uint64_t sub_1B49B4338(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49B4438, 0, 0);
}

uint64_t sub_1B49B4438()
{
  sub_1B49AA7C0(v0[8]);
  v1 = v0[12];
  sub_1B49933E8(v0[10]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B49B44D4(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49B45D4, 0, 0);
}

uint64_t sub_1B49B45D4()
{
  sub_1B49AA7C0(v0[8]);
  v1 = v0[14];
  sub_1B49933E8(v0[10]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B49B4670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49B46E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static LocalizedDate.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35[1] = a1;
  v39 = a2;
  v36 = sub_1B4D1796C();
  v35[0] = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D175FC();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4D1793C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v7 = sub_1B4D1794C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4D1CBF0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E6969A68], v7);
  v13(v12 + v9, *MEMORY[0x1E6969A78], v7);
  v13(v12 + 2 * v9, *MEMORY[0x1E6969A48], v7);
  v13(v12 + 3 * v9, *MEMORY[0x1E6969A58], v7);
  v13(v12 + 4 * v9, *MEMORY[0x1E6969A88], v7);
  sub_1B49B56B4(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  (*(v35[0] + 8))(v3, v36);
  v14 = sub_1B4D1759C();
  if (v15 & 1) != 0 || (v16 = v14, v17 = sub_1B4D175AC(), (v18) || (v19 = v17, v20 = sub_1B4D1757C(), (v21) || (v22 = v20, v23 = sub_1B4D1758C(), (v24))
  {
    (*(v37 + 8))(v6, v38);
  }

  else
  {
    v27 = v23;
    v28 = sub_1B4D175BC();
    v30 = v29;
    (*(v37 + 8))(v6, v38);
    if ((v30 & 1) == 0)
    {
      v31 = type metadata accessor for LocalizedDate(0);
      v32 = *(v31 + 36);
      v33 = sub_1B4D179BC();
      v34 = v39;
      (*(*(v33 - 8) + 56))(v39 + v32, 1, 1, v33);
      *v34 = v16;
      v34[1] = v19;
      v34[2] = v22;
      v34[3] = v27;
      v34[4] = v28;
      return (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    }
  }

  v25 = type metadata accessor for LocalizedDate(0);
  return (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
}

uint64_t LocalizedDate.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LocalizedDate(0) + 36);

  return sub_1B4995E7C(v3, a1);
}

uint64_t LocalizedDate.init(year:month:day:hour:minute:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  v8 = a7 + *(type metadata accessor for LocalizedDate(0) + 36);

  return sub_1B4995980(a6, v8);
}

uint64_t LocalizedDate.hash(into:)(uint64_t a1)
{
  v2 = sub_1B4D179BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  MEMORY[0x1B8C7D290](*v1, v7);
  MEMORY[0x1B8C7D290](v1[1]);
  MEMORY[0x1B8C7D290](v1[2]);
  MEMORY[0x1B8C7D290](v1[3]);
  MEMORY[0x1B8C7D290](v1[4]);
  v10 = type metadata accessor for LocalizedDate(0);
  sub_1B4995E7C(v1 + *(v10 + 36), v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    return sub_1B4D18EAC();
  }

  (*(v3 + 32))(v5, v9, v2);
  sub_1B4D18EAC();
  sub_1B49B5E90(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B4D1808C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LocalizedDate.hashValue.getter()
{
  sub_1B4D18E8C();
  LocalizedDate.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B4E8C()
{
  sub_1B4D18E8C();
  LocalizedDate.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B4ED0(uint64_t a1)
{
  sub_1B4D18E8C();
  LocalizedDate.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t LocalizedDate.toDate()@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_1B4D1796C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1B4D175FC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 56))(v11, 1, 1, v2, v14);
  v17 = type metadata accessor for LocalizedDate(0);
  sub_1B4995E7C(v1 + *(v17 + 36), v8);
  sub_1B4D175DC();
  sub_1B4D1793C();
  sub_1B4D178FC();
  (*(v3 + 8))(v5, v2);
  return (*(v13 + 8))(v16, v12);
}

BOOL _s19FitnessIntelligence13LocalizedDateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B4D179BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if (*a1 != *a2 || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v15 = v12;
  v16 = *(type metadata accessor for LocalizedDate(0) + 36);
  v17 = *(v15 + 48);
  sub_1B4995E7C(a1 + v16, v14);
  sub_1B4995E7C(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1B4995E7C(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v17], v4);
      sub_1B49B5E90(&qword_1EB8A7080, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
      v20 = sub_1B4D1816C();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_1B4975024(v14, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      return (v20 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_1B4975024(v14, &qword_1EB8A7078, &qword_1B4D1CCB8);
    return 0;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1B4975024(v14, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  return 1;
}

uint64_t sub_1B49B554C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
    v3 = sub_1B4D1892C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1B4D18E8C();

      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B49B56B4(uint64_t a1)
{
  v2 = sub_1B4D1794C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7088, &unk_1B4D1CCC0);
    v9 = sub_1B4D1892C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1B49B5E90(&qword_1EDC37810, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1B4D1807C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1B49B5E90(&qword_1EDC37808, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1B4D1816C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t type metadata accessor for LocalizedDate(uint64_t a1)
{
  result = qword_1EDC398E0;
  if (!qword_1EDC398E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B49B5A90(uint64_t a1)
{
  sub_1B49B5B18(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B49B5B18(uint64_t a1)
{
  if (!qword_1EDC3CB10)
  {
    sub_1B4D179BC();
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC3CB10);
    }
  }
}

uint64_t sub_1B49B5B70(uint64_t a1)
{
  v2 = sub_1B4D18F8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7058, &qword_1B4D1CCA8);
    v9 = sub_1B4D1892C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1B49B5E90(&qword_1EB8A7060, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v16 = sub_1B4D1807C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1B49B5E90(&qword_1EB8A7068, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_1B4D1816C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B49B5E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FitnessIntelligence::TrainingLoadDay::State_optional __swiftcall TrainingLoadDay.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B49B5FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B49B6064(uint64_t a1)
{
  v2 = sub_1B49B6228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49B60A0(uint64_t a1)
{
  v2 = sub_1B49B6228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadDay.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7090, &qword_1B4D1CCD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49B6228();
  sub_1B4D18EFC();
  v10 = v7;
  sub_1B49B627C();
  sub_1B4D18D0C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B49B6228()
{
  result = qword_1EB8A7098;
  if (!qword_1EB8A7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7098);
  }

  return result;
}

unint64_t sub_1B49B627C()
{
  result = qword_1EB8A70A0;
  if (!qword_1EB8A70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70A0);
  }

  return result;
}

uint64_t TrainingLoadDay.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A70A8, &qword_1B4D1CCD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49B6228();
  sub_1B4D18EEC();
  if (!v2)
  {
    sub_1B49B643C();
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B49B643C()
{
  result = qword_1EB8A70B0;
  if (!qword_1EB8A70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70B0);
  }

  return result;
}

unint64_t sub_1B49B6494()
{
  result = qword_1EB8A70B8;
  if (!qword_1EB8A70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70B8);
  }

  return result;
}

unint64_t sub_1B49B654C()
{
  result = qword_1EB8A70C0;
  if (!qword_1EB8A70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70C0);
  }

  return result;
}

unint64_t sub_1B49B65A4()
{
  result = qword_1EB8A70C8;
  if (!qword_1EB8A70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70C8);
  }

  return result;
}

unint64_t sub_1B49B65FC()
{
  result = qword_1EB8A70D0;
  if (!qword_1EB8A70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70D0);
  }

  return result;
}

unint64_t sub_1B49B6650()
{
  result = qword_1EB8A70D8;
  if (!qword_1EB8A70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70D8);
  }

  return result;
}

uint64_t FitnessContextClient.requestContext(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v4 = sub_1B4D1777C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[10] = v5;
  v3[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B49B6794, 0, 0);
}

uint64_t sub_1B49B6794()
{
  v22 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  *(v0 + 96) = __swift_project_value_buffer(v1, qword_1EDC3CED0);

  v2 = sub_1B4D17F5C();
  v3 = sub_1B4D1873C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 40);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_1B4953000, v2, v3, "Requesting context for %ld requests", v6, 0xCu);
    MEMORY[0x1B8C7DDA0](v6, -1, -1);
  }

  else
  {
  }

  PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0 = _s19FitnessIntelligence0A19ContextQueryPlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0(*(v0 + 40));
  *(v0 + 104) = PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0;
  sub_1B4D1776C();
  *(v0 + 136) = 33;
  v8 = PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0[2];
  if (v8)
  {
    v9 = sub_1B49B6FFC(PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0[2], 0);
    v10 = *(type metadata accessor for FitnessContextCoalescedQueryRequest(0) - 8);
    sub_1B49B717C(&v21, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0, v11);
    v13 = v12;
    v14 = v21;

    sub_1B49B75FC(v14);
    if (v13 == v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *(v0 + 24) = v9;
  *(v0 + 112) = v9;
  v20 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v15 = swift_task_alloc();
  *(v0 + 120) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A70E0, &qword_1B4D1CFD8);
  v17 = sub_1B49B7604();
  v18 = sub_1B49B76E0();
  *v15 = v0;
  v15[1] = sub_1B49B6A68;

  return v20(v0 + 16, v0 + 136, v0 + 24, v16, &type metadata for FitnessContext, v17, v18);
}

uint64_t sub_1B49B6A68()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1B49B6DAC;
  }

  else
  {
    v2 = sub_1B49B6B94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49B6B94()
{
  v1 = v0[2];
  (*(v0[7] + 16))(v0[9], v0[10], v0[6]);

  v2 = sub_1B4D17F5C();
  v3 = sub_1B4D1873C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v6 = v0[9];
  if (v4)
  {
    v21 = v1;
    v8 = v0[7];
    v7 = v0[8];
    v20 = v0[6];
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    v10 = *(v5 + 16);

    *(v9 + 4) = v10;

    *(v9 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v12 = v11;
    v13 = *(v8 + 8);
    v14 = v7;
    v1 = v21;
    v13(v14, v20);
    v13(v6, v20);
    *(v9 + 14) = v12;
    _os_log_impl(&dword_1B4953000, v2, v3, "Fetched context for %ld requests in %fs", v9, 0x16u);
    MEMORY[0x1B8C7DDA0](v9, -1, -1);
  }

  else
  {
    v15 = v0[6];
    v16 = v0[7];
    swift_bridgeObjectRelease_n();

    v13 = *(v16 + 8);
    v13(v6, v15);
  }

  v17 = v0[4];
  v13(v0[10], v0[6]);
  *v17 = v1;

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B49B6DAC()
{
  (*(v0[7] + 8))(v0[10], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B49B6E48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4983F3C;

  return FitnessContextClient.requestContext(_:)(a1, a2);
}

void *sub_1B49B6EF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1B49B6F74(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1B49B6FFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7100, &unk_1B4D1D070);
  v4 = *(type metadata accessor for FitnessContextCoalescedQueryRequest(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B49B70F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7110, &qword_1B4D1D080);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void sub_1B49B717C(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v35 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a3;
    v20 = 0;
    v32 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v35 + 72);
      sub_1B49B7920(v26 + v27 * (v25 | (v20 << 6)), v11, v13);
      sub_1B49B7984(v11, v15, v28);
      sub_1B49B7984(v15, a2, v29);
      if (v22 == v34)
      {
        a4 = a1;
        a1 = v33;
        goto LABEL_23;
      }

      a2 += v27;
      v30 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v31 = v20 + 1;
    }

    else
    {
      v31 = v21;
    }

    v20 = v31 - 1;
    a1 = v33;
LABEL_23:
    v17 = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1B49B73A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B49B74A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B49B7604()
{
  result = qword_1EB8A70E8;
  if (!qword_1EB8A70E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A70E0, &qword_1B4D1CFD8);
    sub_1B49B7688(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70E8);
  }

  return result;
}

unint64_t sub_1B49B7688(double a1)
{
  result = qword_1EB8A70F0;
  if (!qword_1EB8A70F0)
  {
    type metadata accessor for FitnessContextCoalescedQueryRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70F0);
  }

  return result;
}

unint64_t sub_1B49B76E0()
{
  result = qword_1EB8A70F8;
  if (!qword_1EB8A70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70F8);
  }

  return result;
}

uint64_t dispatch thunk of FitnessContextClientProtocol.requestContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4983F3C;

  return v11(a1, a2, a3, a4);
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

uint64_t sub_1B49B7920(uint64_t a1, uint64_t a2, double a3)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  (*(*(Request - 8) + 16))(a2, a1, Request);
  return a2;
}

uint64_t sub_1B49B7984(uint64_t a1, uint64_t a2, double a3)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  (*(*(Request - 8) + 32))(a2, a1, Request);
  return a2;
}

uint64_t ConsistentWorkoutTrendFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t ConsistentWorkoutTrendFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000061;
  if (*v0 != 1)
  {
    v1 = 0xD0000000000000C7;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000007FLL;
  }
}

uint64_t sub_1B49B7AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000061;
  v3 = *a1;
  v4 = "very week for the last 4 weeks.";
  if (v3 == 1)
  {
    v5 = 0xD000000000000061;
  }

  else
  {
    v5 = 0xD0000000000000C7;
  }

  if (v3 == 1)
  {
    v6 = "very week for the last 4 weeks.";
  }

  else
  {
    v6 = "the last 4 weeks.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000007FLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "tone> in this workout.";
  }

  if (*a2 != 1)
  {
    v2 = 0xD0000000000000C7;
    v4 = "the last 4 weeks.";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000007FLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "tone> in this workout.";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B49B7B88()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49B7C24(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B49B7CAC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B49B7D50(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000061;
  v3 = "very week for the last 4 weeks.";
  if (*v1 != 1)
  {
    v2 = 0xD0000000000000C7;
    v3 = "the last 4 weeks.";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000007FLL;
    v4 = "tone> in this workout.";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

id ConsistentWorkoutTrendFact.placeholders()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1BE00;
  v3 = sub_1B4D18D5C();
  v5 = v4;
  *(v2 + 32) = 0xD00000000000002ELL;
  *(v2 + 40) = 0x80000001B4D4F1A0;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v2 + 48) = sub_1B4993DFC;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v7 = sub_1B4D18D5C();
  v9 = v8;
  *(v2 + 80) = 0xD000000000000020;
  *(v2 + 88) = 0x80000001B4D4F1D0;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v2 + 96) = sub_1B4994004;
  *(v2 + 104) = v10;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  [v1 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v12 = result;
    v13 = sub_1B4D1818C();
    v15 = v14;

    strcpy((v2 + 128), "activity_type");
    *(v2 + 142) = -4864;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v2 + 144) = sub_1B4994004;
    *(v2 + 152) = v16;
    *(v2 + 160) = 0;
    *(v2 + 168) = 0;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ConsistentWorkoutTrendFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = 2 * (v2 > 2);
  if (v2 >= 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  if (*(v1 + 16) >= 2)
  {
    v4 = v3;
  }

  *a1 = v4;
}

unint64_t sub_1B49B8000()
{
  result = qword_1EB8A7118;
  if (!qword_1EB8A7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7118);
  }

  return result;
}

unint64_t sub_1B49B8058()
{
  result = qword_1EB8A7120;
  if (!qword_1EB8A7120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7128, &qword_1B4D1D128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7120);
  }

  return result;
}

unint64_t sub_1B49B80C0()
{
  result = qword_1EB8A7130;
  if (!qword_1EB8A7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7130);
  }

  return result;
}

unint64_t sub_1B49B8118()
{
  result = qword_1EB8A7138;
  if (!qword_1EB8A7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7138);
  }

  return result;
}

unint64_t sub_1B49B816C(uint64_t a1)
{
  result = sub_1B49B8194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49B8194()
{
  result = qword_1EB8A7140;
  if (!qword_1EB8A7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7140);
  }

  return result;
}

uint64_t WorkoutMilestonePropertyValue.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v60 - v5;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v7 = *(v6 - 8);
  v69 = v6;
  v70 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v77 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v66 = (&v60 - v10);
  v76 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v11 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v60 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  v19 = type metadata accessor for WorkoutMilestoneEntry(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = a1[1];
  v61 = *a1;
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v75 = v11;
  v63 = a1;
  if (v26)
  {
    v78 = MEMORY[0x1E69E7CC0];
    v72 = v26;
    v74 = v25;
    sub_1B4BCF01C(0, v26, 0);
    v28 = 0;
    v27 = v78;
    v29 = v74;
    v73 = v74 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (1)
    {
      if (v28 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1B49BA4E4(v73 + *(v11 + 72) * v28, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      sub_1B49BA4E4(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      WorkoutMilestoneEntry.init(_:)(v15, v24);
      if (v2)
      {
        break;
      }

      sub_1B49BA54C(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      v78 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v32 = v27;
      if (v31 >= v30 >> 1)
      {
        sub_1B4BCF01C((v30 > 1), v31 + 1, 1);
        v32 = v78;
      }

      ++v28;
      *(v32 + 16) = v31 + 1;
      sub_1B49BA610(v24, v32 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v31, type metadata accessor for WorkoutMilestoneEntry);
      v27 = v32;
      v29 = v74;
      v11 = v75;
      if (v72 == v28)
      {
        a1 = v63;
        goto LABEL_10;
      }
    }

    sub_1B49BA54C(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    sub_1B49BA54C(v63, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
  }

  else
  {
LABEL_10:
    v33 = a1[2];
    v34 = *(v33 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v71;
    if (v34)
    {
      v72 = v27;
      v78 = MEMORY[0x1E69E7CC0];
      sub_1B4BCEFFC(0, v34, 0);
      v37 = 0;
      v38 = *(v70 + 80);
      v73 = v33;
      v74 = v33 + ((v38 + 32) & ~v38);
      v35 = v78;
      v39 = (v75 + 48);
      while (v37 < *(v33 + 16))
      {
        v40 = v34;
        v41 = v77;
        sub_1B49BA4E4(v74 + *(v70 + 72) * v37, v77, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        sub_1B4974FBC(v41 + *(v69 + 24), v36, &qword_1EB8A7148, &unk_1B4D25C40);
        v42 = *v39;
        if ((*v39)(v36, 1, v76) == 1)
        {
          v43 = v68;
          *v68 = 0;
          *(v43 + 1) = 0;
          *(v43 + 2) = 0xE000000000000000;
          sub_1B4D17BBC();
          v44 = *(v76 + 28);
          v45 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
          (*(*(v45 - 8) + 56))(&v43[v44], 1, 1, v45);
          if (v42(v36, 1, v76) != 1)
          {
            sub_1B4975024(v36, &qword_1EB8A7148, &unk_1B4D25C40);
          }
        }

        else
        {
          v43 = v68;
          sub_1B49BA610(v36, v68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        }

        v46 = v67;
        WorkoutMilestoneEntry.init(_:)(v43, v67);
        if (v2)
        {
          sub_1B49BA54C(v77, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
          sub_1B49BA54C(v63, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
        }

        v47 = *(v65 + 48);
        v48 = *v77;
        sub_1B49BA54C(v77, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        v49 = v66;
        *v66 = v48;
        v50 = v49 + v47;
        v51 = v49;
        sub_1B49BA610(v46, v50, type metadata accessor for WorkoutMilestoneEntry);
        v78 = v35;
        v53 = *(v35 + 16);
        v52 = *(v35 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B4BCEFFC((v52 > 1), v53 + 1, 1);
          v51 = v66;
          v35 = v78;
        }

        ++v37;
        *(v35 + 16) = v53 + 1;
        sub_1B498B270(v51, v35 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53, &qword_1EB8A7150, &qword_1B4D46FB0);
        v34 = v40;
        v54 = v40 == v37;
        v36 = v71;
        v33 = v73;
        if (v54)
        {
          a1 = v63;
          v27 = v72;
          goto LABEL_25;
        }
      }

LABEL_31:
      __break(1u);
    }

    else
    {
LABEL_25:
      if (*(v35 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6880, &unk_1B4D46FC0);
        v56 = sub_1B4D18AEC();
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC8];
      }

      v78 = v56;

      sub_1B49B9DEC(v57, 1, &v78);
      if (!v2)
      {
        sub_1B49BA54C(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

        v58 = v78;
        v59 = v62;
        *v62 = v61;
        v59[1] = v27;
        v59[2] = v58;
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.init(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_1B4D177CC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4D1778C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8A6A30, &unk_1B4D1FC00);
    sub_1B49BA334();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return sub_1B49BA54C(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v22 = v38;
    *v38 = *a1;
    v33 = type metadata accessor for WorkoutMilestoneEntry(0);
    (*(v17 + 16))(&v22[*(v33 + 20)], v19, v16);
    v23 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0) + 28);
    v34 = a1;
    sub_1B4974FBC(a1 + v23, v7, &qword_1EB8A7158, &unk_1B4D20310);
    v24 = *(v35 + 48);
    if (v24(v7, 1, v8) == 1)
    {
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 4) = 0;
      sub_1B4D17BBC();
      v25 = &v10[*(v8 + 40)];
      *v25 = 0;
      *(v25 + 1) = 0;
      if (v24(v7, 1, v8) != 1)
      {
        sub_1B4975024(v7, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      sub_1B49BA610(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    v26 = *(v10 + 1);
    *&v27 = *v10;
    *(&v27 + 1) = HIDWORD(*v10);
    v28 = v27;
    *&v27 = v26;
    *(&v27 + 1) = SHIDWORD(v26);
    *v12 = v28;
    *(v12 + 1) = v27;
    *(v12 + 4) = *(v10 + 4);
    v29 = v34;
    v30 = v38;
    if (*&v10[*(v8 + 40) + 8])
    {

      v31 = v37;
      sub_1B4D1797C();

      sub_1B49BA54C(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B49BA54C(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v32 = sub_1B4D179BC();
      v31 = v37;
      (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
    }

    sub_1B498B270(v31, &v12[*(v36 + 36)], &qword_1EB8A6C20, &unk_1B4D1FBF0);
    (*(v17 + 8))(v19, v16);
    sub_1B49BA54C(v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    return sub_1B49BA610(v12, &v30[*(v33 + 24)], type metadata accessor for LocalizedDate);
  }
}

uint64_t WorkoutMilestonePropertyValue.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0);
  sub_1B49BA5C8(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49B9098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
  MEMORY[0x1EEE9AC00](v63);
  v62 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v54 - v11;
  v60 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutMilestoneEntry(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v68 = *(v17 - 8);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v20 = *(a3 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  v55 = a1;
  v59 = v14;
  if (v20)
  {
    v70 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF1FC(0, v20, 0);
    v21 = v70;
    v22 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v66 = *(v14 + 72);
    while (1)
    {
      v23 = sub_1B49BA4E4(v22, v16, type metadata accessor for WorkoutMilestoneEntry);
      MEMORY[0x1EEE9AC00](v23);
      *(&v54 - 2) = v16;
      sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      sub_1B4D17DAC();
      if (v4)
      {
        break;
      }

      sub_1B49BA54C(v16, type metadata accessor for WorkoutMilestoneEntry);
      v70 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B4BCF1FC((v24 > 1), v25 + 1, 1);
        v21 = v70;
      }

      *(v21 + 16) = v25 + 1;
      sub_1B49BA610(v19, v21 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      v22 += v66;
      if (!--v20)
      {
        a1 = v55;
        goto LABEL_9;
      }
    }

    sub_1B49BA54C(v16, type metadata accessor for WorkoutMilestoneEntry);
  }

  else
  {
LABEL_9:

    a1[1] = v21;
    v27 = v64;
    v28 = *(v64 + 16);
    if (v28)
    {
      v70 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF1DC(0, v28, 0);
      v68 = v70;
      v66 = v27 + 64;
      result = sub_1B4D188DC();
      v29 = result;
      v30 = 0;
      v69 = *(v27 + 36);
      v56 = v27 + 72;
      v57 = v28;
      while ((v29 & 0x8000000000000000) == 0 && v29 < 1 << *(v27 + 32))
      {
        v33 = v29 >> 6;
        if ((*(v66 + 8 * (v29 >> 6)) & (1 << v29)) == 0)
        {
          goto LABEL_34;
        }

        if (v69 != *(v27 + 36))
        {
          goto LABEL_35;
        }

        v65 = v30;
        v34 = v63;
        v35 = *(v63 + 48);
        v36 = *(v27 + 56);
        v37 = *(*(v27 + 48) + 8 * v29);
        v38 = v61;
        sub_1B49BA4E4(v36 + *(v59 + 72) * v29, &v61[v35], type metadata accessor for WorkoutMilestoneEntry);
        v39 = v5;
        v40 = v62;
        *v62 = v37;
        v41 = v40 + *(v34 + 48);
        v42 = sub_1B49BA610(&v38[v35], v41, type metadata accessor for WorkoutMilestoneEntry);
        MEMORY[0x1EEE9AC00](v42);
        *(&v54 - 2) = v37;
        *(&v54 - 1) = v41;
        sub_1B49BA5C8(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        sub_1B4D17DAC();
        if (v39)
        {
          sub_1B4975024(v40, &qword_1EB8A7188, &unk_1B4D20E20);
        }

        sub_1B4975024(v40, &qword_1EB8A7188, &unk_1B4D20E20);
        v43 = v68;
        v70 = v68;
        v45 = *(v68 + 16);
        v44 = *(v68 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1B4BCF1DC((v44 > 1), v45 + 1, 1);
          v43 = v70;
        }

        *(v43 + 16) = v45 + 1;
        v46 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v68 = v43;
        result = sub_1B49BA610(v67, v43 + v46 + *(v58 + 72) * v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        v27 = v64;
        v31 = 1 << *(v64 + 32);
        if (v29 >= v31)
        {
          goto LABEL_36;
        }

        v47 = *(v66 + 8 * v33);
        if ((v47 & (1 << v29)) == 0)
        {
          goto LABEL_37;
        }

        if (v69 != *(v64 + 36))
        {
          goto LABEL_38;
        }

        v5 = 0;
        v48 = v47 & (-2 << (v29 & 0x3F));
        if (v48)
        {
          v31 = __clz(__rbit64(v48)) | v29 & 0x7FFFFFFFFFFFFFC0;
          v32 = v57;
        }

        else
        {
          v49 = v33 << 6;
          v50 = v33 + 1;
          v32 = v57;
          v51 = (v56 + 8 * v33);
          while (v50 < (v31 + 63) >> 6)
          {
            v53 = *v51++;
            v52 = v53;
            v49 += 64;
            ++v50;
            if (v53)
            {
              result = sub_1B497CD6C(v29, v69, 0);
              v31 = __clz(__rbit64(v52)) + v49;
              goto LABEL_12;
            }
          }

          result = sub_1B497CD6C(v29, v69, 0);
        }

LABEL_12:
        v30 = v65 + 1;
        v29 = v31;
        if (v65 + 1 == v32)
        {
          a1 = v55;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      v68 = MEMORY[0x1E69E7CC0];
LABEL_32:

      a1[2] = v68;
    }
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49B98E4(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = a2;
  v15 = a3;
  sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  result = sub_1B4D17DAC();
  if (!v4)
  {
    v13 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
    sub_1B4975024(&a1[v13], &qword_1EB8A7148, &unk_1B4D25C40);
    sub_1B49BA610(v11, &a1[v13], type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    return (*(v9 + 56))(&a1[v13], 0, 1, v8);
  }

  return result;
}

uint64_t sub_1B49B9A80()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0);
  sub_1B49BA5C8(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49B9B54(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = *a2;
  v8 = type metadata accessor for WorkoutMilestoneEntry(0);
  v9 = sub_1B4D1779C();
  v11 = v10;

  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  v15 = a2 + *(v8 + 24);
  sub_1B49BA5C8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v12 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0) + 28);
  sub_1B4975024(&a1[v12], &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B49BA610(v7, &a1[v12], type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return (*(v5 + 56))(&a1[v12], 0, 1, v4);
}

uint64_t sub_1B49B9D2C(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return sub_1B4D17DAC();
}

void sub_1B49B9DEC(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for WorkoutMilestoneEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v51 - v14);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_22;
  }

  v51 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v53 = *(v13 + 72);
  v55 = a1;
  sub_1B4974FBC(a1 + v17, &v51 - v14, &qword_1EB8A7150, &qword_1B4D46FB0);
  v59 = *v15;
  v18 = v59;
  v52 = v16;
  sub_1B49BA610(v15 + v16, v10, type metadata accessor for WorkoutMilestoneEntry);
  v19 = *a3;
  v20 = sub_1B49EF0B0(v18);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1B498528C(v25, a2 & 1);
    v20 = sub_1B49EF0B0(v18);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v8;
  v31 = v20;
  sub_1B49890E4();
  v20 = v31;
  v8 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v58 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1B49BA54C(v10, type metadata accessor for WorkoutMilestoneEntry);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  *(v32[6] + 8 * v20) = v18;
  v33 = *(v8 + 72);
  sub_1B49BA610(v10, v32[7] + v33 * v20, type metadata accessor for WorkoutMilestoneEntry);
  v34 = v32[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v32[2] = v35;
    v36 = v55;
    if (v54 == 1)
    {
LABEL_22:

      return;
    }

    v37 = v55 + v53 + v17;
    v38 = 1;
    while (v38 < *(v36 + 16))
    {
      sub_1B4974FBC(v37, v15, &qword_1EB8A7150, &qword_1B4D46FB0);
      v59 = *v15;
      v39 = v59;
      sub_1B49BA610(v15 + v52, v10, type metadata accessor for WorkoutMilestoneEntry);
      v40 = *a3;
      v41 = sub_1B49EF0B0(v39);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v24 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v24)
      {
        goto LABEL_23;
      }

      v46 = v42;
      if (v40[3] < v45)
      {
        sub_1B498528C(v45, 1);
        v41 = sub_1B49EF0B0(v39);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v46)
      {
        goto LABEL_9;
      }

      v48 = *a3;
      *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      *(v48[6] + 8 * v41) = v39;
      sub_1B49BA610(v10, v48[7] + v33 * v41, type metadata accessor for WorkoutMilestoneEntry);
      v49 = v48[2];
      v24 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v38;
      v48[2] = v50;
      v37 += v53;
      v36 = v55;
      if (v54 == v38)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

unint64_t sub_1B49BA334()
{
  result = qword_1EB8A7160;
  if (!qword_1EB8A7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7160);
  }

  return result;
}

uint64_t sub_1B49BA4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49BA54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49BA5C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B49BA610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49BA6D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 1) = a2;
  v8 = *(type metadata accessor for WeeklyStatisticsPropertyValue(0, a4, a3, a4) + 32);
  type metadata accessor for StatisticsPropertyValue(255, a4, v9, v10);
  v11 = sub_1B4D1880C();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v8], a3, v11);
}

uint64_t WeeklyStatisticsPropertyValue.init(cacheIndex:measurement:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1B4D1777C();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v53 - v12;
  v13 = sub_1B4D1746C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v17 = *a1;
  v61 = a3;
  v18 = [swift_getObjCClassFromMetadata() baseUnit];
  v63 = v16;
  v64 = a2;
  sub_1B4D1745C();

  *a4 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1B4D18D6C();
  swift_allocObject();
  v20 = sub_1B4D1841C();
  v22 = v21;
  v65 = v17;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v23 = sub_1B4D1796C();
  __swift_project_value_buffer(v23, qword_1EDC3CE48);
  v24 = v62;
  CacheIndex.date(for:)(v10);
  if (v24)
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v26 = v20 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v26 = v20;
    }

    *(v26 + 16) = 0;

    v27 = *(v14 + 8);
    v27(v64, v13);
    return (v27)(v63, v13);
  }

  else
  {
    v56 = *(TupleTypeMetadata2 + 48);
    v62 = 0;
    v29 = sub_1B4D178CC();
    v57 = a4;
    v30 = v29;
    v31 = sub_1B4D1771C();
    v32 = [v30 hk:v31 startOfFitnessWeekBeforeDate:?];
    v55 = v20;
    v33 = v32;

    v34 = v58;
    sub_1B4D1775C();

    v54 = v22;
    v59 = *(v59 + 8);
    v35 = v10;
    v36 = v60;
    (v59)(v35, v60);
    v37 = sub_1B4D1771C();
    v38 = sub_1B4D178CC();
    v39 = _HKCacheIndexFromDate();

    v40 = v54;
    *v54 = v39;
    (v59)(v34, v36);
    v41 = v63;
    (*(v14 + 16))(v40 + v56, v63, v13);
    sub_1B4D184BC();
    v42 = sub_1B498E1E8();
    v43 = sub_1B49BD4DC(v55, &type metadata for CacheIndex, v13, v42);

    v44 = *(v14 + 8);
    v44(v64, v13);
    v44(v41, v13);
    v45 = v57;
    *(v57 + 1) = v43;
    v46 = v61;
    v49 = *(type metadata accessor for WeeklyStatisticsPropertyValue(0, v61, v47, v48) + 32);
    v52 = type metadata accessor for StatisticsPropertyValue(0, v46, v50, v51);
    return (*(*(v52 - 8) + 56))(&v45[v49], 1, 1, v52);
  }
}

uint64_t WeeklyStatisticsPropertyValue.statisticsExcludingEmptyWeeks()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v51 = a2;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for StatisticsPropertyValue(255, v7, a3, a4);
  v9 = sub_1B4D1880C();
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  v52 = v8;
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  result = WeeklyStatisticsPropertyValue.currentMonthStatistics()(a1, v21, v22, v23);
  if (!v5)
  {
    v45 = v17;
    v46 = v7;
    v47 = v11;
    v48 = v20;
    v49 = 0;
    v25 = v52;
    v26 = *(v53 + 48);
    v27 = v26(v14, 1, v52);
    v28 = v50;
    v29 = (v50 + 16);
    if (v27 == 1)
    {
      (*(v50 + 8))(v14, v9);
      return (*(v28 + 16))(v51, v4 + *(a1 + 32), v9);
    }

    else
    {
      v44[0] = *(v53 + 32);
      v44[1] = v53 + 32;
      (v44[0])(v48, v14, v25);
      v30 = v4 + *(a1 + 32);
      v31 = v47;
      (*v29)(v47, v30, v9);
      if (v26(v31, 1, v25) == 1)
      {
        (*(v28 + 8))(v31, v9);
        v32 = v51;
        (v44[0])(v51, v48, v25);
        return (*(v53 + 56))(v32, 0, 1, v25);
      }

      else
      {
        v33 = v53;
        v34 = v45;
        (v44[0])(v45, v31, v25);
        v35 = v51;
        v37 = v48;
        v36 = v49;
        static StatisticsPropertyValue.add(_:_:)(v34, v48, v46, v51);
        if (v36)
        {
          v38 = *(v33 + 8);
          v39 = v34;
          v40 = v52;
          v38(v39, v52);
          return (v38)(v37, v40);
        }

        else
        {
          v41 = *(v33 + 8);
          v42 = v34;
          v43 = v52;
          v41(v42, v52);
          v41(v37, v43);
          return (*(v33 + 56))(v35, 0, 1, v43);
        }
      }
    }
  }

  return result;
}

uint64_t WeeklyStatisticsPropertyValue.currentMonthStatistics()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for StatisticsPropertyValue(255, v5, a3, a4);
  v7 = sub_1B4D1880C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  v11 = *(v4 + 8);
  sub_1B4D1746C();
  sub_1B498E1E8();
  v13[7] = v11;
  (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
  v13[4] = v5;
  sub_1B4D17FEC();

  swift_getWitnessTable();
  sub_1B4D182DC();
  (*(v8 + 8))(v10, v7);
}

uint64_t WeeklyStatisticsPropertyValue.statisticsIncludingEmptyWeeks(within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a1;
  v100 = a3;
  v4 = sub_1B4D1777C();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v80 - v7;
  v94 = sub_1B4D175FC();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v97 = sub_1B4D1746C();
  v99 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v88 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v80 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v101 = v9;
  v25 = type metadata accessor for StatisticsPropertyValue(255, v9, v23, v24);
  v26 = sub_1B4D1880C();
  v98 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  v29 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v80 - v34;
  v36 = v105;
  result = WeeklyStatisticsPropertyValue.statisticsExcludingEmptyWeeks()(a2, v28, v37, v38);
  if (!v36)
  {
    v40 = v98;
    v82 = v19;
    v105 = v35;
    v102 = v32;
    v83 = v22;
    v84 = 0;
    if ((*(v29 + 48))(v28, 1, v25) == 1)
    {
      (*(v40 + 8))(v28, v26);
      return (*(v29 + 56))(v100, 1, 1, v25);
    }

    v81 = v29;
    v41 = *(v29 + 32);
    v98 = v25;
    v41(v105, v28, v25);
    v42 = [swift_getObjCClassFromMetadata() baseUnit];
    v43 = v83;
    sub_1B4D1741C();
    v44 = *(v99 + 16);
    v45 = v82;
    v46 = v97;
    v44(v82, v43, v97);
    v47 = v85;
    v44(v85, v43, v46);
    v48 = v86;
    v44(v86, v43, v46);
    v49 = v87;
    v44(v87, v43, v46);
    v50 = v88;
    v44(v88, v43, v46);
    v51 = v45;
    v52 = v101;
    StatisticsPropertyValue.init(count:total:min:max:sumY2:sumXY:)(1, v51, v47, v48, v49, v50, v101, v102);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4D1796C();
    __swift_project_value_buffer(v53, qword_1EDC3CE48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
    v54 = sub_1B4D1794C();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1B4D1A800;
    (*(v55 + 104))(v57 + v56, *MEMORY[0x1E6969A10], v54);
    sub_1B49B56B4(v57);
    swift_setDeallocating();
    (*(v55 + 8))(v57 + v56, v54);
    swift_deallocClassInstance();
    v58 = v90;
    sub_1B4D174DC();
    v59 = v92;
    sub_1B4D174BC();
    v60 = v89;
    sub_1B4D1787C();

    v61 = v96;
    v62 = *(v95 + 8);
    v62(v59, v96);
    v62(v58, v61);
    v63 = sub_1B4D1754C();
    LOBYTE(v61) = v64;
    result = (*(v91 + 8))(v60, v94);
    v65 = 0;
    if ((v61 & 1) == 0)
    {
      v67 = v99;
      v66 = v100;
      v68 = v98;
      v69 = v102;
      if (!v63 || (v65 = v63 + 1, !__OFADD__(v63, 1)))
      {
LABEL_12:
        v70 = *&v105[*(v68 + 28)];
        v71 = __OFSUB__(v65, v70);
        v72 = v65 - v70;
        if (v71)
        {
          __break(1u);
        }

        else if ((v72 & 0x8000000000000000) == 0)
        {
          v103 = 0;
          v104 = v72;
          MEMORY[0x1EEE9AC00](result);
          *(&v80 - 2) = v52;
          *(&v80 - 1) = v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7198, &qword_1B4D1D1E8);
          sub_1B49BD818();
          v73 = v66;
          v74 = v105;
          v75 = v98;
          v76 = v84;
          sub_1B4D182DC();
          if (v76)
          {
            (*(v67 + 8))(v83, v97);
            v77 = *(v81 + 8);
            v77(v74, v75);
            return (v77)(v69, v75);
          }

          else
          {
            (*(v67 + 8))(v83, v97);
            v78 = v81;
            v79 = *(v81 + 8);
            v79(v74, v75);
            (*(v78 + 56))(v73, 0, 1, v75);
            return (v79)(v69, v75);
          }
        }

        __break(1u);
        return result;
      }

      __break(1u);
    }

    v67 = v99;
    v66 = v100;
    v68 = v98;
    v69 = v102;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B49BBAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v32 = a1;
  v31 = a2;
  v34 = a4;
  v6 = type metadata accessor for StatisticsPropertyValue(255, a3, a3, a5);
  v7 = sub_1B4D1880C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = sub_1B4D1746C();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  (*(v22 + 16))(v13, v31, v19);
  StatisticsPropertyValue.init(measurement:)(v13, a3, v21);
  (*(v8 + 16))(v10, v32, v7);
  if ((*(v14 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v23 = v34;
    (*(v14 + 32))(v34, v21, v6);
    v24 = v23;
  }

  else
  {
    (*(v14 + 32))(v17, v10, v6);
    v25 = v34;
    v26 = v33;
    static StatisticsPropertyValue.add(_:_:)(v17, v21, a3, v34);
    if (v26)
    {
      v27 = *(v14 + 8);
      v27(v17, v6);
      return (v27)(v21, v6);
    }

    v29 = *(v14 + 8);
    v29(v17, v6);
    v29(v21, v6);
    v24 = v25;
  }

  return (*(v14 + 56))(v24, 0, 1, v6);
}

BOOL static WeeklyStatisticsPropertyValue.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for StatisticsPropertyValue(0, a3, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = sub_1B4D1880C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v33 - v18;
  if (*a1 != *a2)
  {
    return 0;
  }

  v36 = v17;
  v37 = v14;
  v39 = v8;
  v40 = v16;
  v35 = v10;
  v38 = v12;
  sub_1B4D1746C();
  sub_1B498E1E8();
  swift_getWitnessTable();
  if ((sub_1B4D1803C() & 1) == 0)
  {
    return 0;
  }

  v34 = a3;
  v22 = *(type metadata accessor for WeeklyStatisticsPropertyValue(0, a3, v20, v21) + 32);
  v23 = *(v40 + 48);
  v24 = v38;
  v25 = *(v38 + 16);
  v25(v19, &a1[v22], v11);
  v25(&v19[v23], &a2[v22], v11);
  v26 = v39;
  v27 = *(v39 + 48);
  if (v27(v19, 1, v7) == 1)
  {
    if (v27(&v19[v23], 1, v7) == 1)
    {
      (*(v24 + 8))(v19, v11);
      return 1;
    }

    goto LABEL_8;
  }

  v25(v37, v19, v11);
  if (v27(&v19[v23], 1, v7) == 1)
  {
    (*(v26 + 8))(v37, v7);
LABEL_8:
    (*(v36 + 8))(v19, v40);
    return 0;
  }

  v29 = v35;
  (*(v26 + 32))(v35, &v19[v23], v7);
  v30 = v37;
  v31 = static StatisticsPropertyValue.== infix(_:_:)(v37, v29, v34);
  v32 = *(v26 + 8);
  v32(v29, v7);
  v32(v30, v7);
  (*(v24 + 8))(v19, v11);
  return (v31 & 1) != 0;
}

uint64_t WeeklyStatisticsPropertyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B8C7D2C0](*v2);
  v4 = *(a2 + 16);
  sub_1B4D1746C();
  sub_1B498E1E8();
  swift_getWitnessTable();
  sub_1B4D1802C();
  type metadata accessor for StatisticsPropertyValue(255, v4, v5, v6);
  sub_1B4D1880C();
  swift_getWitnessTable();
  return sub_1B4D1881C();
}

uint64_t WeeklyStatisticsPropertyValue.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  WeeklyStatisticsPropertyValue.hash(into:)(v3, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49BC394(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  WeeklyStatisticsPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t static WeeklyStatisticsPropertyValue.prepareForReduce(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeeklyStatisticsPropertyValue(255, a2, a3, a4);
  sub_1B4D184BC();
  swift_getWitnessTable();
  return sub_1B4D182EC();
}

uint64_t static WeeklyStatisticsPropertyValue.add(_:_:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v81 = a4;
  v88 = sub_1B4D1796C();
  v7 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a3;
  v79 = type metadata accessor for StatisticsPropertyValue(255, a3, v10, v11);
  v82 = sub_1B4D1880C();
  v85 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v13 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v73 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v73 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v73 - v21;
  v83 = a2;
  v84 = a1;
  v23 = *a1;
  v24 = *a2;
  if (*a2 <= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = *a2;
  }

  v80 = v25;
  v26 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_1B4D178DC();

  v90 = v23;
  v89 = v24;
  v27 = v87;
  v28 = Calendar.isSameMonth(_:_:)(&v90, &v89);
  if (v27)
  {
    return (*(v7 + 8))(v9, v88);
  }

  v30 = v28;
  v31 = v83;
  v76 = v16;
  v77 = v19;
  v78 = v22;
  v87 = v13;
  v32 = v86;
  v33 = (*(v7 + 8))(v9, v88);
  if (v30)
  {
    v34 = v84;
    MEMORY[0x1EEE9AC00](v33);
    v35 = v32;
    v73[-2] = v32;
    sub_1B4D1746C();
    sub_1B498E1E8();

    v36 = sub_1B4D1800C();
    v39 = type metadata accessor for WeeklyStatisticsPropertyValue(0, v32, v37, v38);
    v40 = v85;
    v41 = v78;
    v42 = v82;
    (*(v85 + 16))(v78, &v34[*(v39 + 32)], v82);
    v43 = *(v40 + 32);
  }

  else
  {
    v44 = v31[1];
    v45 = v32;
    sub_1B4D1746C();
    sub_1B498E1E8();
    v90 = v44;
    sub_1B4D17FDC();

    swift_getWitnessTable();
    v46 = sub_1B4D184EC();
    v47 = *(v84 + 1);
    MEMORY[0x1EEE9AC00](v46);
    v73[-2] = v32;
    v73[-1] = v48;
    v49 = v48;
    swift_bridgeObjectRetain_n();
    v50 = sub_1B4D17FFC();
    MEMORY[0x1EEE9AC00](v50);
    v73[-2] = v32;

    v88 = sub_1B4D1800C();
    v73[1] = v73;
    v90 = v47;
    MEMORY[0x1EEE9AC00](v88);
    v73[-2] = v32;
    v73[-1] = v49;
    MEMORY[0x1EEE9AC00](v51);
    v73[-4] = v32;
    v73[-3] = sub_1B49BD958;
    v73[-2] = v52;
    sub_1B4D1801C();
    swift_getWitnessTable();
    v53 = v79;
    v54 = sub_1B4D182BC();
    v74 = 0;
    v75 = v54;

    v42 = v82;
    sub_1B4D18D6C();
    v55 = v85;
    v56 = *(v85 + 72);
    swift_allocObject();
    v57 = sub_1B4D1841C();
    v59 = v58;
    v62 = type metadata accessor for WeeklyStatisticsPropertyValue(0, v45, v60, v61);
    v63 = *(v55 + 16);
    v63(v59, &v84[*(v62 + 32)], v42);
    v63(v59 + v56, v83 + *(v62 + 32), v42);
    v64 = sub_1B4D184BC();
    v90 = v57;
    MEMORY[0x1EEE9AC00](v64);
    v73[-2] = v45;
    swift_getWitnessTable();
    v65 = v74;
    sub_1B4D182BC();
    v84 = v65;

    v66 = sub_1B4D1842C();

    v90 = v66;
    v67 = v76;
    v68 = (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
    MEMORY[0x1EEE9AC00](v68);
    v73[-2] = v86;
    sub_1B4D184BC();
    swift_getWitnessTable();
    v69 = v77;
    v70 = v84;
    sub_1B4D182DC();
    if (v70)
    {
      (*(v85 + 8))(v67, v42);
    }

    v71 = v85;
    (*(v85 + 8))(v67, v42);

    v43 = *(v71 + 32);
    v41 = v78;
    v43(v78, v69, v42);
    v35 = v86;
    v36 = v88;
  }

  v90 = v80;
  v72 = v87;
  v43(v87, v41, v42);
  return sub_1B49BA6D4(&v90, v36, v72, v35, v81);
}

uint64_t sub_1B49BCD30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B4D1746C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = (v15 - v11);
  *(v15 - v11) = *a1;
  (*(*(v7 - 8) + 16))(v15 + *(v13 + 48) - v11, a2, v7, v10);
  v15[0] = *v12;
  v15[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
  sub_1B49BDB78();
  sub_1B49BDBDC();
  LOBYTE(a3) = sub_1B4D1830C();
  (*(v9 + 8))(v12, TupleTypeMetadata2);
  return a3 & 1;
}

uint64_t sub_1B49BCEC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D1746C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v19[0] = *a1;
  v19[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
  sub_1B49BDB78();
  sub_1B49BDBDC();
  if (sub_1B4D1830C())
  {
    v16 = 1;
  }

  else
  {
    (*(v11 + 16))(v13, a2, v10);
    StatisticsPropertyValue.init(measurement:)(v13, a4, a5);
    v16 = 0;
  }

  v17 = type metadata accessor for StatisticsPropertyValue(0, a4, v14, v15);
  return (*(*(v17 - 8) + 56))(a5, v16, 1, v17);
}

uint64_t sub_1B49BD054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v21 = a2;
  v8 = type metadata accessor for StatisticsPropertyValue(255, a3, a3, a5);
  v9 = sub_1B4D1880C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    (*(v13 + 16))(a4, v21, v8);
  }

  else
  {
    (*(v13 + 32))(v17, v12, v8);
    v18 = v22;
    static StatisticsPropertyValue.add(_:_:)(v17, v21, a3, a4);
    if (v18)
    {
      return (*(v13 + 8))(v17, v8);
    }

    (*(v13 + 8))(v17, v8);
  }

  return (*(v13 + 56))(a4, 0, 1, v8);
}

unint64_t sub_1B49BD2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4D1807C();

  return sub_1B49BD354(a1, v6, a2, a3);
}

unint64_t sub_1B49BD354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1B4D1816C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1B49BD4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B4D1847C())
  {
    sub_1B4D18AFC();
    v13 = sub_1B4D18AEC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B4D1847C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B4D1845C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B4D1898C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B49BD2F8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_1B49BD818()
{
  result = qword_1EB8A71A0;
  if (!qword_1EB8A71A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7198, &qword_1B4D1D1E8);
    sub_1B49BD8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71A0);
  }

  return result;
}

unint64_t sub_1B49BD8A4()
{
  result = qword_1EB8A71A8;
  if (!qword_1EB8A71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71A8);
  }

  return result;
}

uint64_t sub_1B49BD960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for StatisticsPropertyValue(255, *(v4 + 16), a3, a4);
  v7 = sub_1B4D1880C();
  return (*(*(v7 - 8) + 16))(a2, a1, v7);
}

uint64_t sub_1B49BDA18(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B49BDA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1B4D1746C();
  sub_1B498E1E8();
  result = sub_1B4D1801C();
  if (v5 <= 0x3F)
  {
    type metadata accessor for StatisticsPropertyValue(255, v1, v3, v4);
    result = sub_1B4D1880C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B49BDB78()
{
  result = qword_1EB8A71B8;
  if (!qword_1EB8A71B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71B8);
  }

  return result;
}

unint64_t sub_1B49BDBDC()
{
  result = qword_1EDC3CE28;
  if (!qword_1EDC3CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CE28);
  }

  return result;
}

uint64_t sub_1B49BDC68(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  __swift_allocate_value_buffer(v4, a3);
  __swift_project_value_buffer(v4, a3);
  v5 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  return sub_1B4D1741C();
}

uint64_t sub_1B49BDD40(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  __swift_allocate_value_buffer(v4, a3);
  __swift_project_value_buffer(v4, a3);
  v5 = [objc_opt_self() milesPerHour];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  return sub_1B4D1741C();
}

uint64_t AverageWorkoutPaceFact.paceDeltaFromBaseline.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AverageWorkoutPaceFact(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AverageWorkoutPaceFact(uint64_t a1)
{
  result = qword_1EB8A7210;
  if (!qword_1EB8A7210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AverageWorkoutPaceFact.speedDeltaFromBaseline.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AverageWorkoutPaceFact(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AverageWorkoutPaceFact.init(activityType:paceDeltaFromBaseline:speedDeltaFromBaseline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for AverageWorkoutPaceFact(0);
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = *(v7 + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t static AverageWorkoutPaceFact.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = v2;
    v9 = v3;
    [v5 coordinate];
    v11 = v10;
    [v7 coordinate];
    if (v11 != v12)
    {

      return 0;
    }

    [v5 coordinate];
    v14 = v13;
    [v7 coordinate];
    v16 = v15;

    if (v14 != v16)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  type metadata accessor for AverageWorkoutPaceFact(0);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  if (sub_1B4D1816C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
    sub_1B49B0578(&qword_1EB8A71D0, &qword_1EB8A71C0, &unk_1B4D40CF0, MEMORY[0x1E6968090]);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

unint64_t sub_1B49BE254()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B49BE2AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B49BF05C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B49BE2D4(uint64_t a1)
{
  v2 = sub_1B49BE600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49BE310(uint64_t a1)
{
  v2 = sub_1B49BE600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AverageWorkoutPaceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71D8, &unk_1B4D1D2D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49BE600();
  sub_1B4D18EFC();
  v15 = *v3;
  v14 = 0;
  v9 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    v11 = type metadata accessor for AverageWorkoutPaceFact(0);
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
    sub_1B49B0578(&qword_1EB8A71F0, &qword_1EB8A71C0, &unk_1B4D40CF0, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B49BE600()
{
  result = qword_1EB8A71E0;
  if (!qword_1EB8A71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71E0);
  }

  return result;
}

void AverageWorkoutPaceFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71F8, &qword_1B4D1D2E0);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for AverageWorkoutPaceFact(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B49BE600();
  v30 = v11;
  v16 = v31;
  sub_1B4D18EEC();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v31 = v12;
    v22 = v4;
    v23 = v14;
    v17 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v35 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    v18 = v28;
    sub_1B4D18C0C();
    v19 = v23;
    *v23 = v36;
    v34 = 1;
    sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968098]);
    sub_1B4D18C0C();
    (*(v26 + 32))(&v19[*(v31 + 20)], v7, v5);
    v33 = 2;
    sub_1B49B0578(&qword_1EB8A7208, &qword_1EB8A71C0, &unk_1B4D40CF0, MEMORY[0x1E6968098]);
    v20 = v22;
    sub_1B4D18C0C();
    (*(v29 + 8))(v30, v18);
    v21 = v23;
    (*(v24 + 32))(&v23[*(v31 + 24)], v20, v17);
    sub_1B49BEB50(v21, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_1B49BEBB4(v21);
  }
}

uint64_t sub_1B49BEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutPaceFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49BEBB4(uint64_t a1)
{
  v2 = type metadata accessor for AverageWorkoutPaceFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49BEC40(void **a1, void **a2, uint64_t a3)
{
  if (!sub_1B49B0864(*a1, *a2))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  sub_1B49B0578(&qword_1EB8A71D0, &qword_1EB8A71C0, &unk_1B4D40CF0, MEMORY[0x1E6968090]);
  return sub_1B4D1816C() & 1;
}

void sub_1B49BED90(uint64_t a1)
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v1 <= 0x3F)
  {
    sub_1B49BEE84(319);
    if (v2 <= 0x3F)
    {
      sub_1B49BEEDC(319, &qword_1EB8A7228, &qword_1EB8A7230, 0x1E696B078, MEMORY[0x1E6968070]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B49BEE84(uint64_t a1)
{
  if (!qword_1EB8A7220)
  {
    type metadata accessor for UnitPace();
    v1 = sub_1B4D1746C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8A7220);
    }
  }
}

void sub_1B49BEEDC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B498AFB8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B49BEF58()
{
  result = qword_1EB8A7238;
  if (!qword_1EB8A7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7238);
  }

  return result;
}

unint64_t sub_1B49BEFB0()
{
  result = qword_1EB8A7240;
  if (!qword_1EB8A7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7240);
  }

  return result;
}

unint64_t sub_1B49BF008()
{
  result = qword_1EB8A7248;
  if (!qword_1EB8A7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7248);
  }

  return result;
}

uint64_t sub_1B49BF05C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D4F220 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4D4F240 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B49BF180(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B49BF1D0(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B49BF228(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B49BF270()
{
  result = qword_1EB8A7250;
  if (!qword_1EB8A7250)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7250);
  }

  return result;
}

unint64_t sub_1B49BF2CC()
{
  result = qword_1EB8A7258;
  if (!qword_1EB8A7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7258);
  }

  return result;
}

uint64_t sub_1B49BF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49BF3C4, 0, 0);
}

uint64_t sub_1B49BF3C4()
{
  v1 = v0[6];
  sub_1B49BFE58(v0[4], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B49BF4D4;
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1B49DB7C8(v7, v6, v4, v5);
}

uint64_t sub_1B49BF4D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  sub_1B4975024(*(v4 + 48), &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49BF654, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1B49BF654()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1B49BF6B8(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor(0);
  v72 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v60 - v8;
  v9 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D1777C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFE58(a1, v18, type metadata accessor for WorkoutState);
  v19 = sub_1B4CAC70C(v18);
  v20 = *(v19 + 2);
  v21 = 32;
  do
  {
    if (!v20)
    {

      sub_1B49BFEC0(v18, type metadata accessor for WorkoutState);
      return sub_1B4C952F4(MEMORY[0x1E69E7CC0]);
    }

    v22 = *&v19[v21];
    v21 += 8;
    --v20;
  }

  while (v22 != 3);
  v67 = v4;

  v23 = *(v16 + 36);
  v69 = v13;
  v24 = *(v13 + 16);
  v61 = v24;
  v24(v15, &v18[v23], v12);
  v24(v11, v15, v12);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B4D1A800;
  v26 = *&v18[*(v16 + 24)];
  sub_1B49BFEC0(v18, type metadata accessor for WorkoutState);
  v27 = [v26 effectiveTypeIdentifier];

  *(v25 + 32) = v27;
  v28 = *(v9 + 20);
  v29 = MEMORY[0x1E69E7CC0];
  v30 = v9;
  v31 = v12;
  v32 = v15;
  v33 = v11;
  v34 = &v11[v28];
  *v34 = MEMORY[0x1E69E7CC0];
  *(v34 + 1) = v29;
  *(v34 + 2) = v29;
  *(v34 + 3) = v25;
  *(v34 + 4) = v29;
  *(v34 + 5) = v29;
  *(v33 + *(v30 + 24)) = &unk_1F2CB8998;
  v65 = v30;
  *(v33 + *(v30 + 28)) = &unk_1F2CB89C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7260, &qword_1B4D1D588);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7268, &qword_1B4D1D590);
  v36 = *(*(v35 - 8) + 72);
  v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B4D1AA70;
  v63 = v38;
  v64 = v35;
  v39 = (v38 + v37);
  v40 = *(v35 + 48);
  *v39 = 0;
  sub_1B49BFE58(v33, &v39[v40], type metadata accessor for WorkoutPropertiesQuery);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v41 = &v39[v36];
  *v41 = 1;
  v42 = v73;
  v66 = v32;
  v70 = v31;
  v61(v73, v32, v31);
  swift_storeEnumTagMultiPayload();
  v43 = v72;
  (*(v72 + 56))(v42, 0, 1, v2);
  v44 = v42;
  v45 = v71;
  sub_1B49BFDE8(v44, v71);
  v46 = *(v43 + 48);
  v47 = v46(v45, 1, v2);
  v68 = v33;
  if (v47 == 1)
  {
    v48 = v67;
    sub_1B49BFE58(v33, v67, type metadata accessor for DateRangeDescriptor);
    if (v46(v45, 1, v2) != 1)
    {
      sub_1B4975024(v45, &qword_1EB8A67A8, &qword_1B4D1E060);
    }
  }

  else
  {
    v48 = v67;
    sub_1B4993450(v45, v67);
  }

  v50 = &v41[*(v64 + 48)];
  v52 = *v34;
  v51 = *(v34 + 1);
  v53 = *(v34 + 2);
  v54 = *(v34 + 3);
  v55 = *(v34 + 4);
  v56 = *(v34 + 5);
  sub_1B49BFE58(v48, v50, type metadata accessor for DateRangeDescriptor);

  sub_1B49BFEC0(v48, type metadata accessor for DateRangeDescriptor);
  v57 = v65;
  v58 = (v50 + *(v65 + 20));
  *v58 = v52;
  v58[1] = v51;
  v58[2] = v53;
  v58[3] = v54;
  v58[4] = v55;
  v58[5] = v56;
  *(v50 + *(v57 + 24)) = &unk_1F2CB8998;
  *(v50 + *(v57 + 28)) = &unk_1F2CB89C0;
  sub_1B4975024(v73, &qword_1EB8A67A8, &qword_1B4D1E060);
  swift_storeEnumTagMultiPayload();
  v59 = sub_1B4C952F4(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B49BFEC0(v68, type metadata accessor for WorkoutPropertiesQuery);
  (*(v69 + 8))(v66, v70);
  return v59;
}

uint64_t sub_1B49BFDE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49BFE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49BFEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CurrentDayFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B49BFF94()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49BFFF0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C0038@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t static CurrentDayFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C016C;

  return sub_1B49C0448(a1, a3);
}
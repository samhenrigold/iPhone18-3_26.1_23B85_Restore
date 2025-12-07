uint64_t type metadata accessor for DistanceSampleIntervalRecord(uint64_t a1)
{
  result = qword_1EDC388D0;
  if (!qword_1EDC388D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DistanceSampleIntervalRecord.< infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  DistanceSampleIntervalRecord.pace.getter(&v10 - v5);
  DistanceSampleIntervalRecord.pace.getter(v3);
  sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
  v7 = sub_1B4D180FC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t DistanceSampleIntervalRecord.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1B8C7D2C0](*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1B8C7D2C0](*&v3);
  type metadata accessor for DistanceSampleIntervalRecord(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = MEMORY[0x1E6968080];
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  sub_1B4D1808C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, v4);
  return sub_1B4D1808C();
}

uint64_t DistanceSampleIntervalRecord.hashValue.getter()
{
  sub_1B4D18E8C();
  DistanceSampleIntervalRecord.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C79E64()
{
  sub_1B4D18E8C();
  DistanceSampleIntervalRecord.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C79EA8(uint64_t a1)
{
  sub_1B4D18E8C();
  DistanceSampleIntervalRecord.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C79EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  DistanceSampleIntervalRecord.pace.getter(&v10 - v5);
  DistanceSampleIntervalRecord.pace.getter(v3);
  sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
  v7 = sub_1B4D180FC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

BOOL sub_1B4C7A058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  DistanceSampleIntervalRecord.pace.getter(&v10 - v5);
  DistanceSampleIntervalRecord.pace.getter(v3);
  sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
  v7 = sub_1B4D180FC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

BOOL sub_1B4C7A1D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  DistanceSampleIntervalRecord.pace.getter(&v10 - v5);
  DistanceSampleIntervalRecord.pace.getter(v3);
  sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
  v7 = sub_1B4D180FC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t sub_1B4C7A348()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  DistanceSampleIntervalRecord.pace.getter(&v10 - v5);
  DistanceSampleIntervalRecord.pace.getter(v3);
  sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
  v7 = sub_1B4D180FC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t BestWorkoutMeasurementEntry.measurement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C7A5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1B4D1746C();
  v12 = *(type metadata accessor for BestWorkoutMeasurementEntry(0, a3, v10, v11) + 32);
  WitnessTable = swift_getWitnessTable();
  return a5(a1 + v12, a2 + v12, v9, WitnessTable) & 1;
}

uint64_t BestWorkoutMeasurementEntry.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1B4D177CC();
  sub_1B4C7B144(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B4D1808C();
  LocalizedDate.hash(into:)(a1);
  sub_1B4D1746C();
  swift_getWitnessTable();
  return sub_1B4D1808C();
}

uint64_t BestWorkoutRecordEntry.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1B4D177CC();
  sub_1B4C7B144(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B4D1808C();
  LocalizedDate.hash(into:)(a1);
  return sub_1B4D1808C();
}

uint64_t sub_1B4C7A928(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_1B4D18E8C();
  a2(v5, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C7A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_1B4D18E8C();
  a4(v7, a2);
  return sub_1B4D18EDC();
}

double WorkoutBestMetricPropertyValue.topEntries.getter()
{
  sub_1B4959850();

  return result;
}

uint64_t WorkoutBestMetricPropertyValue.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D184CC();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C7AAC4(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  WorkoutBestMetricPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C7AB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-v11];
  v13 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v17, a1, a2, v15);
  (*(a3 + 120))(a2, a3);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v19 = (*(a3 + 56))(a2, a3);
    v20 = [v19 effectiveTypeIdentifier];

    if (v20 == 13)
    {
      MEMORY[0x1EEE9AC00](v21);
      v22 = &v26[-32];
      *&v26[-16] = v12;
      v23 = &unk_1F2CBAA40;
      v24 = sub_1B4C7CFE4;
    }

    else
    {
      if (v20 != 37 && v20 != 71)
      {
        (*(v10 + 8))(v12, v9);
        goto LABEL_3;
      }

      MEMORY[0x1EEE9AC00](v21);
      v22 = &v26[-32];
      *&v26[-16] = v12;
      v23 = &unk_1F2CBAA70;
      v24 = sub_1B4C7D030;
    }

    v18 = sub_1B499E6A4(v24, v22, v23);
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  sub_1B4BD9624(v8);
LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
LABEL_10:
  (*(v13 + 8))(v17, a2);
  return v18;
}

uint64_t _s19FitnessIntelligence28DistanceSampleIntervalRecordV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  type metadata accessor for DistanceSampleIntervalRecord(0);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  return sub_1B4D1816C() & 1;
}

unint64_t sub_1B4C7B000()
{
  result = qword_1EDC39728;
  if (!qword_1EDC39728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39728);
  }

  return result;
}

uint64_t sub_1B4C7B098(void *a1)
{
  a1[1] = sub_1B4C7B144(&qword_1EDC388E0, type metadata accessor for DistanceSampleIntervalRecord, &protocol conformance descriptor for DistanceSampleIntervalRecord);
  a1[2] = sub_1B4C7B144(&qword_1EDC388F0, type metadata accessor for DistanceSampleIntervalRecord, &protocol conformance descriptor for DistanceSampleIntervalRecord);
  result = sub_1B4C7B144(qword_1EDC388F8, type metadata accessor for DistanceSampleIntervalRecord, &protocol conformance descriptor for DistanceSampleIntervalRecord);
  a1[3] = result;
  return result;
}

uint64_t sub_1B4C7B144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4C7B20C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1B4C7B26C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4C7B2A8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4C7B2E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1B4C7B398(uint64_t a1)
{
  sub_1B49E4D9C(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058);
  if (v1 <= 0x3F)
  {
    sub_1B49E4D9C(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C7B45C(uint64_t a1)
{
  result = sub_1B4D177CC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalizedDate(319);
    if (v3 <= 0x3F)
    {
      result = sub_1B4D1746C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4C7B52C(uint64_t a1)
{
  result = sub_1B4D177CC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalizedDate(319);
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4C7B5CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1B4D177CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_1B4D179BC() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a3 + 16) - 8);
  if (v12 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(v13 + 84);
  if (v15 > v14)
  {
    v14 = *(v13 + 84);
  }

  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v13 + 80);
  v19 = *(v13 + 64);
  if (v11)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v16 | 7;
  v22 = (v16 | 7) + *(v7 + 64);
  v23 = v20 + ((v16 + 40) & ~v16);
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v24 = ((v23 + v18 + (v22 & ~v21)) & ~v18) + v19;
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v27 < 2)
    {
LABEL_35:
      if (v14)
      {
LABEL_36:
        if (v8 == v14)
        {
          v31 = *(v7 + 48);

          return v31(a1, v8, v6);
        }

        else
        {
          v33 = (a1 + v22) & ~v21;
          if (v12 == v14)
          {
            v34 = (*(v10 + 48))((v16 + ((((((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16);
            if (v34 >= 2)
            {
              return v34 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v35 = *(*(*(a3 + 16) - 8) + 48);

            return v35((v33 + v18 + v23) & ~v18, v15);
          }
        }
      }

      return 0;
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_35;
  }

LABEL_22:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = v24;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v14 + (v30 | v28) + 1;
}

void sub_1B4C7B93C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1B4D177CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_1B4D179BC();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a4 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  v20 = *(v13 + 80);
  v21 = *(*(v11 - 8) + 64);
  v22 = *(v18 + 80);
  v23 = *(v18 + 64);
  if (v19 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = *(v18 + 84);
  }

  v25 = (v20 | 7) + *(v9 + 64);
  if (!v14)
  {
    ++v21;
  }

  v26 = v21 + ((v20 + 40) & ~v20);
  v27 = ((v26 + v22 + (v25 & ~(v20 | 7))) & ~v22) + v23;
  if (a3 <= v24)
  {
    goto LABEL_23;
  }

  if (v27 <= 3)
  {
    v28 = ((a3 - v24 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v28))
    {
      v12 = 4;
      if (v24 >= a2)
      {
        goto LABEL_33;
      }

LABEL_24:
      v30 = ~v24 + a2;
      if (v27 >= 4)
      {
        bzero(a1, ((v26 + v22 + (v25 & ~(v20 | 7))) & ~v22) + v23);
        *a1 = v30;
        v31 = 1;
        if (v12 > 1)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v32 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v32;
            if (v12 > 1)
            {
LABEL_57:
              if (v12 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v12 > 1)
            {
              goto LABEL_57;
            }
          }

LABEL_54:
          if (v12)
          {
            a1[v27] = v31;
          }

          return;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v12 > 1)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v12 = v29;
    }

    else
    {
      v12 = 0;
    }

LABEL_23:
    if (v24 >= a2)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v12 = 1;
  if (v24 < a2)
  {
    goto LABEL_24;
  }

LABEL_33:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v27] = 0;
  }

  else if (v12)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v10 == v24)
  {
    v33 = *(v9 + 56);
    v34 = a1;
    v35 = a2;
    v36 = v10;
    v17 = v8;
LABEL_49:

    v33(v34, v35, v36, v17);
    return;
  }

  v37 = &a1[v25] & ~(v20 | 7);
  if (v15 != v24)
  {
    v33 = *(v18 + 56);
    v34 = ((v37 + v22 + v26) & ~v22);
    v35 = a2;
    v36 = v19;
    goto LABEL_49;
  }

  v38 = *(v13 + 56);

  v38((v20 + ((((((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v20, (a2 + 1));
}

uint64_t sub_1B4C7BD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B4C7BE94()
{
  result = qword_1EB8AD8C8;
  if (!qword_1EB8AD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD8C8);
  }

  return result;
}

unint64_t sub_1B4C7BEEC()
{
  result = qword_1EB8AD8D0;
  if (!qword_1EB8AD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD8D0);
  }

  return result;
}

unint64_t sub_1B4C7BF44()
{
  result = qword_1EB8AD8D8;
  if (!qword_1EB8AD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD8D8);
  }

  return result;
}

unint64_t sub_1B4C7BF9C()
{
  result = qword_1EB8AD8E0;
  if (!qword_1EB8AD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD8E0);
  }

  return result;
}

unint64_t sub_1B4C7BFF4()
{
  result = qword_1EB8AD8E8;
  if (!qword_1EB8AD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD8E8);
  }

  return result;
}

unint64_t sub_1B4C7C04C()
{
  result = qword_1EB8AD8F0;
  if (!qword_1EB8AD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD8F0);
  }

  return result;
}

unint64_t sub_1B4C7C0A4()
{
  result = qword_1EB8AD8F8;
  if (!qword_1EB8AD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD8F8);
  }

  return result;
}

unint64_t sub_1B4C7C0FC()
{
  result = qword_1EB8AD900;
  if (!qword_1EB8AD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD900);
  }

  return result;
}

unint64_t sub_1B4C7C154()
{
  result = qword_1EB8AD908;
  if (!qword_1EB8AD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD908);
  }

  return result;
}

unint64_t sub_1B4C7C1AC()
{
  result = qword_1EB8AD910;
  if (!qword_1EB8AD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD910);
  }

  return result;
}

unint64_t sub_1B4C7C204()
{
  result = qword_1EB8AD918;
  if (!qword_1EB8AD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD918);
  }

  return result;
}

unint64_t sub_1B4C7C25C()
{
  result = qword_1EB8AD920;
  if (!qword_1EB8AD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD920);
  }

  return result;
}

unint64_t sub_1B4C7C2B4()
{
  result = qword_1EB8AD928;
  if (!qword_1EB8AD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD928);
  }

  return result;
}

unint64_t sub_1B4C7C30C()
{
  result = qword_1EB8AD930;
  if (!qword_1EB8AD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD930);
  }

  return result;
}

unint64_t sub_1B4C7C364()
{
  result = qword_1EB8AD938;
  if (!qword_1EB8AD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD938);
  }

  return result;
}

unint64_t sub_1B4C7C3BC()
{
  result = qword_1EB8AD940;
  if (!qword_1EB8AD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD940);
  }

  return result;
}

unint64_t sub_1B4C7C414()
{
  result = qword_1EB8AD948;
  if (!qword_1EB8AD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD948);
  }

  return result;
}

unint64_t sub_1B4C7C46C()
{
  result = qword_1EB8AD950;
  if (!qword_1EB8AD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD950);
  }

  return result;
}

unint64_t sub_1B4C7C4C4()
{
  result = qword_1EB8AD958;
  if (!qword_1EB8AD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD958);
  }

  return result;
}

unint64_t sub_1B4C7C51C()
{
  result = qword_1EB8AD960;
  if (!qword_1EB8AD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD960);
  }

  return result;
}

unint64_t sub_1B4C7C574()
{
  result = qword_1EB8AD968;
  if (!qword_1EB8AD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD968);
  }

  return result;
}

unint64_t sub_1B4C7C5CC()
{
  result = qword_1EB8AD970;
  if (!qword_1EB8AD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD970);
  }

  return result;
}

unint64_t sub_1B4C7C624()
{
  result = qword_1EB8AD978;
  if (!qword_1EB8AD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD978);
  }

  return result;
}

unint64_t sub_1B4C7C67C()
{
  result = qword_1EB8AD980;
  if (!qword_1EB8AD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD980);
  }

  return result;
}

unint64_t sub_1B4C7C6D4()
{
  result = qword_1EB8AD988;
  if (!qword_1EB8AD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD988);
  }

  return result;
}

unint64_t sub_1B4C7C72C()
{
  result = qword_1EB8AD990;
  if (!qword_1EB8AD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD990);
  }

  return result;
}

unint64_t sub_1B4C7C784()
{
  result = qword_1EB8AD998;
  if (!qword_1EB8AD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD998);
  }

  return result;
}

unint64_t sub_1B4C7C7DC()
{
  result = qword_1EB8AD9A0;
  if (!qword_1EB8AD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9A0);
  }

  return result;
}

unint64_t sub_1B4C7C834()
{
  result = qword_1EB8AD9A8;
  if (!qword_1EB8AD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9A8);
  }

  return result;
}

unint64_t sub_1B4C7C88C()
{
  result = qword_1EB8AD9B0;
  if (!qword_1EB8AD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9B0);
  }

  return result;
}

unint64_t sub_1B4C7C8E4()
{
  result = qword_1EB8AD9B8;
  if (!qword_1EB8AD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9B8);
  }

  return result;
}

unint64_t sub_1B4C7C93C()
{
  result = qword_1EB8AD9C0;
  if (!qword_1EB8AD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9C0);
  }

  return result;
}

unint64_t sub_1B4C7C994()
{
  result = qword_1EB8AD9C8;
  if (!qword_1EB8AD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9C8);
  }

  return result;
}

unint64_t sub_1B4C7C9EC()
{
  result = qword_1EB8AD9D0;
  if (!qword_1EB8AD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9D0);
  }

  return result;
}

unint64_t sub_1B4C7CA44()
{
  result = qword_1EB8AD9D8;
  if (!qword_1EB8AD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9D8);
  }

  return result;
}

uint64_t sub_1B4C7CA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F6C694B656E6FLL && a2 == 0xEC00000072657465;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C694D656E6FLL && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C694B65766966 && a2 == 0xEE0073726574656DLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C694D65766966 && a2 == 0xE900000000000073 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6F6C694B6E6574 && a2 == 0xED00007372657465 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656C694D6E6574 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D662E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D66300 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x694D79746E657774 && a2 == 0xEB0000000073656CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D66320 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C694B7974666966 && a2 == 0xEF73726574656D6FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C694D7974666966 && a2 == 0xEA00000000007365 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D66340 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x72646E7548656E6FLL && a2 == 0xEF73656C694D6465 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D66360 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x72646E75486F7774 && a2 == 0xEF73656C694D6465)
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

void WorkoutPropertiesQuery.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v58 = &v52 - v4;
  *&v57 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  *&v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v52 - v17;
  v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v19 = *(v18 + 28);
  v63 = a1;
  sub_1B4974FBC(a1 + v19, v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    *v13 = 0;
    v13[8] = -1;
    sub_1B4D17BBC();
    if (v20(v9, 1, v10) != 1)
    {
      sub_1B4975024(v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4C7F960(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  v21 = v60;
  DateRangeDescriptor.init(_:)(v13);
  if (!v21)
  {
    v22 = v58;
    sub_1B4974FBC(v63 + *(v18 + 32), v58, &qword_1EB8A7DF0, &qword_1B4D202E0);
    v23 = *(v56 + 48);
    v24 = v57;
    if (v23(v22, 1, v57) == 1)
    {
      v25 = MEMORY[0x1E69E7CC0];
      *v6 = MEMORY[0x1E69E7CC0];
      v6[1] = v25;
      v6[2] = v25;
      v6[3] = v25;
      v6[4] = v25;
      v6[5] = v25;
      sub_1B4D17BBC();
      if (v23(v22, 1, v24) != 1)
      {
        sub_1B4975024(v22, &qword_1EB8A7DF0, &qword_1B4D202E0);
      }
    }

    else
    {
      sub_1B4C7F960(v22, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    }

    WorkoutPropertyDimensionsFilters.init(_:)(v6, v62);
    v26 = 0;
    v57 = v62[1];
    v58 = v62[0];
    v56 = v62[2];
    v27 = *v63;
    v28 = *(*v63 + 16);
    v60 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v29 = v27 + 40 + 16 * v26;
    while (v28 != v26)
    {
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      ++v26;
      v30 = v29 + 16;

      v31 = sub_1B4D18B1C();

      v29 = v30;
      if (v31 < 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1B4A1D09C(0, *(v60 + 2) + 1, 1, v60);
        }

        v33 = *(v60 + 2);
        v32 = *(v60 + 3);
        if (v33 >= v32 >> 1)
        {
          v60 = sub_1B4A1D09C((v32 > 1), v33 + 1, 1, v60);
        }

        v34 = v60;
        *(v60 + 2) = v33 + 1;
        v34[v33 + 32] = v31;
        goto LABEL_11;
      }
    }

    v35 = v63[1];
    sub_1B4B94680(v61, v59);
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = v35 + 40;
      v53 = v36 - 1;
      v39 = MEMORY[0x1E69E7CC0];
      v54 = v35 + 40;
LABEL_22:
      v40 = (v38 + 16 * v37);
      v41 = v37;
      while (v41 < *(v35 + 16))
      {
        v37 = v41 + 1;
        v42 = *(v40 - 1);
        v43 = *v40;

        v44._countAndFlagsBits = v42;
        v44._object = v43;
        WorkoutPropertyKind.init(rawValue:)(v44);
        v45 = v62[0];
        if (LOBYTE(v62[0]) != 19)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1B4A1D088(0, *(v39 + 2) + 1, 1, v39);
          }

          v47 = *(v39 + 2);
          v46 = *(v39 + 3);
          if (v47 >= v46 >> 1)
          {
            v39 = sub_1B4A1D088((v46 > 1), v47 + 1, 1, v39);
          }

          *(v39 + 2) = v47 + 1;
          v39[v47 + 32] = v45;
          v38 = v54;
          if (v53 != v41)
          {
            goto LABEL_22;
          }

          goto LABEL_34;
        }

        v40 += 2;
        ++v41;
        if (v36 == v37)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_37;
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v48 = v55;
    sub_1B4C7F960(v59, v55, type metadata accessor for DateRangeDescriptor);
    sub_1B4C7FAA4(v61, type metadata accessor for DateRangeDescriptor);
    v49 = type metadata accessor for WorkoutPropertiesQuery(0);
    v50 = (v48 + v49[5]);
    v51 = v57;
    *v50 = v58;
    v50[1] = v51;
    v50[2] = v56;
    *(v48 + v49[6]) = v60;
    *(v48 + v49[7]) = v39;
  }

  sub_1B4C7FAA4(v63, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
}

uint64_t WorkoutPropertiesQuery.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4C80150(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  return sub_1B4D17DAC();
}

__n128 WorkoutPropertiesQuery.init(range:filters:groupBy:propertyKinds:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *(a2 + 16);
  v22 = *a2;
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  sub_1B4B94680(a1, a5);
  v11.i64[0] = 0;
  v12 = v22.i64[0];
  v13 = vdupq_lane_s64(vceqq_s64(v22, v11).i64[0], 0);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
  v23 = vbslq_s8(v13, v15, v22);
  v21 = vbslq_s8(v13, v15, v20);
  sub_1B4C7FAA4(a1, type metadata accessor for DateRangeDescriptor);
  if (v12)
  {
    v16 = v10;
  }

  else
  {
    v16 = v14;
  }

  if (!v12)
  {
    v9 = v14;
  }

  v17 = type metadata accessor for WorkoutPropertiesQuery(0);
  v18 = (a5 + v17[5]);
  result = v23;
  *v18 = v23;
  v18[1] = v21;
  v18[2].i64[0] = v9;
  v18[2].i64[1] = v16;
  *(a5 + v17[6]) = a3;
  *(a5 + v17[7]) = a4;
  return result;
}

void __swiftcall WorkoutPropertyDimensionsFilters.init(monthOfYear:dayOfWeek:hourOfDay:activityType:locationType:sourceIdentifier:)(FitnessIntelligence::WorkoutPropertyDimensionsFilters *__return_ptr retstr, Swift::OpaquePointer monthOfYear, Swift::OpaquePointer dayOfWeek, Swift::OpaquePointer hourOfDay, Swift::OpaquePointer activityType, Swift::OpaquePointer locationType, Swift::OpaquePointer sourceIdentifier)
{
  retstr->monthOfYear = monthOfYear;
  retstr->dayOfWeek = dayOfWeek;
  retstr->hourOfDay = hourOfDay;
  retstr->activityType = activityType;
  retstr->locationType = locationType;
  retstr->sourceIdentifier = sourceIdentifier;
}

void static WorkoutPropertyDimensionsFilters.empty()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

uint64_t WorkoutPropertyDimensionsFilters.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  sub_1B49C28E8(a1, *v2);
  sub_1B49C27B8(a1, v4);
  MEMORY[0x1B8C7D290](*(v6 + 16));
  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = (v6 + 32);
    do
    {
      v11 = *v10++;
      MEMORY[0x1B8C7D2C0](v11);
      --v9;
    }

    while (v9);
  }

  MEMORY[0x1B8C7D290](*(v5 + 16));
  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = (v5 + 32);
    do
    {
      v14 = *v13++;
      MEMORY[0x1B8C7D290](v14);
      --v12;
    }

    while (v12);
  }

  sub_1B49C26A8(a1, v7);
  result = MEMORY[0x1B8C7D290](*(v8 + 16));
  v16 = *(v8 + 16);
  if (v16)
  {
    v17 = v8 + 40;
    do
    {

      sub_1B4D1820C();

      v17 += 16;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t WorkoutPropertyDimensionsFilters.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_1B4D18E8C();
  WorkoutPropertyDimensionsFilters.hash(into:)(v3);
  return sub_1B4D18EDC();
}

void sub_1B4C7DA3C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

uint64_t sub_1B4C7DA54()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_1B4D18E8C();
  WorkoutPropertyDimensionsFilters.hash(into:)(v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C7DAAC(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_1B4D18E8C();
  WorkoutPropertyDimensionsFilters.hash(into:)(v4);
  return sub_1B4D18EDC();
}

void WorkoutPropertyDimensionsFilters.init(_:)(void *a1@<X0>, char **a2@<X8>)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *a1 + 40;
  v51 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v5 + 16 * v2;
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    ++v2;
    v7 = v6 + 16;

    v8 = sub_1B4D18B1C();

    v6 = v7;
    if (v8 < 0xC)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1B4A1CEE8(0, *(v51 + 2) + 1, 1, v51);
      }

      v10 = *(v51 + 2);
      v9 = *(v51 + 3);
      if (v10 >= v9 >> 1)
      {
        v51 = sub_1B4A1CEE8((v9 > 1), v10 + 1, 1, v51);
      }

      *(v51 + 2) = v10 + 1;
      v51[v10 + 32] = v8;
      goto LABEL_2;
    }
  }

  v11 = 0;
  v12 = a1[1];
  v13 = *(v12 + 16);
  v50 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v14 = v12 + 40 + 16 * v11;
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      goto LABEL_58;
    }

    ++v11;
    v15 = v14 + 16;

    v16 = sub_1B4D18B1C();

    v14 = v15;
    if (v16 < 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1B4A1CED4(0, *(v50 + 2) + 1, 1, v50);
      }

      v18 = *(v50 + 2);
      v17 = *(v50 + 3);
      if (v18 >= v17 >> 1)
      {
        v50 = sub_1B4A1CED4((v17 > 1), v18 + 1, 1, v50);
      }

      *(v50 + 2) = v18 + 1;
      v50[v18 + 32] = v16;
      goto LABEL_12;
    }
  }

  v19 = a1[2];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v22 = (v19 + 32);
    do
    {
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        if (v24 < 0x18)
        {
          break;
        }

        if (qword_1EDC3CEC8 != -1)
        {
          swift_once();
        }

        v25 = sub_1B4D17F6C();
        __swift_project_value_buffer(v25, qword_1EDC3CED0);
        v26 = sub_1B4D17F5C();
        v27 = sub_1B4D1871C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          *(v28 + 4) = v23;
          _os_log_impl(&dword_1B4953000, v26, v27, "Invalid hourOfDay: %lld", v28, 0xCu);
          MEMORY[0x1B8C7DDA0](v28, -1, -1);
        }

        if (!--v20)
        {
          goto LABEL_36;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1CF84(0, *(v21 + 2) + 1, 1, v21);
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      if (v30 >= v29 >> 1)
      {
        v21 = sub_1B4A1CF84((v29 > 1), v30 + 1, 1, v21);
      }

      *(v21 + 2) = v30 + 1;
      *&v21[8 * v30 + 32] = v23;
      --v20;
    }

    while (v20);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

LABEL_36:
  v31 = a1[3];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = (v31 + 32);
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v36 = *v33++;
      v35 = v36;
      if (v36 < 0)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1B4A1CF70(0, *(v34 + 2) + 1, 1, v34);
      }

      v38 = *(v34 + 2);
      v37 = *(v34 + 3);
      if (v38 >= v37 >> 1)
      {
        v34 = sub_1B4A1CF70((v37 > 1), v38 + 1, 1, v34);
      }

      *(v34 + 2) = v38 + 1;
      *&v34[8 * v38 + 32] = v35;
      if (!--v32)
      {
        goto LABEL_46;
      }
    }

LABEL_60:
    __break(1u);
    return;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v39 = 0;
  v40 = a1[4];
  v41 = *(v40 + 16);
  v42 = v40 + 40;
  v52 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v43 = v42 + 16 * v39;
  while (v41 != v39)
  {
    if (v39 >= *(v40 + 16))
    {
      goto LABEL_59;
    }

    ++v39;
    v44 = v43 + 16;

    v45 = sub_1B4D18B1C();

    v43 = v44;
    if (v45 < 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1B4A1CF5C(0, *(v52 + 2) + 1, 1, v52);
      }

      v47 = *(v52 + 2);
      v46 = *(v52 + 3);
      if (v47 >= v46 >> 1)
      {
        v52 = sub_1B4A1CF5C((v46 > 1), v47 + 1, 1, v52);
      }

      *(v52 + 2) = v47 + 1;
      v52[v47 + 32] = v45;
      v42 = v40 + 40;
      goto LABEL_47;
    }
  }

  v48 = a1[5];

  sub_1B4C7FAA4(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  *a2 = v51;
  a2[1] = v50;
  a2[2] = v21;
  a2[3] = v34;
  a2[4] = v52;
  a2[5] = v48;
}

uint64_t WorkoutPropertyDimensionsFilters.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  sub_1B4C80150(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C7E150(void *a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v75 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v3, 0);
    v5 = (v2 + 32);
    v4 = v75;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 > 5)
      {
        if (v6 == 10)
        {
          v8 = 0x7265626D65766F6ELL;
        }

        else
        {
          v8 = 0x7265626D65636564;
        }

        v9 = 0xE800000000000000;
        if (v6 == 9)
        {
          v8 = 0x7265626F74636FLL;
          v9 = 0xE700000000000000;
        }

        v10 = 0x747375677561;
        if (v6 == 7)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v10 = 0x65626D6574706573;
          v11 = 0xE900000000000072;
        }

        if (v6 == 6)
        {
          v10 = 2037151082;
          v11 = 0xE400000000000000;
        }

        v12 = v6 <= 8;
      }

      else
      {
        if (v6 == 4)
        {
          v8 = 7954797;
        }

        else
        {
          v8 = 1701737834;
        }

        if (v6 == 4)
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }

        if (v6 == 3)
        {
          v8 = 0x6C69727061;
          v9 = 0xE500000000000000;
        }

        if (v6 == 1)
        {
          v10 = 0x7972617572626566;
        }

        else
        {
          v10 = 0x686372616DLL;
        }

        if (v6 == 1)
        {
          v11 = 0xE800000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (!v6)
        {
          v10 = 0x797261756E616ALL;
          v11 = 0xE700000000000000;
        }

        v12 = v6 <= 2;
      }

      if (v12)
      {
        v13 = v10;
      }

      else
      {
        v13 = v8;
      }

      if (v12)
      {
        v14 = v11;
      }

      else
      {
        v14 = v9;
      }

      v16 = *(v75 + 16);
      v15 = *(v75 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B4BCF43C((v15 > 1), v16 + 1, 1);
      }

      *(v75 + 16) = v16 + 1;
      v17 = v75 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      --v3;
    }

    while (v3);
    v19 = a2;
    v18 = a1;
  }

  else
  {
    v19 = a2;
    v18 = a1;
  }

  *v18 = v4;
  v20 = v19[1];
  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v76 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v21, 0);
    v23 = (v20 + 32);
    v22 = v76;
    do
    {
      v25 = *v23++;
      v24 = v25;
      v26 = 0x7961646E7573;
      if (v25 == 5)
      {
        v26 = 0x7961647275746173;
        v27 = 0xE800000000000000;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      if (v24 == 3)
      {
        v28 = 0x7961647372756874;
      }

      else
      {
        v28 = 0x796164697266;
      }

      if (v24 == 3)
      {
        v29 = 0xE800000000000000;
      }

      else
      {
        v29 = 0xE600000000000000;
      }

      if (v24 <= 4)
      {
        v26 = v28;
        v27 = v29;
      }

      v30 = 0xE900000000000079;
      if (v24 == 1)
      {
        v31 = 0x79616473657574;
      }

      else
      {
        v31 = 0x616473656E646577;
      }

      if (v24 == 1)
      {
        v30 = 0xE700000000000000;
      }

      if (!v24)
      {
        v31 = 0x7961646E6F6DLL;
        v30 = 0xE600000000000000;
      }

      if (v24 <= 2)
      {
        v32 = v31;
      }

      else
      {
        v32 = v26;
      }

      if (v24 <= 2)
      {
        v33 = v30;
      }

      else
      {
        v33 = v27;
      }

      v35 = *(v76 + 16);
      v34 = *(v76 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1B4BCF43C((v34 > 1), v35 + 1, 1);
      }

      *(v76 + 16) = v35 + 1;
      v36 = v76 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      --v21;
    }

    while (v21);
    v19 = a2;
    v18 = a1;
  }

  v18[1] = v22;
  v37 = v19[2];
  v38 = *(v37 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v77 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF5FC(0, v38, 0);
    v39 = v77;
    v40 = (v37 + 32);
    v41 = *(v77 + 16);
    do
    {
      v43 = *v40++;
      v42 = v43;
      v44 = *(v77 + 24);
      if (v41 >= v44 >> 1)
      {
        sub_1B4BCF5FC((v44 > 1), v41 + 1, 1);
      }

      *(v77 + 16) = v41 + 1;
      *(v77 + 8 * v41++ + 32) = v42;
      --v38;
    }

    while (v38);
  }

  v18[2] = v39;
  v45 = v19[3];
  v46 = *(v45 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  if (v46)
  {
    v78 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCF5FC(0, v46, 0);
    v47 = v78;
    v49 = (v45 + 32);
    while (1)
    {
      v51 = *v49++;
      v50 = v51;
      if (v51 < 0)
      {
        break;
      }

      v53 = *(v78 + 16);
      v52 = *(v78 + 24);
      if (v53 >= v52 >> 1)
      {
        result = sub_1B4BCF5FC((v52 > 1), v53 + 1, 1);
      }

      *(v78 + 16) = v53 + 1;
      *(v78 + 8 * v53 + 32) = v50;
      if (!--v46)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_84:

    v18[3] = v47;
    v54 = v19[4];
    v55 = *(v54 + 16);
    v56 = MEMORY[0x1E69E7CC0];
    if (v55)
    {
      v79 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF43C(0, v55, 0);
      v57 = (v54 + 32);
      v56 = v79;
      v58 = 0x6E776F6E6B6E75;
      do
      {
        v60 = *v57++;
        v59 = v60;
        v61 = v60 == 3;
        if (v60 == 3)
        {
          v62 = 0x657461576E65706FLL;
        }

        else
        {
          v62 = 0x676E696D6D697773;
        }

        if (v61)
        {
          v63 = 0xE900000000000072;
        }

        else
        {
          v63 = 0xEC0000006C6F6F50;
        }

        if (v59 == 2)
        {
          v62 = 0x726F6F6474756FLL;
          v63 = 0xE700000000000000;
        }

        if (v59)
        {
          v64 = 0x726F6F646E69;
        }

        else
        {
          v64 = v58;
        }

        if (v59)
        {
          v65 = 0xE600000000000000;
        }

        else
        {
          v65 = 0xE700000000000000;
        }

        if (v59 <= 1)
        {
          v66 = v64;
        }

        else
        {
          v66 = v62;
        }

        if (v59 <= 1)
        {
          v67 = v65;
        }

        else
        {
          v67 = v63;
        }

        v80 = v56;
        v69 = *(v56 + 16);
        v68 = *(v56 + 24);
        if (v69 >= v68 >> 1)
        {
          v71 = v58;
          sub_1B4BCF43C((v68 > 1), v69 + 1, 1);
          v58 = v71;
          v56 = v80;
        }

        *(v56 + 16) = v69 + 1;
        v70 = v56 + 16 * v69;
        *(v70 + 32) = v66;
        *(v70 + 40) = v67;
        --v55;
      }

      while (v55);
      v19 = a2;
      v18 = a1;
    }

    v18[4] = v56;
    v72 = v19[5];

    v18[5] = v72;
  }

  return result;
}

uint64_t sub_1B4C7E89C()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  sub_1B4C80150(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

double WorkoutPropertiesQuery.filters.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WorkoutPropertiesQuery(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;

  return result;
}

double WorkoutPropertiesQuery.groupBy.getter()
{
  type metadata accessor for WorkoutPropertiesQuery(0);

  return result;
}

double WorkoutPropertiesQuery.propertyKinds.getter()
{
  type metadata accessor for WorkoutPropertiesQuery(0);

  return result;
}

uint64_t WorkoutPropertiesQuery.hash(into:)(uint64_t a1)
{
  DateRangeDescriptor.hash(into:)(a1);
  v3 = type metadata accessor for WorkoutPropertiesQuery(0);
  WorkoutPropertyDimensionsFilters.hash(into:)(a1);
  sub_1B49C4A60(a1, *(v1 + *(v3 + 24)));
  v4 = *(v1 + *(v3 + 28));

  return sub_1B49C4754(a1, v4);
}

uint64_t WorkoutPropertiesQuery.hashValue.getter()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v3);
  v1 = type metadata accessor for WorkoutPropertiesQuery(0);
  WorkoutPropertyDimensionsFilters.hash(into:)(v3);
  sub_1B49C4A60(v3, *(v0 + *(v1 + 24)));
  sub_1B49C4754(v3, *(v0 + *(v1 + 28)));
  return sub_1B4D18EDC();
}

double sub_1B4C7EBBC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;

  return result;
}

uint64_t sub_1B4C7EC44(uint64_t a1)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v4);
  WorkoutPropertyDimensionsFilters.hash(into:)(v4);
  sub_1B49C4A60(v4, *(v1 + *(a1 + 24)));
  sub_1B49C4754(v4, *(v1 + *(a1 + 28)));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C7ECD8(uint64_t a1, uint64_t a2)
{
  DateRangeDescriptor.hash(into:)(a1);
  WorkoutPropertyDimensionsFilters.hash(into:)(a1);
  sub_1B49C4A60(a1, *(v2 + *(a2 + 24)));
  v5 = *(v2 + *(a2 + 28));

  return sub_1B49C4754(a1, v5);
}

uint64_t sub_1B4C7ED64(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v5);
  WorkoutPropertyDimensionsFilters.hash(into:)(v5);
  sub_1B49C4A60(v5, *(v2 + *(a2 + 24)));
  sub_1B49C4754(v5, *(v2 + *(a2 + 28)));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C7EDF4(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4C80150(&qword_1EDC39148, type metadata accessor for WorkoutPropertiesQuery, &protocol conformance descriptor for WorkoutPropertiesQuery);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4C80150(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v1 = sub_1B4D17D6C();
    sub_1B4C7FAA4(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  return v1;
}

uint64_t sub_1B4C7EF78(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v84 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a2;
  sub_1B4C80150(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4D17DAC();
  v83 = v2;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v13 = *(v12 + 28);
  sub_1B4975024(&a1[v13], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4C7F960(v11, &a1[v13], type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  (*(v9 + 56))(&a1[v13], 0, 1, v8);
  v14 = type metadata accessor for WorkoutPropertiesQuery(0);
  v15 = (a2 + v14[5]);
  v16 = v15[2];
  v87[1] = v15[1];
  v87[2] = v16;
  v87[0] = *v15;
  v85 = v87;
  sub_1B4C80150(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  v17 = v83;
  sub_1B4D17DAC();
  v83 = v17;
  v18 = *(v12 + 32);
  sub_1B4975024(&a1[v18], &qword_1EB8A7DF0, &qword_1B4D202E0);
  sub_1B4C7F960(v7, &a1[v18], type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  v19 = *(v84 + 7);
  v84 = a1;
  v19(&a1[v18], 0, 1, v5);
  v20 = v14[6];
  v82 = a2;
  v21 = *(a2 + v20);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v81 = v14;
    v88 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v22, 0);
    v23 = v88;
    v24 = (v21 + 32);
    do
    {
      v26 = *v24++;
      v25 = v26;
      v27 = 0xD000000000000010;
      if (v26 == 4)
      {
        v27 = 0x6E6F697461636F6CLL;
        v28 = 0xEC00000065707954;
      }

      else
      {
        v28 = 0x80000001B4D48D10;
      }

      if (v25 == 3)
      {
        v27 = 0x7974697669746361;
        v28 = 0xEC00000065707954;
      }

      v29 = 0xE900000000000079;
      if (v25 == 1)
      {
        v30 = 0x656557664F796164;
      }

      else
      {
        v30 = 0x6144664F72756F68;
      }

      if (v25 == 1)
      {
        v29 = 0xE90000000000006BLL;
      }

      if (!v25)
      {
        v30 = 0x59664F68746E6F6DLL;
        v29 = 0xEB00000000726165;
      }

      if (v25 <= 2)
      {
        v31 = v30;
      }

      else
      {
        v31 = v27;
      }

      if (v25 <= 2)
      {
        v32 = v29;
      }

      else
      {
        v32 = v28;
      }

      v88 = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B4BCF43C((v33 > 1), v34 + 1, 1);
        v23 = v88;
      }

      *(v23 + 16) = v34 + 1;
      v35 = v23 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      --v22;
    }

    while (v22);
    v14 = v81;
  }

  v36 = v84;

  *v36 = v23;
  v37 = *(v82 + v14[7]);
  v38 = *(v37 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v88 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v38, 0);
    v40 = (v37 + 32);
    v39 = v88;
    v41 = 0x80000001B4D48CE0;
    v42 = 0x80000001B4D48CC0;
    v43 = 0x80000001B4D48CA0;
    v44 = 0x80000001B4D48C80;
    v45 = 0x80000001B4D48C60;
    v46 = 0x80000001B4D48C40;
    v47 = 0x80000001B4D48C20;
    v48 = 0x80000001B4D48C00;
    v49 = 0x80000001B4D48BE0;
    v50 = 0x80000001B4D48BC0;
    v51 = 0x80000001B4D48BA0;
    v52 = 0x80000001B4D48B80;
    v53 = 0x80000001B4D48B60;
    v54 = 0x80000001B4D48B40;
    v55 = 0x80000001B4D48B20;
    v56 = 0x80000001B4D488D0;
    v82 = 0x80000001B4D48AF0;
    v81 = 0xD000000000000011;
    do
    {
      v57 = *v40++;
      v58 = 0xEE00736369747369;
      v59 = 0x7461745365636170;
      switch(v57)
      {
        case 1:
          v59 = 0xD000000000000012;
          v58 = v56;
          break;
        case 2:
          break;
        case 3:
          v59 = 0xD000000000000017;
          v58 = v55;
          break;
        case 4:
          v59 = 0xD00000000000001ALL;
          v58 = v54;
          break;
        case 5:
          v59 = 0xD000000000000013;
          v58 = v53;
          break;
        case 6:
          v59 = 0xD000000000000012;
          v58 = v52;
          break;
        case 7:
          v59 = 0xD000000000000012;
          v58 = v51;
          break;
        case 8:
          v59 = 0xD00000000000001CLL;
          v58 = v50;
          break;
        case 9:
          v59 = 0xD000000000000015;
          v58 = v49;
          break;
        case 10:
          v59 = 0xD000000000000017;
          v58 = v48;
          break;
        case 11:
          v59 = 0xD000000000000013;
          v58 = v47;
          break;
        case 12:
          v59 = 0xD00000000000001CLL;
          v58 = v46;
          break;
        case 13:
          v59 = 0xD000000000000018;
          v58 = v45;
          break;
        case 14:
          v59 = 0xD000000000000017;
          v58 = v44;
          break;
        case 15:
          v59 = 0xD000000000000017;
          v58 = v43;
          break;
        case 16:
          v59 = 0xD000000000000017;
          v58 = v42;
          break;
        case 17:
          v59 = 0xD000000000000016;
          v58 = v41;
          break;
        case 18:
          v58 = 0xEA0000000000746ELL;
          v59 = 0x756F436C61746F74;
          break;
        default:
          v59 = v81;
          v58 = v82;
          break;
      }

      v88 = v39;
      v61 = *(v39 + 16);
      v60 = *(v39 + 24);
      if (v61 >= v60 >> 1)
      {
        v73 = v48;
        v72 = v49;
        v71 = v50;
        v79 = v42;
        v80 = v41;
        v78 = v43;
        v77 = v44;
        v76 = v45;
        v75 = v46;
        v74 = v47;
        v70 = v51;
        v69 = v52;
        v68 = v53;
        v67 = v54;
        v66 = v55;
        v65 = v56;
        sub_1B4BCF43C((v60 > 1), v61 + 1, 1);
        v56 = v65;
        v55 = v66;
        v54 = v67;
        v53 = v68;
        v52 = v69;
        v51 = v70;
        v50 = v71;
        v49 = v72;
        v48 = v73;
        v47 = v74;
        v46 = v75;
        v45 = v76;
        v44 = v77;
        v43 = v78;
        v42 = v79;
        v41 = v80;
        v39 = v88;
      }

      *(v39 + 16) = v61 + 1;
      v62 = v39 + 16 * v61;
      *(v62 + 32) = v59;
      *(v62 + 40) = v58;
      --v38;
    }

    while (v38);
  }

  v63 = v84;

  *(v63 + 1) = v39;
  return result;
}

uint64_t sub_1B4C7F854()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4C80150(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  return sub_1B4D17DAC();
}

uint64_t type metadata accessor for WorkoutPropertiesQuery(uint64_t a1)
{
  result = qword_1EDC3CCE8;
  if (!qword_1EDC3CCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4C7F960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s19FitnessIntelligence32WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if ((sub_1B4A0A1C0(*a1, *a2) & 1) == 0 || (sub_1B4A0A568(v2, v7) & 1) == 0 || (sub_1B4A0A164(v4, v9) & 1) == 0 || (sub_1B4A0A164(v3, v8) & 1) == 0 || (sub_1B4A0DB60(v6, v11) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A0C158(v5, v10);
}

uint64_t sub_1B4C7FAA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19FitnessIntelligence22WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutPropertiesQuery(0);
  v5 = (a1 + *(v4 + 20));
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  v25[0] = *v5;
  v25[1] = v6;
  v25[2] = v7;
  v25[3] = v8;
  v25[4] = v9;
  v25[5] = v10;
  v11 = (a2 + *(v4 + 20));
  v12 = v11[1];
  v22 = a1;
  v23 = a2;
  v14 = v11[2];
  v13 = v11[3];
  v15 = v11[4];
  v20 = v4;
  v21 = v11[5];
  v24[0] = *v11;
  v24[1] = v12;
  v24[2] = v14;
  v24[3] = v13;
  v24[4] = v15;
  v24[5] = v21;

  LOBYTE(v6) = _s19FitnessIntelligence32WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v25, v24);

  if ((v6 & 1) == 0 || (sub_1B4A0DD68(*(v22 + *(v20 + 24)), *(v23 + *(v20 + 24))) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v20 + 28);
  v17 = *(v22 + v16);
  v18 = *(v23 + v16);

  return sub_1B4A0DFD0(v17, v18);
}

unint64_t sub_1B4C7FD0C(uint64_t a1)
{
  result = sub_1B4C7FD34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C7FD34()
{
  result = qword_1EDC381B0;
  if (!qword_1EDC381B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC381B0);
  }

  return result;
}

unint64_t sub_1B4C7FD8C()
{
  result = qword_1EDC381A8;
  if (!qword_1EDC381A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC381A8);
  }

  return result;
}

unint64_t sub_1B4C7FE7C()
{
  result = qword_1EB8AD9E0;
  if (!qword_1EB8AD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9E0);
  }

  return result;
}

uint64_t sub_1B4C7FED0(void *a1)
{
  a1[1] = sub_1B4C80150(qword_1EDC39160, type metadata accessor for WorkoutPropertiesQuery, &protocol conformance descriptor for WorkoutPropertiesQuery);
  a1[2] = sub_1B4C80150(&qword_1EDC39148, type metadata accessor for WorkoutPropertiesQuery, &protocol conformance descriptor for WorkoutPropertiesQuery);
  result = sub_1B4C80150(&qword_1EDC39158, type metadata accessor for WorkoutPropertiesQuery, &protocol conformance descriptor for WorkoutPropertiesQuery);
  a1[3] = result;
  return result;
}

void sub_1B4C8008C(uint64_t a1)
{
  type metadata accessor for DateRangeDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_1B4A1F54C(319, &qword_1EDC3CB88, &type metadata for WorkoutPropertyDimensionsField);
    if (v2 <= 0x3F)
    {
      sub_1B4A1F54C(319, &qword_1EDC3CB98, &type metadata for WorkoutPropertyKind);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4C80150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static DictionaryPropertyValueBehavior.add(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v6(a3, a4);
  v6(a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B4D1800C();
  if (!v11)
  {
    v10 = result;
    v8 = *(a4 + 56);
    v9 = v8(a3, a4);
    result = v8(a3, a4);
    if (__OFADD__(v9, result))
    {
      __break(1u);
    }

    else
    {
      return (*(a4 + 64))(v10, v9 + result, a3, a4);
    }
  }

  return result;
}

uint64_t DictionaryPropertyValueBehavior.keys.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  nullsub_1();

  sub_1B4D17FDC();
  swift_getWitnessTable();
  return sub_1B4D184EC();
}

uint64_t sub_1B4C80588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))(a2, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B4D1805C();
}

uint64_t sub_1B4C80674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t AudioSynthesisVoice.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AudioSynthesisVoice.language.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

FitnessIntelligence::AudioSynthesisVoice __swiftcall AudioSynthesisVoice.init(name:language:)(Swift::String name, Swift::String language)
{
  *v2 = name;
  v2[1] = language;
  result.language = language;
  result.name = name;
  return result;
}

unint64_t AudioSynthesisVoice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B4D1896C();

  MEMORY[0x1B8C7C620](v1, v2);
  MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
  MEMORY[0x1B8C7C620](v3, v4);
  return 0xD000000000000014;
}

uint64_t static AudioSynthesisVoice.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B4D18DCC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B4D18DCC();
    }
  }

  return result;
}

uint64_t sub_1B4C80944()
{
  if (*v0)
  {
    return 0x65676175676E616CLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1B4C80978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4C80A54(uint64_t a1)
{
  v2 = sub_1B4C80C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C80A90(uint64_t a1)
{
  v2 = sub_1B4C80C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioSynthesisVoice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD9E8, &qword_1B4D440F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C80C60();
  sub_1B4D18EFC();
  v12 = 0;
  v8 = v10[3];
  sub_1B4D18CBC();
  if (!v8)
  {
    v11 = 1;
    sub_1B4D18CBC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4C80C60()
{
  result = qword_1EB8AD9F0;
  if (!qword_1EB8AD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD9F0);
  }

  return result;
}

uint64_t AudioSynthesisVoice.hash(into:)(uint64_t a1)
{
  sub_1B4D1820C();

  return sub_1B4D1820C();
}

uint64_t AudioSynthesisVoice.hashValue.getter()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t AudioSynthesisVoice.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD9F8, &qword_1B4D440F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C80C60();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v9 = sub_1B4D18BBC();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1B4D18BBC();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B4C80F9C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C81004(uint64_t a1)
{
  sub_1B4D1820C();

  return sub_1B4D1820C();
}

uint64_t sub_1B4C81054(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

unint64_t sub_1B4C810BC()
{
  result = qword_1EB8ADA00;
  if (!qword_1EB8ADA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA00);
  }

  return result;
}

uint64_t sub_1B4C81110(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B4D18DCC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B4D18DCC();
    }
  }

  return result;
}

unint64_t sub_1B4C811D8()
{
  result = qword_1EB8ADA08;
  if (!qword_1EB8ADA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA08);
  }

  return result;
}

unint64_t sub_1B4C81230()
{
  result = qword_1EB8ADA10;
  if (!qword_1EB8ADA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA10);
  }

  return result;
}

unint64_t sub_1B4C81288()
{
  result = qword_1EB8ADA18;
  if (!qword_1EB8ADA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA18);
  }

  return result;
}

uint64_t InferenceClient.runInference(request:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[7];
  *(v3 + 112) = a2[6];
  *(v3 + 128) = v4;
  *(v3 + 137) = *(a2 + 121);
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  v6 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v6;
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1B4C81328, 0, 0);
}

uint64_t sub_1B4C81328()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D663D0;
  v3._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 153) = 14;
  v14 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v4 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v4;
  *(v0 + 281) = *(v0 + 137);
  v5 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v5;
  v6 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v6;
  v7 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v7;
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  v9 = type metadata accessor for InferenceResult(0);
  v10 = sub_1B4C8164C();
  v11 = sub_1B4C8299C(qword_1EDC373F0, type metadata accessor for InferenceResult, &protocol conformance descriptor for InferenceResult);
  *v8 = v0;
  v8[1] = sub_1B4C81500;
  v12 = *(v0 + 304);

  return v14(v12, v0 + 153, v0 + 160, &type metadata for InferenceRequest, v9, v10, v11);
}

uint64_t sub_1B4C81500()
{
  v2 = *v1;
  *(v2 + 328) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4C81634, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_1B4C8164C()
{
  result = qword_1EDC372A8[0];
  if (!qword_1EDC372A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC372A8);
  }

  return result;
}

uint64_t InferenceClient.cancelInference(request:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v3[4] = a1;
  v3[5] = v4;
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1B4C816CC, 0, 0);
}

uint64_t sub_1B4C816CC()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1B4D17F6C();
  __swift_project_value_buffer(v3, qword_1EDC3CED0);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4D663A0;
  v5._object = 0x80000001B4D663F0;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  *(v0 + 80) = 19;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v11 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_1B4C8199C();
  v8 = sub_1B4C819F0();
  *v6 = v0;
  v6[1] = sub_1B4C81850;
  v9 = *(v0 + 32);

  return v11(v9, v0 + 80, v0 + 16, &type metadata for AnnounceCancellationRequest, &type metadata for AnnounceCancellationResult, v7, v8);
}

uint64_t sub_1B4C81850()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4C81984, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_1B4C8199C()
{
  result = qword_1EB8ADA20;
  if (!qword_1EB8ADA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA20);
  }

  return result;
}

unint64_t sub_1B4C819F0()
{
  result = qword_1EB8ADA28;
  if (!qword_1EB8ADA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA28);
  }

  return result;
}

uint64_t InferenceClient.queryInferenceRecord(uuid:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B4C81A6C, 0, 0);
}

uint64_t sub_1B4C81A6C()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D66410;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 56) = 21;
  v12 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = sub_1B4D177CC();
  v6 = type metadata accessor for InferenceRecord(0);
  v7 = sub_1B4C8299C(&qword_1EB8AB750, MEMORY[0x1E69695A8], &protocol conformance descriptor for UUID);
  v8 = sub_1B4C8299C(&qword_1EB8ADA30, type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  *v4 = v0;
  v4[1] = sub_1B49F3278;
  v9 = *(v0 + 24);
  v10 = *(v0 + 16);

  return v12(v10, v0 + 56, v9, v5, v6, v7, v8);
}

uint64_t InferenceClient.queryInferenceRecords(adapter:interval:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = type metadata accessor for InferenceRecordRequest(0);
  v4 = swift_task_alloc();
  v5 = *v2;
  v3[5] = v4;
  v3[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4C81CE8, 0, 0);
}

uint64_t sub_1B4C81CE8()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = sub_1B4D17F6C();
  __swift_project_value_buffer(v3, qword_1EDC3CED0);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4D663A0;
  v5._object = 0x80000001B4D66430;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v4, v5);
  sub_1B49DFEA4(v2, v1);
  *(v0 + 72) = 22;
  v13 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADA38, &qword_1B4D44340);
  v8 = sub_1B4C8299C(&qword_1EB8A7788, type metadata accessor for InferenceRecordRequest, &protocol conformance descriptor for InferenceRecordRequest);
  v9 = sub_1B4C820D0();
  *v6 = v0;
  v6[1] = sub_1B4C81EAC;
  v10 = *(v0 + 40);
  v11 = *(v0 + 32);

  return v13(v0 + 16, v0 + 72, v10, v11, v7, v8, v9);
}

uint64_t sub_1B4C81EAC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B4C8204C;
  }

  else
  {
    v2 = sub_1B4C81FC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4C81FC0()
{
  sub_1B4C825A0(v0[5], type metadata accessor for InferenceRecordRequest);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B4C8204C()
{
  sub_1B4C825A0(*(v0 + 40), type metadata accessor for InferenceRecordRequest);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1B4C820D0()
{
  result = qword_1EB8ADA40;
  if (!qword_1EB8ADA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADA38, &qword_1B4D44340);
    sub_1B4C8299C(&qword_1EB8ADA30, type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA40);
  }

  return result;
}

uint64_t InferenceClient.setFeedbackId(_:entryUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[5] = type metadata accessor for InferenceFeedbackUpdateRequest(0);
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[6] = v5;
  v4[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B4C82220, 0, 0);
}

uint64_t sub_1B4C82220()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = sub_1B4D177CC();
  (*(*(v6 - 8) + 16))(v1, v3, v6);
  v7 = (v1 + *(v2 + 20));
  *v7 = v5;
  v7[1] = v4;
  *(v0 + 80) = 23;
  v13 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);

  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = sub_1B4C8299C(&qword_1EB8A77A0, type metadata accessor for InferenceFeedbackUpdateRequest, &protocol conformance descriptor for InferenceFeedbackUpdateRequest);
  *v8 = v0;
  v8[1] = sub_1B4C82384;
  v10 = *(v0 + 48);
  v11 = *(v0 + 40);

  return v13(v0 + 80, v10, v11, v9);
}

uint64_t sub_1B4C82384()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B4C8251C;
  }

  else
  {
    v2 = sub_1B4C82498;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4C82498()
{
  sub_1B4C825A0(*(v0 + 48), type metadata accessor for InferenceFeedbackUpdateRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4C8251C()
{
  sub_1B4C825A0(*(v0 + 48), type metadata accessor for InferenceFeedbackUpdateRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4C825A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t InferenceClient.announceUtterance(request:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v4;
  *(v3 + 74) = *(a2 + 58);
  v5 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1B4C8263C, 0, 0);
}

uint64_t sub_1B4C8263C()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D66460;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 90) = 24;
  v12 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v4 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v4;
  *(v0 + 154) = *(v0 + 74);
  v5 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v5;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  v7 = type metadata accessor for AnnounceUtteranceResult(0);
  v8 = sub_1B4C82948();
  v9 = sub_1B4C8299C(&qword_1EB8ADA50, type metadata accessor for AnnounceUtteranceResult, &protocol conformance descriptor for AnnounceUtteranceResult);
  *v6 = v0;
  v6[1] = sub_1B4C827FC;
  v10 = *(v0 + 176);

  return v12(v10, v0 + 90, v0 + 96, &type metadata for AnnounceUtteranceRequest, v7, v8, v9);
}

uint64_t sub_1B4C827FC()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4C82930, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_1B4C82948()
{
  result = qword_1EB8ADA48;
  if (!qword_1EB8ADA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA48);
  }

  return result;
}

uint64_t sub_1B4C8299C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InferenceClient.cancelAnnounceUtterance(request:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v3[4] = a1;
  v3[5] = v4;
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1B4C82A10, 0, 0);
}

uint64_t sub_1B4C82A10()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1B4D17F6C();
  __swift_project_value_buffer(v3, qword_1EDC3CED0);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4D663A0;
  v5._object = 0x80000001B4D66480;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  *(v0 + 80) = 30;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v11 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_1B4C8199C();
  v8 = sub_1B4C819F0();
  *v6 = v0;
  v6[1] = sub_1B4C82B94;
  v9 = *(v0 + 32);

  return v11(v9, v0 + 80, v0 + 16, &type metadata for AnnounceCancellationRequest, &type metadata for AnnounceCancellationResult, v7, v8);
}

uint64_t sub_1B4C82B94()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4C870B4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t InferenceClient.listVoiceAssets()()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4D17F6C();
  __swift_project_value_buffer(v0, qword_1EDC3CED0);
  v1._countAndFlagsBits = 0xD000000000000029;
  v1._object = 0x80000001B4D663A0;
  v2._object = 0x80000001B4D664B0;
  v2._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v1, v2);

  return _s19FitnessIntelligence15VoiceAssetCacheV16readCachedAssetsSayAA014AudioSynthesiscD0VGyFZ_0();
}

uint64_t InferenceClient.selectVoiceAsset(_:)(uint64_t a1)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = *(a1 + 8);
  v3 = *v1;
  *(v2 + 40) = *(a1 + 24);
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B4C82DAC, 0, 0);
}

uint64_t sub_1B4C82DAC()
{
  v13 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B4D17F6C();
  __swift_project_value_buffer(v3, qword_1EDC3CED0);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4D663A0;
  v5._object = 0x80000001B4D664D0;
  v5._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v4, v5);
  v10 = v8;
  v11 = v2;
  v12 = v1;
  sub_1B4B296A8(&v10);
  *(v0 + 72) = 32;
  v9 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B4C82F48;

  return v9(v0 + 72);
}

uint64_t sub_1B4C82F48()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49CD844, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t InferenceClient.previewVoiceAsset(_:)(uint64_t a1)
{
  *(v2 + 48) = *a1;
  *(v2 + 56) = *(a1 + 8);
  v3 = *v1;
  *(v2 + 72) = *(a1 + 24);
  *(v2 + 80) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B4C830B4, 0, 0);
}

uint64_t sub_1B4C830B4()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v9 = *(v0 + 48);
  v3 = sub_1B4D17F6C();
  __swift_project_value_buffer(v3, qword_1EDC3CED0);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4D663A0;
  v5._object = 0x80000001B4D664F0;
  v5._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v4, v5);
  *(v0 + 104) = 27;
  *(v0 + 16) = v9;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v10 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_1B4C85A4C();
  *v6 = v0;
  v6[1] = sub_1B4C8322C;

  return v10(v0 + 104, v0 + 16, &type metadata for AudioSynthesisVoice, v7);
}

uint64_t sub_1B4C8322C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49CFF08, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t InferenceClient.observeVoiceAssetChanges(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADA60, &qword_1B4D44378);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B4C83434, 0, 0);
}

uint64_t sub_1B4C83434()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D66510;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 72) = sub_1B4D1854C();
  *(v0 + 80) = sub_1B4D1853C();
  v5 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C8354C, v5, v4);
}

uint64_t sub_1B4C8354C()
{

  *(v0 + 88) = sub_1B4D17ABC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C835C0, 0, 0);
}

uint64_t sub_1B4C835C0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  *(v0 + 128) = 4;
  (*(v2 + 104))(v1, *MEMORY[0x1E699DCD0], v3);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADA68, &qword_1B4D44390);
  sub_1B4C85B38();
  v8 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C836B0, v8, v7);
}

uint64_t sub_1B4C836B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1B4D17AFC();

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B4C83778, 0, 0);
}

uint64_t sub_1B4C83778()
{
  *(v0 + 104) = sub_1B4D1853C();
  v2 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C83804, v2, v1);
}

uint64_t sub_1B4C83804()
{

  sub_1B4D17ACC();
  *(v0 + 129) = 31;
  v3 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1B4C838CC;

  return v3(v0 + 129);
}

uint64_t sub_1B4C838CC()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4C83A08, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4C83A08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4C83A6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4C83A8C, 0, 0);
}

uint64_t sub_1B4C83A8C()
{
  v1 = *(v0 + 16);
  _s19FitnessIntelligence15VoiceAssetCacheV16readCachedAssetsSayAA014AudioSynthesiscD0VGyFZ_0();
  v1();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4C83B30()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D66530;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 56) = 15;
  v7 = (*MEMORY[0x1E699DD10] + MEMORY[0x1E699DD10]);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = sub_1B4C85B9C();
  *v4 = v0;
  v4[1] = sub_1B4C83C84;

  return v7(v0 + 16, v0 + 56, &type metadata for InferenceAvailability, v5);
}

uint64_t sub_1B4C83C84()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B49F159C;
  }

  else
  {
    v2 = sub_1B4C83D98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void InferenceClient.queryDeviceInferenceAvailability(device:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4D17F6C();
  __swift_project_value_buffer(v4, qword_1EDC3CED0);
  v5._object = 0x80000001B4D663A0;
  v6._object = 0x80000001B4D66550;
  v5._countAndFlagsBits = 0xD000000000000029;
  v6._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v5, v6);
  v7 = v3;
  static DeviceInferenceAvailabilityStore.readAvailability(device:)(&v7, a2);
}

uint64_t sub_1B4C83EA0()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D66580;
  v3._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 40) = 16;
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1B49F35BC;

  return v6(v0 + 40);
}

uint64_t sub_1B4C83FFC()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D665B0;
  v3._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 40) = 20;
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1B49F0EAC;

  return v6(v0 + 40);
}

uint64_t InferenceClient.observeDeviceInferenceAvailabilityChanges(_:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADA60, &qword_1B4D44378);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(v2 + 8);
  v3[6] = v5;
  v3[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B4C84204, 0, 0);
}

uint64_t sub_1B4C84204()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._object = 0x80000001B4D663A0;
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4D665E0;
  v2._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 64) = sub_1B4D1854C();
  *(v0 + 72) = sub_1B4D1853C();
  v5 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C8431C, v5, v4);
}

uint64_t sub_1B4C8431C()
{

  *(v0 + 80) = sub_1B4D17ABC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C84390, 0, 0);
}

uint64_t sub_1B4C84390()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  *(v0 + 104) = 3;
  (*(v2 + 104))(v1, *MEMORY[0x1E699DCD0], v3);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADA68, &qword_1B4D44390);
  sub_1B4C85B38();
  v8 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C84480, v8, v7);
}

uint64_t sub_1B4C84480()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1B4D17AFC();

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B4C84548, 0, 0);
}

uint64_t sub_1B4C84548()
{
  *(v0 + 96) = sub_1B4D1853C();
  v2 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4C845D4, v2, v1);
}

uint64_t sub_1B4C845D4()
{

  sub_1B4D17ACC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4C84644(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B4C846AC(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return InferenceClient.runInference(request:)(a1, a2);
}

uint64_t sub_1B4C84754(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return InferenceClient.cancelInference(request:)(a1, a2);
}

uint64_t sub_1B4C847FC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B4C84824, 0, 0);
}

uint64_t sub_1B4C84824()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D66410;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 56) = 21;
  v12 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = sub_1B4D177CC();
  v6 = type metadata accessor for InferenceRecord(0);
  v7 = sub_1B4C8299C(&qword_1EB8AB750, MEMORY[0x1E69695A8], &protocol conformance descriptor for UUID);
  v8 = sub_1B4C8299C(&qword_1EB8ADA30, type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  *v4 = v0;
  v4[1] = sub_1B4C84A08;
  v9 = *(v0 + 24);
  v10 = *(v0 + 16);

  return v12(v10, v0 + 56, v9, v5, v6, v7, v8);
}

uint64_t sub_1B4C84A08()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4C870B8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4C84B3C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B49AA274;

  return InferenceClient.queryInferenceRecords(adapter:interval:)(v4, a2);
}

uint64_t sub_1B4C84BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B49DA364;

  return InferenceClient.setFeedbackId(_:entryUUID:)(a1, a2, a3);
}

uint64_t sub_1B4C84C7C(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return InferenceClient.announceUtterance(request:)(a1, a2);
}

uint64_t sub_1B4C84D24(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return InferenceClient.cancelAnnounceUtterance(request:)(a1, a2);
}

uint64_t sub_1B4C84DCC()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4D17F6C();
  __swift_project_value_buffer(v0, qword_1EDC3CED0);
  v1._countAndFlagsBits = 0xD000000000000029;
  v1._object = 0x80000001B4D663A0;
  v2._object = 0x80000001B4D664B0;
  v2._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v1, v2);

  return _s19FitnessIntelligence15VoiceAssetCacheV16readCachedAssetsSayAA014AudioSynthesiscD0VGyFZ_0();
}

uint64_t sub_1B4C84E78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DA364;

  return InferenceClient.selectVoiceAsset(_:)(a1);
}

uint64_t sub_1B4C84F0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DA364;

  return InferenceClient.previewVoiceAsset(_:)(a1);
}

uint64_t sub_1B4C84FA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return InferenceClient.observeVoiceAssetChanges(_:)(a1, a2);
}

uint64_t sub_1B4C85044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4C850D0;

  return InferenceClient.queryInferenceAvailability()();
}

uint64_t sub_1B4C850D0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_1B4C851E0(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4D17F6C();
  __swift_project_value_buffer(v4, qword_1EDC3CED0);
  v5._object = 0x80000001B4D663A0;
  v6._object = 0x80000001B4D66550;
  v5._countAndFlagsBits = 0xD000000000000029;
  v6._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v5, v6);
  v7 = v3;
  static DeviceInferenceAvailabilityStore.readAvailability(device:)(&v7, a2);
}

uint64_t sub_1B4C852A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4C8534C;

  return InferenceClient.observeDeviceInferenceAvailabilityChanges(_:)(a1, a2);
}

uint64_t sub_1B4C8534C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4C8548C()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4D663A0;
  v3._object = 0x80000001B4D665B0;
  v3._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 40) = 20;
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1B49F35BC;

  return v6(v0 + 40);
}

uint64_t InferenceClient.retrieveRecord(uuid:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B4C84824, 0, 0);
}

uint64_t InferenceClient.listInferences(adapter:interval:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_1B4C8568C;

  return InferenceClient.queryInferenceRecords(adapter:interval:)(v5, a2);
}

uint64_t sub_1B4C8568C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49F12A0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B4C857C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4983F3C;

  return InferenceClient.retrieveRecord(uuid:)(a1, a2);
}

uint64_t sub_1B4C85870(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_1B4C85910;

  return InferenceClient.queryInferenceRecords(adapter:interval:)(v5, a2);
}

uint64_t sub_1B4C85910(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4C870BC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

unint64_t sub_1B4C85A4C()
{
  result = qword_1EB8ADA58;
  if (!qword_1EB8ADA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA58);
  }

  return result;
}

uint64_t sub_1B4C85AA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B4983F3C;

  return sub_1B4C83A6C(v2, v3);
}

unint64_t sub_1B4C85B38()
{
  result = qword_1EDC377F8;
  if (!qword_1EDC377F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADA68, &qword_1B4D44390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377F8);
  }

  return result;
}

unint64_t sub_1B4C85B9C()
{
  result = qword_1EDC37150[0];
  if (!qword_1EDC37150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37150);
  }

  return result;
}

uint64_t sub_1B4C85BF0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DA364;

  return sub_1B4C84644(v2);
}

uint64_t dispatch thunk of InferenceClientProtocol.runInference(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.cancelInference(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.queryInferenceRecord(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.queryInferenceRecords(adapter:interval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49D9398;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.setFeedbackId(_:entryUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of InferenceClientProtocol.announceUtterance(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.cancelAnnounceUtterance(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.selectVoiceAsset(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B49DA364;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of InferenceClientProtocol.previewVoiceAsset(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B49DA364;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of InferenceClientProtocol.observeVoiceAssetChanges(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 88) + **(a4 + 88));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.queryInferenceAvailability()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4C869BC;

  return v7(a1, a2);
}

uint64_t sub_1B4C869BC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of InferenceClientProtocol.observeDeviceInferenceAvailabilityChanges(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 112) + **(a4 + 112));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceClientProtocol.refreshDeviceInferenceAvailability()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return v7(a1, a2);
}

uint64_t dispatch thunk of InferenceClientProtocol.removeWatchInferenceAvailability()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return v7(a1, a2);
}

uint64_t dispatch thunk of InferenceFeedbackClientProtocol.retrieveRecord(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceFeedbackClientProtocol.listInferences(adapter:interval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4A054D8;

  return v11(a1, a2, a3, a4);
}

void AnnounceUtteranceRequest.init(utterance:settings:bypassSiriAnnounce:requestIdentifier:streamAudio:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v27 = a2;
  v15 = sub_1B4D177CC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a3 + 32);
  if (!a6)
  {
    v25 = v20;
    v26 = v19;
    sub_1B4D177BC();
    a5 = sub_1B4D1779C();
    a6 = v22;
    (*(v16 + 8))(v18, v15);
    v20 = v25;
    v19 = v26;
  }

  if (a7 == 2)
  {
    v25 = v20;
    v26 = v19;
    v23 = sub_1B4BC2B00();
    v20 = v25;
    v19 = v26;
    a7 = v23;
  }

  v24 = v27;
  *a8 = a1;
  *(a8 + 8) = v24;
  *(a8 + 16) = v19;
  *(a8 + 32) = v20;
  *(a8 + 48) = v21;
  *(a8 + 56) = a5;
  *(a8 + 64) = a6;
  *(a8 + 72) = a7 & 1;
  *(a8 + 73) = a4 & 1;
}

uint64_t AnnounceUtteranceRequest.utterance.getter()
{
  v1 = *v0;

  return v1;
}

void AnnounceUtteranceRequest.settings.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_1B49B3D28(v2, v3, v4, v5);
}

uint64_t AnnounceUtteranceRequest.requestIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

double AnnounceUtteranceRequest.init(utterance:settings:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D177CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 32);
  sub_1B4D177BC();
  v13 = sub_1B4D1779C();
  v15 = v14;
  v16 = *(v9 + 8);
  v17 = *a3;
  v21 = a3[1];
  v22 = v17;
  v16(v11, v8);
  v18 = sub_1B4BC2B00();
  *a4 = a1;
  *(a4 + 8) = a2;
  v20 = v21;
  result = *&v22;
  *(a4 + 16) = v22;
  *(a4 + 32) = v20;
  *(a4 + 48) = v12;
  *(a4 + 56) = v13;
  *(a4 + 64) = v15;
  *(a4 + 72) = v18 & 1;
  *(a4 + 73) = 0;
  return result;
}

double AnnounceUtteranceRequest.init(utterance:voiceSelection:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D177CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4D177BC();
  v12 = sub_1B4D1779C();
  v14 = v13;
  v15 = *(v9 + 8);
  v16 = *a3;
  v20 = a3[1];
  v21 = v16;
  v15(v11, v8);
  v17 = sub_1B4BC2B00();
  *a4 = a1;
  *(a4 + 8) = a2;
  v19 = v20;
  result = *&v21;
  *(a4 + 16) = v21;
  *(a4 + 32) = v19;
  *(a4 + 48) = 0;
  *(a4 + 56) = v12;
  *(a4 + 64) = v14;
  *(a4 + 72) = v17 & 1;
  *(a4 + 73) = 0;
  return result;
}

unint64_t AnnounceUtteranceRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 72);
  sub_1B49B3D28(v0[2], v0[3], v0[4], v0[5]);
  sub_1B4D1896C();

  MEMORY[0x1B8C7C620](v1, v2);
  MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
  v4 = sub_1B4D181AC();
  MEMORY[0x1B8C7C620](v4);

  MEMORY[0x1B8C7C620](0x6D6165727473202CLL, 0xE900000000000020);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1B8C7C620](v5, v6);

  return 0xD000000000000019;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4C87670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4C876B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CompletedWorkoutsFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t CompletedWorkoutsFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000025;
  v2 = *v0;
  v3 = 0xD000000000000079;
  v4 = 0xD000000000000055;
  if (v2 != 3)
  {
    v4 = 0xD00000000000010FLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000041;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4C87820()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C878F4(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C879B4(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C87A90(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000025;
  v3 = *v1;
  v4 = "sponds to Hard.";
  v5 = "ber_of_workouts>.";
  v6 = 0xD000000000000079;
  v7 = "orkout_type_with_dates>\n}";
  v8 = 0xD000000000000055;
  if (v3 != 3)
  {
    v8 = 0xD00000000000010FLL;
    v7 = " workout of the week.";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000041;
    v4 = " workout of the week.";
  }

  if (*v1 > 1u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t CompletedWorkoutsFact.placeholders()()
{
  v1 = v0[1];
  v34 = *v0;
  *v35 = v1;
  v36 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D2FD80;
  v3 = swift_allocObject();
  v4 = v0[1];
  v3[1] = *v0;
  v3[2] = v4;
  v3[3] = v0[2];
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B4C880D4;
  *(v5 + 24) = v3;
  *(v2 + 32) = 0xD00000000000001CLL;
  *(v2 + 40) = 0x80000001B4D66630;
  *(v2 + 48) = sub_1B4AF87E4;
  *(v2 + 56) = v5;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v6 = swift_allocObject();
  v7 = v0[1];
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = v0[2];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B4C881B4;
  *(v8 + 24) = v6;
  *(v2 + 80) = 0xD00000000000001FLL;
  *(v2 + 88) = 0x80000001B4D66650;
  *(v2 + 96) = sub_1B4AF8C58;
  *(v2 + 104) = v8;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  v9 = swift_allocObject();
  v10 = v0[1];
  v9[1] = *v0;
  v9[2] = v10;
  v9[3] = v0[2];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B4C8825C;
  *(v11 + 24) = v9;
  *(v2 + 128) = 0xD000000000000023;
  *(v2 + 136) = 0x80000001B4D66670;
  *(v2 + 144) = sub_1B4AF8C58;
  *(v2 + 152) = v11;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  v12 = swift_allocObject();
  v13 = v0[1];
  v12[1] = *v0;
  v12[2] = v13;
  v12[3] = v0[2];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B4C88264;
  *(v14 + 24) = v12;
  *(v2 + 176) = 0xD00000000000001ELL;
  *(v2 + 184) = 0x80000001B4D666A0;
  *(v2 + 192) = sub_1B4AF8C58;
  *(v2 + 200) = v14;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  v15 = *(&v34 + 1);
  sub_1B4C882A0(&v34, v33);
  sub_1B4C882A0(&v34, v33);
  sub_1B4C882A0(&v34, v33);
  sub_1B4C882A0(&v34, v33);
  v16 = [v15 localizedName];
  v17 = sub_1B4D1818C();
  v19 = v18;

  strcpy((v2 + 224), "activity_type");
  *(v2 + 238) = -4864;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v2 + 240) = sub_1B4993DFC;
  *(v2 + 248) = v20;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  if (v35[0])
  {
    v21 = [v35[0] localizedName];
    v22 = sub_1B4D1818C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  *(v2 + 272) = 0xD000000000000015;
  *(v2 + 280) = 0x80000001B4D666C0;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  *(v2 + 288) = sub_1B4994004;
  *(v2 + 296) = v25;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0;
  v26 = swift_allocObject();
  v27 = *v35;
  v26[1] = v34;
  v26[2] = v27;
  v26[3] = v36;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B4C88DA4;
  *(v28 + 24) = v26;
  *(v2 + 320) = 0xD000000000000023;
  *(v2 + 328) = 0x80000001B4D666E0;
  *(v2 + 336) = sub_1B4AF8C58;
  *(v2 + 344) = v28;
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  v29 = swift_allocObject();
  v30 = *v35;
  v29[1] = v34;
  v29[2] = v30;
  v29[3] = v36;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B4C88DF4;
  *(v31 + 24) = v29;
  *(v2 + 368) = 0xD00000000000001DLL;
  *(v2 + 376) = 0x80000001B4D66710;
  *(v2 + 384) = sub_1B4AF8C58;
  *(v2 + 392) = v31;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  sub_1B4C882A0(&v34, v33);
  sub_1B4C882A0(&v34, v33);
  return v2;
}

uint64_t sub_1B4C87FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v7 = sub_1B4D18D5C();

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);

  v3 = v2 == 1;
  if (v2 == 1)
  {
    v4 = 0x74756F6B726F77;
  }

  else
  {
    v4 = 0x7374756F6B726F77;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  MEMORY[0x1B8C7C620](v4, v5);

  return v7;
}

uint64_t sub_1B4C880DC(uint64_t a1, uint64_t *a2)
{
  sub_1B4C89008(*a2, sub_1B4C89514);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B49B0578(&qword_1EDC378E8, &qword_1EB8A7B38, &qword_1B4D36300, MEMORY[0x1E69E6310]);
  v2 = sub_1B4D180DC();

  return v2;
}

void sub_1B4C881BC(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(*(a2 + 32), 1))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1B4D125A4();
    v3 = sub_1B4D1863C();
    v4 = [v2 stringFromNumber_];

    if (v4)
    {
      sub_1B4D1818C();
    }
  }
}

void sub_1B4C882FC(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v2 = a2[3];
  }

  v3 = a2[4];
  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(v5, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = sub_1B4D125A4();
  v7 = sub_1B4D1863C();
  v8 = [v6 stringFromNumber_];

  if (v8)
  {
    sub_1B4D1818C();
  }
}

uint64_t sub_1B4C883B4(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v67 = a3;
  v68 = a4;
  v72 = type metadata accessor for WorkoutRecord(0);
  MEMORY[0x1EEE9AC00](v72);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - v12;
  v14 = *(a2 + 16);
  v63 = v14;
  if (v14)
  {
    v62 = a1;
    v15 = *(v11 + 72);
    v71 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a2 + v71;
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v16;
    v69 = v15;
    do
    {
      sub_1B4C8951C(v18, v13);
      if (*&v13[*(v72 + 40) + 8])
      {
        sub_1B4B811EC(v13, v9, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v73 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCED9C(0, *(v17 + 16) + 1, 1);
          v15 = v69;
          v17 = v73;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B4BCED9C((v22 > 1), v23 + 1, 1);
          v15 = v69;
          v17 = v73;
        }

        *(v17 + 16) = v23 + 1;
        sub_1B4B811EC(v9, v17 + v71 + v23 * v15, v21);
      }

      else
      {
        sub_1B4C89580(v13);
      }

      v18 += v15;
      --v14;
    }

    while (v14);
    v65 = *(v17 + 16);

    v76 = MEMORY[0x1E69E7CC0];
    v24 = v63;
    sub_1B4BCF43C(0, v63, 0);
    v25 = v76;
    v64 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
    do
    {
      v26 = v66;
      v27 = v65 != 0;
      sub_1B4C8951C(v16, v66);
      v28 = v67;
      v29 = v67[1];
      v73 = *v67;
      v74 = v29;
      v75 = v67[2];
      v71 = sub_1B4C88960(v26);
      v31 = v30;
      v32 = v28[1];
      v73 = *v28;
      v74 = v32;
      v75 = v28[2];
      v70 = sub_1B4C88B08(v26, v27);
      v34 = v33;
      *&v73 = 40;
      *(&v73 + 1) = 0xE100000000000000;
      v35 = v68;
      v36 = sub_1B4D11F8C();
      [v36 setDateStyle_];

      v37 = v64;
      [*(v35 + v64) setTimeStyle_];
      v38 = *(v35 + v37);
      v39 = sub_1B4D1771C();
      v40 = [v38 stringFromDate_];

      v41 = sub_1B4D1818C();
      v43 = v42;

      MEMORY[0x1B8C7C620](v41, v43);

      MEMORY[0x1B8C7C620](v70, v34);

      MEMORY[0x1B8C7C620](v71, v31);

      MEMORY[0x1B8C7C620](41, 0xE100000000000000);
      v44 = v73;
      sub_1B4C89580(v26);
      v76 = v25;
      v46 = *(v25 + 16);
      v45 = *(v25 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1B4BCF43C((v45 > 1), v46 + 1, 1);
        v25 = v76;
      }

      *(v25 + 16) = v46 + 1;
      *(v25 + 16 * v46 + 32) = v44;
      v16 += v69;
      --v24;
    }

    while (v24);
    a1 = v62;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  *&v73 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B49B0578(&qword_1EDC378E8, &qword_1EB8A7B38, &qword_1B4D36300, MEMORY[0x1E69E6310]);
  v47 = sub_1B4D180DC();
  v49 = v48;

  *&v73 = 0;
  *(&v73 + 1) = 0xE000000000000000;
  sub_1B4D1896C();
  v50 = v63;
  v76 = v63;
  v51 = sub_1B4D18D5C();
  v53 = v52;

  *&v73 = v51;
  *(&v73 + 1) = v53;
  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  v54 = [a1 localizedName];
  v55 = sub_1B4D1818C();
  v57 = v56;

  MEMORY[0x1B8C7C620](v55, v57);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  if (v50 == 1)
  {
    v58 = 0x74756F6B726F77;
  }

  else
  {
    v58 = 0x7374756F6B726F77;
  }

  if (v50 == 1)
  {
    v59 = 0xE700000000000000;
  }

  else
  {
    v59 = 0xE800000000000000;
  }

  MEMORY[0x1B8C7C620](v58, v59);

  MEMORY[0x1B8C7C620](0x7B206E6F20, 0xE500000000000000);
  MEMORY[0x1B8C7C620](v47, v49);

  MEMORY[0x1B8C7C620](125, 0xE100000000000000);
  return v73;
}

unint64_t sub_1B4C88960(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for WorkoutRecord(0) + 40);
  if (!*(v1 + 8))
  {
    v2 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  v2 = *(v1 + 16);

  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1B4D1896C();

  if (*(v2 + 16) == 1)
  {
    v3 = 0x3A72656E69617274;
  }

  else
  {
    v3 = 0x7372656E69617274;
  }

  if (*(v2 + 16) == 1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE90000000000003ALL;
  }

  MEMORY[0x1B8C7C620](v3, v4);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B49B0578(&qword_1EDC378E8, &qword_1EB8A7B38, &qword_1B4D36300, MEMORY[0x1E69E6310]);
  v5 = sub_1B4D180DC();
  v7 = v6;

  MEMORY[0x1B8C7C620](v5, v7);

  return 0xD000000000000012;
}

unint64_t sub_1B4C88B08(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for WorkoutRecord(0);
  if (*(a1 + *(v3 + 40) + 8))
  {
    sub_1B4D1896C();

    v15 = 0xD000000000000012;
    countAndFlagsBits = FitnessPlusModalityKind.nameFromModalityKind()()._countAndFlagsBits;
    MEMORY[0x1B8C7C620](countAndFlagsBits);
  }

  else
  {
    v6 = v3;
    sub_1B4D1896C();

    v15 = 0x206120736120;
    v7 = *(v6 + 32);
    v8 = *(a1 + *(v6 + 28));
    if (*(a1 + v7) <= 1u && *(a1 + v7))
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1B4D18DCC();
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v8 isIndoor:v9 & 1];
    v11 = [v10 localizedName];

    v12 = sub_1B4D1818C();
    v14 = v13;

    MEMORY[0x1B8C7C620](v12, v14);
  }

  MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE800000000000000);
  return v15;
}

void CompletedWorkoutsFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v2 = v1[5];
  if (v2 < 1)
  {
    *a1 = 0;
  }

  else
  {
    if (v1[3] <= 0 || v1[2] == 0)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    if (v2 > 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (v1[4])
    {
      v5 = v4;
    }

    *a1 = v5;
  }
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1B4C88E34()
{
  result = qword_1EB8ADA70;
  if (!qword_1EB8ADA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA70);
  }

  return result;
}

unint64_t sub_1B4C88ED0()
{
  result = qword_1EB8ADA88;
  if (!qword_1EB8ADA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA88);
  }

  return result;
}

unint64_t sub_1B4C88F28()
{
  result = qword_1EB8ADA90;
  if (!qword_1EB8ADA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA90);
  }

  return result;
}

unint64_t sub_1B4C88F7C(uint64_t a1)
{
  result = sub_1B4C88FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C88FA4()
{
  result = qword_1EB8ADA98;
  if (!qword_1EB8ADA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADA98);
  }

  return result;
}

void sub_1B4C89008(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v3, 0);
    v35 = v36;
    v4 = v2 + 64;
    v5 = sub_1B4D188DC();
    v6 = 0;
    v7 = *(v2 + 36);
    v29 = v2 + 72;
    v30 = v3;
    v31 = v7;
    v32 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v34 = v6;
      v10 = *(*(v2 + 48) + 8 * v5);
      v11 = v2;
      v12 = *(*(v2 + 56) + 8 * v5);
      v13 = v10;

      v14 = a2(v13, v12);
      v16 = v15;

      v17 = v35;
      v19 = *(v35 + 16);
      v18 = *(v35 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF43C((v18 > 1), v19 + 1, 1);
        v17 = v35;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      v8 = 1 << *(v11 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v4 = v32;
      v21 = *(v32 + 8 * v9);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v11;
      v35 = v17;
      v22 = *(v11 + 36);
      v7 = v31;
      if (v31 != v22)
      {
        goto LABEL_26;
      }

      v23 = v21 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (v29 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1B497CD6C(v5, v31, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1B497CD6C(v5, v31, 0);
      }

LABEL_4:
      v6 = v34 + 1;
      v5 = v8;
      if (v34 + 1 == v30)
      {
        return;
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
  }
}

uint64_t sub_1B4C8928C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = 0xE000000000000000;
  if (v1)
  {
    v4 = *(v0 + 24);
  }

  else
  {
    v4 = 0;
  }

  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADAA0, &unk_1B4D44728);
  v5 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v5);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);

  if (v1)
  {
    v6 = v2 < 2;
    LOBYTE(v14) = v1 == 0;
    v7 = [v1 localizedName];
    v8 = sub_1B4D1818C();
    v3 = v9;

    if (v2 > 1)
    {
      v10 = 0xE800000000000000;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v6 = 1;
  }

  v10 = 0xE700000000000000;
LABEL_9:
  if (v6)
  {
    v11 = 0x74756F6B726F77;
  }

  else
  {
    v11 = 0x7374756F6B726F77;
  }

  MEMORY[0x1B8C7C620](v8, v3);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);

  MEMORY[0x1B8C7C620](v11, v10);

  return 0;
}

id sub_1B4C89448()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 && ([v2 effectiveTypeIdentifier] == 50 || objc_msgSend(v2, sel_effectiveTypeIdentifier) == 20))
  {
    return 0xD000000000000011;
  }

  [v1 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v4 = result;
    sub_1B4D1818C();

    v5 = sub_1B4D181BC();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4C8951C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C89580(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static GoalAchievedPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1B49A8448(a1, &v7);
  if (!v8)
  {
    result = sub_1B49A84B8(&v7);
    goto LABEL_6;
  }

  sub_1B49A24C4(&v7, v9);
  if ((v4 - 11) >= 4u || (__swift_project_boxed_opaque_existential_1(v9, v9[3]), LOBYTE(v7) = v4 - 11, v5.value = RingsRepresentable.hasClosedRing(for:)(&v7).value, v5.value == 2))
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_6:
    *a3 = 0;
    *(a3 + 8) = 1;
    return result;
  }

  *a3 = v5.value;
  *(a3 + 8) = 0;
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

unint64_t sub_1B4C896B8(uint64_t a1)
{
  result = sub_1B4BA97D0();
  *(a1 + 8) = result;
  return result;
}

uint64_t CurrentDayFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t CurrentDayFact.TemplateString.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000048;
  v3 = 0xD000000000000045;
  if (v1 != 3)
  {
    v3 = 0xD000000000000047;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000027;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4C897F0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C898BC(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C89974(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C89A48(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000027;
  v3 = *v1;
  v4 = "activitySummaryContext";
  v5 = "_week>. It's a weekend.";
  v6 = 0xD000000000000048;
  v7 = "f the week in my locale.";
  v8 = 0xD000000000000045;
  if (v3 != 3)
  {
    v8 = 0xD000000000000047;
    v7 = "he week in my locale.";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = "_week>. It's a weekday.";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t CurrentDayFact.placeholders()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D1A800;
  type metadata accessor for CurrentDayFact(0);
  sub_1B4955758();
  v1 = sub_1B4D1885C();
  v3 = v2;

  *(v0 + 32) = 0x775F666F5F796164;
  *(v0 + 40) = 0xEB000000006B6565;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v0 + 48) = sub_1B4993DFC;
  *(v0 + 56) = v4;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t CurrentDayFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v1 = sub_1B4D1777C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v10 = sub_1B4D1796C();
  __swift_project_value_buffer(v10, qword_1EDC3CE48);
  v24 = sub_1B4D178AC();
  v11 = sub_1B4D178CC();
  v12 = sub_1B4D1771C();
  v13 = [v11 hk:v12 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  v14 = sub_1B4D1791C();
  v15 = v27;
  Date.middleOfWeek()(v6);
  if (v15)
  {
    return (*(v2 + 8))(v9, v1);
  }

  LODWORD(v27) = v14;
  v23 = sub_1B4D1791C();
  v17 = v26;
  Date.endOfWeek()(v26);
  v18 = (v2 + 8);
  v19 = sub_1B4D1791C();
  v20 = *v18;
  (*v18)(v17, v1);
  v20(v6, v1);
  result = (v20)(v9, v1);
  v21 = v24 & 1;
  if (v19)
  {
    v21 = 4;
  }

  if (v23)
  {
    v21 = 3;
  }

  if (v27)
  {
    v21 = 2;
  }

  *v25 = v21;
  return result;
}

unint64_t sub_1B4C89FA8()
{
  result = qword_1EB8ADAA8;
  if (!qword_1EB8ADAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADAA8);
  }

  return result;
}

unint64_t sub_1B4C8A000()
{
  result = qword_1EB8ADAB0;
  if (!qword_1EB8ADAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADAB8, &qword_1B4D44830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADAB0);
  }

  return result;
}

unint64_t sub_1B4C8A068()
{
  result = qword_1EB8ADAC0;
  if (!qword_1EB8ADAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADAC0);
  }

  return result;
}

unint64_t sub_1B4C8A0C0()
{
  result = qword_1EB8ADAC8;
  if (!qword_1EB8ADAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADAC8);
  }

  return result;
}

unint64_t sub_1B4C8A114(uint64_t a1)
{
  result = sub_1B4C8A13C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C8A13C()
{
  result = qword_1EB8ADAD0;
  if (!qword_1EB8ADAD0)
  {
    type metadata accessor for CurrentDayFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADAD0);
  }

  return result;
}

uint64_t FitnessPlusWorkoutRepresentable.cacheIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 48))(a1, a2, v8);
  v11 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4D1796C();
  __swift_project_value_buffer(v12, qword_1EDC3CE48);
  v13 = sub_1B4D178CC();
  v14 = _HKCacheIndexFromDate();

  result = (*(v7 + 8))(v10, v6);
  *a3 = v14;
  return result;
}

uint64_t RingProgressFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t RingProgressFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000037;
  }

  else
  {
    return 0xD00000000000003ALL;
  }
}

uint64_t sub_1B4C8A470(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000037;
  }

  else
  {
    v3 = 0xD00000000000003ALL;
  }

  if (v2)
  {
    v4 = "tch";
  }

  else
  {
    v4 = "ngs today: <sub_templates>";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000037;
  }

  else
  {
    v6 = 0xD00000000000003ALL;
  }

  if (*a2)
  {
    v7 = "ngs today: <sub_templates>";
  }

  else
  {
    v7 = "tch";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4C8A51C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C8A59C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C8A608(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C8A684@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B4C8A6E4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000037;
  }

  else
  {
    v2 = 0xD00000000000003ALL;
  }

  if (*v1)
  {
    v3 = "ngs today: <sub_templates>";
  }

  else
  {
    v3 = "tch";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t RingProgressFact.SubTemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t RingProgressFact.SubTemplateString.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000102;
  if (v1 != 6)
  {
    v2 = 0xD0000000000000B1;
  }

  v3 = 0xD0000000000000D7;
  if (v1 != 4)
  {
    v3 = 0xD0000000000000DFLL;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD0000000000000E6;
  if (v1 != 2)
  {
    v4 = 0xD00000000000009DLL;
  }

  v5 = 0xD0000000000000C7;
  if (!*v0)
  {
    v5 = 0xD0000000000000BFLL;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

const char *sub_1B4C8A8B8@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = " is <exercise_ring_percentage>.";
  v4 = 0xD000000000000102;
  if (v2 != 6)
  {
    v4 = 0xD0000000000000B1;
    v3 = "_ring_percentage>.";
  }

  v5 = "ng is <move_ring_percentage>.";
  v6 = 0xD0000000000000D7;
  if (v2 != 4)
  {
    v6 = 0xD0000000000000DFLL;
    v5 = "rcise_ring_percentage>.";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "<move_ring_percentage>.";
  v8 = 0xD0000000000000E6;
  if (v2 != 2)
  {
    v8 = 0xD00000000000009DLL;
  }

  result = "I closed my move ring during the workout. My move ring is currently at <formatted_move_ring_value>. My goal for today is <formatted_move_goal>. My progress for my move ring is <move_ring_percentage>.";
  if (v2 != 2)
  {
    v7 = "move_ring_percentage>.";
  }

  v10 = 0xD0000000000000C7;
  if (*v1)
  {
    v11 = "ring is <move_ring_percentage>.";
  }

  else
  {
    v10 = 0xD0000000000000BFLL;
    v11 = " rings: <sub_templates>";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

Swift::String __swiftcall RingProgressFact.separator()()
{
  v0 = 10;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RingProgressFact.placeholders()()
{
  v1 = type metadata accessor for RingProgressFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D2FD80;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  *(v4 + 32) = 0xD000000000000019;
  *(v4 + 40) = 0x80000001B4D66790;
  *(v4 + 48) = sub_1B4C8AE78;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  *(v4 + 80) = 0xD000000000000013;
  *(v4 + 88) = 0x80000001B4D667B0;
  *(v4 + 96) = sub_1B4C8B458;
  *(v4 + 104) = v7;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  *(v4 + 128) = 0xD000000000000014;
  *(v4 + 136) = 0x80000001B4D667D0;
  *(v4 + 144) = sub_1B4C8BCF4;
  *(v4 + 152) = v8;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  *(v4 + 176) = 0xD00000000000001DLL;
  *(v4 + 184) = 0x80000001B4D667F0;
  *(v4 + 192) = sub_1B4C8BD0C;
  *(v4 + 200) = v9;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v5);
  *(v4 + 224) = 0xD00000000000001DLL;
  *(v4 + 232) = 0x80000001B4D66810;
  *(v4 + 240) = sub_1B4C8C818;
  *(v4 + 248) = v10;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v5);
  *(v4 + 272) = 0xD000000000000017;
  *(v4 + 280) = 0x80000001B4D66830;
  *(v4 + 288) = sub_1B4C8CCE8;
  *(v4 + 296) = v11;
  *(v4 + 304) = 0;
  *(v4 + 312) = 0;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v5);
  *(v4 + 320) = 0xD000000000000018;
  *(v4 + 328) = 0x80000001B4D66850;
  *(v4 + 336) = sub_1B4C8CEC8;
  *(v4 + 344) = v12;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  sub_1B4C8ADB0(v0, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_1B4C8AE14(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v5);
  *(v4 + 368) = 0xD000000000000021;
  *(v4 + 376) = 0x80000001B4D66870;
  *(v4 + 384) = sub_1B4C8D794;
  *(v4 + 392) = v13;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  return v4;
}

uint64_t sub_1B4C8ADB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingProgressFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C8AE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingProgressFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C8AE90(uint64_t a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  sub_1B4974FBC(v1, v15, &qword_1EB8AD540, &unk_1B4D419A0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8AD540, &unk_1B4D419A0);
    v24 = type metadata accessor for RingProgressFact(0);
    v25 = v43;
    sub_1B4974FBC(v1 + *(v24 + 20), v43, &qword_1EB8AD538, &qword_1B4D41998);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      sub_1B4975024(v25, &qword_1EB8AD538, &qword_1B4D41998);
      return 0;
    }

    else
    {
      v31 = v40;
      v30 = v41;
      v32 = *(v40 + 16);
      v33 = v38;
      v32(v38, v25 + *(v26 + 28), v41);
      sub_1B4975024(v25, qword_1EB8A8DB8, &qword_1B4D25860);
      v34 = v39;
      (*(v31 + 32))(v39, v33, v30);
      v35 = v42;
      v32(v42, v34, v30);
      (*(v31 + 56))(v35, 0, 1, v30);
      v27 = sub_1B4C8E810(v35);
      sub_1B4975024(v35, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      (*(v31 + 8))(v34, v30);
    }
  }

  else
  {
    v28 = *(v23 + 28);
    v29 = *(v17 + 16);
    v29(v19, &v15[v28], v16);
    sub_1B4975024(v15, &qword_1EB8A8DB0, &qword_1B4D25858);
    (*(v17 + 32))(v22, v19, v16);
    v29(v12, v22, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v27 = sub_1B4C8D870(v44, v12);
    sub_1B4975024(v12, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    (*(v17 + 8))(v22, v16);
  }

  return v27;
}

uint64_t sub_1B4C8B470(uint64_t a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  sub_1B4974FBC(v1, v15, &qword_1EB8AD540, &unk_1B4D419A0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8AD540, &unk_1B4D419A0);
    v24 = type metadata accessor for RingProgressFact(0);
    v25 = v43;
    sub_1B4974FBC(v1 + *(v24 + 20), v43, &qword_1EB8AD538, &qword_1B4D41998);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      sub_1B4975024(v25, &qword_1EB8AD538, &qword_1B4D41998);
      return 0;
    }

    else
    {
      v31 = v40;
      v30 = v41;
      v32 = *(v40 + 16);
      v33 = v38;
      v32(v38, v25 + *(v26 + 32), v41);
      sub_1B4975024(v25, qword_1EB8A8DB8, &qword_1B4D25860);
      v34 = v39;
      (*(v31 + 32))(v39, v33, v30);
      v35 = v42;
      v32(v42, v34, v30);
      (*(v31 + 56))(v35, 0, 1, v30);
      v27 = sub_1B4C8E810(v35);
      sub_1B4975024(v35, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      (*(v31 + 8))(v34, v30);
    }
  }

  else
  {
    v28 = *(v23 + 32);
    v29 = *(v17 + 16);
    v29(v19, &v15[v28], v16);
    sub_1B4975024(v15, &qword_1EB8A8DB0, &qword_1B4D25858);
    (*(v17 + 32))(v22, v19, v16);
    v29(v12, v22, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v27 = sub_1B4C8D870(v44, v12);
    sub_1B4975024(v12, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    (*(v17 + 8))(v22, v16);
  }

  return v27;
}

uint64_t sub_1B4C8BA38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  sub_1B4974FBC(a2, &v21 - v7, &qword_1EB8AD540, &unk_1B4D419A0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8AD540, &unk_1B4D419A0);
    v10 = type metadata accessor for RingProgressFact(0);
    sub_1B4974FBC(a2 + *(v10 + 20), v5, &qword_1EB8AD538, &qword_1B4D41998);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
    if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
    {
      sub_1B4975024(v5, &qword_1EB8AD538, &qword_1B4D41998);
      return 0;
    }

    v13 = *&v5[*(v11 + 40)];
    v14 = qword_1EB8A8DB8;
    v15 = &qword_1B4D25860;
    v16 = v5;
  }

  else
  {
    v13 = *&v8[*(v9 + 40)];
    v14 = &qword_1EB8A8DB0;
    v15 = &qword_1B4D25858;
    v16 = v8;
  }

  sub_1B4975024(v16, v14, v15);
  v17 = sub_1B4D1270C();
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v19 = [v17 stringFromNumber_];

  if (!v19)
  {
    return 0;
  }

  v20 = sub_1B4D1818C();

  return v20;
}

uint64_t sub_1B4C8BD98(uint64_t a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  sub_1B4974FBC(v1, v15, &qword_1EB8AD540, &unk_1B4D419A0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8AD540, &unk_1B4D419A0);
    v24 = type metadata accessor for RingProgressFact(0);
    v25 = v43;
    sub_1B4974FBC(v1 + *(v24 + 20), v43, &qword_1EB8AD538, &qword_1B4D41998);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      sub_1B4975024(v25, &qword_1EB8AD538, &qword_1B4D41998);
      return 0;
    }

    else
    {
      v31 = v40;
      v30 = v41;
      v32 = *(v40 + 16);
      v33 = v38;
      v32(v38, v25 + *(v26 + 36), v41);
      sub_1B4975024(v25, qword_1EB8A8DB8, &qword_1B4D25860);
      v34 = v39;
      (*(v31 + 32))(v39, v33, v30);
      v35 = v42;
      v32(v42, v34, v30);
      (*(v31 + 56))(v35, 0, 1, v30);
      v27 = sub_1B4C8E810(v35);
      sub_1B4975024(v35, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      (*(v31 + 8))(v34, v30);
    }
  }

  else
  {
    v28 = *(v23 + 36);
    v29 = *(v17 + 16);
    v29(v19, &v15[v28], v16);
    sub_1B4975024(v15, &qword_1EB8A8DB0, &qword_1B4D25858);
    (*(v17 + 32))(v22, v19, v16);
    v29(v12, v22, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v27 = sub_1B4C8D870(v44, v12);
    sub_1B4975024(v12, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    (*(v17 + 8))(v22, v16);
  }

  return v27;
}

uint64_t sub_1B4C8C360(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = type metadata accessor for RingProgressFact(0);
  sub_1B4974FBC(a2 + *(v19 + 24), v12, &qword_1EB8AD538, &qword_1B4D41998);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AD538, &qword_1B4D41998);
    v21 = 1;
  }

  else
  {
    (*(v4 + 16))(v18, &v12[*(v20 + 28)], v3);
    sub_1B4975024(v12, qword_1EB8A8DB8, &qword_1B4D25860);
    v21 = 0;
  }

  (*(v4 + 56))(v18, v21, 1, v3);
  sub_1B4974FBC(v18, v15, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v22 = 0;
  }

  else
  {
    (*(v4 + 32))(v9, v15, v3);
    v23 = [objc_opt_self() minutes];
    sub_1B4D1745C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v25 = sub_1B4BCA7BC(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = sub_1B4D15F5C(v6, v25);

    v26 = *(v4 + 8);
    v26(v6, v3);
    v26(v9, v3);
  }

  sub_1B4975024(v18, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  return v22;
}

uint64_t sub_1B4C8C830(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = type metadata accessor for RingProgressFact(0);
  sub_1B4974FBC(a2 + *(v19 + 24), v12, &qword_1EB8AD538, &qword_1B4D41998);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AD538, &qword_1B4D41998);
    v21 = 1;
  }

  else
  {
    (*(v4 + 16))(v18, &v12[*(v20 + 32)], v3);
    sub_1B4975024(v12, qword_1EB8A8DB8, &qword_1B4D25860);
    v21 = 0;
  }

  (*(v4 + 56))(v18, v21, 1, v3);
  sub_1B4974FBC(v18, v15, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v22 = 0;
  }

  else
  {
    (*(v4 + 32))(v9, v15, v3);
    v23 = [objc_opt_self() minutes];
    sub_1B4D1745C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v25 = sub_1B4BCA7BC(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = sub_1B4D15F5C(v6, v25);

    v26 = *(v4 + 8);
    v26(v6, v3);
    v26(v9, v3);
  }

  sub_1B4975024(v18, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  return v22;
}

uint64_t sub_1B4C8CD00(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for RingProgressFact(0);
  sub_1B4974FBC(a2 + *(v6 + 24), v5, &qword_1EB8AD538, &qword_1B4D41998);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8AD538, &qword_1B4D41998);
    return 0;
  }

  else
  {
    v9 = *&v5[*(v7 + 40)];
    sub_1B4975024(v5, qword_1EB8A8DB8, &qword_1B4D25860);
    v10 = sub_1B4D1270C();
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v12 = [v10 stringFromNumber_];

    if (v12)
    {
      v13 = sub_1B4D1818C();

      return v13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B4C8CEE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = type metadata accessor for RingProgressFact(0);
  sub_1B4974FBC(a2 + *(v19 + 24), v12, &qword_1EB8AD538, &qword_1B4D41998);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AD538, &qword_1B4D41998);
    v21 = 1;
  }

  else
  {
    (*(v4 + 16))(v18, &v12[*(v20 + 36)], v3);
    sub_1B4975024(v12, qword_1EB8A8DB8, &qword_1B4D25860);
    v21 = 0;
  }

  (*(v4 + 56))(v18, v21, 1, v3);
  sub_1B4974FBC(v18, v15, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v22 = 0;
  }

  else
  {
    (*(v4 + 32))(v9, v15, v3);
    v23 = [objc_opt_self() minutes];
    sub_1B4D1745C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v25 = sub_1B4BCA7BC(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = sub_1B4D15F5C(v6, v25);

    v26 = *(v4 + 8);
    v26(v6, v3);
    v26(v9, v3);
  }

  sub_1B4975024(v18, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  return v22;
}

uint64_t objectdestroyTm_7()
{
  v1 = v0;
  v2 = type metadata accessor for RingProgressFact(0);
  v3 = *(*(v2 - 1) + 80);
  v27 = *(*(v2 - 1) + 64);
  v28 = (v3 + 16) & ~v3;
  v4 = v0 + v28;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  if (!(*(*(v5 - 1) + 48))(v0 + v28, 1, v5))
  {
    v6 = v5[7];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    v8 = *(*(v7 - 8) + 8);
    v8(v4 + v6, v7);
    v8(v4 + v5[8], v7);
    v8(v4 + v5[9], v7);
  }

  v9 = v4 + v2[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {
    v12 = v10[7];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v26 = v3;
    v14 = *(*(v13 - 8) + 8);
    v14(v9 + v12, v13);
    v14(v9 + v10[8], v13);
    v14(v9 + v10[9], v13);
    v3 = v26;
  }

  v15 = v4 + v2[6];
  if (!v11(v15, 1, v10))
  {
    v16 = v10[7];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v18 = v1;
    v19 = *(*(v17 - 8) + 8);
    v19(v15 + v16, v17);
    v19(v15 + v10[8], v17);
    v19(v15 + v10[9], v17);
    v1 = v18;
  }

  v20 = v4 + v2[7];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v22 = v21[7];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v24 = *(*(v23 - 8) + 8);
    v24(v20 + v22, v23);
    v24(v20 + v21[8], v23);
    v24(v20 + v21[9], v23);
  }

  return MEMORY[0x1EEE6BDD0](v1, v28 + v27, v3 | 7);
}

uint64_t sub_1B4C8D7AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RingProgressFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t RingProgressFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  result = type metadata accessor for RingProgressFact(0);
  *a1 = (*(v1 + *(result + 32)) & 1) == 0;
  return result;
}

uint64_t sub_1B4C8D870(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1B4974FBC(a2, v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v14);
    v16 = v15;
    sub_1B4D1745C();
    v17 = sub_1B4D12160();
    v18 = sub_1B4D12A28(v9);

    v19 = *(v7 + 8);
    v19(v9, v6);
    v19(v12, v6);
    return v18;
  }
}

char *_s19FitnessIntelligence16RingProgressFactV18selectSubTemplates9formatterSayAC0G14TemplateStringOGAA15PromptFormatterC_tF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v66 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v63 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  sub_1B4974FBC(v0, v13, &qword_1EB8AD540, &unk_1B4D419A0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_1B498B270(v13, v17, &qword_1EB8A8DB0, &qword_1B4D25858);
    v22 = *&v17[v14[10]];
    v23 = *&v17[v14[11]] >= 1.0 || v22 < 1.0;
    v20 = v7;
    if (!v23)
    {
      v38 = sub_1B4A1ED98(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = v38;
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      v19 = v6;
      if (v40 >= v39 >> 1)
      {
        v21 = sub_1B4A1ED98((v39 > 1), v40 + 1, 1, v38);
      }

      sub_1B4975024(v17, &qword_1EB8A8DB0, &qword_1B4D25858);
      *(v21 + 2) = v40 + 1;
      goto LABEL_34;
    }

    v19 = v6;
    if (v22 < 1.0)
    {
      v24 = v17[v14[12]];
      v21 = sub_1B4A1ED98(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      v27 = v25 >> 1;
      v28 = v26 + 1;
      if (v24 == 1)
      {
        if (v27 <= v26)
        {
          v21 = sub_1B4A1ED98((v25 > 1), v26 + 1, 1, v21);
        }

        sub_1B4975024(v17, &qword_1EB8A8DB0, &qword_1B4D25858);
        *(v21 + 2) = v28;
        goto LABEL_24;
      }

      if (v27 <= v26)
      {
        v21 = sub_1B4A1ED98((v25 > 1), v26 + 1, 1, v21);
      }

      sub_1B4975024(v17, &qword_1EB8A8DB0, &qword_1B4D25858);
      *(v21 + 2) = v28;
LABEL_45:
      v36 = &v21[v26];
      v37 = 3;
      goto LABEL_46;
    }

    v21 = sub_1B4A1ED98(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    if (v42 >= v41 >> 1)
    {
      v21 = sub_1B4A1ED98((v41 > 1), v42 + 1, 1, v21);
    }

    sub_1B4975024(v17, &qword_1EB8A8DB0, &qword_1B4D25858);
    *(v21 + 2) = v42 + 1;
LABEL_41:
    v21[v42 + 32] = 0;
    goto LABEL_47;
  }

  sub_1B4975024(v13, &qword_1EB8AD540, &unk_1B4D419A0);
  v18 = type metadata accessor for RingProgressFact(0);
  sub_1B4974FBC(v0 + *(v18 + 20), v5, &qword_1EB8AD538, &qword_1B4D41998);
  v19 = v6;
  v20 = v7;
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8AD538, &qword_1B4D41998);
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v29 = v64;
  sub_1B498B270(v5, v64, qword_1EB8A8DB8, &qword_1B4D25860);
  v30 = *(v29 + v19[10]);
  if (*(v29 + v19[11]) < 1.0 && v30 >= 1.0)
  {
    v43 = sub_1B4A1ED98(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = v43;
    v40 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v40 >= v44 >> 1)
    {
      v21 = sub_1B4A1ED98((v44 > 1), v40 + 1, 1, v43);
    }

    sub_1B4975024(v29, qword_1EB8A8DB8, &qword_1B4D25860);
    *(v21 + 2) = v40 + 1;
LABEL_34:
    v21[v40 + 32] = 1;
    goto LABEL_47;
  }

  if (v30 >= 1.0)
  {
    v21 = sub_1B4A1ED98(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v42 = *(v21 + 2);
    v45 = *(v21 + 3);
    if (v42 >= v45 >> 1)
    {
      v21 = sub_1B4A1ED98((v45 > 1), v42 + 1, 1, v21);
    }

    sub_1B4975024(v29, qword_1EB8A8DB8, &qword_1B4D25860);
    *(v21 + 2) = v42 + 1;
    goto LABEL_41;
  }

  v32 = *(v29 + v19[12]);
  v21 = sub_1B4A1ED98(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = *(v21 + 2);
  v33 = *(v21 + 3);
  v34 = v33 >> 1;
  v35 = v26 + 1;
  if (v32 != 1)
  {
    if (v34 <= v26)
    {
      v21 = sub_1B4A1ED98((v33 > 1), v26 + 1, 1, v21);
    }

    sub_1B4975024(v29, qword_1EB8A8DB8, &qword_1B4D25860);
    *(v21 + 2) = v35;
    goto LABEL_45;
  }

  if (v34 <= v26)
  {
    v21 = sub_1B4A1ED98((v33 > 1), v26 + 1, 1, v21);
  }

  sub_1B4975024(v29, qword_1EB8A8DB8, &qword_1B4D25860);
  *(v21 + 2) = v35;
LABEL_24:
  v36 = &v21[v26];
  v37 = 2;
LABEL_46:
  v36[32] = v37;
LABEL_47:
  v46 = v66;
  v47 = type metadata accessor for RingProgressFact(0);
  sub_1B4974FBC(v0 + *(v47 + 24), v46, &qword_1EB8AD538, &qword_1B4D41998);
  if ((*(v20 + 48))(v46, 1, v19) == 1)
  {
    sub_1B4975024(v46, &qword_1EB8AD538, &qword_1B4D41998);
  }

  else
  {
    v48 = v65;
    sub_1B498B270(v46, v65, qword_1EB8A8DB8, &qword_1B4D25860);
    v49 = *(v48 + v19[10]);
    if (*(v48 + v19[11]) >= 1.0 || v49 < 1.0)
    {
      if (v49 >= 1.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1B4A1ED98(0, *(v21 + 2) + 1, 1, v21);
        }

        v59 = *(v21 + 2);
        v58 = *(v21 + 3);
        if (v59 >= v58 >> 1)
        {
          v21 = sub_1B4A1ED98((v58 > 1), v59 + 1, 1, v21);
        }

        sub_1B4975024(v48, qword_1EB8A8DB8, &qword_1B4D25860);
        *(v21 + 2) = v59 + 1;
        v52 = &v21[v59];
        v53 = 4;
      }

      else
      {
        v54 = *(v48 + v19[12]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (v54 == 1)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = sub_1B4A1ED98(0, *(v21 + 2) + 1, 1, v21);
          }

          v57 = *(v21 + 2);
          v56 = *(v21 + 3);
          if (v57 >= v56 >> 1)
          {
            v21 = sub_1B4A1ED98((v56 > 1), v57 + 1, 1, v21);
          }

          sub_1B4975024(v48, qword_1EB8A8DB8, &qword_1B4D25860);
          *(v21 + 2) = v57 + 1;
          v52 = &v21[v57];
          v53 = 6;
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = sub_1B4A1ED98(0, *(v21 + 2) + 1, 1, v21);
          }

          v61 = *(v21 + 2);
          v60 = *(v21 + 3);
          if (v61 >= v60 >> 1)
          {
            v21 = sub_1B4A1ED98((v60 > 1), v61 + 1, 1, v21);
          }

          sub_1B4975024(v48, qword_1EB8A8DB8, &qword_1B4D25860);
          *(v21 + 2) = v61 + 1;
          v52 = &v21[v61];
          v53 = 7;
        }
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1ED98(0, *(v21 + 2) + 1, 1, v21);
      }

      v51 = *(v21 + 2);
      v50 = *(v21 + 3);
      if (v51 >= v50 >> 1)
      {
        v21 = sub_1B4A1ED98((v50 > 1), v51 + 1, 1, v21);
      }

      sub_1B4975024(v48, qword_1EB8A8DB8, &qword_1B4D25860);
      *(v21 + 2) = v51 + 1;
      v52 = &v21[v51];
      v53 = 5;
    }

    v52[32] = v53;
  }

  return v21;
}

unint64_t sub_1B4C8E4B8()
{
  result = qword_1EB8ADAD8;
  if (!qword_1EB8ADAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADAD8);
  }

  return result;
}

unint64_t sub_1B4C8E540()
{
  result = qword_1EB8ADAF0;
  if (!qword_1EB8ADAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADAF0);
  }

  return result;
}

unint64_t sub_1B4C8E5C8()
{
  result = qword_1EB8ADB08;
  if (!qword_1EB8ADB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB08);
  }

  return result;
}

unint64_t sub_1B4C8E620()
{
  result = qword_1EB8ADB10;
  if (!qword_1EB8ADB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB10);
  }

  return result;
}

uint64_t sub_1B4C8E674(uint64_t a1)
{
  result = sub_1B4C8E7AC(&qword_1EB8AD528, &protocol conformance descriptor for RingProgressFact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C8E6BC()
{
  result = qword_1EB8ADB18;
  if (!qword_1EB8ADB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB18);
  }

  return result;
}

unint64_t sub_1B4C8E714()
{
  result = qword_1EB8ADB20;
  if (!qword_1EB8ADB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB20);
  }

  return result;
}

uint64_t sub_1B4C8E768(uint64_t a1)
{
  result = sub_1B4C8E7AC(&qword_1EB8ADB28, &protocol conformance descriptor for RingProgressFact);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4C8E7AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RingProgressFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C8E810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1B4974FBC(a1, v4, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B4975024(v4, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v13 = [objc_opt_self() minutes];
    sub_1B4D1745C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v15 = sub_1B4BCA7BC(v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v16 = sub_1B4D15F5C(v8, v15);

    v17 = *(v6 + 8);
    v17(v8, v5);
    v17(v11, v5);
    return v16;
  }
}

uint64_t sub_1B4C8EB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, _BYTE *a7@<X8>)
{
  v8 = v7;
  v122 = a6;
  v124 = a4;
  v110 = a1;
  v113 = a7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v116);
  v112 = v106 - v14;
  if (*(a2 + 16))
  {
    v15 = *(a2 + 16);
    v16 = (a2 + 32);
    v107 = (v12 + 8);
    *&v13 = 136315394;
    v117 = v13;
    *&v13 = 136316418;
    v111 = v13;
    v119 = a5;
    v120 = a3;
    v17 = v15;
    while (1)
    {
      v18 = *v16;
      v125 = v16 + 1;
      memcpy(v128, a5, sizeof(v128));
      LOBYTE(v126) = v18;
      v127 = v124;
      *&result = COERCE_DOUBLE(sub_1B4C91D08(v128, &v126, &v127, a3));
      if (v8)
      {
        return result;
      }

      v22 = v21;
      if (!v21)
      {
        break;
      }

      v23 = *&result;
      v24 = v20;
      memcpy(v129, v122, 0x188uLL);
      if (sub_1B4B6D850(v129) != 1)
      {
        memcpy(v128, v129, sizeof(v128));
        LOBYTE(v126) = v18;
        v127 = v124;
        v25 = COERCE_DOUBLE(sub_1B4C91D08(v128, &v126, &v127, a3));
        v28 = v27;
        v123 = v17;
        if (v27)
        {
          v29 = v26;
          v118 = v25;
          if ((v26 != v24 || v27 != v22) && (sub_1B4D18DCC() & 1) == 0 && v118 != v23)
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v47 = sub_1B4D17F6C();
            __swift_project_value_buffer(v47, qword_1EDC36F00);

            v115 = sub_1B4D17F5C();
            v48 = sub_1B4D1873C();

            LODWORD(v114) = v48;
            v49 = v48;
            v50 = v115;
            if (os_log_type_enabled(v115, v49))
            {
              v121 = 0;
              v51 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v128[0] = v109;
              *v51 = v111;
              LOBYTE(v126) = v124;
              v52 = WorkoutRecordFactType.description.getter();
              v108 = sub_1B49558AC(v52, v53, v128);

              *(v51 + 4) = v108;
              *(v51 + 12) = 2048;
              *(v51 + 14) = v118;
              *(v51 + 22) = 2048;
              *(v51 + 24) = v23;
              *(v51 + 32) = 2080;
              v54 = sub_1B49558AC(v29, v28, v128);

              *(v51 + 34) = v54;
              *(v51 + 42) = 2080;
              *(v51 + 44) = sub_1B49558AC(v24, v22, v128);
              *(v51 + 52) = 2080;
              v55 = 0xE90000000000006BLL;
              v56 = 0xE900000000000072;
              v57 = 0x6165792073696874;
              if (v18 != 3)
              {
                v57 = 1919252069;
                v56 = 0xE400000000000000;
              }

              if (v18 == 2)
              {
                v57 = 0x6E6F6D2073696874;
                v56 = 0xEA00000000006874;
              }

              v58 = 0x7961642073696874;
              if (v18)
              {
                v58 = 0x6565772073696874;
              }

              else
              {
                v55 = 0xE800000000000000;
              }

              if (v18 <= 1)
              {
                v59 = v58;
              }

              else
              {
                v59 = v57;
              }

              if (v18 <= 1)
              {
                v60 = v55;
              }

              else
              {
                v60 = v56;
              }

              v61 = sub_1B49558AC(v59, v60, v128);

              *(v51 + 54) = v61;
              v62 = v115;
              _os_log_impl(&dword_1B4953000, v115, v114, "[NEW RECORD] factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v51, 0x3Eu);
              v63 = v109;
              swift_arrayDestroy();
              MEMORY[0x1B8C7DDA0](v63, -1, -1);
              MEMORY[0x1B8C7DDA0](v51, -1, -1);

              v8 = v121;
            }

            else
            {
            }

            a5 = v119;
            v128[0] = v24;
            v128[1] = v22;
            MEMORY[0x1EEE9AC00](v64);
            v106[-2] = v128;
            v78 = sub_1B49B1748(sub_1B4C926F8, &v106[-4], v110);
            a3 = v120;
            if (v78)
            {
              if (qword_1EDC36DF0 != -1)
              {
                swift_once();
              }

              v101 = qword_1EDC36DF8;
              v102 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
              sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
              v103 = v101;
              v104 = v113;
              sub_1B4D1741C();
              *v104 = 18;
              v104[v102[6]] = v18;
              *&v104[v102[7]] = v120;
              v105 = &v104[v102[8]];
              *v105 = v24;
              v105[1] = v22;
              *&result = COERCE_DOUBLE((*(*(v102 - 1) + 56))(v104, 0, 1, v102));
              return result;
            }

            goto LABEL_115;
          }

          v114 = v29;
          if (qword_1EDC36EF8 != -1)
          {
            swift_once();
          }

          v30 = sub_1B4D17F6C();
          __swift_project_value_buffer(v30, qword_1EDC36F00);

          v31 = sub_1B4D17F5C();
          v32 = sub_1B4D1870C();

          LODWORD(v115) = v32;
          if (os_log_type_enabled(v31, v32))
          {
            v121 = 0;
            v33 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v109 = v31;
            v126 = v108;
            *v33 = v111;
            if (v124 > 0x11u)
            {
              if (v124 == 18)
              {
                v34 = 0xE90000000000006ELL;
                v35 = 0x6F69746176656C65;
              }

              else
              {
                if (v124 != 19)
                {
                  goto LABEL_83;
                }

                v34 = 0xE400000000000000;
                v35 = 1701011824;
              }
            }

            else if (v124 == 16)
            {
              v34 = 0xE800000000000000;
              v35 = 0x736569726F6C6163;
            }

            else
            {
              if (v124 == 17)
              {
                v34 = 0xE800000000000000;
                v35 = 0x65636E6174736964;
                goto LABEL_86;
              }

LABEL_83:
              v128[0] = 0x2874736574736166;
              v128[1] = 0xE800000000000000;
              v127 = v124;
              v79 = v112;
              DistanceReference.rawValue.getter();
              sub_1B4BD7738();
              v80 = sub_1B4D18D5C();
              v106[1] = v81;
              MEMORY[0x1B8C7C620](v80);

              (*v107)(v79, v116);
              MEMORY[0x1B8C7C620](41, 0xE100000000000000);
              v35 = v128[0];
              v34 = v128[1];
            }

LABEL_86:
            v82 = sub_1B49558AC(v35, v34, &v126);

            *(v33 + 4) = v82;
            *(v33 + 12) = 2048;
            *(v33 + 14) = v118;
            *(v33 + 22) = 2048;
            *(v33 + 24) = v23;
            *(v33 + 32) = 2080;
            v83 = sub_1B49558AC(v114, v28, &v126);

            *(v33 + 34) = v83;
            *(v33 + 42) = 2080;
            v84 = sub_1B49558AC(v24, v22, &v126);

            *(v33 + 44) = v84;
            *(v33 + 52) = 2080;
            if (v18 <= 1)
            {
              a5 = v119;
              a3 = v120;
              if (v18)
              {
                v86 = 0x6565772073696874;
                v85 = 0xE90000000000006BLL;
              }

              else
              {
                v85 = 0xE800000000000000;
                v86 = 0x7961642073696874;
              }
            }

            else
            {
              a5 = v119;
              a3 = v120;
              if (v18 == 2)
              {
                v85 = 0xEA00000000006874;
                v86 = 0x6E6F6D2073696874;
              }

              else if (v18 == 3)
              {
                v85 = 0xE900000000000072;
                v86 = 0x6165792073696874;
              }

              else
              {
                v85 = 0xE400000000000000;
                v86 = 1919252069;
              }
            }

            v87 = sub_1B49558AC(v86, v85, &v126);

            *(v33 + 54) = v87;
            v88 = v109;
            _os_log_impl(&dword_1B4953000, v109, v115, "factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v33, 0x3Eu);
            v89 = v108;
            swift_arrayDestroy();
            MEMORY[0x1B8C7DDA0](v89, -1, -1);
            MEMORY[0x1B8C7DDA0](v33, -1, -1);

            v8 = v121;
LABEL_115:
            v17 = v123;
            goto LABEL_4;
          }

LABEL_114:
          a5 = v119;
          a3 = v120;
          goto LABEL_115;
        }

        if (qword_1EDC36EF8 != -1)
        {
          swift_once();
        }

        v43 = sub_1B4D17F6C();
        __swift_project_value_buffer(v43, qword_1EDC36F00);
        v37 = sub_1B4D17F5C();
        v44 = sub_1B4D1870C();
        if (!os_log_type_enabled(v37, v44))
        {

          goto LABEL_114;
        }

        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v126 = v40;
        *v39 = v117;
        v121 = 0;
        if (v124 > 0x11u)
        {
          if (v124 == 18)
          {
            v45 = 0xE90000000000006ELL;
            v46 = 0x6F69746176656C65;
          }

          else
          {
            if (v124 != 19)
            {
              goto LABEL_96;
            }

            v45 = 0xE400000000000000;
            v46 = 1701011824;
          }
        }

        else if (v124 == 16)
        {
          v45 = 0xE800000000000000;
          v46 = 0x736569726F6C6163;
        }

        else
        {
          if (v124 == 17)
          {
            v45 = 0xE800000000000000;
            v46 = 0x65636E6174736964;
            goto LABEL_99;
          }

LABEL_96:
          v128[0] = 0x2874736574736166;
          v128[1] = 0xE800000000000000;
          v127 = v124;
          v90 = v112;
          DistanceReference.rawValue.getter();
          sub_1B4BD7738();
          v91 = sub_1B4D18D5C();
          MEMORY[0x1B8C7C620](v91);

          (*v107)(v90, v116);
          MEMORY[0x1B8C7C620](41, 0xE100000000000000);
          v46 = v128[0];
          v45 = v128[1];
        }

LABEL_99:
        v92 = sub_1B49558AC(v46, v45, &v126);

        *(v39 + 4) = v92;
        *(v39 + 12) = 2080;
        v93 = 0xE90000000000006BLL;
        v94 = 0xE900000000000072;
        v95 = 0x6165792073696874;
        if (v18 != 3)
        {
          v95 = 1919252069;
          v94 = 0xE400000000000000;
        }

        if (v18 == 2)
        {
          v95 = 0x6E6F6D2073696874;
          v94 = 0xEA00000000006874;
        }

        v96 = 0x7961642073696874;
        if (v18)
        {
          v96 = 0x6565772073696874;
        }

        else
        {
          v93 = 0xE800000000000000;
        }

        if (v18 <= 1)
        {
          v97 = v96;
        }

        else
        {
          v97 = v95;
        }

        if (v18 <= 1)
        {
          v98 = v93;
        }

        else
        {
          v98 = v94;
        }

        v99 = sub_1B49558AC(v97, v98, &v126);

        *(v39 + 14) = v99;
        v75 = v44;
        v76 = v37;
        v77 = "factType %s no value in previous snapshot timescale %s";
LABEL_113:
        _os_log_impl(&dword_1B4953000, v76, v75, v77, v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C7DDA0](v40, -1, -1);
        MEMORY[0x1B8C7DDA0](v39, -1, -1);

        v8 = v121;
        goto LABEL_114;
      }

LABEL_4:
      --v17;
      v16 = v125;
      if (!v17)
      {
        goto LABEL_116;
      }
    }

    v123 = v17;
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v36 = sub_1B4D17F6C();
    __swift_project_value_buffer(v36, qword_1EDC36F00);
    v37 = sub_1B4D17F5C();
    v38 = sub_1B4D1870C();
    if (!os_log_type_enabled(v37, v38))
    {

      goto LABEL_115;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v126 = v40;
    *v39 = v117;
    v121 = 0;
    if (v124 > 0x11u)
    {
      if (v124 == 18)
      {
        v41 = 0xE90000000000006ELL;
        v42 = 0x6F69746176656C65;
        goto LABEL_60;
      }

      if (v124 == 19)
      {
        v41 = 0xE400000000000000;
        v42 = 1701011824;
        goto LABEL_60;
      }
    }

    else
    {
      if (v124 == 16)
      {
        v41 = 0xE800000000000000;
        v42 = 0x736569726F6C6163;
        goto LABEL_60;
      }

      if (v124 == 17)
      {
        v41 = 0xE800000000000000;
        v42 = 0x65636E6174736964;
LABEL_60:
        v67 = sub_1B49558AC(v42, v41, &v126);

        *(v39 + 4) = v67;
        *(v39 + 12) = 2080;
        v68 = 0xE90000000000006BLL;
        v69 = 0xE900000000000072;
        v70 = 0x6165792073696874;
        if (v18 != 3)
        {
          v70 = 1919252069;
          v69 = 0xE400000000000000;
        }

        if (v18 == 2)
        {
          v70 = 0x6E6F6D2073696874;
          v69 = 0xEA00000000006874;
        }

        v71 = 0x7961642073696874;
        if (v18)
        {
          v71 = 0x6565772073696874;
        }

        else
        {
          v68 = 0xE800000000000000;
        }

        if (v18 <= 1)
        {
          v72 = v71;
        }

        else
        {
          v72 = v70;
        }

        if (v18 <= 1)
        {
          v73 = v68;
        }

        else
        {
          v73 = v69;
        }

        v74 = sub_1B49558AC(v72, v73, &v126);

        *(v39 + 14) = v74;
        v75 = v38;
        v76 = v37;
        v77 = "factType %s no value in current snapshot timescale %s";
        goto LABEL_113;
      }
    }

    v128[0] = 0x2874736574736166;
    v128[1] = 0xE800000000000000;
    v127 = v124;
    v65 = v112;
    DistanceReference.rawValue.getter();
    sub_1B4BD7738();
    v66 = sub_1B4D18D5C();
    MEMORY[0x1B8C7C620](v66);

    (*v107)(v65, v116);
    MEMORY[0x1B8C7C620](41, 0xE100000000000000);
    v42 = v128[0];
    v41 = v128[1];
    goto LABEL_60;
  }

LABEL_116:
  v100 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  *&result = COERCE_DOUBLE((*(*(v100 - 8) + 56))(v113, 1, 1, v100));
  return result;
}

void sub_1B4C8FB08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, void *a7@<X6>, _BYTE *a8@<X8>)
{
  v9 = v8;
  v127 = a7;
  v134 = a6;
  v135 = a5;
  v136 = a4;
  v137 = a3;
  v122 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v117 - v14;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = (a2 + 32);
    v118 = v12;
    v119 = (v12 + 8);
    *&v13 = 136315394;
    v130 = v13;
    *&v13 = 136316418;
    v123 = v13;
    v132 = a8;
    v17 = v136;
    do
    {
      v138 = v15;
      v19 = *v16++;
      v18 = v19;
      memcpy(v141, v135, sizeof(v141));
      LOBYTE(v139) = v19;
      v140 = v17;
      *&v20 = COERCE_DOUBLE(sub_1B4C91D08(v141, &v139, &v140, v137));
      if (v9)
      {
        goto LABEL_116;
      }

      v23 = v22;
      if (v22)
      {
        v24 = *&v20;
        v25 = v21;
        memcpy(v142, v134, 0x188uLL);
        if (sub_1B4B6D850(v142) == 1)
        {

          goto LABEL_5;
        }

        memcpy(v141, v142, sizeof(v141));
        LOBYTE(v139) = v18;
        v140 = v17;
        v33 = COERCE_DOUBLE(sub_1B4C91D08(v141, &v139, &v140, v137));
        v36 = v35;
        if (v35)
        {
          v131 = v33;
          v129 = v34;
          if ((v34 != v25 || v35 != v23) && (sub_1B4D18DCC() & 1) == 0 && v131 != v24)
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v47 = sub_1B4D17F6C();
            __swift_project_value_buffer(v47, qword_1EDC36F00);

            v125 = sub_1B4D17F5C();
            v48 = sub_1B4D1873C();

            LODWORD(v124) = v48;
            v49 = v48;
            v50 = v125;
            if (os_log_type_enabled(v125, v49))
            {
              v133 = 0;
              v51 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v141[0] = v121;
              *v51 = v123;
              LOBYTE(v139) = v136;
              v52 = WorkoutRecordFactType.description.getter();
              v120 = sub_1B49558AC(v52, v53, v141);

              *(v51 + 4) = v120;
              *(v51 + 12) = 2048;
              *(v51 + 14) = v131;
              *(v51 + 22) = 2048;
              *(v51 + 24) = v24;
              *(v51 + 32) = 2080;
              v54 = sub_1B49558AC(v129, v36, v141);

              *(v51 + 34) = v54;
              *(v51 + 42) = 2080;
              *(v51 + 44) = sub_1B49558AC(v25, v23, v141);
              *(v51 + 52) = 2080;
              v55 = 0xE90000000000006BLL;
              v56 = 0xE900000000000072;
              v57 = 0x6165792073696874;
              if (v18 != 3)
              {
                v57 = 1919252069;
                v56 = 0xE400000000000000;
              }

              if (v18 == 2)
              {
                v57 = 0x6E6F6D2073696874;
                v56 = 0xEA00000000006874;
              }

              v58 = 0x7961642073696874;
              if (v18)
              {
                v58 = 0x6565772073696874;
              }

              else
              {
                v55 = 0xE800000000000000;
              }

              if (v18 <= 1)
              {
                v59 = v58;
              }

              else
              {
                v59 = v57;
              }

              if (v18 <= 1)
              {
                v60 = v55;
              }

              else
              {
                v60 = v56;
              }

              v61 = sub_1B49558AC(v59, v60, v141);

              *(v51 + 54) = v61;
              v62 = v125;
              _os_log_impl(&dword_1B4953000, v125, v124, "[NEW RECORD] factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v51, 0x3Eu);
              v63 = v121;
              swift_arrayDestroy();
              MEMORY[0x1B8C7DDA0](v63, -1, -1);
              MEMORY[0x1B8C7DDA0](v51, -1, -1);

              v9 = v133;
            }

            else
            {
            }

            a8 = v132;
            v141[0] = v25;
            v141[1] = v23;
            MEMORY[0x1EEE9AC00](v64);
            *(&v117 - 2) = v141;
            if (sub_1B49B1748(sub_1B4C926F8, (&v117 - 4), v122))
            {
              if (v136 - 16 >= 3)
              {
                v133 = v9;
                if (v136 == 19)
                {
                  v99 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
                  v100 = v99[5];
                  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
                  v102 = v132;
                  (*(*(v101 - 8) + 56))(&v132[v100], 1, 1, v101);
                  (*(v118 + 56))(&v102[v99[6]], 1, 1, v128);
                  v103 = v99[7];
                  if (qword_1EB8A6480 != -1)
                  {
                    swift_once();
                  }

                  v104 = qword_1EB8AC498;
                  type metadata accessor for UnitPace();
                  v105 = v104;
                  sub_1B4D1741C();
                  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
                  (*(*(v106 - 8) + 56))(&v102[v103], 0, 1, v106);
                  *v102 = 19;
                  v102[v99[8]] = v18;
                  *&v102[v99[9]] = v127;
                  v107 = &v102[v99[10]];
                  *v107 = v25;
                  v107[1] = v23;
                  (*(*(v99 - 1) + 56))(v102, 0, 1, v99);
                }

                else
                {
                  v108 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
                  v109 = v108[5];
                  v110 = [objc_opt_self() seconds];
                  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
                  v111 = v132;
                  sub_1B4D1741C();
                  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
                  (*(*(v112 - 8) + 56))(&v111[v109], 0, 1, v112);
                  v113 = v108[6];
                  LOBYTE(v109) = v136;
                  LOBYTE(v141[0]) = v136;
                  DistanceReference.rawValue.getter();
                  (*(v118 + 56))(&v111[v113], 0, 1, v128);
                  v114 = v108[7];
                  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
                  (*(*(v115 - 8) + 56))(&v111[v114], 1, 1, v115);
                  *v111 = v109;
                  v111[v108[8]] = v18;
                  *&v111[v108[9]] = v127;
                  v116 = &v111[v108[10]];
                  *v116 = v25;
                  v116[1] = v23;
                  (*(*(v108 - 1) + 56))(v111, 0, 1, v108);
                }
              }

              else
              {
                v98 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
                (*(*(v98 - 8) + 56))(a8, 1, 1, v98);
              }

              return;
            }

            goto LABEL_4;
          }

          v124 = v25;
          if (qword_1EDC36EF8 != -1)
          {
            swift_once();
          }

          v37 = sub_1B4D17F6C();
          __swift_project_value_buffer(v37, qword_1EDC36F00);

          v38 = sub_1B4D17F5C();
          v39 = sub_1B4D1870C();

          LODWORD(v125) = v39;
          if (os_log_type_enabled(v38, v39))
          {
            v133 = 0;
            v40 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v121 = v38;
            v139 = v120;
            *v40 = v123;
            if (v136 > 0x11u)
            {
              if (v136 == 18)
              {
                v41 = 0xE90000000000006ELL;
                v42 = 0x6F69746176656C65;
                goto LABEL_87;
              }

              if (v136 == 19)
              {
                v41 = 0xE400000000000000;
                v42 = 1701011824;
                goto LABEL_87;
              }
            }

            else
            {
              if (v136 == 16)
              {
                v41 = 0xE800000000000000;
                v42 = 0x736569726F6C6163;
                goto LABEL_87;
              }

              if (v136 == 17)
              {
                v41 = 0xE800000000000000;
                v42 = 0x65636E6174736964;
LABEL_87:
                v80 = sub_1B49558AC(v42, v41, &v139);

                *(v40 + 4) = v80;
                *(v40 + 12) = 2048;
                *(v40 + 14) = v131;
                *(v40 + 22) = 2048;
                *(v40 + 24) = v24;
                *(v40 + 32) = 2080;
                v81 = sub_1B49558AC(v129, v36, &v139);

                *(v40 + 34) = v81;
                *(v40 + 42) = 2080;
                v82 = sub_1B49558AC(v124, v23, &v139);

                *(v40 + 44) = v82;
                *(v40 + 52) = 2080;
                if (v18 <= 1)
                {
                  a8 = v132;
                  if (v18)
                  {
                    v84 = 0x6565772073696874;
                    v83 = 0xE90000000000006BLL;
                  }

                  else
                  {
                    v83 = 0xE800000000000000;
                    v84 = 0x7961642073696874;
                  }
                }

                else
                {
                  a8 = v132;
                  if (v18 == 2)
                  {
                    v83 = 0xEA00000000006874;
                    v84 = 0x6E6F6D2073696874;
                  }

                  else if (v18 == 3)
                  {
                    v83 = 0xE900000000000072;
                    v84 = 0x6165792073696874;
                  }

                  else
                  {
                    v83 = 0xE400000000000000;
                    v84 = 1919252069;
                  }
                }

                v85 = sub_1B49558AC(v84, v83, &v139);

                *(v40 + 54) = v85;
                v86 = v121;
                _os_log_impl(&dword_1B4953000, v121, v125, "factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v40, 0x3Eu);
                v87 = v120;
                swift_arrayDestroy();
                MEMORY[0x1B8C7DDA0](v87, -1, -1);
                MEMORY[0x1B8C7DDA0](v40, -1, -1);

                v9 = v133;
                goto LABEL_4;
              }
            }

            v141[0] = 0x2874736574736166;
            v141[1] = 0xE800000000000000;
            v140 = v136;
            v77 = v126;
            DistanceReference.rawValue.getter();
            sub_1B4BD7738();
            v78 = sub_1B4D18D5C();
            v117 = v79;
            MEMORY[0x1B8C7C620](v78);

            (*v119)(v77, v128);
            MEMORY[0x1B8C7C620](41, 0xE100000000000000);
            v42 = v141[0];
            v41 = v141[1];
            goto LABEL_87;
          }

          a8 = v132;
        }

        else
        {

          if (qword_1EDC36EF8 != -1)
          {
            swift_once();
          }

          v43 = sub_1B4D17F6C();
          __swift_project_value_buffer(v43, qword_1EDC36F00);
          v27 = sub_1B4D17F5C();
          v44 = sub_1B4D1870C();
          if (os_log_type_enabled(v27, v44))
          {
            v133 = 0;
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v139 = v30;
            *v29 = v130;
            if (v136 > 0x11u)
            {
              if (v136 == 18)
              {
                v45 = 0xE90000000000006ELL;
                v46 = 0x6F69746176656C65;
                goto LABEL_100;
              }

              if (v136 == 19)
              {
                v45 = 0xE400000000000000;
                v46 = 1701011824;
                goto LABEL_100;
              }
            }

            else
            {
              if (v136 == 16)
              {
                v45 = 0xE800000000000000;
                v46 = 0x736569726F6C6163;
                goto LABEL_100;
              }

              if (v136 == 17)
              {
                v45 = 0xE800000000000000;
                v46 = 0x65636E6174736964;
LABEL_100:
                v89 = sub_1B49558AC(v46, v45, &v139);

                *(v29 + 4) = v89;
                *(v29 + 12) = 2080;
                v90 = 0xE90000000000006BLL;
                v91 = 0xE900000000000072;
                v92 = 0x6165792073696874;
                if (v18 != 3)
                {
                  v92 = 1919252069;
                  v91 = 0xE400000000000000;
                }

                if (v18 == 2)
                {
                  v92 = 0x6E6F6D2073696874;
                  v91 = 0xEA00000000006874;
                }

                v93 = 0x7961642073696874;
                if (v18)
                {
                  v93 = 0x6565772073696874;
                }

                else
                {
                  v90 = 0xE800000000000000;
                }

                if (v18 <= 1)
                {
                  v94 = v93;
                }

                else
                {
                  v94 = v92;
                }

                if (v18 <= 1)
                {
                  v95 = v90;
                }

                else
                {
                  v95 = v91;
                }

                v96 = sub_1B49558AC(v94, v95, &v139);

                *(v29 + 14) = v96;
                v74 = v44;
                v75 = v27;
                v76 = "factType %s no value in previous snapshot timescale %s";
                goto LABEL_114;
              }
            }

            v141[0] = 0x2874736574736166;
            v141[1] = 0xE800000000000000;
            v140 = v136;
            DistanceReference.rawValue.getter();
            sub_1B4BD7738();
            v88 = sub_1B4D18D5C();
            MEMORY[0x1B8C7C620](v88);

            (*v119)(v126, v128);
            MEMORY[0x1B8C7C620](41, 0xE100000000000000);
            v46 = v141[0];
            v45 = v141[1];
            goto LABEL_100;
          }

          a8 = v132;
        }
      }

      else
      {
        if (qword_1EDC36EF8 != -1)
        {
          swift_once();
        }

        v26 = sub_1B4D17F6C();
        __swift_project_value_buffer(v26, qword_1EDC36F00);
        v27 = sub_1B4D17F5C();
        v28 = sub_1B4D1870C();
        if (os_log_type_enabled(v27, v28))
        {
          v133 = 0;
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v139 = v30;
          *v29 = v130;
          if (v136 > 0x11u)
          {
            if (v136 == 18)
            {
              v31 = 0xE90000000000006ELL;
              v32 = 0x6F69746176656C65;
            }

            else
            {
              if (v136 != 19)
              {
                goto LABEL_58;
              }

              v31 = 0xE400000000000000;
              v32 = 1701011824;
            }
          }

          else if (v136 == 16)
          {
            v31 = 0xE800000000000000;
            v32 = 0x736569726F6C6163;
          }

          else
          {
            if (v136 == 17)
            {
              v31 = 0xE800000000000000;
              v32 = 0x65636E6174736964;
              goto LABEL_61;
            }

LABEL_58:
            v141[0] = 0x2874736574736166;
            v141[1] = 0xE800000000000000;
            v140 = v136;
            DistanceReference.rawValue.getter();
            sub_1B4BD7738();
            v65 = sub_1B4D18D5C();
            MEMORY[0x1B8C7C620](v65);

            (*v119)(v126, v128);
            MEMORY[0x1B8C7C620](41, 0xE100000000000000);
            v32 = v141[0];
            v31 = v141[1];
          }

LABEL_61:
          v66 = sub_1B49558AC(v32, v31, &v139);

          *(v29 + 4) = v66;
          *(v29 + 12) = 2080;
          v67 = 0xE90000000000006BLL;
          v68 = 0xE900000000000072;
          v69 = 0x6165792073696874;
          if (v18 != 3)
          {
            v69 = 1919252069;
            v68 = 0xE400000000000000;
          }

          if (v18 == 2)
          {
            v69 = 0x6E6F6D2073696874;
            v68 = 0xEA00000000006874;
          }

          v70 = 0x7961642073696874;
          if (v18)
          {
            v70 = 0x6565772073696874;
          }

          else
          {
            v67 = 0xE800000000000000;
          }

          if (v18 <= 1)
          {
            v71 = v70;
          }

          else
          {
            v71 = v69;
          }

          if (v18 <= 1)
          {
            v72 = v67;
          }

          else
          {
            v72 = v68;
          }

          v73 = sub_1B49558AC(v71, v72, &v139);

          *(v29 + 14) = v73;
          v74 = v28;
          v75 = v27;
          v76 = "factType %s no value in current snapshot timescale %s";
LABEL_114:
          _os_log_impl(&dword_1B4953000, v75, v74, v76, v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8C7DDA0](v30, -1, -1);
          MEMORY[0x1B8C7DDA0](v29, -1, -1);

          a8 = v132;
          v9 = v133;
          goto LABEL_4;
        }
      }

LABEL_4:
      v17 = v136;
LABEL_5:
      v15 = v138 - 1;
    }

    while (v138 != 1);
  }

  v97 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  (*(*(v97 - 8) + 56))(a8, 1, 1, v97);
LABEL_116:
}

uint64_t sub_1B4C90D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, _BYTE *a7@<X8>)
{
  v8 = v7;
  v121 = a6;
  v123 = a4;
  v109 = a1;
  v112 = a7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v115);
  v111 = v105 - v14;
  if (*(a2 + 16))
  {
    v15 = *(a2 + 16);
    v16 = (a2 + 32);
    v106 = (v12 + 8);
    *&v13 = 136315394;
    v116 = v13;
    *&v13 = 136316418;
    v110 = v13;
    v118 = a5;
    v119 = a3;
    v17 = v15;
    while (1)
    {
      v18 = *v16;
      v124 = v16 + 1;
      memcpy(v127, a5, sizeof(v127));
      LOBYTE(v125) = v18;
      v126 = v123;
      *&result = COERCE_DOUBLE(sub_1B4C91D08(v127, &v125, &v126, a3));
      if (v8)
      {
        return result;
      }

      v22 = v21;
      if (!v21)
      {
        break;
      }

      v23 = *&result;
      v24 = v20;
      memcpy(v128, v121, 0x188uLL);
      if (sub_1B4B6D850(v128) != 1)
      {
        memcpy(v127, v128, sizeof(v127));
        LOBYTE(v125) = v18;
        v126 = v123;
        v25 = COERCE_DOUBLE(sub_1B4C91D08(v127, &v125, &v126, a3));
        v28 = v27;
        v122 = v17;
        if (v27)
        {
          v29 = v26;
          v117 = v25;
          if ((v26 != v24 || v27 != v22) && (sub_1B4D18DCC() & 1) == 0 && v117 != v23)
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v47 = sub_1B4D17F6C();
            __swift_project_value_buffer(v47, qword_1EDC36F00);

            v114 = sub_1B4D17F5C();
            v48 = sub_1B4D1873C();

            LODWORD(v113) = v48;
            v49 = v48;
            v50 = v114;
            if (os_log_type_enabled(v114, v49))
            {
              v120 = 0;
              v51 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v127[0] = v108;
              *v51 = v110;
              LOBYTE(v125) = v123;
              v52 = WorkoutRecordFactType.description.getter();
              v107 = sub_1B49558AC(v52, v53, v127);

              *(v51 + 4) = v107;
              *(v51 + 12) = 2048;
              *(v51 + 14) = v117;
              *(v51 + 22) = 2048;
              *(v51 + 24) = v23;
              *(v51 + 32) = 2080;
              v54 = sub_1B49558AC(v29, v28, v127);

              *(v51 + 34) = v54;
              *(v51 + 42) = 2080;
              *(v51 + 44) = sub_1B49558AC(v24, v22, v127);
              *(v51 + 52) = 2080;
              v55 = 0xE90000000000006BLL;
              v56 = 0xE900000000000072;
              v57 = 0x6165792073696874;
              if (v18 != 3)
              {
                v57 = 1919252069;
                v56 = 0xE400000000000000;
              }

              if (v18 == 2)
              {
                v57 = 0x6E6F6D2073696874;
                v56 = 0xEA00000000006874;
              }

              v58 = 0x7961642073696874;
              if (v18)
              {
                v58 = 0x6565772073696874;
              }

              else
              {
                v55 = 0xE800000000000000;
              }

              if (v18 <= 1)
              {
                v59 = v58;
              }

              else
              {
                v59 = v57;
              }

              if (v18 <= 1)
              {
                v60 = v55;
              }

              else
              {
                v60 = v56;
              }

              v61 = sub_1B49558AC(v59, v60, v127);

              *(v51 + 54) = v61;
              v62 = v114;
              _os_log_impl(&dword_1B4953000, v114, v113, "[NEW RECORD] factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v51, 0x3Eu);
              v63 = v108;
              swift_arrayDestroy();
              MEMORY[0x1B8C7DDA0](v63, -1, -1);
              MEMORY[0x1B8C7DDA0](v51, -1, -1);

              v8 = v120;
            }

            else
            {
            }

            a5 = v118;
            v127[0] = v24;
            v127[1] = v22;
            MEMORY[0x1EEE9AC00](v64);
            v105[-2] = v127;
            v78 = sub_1B49B1748(sub_1B4AE535C, &v105[-4], v109);
            a3 = v119;
            if (v78)
            {
              v101 = [objc_opt_self() meters];
              v102 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
              sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
              v103 = v112;
              sub_1B4D1741C();
              *v103 = 18;
              v103[v102[6]] = v18;
              *&v103[v102[7]] = v119;
              v104 = &v103[v102[8]];
              *v104 = v24;
              v104[1] = v22;
              *&result = COERCE_DOUBLE((*(*(v102 - 1) + 56))(v103, 0, 1, v102));
              return result;
            }

            goto LABEL_115;
          }

          v113 = v29;
          if (qword_1EDC36EF8 != -1)
          {
            swift_once();
          }

          v30 = sub_1B4D17F6C();
          __swift_project_value_buffer(v30, qword_1EDC36F00);

          v31 = sub_1B4D17F5C();
          v32 = sub_1B4D1870C();

          LODWORD(v114) = v32;
          if (os_log_type_enabled(v31, v32))
          {
            v120 = 0;
            v33 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v108 = v31;
            v125 = v107;
            *v33 = v110;
            if (v123 > 0x11u)
            {
              if (v123 == 18)
              {
                v34 = 0xE90000000000006ELL;
                v35 = 0x6F69746176656C65;
              }

              else
              {
                if (v123 != 19)
                {
                  goto LABEL_83;
                }

                v34 = 0xE400000000000000;
                v35 = 1701011824;
              }
            }

            else if (v123 == 16)
            {
              v34 = 0xE800000000000000;
              v35 = 0x736569726F6C6163;
            }

            else
            {
              if (v123 == 17)
              {
                v34 = 0xE800000000000000;
                v35 = 0x65636E6174736964;
                goto LABEL_86;
              }

LABEL_83:
              v127[0] = 0x2874736574736166;
              v127[1] = 0xE800000000000000;
              v126 = v123;
              v79 = v111;
              DistanceReference.rawValue.getter();
              sub_1B4BD7738();
              v80 = sub_1B4D18D5C();
              v105[1] = v81;
              MEMORY[0x1B8C7C620](v80);

              (*v106)(v79, v115);
              MEMORY[0x1B8C7C620](41, 0xE100000000000000);
              v35 = v127[0];
              v34 = v127[1];
            }

LABEL_86:
            v82 = sub_1B49558AC(v35, v34, &v125);

            *(v33 + 4) = v82;
            *(v33 + 12) = 2048;
            *(v33 + 14) = v117;
            *(v33 + 22) = 2048;
            *(v33 + 24) = v23;
            *(v33 + 32) = 2080;
            v83 = sub_1B49558AC(v113, v28, &v125);

            *(v33 + 34) = v83;
            *(v33 + 42) = 2080;
            v84 = sub_1B49558AC(v24, v22, &v125);

            *(v33 + 44) = v84;
            *(v33 + 52) = 2080;
            if (v18 <= 1)
            {
              a5 = v118;
              a3 = v119;
              if (v18)
              {
                v86 = 0x6565772073696874;
                v85 = 0xE90000000000006BLL;
              }

              else
              {
                v85 = 0xE800000000000000;
                v86 = 0x7961642073696874;
              }
            }

            else
            {
              a5 = v118;
              a3 = v119;
              if (v18 == 2)
              {
                v85 = 0xEA00000000006874;
                v86 = 0x6E6F6D2073696874;
              }

              else if (v18 == 3)
              {
                v85 = 0xE900000000000072;
                v86 = 0x6165792073696874;
              }

              else
              {
                v85 = 0xE400000000000000;
                v86 = 1919252069;
              }
            }

            v87 = sub_1B49558AC(v86, v85, &v125);

            *(v33 + 54) = v87;
            v88 = v108;
            _os_log_impl(&dword_1B4953000, v108, v114, "factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v33, 0x3Eu);
            v89 = v107;
            swift_arrayDestroy();
            MEMORY[0x1B8C7DDA0](v89, -1, -1);
            MEMORY[0x1B8C7DDA0](v33, -1, -1);

            v8 = v120;
LABEL_115:
            v17 = v122;
            goto LABEL_4;
          }

LABEL_114:
          a5 = v118;
          a3 = v119;
          goto LABEL_115;
        }

        if (qword_1EDC36EF8 != -1)
        {
          swift_once();
        }

        v43 = sub_1B4D17F6C();
        __swift_project_value_buffer(v43, qword_1EDC36F00);
        v37 = sub_1B4D17F5C();
        v44 = sub_1B4D1870C();
        if (!os_log_type_enabled(v37, v44))
        {

          goto LABEL_114;
        }

        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v125 = v40;
        *v39 = v116;
        v120 = 0;
        if (v123 > 0x11u)
        {
          if (v123 == 18)
          {
            v45 = 0xE90000000000006ELL;
            v46 = 0x6F69746176656C65;
          }

          else
          {
            if (v123 != 19)
            {
              goto LABEL_96;
            }

            v45 = 0xE400000000000000;
            v46 = 1701011824;
          }
        }

        else if (v123 == 16)
        {
          v45 = 0xE800000000000000;
          v46 = 0x736569726F6C6163;
        }

        else
        {
          if (v123 == 17)
          {
            v45 = 0xE800000000000000;
            v46 = 0x65636E6174736964;
            goto LABEL_99;
          }

LABEL_96:
          v127[0] = 0x2874736574736166;
          v127[1] = 0xE800000000000000;
          v126 = v123;
          v90 = v111;
          DistanceReference.rawValue.getter();
          sub_1B4BD7738();
          v91 = sub_1B4D18D5C();
          MEMORY[0x1B8C7C620](v91);

          (*v106)(v90, v115);
          MEMORY[0x1B8C7C620](41, 0xE100000000000000);
          v46 = v127[0];
          v45 = v127[1];
        }

LABEL_99:
        v92 = sub_1B49558AC(v46, v45, &v125);

        *(v39 + 4) = v92;
        *(v39 + 12) = 2080;
        v93 = 0xE90000000000006BLL;
        v94 = 0xE900000000000072;
        v95 = 0x6165792073696874;
        if (v18 != 3)
        {
          v95 = 1919252069;
          v94 = 0xE400000000000000;
        }

        if (v18 == 2)
        {
          v95 = 0x6E6F6D2073696874;
          v94 = 0xEA00000000006874;
        }

        v96 = 0x7961642073696874;
        if (v18)
        {
          v96 = 0x6565772073696874;
        }

        else
        {
          v93 = 0xE800000000000000;
        }

        if (v18 <= 1)
        {
          v97 = v96;
        }

        else
        {
          v97 = v95;
        }

        if (v18 <= 1)
        {
          v98 = v93;
        }

        else
        {
          v98 = v94;
        }

        v99 = sub_1B49558AC(v97, v98, &v125);

        *(v39 + 14) = v99;
        v75 = v44;
        v76 = v37;
        v77 = "factType %s no value in previous snapshot timescale %s";
LABEL_113:
        _os_log_impl(&dword_1B4953000, v76, v75, v77, v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C7DDA0](v40, -1, -1);
        MEMORY[0x1B8C7DDA0](v39, -1, -1);

        v8 = v120;
        goto LABEL_114;
      }

LABEL_4:
      --v17;
      v16 = v124;
      if (!v17)
      {
        goto LABEL_116;
      }
    }

    v122 = v17;
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v36 = sub_1B4D17F6C();
    __swift_project_value_buffer(v36, qword_1EDC36F00);
    v37 = sub_1B4D17F5C();
    v38 = sub_1B4D1870C();
    if (!os_log_type_enabled(v37, v38))
    {

      goto LABEL_115;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v125 = v40;
    *v39 = v116;
    v120 = 0;
    if (v123 > 0x11u)
    {
      if (v123 == 18)
      {
        v41 = 0xE90000000000006ELL;
        v42 = 0x6F69746176656C65;
        goto LABEL_60;
      }

      if (v123 == 19)
      {
        v41 = 0xE400000000000000;
        v42 = 1701011824;
        goto LABEL_60;
      }
    }

    else
    {
      if (v123 == 16)
      {
        v41 = 0xE800000000000000;
        v42 = 0x736569726F6C6163;
        goto LABEL_60;
      }

      if (v123 == 17)
      {
        v41 = 0xE800000000000000;
        v42 = 0x65636E6174736964;
LABEL_60:
        v67 = sub_1B49558AC(v42, v41, &v125);

        *(v39 + 4) = v67;
        *(v39 + 12) = 2080;
        v68 = 0xE90000000000006BLL;
        v69 = 0xE900000000000072;
        v70 = 0x6165792073696874;
        if (v18 != 3)
        {
          v70 = 1919252069;
          v69 = 0xE400000000000000;
        }

        if (v18 == 2)
        {
          v70 = 0x6E6F6D2073696874;
          v69 = 0xEA00000000006874;
        }

        v71 = 0x7961642073696874;
        if (v18)
        {
          v71 = 0x6565772073696874;
        }

        else
        {
          v68 = 0xE800000000000000;
        }

        if (v18 <= 1)
        {
          v72 = v71;
        }

        else
        {
          v72 = v70;
        }

        if (v18 <= 1)
        {
          v73 = v68;
        }

        else
        {
          v73 = v69;
        }

        v74 = sub_1B49558AC(v72, v73, &v125);

        *(v39 + 14) = v74;
        v75 = v38;
        v76 = v37;
        v77 = "factType %s no value in current snapshot timescale %s";
        goto LABEL_113;
      }
    }

    v127[0] = 0x2874736574736166;
    v127[1] = 0xE800000000000000;
    v126 = v123;
    v65 = v111;
    DistanceReference.rawValue.getter();
    sub_1B4BD7738();
    v66 = sub_1B4D18D5C();
    MEMORY[0x1B8C7C620](v66);

    (*v106)(v65, v115);
    MEMORY[0x1B8C7C620](41, 0xE100000000000000);
    v42 = v127[0];
    v41 = v127[1];
    goto LABEL_60;
  }

LABEL_116:
  v100 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  *&result = COERCE_DOUBLE((*(*(v100 - 8) + 56))(v112, 1, 1, v100));
  return result;
}
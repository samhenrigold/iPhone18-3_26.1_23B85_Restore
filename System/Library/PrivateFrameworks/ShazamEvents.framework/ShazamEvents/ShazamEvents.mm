uint64_t sub_1E0FE08E0()
{
  v1 = sub_1E10ADCFC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E0FE09C4()
{

  return swift_deallocObject();
}

uint64_t sub_1E0FE0A80(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1E0FE0C58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E0FE0E48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AccessTokenResource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE0EF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessTokenResource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE0F98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E0FE0FD0()
{

  return swift_deallocObject();
}

uint64_t sub_1E0FE1008()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E0FE107C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = *(a3 + 16);
    if (v10)
    {
      MEMORY[0x1EEE9AC00](a4, a5);
      v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      *v12 = sub_1E10AE20C();
      v13 = v12 + 1;
      v14 = *(a3 + 32) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v14 += 8;
        *v13++ = sub_1E10AE20C();
        --v10;
      }

      while (v10);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 48))(a1 + *(a3 + 60), a2);
  }
}

uint64_t sub_1E0FE11C4(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      MEMORY[0x1EEE9AC00](a5, a6);
      v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      *v11 = sub_1E10AE20C();
      v12 = v11 + 1;
      v13 = *(a4 + 32) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v13 += 8;
        *v12++ = sub_1E10AE20C();
        --v9;
      }

      while (v9);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 56))(v7 + *(a4 + 60), a2, a2);
  }

  return result;
}

uint64_t sub_1E0FE130C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE13B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE1490(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1E0FE1668(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E0FE1854(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Time(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E10ADACC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E0FE1978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Time(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E10ADACC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E0FE1A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 24);
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = *(a3 + 16);
    if (v11)
    {
      v21[1] = v21;
      MEMORY[0x1EEE9AC00](a5, a6);
      v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for PartialEvent(255, *(a3 + 24), *(a3 + 40), v14);
      v15 = 0;
      *v13 = sub_1E10AE20C();
      v17 = *(a3 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(a3 + 48) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v19 = v15;
        type metadata accessor for PartialEvent(255, *(v17 + 8 * v15), *(v18 + 8 * v15), v16);
        ++v15;
        v13[v19 + 1] = sub_1E10AE20C();
      }

      while (v11 != v15);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      type metadata accessor for PartialEvent(255, *(a3 + 24), *(a3 + 40), a4);
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 48))(a1 + *(a3 + 60), a2);
  }
}

uint64_t sub_1E0FE1C34(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v19[1] = v19;
      MEMORY[0x1EEE9AC00](a5, a6);
      v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for PartialEvent(255, *(a4 + 24), *(a4 + 40), v12);
      v13 = 0;
      *v11 = sub_1E10AE20C();
      v15 = *(a4 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(a4 + 48) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v17 = v13;
        type metadata accessor for PartialEvent(255, *(v15 + 8 * v13), *(v16 + 8 * v13), v14);
        ++v13;
        v11[v17 + 1] = sub_1E10AE20C();
      }

      while (v9 != v13);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      type metadata accessor for PartialEvent(255, *(a4 + 24), *(a4 + 40), a4);
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 56))(v7 + *(a4 + 60), a2, a2);
  }

  return result;
}

uint64_t sub_1E0FE1DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v5 = *(a3 + 40);
  v9 = *(a3 + 24);
  v10 = v5;
  type metadata accessor for EventService.PartialEventResult(255, &v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v6 = sub_1E10AE3AC();
  return (*(*(v6 - 8) + 48))(a1, a2, v6);
}

uint64_t sub_1E0FE1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v6 = *(a4 + 40);
  v10 = *(a4 + 24);
  v11 = v6;
  type metadata accessor for EventService.PartialEventResult(255, &v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v7 = sub_1E10AE3AC();
  return (*(*(v7 - 8) + 56))(a1, a2, a2, v7);
}

uint64_t sub_1E0FE1F38(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE20BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADCBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E0FE2304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADCBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E0FE23C0()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 72);
  v29 = *(v0 + 32);
  v1 = v29;
  v26 = v2;
  v27 = v3;
  v30 = v2;
  v31 = v3;
  type metadata accessor for EventService.PartialEventResult(255, &v29);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v28 = sub_1E10AE36C();
  v5 = *(v28 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v1 == 1)
  {
    TupleTypeMetadata = type metadata accessor for EventService.RequestType(0, *(v26.n128_u64[1] & 0xFFFFFFFFFFFFFFFELL), *(v27.n128_u64[1] & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  else
  {
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](v27, v26);
    if (v1)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      v14 = (v11 & 0xFFFFFFFFFFFFFFFELL);
      v15 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = v1;
      do
      {
        v18 = *v13++;
        v17 = v18;
        v19 = *v14++;
        *v15++ = type metadata accessor for EventService.RequestType(255, v17, v19, v9);
        --v16;
      }

      while (v16);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v20 = (v6 + 88) & ~v6;
  v21 = *(TupleTypeMetadata - 8);
  v22 = *(v21 + 80);
  v23 = (((((((((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v22 + 17) & ~v22;
  v27.n128_u64[0] = *(v21 + 64);
  v26.n128_u64[0] = v6 | v22;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v0 + v20, v28);

  (*(v21 + 8))(v0 + v23, TupleTypeMetadata);
  return swift_deallocObject();
}

uint64_t sub_1E0FE267C()
{

  return swift_deallocObject();
}

uint64_t sub_1E0FE26C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E0FE27BC()
{

  return swift_deallocObject();
}

uint64_t sub_1E0FE27F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E0FE2860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADCBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E0FE2920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADCBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E0FE2A20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE2ACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE2B70(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for EventAttributes.Time(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A070, &qword_1E10B4E40);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A078, &qword_1E10B4E48);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1E0FE2D48(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for EventAttributes.Time(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A070, &qword_1E10B4E40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A078, &qword_1E10B4E48);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E0FE2F28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE2FD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE3078(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE31FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE3380(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EventAttributes.Time(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE342C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventAttributes.Time(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE34D8()
{
  if (*v0)
  {
    return 0x4E79616C70736964;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1E0FE3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADCBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E0FE35D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADCBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E0FE3694(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE3740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE37E4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE3968(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE3B80(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE3D04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE3E98()
{
  v1 = sub_1E10ADBBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for PartialEventConfiguration(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 48) & ~*(*v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6 + v5[7];

  v8 = *(type metadata accessor for AccessTokenResource(0) + 20);
  v9 = sub_1E10ADCBC();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1E0FE4070()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E0FE40B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADCBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE4164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADCBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE4208(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE438C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE4510(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Time(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE45BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Time(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1E0FE4660@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1E0FE4678()
{

  return swift_deallocObject();
}

uint64_t sub_1E0FE46CC(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1E0FE4718()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E0FE4784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADACC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E10ADE6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E0FE4874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E10ADACC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E10ADE6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E0FE4970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1E10ADACC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1E0FE49E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1E10ADACC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E0FE4A68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE4B14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE4BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Music(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E0FE4C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Music(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E0FE4D40()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x5474736575716572;
  }
}

uint64_t sub_1E0FE4D88()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1E0FE4DAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E10A21A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0FE4DF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Time(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE4EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Time(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE4FBC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

id SHShazamEventsServiceInterface(uint64_t a1)
{
  if (SHShazamEventsServiceInterface_onceToken != -1)
  {
    SHShazamEventsServiceInterface_cold_1();
  }

  v2 = SHShazamEventsServiceInterface_interface;

  return v2;
}

void __SHShazamEventsServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5BF85B0];
  v1 = SHShazamEventsServiceInterface_interface;
  SHShazamEventsServiceInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_eventWithIdentifier_requestTypes_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_scheduleWithParticipantIdentifier_requestTypes_startDate_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_scheduleWithVenueIdentifier_requestTypes_startDate_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_scheduleWithGroupIdentifier_requestTypes_startDate_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_partialEventsWithGeoRequests_requestTypes_completionHandler_ argumentIndex:1 ofReply:0];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [SHShazamEventsServiceInterface_interface setClasses:v7 forSelector:sel_partialEventsWithGeoRequests_requestTypes_completionHandler_ argumentIndex:0 ofReply:0];
}

id SHShazamEventsClientInterface(uint64_t a1)
{
  if (SHShazamEventsClientInterface_onceToken != -1)
  {
    SHShazamEventsClientInterface_cold_1();
  }

  v2 = SHShazamEventsClientInterface_interface;

  return v2;
}

uint64_t __SHShazamEventsClientInterface_block_invoke()
{
  SHShazamEventsClientInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5BF82B0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E0FE5278(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - v6;
  v8 = sub_1E10ADCFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v25 - v16;
  sub_1E10ADCEC();
  v18 = sub_1E10AE29C();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = *(v2 + 16);
  (*(v9 + 16))(v13, v17, v8);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v19;
  (*(v9 + 32))(&v21[v20], v13, v8);
  v22 = &v21[(v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v26;
  v22[1] = a2;

  v23 = sub_1E0FE579C(0, 0, v7, &unk_1E10AF9A8, v21);
  v27 = v17;
  v28 = v23;
  os_unfair_lock_lock((v19 + 24));
  sub_1E0FE60D0((v19 + 16));
  os_unfair_lock_unlock((v19 + 24));

  return (*(v9 + 8))(v17, v8);
}

uint64_t sub_1E0FE54F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1E0FE55E4;

  return v9();
}

uint64_t sub_1E0FE55E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E0FE56E0, 0, 0);
}

uint64_t sub_1E0FE56E0()
{
  v2 = v0[2];
  v1 = v0[3];
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1E0FE6524((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E0FE579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - v11;
  sub_1E0FE62DC(a3, v26 - v11);
  v13 = sub_1E10AE29C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E0FE634C(v12);
  }

  else
  {
    sub_1E10AE28C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E10AE23C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E10AE08C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1E0FE634C(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E0FE634C(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1E0FE5A5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_1E1079774(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t sub_1E0FE5AD0(void *a1)
{
  v1 = *a1 + 64;
  v2 = 1 << *(*a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*a1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      result = swift_bridgeObjectRelease_n();
      *a1 = MEMORY[0x1E69E7CC8];
      return result;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        sub_1E10AE2BC();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0FE5C10()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for VenueAttributes.Geo(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VenueAttributes.Geo(uint64_t result, int a2, int a3)
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

uint64_t sub_1E0FE5CE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0FE5D04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_1E0FE5D40(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1E0FE5D8C(uint64_t *a1, uint64_t a2)
{
  result = sub_1E1014068(a2);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E10160CC();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = sub_1E10ADCFC();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);

    result = sub_1E10792A4(v5, v7);
    *a1 = v7;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E0FE5EA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E10ADCFC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E0FE5FDC;

  return sub_1E0FE54F8(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1E0FE5FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E0FE60EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E0FE61E4;

  return v6(a1);
}

uint64_t sub_1E0FE61E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E0FE62DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FE634C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0FE63B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E0FE6540;

  return sub_1E0FE60EC(a1, v4);
}

uint64_t sub_1E0FE646C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E0FE5FDC;

  return sub_1E0FE60EC(a1, v4);
}

uint64_t Sport.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Sport.category.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Sport.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for Sport(uint64_t a1)
{
  result = qword_1EE17E908;
  if (!qword_1EE17E908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Sport.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Sport(0) + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Sport.details.getter()
{
  type metadata accessor for Sport(0);
}

uint64_t Sport.tickets.getter()
{
  type metadata accessor for Sport(0);
}

uint64_t Sport.league.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Sport(0) + 56);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 96) = v6;
  return sub_1E0FEDC50(v12, v11, &qword_1ECE88C88, &qword_1E10AF9D8);
}

uint64_t Sport.gameCard.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Sport(0) + 60);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
}

uint64_t Sport.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Sport(0) + 64);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
}

unint64_t sub_1E0FE69F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1701669236;
      break;
    case 4:
      result = 0x65756E6576;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x4C5255626577;
      break;
    case 7:
      result = 0x736C6961746564;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7374656B636974;
      break;
    case 10:
      result = 0x65756761656CLL;
      break;
    case 11:
      result = 0x64726143656D6167;
      break;
    case 12:
      result = 0x6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E0FE6B38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0FEE0C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0FE6B78(uint64_t a1)
{
  v2 = sub_1E0FED974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FE6BB4(uint64_t a1)
{
  v2 = sub_1E0FED974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sport.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C90, &qword_1E10AF9E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FED974();
  sub_1E10AEA5C();
  v11 = *(v3 + 8);
  *&v75 = *v3;
  *(&v75 + 1) = v11;
  LOBYTE(v65) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v12 = *(v3 + 24);
    *&v75 = *(v3 + 16);
    *(&v75 + 1) = v12;
    v76 = *(v3 + 32);
    LOBYTE(v65) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CA0, &qword_1E10AF9E8);
    sub_1E0FEDEAC(&qword_1ECE88CA8, &qword_1ECE88CA0, &qword_1E10AF9E8, &protocol conformance descriptor for EventCategory<A>);
    sub_1E10AE8AC();
    LOBYTE(v75) = 2;
    sub_1E10AE86C();
    v13 = type metadata accessor for Sport(0);
    v85[0] = 3;
    type metadata accessor for Time(0);
    sub_1E0FF04A0(&qword_1ECE88CB0, type metadata accessor for Time, &protocol conformance descriptor for Time);
    sub_1E10AE8AC();
    v14 = (v3 + v13[8]);
    v15 = v14[7];
    v16 = v14[5];
    v81 = v14[6];
    v82 = v15;
    v17 = v14[7];
    v18 = v14[9];
    v83 = v14[8];
    v84 = v18;
    v19 = v14[3];
    v20 = v14[1];
    v77 = v14[2];
    v78 = v19;
    v21 = v14[3];
    v22 = v14[5];
    v79 = v14[4];
    v80 = v22;
    v23 = v14[1];
    v75 = *v14;
    v76 = v23;
    v71 = v81;
    v72 = v17;
    v24 = v14[9];
    v73 = v83;
    v74 = v24;
    v67 = v77;
    v68 = v21;
    v69 = v79;
    v70 = v16;
    v65 = v75;
    v66 = v20;
    v64 = 4;
    sub_1E0FE6720(&v75, v63);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v63[6] = v71;
    v63[7] = v72;
    v63[8] = v73;
    v63[9] = v74;
    v63[2] = v67;
    v63[3] = v68;
    v63[4] = v69;
    v63[5] = v70;
    v63[0] = v65;
    v63[1] = v66;
    sub_1E0FEDAB8(v63);
    LOBYTE(v55[0]) = 5;
    type metadata accessor for EventAttribution(0);
    sub_1E0FF04A0(&qword_1ECE88CB8, type metadata accessor for EventAttribution, &protocol conformance descriptor for EventAttribution);
    sub_1E10AE85C();
    LOBYTE(v55[0]) = 6;
    sub_1E10ADBBC();
    sub_1E0FF04A0(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E10AE85C();
    *&v55[0] = *(v3 + v13[11]);
    LOBYTE(v48) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CC8, &qword_1E10AF9F0);
    sub_1E0FEDE14(&qword_1ECE88CD0, &qword_1ECE88CD8, &protocol conformance descriptor for Sport.Detail<A>, MEMORY[0x1E69E6300]);
    sub_1E10AE8AC();
    LOBYTE(v55[0]) = 8;
    type metadata accessor for TicketAttribution(0);
    sub_1E0FF04A0(&qword_1ECE88CE8, type metadata accessor for TicketAttribution, &protocol conformance descriptor for TicketAttribution);
    sub_1E10AE85C();
    v62 = *(v3 + v13[13]);
    v61 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E0FEDB0C(&qword_1ECE88CF8, &qword_1ECE88D00, &protocol conformance descriptor for Ticket, MEMORY[0x1E69E6300]);
    sub_1E10AE8AC();
    v25 = (v3 + v13[14]);
    v26 = v25[3];
    v27 = v25[5];
    v58 = v25[4];
    v59 = v27;
    v28 = v25[1];
    v55[0] = *v25;
    v55[1] = v28;
    v29 = v25[3];
    v31 = *v25;
    v30 = v25[1];
    v56 = v25[2];
    v57 = v29;
    v32 = v25[5];
    v52 = v58;
    v53 = v32;
    v48 = v31;
    v49 = v30;
    v60 = *(v25 + 12);
    v54 = *(v25 + 12);
    v50 = v56;
    v51 = v26;
    v47 = 10;
    sub_1E0FEDC50(v55, v45, &qword_1ECE88C88, &qword_1E10AF9D8);
    sub_1E0FEDBA8();
    sub_1E10AE85C();
    v45[4] = v52;
    v45[5] = v53;
    v46 = v54;
    v45[0] = v48;
    v45[1] = v49;
    v45[2] = v50;
    v45[3] = v51;
    sub_1E0FF0440(v45, &qword_1ECE88C88, &qword_1E10AF9D8);
    v33 = (v3 + v13[15]);
    v34 = *(v33 + 2);
    v35 = *(v33 + 3);
    v42 = *v33;
    v43 = v34;
    v44 = v35;
    v41 = 11;
    sub_1E0FEDBFC();

    sub_1E10AE85C();

    v36 = (v3 + v13[16]);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    v42 = *v36;
    v43 = v38;
    v44 = v37;
    v41 = 12;

    sub_1E10AE85C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t Sport.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TicketAttribution(0);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v69 = &v62 - v10;
  v11 = sub_1E10ADBBC();
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v64 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v62 - v18;
  v19 = type metadata accessor for EventAttribution(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v63 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v28 = type metadata accessor for Sport(0);
  sub_1E10ADACC();
  sub_1E0FF04A0(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E0FF04A0(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  v29 = (v1 + v28[8]);
  v30 = v29[7];
  v80 = v29[6];
  v81 = v30;
  v31 = v29[9];
  v82 = v29[8];
  v83 = v31;
  v32 = v29[3];
  v76 = v29[2];
  v77 = v32;
  v33 = v29[5];
  v78 = v29[4];
  v79 = v33;
  v34 = v29[1];
  v74 = *v29;
  v75 = v34;
  Venue.hash(into:)(a1);
  sub_1E0FEDC50(v1 + v28[9], v27, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v20 + 48))(v27, 1, v19) == 1)
  {
    sub_1E10AE9EC();
    v35 = v67;
  }

  else
  {
    v36 = v63;
    sub_1E0FEDD58(v27, v63, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v35 = v67;
    sub_1E10ADFFC();
    sub_1E0FF03E0(v36, type metadata accessor for EventAttribution);
  }

  v37 = v66;
  sub_1E0FEDC50(v2 + v28[10], v66, &qword_1ECE88C78, &qword_1E10B5E50);
  v38 = v68;
  if ((*(v68 + 48))(v37, 1, v35) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v39 = v64;
    (*(v38 + 32))(v64, v37, v35);
    sub_1E10AE9EC();
    sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E10ADFFC();
    (*(v38 + 8))(v39, v35);
  }

  v40 = *(v2 + v28[11]);
  MEMORY[0x1E12EE160](*(v40 + 16));
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = (v40 + 32);
    do
    {
      v74 = *v42;
      v43 = v42[1];
      v44 = v42[2];
      v45 = v42[4];
      v77 = v42[3];
      v78 = v45;
      v75 = v43;
      v76 = v44;
      v46 = v42[5];
      v47 = v42[6];
      v48 = v42[8];
      v81 = v42[7];
      v82 = v48;
      v79 = v46;
      v80 = v47;
      sub_1E0FEDC50(&v74, v72, &qword_1ECE88CE0, &qword_1E10B6B50);
      sub_1E0FEA750(a1);
      sub_1E0FF0440(&v74, &qword_1ECE88CE0, &qword_1E10B6B50);
      v42 += 9;
      --v41;
    }

    while (v41);
  }

  v49 = v69;
  sub_1E0FEDC50(v2 + v28[12], v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  if ((*(v70 + 48))(v49, 1, v71) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v50 = v65;
    sub_1E0FEDD58(v49, v65, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E10ADFFC();
    sub_1E0FF03E0(v50, type metadata accessor for TicketAttribution);
  }

  sub_1E0FEBCA4(a1, *(v2 + v28[13]));
  v51 = v2 + v28[14];
  v52 = *(v51 + 80);
  v72[4] = *(v51 + 64);
  v72[5] = v52;
  v73 = *(v51 + 96);
  v53 = *(v51 + 16);
  v72[0] = *v51;
  v72[1] = v53;
  v54 = *(v51 + 48);
  v72[2] = *(v51 + 32);
  v72[3] = v54;
  sub_1E0FEC350(a1);
  v55 = (v2 + v28[15]);
  if (v55[3])
  {
    v56 = v55[1];
    v57 = *v55;
    sub_1E10AE9EC();
    MEMORY[0x1E12EE160](v57);
    MEMORY[0x1E12EE160](v56);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1E10AE9EC();
  }

  v58 = (v2 + v28[16]);
  if (!v58[3])
  {
    return sub_1E10AE9EC();
  }

  v59 = v58[1];
  v60 = *v58;
  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v60);
  MEMORY[0x1E12EE160](v59);
  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.hashValue.getter()
{
  sub_1E10AE9CC();
  Sport.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Sport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v75 = v72 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = v72 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v77 = v72 - v11;
  v12 = type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88D20, &qword_1E10AFA00);
  v78 = *(v17 - 8);
  v79 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v72 - v20;
  v22 = type metadata accessor for Sport(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1E0FED974();
  v80 = v21;
  v28 = v81;
  sub_1E10AEA3C();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v72[1] = v12;
  v73 = v22;
  v29 = v16;
  v81 = v26;
  LOBYTE(v86) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v31 = *(&v94 + 1);
  v32 = v81;
  *v81 = v94;
  v32[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CA0, &qword_1E10AF9E8);
  LOBYTE(v86) = 1;
  sub_1E0FEDEAC(&qword_1ECE88D28, &qword_1ECE88CA0, &qword_1E10AF9E8, &protocol conformance descriptor for EventCategory<A>);
  sub_1E10AE7FC();
  v33 = *(&v94 + 1);
  v32[2] = v94;
  v32[3] = v33;
  *(v32 + 2) = v95;
  LOBYTE(v94) = 2;
  v72[0] = 0;
  v32[6] = sub_1E10AE7BC();
  v32[7] = v34;
  LOBYTE(v94) = 3;
  sub_1E0FF04A0(&qword_1EE17EE88, type metadata accessor for Time, &protocol conformance descriptor for Time);
  sub_1E10AE7FC();
  v35 = v73;
  sub_1E0FEDD58(v29, v32 + v73[7], type metadata accessor for Time);
  v93 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  v36 = (v32 + v35[8]);
  v37 = v101;
  v36[6] = v100;
  v36[7] = v37;
  v38 = v103;
  v36[8] = v102;
  v36[9] = v38;
  v39 = v97;
  v36[2] = v96;
  v36[3] = v39;
  v40 = v99;
  v36[4] = v98;
  v36[5] = v40;
  v41 = v95;
  *v36 = v94;
  v36[1] = v41;
  type metadata accessor for EventAttribution(0);
  LOBYTE(v86) = 5;
  sub_1E0FF04A0(&qword_1ECE88D30, type metadata accessor for EventAttribution, &protocol conformance descriptor for EventAttribution);
  v42 = v77;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v42, v32 + v35[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  sub_1E10ADBBC();
  LOBYTE(v86) = 6;
  sub_1E0FF04A0(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v43 = v76;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v43, v32 + v35[10], &qword_1ECE88C78, &qword_1E10B5E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CC8, &qword_1E10AF9F0);
  LOBYTE(v83) = 7;
  sub_1E0FEDE14(&qword_1ECE88D40, &qword_1ECE88D48, &protocol conformance descriptor for Sport.Detail<A>, MEMORY[0x1E69E6330]);
  sub_1E10AE7FC();
  *(v32 + v35[11]) = v86;
  type metadata accessor for TicketAttribution(0);
  LOBYTE(v86) = 8;
  sub_1E0FF04A0(&qword_1ECE88D50, type metadata accessor for TicketAttribution, &protocol conformance descriptor for TicketAttribution);
  v44 = v75;
  sub_1E10AE7AC();
  v77 = 0;
  sub_1E0FEDEF4(v44, v81 + v73[12], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  LOBYTE(v83) = 9;
  sub_1E0FEDB0C(&qword_1ECE88D58, &qword_1ECE88D60, &protocol conformance descriptor for Ticket, MEMORY[0x1E69E6330]);
  v57 = v77;
  sub_1E10AE7FC();
  LODWORD(v76) = v57 == 0;
  v77 = v57;
  if (v57 || (*(v81 + v73[13]) = v86, v85 = 10, sub_1E0FEDF5C(), v58 = v77, sub_1E10AE7AC(), (v77 = v58) != 0))
  {
    (*(v78 + 8))(v80, v79);
    __swift_destroy_boxed_opaque_existential_1(v104);
    LODWORD(v104) = 0;
    v59 = 0;
  }

  else
  {
    v60 = v81 + v73[14];
    v61 = v91;
    *(v60 + 4) = v90;
    *(v60 + 5) = v61;
    *(v60 + 12) = v92;
    v62 = v87;
    *v60 = v86;
    *(v60 + 1) = v62;
    v63 = v89;
    *(v60 + 2) = v88;
    *(v60 + 3) = v63;
    v82 = 11;
    sub_1E0FEDFB0();
    v64 = v77;
    sub_1E10AE7AC();
    v77 = v64;
    if (v64)
    {
      (*(v78 + 8))(v80, v79);
      __swift_destroy_boxed_opaque_existential_1(v104);
      v59 = 0;
      LODWORD(v104) = 1;
    }

    else
    {
      v65 = (v81 + v73[15]);
      v66 = v84;
      *v65 = v83;
      v65[1] = v66;
      v82 = 12;
      v67 = v77;
      sub_1E10AE7AC();
      v77 = v67;
      if (!v67)
      {
        (*(v78 + 8))(v80, v79);
        v68 = v74;
        v69 = v81;
        v70 = (v81 + v73[16]);
        v71 = v84;
        *v70 = v83;
        v70[1] = v71;
        sub_1E0FF0378(v69, v68, type metadata accessor for Sport);
        __swift_destroy_boxed_opaque_existential_1(v104);
        return sub_1E0FF03E0(v69, type metadata accessor for Sport);
      }

      (*(v78 + 8))(v80, v79);
      __swift_destroy_boxed_opaque_existential_1(v104);
      LODWORD(v104) = 1;
      v59 = 1;
    }
  }

  LODWORD(v80) = 1;

  v45 = v81;

  v56 = v73;
  sub_1E0FF03E0(v45 + v73[7], type metadata accessor for Time);
  v46 = (v45 + v56[8]);
  v47 = v46[7];
  v100 = v46[6];
  v101 = v47;
  v48 = v46[9];
  v102 = v46[8];
  v103 = v48;
  v49 = v46[3];
  v96 = v46[2];
  v97 = v49;
  v50 = v46[5];
  v98 = v46[4];
  v99 = v50;
  v51 = v46[1];
  v94 = *v46;
  v95 = v51;
  sub_1E0FEDAB8(&v94);
  sub_1E0FF0440(v45 + v56[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  sub_1E0FF0440(v45 + v56[10], &qword_1ECE88C78, &qword_1E10B5E50);
  if (v80)
  {
  }

  result = sub_1E0FF0440(v45 + v56[12], &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v76)
  {

    if (v104)
    {
LABEL_9:
      v52 = v45 + v56[14];
      v53 = *(v52 + 5);
      v98 = *(v52 + 4);
      v99 = v53;
      *&v100 = *(v52 + 12);
      v54 = *(v52 + 1);
      v94 = *v52;
      v95 = v54;
      v55 = *(v52 + 3);
      v96 = *(v52 + 2);
      v97 = v55;
      result = sub_1E0FF0440(&v94, &qword_1ECE88C88, &qword_1E10AF9D8);
      if (v59)
      {
      }

      return result;
    }
  }

  else if (v104)
  {
    goto LABEL_9;
  }

  if (v59)
  {
  }

  return result;
}

uint64_t sub_1E0FE8A20()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E0FE8A50()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E0FE8A9C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1E0FE8B04@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a2[6] = v25;
  a2[7] = v6;
  v17 = v3[9];
  a2[8] = v8;
  a2[9] = v17;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v5;
  *a2 = v16;
  a2[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t sub_1E0FE8B90()
{
  sub_1E10AE9CC();
  Sport.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE8BD4(uint64_t a1)
{
  sub_1E10AE9CC();
  Sport.hash(into:)(v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE8C40@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Sport.Competitor.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Sport.Competitor.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Sport.Competitor.imageAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_1E0FE8DCC()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7373416567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1E0FE8E18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0FEE4B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0FE8E40(uint64_t a1)
{
  v2 = sub_1E0FEE004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FE8E7C(uint64_t a1)
{
  v2 = sub_1E0FEE004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sport.Competitor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88D78, &qword_1E10AFA08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v17 = v1[3];
  v18 = v11;
  v12 = *(v1 + 3);
  v15 = *(v1 + 2);
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE004();

  sub_1E10AEA5C();
  *&v20 = v9;
  *(&v20 + 1) = v10;
  v22 = 0;
  sub_1E0FED9C8();
  v13 = v19;
  sub_1E10AE8AC();

  if (!v13)
  {
    LOBYTE(v20) = 1;
    sub_1E10AE86C();
    v20 = v15;
    v21 = v16;
    v22 = 2;
    sub_1E0FEDBFC();

    sub_1E10AE85C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t Sport.Competitor.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v4)
  {
    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v3);
  MEMORY[0x1E12EE160](v2);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.Competitor.hashValue.getter()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[7];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v3)
  {
    MEMORY[0x1E12EE160](v2);
    MEMORY[0x1E12EE160](v1);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1E10AEA0C();
}

uint64_t Sport.Competitor.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88D88, &qword_1E10AFA10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE004();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v28 = a2;
  v12 = v32;
  v11 = v33;
  LOBYTE(v32) = 1;
  v13 = sub_1E10AE7BC();
  v26 = v12;
  *(&v27 + 1) = v14;
  *&v27 = v13;
  v41 = 2;
  sub_1E0FEDFB0();
  sub_1E10AE7AC();
  (*(v6 + 8))(v10, v5);
  v25 = v39;
  v15 = v40;
  v24 = *(&v39 + 1);
  v16 = *(&v40 + 1);
  v17 = v26;
  *&v29[0] = v26;
  *(&v29[0] + 1) = v11;
  v18 = v27;
  v29[1] = v27;
  v30 = v39;
  v31 = v40;
  v19 = v27;
  v20 = v28;
  *v28 = v29[0];
  v20[1] = v19;
  v21 = v31;
  v20[2] = v30;
  v20[3] = v21;
  sub_1E0FEE058(v29, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32 = v17;
  v33 = v11;
  v34 = v18;
  v35 = v25;
  v36 = v24;
  v37 = v15;
  v38 = v16;
  return sub_1E0FEE090(&v32);
}

uint64_t sub_1E0FE9548()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E0FE9578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_1E0FE9590(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v4)
  {
    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v3);
  MEMORY[0x1E12EE160](v2);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E0FE964C(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[7];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v4)
  {
    MEMORY[0x1E12EE160](v3);
    MEMORY[0x1E12EE160](v2);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1E10AEA0C();
}

uint64_t Sport.Detail.id.getter()
{
  v0 = sub_1E0FEE5D0();

  return v0;
}

CGColorRef Sport.Detail.prominentColor.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  if (*(v2 + 32))
  {
    return sub_1E1072EB8(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t Sport.Detail.score.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E0FE97FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74697465706D6F63 && a2 == 0xEA0000000000726FLL || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736F487369 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E696D6F72705FLL && a2 == 0xEF726F6C6F43746ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E0FE99E4(unsigned __int8 a1)
{
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](a1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9A2C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x74736F487369;
  v3 = 0x65726F6373;
  if (a1 != 3)
  {
    v3 = 0x656E696D6F72705FLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x74697465706D6F63;
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

uint64_t sub_1E0FE9AF0(uint64_t a1)
{
  sub_1E10AE9CC();
  sub_1E0FE99BC(v3, *v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0FE97FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FE9B74@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E0FF0168();
  *a2 = result;
  return result;
}

uint64_t sub_1E0FE9BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E0FE9BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Sport.Detail.Score.final.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E0FE9C78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C616E6966 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E10AE8FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E0FE9CF4()
{
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](0);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9D38(uint64_t a1)
{
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](0);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0FE9C78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E0FE9DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E0FE9CEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E0FE9DF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E0FE9E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Sport.League.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Sport.League.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Sport.League.logo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

CGColorRef Sport.League.color.getter()
{
  if (*(v0 + 96))
  {
    return sub_1E1072EB8(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0FE9F28()
{
  v1 = *v0;
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9F70(uint64_t a1)
{
  v2 = *v1;
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9FB4()
{
  v1 = 25705;
  v2 = 1869049708;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F635FLL;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E0FEA010@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0FF0170(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0FEA038(uint64_t a1)
{
  v2 = sub_1E0FEE6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FEA074(uint64_t a1)
{
  v2 = sub_1E0FEE6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sport.League.eventSchedule(service:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v4;
  *(v2 + 112) = *(v1 + 96);
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v6;
  v7 = swift_task_alloc();
  *(v2 + 120) = v7;
  *v7 = v2;
  v7[1] = sub_1E0FEA168;

  return sub_1E106C264(v3);
}

uint64_t sub_1E0FEA168(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E0FEA2A4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

BOOL static Sport.Detail.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = *a1 == *a2 && a1[1] == v8;
  if (!v9 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Sport.Detail(0, a3, a4, v8);
  if ((sub_1E10AE03C() & 1) == 0 || *(a1 + v10[10]) != *(a2 + v10[10]))
  {
    return 0;
  }

  v11 = v10[11];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (!v13)
  {
    if (!v15)
    {

      goto LABEL_20;
    }

LABEL_17:

    return 0;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = *v12 == *v14 && v13 == v15;
  if (!v16 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v18 = v10[12];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 32);
  v21 = a2 + v18;
  v22 = *(v21 + 4);
  if (v20)
  {
    if (v22)
    {
      v23 = *v19 == *v21 && v19[1] == *(v21 + 1);
      v24 = v23 && v19[2] == *(v21 + 2);
      if (v24 && (*(v19 + 3) == *(v21 + 3) && v20 == v22 || (sub_1E10AE8FC() & 1) != 0))
      {
        return 1;
      }
    }

    return 0;
  }

  return !v22;
}

uint64_t Sport.Detail.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 24);
  v26 = *(a2 + 16);
  v27 = a2;
  v28 = v7;
  type metadata accessor for Sport.Detail.CodingKeys(255, v26, v7, a4);
  swift_getWitnessTable();
  v8 = sub_1E10AE8BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v8;
  sub_1E10AEA5C();
  v15 = v5[1];
  *&v30 = *v5;
  *(&v30 + 1) = v15;
  v33 = 0;
  sub_1E0FED9C8();
  v16 = v29;
  sub_1E10AE8AC();
  if (v16)
  {
    return (*(v9 + 8))(v13, v8);
  }

  v17 = v26;
  v18 = v27;
  LOBYTE(v30) = 1;
  sub_1E10AE8AC();
  LOBYTE(v30) = 2;
  sub_1E10AE87C();
  v19 = (v5 + *(v18 + 44));
  v20 = v19[1];
  *&v30 = *v19;
  *(&v30 + 1) = v20;
  v33 = 3;
  type metadata accessor for Sport.Detail.Score(0, v17, v28, v21);

  swift_getWitnessTable();
  sub_1E10AE85C();

  v22 = v5 + *(v18 + 48);
  v23 = *(v22 + 4);
  v24 = *(v22 + 1);
  v30 = *v22;
  v31 = v24;
  v32 = v23;
  v33 = 4;
  sub_1E0FEE620();
  sub_1E10AE85C();
  return (*(v9 + 8))(v13, v14);
}

uint64_t sub_1E0FEA750(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[9];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v4)
  {
    MEMORY[0x1E12EE160](v3);
    MEMORY[0x1E12EE160](v2);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  sub_1E10AE9EC();
  if (!v1[12])
  {
    sub_1E10AE9EC();
    if (v1[17])
    {
      goto LABEL_5;
    }

    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v1[17])
  {
    return sub_1E10AE9EC();
  }

LABEL_5:
  v5 = v1[15];
  v6 = v1[13];
  v7 = v1[14];
  sub_1E10AE9EC();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E12EE180](v8);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E12EE180](v9);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E12EE180](v10);

  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.Detail.hash(into:)(uint64_t a1, uint64_t a2)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E10ADFFC();
  sub_1E10AE9EC();
  type metadata accessor for Sport.Detail.Score(255, v4, v5, v6);
  sub_1E10AE4EC();

  swift_getWitnessTable();
  sub_1E10AE4FC();

  v7 = (v2 + *(a2 + 48));
  if (!v7[4])
  {
    return sub_1E10AE9EC();
  }

  v8 = v7[2];
  v10 = *v7;
  v9 = v7[1];
  sub_1E10AE9EC();
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E12EE180](v11);
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E12EE180](v12);
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E12EE180](v13);
  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.Detail.hashValue.getter(uint64_t a1)
{
  sub_1E10AE9CC();
  Sport.Detail.hash(into:)(v3, a1);
  return sub_1E10AEA0C();
}

uint64_t Sport.Detail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>)
{
  v42 = a4;
  v44 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a5, a6);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Sport.Detail.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v13 = sub_1E10AE81C();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v40 - v16;
  v43 = a3;
  v19 = type metadata accessor for Sport.Detail(0, a2, a3, v18);
  v41 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v40 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v17;
  v24 = v49;
  sub_1E10AEA3C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v45;
  v26 = v23;
  v27 = v19;
  v53 = 0;
  sub_1E0FEDD04();
  v28 = v47;
  sub_1E10AE7FC();
  v29 = *(&v50 + 1);
  v30 = v26;
  *v26 = v50;
  *(v26 + 1) = v29;
  v49 = v29;
  LOBYTE(v50) = 1;
  v31 = a2;
  sub_1E10AE7FC();
  (*(v44 + 32))(&v30[v27[9]], v25, a2);
  LOBYTE(v50) = 2;
  v45 = 0;
  v32 = a1;
  v30[v27[10]] = sub_1E10AE7CC() & 1;
  type metadata accessor for Sport.Detail.Score(0, v31, v43, v33);
  v53 = 3;
  swift_getWitnessTable();
  sub_1E10AE7AC();
  v34 = v46;
  *&v30[v27[11]] = v50;
  v53 = 4;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  v35 = &v30[v27[12]];
  (*(v34 + 8))(v48, v28);
  v36 = v52;
  v37 = v51;
  *v35 = v50;
  *(v35 + 1) = v37;
  *(v35 + 4) = v36;
  v38 = v41;
  (*(v41 + 16))(v42, v30, v27);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return (*(v38 + 8))(v30, v27);
}

uint64_t sub_1E0FEAFB4(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  Sport.Detail.hash(into:)(v4, a2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FEB030@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E0FEE5D0();
  a1[1] = v2;
}

uint64_t static Sport.Detail.Score.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

uint64_t Sport.Detail.Score.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Sport.Detail.Score.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_1E10AE8BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v13 - v10;
  v13[1] = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA5C();
  sub_1E10AE86C();
  return (*(v7 + 8))(v11, v6);
}

uint64_t Sport.Detail.Score.hashValue.getter()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t Sport.Detail.Score.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v19 = a4;
  type metadata accessor for Sport.Detail.Score.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v7 = sub_1E10AE81C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA3C();
  if (!v5)
  {
    v13 = v19;
    v14 = sub_1E10AE7BC();
    v16 = v15;
    (*(v8 + 8))(v12, v7);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E0FEB414(uint64_t a1)
{
  sub_1E10AE9CC();
  Sport.Detail.Score.hash(into:)(v2);
  return sub_1E10AEA0C();
}

uint64_t Sport.League.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88DA0, &qword_1E10AFA20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v22 = v1[3];
  v23 = v11;
  v12 = *(v1 + 3);
  v19 = *(v1 + 2);
  v20 = v12;
  v13 = *(v1 + 4);
  v17 = *(v1 + 5);
  v18 = v13;
  v21 = v1[12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE6E0();

  sub_1E10AEA5C();
  *&v25 = v9;
  *(&v25 + 1) = v10;
  v28 = 0;
  sub_1E0FED9C8();
  v14 = v24;
  sub_1E10AE8AC();

  if (!v14)
  {
    v15 = v21;
    LOBYTE(v25) = 1;
    sub_1E10AE86C();
    v26 = v20;
    v25 = v19;
    v28 = 2;
    sub_1E0FEDBFC();

    sub_1E10AE85C();

    v26 = v17;
    v25 = v18;
    v27 = v15;
    v28 = 3;
    sub_1E0FEE620();
    sub_1E10AE85C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t Sport.League.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v12 = v1[10];
  v7 = v1[12];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v4)
  {
    sub_1E10AE9EC();
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v3);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v7)
  {
    return sub_1E10AE9EC();
  }

LABEL_3:
  sub_1E10AE9EC();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E12EE180](v8);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E12EE180](v9);
  if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E12EE180](v10);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.League.hashValue.getter()
{
  sub_1E10AE9CC();
  Sport.League.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Sport.League.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88DB0, &qword_1E10AFA28);
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE6E0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v37) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v11 = v44;
  v35 = v45;
  LOBYTE(v44) = 1;
  v12 = sub_1E10AE7BC();
  v34 = v13;
  v32 = v12;
  v33 = v11;
  LOBYTE(v37) = 2;
  sub_1E0FEDFB0();
  sub_1E10AE7AC();
  v31 = v45;
  v14 = v47;
  v29 = v44;
  v30 = v46;
  v60 = 3;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  (*(v10 + 8))(v9, v36);
  v27 = v58;
  v28 = *(&v57 + 1);
  v25 = v14;
  v26 = *(&v58 + 1);
  v15 = v59;
  v16 = v14;
  v18 = v32;
  v17 = v33;
  v36 = v57;
  *&v37 = v33;
  v19 = v34;
  *(&v37 + 1) = v35;
  *&v38 = v32;
  v20 = v29;
  *(&v38 + 1) = v34;
  *&v39 = v29;
  *(&v39 + 1) = v31;
  *&v40 = v30;
  *(&v40 + 1) = v16;
  v41 = v57;
  v42 = v58;
  v43 = v59;
  *(a2 + 96) = v59;
  v21 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v21;
  v22 = v38;
  *a2 = v37;
  *(a2 + 16) = v22;
  v23 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v23;
  sub_1E0FEE734(&v37, &v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44 = v17;
  v45 = v35;
  v46 = v18;
  v47 = v19;
  v48 = v20;
  v49 = v31;
  v50 = v30;
  v51 = v25;
  v52 = v36;
  v53 = v28;
  v54 = v27;
  v55 = v26;
  v56 = v15;
  return sub_1E0FEE76C(&v44);
}

uint64_t sub_1E0FEBBF0()
{
  sub_1E10AE9CC();
  Sport.League.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FEBC34(uint64_t a1)
{
  sub_1E10AE9CC();
  Sport.League.hash(into:)(v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FEBCA4(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Ticket(0) - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v8);
  if (v8)
  {
    v10 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_1E0FF0378(v10, v7, type metadata accessor for Ticket);
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      sub_1E10ADBBC();
      sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E10ADFFC();
      result = sub_1E0FF03E0(v7, type metadata accessor for Ticket);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1E0FEBE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 16);
      v17[0] = *v5;
      v17[1] = v6;
      v7 = *(v5 + 80);
      v20 = *(v5 + 64);
      v21 = v7;
      v22 = *(v5 + 96);
      v8 = *(v5 + 48);
      v18 = *(v5 + 32);
      v19 = v8;
      sub_1E0FF02C8(v17, v16);
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      if (*(&v19 + 1))
      {
        v9 = v18;
        v10 = v20;
        v15 = v21;
        v11 = v22;
        sub_1E10AE9EC();
        MEMORY[0x1E12EE160](v9);
        MEMORY[0x1E12EE160](*(&v9 + 1));

        _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
        if (v11)
        {
          sub_1E10AE9EC();
          if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v12 = v10;
          }

          else
          {
            v12 = 0;
          }

          MEMORY[0x1E12EE180](v12);
          if ((*(&v10 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v13 = *(&v10 + 1);
          }

          else
          {
            v13 = 0;
          }

          MEMORY[0x1E12EE180](v13);
          if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v14 = v15;
          }

          else
          {
            v14 = 0;
          }

          MEMORY[0x1E12EE180](v14);
          _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          sub_1E10AE9EC();
        }

        sub_1E0FF0324(v17);
        result = sub_1E0FF0440(&v18, &qword_1ECE88F38, &qword_1E10B05F8);
      }

      else
      {
        sub_1E10AE9EC();
        result = sub_1E0FF0324(v17);
      }

      v5 += 104;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEBFF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = a2 + 104;
    do
    {
      v6 = *(v5 - 40);
      v7 = *(v5 - 32);

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      MEMORY[0x1E12EE160](v6);
      MEMORY[0x1E12EE160](v7);
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v5 += 80;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC108(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = a2 + 72;
    do
    {
      v6 = *(v5 - 32);
      MEMORY[0x1E12EE160](*(v5 - 40));
      MEMORY[0x1E12EE160](v6);

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC1BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {
      v6 = *(v5 - 16);
      MEMORY[0x1E12EE160](*(v5 - 24));
      MEMORY[0x1E12EE160](v6);

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC244(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = v5[2];
      v6 = v5[3];
      v8 = v5[5];

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      sub_1E10AE9EC();
      if (v8)
      {
        MEMORY[0x1E12EE160](v7);
        MEMORY[0x1E12EE160](v6);
        _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC350(uint64_t a1)
{
  if (!v1[1])
  {
    return sub_1E10AE9EC();
  }

  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[7];
  v5 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v6 = v1[12];
  sub_1E10AE9EC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v4)
  {
    sub_1E10AE9EC();
    if (v6)
    {
      goto LABEL_4;
    }

    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v3);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v6)
  {
    return sub_1E10AE9EC();
  }

LABEL_4:
  sub_1E10AE9EC();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1E12EE180](v7);
  if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E12EE180](v8);
  if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E12EE180](v9);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t _s12ShazamEvents5SportV10CompetitorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v13 = a1[6];
  v14 = a1[5];
  v5 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v10)
    {
      if (v4 == v9 && v14 == v8)
      {
        if (v13 == v11 && v5 == v10 || (sub_1E10AE8FC() & 1) != 0)
        {
          return 1;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
      }

      return 0;
    }

    goto LABEL_16;
  }

  if (v10)
  {
LABEL_16:

    return 0;
  }

  return 1;
}

uint64_t _s12ShazamEvents5SportV6LeagueV2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v21 = *(a1 + 6);
  v5 = *(a1 + 7);
  v7 = a1[8];
  v6 = a1[9];
  v8 = a1[10];
  v23 = *(a1 + 12);
  v24 = *(a1 + 5);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = *(a2 + 64);
  v15 = *(a2 + 72);
  v17 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a1 + 11);
  v22 = *(a2 + 96);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1E10AE8FC() & 1) == 0 || (v2 != v9 || v4 != v10) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v14)
    {
      if (v3 != v12 || v24 != v11)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
        return 0;
      }

      if ((v21 != v13 || v5 != v14) && (sub_1E10AE8FC() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

LABEL_16:

    return 0;
  }

  if (v14)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v23)
  {
    if (v22 && v7 == v16 && v6 == v15 && v8 == v17 && (v20 == v19 && v23 == v22 || (sub_1E10AE8FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

BOOL _s12ShazamEvents5SportV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution(0);
  v150 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v147 = (&v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v148 = (&v144 - v10);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v144 - v13;
  v15 = sub_1E10ADBBC();
  v155 = *(v15 - 8);
  v156 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v151 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  MEMORY[0x1EEE9AC00](v19, v20);
  v152 = &v144 - v21;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F48, &qword_1E10B0608);
  MEMORY[0x1EEE9AC00](v22, v23);
  v154 = &v144 - v24;
  v25 = type metadata accessor for EventAttribution(0);
  v157 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v144 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v144 - v37);
  if (*a1 != *a2 && (sub_1E10AE8FC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v144 = v14;
  v145 = v4;
  v146 = type metadata accessor for Sport(0);
  v39 = v146[7];
  v40 = a1 + v39;
  v41 = a2 + v39;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    return 0;
  }

  v42 = type metadata accessor for Time(0);
  if ((MEMORY[0x1E12ED5E0](&v40[*(v42 + 20)], &v41[*(v42 + 20)]) & 1) == 0)
  {
    return 0;
  }

  v43 = v146;
  v44 = (a1 + v146[8]);
  v45 = v44[5];
  v46 = v44[7];
  v213 = v44[6];
  v214 = v46;
  v47 = v44[9];
  v48 = v44[7];
  v215 = v44[8];
  v216 = v47;
  v49 = v44[3];
  v50 = v44[1];
  v209 = v44[2];
  v210 = v49;
  v51 = v44[5];
  v52 = v44[3];
  v211 = v44[4];
  v212 = v51;
  v53 = v44[1];
  v208[0] = *v44;
  v208[1] = v53;
  v180 = v211;
  v181 = v45;
  v178 = v209;
  v179 = v52;
  v54 = v44[9];
  *&v183[2] = v215;
  *&v183[4] = v54;
  v182 = v213;
  *v183 = v48;
  v176 = v208[0];
  v177 = v50;
  v55 = (a2 + v146[8]);
  v56 = v55[7];
  v57 = v55[5];
  v222 = v55[6];
  v223 = v56;
  v58 = v55[7];
  v59 = v55[9];
  v224 = v55[8];
  v225 = v59;
  v60 = v55[3];
  v61 = v55[1];
  v218 = v55[2];
  v219 = v60;
  v62 = v55[3];
  v63 = v55[5];
  v220 = v55[4];
  v221 = v63;
  v64 = v55[1];
  v217[0] = *v55;
  v217[1] = v64;
  v204 = v222;
  v205 = v58;
  v65 = v55[9];
  v206 = v224;
  v207 = v65;
  v200 = v218;
  v201 = v62;
  v202 = v220;
  v203 = v57;
  v198 = v217[0];
  v199 = v61;
  sub_1E0FE6720(v208, v196);
  sub_1E0FE6720(v217, v196);
  v66 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v176, &v198);
  v226[6] = v204;
  v226[7] = v205;
  v226[8] = v206;
  v226[9] = v207;
  v226[2] = v200;
  v226[3] = v201;
  v226[4] = v202;
  v226[5] = v203;
  v226[0] = v198;
  v226[1] = v199;
  sub_1E0FEDAB8(v226);
  v227[6] = v182;
  v227[7] = *v183;
  v227[8] = *&v183[2];
  v227[9] = *&v183[4];
  v227[2] = v178;
  v227[3] = v179;
  v227[4] = v180;
  v227[5] = v181;
  v227[0] = v176;
  v227[1] = v177;
  sub_1E0FEDAB8(v227);
  if (!v66)
  {
    return 0;
  }

  v67 = v43[9];
  v68 = *(v34 + 48);
  sub_1E0FEDC50(a1 + v67, v38, &qword_1ECE88C70, &qword_1E10AF9C8);
  v69 = a2 + v67;
  v70 = v68;
  sub_1E0FEDC50(v69, v38 + v68, &qword_1ECE88C70, &qword_1E10AF9C8);
  v71 = *(v157 + 48);
  if (v71(v38, 1, v25) == 1)
  {
    if (v71(v38 + v70, 1, v25) == 1)
    {
      sub_1E0FF0440(v38, &qword_1ECE88C70, &qword_1E10AF9C8);
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  sub_1E0FEDC50(v38, v33, &qword_1ECE88C70, &qword_1E10AF9C8);
  if (v71(v38 + v70, 1, v25) == 1)
  {
    sub_1E0FF03E0(v33, type metadata accessor for EventAttribution);
LABEL_17:
    v72 = &qword_1ECE88F50;
    v73 = &qword_1E10B0610;
LABEL_18:
    v74 = v38;
LABEL_29:
    sub_1E0FF0440(v74, v72, v73);
    return 0;
  }

  sub_1E0FEDD58(v38 + v70, v29, type metadata accessor for EventAttribution);
  if ((*v33 != *v29 || v33[1] != v29[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E0FF03E0(v29, type metadata accessor for EventAttribution);
    sub_1E0FF03E0(v33, type metadata accessor for EventAttribution);
    v72 = &qword_1ECE88C70;
    v73 = &qword_1E10AF9C8;
    goto LABEL_18;
  }

  v75 = sub_1E10ADB8C();
  sub_1E0FF03E0(v29, type metadata accessor for EventAttribution);
  sub_1E0FF03E0(v33, type metadata accessor for EventAttribution);
  sub_1E0FF0440(v38, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v76 = v146;
  v77 = v146[10];
  v78 = v154;
  v79 = *(v153 + 48);
  sub_1E0FEDC50(a1 + v77, v154, &qword_1ECE88C78, &qword_1E10B5E50);
  sub_1E0FEDC50(a2 + v77, v78 + v79, &qword_1ECE88C78, &qword_1E10B5E50);
  v81 = v155;
  v80 = v156;
  v82 = *(v155 + 48);
  if (v82(v78, 1, v156) == 1)
  {
    if (v82(v78 + v79, 1, v80) == 1)
    {
      sub_1E0FF0440(v78, &qword_1ECE88C78, &qword_1E10B5E50);
      goto LABEL_32;
    }

LABEL_28:
    v72 = &qword_1ECE88F48;
    v73 = &qword_1E10B0608;
    v74 = v78;
    goto LABEL_29;
  }

  v83 = v152;
  sub_1E0FEDC50(v78, v152, &qword_1ECE88C78, &qword_1E10B5E50);
  if (v82(v78 + v79, 1, v80) == 1)
  {
    (*(v81 + 8))(v83, v80);
    goto LABEL_28;
  }

  v85 = v78 + v79;
  v86 = v151;
  (*(v81 + 32))(v151, v85, v80);
  sub_1E0FF04A0(&qword_1ECE88F68, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v87 = sub_1E10AE03C();
  v88 = *(v81 + 8);
  v88(v86, v80);
  v88(v83, v80);
  sub_1E0FF0440(v78, &qword_1ECE88C78, &qword_1E10B5E50);
  v76 = v146;
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  if (!sub_1E0FFE2DC(*(a1 + v76[11]), *(a2 + v76[11])))
  {
    return 0;
  }

  v89 = v76[12];
  v90 = *(v149 + 48);
  v38 = v144;
  sub_1E0FEDC50(a1 + v89, v144, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v89, v38 + v90, &qword_1ECE88C80, &qword_1E10AF9D0);
  v91 = *(v150 + 48);
  v92 = v145;
  if (v91(v38, 1, v145) == 1)
  {
    if (v91(v38 + v90, 1, v92) == 1)
    {
      sub_1E0FF0440(v38, &qword_1ECE88C80, &qword_1E10AF9D0);
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v93 = v148;
  sub_1E0FEDC50(v38, v148, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v91(v38 + v90, 1, v92) == 1)
  {
    sub_1E0FF03E0(v93, type metadata accessor for TicketAttribution);
LABEL_39:
    v72 = &qword_1ECE88F40;
    v73 = &qword_1E10B0600;
    goto LABEL_18;
  }

  v94 = v38 + v90;
  v95 = v147;
  sub_1E0FEDD58(v94, v147, type metadata accessor for TicketAttribution);
  if ((*v93 != *v95 || v93[1] != v95[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E0FF03E0(v95, type metadata accessor for TicketAttribution);
    sub_1E0FF03E0(v93, type metadata accessor for TicketAttribution);
    v72 = &qword_1ECE88C80;
    v73 = &qword_1E10AF9D0;
    goto LABEL_18;
  }

  v96 = sub_1E10ADB8C();
  sub_1E0FF03E0(v95, type metadata accessor for TicketAttribution);
  sub_1E0FF03E0(v93, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v38, &qword_1ECE88C80, &qword_1E10AF9D0);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_44:
  if ((sub_1E0FFE0A4(*(a1 + v76[13]), *(a2 + v76[13])) & 1) == 0)
  {
    return 0;
  }

  v97 = a1 + v76[14];
  v98 = *(v97 + 3);
  v99 = *(v97 + 4);
  v100 = v99;
  v196[5] = *(v97 + 5);
  v197 = *(v97 + 12);
  v101 = *(v97 + 1);
  v196[0] = *v97;
  v196[1] = v101;
  v103 = *(v97 + 1);
  v102 = *(v97 + 2);
  v104 = v102;
  v196[3] = *(v97 + 3);
  v196[4] = v99;
  v196[2] = v102;
  v105 = a2 + v76[14];
  v107 = *(v105 + 3);
  v106 = *(v105 + 4);
  v108 = v106;
  v203 = *(v105 + 5);
  v202 = v106;
  v110 = *(v105 + 1);
  v109 = *(v105 + 2);
  v111 = v109;
  v201 = *(v105 + 3);
  v200 = v109;
  v112 = *v105;
  v199 = *(v105 + 1);
  v198 = v112;
  v192 = v98;
  v193 = v100;
  v194 = *(v97 + 5);
  v190 = v103;
  v191 = v104;
  *&v204 = *(v105 + 12);
  v113 = v196[0];
  v195 = *(v97 + 12);
  v114 = *(&v112 + 1);
  v115 = v112;
  v184 = v110;
  v185 = v111;
  v116 = *(v105 + 5);
  v189 = *(v105 + 12);
  v187 = v108;
  v188 = v116;
  v186 = v107;
  if (!*(&v196[0] + 1))
  {
    if (!v114)
    {
      v176 = *&v196[0];
      v122 = *(v97 + 4);
      v179 = *(v97 + 3);
      v180 = v122;
      v181 = *(v97 + 5);
      *&v182 = *(v97 + 12);
      v123 = *(v97 + 2);
      v177 = *(v97 + 1);
      v178 = v123;
      sub_1E0FEDC50(v196, &v169, &qword_1ECE88C88, &qword_1E10AF9D8);
      sub_1E0FEDC50(&v198, &v169, &qword_1ECE88C88, &qword_1E10AF9D8);
      sub_1E0FF0440(&v176, &qword_1ECE88C88, &qword_1E10AF9D8);
      goto LABEL_55;
    }

    sub_1E0FEDC50(v196, &v176, &qword_1ECE88C88, &qword_1E10AF9D8);
    sub_1E0FEDC50(&v198, &v176, &qword_1ECE88C88, &qword_1E10AF9D8);
LABEL_53:
    v176 = v113;
    v179 = v192;
    v180 = v193;
    v181 = v194;
    v177 = v190;
    v178 = v191;
    *&v182 = v195;
    *(&v182 + 1) = v115;
    *&v183[3] = v185;
    *&v183[1] = v184;
    v183[0] = v114;
    v183[11] = v189;
    *&v183[9] = v188;
    *&v183[7] = v187;
    *&v183[5] = v186;
    v72 = &unk_1ECE88F58;
    v73 = &unk_1E10B0618;
LABEL_78:
    v74 = &v176;
    goto LABEL_29;
  }

  v176 = v196[0];
  v117 = *(v97 + 4);
  v179 = *(v97 + 3);
  v180 = v117;
  v181 = *(v97 + 5);
  *&v182 = *(v97 + 12);
  v118 = *(v97 + 2);
  v177 = *(v97 + 1);
  v178 = v118;
  v169 = v196[0];
  v170 = v177;
  v175 = v182;
  v173 = v117;
  v174 = v181;
  v171 = v118;
  v172 = v179;
  if (!v114)
  {
    v166 = v180;
    v167 = v181;
    v168 = v182;
    v162 = v176;
    v163 = v177;
    v164 = v178;
    v165 = v179;
    sub_1E0FEDC50(v196, v160, &qword_1ECE88C88, &qword_1E10AF9D8);
    sub_1E0FEDC50(&v198, v160, &qword_1ECE88C88, &qword_1E10AF9D8);
    sub_1E0FEDC50(&v176, v160, &qword_1ECE88C88, &qword_1E10AF9D8);
    sub_1E0FEE76C(&v162);
    goto LABEL_53;
  }

  v119 = *(v105 + 4);
  v165 = *(v105 + 3);
  v166 = v119;
  v167 = *(v105 + 5);
  v168 = *(v105 + 12);
  v120 = *(v105 + 2);
  v163 = *(v105 + 1);
  v164 = v120;
  v162 = __PAIR128__(v114, v115);
  sub_1E0FEDC50(v196, v160, &qword_1ECE88C88, &qword_1E10AF9D8);
  sub_1E0FEDC50(&v198, v160, &qword_1ECE88C88, &qword_1E10AF9D8);
  sub_1E0FEDC50(&v176, v160, &qword_1ECE88C88, &qword_1E10AF9D8);
  v121 = _s12ShazamEvents5SportV6LeagueV2eeoiySbAE_AEtFZ_0(&v169, &v162);
  v158[4] = v166;
  v158[5] = v167;
  v159 = v168;
  v158[0] = v162;
  v158[1] = v163;
  v158[2] = v164;
  v158[3] = v165;
  sub_1E0FEE76C(v158);
  v160[4] = v173;
  v160[5] = v174;
  v161 = v175;
  v160[0] = v169;
  v160[1] = v170;
  v160[2] = v171;
  v160[3] = v172;
  sub_1E0FEE76C(v160);
  v162 = v113;
  v165 = v192;
  v166 = v193;
  v167 = v194;
  v168 = v195;
  v163 = v190;
  v164 = v191;
  sub_1E0FF0440(&v162, &qword_1ECE88C88, &qword_1E10AF9D8);
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v124 = v146[15];
  v126 = *(a1 + v124);
  v125 = *(a1 + v124 + 8);
  v127 = *(a1 + v124 + 24);
  v157 = *(a1 + v124 + 16);
  v128 = (a2 + v124);
  v129 = *v128;
  v130 = v128[1];
  v131 = v128[2];
  v132 = v128[3];
  if (!v127)
  {
    if (!v132)
    {

      goto LABEL_66;
    }

LABEL_64:

    *&v176 = v126;
    *(&v176 + 1) = v125;
    *&v177 = v157;
    *(&v177 + 1) = v127;
    *&v178 = v129;
    *(&v178 + 1) = v130;
    *&v179 = v131;
    *(&v179 + 1) = v132;
LABEL_77:
    v72 = &unk_1ECE88F60;
    v73 = &unk_1E10B0620;
    goto LABEL_78;
  }

  if (!v132)
  {
    goto LABEL_64;
  }

  if (v126 != v129 || v125 != v130)
  {
    goto LABEL_74;
  }

  if ((v157 != v131 || v127 != v132) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  v133 = v146[16];
  v134 = a1 + v133;
  v136 = *(a1 + v133);
  v135 = *(a1 + v133 + 8);
  v138 = *(a1 + v133 + 16);
  v137 = *(v134 + 3);
  v139 = (a2 + v133);
  v141 = *v139;
  v140 = v139[1];
  v142 = v139[2];
  v143 = v139[3];
  if (!v137)
  {
    if (!v143)
    {

      return 1;
    }

    goto LABEL_76;
  }

  if (!v143)
  {
LABEL_76:

    *&v176 = v136;
    *(&v176 + 1) = v135;
    *&v177 = v138;
    *(&v177 + 1) = v137;
    *&v178 = v141;
    *(&v178 + 1) = v140;
    *&v179 = v142;
    *(&v179 + 1) = v143;
    goto LABEL_77;
  }

  if (v136 != v141 || v135 != v140)
  {
LABEL_74:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  return v138 == v142 && v137 == v143 || (sub_1E10AE8FC() & 1) != 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E0FED974()
{
  result = qword_1ECE88C98;
  if (!qword_1ECE88C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88C98);
  }

  return result;
}

unint64_t sub_1E0FED9C8()
{
  result = qword_1EE17FE90;
  if (!qword_1EE17FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FE90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E0FEDA64()
{
  result = qword_1ECE89510;
  if (!qword_1ECE89510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89510);
  }

  return result;
}

uint64_t sub_1E0FEDB0C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E0FF04A0(a2, type metadata accessor for Ticket, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E0FEDBA8()
{
  result = qword_1ECE88D08;
  if (!qword_1ECE88D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D08);
  }

  return result;
}

unint64_t sub_1E0FEDBFC()
{
  result = qword_1ECE88D10;
  if (!qword_1ECE88D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D10);
  }

  return result;
}

uint64_t sub_1E0FEDC50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1E0FEDD04()
{
  result = qword_1EE17FE70;
  if (!qword_1EE17FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FE70);
  }

  return result;
}

uint64_t sub_1E0FEDD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E0FEDDC0()
{
  result = qword_1EE17E830;
  if (!qword_1EE17E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E830);
  }

  return result;
}

uint64_t sub_1E0FEDE14(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CC8, &qword_1E10AF9F0);
    sub_1E0FEDEAC(a2, &qword_1ECE88CE0, &qword_1E10B6B50, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E0FEDEAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1E0FEDEF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E0FEDF5C()
{
  result = qword_1ECE88D68;
  if (!qword_1ECE88D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D68);
  }

  return result;
}

unint64_t sub_1E0FEDFB0()
{
  result = qword_1ECE88D70;
  if (!qword_1ECE88D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D70);
  }

  return result;
}

unint64_t sub_1E0FEE004()
{
  result = qword_1ECE88D80;
  if (!qword_1ECE88D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D80);
  }

  return result;
}

uint64_t sub_1E0FEE0C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10BF480 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E10BF4A0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65756761656CLL && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64726143656D6167 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1E0FEE4B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

unint64_t sub_1E0FEE620()
{
  result = qword_1ECE88D90;
  if (!qword_1ECE88D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D90);
  }

  return result;
}

unint64_t sub_1E0FEE674()
{
  result = qword_1ECE88D98;
  if (!qword_1ECE88D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D98);
  }

  return result;
}

unint64_t sub_1E0FEE6E0()
{
  result = qword_1ECE88DA8;
  if (!qword_1ECE88DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DA8);
  }

  return result;
}

unint64_t sub_1E0FEE7A0()
{
  result = qword_1ECE88DB8;
  if (!qword_1ECE88DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DB8);
  }

  return result;
}

uint64_t sub_1E0FEE7F4(uint64_t a1)
{
  result = sub_1E0FF04A0(&qword_1EE17E920, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E0FEE84C(uint64_t a1)
{
  result = sub_1E0FF04A0(&qword_1EE17E918, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E0FEE8EC(void *a1)
{
  a1[1] = sub_1E0FF04A0(&qword_1EE17E930, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  a1[2] = sub_1E0FF04A0(&qword_1EE17E948, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  a1[3] = sub_1E0FF04A0(&qword_1EE17E940, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  result = sub_1E0FF04A0(&qword_1EE17E928, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  a1[4] = result;
  return result;
}

unint64_t sub_1E0FEEA08()
{
  result = qword_1ECE88DC0;
  if (!qword_1ECE88DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DC0);
  }

  return result;
}

unint64_t sub_1E0FEEA60()
{
  result = qword_1ECE88DC8;
  if (!qword_1ECE88DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DC8);
  }

  return result;
}

unint64_t sub_1E0FEEAB4(void *a1)
{
  a1[1] = sub_1E0FEEAF4();
  a1[2] = sub_1E0FEEB48();
  a1[3] = sub_1E0FEEB9C();
  result = sub_1E0FEEBF0();
  a1[4] = result;
  return result;
}

unint64_t sub_1E0FEEAF4()
{
  result = qword_1EE17EA60;
  if (!qword_1EE17EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA60);
  }

  return result;
}

unint64_t sub_1E0FEEB48()
{
  result = qword_1EE17EA78[0];
  if (!qword_1EE17EA78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17EA78);
  }

  return result;
}

unint64_t sub_1E0FEEB9C()
{
  result = qword_1EE17EA70;
  if (!qword_1EE17EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA70);
  }

  return result;
}

unint64_t sub_1E0FEEBF0()
{
  result = qword_1EE17EA58;
  if (!qword_1EE17EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA58);
  }

  return result;
}

unint64_t sub_1E0FEEC48()
{
  result = qword_1EE17EA68;
  if (!qword_1EE17EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA68);
  }

  return result;
}

unint64_t sub_1E0FEECD8()
{
  result = qword_1ECE88DD0;
  if (!qword_1ECE88DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DD0);
  }

  return result;
}

void sub_1E0FEED54(uint64_t a1)
{
  sub_1E0FEEF80(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Time(319);
    if (v2 <= 0x3F)
    {
      sub_1E0FEF078(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E0FEF078(319, &qword_1EE17FF78, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E0FEF014(319);
          if (v5 <= 0x3F)
          {
            sub_1E0FEF078(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1E0FEF078(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1E0FEF59C(319, qword_1EE17E950, &type metadata for Sport.League);
                if (v8 <= 0x3F)
                {
                  sub_1E0FEF59C(319, qword_1EE17EC30, &type metadata for Image);
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

void sub_1E0FEEF80(uint64_t a1)
{
  if (!qword_1ECE88DD8)
  {
    v2 = type metadata accessor for Sport(255);
    v3 = sub_1E0FF04A0(&qword_1EE17E920, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
    v5 = type metadata accessor for EventCategory(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECE88DD8);
    }
  }
}

void sub_1E0FEF014(uint64_t a1)
{
  if (!qword_1EE17E430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CE0, &qword_1E10B6B50);
    v1 = sub_1E10AE20C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE17E430);
    }
  }
}

void sub_1E0FEF078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E0FEF0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E0FEF138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E0FEF1A0(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Sport.Detail.Score(255, v2, *(a1 + 24), v3);
    sub_1E10AE4EC();
    if (v5 <= 0x3F)
    {
      sub_1E0FEF59C(319, qword_1EE17ED18, &type metadata for Color);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E0FEF27C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1E0FEF3C8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1E0FEF59C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E10AE4EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E0FEF5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E0FEF630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E0FEF678(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E0FEF6E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1E0FEF728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Sport.League.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sport.League.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialEventConfigurationProvider.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PartialEventConfigurationProvider.Error(_WORD *result, int a2, int a3)
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

uint64_t _s5ErrorO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Sport.Competitor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sport.Competitor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Sport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E0FEFDAC()
{
  result = qword_1ECE88EF0;
  if (!qword_1ECE88EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88EF0);
  }

  return result;
}

unint64_t sub_1E0FEFE04()
{
  result = qword_1ECE88EF8;
  if (!qword_1ECE88EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88EF8);
  }

  return result;
}

unint64_t sub_1E0FEFE94()
{
  result = qword_1ECE88F00;
  if (!qword_1ECE88F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F00);
  }

  return result;
}

unint64_t sub_1E0FEFEEC()
{
  result = qword_1ECE88F08;
  if (!qword_1ECE88F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F08);
  }

  return result;
}

unint64_t sub_1E0FEFF44()
{
  result = qword_1ECE88F10;
  if (!qword_1ECE88F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F10);
  }

  return result;
}

unint64_t sub_1E0FF000C()
{
  result = qword_1ECE88F18;
  if (!qword_1ECE88F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F18);
  }

  return result;
}

unint64_t sub_1E0FF0064()
{
  result = qword_1ECE88F20;
  if (!qword_1ECE88F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F20);
  }

  return result;
}

unint64_t sub_1E0FF00BC()
{
  result = qword_1ECE88F28;
  if (!qword_1ECE88F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F28);
  }

  return result;
}

unint64_t sub_1E0FF0114()
{
  result = qword_1ECE88F30;
  if (!qword_1ECE88F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F30);
  }

  return result;
}

uint64_t sub_1E0FF0170(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F635FLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E0FF0378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0FF03E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E0FF0440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E0FF04A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E0FF0548(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  v2[12] = swift_task_alloc();
  v2[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F70, &qword_1E10B0790);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E0FF067C, v1, 0);
}

uint64_t sub_1E0FF067C()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  v0[19] = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  swift_beginAccess();
  sub_1E0FF3D2C(v2 + v3, v1);
  v4 = type metadata accessor for PartialEventConfiguration(0);
  v0[20] = v4;
  v5 = *(v4 - 8);
  v0[21] = v5;
  v6 = *(v5 + 48);
  v0[22] = v6;
  v0[23] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  v8 = v0[18];
  if (v7 == 1)
  {
    v9 = v0[11];
    sub_1E0FF3D9C(v8);
    v10 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask;
    v0[24] = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask;
    v11 = *(v9 + v10);
    v0[25] = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      v0[26] = v12;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
      v0[27] = v13;
      *v12 = v0;
      v12[1] = sub_1E0FF09EC;
      v14 = v0[15];
    }

    else
    {
      v18 = v0[11];
      v17 = v0[12];
      v19 = sub_1E10AE29C();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
      v20 = sub_1E0FF3E04();
      v21 = swift_allocObject();
      v21[2] = v18;
      v21[3] = v20;
      v21[4] = v18;
      swift_retain_n();
      v11 = sub_1E107443C(0, 0, v17, &unk_1E10B07A8, v21);
      v0[28] = v11;
      *(v9 + v10) = v11;

      v22 = swift_task_alloc();
      v0[29] = v22;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
      v0[30] = v13;
      *v22 = v0;
      v22[1] = sub_1E0FF0C58;
      v14 = v0[14];
    }

    v23 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA20](v14, v11, v4, v13, v23);
  }

  else
  {
    sub_1E0FF3F10(v8, v0[10], type metadata accessor for PartialEventConfiguration);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1E0FF09EC()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E0FF0AFC, v1, 0);
}

uint64_t sub_1E0FF0AFC()
{
  v1 = v0[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[9] = *v1;
    swift_willThrowTypedImpl();
  }

  else
  {
    v3 = v0[10];

    sub_1E0FF3F10(v1, v3, type metadata accessor for PartialEventConfiguration);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E0FF0C58()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E0FF0D84, v1, 0);
}

uint64_t sub_1E0FF0D84()
{
  v1 = v0[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[8] = *v1;
    swift_willThrowTypedImpl();
LABEL_5:

    v12 = v0[1];
    goto LABEL_7;
  }

  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[11];
  sub_1E0FF3F10(v1, v7, type metadata accessor for PartialEventConfiguration);
  (*(v4 + 56))(v7, 0, 1, v5);
  swift_beginAccess();
  sub_1E0FF3F78(v7, v9 + v6);
  swift_endAccess();
  *(v9 + v2) = 0;

  sub_1E0FF3D2C(v9 + v6, v8);
  v10 = v3(v8, 1, v5);
  v11 = v0[16];
  if (v10 == 1)
  {
    sub_1E0FF3D9C(v11);
    sub_1E0FF3FE8();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_1E0FF3F10(v11, v0[10], type metadata accessor for PartialEventConfiguration);

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_1E0FF0FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E0FF0FDC, a4, 0);
}

uint64_t sub_1E0FF0FDC()
{
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v1 = sub_1E10ADF9C();
  __swift_project_value_buffer(v1, qword_1EE185540);
  v2 = sub_1E10ADF7C();
  v3 = sub_1E10AE43C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E0FDF000, v2, v3, "Fetch configuration for partial event service", v4, 2u);
    MEMORY[0x1E12EE9E0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1E0FF112C;
  v6 = *(v0 + 16);

  return sub_1E0FF1220(v6);
}

uint64_t sub_1E0FF112C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E0FF1220(uint64_t a1)
{
  v2[607] = v1;
  v2[601] = a1;
  v2[613] = type metadata accessor for AccessTokenResource(0);
  v2[619] = swift_task_alloc();
  v2[625] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E0FF12C4, v1, 0);
}

uint64_t sub_1E0FF12C4()
{
  v1 = sub_1E1062474();
  *(v0 + 3920) = &type metadata for EventsRemoteConfiguration;
  *(v0 + 3928) = &off_1F5BF1318;
  *(v0 + 3896) = v1;
  v2 = sub_1E0FF9BD4();
  *(v0 + 4560) = &type metadata for EventsRemoteDefaultValues;
  *(v0 + 4568) = &off_1F5BEE5B0;
  *(v0 + 4536) = v2;
  sub_1E0FF33C0(v0 + 3896, v0 + 4376);
  v3 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for AccessTokenProvider();
  v4 = swift_allocObject();
  *(v0 + 5048) = v4;
  swift_defaultActor_initialize();
  *(v4 + 152) = v3;
  *(v4 + 160) = 0;
  v5 = *(v0 + 4392);
  *(v4 + 112) = *(v0 + 4376);
  *(v4 + 128) = v5;
  *(v4 + 144) = *(v0 + 4408);
  sub_1E0FF33C0(v0 + 3896, v0 + 4056);
  v6 = swift_allocObject();
  v7 = *(v0 + 4072);
  *(v6 + 16) = *(v0 + 4056);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 4088);
  v8 = swift_allocObject();
  *(v0 + 5096) = v8;
  *(v8 + 16) = &unk_1E10B06F0;
  *(v8 + 24) = v6;
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 3976);
  v9 = swift_allocObject();
  v10 = *(v0 + 3992);
  *(v9 + 16) = *(v0 + 3976);
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 4008);
  v11 = swift_allocObject();
  *(v0 + 5144) = v11;
  *(v11 + 16) = &unk_1E10B0720;
  *(v11 + 24) = v9;
  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 4136);
  v12 = swift_allocObject();
  v13 = *(v0 + 4152);
  *(v12 + 16) = *(v0 + 4136);
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v0 + 4168);
  v14 = swift_allocObject();
  *(v0 + 5192) = v14;
  *(v14 + 16) = &unk_1E10B0740;
  *(v14 + 24) = v12;
  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 4296);
  v15 = swift_allocObject();
  v16 = *(v0 + 4312);
  *(v15 + 16) = *(v0 + 4296);
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v0 + 4328);
  v17 = swift_allocObject();
  *(v0 + 5240) = v17;
  *(v17 + 16) = &unk_1E10B0760;
  *(v17 + 24) = v15;
  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 4456);
  v18 = swift_allocObject();
  v19 = *(v0 + 4472);
  *(v18 + 16) = *(v0 + 4456);
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v0 + 4488);
  v20 = swift_allocObject();
  *(v0 + 5288) = v20;
  *(v20 + 16) = &unk_1E10B0778;
  *(v20 + 24) = v18;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 3216, v0 + 4216, sub_1E0FF1748, v0 + 4176);
}

uint64_t sub_1E0FF1748()
{
  v1[662] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 577, sub_1E0FF1F84, v1 + 532);
  }

  else
  {
    v1[663] = v1[527];
    v1[664] = v1[528];
    v1[665] = v1[529];
    v1[666] = v1[530];
    v1[667] = v1[531];

    v2 = v1[625];

    return MEMORY[0x1EEE6DEC0](v1 + 2, v2, sub_1E0FF1844, v1 + 584);
  }
}

uint64_t sub_1E0FF1844()
{
  v1[668] = v0;
  if (v0)
  {
    v2 = v1[607];

    return MEMORY[0x1EEE6DFA0](sub_1E0FF21F0, v2, 0);
  }

  else
  {
    sub_1E0FF3CC8(v1[625], v1[619]);

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 595, sub_1E0FF18FC, v1 + 626);
  }
}

uint64_t sub_1E0FF18FC()
{
  if (v0)
  {

    v2 = 5;
  }

  else
  {
    v2 = *(v1 + 4760);
  }

  *(v1 + 5352) = v2;

  return MEMORY[0x1EEE6DEC0](v1 + 1936, v1 + 4712, sub_1E0FF1984, v1 + 5056);
}

uint64_t sub_1E0FF1984()
{
  if (v0)
  {

    v2 = 1.0;
  }

  else
  {
    v2 = *(v1 + 4712);
  }

  *(v1 + 5360) = v2;

  return MEMORY[0x1EEE6DEC0](v1 + 1296, v1 + 4664, sub_1E0FF1A0C, v1 + 5104);
}

uint64_t sub_1E0FF1A0C()
{
  if (v0)
  {

    v2 = 10;
  }

  else
  {
    v2 = *(v1 + 4664);
  }

  *(v1 + 5368) = v2;

  return MEMORY[0x1EEE6DEC0](v1 + 656, v1 + 4616, sub_1E0FF1A94, v1 + 5152);
}

uint64_t sub_1E0FF1A94()
{
  v2 = v0;
  v3 = *(v1 + 4856);
  if (v2)
  {

    v4 = sub_1E0FF1C28;
  }

  else
  {
    v4 = sub_1E0FF1B14;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E0FF1B14()
{
  v1 = *(v0 + 4616);
  v2 = *(v0 + 5368);
  v3 = *(v0 + 5360);
  v4 = *(v0 + 5352);
  v5 = *(v0 + 5336);
  v6 = *(v0 + 5312);
  v7 = *(v0 + 4952);
  v8 = *(v0 + 4808);
  v9 = *(v0 + 5320);
  *v8 = *(v0 + 5304);
  *(v8 + 8) = v6;
  *(v8 + 16) = v9;
  *(v8 + 32) = v5;
  v10 = type metadata accessor for PartialEventConfiguration(0);
  sub_1E0FF3F10(v7, v8 + v10[5], type metadata accessor for AccessTokenResource);
  *(v8 + v10[6]) = v4;
  *(v8 + v10[7]) = v3;
  *(v8 + v10[8]) = v2;
  *(v8 + v10[9]) = v1;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 4616, sub_1E0FF1D30, v0 + 5200);
}

uint64_t sub_1E0FF1C28()
{
  v1 = *(v0 + 5368);
  v2 = *(v0 + 5360);
  v3 = *(v0 + 5352);
  v4 = *(v0 + 5336);
  v5 = *(v0 + 5312);
  v6 = *(v0 + 4952);
  v7 = *(v0 + 4808);
  v8 = *(v0 + 5320);
  *v7 = *(v0 + 5304);
  *(v7 + 8) = v5;
  *(v7 + 16) = v8;
  *(v7 + 32) = v4;
  v9 = type metadata accessor for PartialEventConfiguration(0);
  sub_1E0FF3F10(v6, v7 + v9[5], type metadata accessor for AccessTokenResource);
  *(v7 + v9[6]) = v3;
  *(v7 + v9[7]) = v2;
  *(v7 + v9[8]) = v1;
  *(v7 + v9[9]) = 0;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 4616, sub_1E0FF1D30, v0 + 5200);
}

uint64_t sub_1E0FF1E8C()
{

  sub_1E0FF3C20(v0 + 4536);
  sub_1E0FF3C74(v0 + 3896);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E0FF20F0()
{

  sub_1E0FF3C20(v0 + 4536);
  sub_1E0FF3C74(v0 + 3896);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E0FF21F0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 4616, sub_1E0FF2284, v0 + 4720);
}

uint64_t sub_1E0FF23F0()
{

  sub_1E0FF3C20(v0 + 4536);
  sub_1E0FF3C74(v0 + 3896);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E0FF24F0(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF40E4;

  return sub_1E105DC58(v1 + 16);
}

uint64_t sub_1E0FF258C(uint64_t a1, int *a2)
{
  *(v2 + 56) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1E0FF2680;

  return v5(v2 + 16);
}

uint64_t sub_1E0FF2680()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 56);
    *(v6 + 32) = *(v2 + 48);
    *v6 = v4;
    *(v6 + 16) = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1E0FF2794(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E0FE5FDC;

  return sub_1E0FFBA58(a1);
}

uint64_t sub_1E0FF2850()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF28F0;

  return sub_1E0FFA428(v1);
}

uint64_t sub_1E0FF28F0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E0FF29F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E0FF2ADC;

  return v5();
}

uint64_t sub_1E0FF2ADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1E0FF2C0C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF2CAC;

  return sub_1E0FF9E84(v1);
}

uint64_t sub_1E0FF2CAC(double a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4.n128_f64[0] = a1;
  }

  return v5(v4);
}

uint64_t sub_1E0FF2DAC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E0FF2E98;

  return v5();
}

uint64_t sub_1E0FF2E98(double a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1E0FF2FC8()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF40E8;

  return sub_1E0FFAB00(v1);
}

uint64_t sub_1E0FF3088()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF40EC;

  return sub_1E0FFAFC4(v1);
}

uint64_t sub_1E0FF3128()
{
  sub_1E0FF3D9C(v0 + OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1E0FF31A0(uint64_t a1)
{
  sub_1E0FF3244(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E0FF3244(uint64_t a1)
{
  if (!qword_1EE17F1C8[0])
  {
    type metadata accessor for PartialEventConfiguration(255);
    v1 = sub_1E10AE4EC();
    if (!v2)
    {
      atomic_store(v1, qword_1EE17F1C8);
    }
  }
}

uint64_t sub_1E0FF32BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E0FF331C(uint64_t a1)
{
  result = type metadata accessor for AccessTokenResource(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E0FF341C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E0FE6540;

  return sub_1E0FF24F0(a1);
}

uint64_t sub_1E0FF34B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E0FE5FDC;

  return sub_1E0FF258C(a1, v4);
}

uint64_t sub_1E0FF3570(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E0FE6540;

  return sub_1E0FF2794(a1);
}

uint64_t sub_1E0FF3668()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF36FC;

  return sub_1E0FF2830(v0 + 16);
}

uint64_t sub_1E0FF36FC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1E0FF37F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E0FE6540;

  return sub_1E0FF29F0(a1, v4);
}

uint64_t sub_1E0FF38B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF3944;

  return sub_1E0FF2BEC(v0 + 16);
}

uint64_t sub_1E0FF3944(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_1E0FF3A40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E0FE6540;

  return sub_1E0FF2DAC(a1, v4);
}

uint64_t sub_1E0FF3AF8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF40DC;

  return sub_1E0FF2FA8(v0 + 16);
}

uint64_t sub_1E0FF3B8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF40E0;

  return sub_1E0FF3068(v0 + 16);
}

uint64_t sub_1E0FF3CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessTokenResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FF3D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FF3D9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E0FF3E04()
{
  result = qword_1ECE88F80;
  if (!qword_1ECE88F80)
  {
    type metadata accessor for PartialEventConfigurationProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F80);
  }

  return result;
}

uint64_t sub_1E0FF3E5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E0FE6540;

  return sub_1E0FF0FBC(a1, v4, v5, v6);
}

uint64_t sub_1E0FF3F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0FF3F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0FF3FE8()
{
  result = qword_1ECE88F90;
  if (!qword_1ECE88F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F90);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1E0FF4088()
{
  result = qword_1ECE88F98;
  if (!qword_1ECE88F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F98);
  }

  return result;
}

id sub_1E0FF40F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1E0FF4870();
    v4 = sub_1E10ADFCC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *sub_1E0FF417C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1E0FF48BC(v2, v36);
    v7 = v37;
    v8 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v9 = *(v8 + 16);
    v10 = v9(v7, v8);
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = 0xE300000000000000;
        v12 = 5460050;
        if (!v3[2])
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = 0x6C6552676E697375;
        v11 = 0xEA00000000007961;
        if (!v3[2])
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v12 = 0x65736E6F70736572;
      v11 = 0xEC00000065646F43;
      if (!v3[2])
      {
        goto LABEL_13;
      }
    }

    sub_1E1014100(v12, v11);
    v14 = v13;

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_14:
    v15 = v9(v7, v8);
    if (v15)
    {
      v16 = v15 == 1 ? 5460050 : 0x6C6552676E697375;
      v17 = v15 == 1 ? 0xE300000000000000 : 0xEA00000000007961;
    }

    else
    {
      v16 = 0x65736E6F70736572;
      v17 = 0xEC00000065646F43;
    }

    v18 = v37;
    v19 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v20 = (*(v19 + 32))(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v3;
    v22 = sub_1E1014100(v16, v17);
    v24 = v3[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v3[3] < v27)
    {
      sub_1E10149CC(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1E1014100(v16, v17);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_36;
      }

LABEL_27:
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_28;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v33 = v22;
    sub_1E101634C();
    v22 = v33;
    if (v28)
    {
LABEL_3:
      v4 = v22;

      v3 = v35;
      v5 = v35[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v20;

      goto LABEL_4;
    }

LABEL_28:
    v3 = v35;
    v35[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v35[6] + 16 * v22);
    *v30 = v16;
    v30[1] = v17;
    *(v35[7] + 8 * v22) = v20;
    v31 = v35[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_35;
    }

    v35[2] = v32;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v36);
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

void sub_1E0FF4488(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA0, &qword_1E10B08A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E10B0870;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 64) = sub_1E0FF4804(&qword_1ECE88FB0, &qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 32) = 1;
  *(v4 + 40) = a1;
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 104) = sub_1E0FF4804(&qword_1ECE88FC0, &qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 72) = 2;
  *(v4 + 73) = a2;
  v5 = sub_1E10AE04C();
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000025;
  v6[3] = 0x80000001E10BF590;
  v6[4] = v4;
  v8[4] = sub_1E0FF4960;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E0FF40F0;
  v8[3] = &block_descriptor_6;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

void sub_1E0FF4648(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA0, &qword_1E10B08A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E10B0870;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 64) = sub_1E0FF4804(&qword_1ECE88FB0, &qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 32) = 0;
  *(v4 + 40) = a1;
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 104) = sub_1E0FF4804(&qword_1ECE88FC0, &qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 72) = 2;
  *(v4 + 73) = a2;
  v5 = sub_1E10AE04C();
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000023;
  v6[3] = 0x80000001E10BF540;
  v6[4] = v4;
  v8[4] = sub_1E0FF4980;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E0FF40F0;
  v8[3] = &block_descriptor;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t sub_1E0FF4804(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E0FF4870()
{
  result = qword_1ECE88FC8;
  if (!qword_1ECE88FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE88FC8);
  }

  return result;
}

uint64_t sub_1E0FF48BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_1E0FF4998(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FF0, &qword_1E10B09A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF4E90();
  sub_1E10AEA5C();
  v13[0] = a2;
  v13[1] = a3;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1E0FF4AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E0FF4B84(uint64_t a1)
{
  v2 = sub_1E0FF4E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FF4BC0(uint64_t a1)
{
  v2 = sub_1E0FF4E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E0FF4BFC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E0FF4D1C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1E0FF4C44(uint64_t a1)
{
  *(a1 + 8) = sub_1E0FF4C74();
  result = sub_1E0FF4CC8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E0FF4C74()
{
  result = qword_1ECE88FD0;
  if (!qword_1ECE88FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FD0);
  }

  return result;
}

unint64_t sub_1E0FF4CC8()
{
  result = qword_1ECE88FD8;
  if (!qword_1ECE88FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FD8);
  }

  return result;
}

void *sub_1E0FF4D1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FE0, &qword_1E10B09A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF4E90();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1E0FF4EE4();
    sub_1E10AE7FC();
    (*(v4 + 8))(v8, v3);
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1E0FF4E90()
{
  result = qword_1ECE88FE8;
  if (!qword_1ECE88FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FE8);
  }

  return result;
}

unint64_t sub_1E0FF4EE4()
{
  result = qword_1EE17F328[0];
  if (!qword_1EE17F328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F328);
  }

  return result;
}

unint64_t sub_1E0FF4F38()
{
  result = qword_1ECE88FF8;
  if (!qword_1ECE88FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FF8);
  }

  return result;
}

unint64_t sub_1E0FF4FA0()
{
  result = qword_1ECE89000;
  if (!qword_1ECE89000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89000);
  }

  return result;
}

unint64_t sub_1E0FF4FF8()
{
  result = qword_1ECE89008;
  if (!qword_1ECE89008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89008);
  }

  return result;
}

unint64_t sub_1E0FF5050()
{
  result = qword_1ECE89010;
  if (!qword_1ECE89010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89010);
  }

  return result;
}

uint64_t Venue.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Venue.muid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Venue.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

id Venue.location.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = objc_allocWithZone(MEMORY[0x1E6985C40]);

  return [v3 initWithLatitude:v1 longitude:v2];
}

uint64_t Venue.structuredAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v10 = v1[5];
  v11 = v2;
  v4 = v1[8];
  v12 = v1[7];
  v3 = v12;
  v13 = v4;
  v6 = v1[4];
  v9[0] = v1[3];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1E0FF73BC(v9, &v8);
}

unint64_t sub_1E0FF51D0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x656475746974616CLL;
  if (v1 != 4)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684632941;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E0FF5278@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0FF7D8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0FF52A0(uint64_t a1)
{
  v2 = sub_1E0FF742C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FF52DC(uint64_t a1)
{
  v2 = sub_1E0FF742C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Venue.Schedule.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[5];
  v23 = v1[6];
  v24 = v2;
  v4 = v1[7];
  v5 = v1[9];
  v25 = v1[8];
  v6 = v25;
  v26 = v5;
  v7 = v1[3];
  v9 = v1[1];
  v19 = v1[2];
  v8 = v19;
  v20 = v7;
  v10 = v1[3];
  v11 = v1[5];
  v21 = v1[4];
  v12 = v21;
  v22 = v11;
  v13 = v1[1];
  v18[0] = *v1;
  v14 = v18[0];
  v18[1] = v13;
  a1[6] = v23;
  a1[7] = v4;
  v15 = v1[9];
  a1[8] = v6;
  a1[9] = v15;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v3;
  *a1 = v14;
  a1[1] = v9;
  return sub_1E0FE6720(v18, &v17);
}

uint64_t Venue.Schedule.events.getter(void *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](a3, a4);
    v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    *v9 = sub_1E10AE20C();
    v10 = v9 + 1;
    v11 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v12 = v7;
    do
    {
      v11 += 8;
      *v10++ = sub_1E10AE20C();
      --v12;
    }

    while (v12);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  else
  {
    TupleTypeMetadata = sub_1E10AE20C();
  }

  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v4 + *(a2 + 60), TupleTypeMetadata);
  if (!v7)
  {
    return *v17;
  }

  result = *&v17[*(TupleTypeMetadata + 32)];
  v20 = (TupleTypeMetadata + 48);
  do
  {
    v22 = *a1++;
    v21 = v22;
    v23 = *v20;
    v20 += 4;
    *v21 = *&v17[v23];
    --v7;
  }

  while (v7);
  return result;
}

uint64_t sub_1E0FF5548@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>)
{
  v11 = a8;
  v12 = a7;
  v45 = a2;
  v46 = a6;
  if (a4)
  {
    v43 = a7;
    v44 = a8;
    v42 = &v42;
    MEMORY[0x1EEE9AC00](a10, a11);
    v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    *v20 = sub_1E10AE20C();
    v21 = v20 + 1;
    v22 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v23 = a4;
    do
    {
      v22 += 8;
      *v21++ = sub_1E10AE20C();
      --v23;
    }

    while (v23);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = v43;
    v11 = v44;
  }

  else
  {
    TupleTypeMetadata = sub_1E10AE20C();
  }

  v27 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v29 = (&v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    *(v29 + *(TupleTypeMetadata + 32)) = v45;
    v30 = (TupleTypeMetadata + 48);
    v31 = a4;
    do
    {
      v33 = *v30;
      v30 += 4;
      v32 = v33;
      v34 = *a3++;
      *(v29 + v32) = *v34;
      --v31;
    }

    while (v31);
  }

  else
  {
    *v29 = v45;
  }

  v35 = a1[7];
  *(a9 + 6) = a1[6];
  *(a9 + 7) = v35;
  v36 = a1[9];
  *(a9 + 8) = a1[8];
  *(a9 + 9) = v36;
  v37 = a1[3];
  *(a9 + 2) = a1[2];
  *(a9 + 3) = v37;
  v38 = a1[5];
  *(a9 + 4) = a1[4];
  *(a9 + 5) = v38;
  v39 = a1[1];
  *a9 = *a1;
  *(a9 + 1) = v39;
  v47[0] = a4;
  v47[1] = a5;
  v47[2] = v46;
  v47[3] = v12;
  v47[4] = v11;
  v40 = type metadata accessor for Venue.Schedule(0, v47);
  return (*(v27 + 32))(&a9[*(v40 + 60)], v29, TupleTypeMetadata);
}

uint64_t Venue.StructuredAddress.address.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Venue.StructuredAddress.postCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Venue.StructuredAddress.city.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Venue.StructuredAddress.region.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Venue.StructuredAddress.country.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Venue.StructuredAddress.countryIsoCode.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1E0FF588C()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x6E6F69676572;
  v4 = 0x7972746E756F63;
  if (v1 != 4)
  {
    v4 = 0x497972746E756F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646F4374736F70;
  if (v1 != 1)
  {
    v5 = 2037672291;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E0FF5948@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0FF7F90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0FF5970(uint64_t a1)
{
  v2 = sub_1E0FF7590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FF59AC(uint64_t a1)
{
  v2 = sub_1E0FF7590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Venue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89020, &qword_1E10B0AD8);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v18[0] = v1[5];
  v18[1] = v11;
  v12 = *(v1 + 6);
  v33 = *(v1 + 5);
  v34 = v12;
  v13 = *(v1 + 8);
  v35 = *(v1 + 7);
  v36 = v13;
  v14 = *(v1 + 4);
  v31 = *(v1 + 3);
  v32 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF742C();

  sub_1E10AEA5C();
  *&v25 = v8;
  *(&v25 + 1) = v9;
  LOBYTE(v23[0]) = 0;
  sub_1E0FED9C8();
  v15 = v37;
  sub_1E10AE8AC();
  if (v15)
  {

    return (*(v21 + 8))(v7, v3);
  }

  else
  {
    v17 = v21;

    *&v25 = v20;
    *(&v25 + 1) = v19;
    LOBYTE(v23[0]) = 1;
    sub_1E10AE85C();
    LOBYTE(v25) = 2;
    sub_1E10AE86C();
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v24 = 3;
    sub_1E0FF73BC(&v31, v23);
    sub_1E0FF7480();
    sub_1E10AE85C();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_1E0FF0440(v23, &qword_1ECE89018, &qword_1E10B0AD0);
    v22 = 4;
    sub_1E10AE88C();
    v22 = 5;
    sub_1E10AE88C();
    return (*(v17 + 8))(v7, v3);
  }
}

uint64_t Venue.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v7 = *(v1 + 144);
  v6 = *(v1 + 152);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v3)
  {
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (v5 == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v16 = *(v1 + 96);
    v17 = *(v1 + 112);
    v18 = *(v1 + 128);
    v14 = *(v1 + 64);
    v15 = *(v1 + 80);
    *&v13 = v4;
    *(&v13 + 1) = v5;
    sub_1E10AE9EC();
    v19[0] = v4;
    v19[1] = v5;
    v8 = *(v1 + 112);
    v22 = *(v1 + 96);
    v23 = v8;
    v24 = *(v1 + 128);
    v9 = *(v1 + 80);
    v20 = *(v1 + 64);
    v21 = v9;
    sub_1E0FF74D4(v19, v25);
    Venue.StructuredAddress.hash(into:)(a1);
    v25[2] = v15;
    v25[3] = v16;
    v25[4] = v17;
    v25[5] = v18;
    v25[0] = v13;
    v25[1] = v14;
    sub_1E0FF750C(v25);
  }

  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1E12EE180](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  return MEMORY[0x1E12EE180](*&v11);
}

uint64_t Venue.hashValue.getter()
{
  sub_1E10AE9CC();
  Venue.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Venue.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89030, &qword_1E10B0AE0);
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF742C();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v5;
  LOBYTE(v38) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v10 = v48;
  v11 = v49;
  LOBYTE(v38) = 1;
  sub_1E10AE7AC();
  v33 = v10;
  v12 = v48;
  v35 = v49;
  LOBYTE(v48) = 2;
  v13 = sub_1E10AE7BC();
  v34 = v14;
  v32 = v13;
  v75 = 3;
  sub_1E0FF753C();
  sub_1E10AE7AC();
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v68 = v62;
  v69 = v63;
  LOBYTE(v48) = 4;
  sub_1E10AE7DC();
  v16 = v15;
  v74 = 5;
  sub_1E10AE7DC();
  v18 = v17;
  v19 = v12;
  v31 = v12;
  (*(v36 + 8))(v9, v37);
  v21 = v32;
  v20 = v33;
  *&v38 = v33;
  *(&v38 + 1) = v11;
  *&v39 = v19;
  v23 = v34;
  v22 = v35;
  *(&v39 + 1) = v35;
  *&v40 = v32;
  *(&v40 + 1) = v34;
  v43 = v70;
  v44 = v71;
  v45 = v72;
  v46 = v73;
  v41 = v68;
  v42 = v69;
  *&v47 = v16;
  *(&v47 + 1) = v18;
  v24 = v39;
  *a2 = v38;
  a2[1] = v24;
  v25 = v43;
  a2[4] = v42;
  a2[5] = v25;
  v26 = v47;
  a2[8] = v46;
  a2[9] = v26;
  v27 = v45;
  a2[6] = v44;
  a2[7] = v27;
  v28 = v41;
  a2[2] = v40;
  a2[3] = v28;
  sub_1E0FE6720(&v38, &v48);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v48 = v20;
  v49 = v11;
  v50 = v31;
  v51 = v22;
  v52 = v21;
  v53 = v23;
  v56 = v70;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v54 = v68;
  v55 = v69;
  v60 = v16;
  v61 = v18;
  return sub_1E0FEDAB8(&v48);
}

uint64_t sub_1E0FF6380()
{
  sub_1E10AE9CC();
  Venue.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF63C4(uint64_t a1)
{
  sub_1E10AE9CC();
  Venue.hash(into:)(v2);
  return sub_1E10AEA0C();
}

uint64_t Venue.StructuredAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89038, &qword_1E10B0AE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v16 - v7;
  v9 = v1[2];
  v16[9] = v1[3];
  v16[10] = v9;
  v10 = v1[4];
  v16[7] = v1[5];
  v16[8] = v10;
  v11 = v1[6];
  v16[5] = v1[7];
  v16[6] = v11;
  v12 = v1[8];
  v16[3] = v1[9];
  v16[4] = v12;
  v13 = v1[11];
  v16[1] = v1[10];
  v16[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF7590();
  sub_1E10AEA5C();
  v22 = 0;
  v14 = v16[11];
  sub_1E10AE83C();
  if (v14)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v21 = 1;
  sub_1E10AE83C();
  v20 = 2;
  sub_1E10AE83C();
  v19 = 3;
  sub_1E10AE83C();
  v18 = 4;
  sub_1E10AE83C();
  v17 = 5;
  sub_1E10AE83C();
  return (*(v4 + 8))(v8, v3);
}

uint64_t Venue.StructuredAddress.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  v6 = v1[11];
  if (v1[1])
  {
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1E10AE9EC();
    if (v2)
    {
LABEL_3:
      sub_1E10AE9EC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_1E10AE9EC();
  if (v3)
  {
LABEL_4:
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1E10AE9EC();
  if (v4)
  {
LABEL_5:
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_1E10AE9EC();
    if (v6)
    {
      goto LABEL_7;
    }

    return sub_1E10AE9EC();
  }

LABEL_13:
  sub_1E10AE9EC();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1E10AE9EC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v6)
  {
    return sub_1E10AE9EC();
  }

LABEL_7:
  sub_1E10AE9EC();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Venue.StructuredAddress.hashValue.getter()
{
  sub_1E10AE9CC();
  Venue.StructuredAddress.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Venue.StructuredAddress.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89048, &qword_1E10B0AF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF7590();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44[0]) = 0;
  v11 = sub_1E10AE78C();
  v13 = v12;
  LOBYTE(v44[0]) = 1;
  v35 = sub_1E10AE78C();
  v37 = v14;
  LOBYTE(v44[0]) = 2;
  v15 = sub_1E10AE78C();
  v36 = v16;
  v32 = v15;
  LOBYTE(v44[0]) = 3;
  v31 = sub_1E10AE78C();
  v34 = v17;
  LOBYTE(v44[0]) = 4;
  v30 = sub_1E10AE78C();
  v33 = v18;
  v45 = 5;
  v19 = sub_1E10AE78C();
  v20 = v10;
  v22 = v21;
  (*(v6 + 8))(v20, v5);
  *&v38 = v11;
  *(&v38 + 1) = v13;
  *&v39 = v35;
  *(&v39 + 1) = v37;
  *&v40 = v32;
  v23 = v36;
  *(&v40 + 1) = v36;
  *&v41 = v31;
  v24 = v34;
  *(&v41 + 1) = v34;
  *&v42 = v30;
  *(&v42 + 1) = v33;
  *&v43 = v19;
  *(&v43 + 1) = v22;
  v25 = v41;
  a2[2] = v40;
  a2[3] = v25;
  v26 = v43;
  a2[4] = v42;
  a2[5] = v26;
  v27 = v39;
  *a2 = v38;
  a2[1] = v27;
  sub_1E0FF74D4(&v38, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v11;
  v44[1] = v13;
  v44[2] = v35;
  v44[3] = v37;
  v44[4] = v32;
  v44[5] = v23;
  v44[6] = v31;
  v44[7] = v24;
  v44[8] = v30;
  v44[9] = v33;
  v44[10] = v19;
  v44[11] = v22;
  return sub_1E0FF750C(v44);
}
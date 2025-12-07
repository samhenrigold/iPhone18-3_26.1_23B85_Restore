uint64_t sub_25DCFC270()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFC300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25DCFC3C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25DD96814();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_25DCFC480()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25DCFC4B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_25DCFC508(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25DCFC560()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25DCFC598()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_25DCFC5D8(void *a1@<X8>)
{
  a1[3] = &type metadata for ISO8601DateTranscoder;
  a1[4] = &protocol witness table for ISO8601DateTranscoder;
  static DateTranscoder<>.iso8601.getter(a1);
}

uint64_t sub_25DCFC5F4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_25DCFC784(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_25DCFC9BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25DD968B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25DCFCA68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25DD968B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25DCFCB0C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal32JSONLinesDeserializationSequenceV8IteratorV12StateMachineV10NextActionOyx_qd____G_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DCFCB5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCB94()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCBCC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25DCFCC04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCC3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCC74()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25DCFCCAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25DCFCCE4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25DCFCD1C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCD54()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25DCFCDE4()
{
  MEMORY[0x25F8A43F0](*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25DCFCE1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DCFCE54()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25DCFCE9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCEE4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UniversalClient(0);
  v3 = *(*(v2 - 8) + 80);
  v19 = *(*(v2 - 8) + 64);
  v24 = *(v1 - 8);
  v4 = *(v24 + 80);
  v17 = *(v24 + 64);
  v23 = sub_25DD968B4();
  v5 = *(v23 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v7 = sub_25DD96704();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v20 = *(v8 + 64);
  v21 = *(v8 + 8);
  v10 = v0 + ((v3 + 32) & ~v3);
  v22 = v7;
  v21(v10);
  v25 = v2;
  v11 = (v10 + *(v2 + 20));
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v11 + 6);
  if (v11[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 11);
  }

  v18 = v3 | v4 | v6 | v9;
  v12 = (((v19 + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8) + v4 + 16) & ~v4;
  v13 = (v12 + v17 + v6) & ~v6;
  v14 = (((v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

  __swift_destroy_boxed_opaque_existential_1((v10 + *(v25 + 24)));

  (*(v24 + 8))(v0 + v12, v1);
  (*(v5 + 8))(v0 + v13, v23);

  (v21)(v0 + v14, v22);

  return MEMORY[0x2821FE8E8](v0, v14 + v20, v18 | 7);
}

uint64_t sub_25DCFD1BC()
{
  v17 = *(v0 + 16);
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 104) & ~v2;
  v3 = *(v1 + 64);
  v16 = sub_25DD968B4();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_25DD96704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v14, v12 | 7);
}

uint64_t sub_25DCFD3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD96704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25DCFD47C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25DD96704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DCFD538()
{
  v1 = *(v0 + 16);
  v2 = sub_25DD968B4();
  v3 = *(v2 - 8);
  v15 = *(v3 + 80);
  v16 = v1;
  v4 = (v15 + 72) & ~v15;
  v5 = (((((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for UniversalServer(0, v1, v6, v7);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v9 + v5 + 16) & ~v9;
  v14 = *(*(v8 - 8) + 64);

  (*(v3 + 8))(v0 + v4, v2);

  v11 = sub_25DD96704();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = (v0 + v10 + *(v8 + 28));
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v12 + 6);
  if (v12[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v12 + 11);
  }

  (*(*(v16 - 8) + 8))(v0 + v10 + *(v8 + 32));

  return MEMORY[0x2821FE8E8](v0, ((v14 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v15 | v9 | 7);
}

uint64_t sub_25DCFD7A4()
{
  v1 = sub_25DD968B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25DCFD8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25DCFD910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25DCFD980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25DCFDA3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MultipartParser.StateMachine.State(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DCFDAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DCFDB60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25DD96814();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25DCFDBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_25DCFDC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State(0, *(a4 + 16), *(a4 + 24), a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_25DCFDCC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DCFDD3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25DCFDDCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DCFDE04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFDE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25DCFDEF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25DD96814();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DCFDFB0()
{
  MEMORY[0x25F8A43F0](*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DCFDFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DCFE054(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25DD96814();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25DCFE0D4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_25DD74CBC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_25DCFE100()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

id sub_25DCFE138(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_25DD77894(result, a2 & 1);
  }

  return result;
}

uint64_t sub_25DCFE164()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_25DCFE19C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URIEncodedNode(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25DCFE248(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URIEncodedNode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25DCFE2FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25DCFE344()
{
  LOWORD(v1) = *v0;
  sub_25DD97964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25DD98100;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1 / 1000.0;
  sub_25DD96B34();
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DCFE418(uint64_t a1)
{
  LOWORD(v2) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25DD98100;
  v4 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v4;
  *(v3 + 32) = v2 / 1000.0;
  sub_25DD96B34();
  sub_25DD96B94();
}

uint64_t sub_25DCFE4E0(uint64_t a1)
{
  LOWORD(v2) = *v1;
  sub_25DD97964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25DD98100;
  v4 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v4;
  *(v3 + 32) = v2 / 1000.0;
  sub_25DD96B34();
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DCFE5BC(unsigned __int16 a1, unsigned __int16 a2)
{
  v2 = a2;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  v5 = MEMORY[0x277D839F8];
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v6;
  *(v4 + 32) = v3 / 1000.0;
  v7 = sub_25DD96B34();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25DD98100;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v2 / 1000.0;
  if (v7 == sub_25DD96B34() && v9 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25DD975D4();
  }

  return v12 & 1;
}

uint64_t QualityValue.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0.0;
  v4 = sub_25DCFFACC(a1, a2, &v9);

  if (!v4)
  {
    LOWORD(v8) = 0;
    goto LABEL_11;
  }

  if (v9 < 0.0 || v9 > 1.0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v9 * 1000.0;
  if (COERCE_UNSIGNED_INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 65536.0)
  {
    v8 = v7;
LABEL_11:
    *a3 = v8;
    *(a3 + 2) = !v4;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t QualityValue.rawValue.getter()
{
  LOWORD(v1) = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25DD98100;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1 / 1000.0;

  return sub_25DD96B34();
}

uint64_t sub_25DCFE88C@<X0>(uint64_t *a1@<X8>)
{
  LOWORD(v2) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v2 / 1000.0;
  result = sub_25DD96B34();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t QualityValue.init(integerLiteral:)@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (result > 1u)
  {
    __break(1u);
  }

  else
  {
    *a2 = 1000 * result;
  }

  return result;
}

unsigned __int16 *sub_25DCFE94C@<X0>(unsigned __int16 *result@<X0>, _WORD *a2@<X8>)
{
  v2 = *result;
  if (v2 > 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = 1000 * v2;
  }

  return result;
}

void _s22OpenAPIRuntimeInternal12QualityValueV06doubleE0ACSd_tcfC_0(_WORD *a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 65536.0)
  {
    *a1 = v3;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t AcceptHeaderContentType.init(contentType:quality:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  *(a5 + *(type metadata accessor for AcceptHeaderContentType(0, a3, a4, a4) + 36)) = v8;
  v9 = *(*(a3 - 8) + 32);

  return v9(a5, a1, a3);
}

uint64_t sub_25DCFEA90(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_25DD96E94();
  if (!v19)
  {
    return sub_25DD96D54();
  }

  v41 = v19;
  v45 = sub_25DD97204();
  v32 = sub_25DD97214();
  sub_25DD971E4();
  result = sub_25DD96E84();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_25DD96ED4();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_25DD971F4();
      result = sub_25DD96EB4();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25DCFEF9C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v16[-v8];
  sub_25DD97144();
  v17 = a1;
  v18 = a2;
  v11 = type metadata accessor for AcceptHeaderContentType(0, a1, a2, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_25DCFEA90(a3, v16, AssociatedTypeWitness, v11, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v13);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v14;
}

uint64_t sub_25DCFF10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  *(a4 + *(type metadata accessor for AcceptHeaderContentType(0, a2, a3, v10) + 36)) = 1000;
  return (*(v7 + 32))(a4, v9, a2);
}

uint64_t sub_25DCFF20C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25DCFF278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25DCFF2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25DCFF358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t AcceptHeaderContentType.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25DD96F04();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45[-v13];
  v15 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v55 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v54 = &v45[-v18];
  OpenAPIMIMEType.init(_:)(a1, a2, &v56);
  v20 = v61;
  if (!v61)
  {
    goto LABEL_9;
  }

  v47 = v11;
  v48 = v10;
  v52 = v15;
  v22 = v56;
  v21 = v57;
  v24 = v58;
  v23 = v59;
  v53 = v60;
  if (*(v61 + 16) && (v25 = sub_25DCFF99C(113, 0xE100000000000000), (v26 & 1) != 0))
  {
    v27 = (*(v20 + 56) + 16 * v25);
    v28 = v27[1];
    v51 = *v27;

    QualityValue.init(rawValue:)(v51, v28, &v56);
    if (BYTE2(v56) == 1)
    {
      sub_25DCFFC50(v22, v21, v24, v23, v53, v20);
LABEL_9:
      v37 = type metadata accessor for AcceptHeaderContentType(0, a3, a4, v19);
      return (*(*(v37 - 8) + 56))(a5, 1, 1, v37);
    }

    v49 = v14;
    v50 = a4;
    v51 = a5;
    v29 = v56;
  }

  else
  {
    v49 = v14;
    v50 = a4;
    v51 = a5;
    v29 = 1000;
  }

  v46 = v29;
  v56 = v22;
  v57 = v21;
  v58 = v24;
  v59 = v23;
  v30 = v23;
  v31 = v53;
  LOBYTE(v60) = v53;
  OpenAPIMIMEType.Kind.description.getter();
  v32 = sub_25DD96B54();
  v34 = v33;
  sub_25DCFFC50(v22, v21, v24, v30, v31, v20);

  v56 = v32;
  v57 = v34;
  v35 = v49;
  a4 = v50;
  sub_25DD96D14();
  v36 = v52;
  if ((*(v52 + 48))(v35, 1, a3) == 1)
  {
    (*(v47 + 8))(v35, v48);
    a5 = v51;
    goto LABEL_9;
  }

  v39 = *(v36 + 32);
  v40 = v54;
  v39(v54, v35, a3);
  v41 = v55;
  v39(v55, v40, a3);
  v43 = type metadata accessor for AcceptHeaderContentType(0, a3, a4, v42);
  v44 = v51;
  *(v51 + *(v43 + 36)) = v46;
  v39(v44, v41, a3);
  return (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
}

uint64_t AcceptHeaderContentType.rawValue.getter(uint64_t a1)
{
  sub_25DD96D04();
  v3 = *(v1 + *(a1 + 36));
  if (v3 == 1000)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25DD98100;
    v7 = MEMORY[0x277D83A80];
    *(v6 + 56) = MEMORY[0x277D839F8];
    *(v6 + 64) = v7;
    *(v6 + 32) = v3 / 1000.0;
    v8 = sub_25DD96B34();
    MEMORY[0x25F8A3200](v8);

    v4 = 1030823995;
    v5 = 0xE400000000000000;
  }

  MEMORY[0x25F8A3200](v4, v5);

  return v10;
}

uint64_t sub_25DCFF8E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AcceptHeaderContentType.rawValue.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Array.sortedByQuality<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AcceptHeaderContentType(255, a2, a3, a4);
  sub_25DD96D84();
  swift_getWitnessTable();
  return sub_25DD96CE4();
}

unint64_t sub_25DCFF99C(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  sub_25DD96B94();
  v4 = sub_25DD979A4();

  return sub_25DCFFA14(a1, a2, v4);
}

unint64_t sub_25DCFFA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25DD975D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL sub_25DCFFACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_25DD97114();
  if (!v3)
  {
    return v8;
  }

  return v5;
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

void sub_25DCFFC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_25DCFFC90(a1, a2, a3, a4, a5);
  }
}

void sub_25DCFFC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

BOOL sub_25DCFFCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for AcceptHeaderContentType(0, *(v4 + 16), *(v4 + 24), a4) + 36);
  LOWORD(v8) = *(a1 + v7);
  LOWORD(v9) = *(a2 + v7);
  return v9 / 1000.0 < v8 / 1000.0;
}

unint64_t sub_25DCFFD68()
{
  result = qword_27FCC20E8;
  if (!qword_27FCC20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC20E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QualityValue(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for QualityValue(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_25DCFFF20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DCFFF98(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v6 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (((*(*(*(a3 + 16) - 8) + 64) + 1) & 0xFFFFFFFE) != 0xFFFFFFFE)
  {
    if (v7 <= 3)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v5 + (v7 | v11) + 1;
}

unsigned int *sub_25DD000B0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (((*(v5 + 64) + 1) & 0xFFFFFFFE) != 0xFFFFFFFE)
      {
        v16 = result;
        bzero(result, v7);
        result = v16;
        *v16 = v11;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(result + v7) = v13;
      }

      else
      {
        *(result + v7) = v13;
      }
    }

    else if (v10)
    {
      *(result + v7) = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_27;
    }

    *(result + v7) = 0;
  }

  else if (v10)
  {
    *(result + v7) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (!a2)
  {
    return result;
  }

LABEL_27:
  v17 = *(v5 + 56);

  return v17();
}

_BYTE *sub_25DD0027C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t Base64EncodedData.data.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectRelease();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t Base64EncodedData.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Base64EncodedData.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = sub_25DD97074();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = (*(v7 + 8))(a1, a2);
  *a4 = v9;
  a4[1] = v11;
  a4[2] = v13;
  a4[3] = v15;
  return result;
}

uint64_t static Base64EncodedData.== infix(_:_:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v5 = a2[2];
  v6 = a2[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4 != v7)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v8 = *(result + 8) + v2;
  v9 = a2[1] + v5;
  result = 1;
  if (v8 != v9 && v2 != v3)
  {
    if (v2 >= v3)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v5 == v6)
    {
      return 0;
    }

    v10 = 0;
    if (v5 <= v6)
    {
      v11 = a2[3] >> 1;
    }

    else
    {
      v11 = a2[2];
    }

    v12 = v11 - v5;
    while (v12 != v10)
    {
      if (*(v8 + v10) != *(v9 + v10))
      {
        return 0;
      }

      if (~v2 + v3 == v10)
      {
        return 1;
      }

      v13 = v2 + v10 + 1;
      if (v13 < v2 || v13 >= v3)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v7 == ++v10)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t Base64EncodedData.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v0[1];
  result = MEMORY[0x25F8A3F90](result);
  v5 = __OFSUB__(v2, v1);
  v6 = v2 - v1;
  if (!v6)
  {
    return result;
  }

  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v4 + v1;
  do
  {
    ++v7;
    result = sub_25DD97984();
    --v6;
  }

  while (v6);
  return result;
}

uint64_t Base64EncodedData.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_25DD97964();
  v4 = v3 >> 1;
  result = v4 - v2;
  if (__OFSUB__(v4, v2))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x25F8A3F90](result);
    v6 = __OFSUB__(v4, v2);
    v7 = v4 - v2;
    if (!v7)
    {
      return sub_25DD979A4();
    }

    if (!((v7 < 0) ^ v6 | (v7 == 0)))
    {
      v8 = v1 + v2;
      do
      {
        ++v8;
        sub_25DD97984();
        --v7;
      }

      while (v7);
      return sub_25DD979A4();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD006F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v0[1];
  result = MEMORY[0x25F8A3F90](result);
  v5 = __OFSUB__(v2, v1);
  v6 = v2 - v1;
  if (!v6)
  {
    return result;
  }

  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v4 + v1;
  do
  {
    ++v7;
    result = sub_25DD97984();
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_25DD0075C(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_25DD97964();
  v5 = v4 >> 1;
  result = v5 - v3;
  if (__OFSUB__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x25F8A3F90](result);
    v7 = __OFSUB__(v5, v3);
    v8 = v5 - v3;
    if (!v8)
    {
      return sub_25DD979A4();
    }

    if (!((v8 < 0) ^ v7 | (v8 == 0)))
    {
      v9 = v2 + v3;
      do
      {
        ++v9;
        sub_25DD97984();
        --v8;
      }

      while (v8);
      return sub_25DD979A4();
    }
  }

  __break(1u);
  return result;
}

uint64_t Base64EncodedData.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = result;
  a2[1] = result + 32;
  a2[2] = 0;
  a2[3] = (2 * v2) | 1;
  return result;
}

uint64_t sub_25DD00818@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = result;
  a2[1] = result + 32;
  a2[2] = 0;
  a2[3] = (2 * v2) | 1;
  return result;
}

uint64_t Base64EncodedData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v5 = sub_25DD975E4();
    v7 = v6;
    v8 = v5;
    v9 = sub_25DD96734();
    if (v10 >> 60 == 15)
    {
      sub_25DD01034();
      swift_allocError();
      *v11 = v8;
      *(v11 + 8) = v7;
      *(v11 + 48) = 5;
      swift_willThrow();
    }

    else
    {
      v12 = v9;
      v13 = v10;

      v14 = sub_25DD00CE0(v12, v13);
      v15 = (2 * v14[2]) | 1;
      *a2 = v14;
      a2[1] = (v14 + 4);
      a2[2] = 0;
      a2[3] = v15;
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Base64EncodedData.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_25DD979D4();
  v6 = sub_25DD00A5C(v2, v3, v4, v5);
  v8 = v7;
  sub_25DD96774();
  sub_25DD01088(v6, v8);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_25DD97674();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_25DD00A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v18[3] = v8;
  v18[4] = sub_25DD01228();
  v9 = swift_allocObject();
  v18[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v18, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);
    result = MEMORY[0x25F8A43F0](a2);
    __break(1u);
  }

  else
  {
    sub_25DD00C4C((v10[1] + v11), (v10[1] + v11 + v14), &v17);
    v15 = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v15;
  }

  return result;
}

uint64_t sub_25DD00B58(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_25DD979D4();
  v6 = sub_25DD00A5C(v2, v3, v4, v5);
  v8 = v7;
  sub_25DD96774();
  sub_25DD01088(v6, v8);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_25DD97674();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

_BYTE *sub_25DD00C4C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25DD012D4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25DD0138C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25DD01408(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25DD00CE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25DD96784();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_25DD01088(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_25DD00E5C(v10, 0);
      v14 = sub_25DD96724();
      sub_25DD01088(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void *sub_25DD00E5C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25DD00ED0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = a6 >> 1;
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = result + a2;
  result = 1;
  if (v10 != a4 + a5 && v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v8 == a5)
    {
      return 0;
    }

    v11 = 0;
    if (a5 <= v8)
    {
      v12 = a6 >> 1;
    }

    else
    {
      v12 = a5;
    }

    v13 = v12 - a5;
    while (v13 != v11)
    {
      if (*(v10 + v11) != *(a4 + a5 + v11))
      {
        return 0;
      }

      if (~a2 + v6 == v11)
      {
        return 1;
      }

      v14 = a2 + v11 + 1;
      if (v14 < a2 || v14 >= v6)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v9 == ++v11)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

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

unint64_t sub_25DD01034()
{
  result = qword_27FCC20F0;
  if (!qword_27FCC20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC20F0);
  }

  return result;
}

uint64_t sub_25DD01088(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_25DD01130()
{
  result = qword_27FCC20F8;
  if (!qword_27FCC20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC20F8);
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

uint64_t sub_25DD01190(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25DD011D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25DD01228()
{
  result = qword_27FCC2108;
  if (!qword_27FCC2108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2108);
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

uint64_t sub_25DD012D4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25DD0138C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25DD96694();
  swift_allocObject();
  result = sub_25DD96644();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25DD96744();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25DD01408(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25DD96694();
  swift_allocObject();
  result = sub_25DD96644();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_25DD01564()
{
  result = sub_25DD0313C(&unk_286F94850);
  qword_27FCCE570 = result;
  return result;
}

uint64_t *sub_25DD0158C()
{
  if (qword_27FCC30A0 != -1)
  {
    swift_once();
  }

  return &qword_27FCCE570;
}

uint64_t sub_25DD015DC()
{
  if (qword_27FCC30A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25DD01638(unsigned __int8 a1)
{
  v1 = a1;
  result = 1;
  if ((v1 - 33) > 0x3F || ((1 << (v1 - 33)) & 0xE00000000000367DLL) == 0)
  {
    v3 = (v1 - 91) > 0xFFFFFFE5 || (v1 - 97) < 0x1A;
    v4 = (v1 - 58) > 0xFFFFFFF5 || v3;
    if (v1 == 126)
    {
      v4 = 1;
    }

    if (v1 == 124)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_25DD016A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a6;
  v64 = a5;
  v65 = a1;
  v53 = a7;
  v52 = a4;
  v9 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v49 - v12;
  v13 = sub_25DD96F04();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getAssociatedTypeWitness();
  v51 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v66 = swift_getAssociatedTypeWitness();
  v54 = *(v66 - 8);
  v23 = MEMORY[0x28223BE20](v66);
  v63 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v69 = &v49 - v25;
  sub_25DD96E84();
  (*(v17 + 16))(v19, v65, a3);
  v26 = v49;
  sub_25DD96CB4();
  v27 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v22;
  v65 = v20;
  v59 = AssociatedConformanceWitness;
  sub_25DD96F74();
  v29 = v67;
  v30 = *(v67 + 48);
  v68 = v16;
  v57 = v30;
  v58 = v67 + 48;
  if (v30(v16, 1, v27) == 1)
  {
LABEL_6:
    v39 = a2;
    (*(v51 + 8))(v64, v65);
    (*(v54 + 32))(v53, v69, v66);
  }

  else
  {
    v32 = *(v29 + 32);
    v31 = v29 + 32;
    v60 = (v54 + 8);
    v55 = (v31 - 16);
    v56 = v32;
    v67 = v31;
    v33 = (v31 - 24);
    while (1)
    {
      v56(v26, v68, v27);
      v34 = v27;
      v35 = v63;
      sub_25DD96EA4();
      v36 = v66;
      swift_getAssociatedConformanceWitness();
      v37 = sub_25DD96AE4();
      v38 = v9;
      v39 = a2;
      v40 = *v60;
      (*v60)(v35, v36);
      if ((v37 & 1) == 0)
      {
        (*v33)(v26, v34);
        (*(v51 + 8))(v64, v65);
        v40(v69, v66);
        goto LABEL_9;
      }

      v41 = sub_25DD96ED4();
      v42 = v26;
      v43 = v61;
      (*v55)(v61);
      (v41)(v70, 0);
      LOBYTE(v41) = sub_25DD96B04();
      v44 = *v33;
      (*v33)(v43, v34);
      v27 = v34;
      if ((v41 & 1) == 0)
      {
        break;
      }

      sub_25DD96EB4();
      v44(v42, v34);
      v45 = v68;
      sub_25DD96F74();
      v46 = v57(v45, 1, v34);
      a2 = v39;
      v9 = v38;
      v26 = v42;
      if (v46 == 1)
      {
        goto LABEL_6;
      }
    }

    v44(v42, v34);
    (*(v51 + 8))(v64, v65);
    (*(v54 + 32))(v53, v69, v66);
  }

LABEL_9:
  type metadata accessor for FirstIndexAfterPrefixResult(0, v39, v52, v47);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD01D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v83 = a5;
  v84 = a6;
  v81 = a1;
  v82 = a3;
  v65 = a7;
  v10 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v60 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v79 = &v60 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = sub_25DD97244();
  v72 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v60 - v19;
  v66 = a4;
  v20 = swift_getAssociatedConformanceWitness();
  v80 = v15;
  v76 = v20;
  IndexAfterPrefixResult = type metadata accessor for FirstIndexAfterPrefixResult(0, v15, v20, v21);
  v69 = *(IndexAfterPrefixResult - 8);
  v23 = MEMORY[0x28223BE20](IndexAfterPrefixResult);
  v75 = &v60 - v24;
  v25 = *(AssociatedTypeWitness - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v60 - v29;
  sub_25DD96E84();
  v31 = v10;
  v85 = a2;
  v86 = (v25 + 8);
  v67 = v25;
  ++v72;
  v73 = (v25 + 16);
  v70 = AssociatedConformanceWitness;
  v71 = (v16 + 8);
  ++v69;
  for (i = AssociatedTypeWitness; ; AssociatedTypeWitness = i)
  {
    v32 = v7;
    v33 = v31;
    sub_25DD96EA4();
    v34 = sub_25DD96AE4();
    v35 = *v86;
    (*v86)(v28, AssociatedTypeWitness);
    if ((v34 & 1) == 0)
    {
      v35(v30, AssociatedTypeWitness);
      goto LABEL_11;
    }

    result = sub_25DD96B04();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v68 = v35;
    v37 = v77;
    (*v73)(v77, v30, AssociatedTypeWitness);
    v38 = v78;
    swift_getWitnessTable();
    v39 = IndexAfterPrefixResult;
    v40 = v79;
    sub_25DD96EC4();
    (*v72)(v37, v38);
    v41 = v75;
    v42 = v80;
    sub_25DD016A4(v81, v80, v82, v76, v83, v84, v75);
    v43 = v40;
    IndexAfterPrefixResult = v39;
    (*v71)(v43, v42);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v7 = v32;
    sub_25DD96EB4();
    (*v69)(v41, v39);
    v31 = v33;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v67 + 32))(v65, v30, i);
    goto LABEL_11;
  }

  v46 = v67 + 32;
  v45 = *(v67 + 32);
  v47 = i;
  v45(v28, v41, i);
  result = sub_25DD96AF4();
  if (result)
  {
    v48 = v30;
    v49 = v61;
    v45(v61, v48, v47);
    v50 = v46;
    v51 = TupleTypeMetadata2;
    v45(&v49[*(TupleTypeMetadata2 + 48)], v28, v47);
    v67 = v50;
    v52 = v62;
    v53 = v63;
    (*(v62 + 16))(v63, v49, v51);
    v54 = *(v51 + 48);
    v55 = v65;
    v45(v65, v53, v47);
    v56 = v68;
    v68(&v53[v54], v47);
    (*(v52 + 32))(v53, v49, v51);
    v57 = *(v51 + 48);
    v58 = sub_25DD96EF4();
    v45(&v55[*(v58 + 36)], &v53[v57], v47);
    v56(v53, v47);
LABEL_11:
    type metadata accessor for LongestMatchResult(0, v85, v66, v59);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25DD02518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v32 = a1;
  v33 = a5;
  v28 = a6;
  v29 = a2;
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v26 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v34 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  sub_25DD96E84();
  v26 = v14;
  v35 = (v14 + 8);
  v30 = (v10 + 16);
  for (i = (v10 + 8); ; (*i)(v12, AssociatedTypeWitness))
  {
    v19 = v34;
    sub_25DD96EA4();
    swift_getAssociatedConformanceWitness();
    v20 = sub_25DD96AE4();
    v21 = v7;
    v22 = *v35;
    (*v35)(v19, v13);
    if ((v20 & 1) == 0)
    {
      v22(v18, v13);
      goto LABEL_8;
    }

    v23 = sub_25DD96ED4();
    (*v30)(v12);
    v23(v36, 0);
    if (sub_25DD96B04())
    {
      break;
    }

    v7 = v21;
    if (sub_25DD96B04())
    {
      break;
    }

    sub_25DD96EB4();
  }

  (*i)(v12, AssociatedTypeWitness);
  (*(v26 + 32))(v28, v18, v13);
LABEL_8:
  type metadata accessor for MatchOfOneOfResult(0, a3, v27, v24);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD02920(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    result = sub_25DD96EF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD029EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 254;
}

void sub_25DD02B7C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  v9 = ((v8 + *(v7 + 80)) & ~*(v7 + 80)) + v8;
  if (v9 > v8)
  {
    v8 = v9;
  }

  v10 = v8 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v8 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25DD02D98(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD02E18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v10 < 2)
    {
LABEL_23:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_23;
  }

LABEL_12:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_25DD02F68(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_37:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v7] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_22;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

unint64_t sub_25DD0313C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2118, &qword_25DD98588);
    v3 = sub_25DD970F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    while (1)
    {
      v11 = *(v6 + v4);
      result = MEMORY[0x25F8A3F70](v7, *(v6 + v4), 1);
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25DD03274(uint64_t a1, uint64_t a2)
{
  if (sub_25DD96B54() == 0x7461642D6D726F66 && v3 == 0xE900000000000061)
  {

LABEL_5:

    return 0;
  }

  v4 = sub_25DD975D4();

  if (v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25DD03330(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0x7461642D6D726F66;
  }

  return v2;
}

uint64_t sub_25DD03380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_25DD975D4();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_25DD033B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x25F8A3F90](0, a2);
  }

  MEMORY[0x25F8A3F90](1);

  return sub_25DD96B94();
}

uint64_t sub_25DD03424(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  if (a2)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD03498()
{
  v1 = *(v0 + 8);
  sub_25DD97964();
  if (v1)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD03508(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x25F8A3F90](0);
  }

  MEMORY[0x25F8A3F90](1);

  return sub_25DD96B94();
}

uint64_t sub_25DD03580(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_25DD97964();
  if (v2)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD035EC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_25DD975D4();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_25DD03664(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25DD036BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_25DD96B54();
  v5 = v3;
  if (v4 == 1701667182 && v3 == 0xE400000000000000 || (sub_25DD975D4() & 1) != 0)
  {

    return 0;
  }

  if (v4 == 0x656D616E656C6966 && v5 == 0xE800000000000000)
  {

LABEL_9:

    return 0;
  }

  v7 = sub_25DD975D4();

  if (v7)
  {
    goto LABEL_9;
  }

  return a1;
}

uint64_t sub_25DD037C8(uint64_t a1, unint64_t a2)
{
  v2 = 0x656D616E656C6966;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1701667182;
  }

  sub_25DD03828(a1, a2);
  return v3;
}

uint64_t sub_25DD03828(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_25DD0383C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD03894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x25F8A3F90](v3, a2);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x25F8A3F90](v3, a2);
  }

  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD03914(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
      return sub_25DD979A4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD03998()
{
  v1 = *(v0 + 8);
  sub_25DD97964();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
      return sub_25DD979A4();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x25F8A3F90](v2);
  return sub_25DD979A4();
}

uint64_t sub_25DD03A18(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x25F8A3F90](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x25F8A3F90](v3);
  }

  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD03AA0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_25DD97964();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
      return sub_25DD979A4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD03B1C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_25DD975D4();
  }

  return 1;
}

uint64_t sub_25DD03B90(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_25DD03C10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_25DD04A2C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    result = sub_25DD07C8C(a3, a4);
    *v4 = v17;
  }

  else
  {
    v12 = sub_25DD043CC(a3, a4);
    v14 = v13;
    result = sub_25DD07C8C(a3, a4);
    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_25DD04BB8();
        v16 = v18;
      }

      sub_25DD07C8C(*(*(v16 + 48) + 16 * v12), *(*(v16 + 48) + 16 * v12 + 8));

      result = sub_25DD0484C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t (*sub_25DD03D20(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_25DD043CC(0, 0), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 16 * v4);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  return sub_25DD03D9C;
}

uint64_t sub_25DD03DAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = sub_25DD043CC(0, a4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 16 * v5);

  return v7;
}

uint64_t (*sub_25DD03E44(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_25DD043CC(0, 1uLL), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 16 * v4);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  return sub_25DD03EC0;
}

uint64_t sub_25DD03EC8(uint64_t *a1, char a2, unint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_25DD03C10(*a1, v4, 0, a3);
  }

  sub_25DD03C10(v5, v4, 0, a3);
}

uint64_t sub_25DD03F58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25DD97964();
  sub_25DD04148(v1, v2, v3);
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DD03FD0(uint64_t a1)
{
  sub_25DD04148(*v1, *(v1 + 8), *(v1 + 16));
  sub_25DD96B94();
}

uint64_t sub_25DD04028(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_25DD97964();
  sub_25DD04148(v2, v3, v4);
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DD0409C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = sub_25DD04148(*a1, a1[1], a1[2]);
  v7 = v6;
  if (v5 == sub_25DD04148(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25DD975D4();
  }

  return v10 & 1;
}

uint64_t sub_25DD04148(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0xE000000000000000;
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0x7461642D6D726F66;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0xE900000000000061;
  }

  MEMORY[0x25F8A3200](v4, v5);

  v6 = *(a3 + 16);
  if (!v6)
  {
    return v23;
  }

  v7 = sub_25DD05540(*(a3 + 16), 0);
  v8 = sub_25DD06A60(&v21, (v7 + 4), v6, a3);
  v9 = v21;

  sub_25DD07900(v9);
  if (v8 == v6)
  {
    v21 = v7;
    sub_25DD05824(&v21);
    v10 = *(v21 + 16);
    if (v10)
    {
      v11 = (v21 + 56);
      do
      {
        v12 = *(v11 - 3);
        v13 = *(v11 - 2);
        v14 = *(v11 - 1);
        v15 = *v11;
        v21 = 8251;
        v22 = 0xE200000000000000;
        if (v13 == 1)
        {
          v16 = 0x656D616E656C6966;
        }

        else
        {
          v16 = v12;
        }

        if (v13 == 1)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v17 = v13;
        }

        if (v13)
        {
          v18 = v16;
        }

        else
        {
          v18 = 1701667182;
        }

        if (v13)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0xE400000000000000;
        }

        sub_25DD03828(v12, v13);
        MEMORY[0x25F8A3200](v18, v19);

        MEMORY[0x25F8A3200](8765, 0xE200000000000000);
        MEMORY[0x25F8A3200](v14, v15);

        MEMORY[0x25F8A3200](34, 0xE100000000000000);
        MEMORY[0x25F8A3200](v21, v22);

        v11 += 4;
        --v10;
      }

      while (v10);
    }

    return v23;
  }

  __break(1u);
  MEMORY[0x25F8A43F0](v7);

  __break(1u);
  return result;
}

uint64_t sub_25DD04368@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25DD070C4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_25DD0439C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD04148(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25DD043CC(uint64_t a1, unint64_t a2)
{
  sub_25DD97964();
  if (!a2)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x25F8A3F90](v4);
    goto LABEL_7;
  }

  MEMORY[0x25F8A3F90](2);
  sub_25DD96B94();
LABEL_7:
  v5 = sub_25DD979A4();

  return sub_25DD04470(a1, a2, v5);
}

unint64_t sub_25DD04470(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_25DD975D4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_25DD04554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
  v35 = v4;
  result = sub_25DD972B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v35 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v2;
        if (v34 >= 64)
        {
          bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v34;
        }

        *(v5 + 16) = 0;
        goto LABEL_38;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + v21);
      v24 = v23[1];
      v36 = *v23;
      v37 = v22;
      v25 = *(&v22 + 1);
      if ((v35 & 1) == 0)
      {
        sub_25DD03828(v22, *(&v22 + 1));
      }

      sub_25DD97964();
      if (!v25)
      {
        break;
      }

      if (v25 == 1)
      {
        v26 = 1;
LABEL_21:
        MEMORY[0x25F8A3F90](v26);
        goto LABEL_23;
      }

      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
LABEL_23:
      result = sub_25DD979A4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v37;
      v17 = (*(v7 + 56) + v16);
      *v17 = v36;
      v17[1] = v24;
      ++*(v7 + 16);
    }

    v26 = 0;
    goto LABEL_21;
  }

LABEL_38:

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_25DD0484C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25DD970C4() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_25DD97964();
      if (!v11)
      {
        break;
      }

      if (v11 == 1)
      {
        v12 = 1;
LABEL_9:
        MEMORY[0x25F8A3F90](v12);
        goto LABEL_11;
      }

      MEMORY[0x25F8A3F90](2);

      sub_25DD96B94();
LABEL_11:
      v13 = sub_25DD979A4();
      result = sub_25DD07C8C(v10, v11);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v14)
      {
LABEL_16:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25DD04A2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25DD043CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25DD04554(v18, a5 & 1);
      v13 = sub_25DD043CC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_25DD978F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25DD04BB8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;

  return sub_25DD03828(a3, a4);
}

void *sub_25DD04BB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
  v2 = *v0;
  v3 = sub_25DD972A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v19;
        v22[1] = v20;
        sub_25DD03828(v21, *(&v21 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_25DD04D30@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25DD96CA4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25DD05434(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25DD05434((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25DD96C84();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25DD96BA4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25DD96BA4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25DD96CA4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25DD05434(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25DD96CA4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25DD05434(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25DD05434((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25DD96BA4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_25DD050F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2148, &qword_25DD996D0);
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

void *sub_25DD051F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2180, &qword_25DD98820);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2188, &qword_25DD98828);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25DD05328(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
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

char *sub_25DD05434(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
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

void *sub_25DD05540(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2138, &qword_25DD987F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

char *sub_25DD055C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25DD05718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DD055E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2138, &qword_25DD987F8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2140, &unk_25DD98800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25DD05718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
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

uint64_t sub_25DD05824(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25DD06BF0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_25DD05890(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25DD05890(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2140, &unk_25DD98800);
        v5 = sub_25DD96D64();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25DD05B84(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25DD05998(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD05998(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 32 * a3;
    v5 = result - a3;
LABEL_5:
    v24 = v4;
    v25 = a3;
    v6 = (v26 + 32 * a3);
    v7 = *v6;
    v8 = v6[1];
    v23 = v5;
    while (1)
    {
      v28 = v5;
      v10 = *(v4 - 32);
      v9 = *(v4 - 24);
      if (v8 == 1)
      {
        v11 = 0x656D616E656C6966;
      }

      else
      {
        v11 = v7;
      }

      if (v8 == 1)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = v8;
      }

      if (v8)
      {
        v13 = v11;
      }

      else
      {
        v13 = 1701667182;
      }

      if (v8)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      if (v9 == 1)
      {
        v15 = 0x656D616E656C6966;
      }

      else
      {
        v15 = *(v4 - 32);
      }

      if (v9 == 1)
      {
        v16 = 0xE800000000000000;
      }

      else
      {
        v16 = *(v4 - 24);
      }

      if (v9)
      {
        v17 = v15;
      }

      else
      {
        v17 = 1701667182;
      }

      if (v9)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      if (v13 == v17 && v14 == v18)
      {
        v27 = 0;
      }

      else
      {
        v27 = sub_25DD975D4();
      }

      sub_25DD03828(v10, v9);
      sub_25DD03828(v7, v8);
      sub_25DD03828(v7, v8);
      sub_25DD03828(v10, v9);

      sub_25DD07C8C(v10, v9);

      sub_25DD07C8C(v7, v8);

      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v25 + 1;
        v4 = v24 + 32;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v7 = *v4;
      v19 = *(v4 + 24);
      v20 = *(v4 + 8);
      v21 = *(v4 - 16);
      *v4 = *(v4 - 32);
      *(v4 + 16) = v21;
      *(v4 - 24) = v20;
      *(v4 - 8) = v19;
      *(v4 - 32) = v7;
      v4 -= 32;
      v8 = v20;
      v5 = v28 + 1;
      if (v28 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD05B84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v120 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_164:
    v5 = *v120;
    if (!*v120)
    {
      goto LABEL_203;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_166;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v132 = v9;
    if (v8 + 1 < v7)
    {
      v128 = v7;
      v121 = v8;
      v123 = v6;
      v11 = *a3;
      v12 = (*a3 + 32 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = (*a3 + 32 * v8);
      v16 = *v15;
      v5 = v15[1];
      sub_25DD03828(v14, v13);

      sub_25DD03828(v16, v5);

      if (v13)
      {
        if (v13 == 1)
        {
          v17 = 0x656D616E656C6966;
        }

        else
        {
          v17 = v14;
        }

        if (v13 == 1)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = v13;
        }

        if (v5)
        {
LABEL_13:
          if (v5 == 1)
          {
            v19 = 0x656D616E656C6966;
          }

          else
          {
            v19 = v16;
          }

          if (v5 == 1)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = v5;
          }

          if (v17 != v19)
          {
            goto LABEL_25;
          }

LABEL_23:
          if (v18 == v20)
          {
            v130 = 0;
            goto LABEL_26;
          }

LABEL_25:
          v130 = sub_25DD975D4();
LABEL_26:
          sub_25DD03828(v14, v13);
          sub_25DD03828(v16, v5);

          if (v123)
          {
            sub_25DD07C8C(v16, v5);

            sub_25DD07C8C(v14, v13);
          }

          sub_25DD07C8C(v16, v5);

          sub_25DD07C8C(v14, v13);

          v21 = 0;
          v22 = v8 + 2;
          v126 = 32 * v8;
          v23 = (v11 + 32 * v8 + 88);
          v9 = v132;
          do
          {
            v24 = v22;
            v25 = v10;
            v26 = v21;
            if (v22 >= v128)
            {
              break;
            }

            v136 = v21;
            v138 = v10;
            v139 = v22;
            v28 = *(v23 - 3);
            v27 = *(v23 - 2);
            v5 = *v23;
            v29 = *(v23 - 7);
            v30 = *(v23 - 6);
            v31 = v27 == 1 ? 0x656D616E656C6966 : *(v23 - 3);
            v32 = v27 == 1 ? 0xE800000000000000 : *(v23 - 2);
            v33 = v27 ? v31 : 1701667182;
            v34 = v27 ? v32 : 0xE400000000000000;
            v35 = v30 == 1 ? 0x656D616E656C6966 : *(v23 - 7);
            v36 = v30 == 1 ? 0xE800000000000000 : *(v23 - 6);
            v37 = v30 ? v35 : 1701667182;
            v38 = v30 ? v36 : 0xE400000000000000;
            v134 = v33 == v37 && v34 == v38 ? 0 : sub_25DD975D4();
            sub_25DD03828(v29, v30);
            sub_25DD03828(v28, v27);
            sub_25DD03828(v28, v27);
            sub_25DD03828(v29, v30);

            sub_25DD07C8C(v29, v30);

            sub_25DD07C8C(v28, v27);

            v24 = v139;
            v22 = v139 + 1;
            v23 += 4;
            v26 = v136;
            v25 = v138;
            v10 = v138 + 1;
            v21 = v136 + 32;
            v9 = v132;
          }

          while (((v130 ^ v134) & 1) == 0);
          if (v130)
          {
            v8 = v121;
            v6 = 0;
            if (v24 < v121)
            {
              goto LABEL_196;
            }

            if (v121 < v24)
            {
              v39 = 0;
              v40 = v121;
              do
              {
                if (v40 != v25)
                {
                  if (!*a3)
                  {
                    goto LABEL_200;
                  }

                  v42 = *a3 + v126;
                  v43 = (v42 + v39);
                  v44 = v42 + v26;
                  v45 = *(v43 + 2);
                  v46 = *(v43 + 3);
                  v47 = *v43;
                  v48 = *(v44 + 48);
                  *v43 = *(v44 + 32);
                  v43[1] = v48;
                  *(v44 + 32) = v47;
                  *(v44 + 48) = v45;
                  *(v44 + 56) = v46;
                }

                ++v40;
                v26 -= 32;
                v39 += 32;
              }

              while (v40 < v25--);
            }

            v10 = v24;
          }

          else
          {
            v10 = v24;
            v8 = v121;
            v6 = 0;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v18 = 0xE400000000000000;
        v17 = 1701667182;
        if (v5)
        {
          goto LABEL_13;
        }
      }

      v20 = 0xE400000000000000;
      if (v17 != 1701667182)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_69:
    v49 = a3[1];
    if (v10 < v49)
    {
      if (__OFSUB__(v10, v8))
      {
        goto LABEL_193;
      }

      if (v10 - v8 < a4)
      {
        v50 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_194;
        }

        if (v50 >= v49)
        {
          v50 = a3[1];
        }

        if (v50 < v8)
        {
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          result = sub_25DD06A4C(v9);
          v9 = result;
LABEL_166:
          v115 = *(v9 + 2);
          if (v115 >= 2)
          {
            while (*a3)
            {
              v116 = *&v9[16 * v115];
              v117 = *&v9[16 * v115 + 24];
              sub_25DD0651C((*a3 + 32 * v116), (*a3 + 32 * *&v9[16 * v115 + 16]), *a3 + 32 * v117, v5);
              if (v6)
              {
              }

              if (v117 < v116)
              {
                goto LABEL_190;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_25DD06A4C(v9);
              }

              if (v115 - 2 >= *(v9 + 2))
              {
                goto LABEL_191;
              }

              v118 = &v9[16 * v115];
              *v118 = v116;
              *(v118 + 1) = v117;
              result = sub_25DD069C0(v115 - 1);
              v115 = *(v9 + 2);
              if (v115 <= 1)
              {
              }
            }

            goto LABEL_201;
          }
        }

        if (v10 != v50)
        {
          break;
        }
      }
    }

LABEL_113:
    if (v10 < v8)
    {
      goto LABEL_192;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = sub_25DD050F0(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v70 = *(v9 + 2);
    v69 = *(v9 + 3);
    v6 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_25DD050F0((v69 > 1), v70 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v6;
    v71 = &v9[16 * v70];
    *(v71 + 4) = v8;
    *(v71 + 5) = v10;
    v8 = v10;
    v72 = *v120;
    if (!*v120)
    {
      goto LABEL_202;
    }

    if (v70)
    {
      while (1)
      {
        v73 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v74 = *(v9 + 4);
          v75 = *(v9 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_133:
          if (v77)
          {
            goto LABEL_181;
          }

          v90 = &v9[16 * v6];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_184;
          }

          v96 = &v9[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_187;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_188;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v6 - 2;
            }

            goto LABEL_154;
          }

          goto LABEL_147;
        }

        v100 = &v9[16 * v6];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_147:
        if (v95)
        {
          goto LABEL_183;
        }

        v103 = &v9[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_186;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_154:
        v111 = v73 - 1;
        if (v73 - 1 >= v6)
        {
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        if (!*a3)
        {
          goto LABEL_199;
        }

        v112 = *&v9[16 * v111 + 32];
        v113 = *&v9[16 * v73 + 40];
        sub_25DD0651C((*a3 + 32 * v112), (*a3 + 32 * *&v9[16 * v73 + 32]), *a3 + 32 * v113, v72);
        v6 = v5;
        if (v5)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_177;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25DD06A4C(v9);
        }

        if (v111 >= *(v9 + 2))
        {
          goto LABEL_178;
        }

        v114 = &v9[16 * v111];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        result = sub_25DD069C0(v73);
        v6 = *(v9 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v9[16 * v6 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_179;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_180;
      }

      v85 = &v9[16 * v6];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_182;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_185;
      }

      if (v89 >= v81)
      {
        v107 = &v9[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_189;
        }

        if (v76 < v110)
        {
          v73 = v6 - 2;
        }

        goto LABEL_154;
      }

      goto LABEL_133;
    }

LABEL_3:
    v7 = a3[1];
    v6 = v5;
    if (v8 >= v7)
    {
      goto LABEL_164;
    }
  }

  v122 = v8;
  v124 = v6;
  v135 = *a3;
  v51 = *a3 + 32 * v10;
  v52 = v8 - v10;
  v125 = v50;
LABEL_79:
  v129 = v51;
  v131 = v10;
  v53 = (v135 + 32 * v10);
  v54 = *v53;
  v55 = v53[1];
  v127 = v52;
  v56 = v52;
  while (1)
  {
    v137 = v56;
    v57 = *(v51 - 32);
    v5 = *(v51 - 24);
    if (v55 == 1)
    {
      v58 = 0x656D616E656C6966;
    }

    else
    {
      v58 = v54;
    }

    if (v55 == 1)
    {
      v59 = 0xE800000000000000;
    }

    else
    {
      v59 = v55;
    }

    if (v55)
    {
      v60 = v58;
    }

    else
    {
      v60 = 1701667182;
    }

    if (v55)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE400000000000000;
    }

    if (v5 == 1)
    {
      v62 = 0x656D616E656C6966;
    }

    else
    {
      v62 = *(v51 - 32);
    }

    if (v5 == 1)
    {
      v63 = 0xE800000000000000;
    }

    else
    {
      v63 = *(v51 - 24);
    }

    if (v5)
    {
      v64 = v62;
    }

    else
    {
      v64 = 1701667182;
    }

    if (v5)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE400000000000000;
    }

    if (v60 == v64 && v61 == v65)
    {
      v140 = 0;
    }

    else
    {
      v140 = sub_25DD975D4();
    }

    sub_25DD03828(v57, v5);
    sub_25DD03828(v54, v55);
    sub_25DD03828(v54, v55);
    sub_25DD03828(v57, v5);

    sub_25DD07C8C(v57, v5);

    sub_25DD07C8C(v54, v55);

    if ((v140 & 1) == 0)
    {
LABEL_78:
      v10 = v131 + 1;
      v51 = v129 + 32;
      v52 = v127 - 1;
      if (v131 + 1 != v125)
      {
        goto LABEL_79;
      }

      v10 = v125;
      v8 = v122;
      v6 = v124;
      v9 = v132;
      goto LABEL_113;
    }

    if (!v135)
    {
      break;
    }

    v54 = *v51;
    v66 = *(v51 + 24);
    v67 = *(v51 + 8);
    v68 = *(v51 - 16);
    *v51 = *(v51 - 32);
    *(v51 + 16) = v68;
    *(v51 - 24) = v67;
    *(v51 - 8) = v66;
    *(v51 - 32) = v54;
    v51 -= 32;
    v55 = v67;
    v56 = v137 + 1;
    if (v137 == -1)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
  return result;
}

uint64_t sub_25DD0651C(char *__src, char *a2, unint64_t a3, uint64_t *a4)
{
  v4 = a2;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 5;
  v9 = a3 - a2;
  v10 = a3 - a2 + 31;
  if ((a3 - a2) >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 5;
  v54 = a4;
  if (v8 >= v10 >> 5)
  {
    if (a4 != a2 || &a2[32 * v11] <= a4)
    {
      memmove(a4, a2, 32 * v11);
      a4 = v54;
    }

    v12 = &a4[4 * v11];
    if (v9 < 32 || v4 <= v5)
    {
      v30 = v4;
    }

    else
    {
      v31 = a3;
      v63 = v5;
LABEL_54:
      v32 = 0;
      v33 = v12;
      v65 = v4;
      v52 = v4 - 4;
      v53 = v12;
      do
      {
        v34 = &v33[v32];
        v35 = &v33[v32 - 4];
        v36 = *v35;
        v37 = v33[v32 - 3];
        v38 = *(v65 - 4);
        v39 = *(v65 - 3);
        if (v37 == 1)
        {
          v40 = 0x656D616E656C6966;
        }

        else
        {
          v40 = v33[v32 - 4];
        }

        if (v37 == 1)
        {
          v41 = 0xE800000000000000;
        }

        else
        {
          v41 = v33[v32 - 3];
        }

        if (v37)
        {
          v42 = v40;
        }

        else
        {
          v42 = 1701667182;
        }

        if (v37)
        {
          v43 = v41;
        }

        else
        {
          v43 = 0xE400000000000000;
        }

        if (v39 == 1)
        {
          v44 = 0x656D616E656C6966;
        }

        else
        {
          v44 = *(v65 - 4);
        }

        if (v39 == 1)
        {
          v45 = 0xE800000000000000;
        }

        else
        {
          v45 = *(v65 - 3);
        }

        if (v39)
        {
          v46 = v44;
        }

        else
        {
          v46 = 1701667182;
        }

        if (v39)
        {
          v47 = v45;
        }

        else
        {
          v47 = 0xE400000000000000;
        }

        v55 = v35;
        v57 = v34;
        if (v42 == v46 && v43 == v47)
        {
          v61 = 0;
        }

        else
        {
          v61 = sub_25DD975D4();
        }

        v48 = (v31 + v32 * 8);
        v56 = (v31 + v32 * 8 - 32);
        sub_25DD03828(v38, v39);
        sub_25DD03828(v36, v37);
        sub_25DD03828(v36, v37);
        sub_25DD03828(v38, v39);

        sub_25DD07C8C(v38, v39);

        sub_25DD07C8C(v36, v37);

        if (v61)
        {
          a4 = v54;
          v30 = v52;
          v31 = v31 + v32 * 8 - 32;
          if (v48 != v65)
          {
            v50 = *(v52 + 1);
            *v56 = *v52;
            v56[1] = v50;
          }

          v12 = &v53[v32];
          if (&v53[v32] <= v54 || (v4 = v52, v52 <= v63))
          {
            v12 = &v53[v32];
            goto LABEL_94;
          }

          goto LABEL_54;
        }

        v33 = v53;
        a4 = v54;
        if ((v31 + v32 * 8) != v57)
        {
          v49 = *(v55 + 1);
          *v56 = *v55;
          *(v31 + v32 * 8 - 16) = v49;
        }

        v32 -= 4;
        v12 = &v53[v32];
      }

      while (&v53[v32] > v54);
      v30 = v65;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
      a4 = v54;
    }

    v12 = &a4[4 * v8];
    if (v6 >= 32 && v4 < a3)
    {
      v58 = &a4[4 * v8];
      while (1)
      {
        v62 = v5;
        v14 = *v4;
        v13 = v4[1];
        v64 = v4;
        v16 = *a4;
        v15 = a4[1];
        v17 = a4;
        v18 = v13 == 1 ? 0x656D616E656C6966 : *v4;
        v19 = v13 == 1 ? 0xE800000000000000 : v4[1];
        v20 = v13 ? v18 : 1701667182;
        v21 = v13 ? v19 : 0xE400000000000000;
        v22 = v15 == 1 ? 0x656D616E656C6966 : *a4;
        v23 = v15 == 1 ? 0xE800000000000000 : a4[1];
        v24 = v15 ? v22 : 1701667182;
        v25 = v15 ? v23 : 0xE400000000000000;
        v60 = v20 == v24 && v21 == v25 ? 0 : sub_25DD975D4();
        sub_25DD03828(v16, v15);
        sub_25DD03828(v14, v13);
        sub_25DD03828(v14, v13);
        sub_25DD03828(v16, v15);

        sub_25DD07C8C(v16, v15);

        sub_25DD07C8C(v14, v13);

        if ((v60 & 1) == 0)
        {
          break;
        }

        v26 = v4;
        v4 += 4;
        v27 = v62;
        a4 = v17;
        v28 = a3;
        if (v62 != v64)
        {
          goto LABEL_44;
        }

LABEL_45:
        v5 = v27 + 32;
        v12 = v58;
        if (a4 >= v58 || v4 >= v28)
        {
          goto LABEL_47;
        }
      }

      v26 = v17;
      a4 = v17 + 4;
      v27 = v62;
      v28 = a3;
      if (v62 == v17)
      {
        goto LABEL_45;
      }

LABEL_44:
      v29 = *(v26 + 1);
      *v27 = *v26;
      *(v27 + 1) = v29;
      goto LABEL_45;
    }

LABEL_47:
    v30 = v5;
  }

LABEL_94:
  if (v30 != a4 || v30 >= (a4 + ((v12 - a4 + (v12 - a4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v30, a4, 32 * ((v12 - a4) / 32));
  }

  return 1;
}

uint64_t sub_25DD069C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25DD06A4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_25DD06A60(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 56) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(*(a4 + 48) + v18);
      *v11 = v22;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {
        sub_25DD03828(v22, *(&v22 + 1));

        goto LABEL_23;
      }

      v11 += 32;
      sub_25DD03828(v22, *(&v22 + 1));

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_25DD06C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
    v3 = sub_25DD972C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_25DD03828(v5, v6);

      result = sub_25DD043CC(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25DD06D1C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25DD06DDC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v45 = *(result + 48);
    v10 = *a3;
    sub_25DD03828(v8, v7);

    result = sub_25DD043CC(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v46 = v4;
    if (*(v10 + 24) < v15)
    {
      sub_25DD04554(v15, v5 & 1);
      result = sub_25DD043CC(v8, v7);
      if ((v16 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_25DD978F4();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v24 = result;
      sub_25DD04BB8();
      result = v24;
      v18 = *v46;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v18 = *v4;
    if (v16)
    {
LABEL_8:
      v19 = 16 * result;
      v20 = (v18[7] + 16 * result);
      v22 = *v20;
      v21 = v20[1];

      sub_25DD07C8C(v8, v7);
      v23 = (v18[7] + v19);
      *v23 = v22;
      v23[1] = v21;

LABEL_12:
      v16 = v3 - 1;
      v4 = v46;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v6 = *(v5 - 2);
        v3 = *(v5 - 1);
        v8 = *v5;
        v34 = *v4;
        sub_25DD03828(v7, v6);

        result = sub_25DD043CC(v7, v6);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v14 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v14)
        {
          goto LABEL_23;
        }

        v9 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_25DD04554(v38, 1);
          result = sub_25DD043CC(v7, v6);
          if ((v9 & 1) != (v39 & 1))
          {
            goto LABEL_5;
          }
        }

        v40 = *v4;
        if (v9)
        {
          v29 = 16 * result;
          v30 = (v40[7] + 16 * result);
          v32 = *v30;
          v31 = v30[1];

          sub_25DD07C8C(v7, v6);
          v33 = (v40[7] + v29);
          *v33 = v32;
          v33[1] = v31;
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v7;
          v41[1] = v6;
          v42 = (v40[7] + 16 * result);
          *v42 = v3;
          v42[1] = v8;
          v43 = v40[2];
          v14 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v40[2] = v44;
        }

        v5 += 4;
        --v16;
        v4 = v46;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v18[(result >> 6) + 8] |= 1 << result;
    v25 = (v18[6] + 16 * result);
    *v25 = v8;
    v25[1] = v7;
    v26 = (v18[7] + 16 * result);
    *v26 = v45;
    v26[1] = v9;
    v27 = v18[2];
    v14 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v28;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_25DD070C4(uint64_t a1, unint64_t a2)
{
  v80 = sub_25DD965E4();
  v4 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  sub_25DD06C04(MEMORY[0x277D84F90]);

  *&v84 = 59;
  *(&v84 + 1) = 0xE100000000000000;
  v82 = &v84;
  v8 = a1;
  v9 = 0;
  v10 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07CA0, v81, v8, a2, &v84);
  v11 = *(v10 + 16);
  v79 = v4;
  if (!v11)
  {

    v12 = MEMORY[0x277D84F90];
    v23 = *(MEMORY[0x277D84F90] + 16);
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_14:

    return v23;
  }

  v78 = 0;
  v87 = v7;
  sub_25DD055C4(0, v11, 0);
  v12 = v87;
  v13 = (v4 + 8);
  v77 = v10;
  v14 = (v10 + 56);
  do
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v84 = *(v14 - 3);
    v85 = v15;
    v86 = v16;

    sub_25DD965C4();
    sub_25DD07CBC();
    v17 = sub_25DD96F94();
    v19 = v18;
    (*v13)(v6, v80);

    v87 = v12;
    v21 = *(v12 + 2);
    v20 = *(v12 + 3);
    if (v21 >= v20 >> 1)
    {
      sub_25DD055C4((v20 > 1), v21 + 1, 1);
      v12 = v87;
    }

    *(v12 + 2) = v21 + 1;
    v22 = &v12[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
    v14 += 4;
    --v11;
  }

  while (v11);

  v9 = v78;
  v23 = *(v12 + 2);
  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_7:
  v25 = *(v12 + 4);
  v24 = *(v12 + 5);
  v77 = v12;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = v77;
  if (!isUniquelyReferenced_nonNull_native || (v23 - 1) > *(v77 + 3) >> 1)
  {
    v77 = sub_25DD05328(isUniquelyReferenced_nonNull_native, v23, 1, v77);
    v87 = v77;
  }

  sub_25DD06D1C(0, 1, 0);
  if (sub_25DD96B54() == 0x7461642D6D726F66 && v27 == 0xE900000000000061)
  {
  }

  else
  {
    v28 = sub_25DD975D4();

    if ((v28 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v25 = 0;
  v24 = 0;
LABEL_17:
  v30 = v77;
  v70 = v25;
  v71 = v24;
  v31 = MEMORY[0x277D84F90];
  v74 = *(v77 + 2);
  if (!v74)
  {
    v72 = MEMORY[0x277D84F90];
LABEL_47:
    v66 = v72;
    if (v72[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
      v67 = sub_25DD972C4();
    }

    else
    {
      v67 = MEMORY[0x277D84F98];
    }

    v23 = v70;
    *&v84 = v67;
    sub_25DD06DDC(v66, 1, &v84);
    if (v9)
    {
      goto LABEL_55;
    }

    return v23;
  }

  v32 = 0;
  v72 = MEMORY[0x277D84F90];
  v73 = v77 + 32;
  v33 = (v79 + 8);
  while (v32 < *(v30 + 2))
  {
    v34 = &v73[16 * v32];
    v35 = *v34;
    v36 = v34[1];
    *&v84 = 61;
    *(&v84 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v29);
    *(&v69 - 2) = &v84;
    swift_bridgeObjectRetain_n();
    v79 = v36;
    v38 = sub_25DD04D30(1, 1, sub_25DD07E7C, (&v69 - 4), v35, v36, v37);
    v39 = *(v38 + 16);
    if (v39)
    {
      v76 = v32;
      v78 = v9;
      v83 = v31;
      sub_25DD055C4(0, v39, 0);
      v40 = v83;
      v75 = v38;
      v41 = (v38 + 56);
      do
      {
        v42 = *(v41 - 1);
        v43 = *v41;
        v84 = *(v41 - 3);
        v85 = v42;
        v86 = v43;

        sub_25DD965C4();
        sub_25DD07CBC();
        v44 = sub_25DD96F94();
        v46 = v45;
        (*v33)(v6, v80);

        v83 = v40;
        v48 = v40[2];
        v47 = v40[3];
        if (v48 >= v47 >> 1)
        {
          sub_25DD055C4((v47 > 1), v48 + 1, 1);
          v40 = v83;
        }

        v40[2] = v48 + 1;
        v49 = &v40[2 * v48];
        v49[4] = v44;
        v49[5] = v46;
        v41 += 4;
        --v39;
      }

      while (v39);

      v9 = v78;
      v31 = MEMORY[0x277D84F90];
      v32 = v76;
    }

    else
    {

      v40 = v31;
    }

    ++v32;
    if (v40[2] == 2)
    {
      v50 = v40[7];
      *&v84 = v40[6];
      *(&v84 + 1) = v50;
      v83 = &unk_286F949E8;
      sub_25DD07D68();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2160, &qword_25DD98810);
      sub_25DD07DC0();
      v51 = v80;
      sub_25DD970A4();
      sub_25DD07E24();
      v52 = sub_25DD96F94();
      v54 = v53;
      (*v33)(v6, v51);

      if (!v40[2])
      {
        goto LABEL_54;
      }

      v76 = v54;
      v78 = v52;
      v56 = v40[4];
      v55 = v40[5];

      v58 = sub_25DD96B54();
      v59 = v57;
      if (v58 == 1701667182 && v57 == 0xE400000000000000 || (sub_25DD975D4() & 1) != 0)
      {

        v56 = 0;
        v55 = 0;
      }

      else
      {
        if (v58 == 0x656D616E656C6966 && v59 == 0xE800000000000000)
        {

LABEL_45:

          v56 = 0;
          v55 = 1;
          goto LABEL_35;
        }

        v65 = sub_25DD975D4();

        if (v65)
        {
          goto LABEL_45;
        }
      }

LABEL_35:
      v29 = swift_isUniquelyReferenced_nonNull_native();
      if ((v29 & 1) == 0)
      {
        v29 = sub_25DD051F4(0, v72[2] + 1, 1, v72);
        v72 = v29;
      }

      v61 = v72[2];
      v60 = v72[3];
      v30 = v77;
      if (v61 >= v60 >> 1)
      {
        v29 = sub_25DD051F4((v60 > 1), v61 + 1, 1, v72);
        v30 = v77;
        v72 = v29;
      }

      v62 = v72;
      v72[2] = v61 + 1;
      v63 = &v62[4 * v61];
      v63[4] = v56;
      v63[5] = v55;
      v64 = v76;
      v63[6] = v78;
      v63[7] = v64;
      if (v32 == v74)
      {
        goto LABEL_47;
      }
    }

    else
    {

      v30 = v77;
      if (v32 == v74)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:

  MEMORY[0x25F8A43F0](v9);

  __break(1u);
  return result;
}

unint64_t sub_25DD0790C()
{
  result = qword_27FCC2120;
  if (!qword_27FCC2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2120);
  }

  return result;
}

unint64_t sub_25DD07964()
{
  result = qword_27FCC2128;
  if (!qword_27FCC2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2128);
  }

  return result;
}

unint64_t sub_25DD079BC()
{
  result = qword_27FCC2130;
  if (!qword_27FCC2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2130);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25DD07A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD07A6C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25DD07AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_25DD07B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25DD07B6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25DD07B84(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal18ContentDispositionV13ParameterNameO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DD07BCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD07C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25DD07C8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_25DD07CBC()
{
  result = qword_27FCC2150;
  if (!qword_27FCC2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2150);
  }

  return result;
}

uint64_t sub_25DD07D10(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4() & 1;
  }
}

unint64_t sub_25DD07D68()
{
  result = qword_27FCC2158;
  if (!qword_27FCC2158)
  {
    sub_25DD965E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2158);
  }

  return result;
}

unint64_t sub_25DD07DC0()
{
  result = qword_27FCC2168;
  if (!qword_27FCC2168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2160, &qword_25DD98810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2168);
  }

  return result;
}

unint64_t sub_25DD07E24()
{
  result = qword_27FCC2170;
  if (!qword_27FCC2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2170);
  }

  return result;
}

uint64_t sub_25DD07E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25DD07F3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_25DD08054(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t sub_25DD081CC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_25DD08280(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CopyOnWriteBox.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for CopyOnWriteBox.Storage(0, a3, a4, a5);
  result = sub_25DD08054(a1);
  *a2 = result;
  return result;
}

uint64_t CopyOnWriteBox.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 88);
  swift_beginAccess();
  return (*(*(*(a1 + 16) - 8) + 16))(a2, v5 + v6);
}

uint64_t sub_25DD083E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for CopyOnWriteBox(0, v5, a3, a4);
  v7 = CopyOnWriteBox.value.modify(v10, v6);
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return (v7)(v10, 0);
}

void (*CopyOnWriteBox.value.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v3 = v2;
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v9 - 8) + 64));
  }

  v14 = v11;
  *(v8 + 48) = v11;
  type metadata accessor for CopyOnWriteBox.Storage(0, v9, v12, v13);
  v15 = sub_25DD97594();
  v16 = *v3;
  if ((v15 & 1) == 0)
  {
    v17 = *(*v16 + 88);
    swift_beginAccess();
    (*(v10 + 16))(v14, v16 + v17, v9);
    v18 = sub_25DD08054(v14);

    *v3 = v18;
  }

  swift_beginAccess();
  return sub_25DD08628;
}

void sub_25DD08628(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_endAccess();
  free(v2);

  free(v1);
}

uint64_t CopyOnWriteBox.value.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CopyOnWriteBox.Storage(0, v5, v9, v10);
  v11 = sub_25DD97594();
  v12 = *v2;
  if ((v11 & 1) == 0)
  {
    v13 = *(*v12 + 88);
    swift_beginAccess();
    (*(v6 + 16))(v8, v12 + v13, v5);
    v12 = sub_25DD08054(v8);

    *v3 = v12;
  }

  v14 = *(*v12 + 88);
  swift_beginAccess();
  (*(v6 + 24))(v12 + v14, a1, v5);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t CopyOnWriteBox<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v3;
  CopyOnWriteBox.value.getter(v8, v7);
  sub_25DD96AA4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t CopyOnWriteBox<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19[-v13 - 8];
  sub_25DD08A7C(v12, v19);
  sub_25DD96E64();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v4)
  {
    (*(v8 + 32))(v11, v14, a2);
    type metadata accessor for CopyOnWriteBox.Storage(0, a2, v16, v17);
    result = sub_25DD08054(v11);
    *a4 = result;
  }

  return result;
}

uint64_t sub_25DD08A7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static CopyOnWriteBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v20 - v10;
  v13 = *v12;
  v20[1] = *v9;
  v16 = type metadata accessor for CopyOnWriteBox(0, v14, v14, v15);
  CopyOnWriteBox.value.getter(v16, v11);
  v20[0] = v13;
  CopyOnWriteBox.value.getter(v16, v8);
  v17 = sub_25DD96B04();
  v18 = *(v5 + 8);
  v18(v8, a3);
  v18(v11, a3);
  return v17 & 1;
}

uint64_t CopyOnWriteBox<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v3;
  CopyOnWriteBox.value.getter(v8, v7);
  sub_25DD96AC4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t CopyOnWriteBox<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[9] = *v2;
  sub_25DD97964();
  CopyOnWriteBox<A>.hash(into:)(v6, a1, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD08DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25DD97964();
  CopyOnWriteBox<A>.hash(into:)(v6, a2, v4);
  return sub_25DD979A4();
}

uint64_t sub_25DD08E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *v3;
  CopyOnWriteBox.value.getter(v8, v10);
  v11 = a3(v6, a2);
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_25DD08FB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_25DD090B4(uint64_t *a1, int a2)
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

uint64_t sub_25DD090FC(uint64_t result, int a2, int a3)
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

uint64_t sub_25DD0913C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_25DD091D0()
{
  v0 = sub_25DD0C52C(MEMORY[0x277D84F90]);
  result = 3.9838611e252;
  xmmword_27FCC39C0 = xmmword_25DD98A30;
  *&qword_27FCC39D0 = xmmword_25DD98A40;
  byte_27FCC39E0 = 1;
  qword_27FCC39E8 = v0;
  return result;
}

__n128 OpenAPIMIMEType.init(kind:parameters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

__int128 *sub_25DD0923C()
{
  if (qword_27FCC39B0 != -1)
  {
    swift_once();
  }

  return &xmmword_27FCC39C0;
}

uint64_t static OpenAPIMIMEType.xml.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FCC39B0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_27FCC39C0;
  v2 = qword_27FCC39D0;
  v3 = unk_27FCC39D8;
  v4 = qword_27FCC39E8;
  *a1 = xmmword_27FCC39C0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  v5 = byte_27FCC39E0;
  *(a1 + 32) = byte_27FCC39E0;
  *(a1 + 40) = v4;
  sub_25DD0C654(v1, *(&v1 + 1), v2, v3, v5);
}

void OpenAPIMIMEType.kind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_25DD0C654(v2, v3, v4, v5, v6);
}

__n128 OpenAPIMIMEType.kind.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_25DCFFC90(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t OpenAPIMIMEType.parameters.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_25DD09404(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_25DD0B46C(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  result = sub_25DD970B4();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
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

    v30 = v7;
    v11 = (*(v3 + 56) + 16 * v6);
    v32 = *v11;
    v12 = v3;
    v13 = v11[1];
    v31 = sub_25DD96B54();
    v15 = v14;
    v17 = *(v33 + 16);
    v16 = *(v33 + 24);

    if (v17 >= v16 >> 1)
    {
      result = sub_25DD0B46C((v16 > 1), v17 + 1, 1);
    }

    *(v33 + 16) = v17 + 1;
    v18 = (v33 + 32 * v17);
    v18[4] = v31;
    v18[5] = v15;
    v18[6] = v32;
    v18[7] = v13;
    v9 = 1 << *(v12 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v12;
    v4 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_25DD0D514(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_25DD0D514(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
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

uint64_t sub_25DD09670(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25DD0C2DC(v15, v16, sub_25DCFFA14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25DD975D4();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t OpenAPIMIMEType.Kind.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[0] = 47;
  v30[1] = 0xE100000000000000;
  v29[2] = v30;
  v4 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07CA0, v29, a1, a2, v30);
  v5 = *(v4 + 16);
  if (!v5)
  {

    v8 = MEMORY[0x277D84F90];
LABEL_9:
    if (v8[2] == 2)
    {
      v21 = v8[4];
      v20 = v8[5];
      v23 = v8[6];
      v22 = v8[7];

      v24 = v21 == 42 && v20 == 0xE100000000000000;
      if (!v24 && (sub_25DD975D4() & 1) == 0)
      {
        v28 = v23 == 42 && v22 == 0xE100000000000000;
        if (v28 || (result = sub_25DD975D4(), (result & 1) != 0))
        {

          *a3 = v21;
          *(a3 + 8) = v20;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
          return result;
        }

        *a3 = v21;
        *(a3 + 8) = v20;
        *(a3 + 16) = v23;
        *(a3 + 24) = v22;
        v27 = 1;
LABEL_25:
        *(a3 + 32) = v27;
        return result;
      }

      if (v23 == 42 && v22 == 0xE100000000000000)
      {

LABEL_24:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v27 = 2;
        goto LABEL_25;
      }

      v26 = sub_25DD975D4();

      if (v26)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    v27 = -1;
    goto LABEL_25;
  }

  v30[0] = MEMORY[0x277D84F90];
  result = sub_25DD055C4(0, v5, 0);
  v7 = 0;
  v8 = v30[0];
  v9 = (v4 + 56);
  while (v7 < *(v4 + 16))
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;

    v14 = MEMORY[0x25F8A3180](v10, v11, v12, v13);
    v16 = v15;

    v30[0] = v8;
    v18 = v8[2];
    v17 = v8[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_25DD055C4((v17 > 1), v18 + 1, 1);
      v8 = v30[0];
    }

    ++v7;
    v8[2] = v18 + 1;
    v19 = &v8[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v9 += 4;
    if (v5 == v7)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t OpenAPIMIMEType.Kind.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (!*(v0 + 32))
  {
    v6 = *v0;
    sub_25DD0C654(*v0, *(v0 + 8), v1, v2, 0);
    v3 = 10799;
    v4 = 0xE200000000000000;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v6 = *v0;

    MEMORY[0x25F8A3200](47, 0xE100000000000000);
    v3 = v1;
    v4 = v2;
LABEL_5:
    MEMORY[0x25F8A3200](v3, v4);
    return v6;
  }

  return 2764586;
}

uint64_t OpenAPIMIMEType.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v74 = 59;
  *(&v74 + 1) = 0xE100000000000000;
  v73 = &v74;
  v3 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07E7C, v72, a1, a2, &v74);
  v4 = *(v3 + 16);
  if (v4)
  {
    *&v74 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v4, 0);
    v5 = 0;
    v6 = v74;
    v7 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      v12 = MEMORY[0x25F8A3180](v8, v9, v10, v11);
      v14 = v13;

      *&v74 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25DD055C4((v15 > 1), v16 + 1, 1);
        v6 = v74;
      }

      ++v5;
      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += 4;
      if (v4 == v5)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_47;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_9:
  v18 = *(v6 + 16);
  if (v18)
  {
    *&v74 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v18, 0);
    v19 = v74;
    v20 = (v6 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      v23 = sub_25DD279B4(v21, v22);
      v25 = v24;

      *&v74 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25DD055C4((v26 > 1), v27 + 1, 1);
        v19 = v74;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 2;
      --v18;
    }

    while (v18);

    v29 = v19;
    v30 = *(v19 + 16);
    if (!v30)
    {
      goto LABEL_43;
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
    if (!v30)
    {
LABEL_43:

      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }
  }

  v6 = *(v29 + 32);
  v31 = *(v29 + 40);
  v71 = v29;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v71;
  if (!isUniquelyReferenced_nonNull_native || (v30 - 1) > *(v71 + 3) >> 1)
  {
    v71 = sub_25DD05328(isUniquelyReferenced_nonNull_native, v30, 1, v71);
    v77 = v71;
  }

  v33 = MEMORY[0x277D84F90];
  sub_25DD06D1C(0, 1, 0);
  OpenAPIMIMEType.Kind.init(_:)(v6, v31, &v74);
  if (v76 == 255)
  {
    goto LABEL_43;
  }

  v67 = v76;
  v34 = 0;
  v65 = v75;
  v66 = v74;
  v35 = v71;
  v70 = *(v71 + 2);
  v68 = v33;
  while (1)
  {
    if (v34 == v70)
    {
      if (v68[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
        v62 = sub_25DD972C4();
      }

      else
      {
        v62 = MEMORY[0x277D84F98];
      }

      *&v74 = v62;
      sub_25DD0CC84(v68, 1, &v74);

      v64 = v74;
      *a3 = v66;
      *(a3 + 16) = v65;
      *(a3 + 32) = v67;
      *(a3 + 40) = v64;
      return result;
    }

    if (v34 >= *(v35 + 2))
    {
      goto LABEL_48;
    }

    v39 = &v71[16 * v34 + 32];
    v40 = *v39;
    v41 = v39[1];

    v78[0] = 61;
    v78[1] = 0xE100000000000000;
    *&v75 = v78;

    v6 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07E7C, &v74, v40, v41, v42);
    v43 = *(v6 + 16);
    if (v43)
    {
      break;
    }

    v45 = v33;
LABEL_32:
    if (v45[2] == 2)
    {
      v36 = v45[4];
      v6 = v45[5];
      v37 = v45[6];
      v38 = v45[7];
    }

    else
    {
      v36 = 0;
      v6 = 0;
      v37 = 0;
      v38 = 0;
    }

    ++v34;

    v35 = v71;
    if (v6)
    {
      v57 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_25DD0B5E0(0, v68[2] + 1, 1, v68);
      }

      v59 = v57[2];
      v58 = v57[3];
      v68 = v57;
      v35 = v71;
      if (v59 >= v58 >> 1)
      {
        v61 = sub_25DD0B5E0((v58 > 1), v59 + 1, 1, v57);
        v35 = v71;
        v68 = v61;
      }

      v68[2] = v59 + 1;
      v60 = &v68[4 * v59];
      v60[4] = v36;
      v60[5] = v6;
      v60[6] = v37;
      v60[7] = v38;
      v33 = MEMORY[0x277D84F90];
    }
  }

  v78[0] = v33;
  sub_25DD055C4(0, v43, 0);
  v44 = 0;
  v45 = v78[0];
  v46 = (v6 + 56);
  while (v44 < *(v6 + 16))
  {
    v47 = *(v46 - 3);
    v48 = *(v46 - 2);
    v50 = *(v46 - 1);
    v49 = *v46;

    v51 = MEMORY[0x25F8A3180](v47, v48, v50, v49);
    v53 = v52;

    v78[0] = v45;
    v55 = v45[2];
    v54 = v45[3];
    if (v55 >= v54 >> 1)
    {
      sub_25DD055C4((v54 > 1), v55 + 1, 1);
      v45 = v78[0];
    }

    ++v44;
    v45[2] = v55 + 1;
    v56 = &v45[2 * v55];
    v56[4] = v51;
    v56[5] = v53;
    v46 += 4;
    if (v43 == v44)
    {

      v33 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);

  MEMORY[0x25F8A43F0](v6);

  __break(1u);
  return result;
}

uint64_t OpenAPIMIMEType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DD98100;
  if (!v5)
  {
    v33 = v2;
    v34 = v1;

    v8 = 10799;
    v9 = 0xE200000000000000;
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v33 = v2;
    v34 = v1;

    MEMORY[0x25F8A3200](47, 0xE100000000000000);
    v8 = v3;
    v9 = v4;
LABEL_5:
    MEMORY[0x25F8A3200](v8, v9);
    v10 = v33;
    v11 = v34;
    goto LABEL_7;
  }

  v11 = 0xE300000000000000;
  v10 = 2764586;
LABEL_7:
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  v32 = v7;
  v12 = *(v6 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = sub_25DD0B714(*(v6 + 16), 0);
    v15 = sub_25DD0C360(&v33, v14 + 4, v12, v6);
    v16 = v33;

    sub_25DD07900(v16);
    if (v15 == v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v14 = v13;
LABEL_11:
  v33 = v14;
  sub_25DD0B798(&v33);
  v17 = v33;
  v18 = v33[2];
  if (v18)
  {
    sub_25DD055C4(0, v18, 0);
    v19 = 0;
    v20 = v13;
    v21 = (v17 + 56);
    while (v19 < *(v17 + 16))
    {
      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v24 = *v21;
      v33 = *(v21 - 3);
      v34 = v22;
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F8A3200](61, 0xE100000000000000);
      MEMORY[0x25F8A3200](v23, v24);

      v25 = v33;
      v26 = v34;
      v28 = *(v20 + 2);
      v27 = *(v20 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_25DD055C4((v27 > 1), v28 + 1, 1);
      }

      ++v19;
      *(v20 + 2) = v28 + 1;
      v29 = &v20[16 * v28];
      *(v29 + 4) = v25;
      *(v29 + 5) = v26;
      v21 += 4;
      if (v18 == v19)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
    MEMORY[0x25F8A43F0](v17);

    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_19:
    v33 = v32;
    sub_25DD0B804(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
    sub_25DD0CFAC();
    v30 = sub_25DD96AD4();

    return v30;
  }

  return result;
}

uint64_t sub_25DD0A47C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (!a3)
  {
    return a3;
  }

  if (a3 == 1)
  {
    v3 = __OFADD__(a1, 3);
    result = a1 + 3;
    if (v3)
    {
      __break(1u);
    }
  }

  else if (a1 | a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_25DD0A4BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v6 = a2;
      return MEMORY[0x25F8A3F90](v6);
    }

    if (a2 | a3)
    {
      v6 = 2;
      return MEMORY[0x25F8A3F90](v6);
    }

LABEL_11:
    v6 = 1;
    return MEMORY[0x25F8A3F90](v6);
  }

  MEMORY[0x25F8A3F90](0);
  if (!a3)
  {
    v6 = 0;
    return MEMORY[0x25F8A3F90](v6);
  }

  if (a3 == 1)
  {
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD0A574(uint64_t a1, uint64_t a2, char a3)
{
  sub_25DD97964();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v6 = a1;
LABEL_11:
      MEMORY[0x25F8A3F90](v6);
      return sub_25DD979A4();
    }

    if (a1 | a2)
    {
      v6 = 2;
      goto LABEL_11;
    }

LABEL_9:
    v6 = 1;
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](0);
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    goto LABEL_9;
  }

  MEMORY[0x25F8A3F90](2);
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD0A658(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v4 = v2;
      return MEMORY[0x25F8A3F90](v4);
    }

    if (v2 | v3)
    {
      v4 = 2;
      return MEMORY[0x25F8A3F90](v4);
    }

LABEL_11:
    v4 = 1;
    return MEMORY[0x25F8A3F90](v4);
  }

  MEMORY[0x25F8A3F90](0);
  if (!v3)
  {
    v4 = 0;
    return MEMORY[0x25F8A3F90](v4);
  }

  if (v3 == 1)
  {
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD0A710(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_25DD97964();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v5 = v2;
LABEL_11:
      MEMORY[0x25F8A3F90](v5);
      return sub_25DD979A4();
    }

    if (v2 | v3)
    {
      v5 = 2;
      goto LABEL_11;
    }

LABEL_9:
    v5 = 1;
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](0);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if (v3 == 1)
  {
    goto LABEL_9;
  }

  MEMORY[0x25F8A3F90](2);
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD0A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!*(a6 + 32))
  {
    v13 = sub_25DD96B54();
    v15 = v14;
    if (v13 == sub_25DD96B54() && v15 == v16)
    {

      return 1;
    }

    else
    {
      v18 = sub_25DD975D4();

      return v18 & 1;
    }
  }

  if (*(a6 + 32) != 1)
  {
    return 0;
  }

  v47 = a6[5];
  v7 = sub_25DD96B54();
  v9 = v8;
  if (v7 == sub_25DD96B54() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_25DD975D4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = sub_25DD96B54();
  v22 = v21;
  if (v20 == sub_25DD96B54() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_25DD975D4();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(sub_25DD09404(a5) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
    v25 = sub_25DD972C4();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v48 = v25;

  sub_25DD0AC34(v26, 1, &v48);

  v27 = v48;
  v28 = 1 << *(v47 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v47 + 64);
  v31 = (v28 + 63) >> 6;

  v19 = 0;
  v32 = 0;
  while (v30)
  {
    v46 = v19;
LABEL_36:
    v34 = (*(v47 + 56) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))));
    v36 = *v34;
    v35 = v34[1];
    v19 = sub_25DD96B54();
    v38 = v37;
    v39 = *(v27 + 16);

    if (!v39)
    {
      goto LABEL_46;
    }

    v40 = sub_25DD0C2DC(v19, v38, sub_25DCFFA14);
    if ((v41 & 1) == 0)
    {

LABEL_46:

LABEL_47:

      return v19;
    }

    v42 = (*(v27 + 56) + 16 * v40);
    if (*v42 == v36 && v42[1] == v35)
    {
    }

    else
    {
      v44 = sub_25DD975D4();

      if ((v44 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v30 &= v30 - 1;

    v19 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_50;
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
      goto LABEL_47;
    }

    v30 = *(v47 + 64 + 8 * v33);
    ++v32;
    if (v30)
    {
      v46 = v19;
      v32 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_25DD0AC34(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
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
    sub_25DD0B1AC(v15, v4 & 1);
    v10 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_25DD978F4();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_25DD0B034();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x25F8A43F0](v18);
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_25DD97124();
    MEMORY[0x25F8A3200](0xD00000000000001BLL, 0x800000025DDAA050);
    sub_25DD97224();
    MEMORY[0x25F8A3200](39, 0xE100000000000000);
    result = sub_25DD97294();
    __break(1u);
    return result;
  }

  v22[2] = v26;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_25DD0B1AC(v33, 1);
        v29 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v6;
      v36[1] = v5;
      v37 = (v35[7] + 16 * v29);
      *v37 = v27;
      v37[1] = v8;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

void *sub_25DD0B034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
  v2 = *v0;
  v3 = sub_25DD972A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}
uint64_t sub_21461A4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21461A540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21461A588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

unint64_t sub_21461A5E0()
{
  result = qword_27C916DC8;
  if (!qword_27C916DC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.System, &type metadata for StyleSheet.Font.System, v0, v1);
    atomic_store(result, &qword_27C916DC8);
  }

  return result;
}

unint64_t sub_21461A634()
{
  result = qword_27C916DD0;
  if (!qword_27C916DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Variant, &type metadata for StyleSheet.Font.Variant, v0, v1);
    atomic_store(result, &qword_27C916DD0);
  }

  return result;
}

unint64_t sub_21461A688()
{
  result = qword_27C916DD8;
  if (!qword_27C916DD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Style, &type metadata for StyleSheet.Font.Style, v0, v1);
    atomic_store(result, &qword_27C916DD8);
  }

  return result;
}

unint64_t sub_21461A6DC()
{
  result = qword_27C916DE0;
  if (!qword_27C916DE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Absolute, &type metadata for StyleSheet.Font.Size.Absolute, v0, v1);
    atomic_store(result, &qword_27C916DE0);
  }

  return result;
}

unint64_t sub_21461A730()
{
  result = qword_27C916DE8;
  if (!qword_27C916DE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Unit, &type metadata for StyleSheet.Font.Size.Unit, v0, v1);
    atomic_store(result, &qword_27C916DE8);
  }

  return result;
}

unint64_t sub_21461A784()
{
  result = qword_27C916DF0;
  if (!qword_27C916DF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Weight, &type metadata for StyleSheet.Font.Weight, v0, v1);
    atomic_store(result, &qword_27C916DF0);
  }

  return result;
}

unint64_t sub_21461A7D8()
{
  result = qword_27C916DF8;
  if (!qword_27C916DF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.TextAlign, &type metadata for StyleSheet.TextAlign, v0, v1);
    atomic_store(result, &qword_27C916DF8);
  }

  return result;
}

unint64_t sub_21461A82C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DFC4;
  *(v6 + 24) = 0;
  *(v4 + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DFC4;
  *(v7 + 24) = 0;
  *(v4 + 48) = v7;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v8 + 16) = sub_21438F534;
  *(v8 + 24) = v9;
  *(v4 + 56) = v8;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v10 + 16) = sub_21439DF94;
  *(v10 + 24) = v11;
  *(v3 + 32) = v10;
  v12 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_214032610;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21461AA54@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DF24;
  *(v6 + 24) = 0;
  *(v4 + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DFC4;
  *(v7 + 24) = 0;
  *(v4 + 48) = v7;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v8 + 16) = sub_21438F534;
  *(v8 + 24) = v9;
  *(v4 + 56) = v8;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v10 + 16) = sub_21439DF94;
  *(v10 + 24) = v11;
  *(v3 + 32) = v10;
  v12 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_21403254C;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21461AC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21461ACD4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21461AD3C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RelayGroupMutationMessage(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for RelayGroupMutationMessage(uint64_t a1)
{
  result = qword_280B2EB30;
  if (!qword_280B2EB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21461ADF4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for RelayGroupMutationMessage(0) + 36));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21461AE6C()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_21461AEEC()
{
  v1 = v0 + *(type metadata accessor for RelayGroupMutationMessage(0) + 36);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

unint64_t sub_21461AF7C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146EAEB0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DF28;
  *(v6 + 24) = v3;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v8 + 16) = sub_21439DF54;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = sub_21438EDCC;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146EAEB0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21439DF60;
  *(v13 + 24) = v8;
  *(v12 + 32) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21439DF60;
  *(v14 + 24) = v10;
  *(v12 + 40) = v14;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v15 + 16) = sub_21439DF94;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, a1);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21405980C;
  *(v18 + 24) = 0;
  *(v17 + 32) = v18;
  return sub_214042B80(v17, a1 + 40);
}

uint64_t sub_21461B250@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21461B29C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21461B2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21461B344(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21461B3A0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21461B41C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21461B4A0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21461B5E4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_21461B6BC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_21461B75C()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_21461B78C(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_21461B7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21461B830(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_21461B8AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21461B8F8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u64[1] = v4;
  v1[8].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21461B974@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RelayGroupMutationMessage(0) + 32);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21461B9F0(uint64_t a1)
{
  v3 = *(type metadata accessor for RelayGroupMutationMessage(0) + 32);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void sub_21461BAB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RelayGroupMutationMessage(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21461BB50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for RelayGroupMutationMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21461BC18(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RelayGroupMutationMessage(0) + 36);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21461BD68(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for RelayGroupMutationMessage(0) + 36);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_21461BE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for RelayGroupMutationMessage(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21461BEC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for RelayGroupMutationMessage(0) + 36);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21461BF5C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for RelayGroupMutationMessage(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_21461C02C(char a1)
{
  result = type metadata accessor for RelayGroupMutationMessage(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_21461C0A4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RelayGroupMutationMessage(0) + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  v9 = *(v3 + 33);
  *(a1 + 33) = v9;

  return sub_2142FDFBC(v4, v5, v6, v7, v8, v9);
}

__n128 sub_21461C104(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for RelayGroupMutationMessage(0) + 44);
  sub_2142FE050(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 33));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_21461C1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 32);
  return sub_21431C5DC(v2, v3, v4, v5);
}

__n128 sub_21461C1C4(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_21431E10C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_21461C22C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_21461C2F8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21461C440(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21461C4DC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

void sub_21461C574(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21461C6BC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21461C758(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

uint64_t sub_21461C87C(uint64_t a1)
{
  *(a1 + 8) = sub_21461C8E4(&qword_27C916E00, byte_2146FBB70);
  result = sub_21461C8E4(&qword_27C916E08, aA_109);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21461C8E4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RelayGroupMutationMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21461C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21461C9C0()
{
  result = qword_27C916E10;
  if (!qword_27C916E10)
  {
    result = swift_getWitnessTable(aE_88, &type metadata for RelayGroupParticipantMutationType, v0, v1);
    atomic_store(result, &qword_27C916E10);
  }

  return result;
}

void sub_21461CAC0(uint64_t a1)
{
  sub_214084AA4(319);
  if (v1 <= 0x3F)
  {
    sub_2146D8B88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16GroupDisplayNameVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor18RelayGroupMutationO(uint64_t a1)
{
  if ((*(a1 + 33) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 33) & 3;
  }
}

uint64_t sub_21461CBB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21461CC10(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21461CCA8()
{
  result = qword_27C916E18;
  if (!qword_27C916E18)
  {
    result = swift_getWitnessTable(byte_21476DFEC, &type metadata for RelayGroupParticipantMutationType, v0, v1);
    atomic_store(result, &qword_27C916E18);
  }

  return result;
}

uint64_t MBDChipReply.dictionaryRepresentation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x6974736567677573;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v1 = sub_2143E26FC();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(inited + 48) = v1;
  v2 = sub_214045690(inited);
  swift_setDeallocating();
  sub_21461D448(inited + 32);
  v3 = sub_2140418B8(v2);

  return v3;
}

uint64_t sub_21461CDF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x6974736567677573;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v1 = sub_2143E26FC();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(inited + 48) = v1;
  v2 = sub_214045690(inited);
  swift_setDeallocating();
  sub_21461D448(inited + 32);
  v3 = sub_2140418B8(v2);

  return v3;
}

uint64_t sub_21461CEE4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21461CF58(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_21461CFAC(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

void sub_21461D020(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_21461D078(uint64_t a1)
{
  v2 = sub_21461D4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21461D0B4(uint64_t a1)
{
  v2 = sub_21461D4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipReply.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E20, &qword_21476E3A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21461D4B0();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21461D504();
    sub_2146DA0D8();
    (*(v6 + 8))(v8, v5);
    v9 = v13[1];
    v10 = v14;
    v11 = v15;
    *a2 = v13[0];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipReply.encode(to:configuration:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E38, &qword_21476E3B0);
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v13 = v1[2];
  v14 = v6;
  v9 = v1[5];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21461D4B0();

  sub_2146DAA28();
  v16 = v14;
  v17 = v7;
  v18 = v13;
  v19 = v8;
  v20 = v12;
  v21 = v9;
  sub_21461D558();
  v10 = v15;
  sub_2146DA2A8();

  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_21461D448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21461D4B0()
{
  result = qword_27C916E28;
  if (!qword_27C916E28)
  {
    result = swift_getWitnessTable(byte_21476E540, &_s19CodingConfigurationV10CodingKeysON_15, v0, v1);
    atomic_store(result, &qword_27C916E28);
  }

  return result;
}

unint64_t sub_21461D504()
{
  result = qword_27C916E30;
  if (!qword_27C916E30)
  {
    result = swift_getWitnessTable(a9_12, &type metadata for MBDChipSuggestion, v0, v1);
    atomic_store(result, &qword_27C916E30);
  }

  return result;
}

unint64_t sub_21461D558()
{
  result = qword_27C916E40;
  if (!qword_27C916E40)
  {
    result = swift_getWitnessTable(byte_21473ADA8, &type metadata for MBDChipSuggestion, v0, v1);
    atomic_store(result, &qword_27C916E40);
  }

  return result;
}

unint64_t sub_21461D5D0()
{
  result = qword_27C916E48;
  if (!qword_27C916E48)
  {
    result = swift_getWitnessTable(byte_21476E518, &_s19CodingConfigurationV10CodingKeysON_15, v0, v1);
    atomic_store(result, &qword_27C916E48);
  }

  return result;
}

unint64_t sub_21461D628()
{
  result = qword_27C916E50;
  if (!qword_27C916E50)
  {
    result = swift_getWitnessTable(aQvm, &_s19CodingConfigurationV10CodingKeysON_15, v0, v1);
    atomic_store(result, &qword_27C916E50);
  }

  return result;
}

unint64_t sub_21461D680()
{
  result = qword_27C916E58;
  if (!qword_27C916E58)
  {
    result = swift_getWitnessTable(aAom, &_s19CodingConfigurationV10CodingKeysON_15, v0, v1);
    atomic_store(result, &qword_27C916E58);
  }

  return result;
}

void StyleSheet.bridge()(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_2146D9318();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v42 = *(*v1 + 16);
  if (v42)
  {
    v7 = 0;
    v36 = *MEMORY[0x277D239D0];
    v35 = *MEMORY[0x277D239C8];
    v37 = v3 + 32;
    v38 = (v3 + 104);
    v8 = (v6 + 72);
    v9 = MEMORY[0x277D84F90];
    v39 = v6;
    v40 = v3;
    v41 = v2;
    while (v7 < *(v6 + 16))
    {
      v43 = v9;
      v10 = *(v8 - 5);
      v11 = *(v8 - 4);
      v12 = *(v8 - 3);
      v13 = *(v8 - 2);
      v14 = *(v8 - 1);
      if (*v8)
      {
        v45 = v6;
        sub_21461DCB8(v10, v11, v12, v13, v14, 1);

        v15 = v44;
        v16 = sub_21461DA68(v14);
        v44 = v15;
        if (v15)
        {

          v28 = v10;
          v29 = v11;
          v30 = v12;
          v31 = v13;
          v32 = v14;
          v33 = 1;
          goto LABEL_21;
        }

        v17 = v16;
        v18.n128_f64[0] = sub_21461DD14(v10, v11, v12, v13, v14, 1);
        *v5 = v10;
        v5[1] = v11;
        v5[2] = v12;
        v5[3] = v13;
        v19 = v35;
        v5[4] = v17;
      }

      else
      {
        v45 = v6;
        sub_21461DCB8(v10, v11, v12, v13, v14, 0);

        v20 = v44;
        v21 = sub_21461DA68(v12);
        v44 = v20;
        if (v20)
        {

          v28 = v10;
          v29 = v11;
          v30 = v12;
          v31 = v13;
          v32 = v14;
          v33 = 0;
LABEL_21:
          sub_21461DD14(v28, v29, v30, v31, v32, v33);

          return;
        }

        v22 = v21;
        v18.n128_f64[0] = sub_21461DD14(v10, v11, v12, v13, v14, 0);
        *v5 = v10;
        v5[1] = v11;
        v19 = v36;
        v5[2] = v22;
      }

      v23 = v41;
      (*v38)(v5, v19, v41, v18);
      v9 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_214096320(0, v9[2] + 1, 1, v9);
      }

      v27 = v9[2];
      v26 = v9[3];
      if (v27 >= v26 >> 1)
      {
        v9 = sub_214096320((v26 > 1), v27 + 1, 1, v9);
      }

      ++v7;
      v9[2] = v27 + 1;
      (*(v25 + 32))(v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v27, v5, v23);
      v8 += 48;
      v6 = v39;
      if (v42 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_16:
    if (!v9[2])
    {
    }

    sub_2146D9348();
  }
}

void *sub_21461DA68(uint64_t a1)
{
  v25 = sub_2146D9308();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = *v1;
  v22 = v3 + 32;
  v7 = (a1 + 64);
  v8 = MEMORY[0x277D84F90];
  v23 = v3;
  while (1)
  {
    v26 = v6;
    v27 = v8;
    v9 = *(v7 - 4);
    v10 = *(v7 - 3);
    v12 = *(v7 - 2);
    v11 = *(v7 - 1);
    v13 = *v7;
    v31 = v24;
    v29[0] = v9;
    v29[1] = v10;
    v29[2] = v12;
    v29[3] = v11;
    v30 = v13;
    sub_21461F000(v9, v10, v12, v11, v13);
    v14 = v28;
    sub_21461DD74(v29, v5);
    if (v14)
    {
      break;
    }

    sub_21461F08C(v9, v10, v12, v11, v13);
    v8 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2140962F8(0, v8[2] + 1, 1, v8);
    }

    v16 = v23;
    v18 = v8[2];
    v17 = v8[3];
    if (v18 >= v17 >> 1)
    {
      v8 = sub_2140962F8((v17 > 1), v18 + 1, 1, v8);
    }

    v7 += 40;
    v8[2] = v18 + 1;
    (*(v16 + 32))(v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v18, v5, v25);
    v6 = v26 - 1;
    if (v26 == 1)
    {
      return v8;
    }
  }

  v19 = v27;

  v20 = v9;
  v8 = v19;
  sub_21461F08C(v20, v10, v12, v11, v13);
  return v8;
}

double sub_21461DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

double sub_21461DD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }

  return result;
}

void sub_21461DD74(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E60, &qword_21476E590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_2146D9298();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = *(a1 + 32);
  if (v16 <= 2)
  {
    if (*(a1 + 32))
    {
      if (v16 == 1)
      {
        sub_2146D9328();
        v17 = MEMORY[0x277D239A8];
      }

      else
      {
        if ((v13 & 0x100000000) != 0)
        {
          v27 = sub_2146D9338();
          (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
        }

        else
        {
          sub_2146D9328();
          v24 = sub_2146D9338();
          (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
        }

        v17 = MEMORY[0x277D23990];
      }

      goto LABEL_27;
    }

    v19 = a1[3];
    *a2 = v14;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v19;
    v20 = *MEMORY[0x277D239B0];
    v21 = sub_2146D9308();
    (*(*(v21 - 8) + 104))(a2, v20, v21);

LABEL_17:

    return;
  }

  if (v16 == 3)
  {
    v22 = sub_2146D9358();
    if (v14)
    {
      if (v14 == 1)
      {
        v23 = MEMORY[0x277D239F0];
      }

      else
      {
        v23 = MEMORY[0x277D239E8];
      }
    }

    else
    {
      v23 = MEMORY[0x277D239E0];
    }

    (*(*(v22 - 8) + 104))(a2, *v23, v22);
    v17 = MEMORY[0x277D239B8];
    goto LABEL_27;
  }

  if (v16 != 4)
  {
    *a2 = v14;
    a2[1] = v13;
    v25 = *MEMORY[0x277D23998];
    v26 = sub_2146D9308();
    (*(*(v26 - 8) + 104))(a2, v25, v26);
    goto LABEL_17;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    v28 = v10;
    sub_2146D9288();
    if ((*(v9 + 48))(v7, 1, v28) == 1)
    {
      sub_213FB2DF4(v7, &qword_27C916E60, &qword_21476E590);
      sub_21461F118();
      swift_allocError();
      *v29 = 7;
      swift_willThrow();
      return;
    }

    v30 = *(v9 + 32);
    v30(v12, v7, v28);
    v30(a2, v12, v28);
    v18 = MEMORY[0x277D23980];
  }

  else
  {
    v36 = *a1;
    v37 = v13;
    v38 = BYTE2(v13);
    v39 = BYTE3(v13);
    v40 = v15;
    sub_21461E2EC(&v36, a2);
    if (v2)
    {
      return;
    }

    v18 = MEMORY[0x277D23988];
  }

  v31 = *v18;
  v32 = sub_2146D92F8();
  (*(*(v32 - 8) + 104))(a2, v31, v32);
  v17 = MEMORY[0x277D239A0];
LABEL_27:
  v33 = *v17;
  v34 = sub_2146D9308();
  (*(*(v34 - 8) + 104))(a2, v33, v34);
}

uint64_t sub_21461E2EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E70, &qword_21476E598);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E78, &qword_21476E5A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E80, &qword_21476E5A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E88, &qword_21476E5B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a1 + 9);
  v23 = *(a1 + 10);
  v24 = *(a1 + 11);
  v25 = a1[2];
  v54 = v20;
  v55 = v21;
  v26 = v53;
  result = sub_21461E8D0(&v54, v19);
  if (!v26)
  {
    v56 = v23;
    v53 = v19;
    v47 = v24;
    v48 = v16;
    v49 = v10;
    v46 = v7;
    v50 = 0;
    if (v22 == 13)
    {
      v28 = sub_2146D92B8();
      v29 = v48;
      (*(*(v28 - 8) + 56))(v48, 1, 1, v28);
      v30 = v53;
      v31 = v56;
    }

    else
    {
      v32 = v25;
      v57 = v22;
      StyleSheet.Font.Weight.rawValue.getter();
      sub_2146D92A8();
      v33 = sub_2146D92B8();
      v34 = *(v33 - 8);
      v35 = (*(v34 + 48))(v14, 1, v33);
      v30 = v53;
      v31 = v56;
      if (v35 == 1)
      {
        sub_213FB2DF4(v53, &qword_27C916E88, &qword_21476E5B0);
        sub_213FB2DF4(v14, &qword_27C916E80, &qword_21476E5A8);
        sub_21461F118();
        swift_allocError();
        v37 = 6;
LABEL_13:
        *v36 = v37;
        return swift_willThrow();
      }

      v29 = v48;
      (*(v34 + 32))(v48, v14, v33);
      (*(v34 + 56))(v29, 0, 1, v33);
      v25 = v32;
    }

    v58 = v31;
    v39 = v49;
    v38 = v50;
    sub_21461EDE8(&v58, v49);
    v40 = v51;
    if (v38)
    {
      sub_213FB2DF4(v29, &qword_27C916E80, &qword_21476E5A8);
      return sub_213FB2DF4(v30, &qword_27C916E88, &qword_21476E5B0);
    }

    if (v47 == 2)
    {
      v41 = sub_2146D92D8();
      (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
LABEL_16:

      return sub_2146D92E8();
    }

    sub_2146D92C8();
    v42 = sub_2146D92D8();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v40, 1, v42) != 1)
    {
      v44 = *(v43 + 32);
      v53 = v25;
      v45 = v46;
      v44(v46, v40, v42);
      (*(v43 + 56))(v45, 0, 1, v42);
      goto LABEL_16;
    }

    sub_213FB2DF4(v39, &qword_27C916E78, &qword_21476E5A0);
    sub_213FB2DF4(v29, &qword_27C916E80, &qword_21476E5A8);
    sub_213FB2DF4(v30, &qword_27C916E88, &qword_21476E5B0);
    sub_213FB2DF4(v40, &qword_27C916E70, &qword_21476E598);
    sub_21461F118();
    swift_allocError();
    v37 = 5;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21461E8D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E90, &qword_21476E5B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_2146D9248();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E98, &qword_21476E5C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_2146D9268();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  if (v19 > 0xFB)
  {
    v20 = sub_2146D9278();
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  v22 = *a1;
  if ((v19 & 0x80) != 0)
  {
    v24 = v16;
    sub_2146D9258();
    if ((*(v15 + 48))(v13, 1, v24) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C916E98, &qword_21476E5C0);
      v23 = 1;
      goto LABEL_8;
    }

    v29 = *(v15 + 32);
    v29(v18, v13, v24);
    v29(a2, v18, v24);
    v28 = MEMORY[0x277D23970];
  }

  else
  {
    sub_2146D9238();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_213FB2DF4(v6, &qword_27C916E90, &qword_21476E5B8);
      v23 = 2;
LABEL_8:
      sub_21461F118();
      swift_allocError();
      *v25 = v23;
      return swift_willThrow();
    }

    v26 = *(v8 + 32);
    v26(v10, v6, v7);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916EA0, &qword_21476E5C8) + 48);
    *a2 = v22;
    v26(&a2[v27], v10, v7);
    v28 = MEMORY[0x277D23978];
  }

  v30 = *v28;
  v31 = sub_2146D9278();
  v32 = *(v31 - 8);
  (*(v32 + 104))(a2, v30, v31);
  return (*(v32 + 56))(a2, 0, 1, v31);
}

uint64_t sub_21461EDE8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E78, &qword_21476E5A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  if (*a1 > 2u)
  {
    v11 = sub_2146D9228();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    sub_2146D9218();
    v7 = sub_2146D9228();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_213FB2DF4(v6, &qword_27C916E78, &qword_21476E5A0);
      sub_21461F118();
      swift_allocError();
      *v9 = 6;
      return swift_willThrow();
    }

    else
    {
      (*(v8 + 32))(a2, v6, v7);
      return (*(v8 + 56))(a2, 0, 1, v7);
    }
  }
}

void sub_21461F000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 5)
  {

LABEL_6:

    return;
  }

  if (a5 != 4)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_21461F07C(a1, a2, a3);
}

double sub_21461F07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

void sub_21461F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 5)
  {

LABEL_6:

    return;
  }

  if (a5 != 4)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_21461F108(a1, a2, a3);
}

double sub_21461F108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_21461F118()
{
  result = qword_27C916E68;
  if (!qword_27C916E68)
  {
    result = swift_getWitnessTable(aEam_0, &type metadata for StyleSheetBridgingErrors, v0, v1);
    atomic_store(result, &qword_27C916E68);
  }

  return result;
}

unint64_t sub_21461F180()
{
  result = qword_27C916EA8;
  if (!qword_27C916EA8)
  {
    result = swift_getWitnessTable(byte_21476E62C, &type metadata for StyleSheetBridgingErrors, v0, v1);
    atomic_store(result, &qword_27C916EA8);
  }

  return result;
}

unint64_t sub_21461F1DC@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  v4 = *a3;
  if (a2)
  {
    v5 = *a3;
  }

  else
  {
    v5 = result;
  }

  if (v5 < 3)
  {
    v4 = v5;
  }

  *a4 = v4;
  return result;
}

unint64_t sub_21461F1F8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21461F2F8()
{
  v1 = *(v0 + *(type metadata accessor for EditMessageCommand(0) + 20));

  return v1;
}

uint64_t type metadata accessor for EditMessageCommand(uint64_t a1)
{
  result = qword_280B304B0;
  if (!qword_280B304B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21461F384(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EditMessageCommand(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21461F414@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EditMessageCommand(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_21461F448(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for EditMessageCommand(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_21461F4EC(uint64_t a1, char a2)
{
  result = type metadata accessor for EditMessageCommand(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void sub_21461F57C(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EditMessageCommand(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  sub_2142EE86C(v4, v5, v6, v7, v8, v9, v10);
}

__n128 sub_21461F5DC(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for EditMessageCommand(0) + 32));
  sub_2142EE7AC(*v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  result = v7;
  *(v4 + 2) = v7;
  v4[6] = v3;
  return result;
}

uint64_t sub_21461F6BC(char a1)
{
  result = type metadata accessor for EditMessageCommand(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

void sub_21461F734(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EditMessageCommand(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  sub_2142EE86C(v4, v5, v6, v7, v8, v9, v10);
}

__n128 sub_21461F794(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for EditMessageCommand(0) + 40));
  sub_2142EE7AC(*v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  result = v7;
  *(v4 + 2) = v7;
  v4[6] = v3;
  return result;
}

uint64_t sub_21461F850@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EditMessageCommand(0) + 44);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;

  return sub_214031CA0(v5, v6, v7);
}

__n128 sub_21461F8D4(uint64_t a1)
{
  v10 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + *(type metadata accessor for EditMessageCommand(0) + 44);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);

  sub_214031CE0(v5, v6, v7);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  result = v10;
  *(v4 + 32) = v10;
  *(v4 + 48) = v3;
  return result;
}

unint64_t sub_21461F9B8()
{
  result = qword_27C916EB0;
  if (!qword_27C916EB0)
  {
    result = swift_getWitnessTable(asc_21476E6A0, &type metadata for EditMessageCommand.MessageEditType, v0, v1);
    atomic_store(result, &qword_27C916EB0);
  }

  return result;
}

unint64_t sub_21461FA0C(uint64_t a1)
{
  *(a1 + 8) = sub_2142EE6D4();
  result = sub_2142EE818();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21461FA3C(uint64_t a1)
{
  *(a1 + 8) = sub_21461FAA4(&qword_27C916EB8, byte_2146F9410);
  result = sub_21461FAA4(&qword_27C916EC0, byte_2146F9438);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21461FAA4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for EditMessageCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21461FB10(uint64_t a1)
{
  type metadata accessor for Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BC8, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2F770, &type metadata for MessageContent);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21461FC34()
{
  result = qword_27C916EC8;
  if (!qword_27C916EC8)
  {
    result = swift_getWitnessTable(byte_21476E708, &type metadata for EditMessageCommand.MessageEditType, v0, v1);
    atomic_store(result, &qword_27C916EC8);
  }

  return result;
}

uint64_t sub_21461FD78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  v6 = *(v1 + 34);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FDA4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  *(v1 + 34) = v6;
  return result;
}

uint64_t sub_21461FE04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 65);
  v6 = *(v1 + 66);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FE30(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 65) = v5;
  *(v1 + 66) = v6;
  return result;
}

uint64_t sub_21461FE90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  v6 = *(v1 + 98);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FEBC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 97) = v5;
  *(v1 + 98) = v6;
  return result;
}

uint64_t sub_21461FF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 129);
  v6 = *(v1 + 130);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FF48(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *(v1 + 104) = *a1;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 129) = v5;
  *(v1 + 130) = v6;
  return result;
}

uint64_t sub_21461FFA8()
{
  if ((*(v0 + 33) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214620014()
{
  if ((*(v0 + 65) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214620080()
{
  if ((*(v0 + 97) & 1) == 0)
  {
    return *(v0 + 88);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146200EC()
{
  if ((*(v0 + 129) & 1) == 0)
  {
    return *(v0 + 120);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214620158@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21462025C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 33))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 32);
    *a2 = *(result + 24);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2146202F0(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 33))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 32);
    *a1 = *(v1 + 24);
    *(a1 + 8) = v2 & 1;
    return sub_214620384;
  }

  return result;
}

uint64_t sub_2146203B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  *(a2 + 34) = v8;
  return result;
}

void (*sub_21462042C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  v9 = *(v1 + 34);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2146204CC;
}

void sub_2146204CC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  if (a2)
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
    *(v3 + 34) = v9;
  }

  else
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
    *(v3 + 34) = v9;
  }

  free(v2);
}

uint64_t sub_21462058C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 65))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 64);
    *a2 = *(result + 56);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214620620(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 65))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 64);
    *a1 = *(v1 + 56);
    *(a1 + 8) = v2 & 1;
    return sub_2146206B4;
  }

  return result;
}

uint64_t sub_2146206E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;
  *(a2 + 66) = v8;
  return result;
}

void (*sub_21462075C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  v9 = *(v1 + 66);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2146207FC;
}

void sub_2146207FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  if (a2)
  {

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
    *(v3 + 66) = v9;
  }

  else
  {

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
    *(v3 + 66) = v9;
  }

  free(v2);
}

uint64_t (*sub_2146208E4(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 97))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 96);
    *a1 = *(v1 + 88);
    *(a1 + 8) = v2 & 1;
    return sub_2145F9624;
  }

  return result;
}

void (*sub_214620978(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 97);
  v9 = *(v1 + 98);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2145F976C;
}

uint64_t sub_214620A18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 129))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 128);
    *a2 = *(result + 120);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214620AAC(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 129))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 128);
    *a1 = *(v1 + 120);
    *(a1 + 8) = v2 & 1;
    return sub_214620B40;
  }

  return result;
}

uint64_t sub_214620B74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 104) = v4;
  *(a2 + 112) = v3;
  *(a2 + 120) = v5;
  *(a2 + 128) = v6;
  *(a2 + 129) = v7;
  *(a2 + 130) = v8;
  return result;
}

void (*sub_214620BE8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 129);
  v9 = *(v1 + 130);
  *v4 = *(v1 + 104);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_214620C88;
}

void sub_214620C88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  if (a2)
  {

    *(v3 + 104) = v5;
    *(v3 + 112) = v4;
    *(v3 + 120) = v6;
    *(v3 + 128) = v7;
    *(v3 + 129) = v8;
    *(v3 + 130) = v9;
  }

  else
  {

    *(v3 + 104) = v5;
    *(v3 + 112) = v4;
    *(v3 + 120) = v6;
    *(v3 + 128) = v7;
    *(v3 + 129) = v8;
    *(v3 + 130) = v9;
  }

  free(v2);
}

unint64_t sub_214620D84()
{
  result = qword_27C916ED0;
  if (!qword_27C916ED0)
  {
    result = swift_getWitnessTable(aI_45, &type metadata for CapDiscoveryCharacteristic.DiscoveryMechanism, v0, v1);
    atomic_store(result, &qword_27C916ED0);
  }

  return result;
}

unint64_t sub_214620DD8(uint64_t a1)
{
  *(a1 + 8) = sub_2143042C4();
  result = sub_214304528();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy132_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_214620E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 132))
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

uint64_t sub_214620E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 132) = 1;
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

    *(result + 132) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214620F08()
{
  result = qword_27C916ED8;
  if (!qword_27C916ED8)
  {
    result = swift_getWitnessTable(asc_21476E8C8, &type metadata for CapDiscoveryCharacteristic.DiscoveryMechanism, v0, v1);
    atomic_store(result, &qword_27C916ED8);
  }

  return result;
}

unint64_t sub_214620F5C(uint64_t a1)
{
  *(a1 + 8) = sub_21431E588();
  result = sub_21431DA1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214620F9C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = sub_214069764(&unk_282653A98);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214059810;
  *(v7 + 24) = v8;
  *(v5 + 32) = v7;
  v9 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_21403254C;
  *(v10 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_214042A28(v4, a1 + 40);
}

unint64_t sub_214621140(uint64_t a1)
{
  *(a1 + 8) = sub_214621170();
  result = sub_2146211C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214621170()
{
  result = qword_280B30430;
  if (!qword_280B30430)
  {
    result = swift_getWitnessTable(aI_46, &type metadata for IDSCommandResponse, v0, v1);
    atomic_store(result, &qword_280B30430);
  }

  return result;
}

unint64_t sub_2146211C4()
{
  result = qword_280B30438;
  if (!qword_280B30438)
  {
    result = swift_getWitnessTable(byte_2146FA2E8, &type metadata for IDSCommandResponse, v0, v1);
    atomic_store(result, &qword_280B30438);
  }

  return result;
}

uint64_t sub_214621218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_214621274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t sub_214621304@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214621350(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146213AC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214621428(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214621570(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21462160C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

unint64_t sub_2146216A4(uint64_t a1)
{
  *(a1 + 8) = sub_214307090();
  result = sub_21430756C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146216E4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_214302808;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF28;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF54;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

uint64_t sub_214621A20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214621A6C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214621AC8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214621B44()
{
  v1 = *v0;

  return v1;
}

void sub_214621B74(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_214621BCC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 16);
  v8 = *(v2 + 48);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214621D14(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 32);
    a1[1] = v3;

    return sub_21447D6B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214621DB0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21447D9E0;
}

uint64_t sub_214621E48()
{
  v1 = *v0;

  return v1;
}

void sub_214621E78(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_214621F78()
{
  v1 = *(v0 + 16);
  v16 = *(v1 + 16);
  if (v16)
  {
    v2 = 0;
    v3 = (v1 + 80);
    v4 = MEMORY[0x277D84F90];
    v15 = *(v0 + 16);
    while (v2 < *(v1 + 16))
    {
      v6 = *(v3 - 6);
      v5 = *(v3 - 5);
      v8 = *(v3 - 4);
      v7 = *(v3 - 3);
      v10 = *(v3 - 2);
      v9 = *(v3 - 1);
      v11 = *v3;

      v17 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_214096524(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_214096524((v12 > 1), v13 + 1, 1, v4);
      }

      ++v2;
      *(v4 + 2) = v13 + 1;
      v14 = &v4[56 * v13];
      *(v14 + 4) = v6;
      *(v14 + 5) = v5;
      *(v14 + 6) = v8;
      *(v14 + 7) = v7;
      *(v14 + 8) = v10;
      *(v14 + 9) = v9;
      v14[80] = v17;
      v3 += 56;
      v1 = v15;
      if (v16 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_214622174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146221B0()
{
  result = qword_27C916EE0;
  if (!qword_27C916EE0)
  {
    result = swift_getWitnessTable(aYom_0, &type metadata for SIPResourceLists, v0, v1);
    atomic_store(result, &qword_27C916EE0);
  }

  return result;
}

unint64_t sub_214622204()
{
  result = qword_27C916EE8;
  if (!qword_27C916EE8)
  {
    result = swift_getWitnessTable(byte_2146FCBD8, &type metadata for SIPResourceLists, v0, v1);
    atomic_store(result, &qword_27C916EE8);
  }

  return result;
}

unint64_t sub_2146222A0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21405980C;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21462B1F0;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  sub_214042B80(v4, a1 + 40);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 64;
  *(v9 + 24) = 0;
  *(v8 + 16) = sub_21438F518;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(v6 + 32) = v11;
  sub_214042A28(v6, a1 + 80);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 512;
  *(v15 + 16) = sub_21462B1D8;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  v17 = sub_2142E00AC(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_2143A5730;
  *(v18 + 24) = v19;
  *(v13 + 32) = v18;
  return sub_214042E28(v13, a1 + 120);
}

uint64_t sub_214622584@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146225D0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21462262C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214622678(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146226D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21462272C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214622794@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146227EC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_214622854()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146228D0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21462294C()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 96);

    return v1;
  }

  return result;
}

uint64_t sub_2146229CC()
{
  v1 = *(v0 + 144);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 136);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_214622A54@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214622AA0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214622AFC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214622B48(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214622BA4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214622C20()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214622C9C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214622DE8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 512;
  *(v4 + 16) = sub_21462B1C4;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_214622F28@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214622F74(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214622FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214623028(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214623090@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146230E8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214623150()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146231CC()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_21462324C()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146232D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214623320(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21462337C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2146233F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21462AFB8;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21430CE10;
  *(v6 + 24) = 0;
  *(v5 + 32) = v6;
  v7 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_214042A28(v4, a1 + 40);
}

uint64_t sub_214623568@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146235B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214623610@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214623668(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146236D0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21462374C()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_214623804@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v2;
  v13[0] = *(v1 + 136);
  *(v13 + 9) = *(v1 + 145);
  v3 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v3;
  v4 = *(v1 + 88);
  v12[4] = *(v1 + 72);
  v12[5] = v4;
  v5 = *(v1 + 24);
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  v6 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v6;
  a1[8] = *(v1 + 136);
  *(a1 + 137) = *(v1 + 145);
  v7 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v7;
  v8 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v8;
  v9 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v9;
  return sub_213FB2E54(v12, &v11, &qword_27C908088, &unk_21476EEA0);
}

__n128 sub_2146238C8(uint64_t a1)
{
  v3 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v3;
  v13[0] = *(v1 + 136);
  *(v13 + 9) = *(v1 + 145);
  v4 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v4;
  v5 = *(v1 + 88);
  v12[4] = *(v1 + 72);
  v12[5] = v5;
  v6 = *(v1 + 24);
  v12[0] = *(v1 + 8);
  v12[1] = v6;
  sub_213FB2DF4(v12, &qword_27C908088, &unk_21476EEA0);
  v7 = *(a1 + 112);
  *(v1 + 104) = *(a1 + 96);
  *(v1 + 120) = v7;
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 145) = *(a1 + 137);
  v8 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 56) = v8;
  v9 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v11;
  return result;
}

uint64_t sub_2146239A8@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = v2;
  v4 = *(v1 + 248);
  v12 = *(v1 + 232);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 184);
  v9[0] = *(v1 + 168);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_213FB2E54(v9, &v8, &qword_27C9080A0, &unk_2146F4F10);
}

__n128 sub_214623A10(uint64_t a1)
{
  v3 = *(v1 + 216);
  v10[2] = *(v1 + 200);
  v10[3] = v3;
  v4 = *(v1 + 248);
  v10[4] = *(v1 + 232);
  v10[5] = v4;
  v5 = *(v1 + 184);
  v10[0] = *(v1 + 168);
  v10[1] = v5;
  sub_213FB2DF4(v10, &qword_27C9080A0, &unk_2146F4F10);
  v6 = *(a1 + 48);
  *(v1 + 200) = *(a1 + 32);
  *(v1 + 216) = v6;
  v7 = *(a1 + 80);
  *(v1 + 232) = *(a1 + 64);
  *(v1 + 248) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 168) = *a1;
  *(v1 + 184) = v9;
  return result;
}

uint64_t sub_214623AB8@<X0>(uint64_t a1@<X8>)
{
  v14 = *(v1 + 376);
  v2 = *(v1 + 328);
  v4 = *(v1 + 360);
  v12 = *(v1 + 344);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 280);
  v11[0] = *(v1 + 264);
  v5 = v11[0];
  v7 = *(v1 + 296);
  v8 = *(v1 + 312);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *(a1 + 112) = v14;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_213FB2E54(v11, v10, &qword_27C9080B8, &unk_21476EEB0);
}

__n128 sub_214623B3C(uint64_t a1)
{
  v11 = *(v1 + 376);
  v3 = *(v1 + 344);
  v10[4] = *(v1 + 328);
  v10[5] = v3;
  v10[6] = *(v1 + 360);
  v4 = *(v1 + 280);
  v10[0] = *(v1 + 264);
  v10[1] = v4;
  v5 = *(v1 + 312);
  v10[2] = *(v1 + 296);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C9080B8, &unk_21476EEB0);
  v6 = *(a1 + 80);
  *(v1 + 328) = *(a1 + 64);
  *(v1 + 344) = v6;
  *(v1 + 360) = *(a1 + 96);
  *(v1 + 376) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(v1 + 264) = *a1;
  *(v1 + 280) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 296) = result;
  *(v1 + 312) = v9;
  return result;
}

uint64_t sub_214623BF8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[27];
  v9 = v1[26];
  v10 = v2;
  v11 = v1[28];
  v3 = v11;
  v4 = v1[25];
  v8[0] = v1[24];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C9080D0, &qword_2146F4F20);
}

__n128 sub_214623C54(uint64_t a1)
{
  v3 = v1[27];
  v7[2] = v1[26];
  v7[3] = v3;
  v7[4] = v1[28];
  v4 = v1[25];
  v7[0] = v1[24];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C9080D0, &qword_2146F4F20);
  v5 = *(a1 + 48);
  v1[26] = *(a1 + 32);
  v1[27] = v5;
  v1[28] = *(a1 + 64);
  result = *(a1 + 16);
  v1[24] = *a1;
  v1[25] = result;
  return result;
}

unint64_t sub_214623DDC@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

void sub_214623EC8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214624010(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146240AC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_214624144(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_21462428C(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214624328(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21441238C;
}

void sub_2146243C0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 96), *(v2 + 104));

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214624504(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 96);
  *(v3 + 24) = v5;
  v6 = *(v1 + 104);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DD848;
  }

  return result;
}

void (*sub_2146245DC(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21462467C;
}

uint64_t sub_2146246A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 136);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_21462471C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2146247CC(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_214624898(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 144);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 136);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_214624938;
  }

  return result;
}

uint64_t sub_214624938(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_214624A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_214624ACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 136);
  v9 = *(a2 + 144);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  *(a2 + 144) = v6;
  *(a2 + 152) = v7;
  return result;
}

void (*sub_214624B54(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_214624BF4;
}

void sub_214624BF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 136);
  v10 = *(v3 + 144);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  free(v2);
}

void sub_214624CD4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214624E1C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214624EB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_214624F50(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214625098(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144158A0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214625134(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144158A4;
}

uint64_t sub_214625204@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  a1[1] = v3;
  return sub_213FDCA18(v2, v3);
}

uint64_t sub_214625210(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_213FDC6BC(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t sub_214625264(uint64_t a1)
{
  v2 = sub_2146256D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146252A0(uint64_t a1)
{
  v2 = sub_2146256D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146252DC(uint64_t a1)
{
  v2 = sub_21462567C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214625318(uint64_t a1)
{
  v2 = sub_21462567C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214625354(uint64_t a1)
{
  v2 = sub_214625724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214625390(uint64_t a1)
{
  v2 = sub_214625724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146253CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916EF0, &qword_21476EEC8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916EF8, &qword_21476EED0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F00, &qword_21476EED8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21462567C();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2146256D0();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_214625724();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_21462567C()
{
  result = qword_27C916F08;
  if (!qword_27C916F08)
  {
    result = swift_getWitnessTable(asc_21477044C, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916F08);
  }

  return result;
}

unint64_t sub_2146256D0()
{
  result = qword_27C916F10;
  if (!qword_27C916F10)
  {
    result = swift_getWitnessTable(asc_2147703FC, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.ApprovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916F10);
  }

  return result;
}

unint64_t sub_214625724()
{
  result = qword_27C916F18;
  if (!qword_27C916F18)
  {
    result = swift_getWitnessTable(asc_2147703AC, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.DeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916F18);
  }

  return result;
}

uint64_t sub_214625778@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F20, &qword_21476EEE0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F28, &qword_21476EEE8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F30, &unk_21476EEF0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21462567C();
  v12 = v31;
  sub_2146DAA08();
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
    v16 = sub_2146DA238();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_21439DF70();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2146D9F58();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v22 = &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation;
      sub_2146DA0E8();
      sub_2146D9F28();
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
        sub_2146256D0();
        sub_2146DA0B8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_214625724();
        sub_2146DA0B8();
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

uint64_t sub_214625C64()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214625C98(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

void sub_214625CF0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214625E38(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214625ED4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_214625F6C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146260B0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145DF56C;
  }

  return result;
}

void (*sub_214626188(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145DF570;
}

uint64_t sub_214626228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 104);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 96);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_21462629C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_21462634C(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_214626418(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 104);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 96);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146264B8;
  }

  return result;
}

uint64_t sub_2146264B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2146265F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_21462664C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  return result;
}

void (*sub_2146266D4(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_214626774;
}

void sub_2146267A0(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v17 = *(*a1 + 32);
  v11 = *(v6 + 96);
  v12 = *(v6 + 104);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v12);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v17;
    v14 = v5[2];
    v15 = v5[3];

    a3(v14, v15);
  }

  else
  {

    a3(v11, v12);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v17;
  }

  free(v5);
}

void sub_2146268E4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214626A2C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214626AC8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_214626B98(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_21430D49C(v2, v3, v4, v5, v6);
}

__n128 sub_214626BB4(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_21430D4FC(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  return result;
}

uint64_t sub_214626C38(uint64_t a1)
{
  v2 = sub_21462717C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214626C74(uint64_t a1)
{
  v2 = sub_21462717C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_214626CB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465696E6564 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6465766F72707061 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_214626D88(uint64_t a1)
{
  v2 = sub_214627128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214626DC4(uint64_t a1)
{
  v2 = sub_214627128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214626E00(uint64_t a1)
{
  v2 = sub_2146271D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214626E3C(uint64_t a1)
{
  v2 = sub_2146271D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214626E78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F38, &qword_21476EF00);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F40, &qword_21476EF08);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F48, &qword_21476EF10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214627128();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_21462717C();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2146271D0();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_214627128()
{
  result = qword_27C916F50;
  if (!qword_27C916F50)
  {
    result = swift_getWitnessTable(asc_21477035C, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916F50);
  }

  return result;
}

unint64_t sub_21462717C()
{
  result = qword_27C916F58;
  if (!qword_27C916F58)
  {
    result = swift_getWitnessTable(byte_21477030C, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.ApprovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916F58);
  }

  return result;
}

unint64_t sub_2146271D0()
{
  result = qword_27C916F60;
  if (!qword_27C916F60)
  {
    result = swift_getWitnessTable(aM_125, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.DeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916F60);
  }

  return result;
}

uint64_t sub_214627254@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F68, &qword_21476EF18);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F70, &qword_21476EF20);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F78, &unk_21476EF28);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214627128();
  v12 = v31;
  sub_2146DAA08();
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
    v16 = sub_2146DA238();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_21439DF70();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2146D9F58();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v22 = &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation;
      sub_2146DA0E8();
      sub_2146D9F28();
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
        sub_21462717C();
        sub_2146DA0B8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2146271D0();
        sub_2146DA0B8();
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

uint64_t sub_214627740()
{
  v1 = *v0;

  return v1;
}

void sub_214627770(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_21462781C()
{
  v1 = *(v0 + 24);
  sub_213FDCA18(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_214627850(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_214627C74()
{
  v1 = 0x696C616974696E69;
  v2 = 0x65527265626D656DLL;
  if (*v0 != 2)
  {
    v2 = 0x654C7265626D656DLL;
  }

  if (*v0)
  {
    v1 = 0x64417265626D656DLL;
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

uint64_t sub_214627D08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21462AFF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214627D30(uint64_t a1)
{
  v2 = sub_2146283C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627D6C(uint64_t a1)
{
  v2 = sub_2146283C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627DA8(uint64_t a1)
{
  v2 = sub_214628510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627DE4(uint64_t a1)
{
  v2 = sub_214628510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627E20(uint64_t a1)
{
  v2 = sub_2146284BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627E5C(uint64_t a1)
{
  v2 = sub_2146284BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627E98(uint64_t a1)
{
  v2 = sub_214628414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627ED4(uint64_t a1)
{
  v2 = sub_214628414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627F10(uint64_t a1)
{
  v2 = sub_214628468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627F4C(uint64_t a1)
{
  v2 = sub_214628468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627F88(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F80, &qword_21476EF38);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F88, &qword_21476EF40);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F90, &qword_21476EF48);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F98, &qword_21476EF50);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FA0, &qword_21476EF58);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146283C0();
  sub_2146DAA28();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_214628468();
      v18 = v27;
      sub_2146DA288();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_214628414();
      v18 = v30;
      sub_2146DA288();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_2146284BC();
    v18 = v24;
    sub_2146DA288();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_214628510();
  sub_2146DA288();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_2146283C0()
{
  result = qword_27C916FA8;
  if (!qword_27C916FA8)
  {
    result = swift_getWitnessTable(byte_21477026C, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916FA8);
  }

  return result;
}

unint64_t sub_214628414()
{
  result = qword_27C916FB0;
  if (!qword_27C916FB0)
  {
    result = swift_getWitnessTable(asc_21477021C, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberLeftCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916FB0);
  }

  return result;
}

unint64_t sub_214628468()
{
  result = qword_27C916FB8;
  if (!qword_27C916FB8)
  {
    result = swift_getWitnessTable(asc_2147701CC, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberRemovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916FB8);
  }

  return result;
}

unint64_t sub_2146284BC()
{
  result = qword_27C916FC0;
  if (!qword_27C916FC0)
  {
    result = swift_getWitnessTable(byte_21477017C, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberAddedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916FC0);
  }

  return result;
}

unint64_t sub_214628510()
{
  result = qword_27C916FC8;
  if (!qword_27C916FC8)
  {
    result = swift_getWitnessTable(byte_21477012C, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.InitializeCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916FC8);
  }

  return result;
}

uint64_t sub_214628590()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2146285D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FD0, &qword_21476EF60);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FD8, &qword_21476EF68);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FE0, &qword_21476EF70);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FE8, &qword_21476EF78);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FF0, &qword_21476EF80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2146283C0();
  v15 = v46;
  sub_2146DAA08();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_2146DA238();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_21439DF6C();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_2146D9F58();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v28 = &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_2146284BC();
        v32 = v35;
        sub_2146DA0B8();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_214628510();
        v25 = v35;
        sub_2146DA0B8();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_214628468();
      v31 = v35;
      sub_2146DA0B8();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_214628414();
      v33 = v35;
      sub_2146DA0B8();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

double sub_214628C84()
{
  type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);

  return result;
}

void sub_214628CD8(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_214628D80@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
  v4 = v3[3];
  v11 = v3[2];
  v12[0] = v4;
  *(v12 + 9) = *(v3 + 57);
  v5 = *(v12 + 9);
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  *(a1 + 57) = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_21430DEC4(v10, &v9);
}

__n128 sub_214628E08(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_21430DF20(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_214628F2C(char a1)
{
  result = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void sub_214628FA4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146290EC(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214629188(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

void sub_214629220(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214629364(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F652C;
  }

  return result;
}

void (*sub_21462943C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F65D0;
}

unint64_t sub_2146294E0()
{
  result = qword_27C916FF8;
  if (!qword_27C916FF8)
  {
    result = swift_getWitnessTable(aA_46, &type metadata for IDSNearbySessionMessage.TransportItem, v0, v1);
    atomic_store(result, &qword_27C916FF8);
  }

  return result;
}

unint64_t sub_214629590()
{
  result = qword_27C917000;
  if (!qword_27C917000)
  {
    result = swift_getWitnessTable(byte_21476F0B0, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation, v0, v1);
    atomic_store(result, &qword_27C917000);
  }

  return result;
}

unint64_t sub_214629698()
{
  result = qword_27C917008;
  if (!qword_27C917008)
  {
    result = swift_getWitnessTable(byte_21476F1D8, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation, v0, v1);
    atomic_store(result, &qword_27C917008);
  }

  return result;
}

unint64_t sub_214629774()
{
  result = qword_27C917010;
  if (!qword_27C917010)
  {
    result = swift_getWitnessTable(aM_126, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event, v0, v1);
    atomic_store(result, &qword_27C917010);
  }

  return result;
}

uint64_t sub_2146297F4(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90A4C0, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization, aY_84);
  result = sub_214629878(&qword_27C90A500, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization, byte_2146FEED8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629878(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2146298C0(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90A4D0, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved, asc_2146FEF00);
  result = sub_214629878(&qword_27C90A510, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved, byte_2146FEF28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629944(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90A4E0, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft, byte_2146FEF50);
  result = sub_214629878(&qword_27C90A520, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft, aA_47);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146299F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629A30(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C9080F0, type metadata accessor for IDSNearbySessionMessage.GroupMessage, byte_2146FEE60);
  result = sub_214629878(&qword_27C908150, type metadata accessor for IDSNearbySessionMessage.GroupMessage, aQ_40);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214629AB4(uint64_t a1)
{
  *(a1 + 8) = sub_214629878(&qword_27C90CA38, type metadata accessor for IDSNearbySessionMessage, asc_2146FB300);
  result = sub_214629878(&qword_27C90C958, type metadata accessor for IDSNearbySessionMessage, byte_2146FB328);
  *(a1 + 16) = result;
  return result;
}

void sub_214629B60(uint64_t a1)
{
  sub_21462A29C(319, &qword_27C917028, &type metadata for IDSNearbySessionMessage.ConnectionRequest, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21462A29C(319, &qword_27C917030, &type metadata for IDSNearbySessionMessage.ConnectionResponse, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21462A29C(319, &qword_27C917038, &type metadata for IDSNearbySessionMessage.JoinRequest, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21462A29C(319, &qword_27C917040, &type metadata for IDSNearbySessionMessage.JoinResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21462A168(319, &qword_27C917048, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_214629CF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_214629D40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_214629E14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_214629E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor23IDSNearbySessionMessageV12JoinResponseV15ApprovalContentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214629EE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_214629F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214629FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_214629FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21462A068(uint64_t a1)
{
  sub_21462A168(319, &qword_27C917060, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  if (v1 <= 0x3F)
  {
    sub_21462A168(319, &qword_27C917068, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    if (v2 <= 0x3F)
    {
      sub_21462A168(319, &qword_27C917070, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21462A168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21462A1F4(uint64_t a1)
{
  sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    sub_21462A29C(319, &qword_27C917088, &type metadata for IDSNearbySessionMessage.GroupMessage.Member, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21462A29C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_120Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
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

uint64_t __swift_store_extra_inhabitant_index_121Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
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

uint64_t sub_21462A4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8B88();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21462A5FC()
{
  result = qword_27C9170B0;
  if (!qword_27C9170B0)
  {
    result = swift_getWitnessTable(byte_21476FDB4, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170B0);
  }

  return result;
}

unint64_t sub_21462A654()
{
  result = qword_27C9170B8;
  if (!qword_27C9170B8)
  {
    result = swift_getWitnessTable(byte_21476FF0C, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170B8);
  }

  return result;
}

unint64_t sub_21462A6AC()
{
  result = qword_27C9170C0;
  if (!qword_27C9170C0)
  {
    result = swift_getWitnessTable(aS_8, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170C0);
  }

  return result;
}

unint64_t sub_21462A704()
{
  result = qword_27C9170C8;
  if (!qword_27C9170C8)
  {
    result = swift_getWitnessTable(asc_214770024, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.InitializeCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170C8);
  }

  return result;
}

unint64_t sub_21462A75C()
{
  result = qword_27C9170D0;
  if (!qword_27C9170D0)
  {
    result = swift_getWitnessTable(byte_21477004C, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.InitializeCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170D0);
  }

  return result;
}

unint64_t sub_21462A7B4()
{
  result = qword_27C9170D8;
  if (!qword_27C9170D8)
  {
    result = swift_getWitnessTable(byte_21476FFD4, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberAddedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170D8);
  }

  return result;
}

unint64_t sub_21462A80C()
{
  result = qword_27C9170E0;
  if (!qword_27C9170E0)
  {
    result = swift_getWitnessTable(asc_21476FFFC, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberAddedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170E0);
  }

  return result;
}

unint64_t sub_21462A864()
{
  result = qword_27C9170E8;
  if (!qword_27C9170E8)
  {
    result = swift_getWitnessTable(byte_21476FF84, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberRemovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170E8);
  }

  return result;
}

unint64_t sub_21462A8BC()
{
  result = qword_27C9170F0;
  if (!qword_27C9170F0)
  {
    result = swift_getWitnessTable(asc_21476FFAC, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberRemovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170F0);
  }

  return result;
}

unint64_t sub_21462A914()
{
  result = qword_27C9170F8;
  if (!qword_27C9170F8)
  {
    result = swift_getWitnessTable(aM_127, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberLeftCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9170F8);
  }

  return result;
}

unint64_t sub_21462A96C()
{
  result = qword_27C917100;
  if (!qword_27C917100)
  {
    result = swift_getWitnessTable(asc_21476FF5C, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.MemberLeftCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917100);
  }

  return result;
}

unint64_t sub_21462A9C4()
{
  result = qword_27C917108;
  if (!qword_27C917108)
  {
    result = swift_getWitnessTable(asc_214770074, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917108);
  }

  return result;
}

unint64_t sub_21462AA1C()
{
  result = qword_27C917110;
  if (!qword_27C917110)
  {
    result = swift_getWitnessTable(asc_21477009C, &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917110);
  }

  return result;
}

unint64_t sub_21462AA74()
{
  result = qword_27C917118;
  if (!qword_27C917118)
  {
    result = swift_getWitnessTable(aU_101, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.DeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917118);
  }

  return result;
}

unint64_t sub_21462AACC()
{
  result = qword_27C917120;
  if (!qword_27C917120)
  {
    result = swift_getWitnessTable(byte_21476FE54, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.DeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917120);
  }

  return result;
}

unint64_t sub_21462AB24()
{
  result = qword_27C917128;
  if (!qword_27C917128)
  {
    result = swift_getWitnessTable(aU_102, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.ApprovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917128);
  }

  return result;
}

unint64_t sub_21462AB7C()
{
  result = qword_27C917130;
  if (!qword_27C917130)
  {
    result = swift_getWitnessTable(asc_21476FE04, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.ApprovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917130);
  }

  return result;
}

unint64_t sub_21462ABD4()
{
  result = qword_27C917138;
  if (!qword_27C917138)
  {
    result = swift_getWitnessTable(asc_21476FE7C, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917138);
  }

  return result;
}

unint64_t sub_21462AC2C()
{
  result = qword_27C917140;
  if (!qword_27C917140)
  {
    result = swift_getWitnessTable(a5_43, &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917140);
  }

  return result;
}

unint64_t sub_21462AC84()
{
  result = qword_27C917148;
  if (!qword_27C917148)
  {
    result = swift_getWitnessTable(asc_21476FCD4, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.DeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917148);
  }

  return result;
}

unint64_t sub_21462ACDC()
{
  result = qword_27C917150;
  if (!qword_27C917150)
  {
    result = swift_getWitnessTable(asc_21476FCFC, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.DeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917150);
  }

  return result;
}

unint64_t sub_21462AD34()
{
  result = qword_27C917158;
  if (!qword_27C917158)
  {
    result = swift_getWitnessTable(byte_21476FC84, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.ApprovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917158);
  }

  return result;
}

unint64_t sub_21462AD8C()
{
  result = qword_27C917160;
  if (!qword_27C917160)
  {
    result = swift_getWitnessTable(asc_21476FCAC, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.ApprovedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C917160);
  }

  return result;
}

unint64_t sub_21462ADE4()
{
  result = qword_27C917168;
  if (!qword_27C917168)
  {
    result = swift_getWitnessTable(asc_21476FD24, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917168);
  }

  return result;
}

unint64_t sub_21462AE3C()
{
  result = qword_27C917170;
  if (!qword_27C917170)
  {
    result = swift_getWitnessTable(byte_21476FD4C, &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917170);
  }

  return result;
}

uint64_t sub_21462AE90(uint64_t *a1, __int128 *a2, char a3)
{
  v3 = *a1;
  v7 = *a2;
  v4 = *(v3 + 16);
  v6 = a3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_21462AEE4(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 1;
  }

  else
  {
    v5 = *a3;
    v10[0] = *a1;
    v6 = v10[0];
    v10[1] = v3;
    MEMORY[0x28223BE20](a1);
    v8[2] = v10;
    v9 = 2;
    sub_21402D9F8(v10[0], v3);
    v4 = sub_2140479E4(sub_214047400, v8, v5);
    sub_213FDC6BC(v6, v3);
  }

  return v4 & 1;
}

uint64_t sub_21462AFF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C616974696E69 && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64417265626D656DLL && a2 == 0xEB00000000646564 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65527265626D656DLL && a2 == 0xED00006465766F6DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C7265626D656DLL && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_21462B170()
{
  result = qword_27C917178;
  if (!qword_27C917178)
  {
    result = swift_getWitnessTable(byte_21476EFF0, &type metadata for IDSNearbySessionMessage.TransportItem, v0, v1);
    atomic_store(result, &qword_27C917178);
  }

  return result;
}

uint64_t sub_21462B1FC(uint64_t a1, unint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    v5 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

  v6 = a4;
  v8 = (a2 >> 62);
  v9 = __OFSUB__(HIDWORD(a1), a1);
  v47 = v9;
  v46 = HIDWORD(a1) - a1;
  v49 = BYTE6(a2);
  v10 = 32;
  v11 = a2;
  v44 = a2 >> 62;
  while (1)
  {
    v17 = *(a5 + v10);
    v18 = *(v17 + 16);
    v19 = v6 + v18;
    if (__OFADD__(v6, v18))
    {
      break;
    }

    if (v8 <= 1)
    {
      v20 = v49;
      if (v8)
      {
        v20 = v46;
        if (v47)
        {
          goto LABEL_58;
        }
      }

LABEL_15:
      if (v20 < v19)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (v8 == 2)
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v23)
      {
        goto LABEL_59;
      }

      goto LABEL_15;
    }

    if (v19 >= 1)
    {
LABEL_18:
      v24 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v25 = qword_280B35410;
      if (!os_log_type_enabled(qword_280B35410, v24))
      {
        goto LABEL_7;
      }

      sub_21402D9F8(a1, v11);
      sub_21402D9F8(a1, v11);

      v26 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v26 = 136446722;

      v27 = 0xED00007874612E65;
      v28 = 0x6C7070612E6D6F63;
      switch(a3)
      {
        case 1:
          v28 = 0x612E63696C627570;
          v27 = 0xEB00000000696376;
          break;
        case 2:
          v28 = 0x682E63696C627570;
          v27 = 0xEB00000000636965;
          break;
        case 3:
          v27 = 0xEB00000000316673;
          goto LABEL_39;
        case 4:
          v28 = 0x6D2E63696C627570;
          v27 = 0xEB00000000316669;
          break;
        case 5:
          v27 = 0xEB00000000666976;
          v28 = 0x612E63696C627570;
          break;
        case 6:
          v28 = 0x612E63696C627570;
          v27 = 0xEB00000000736976;
          break;
        case 7:
          v27 = 0xEB00000000666965;
          v28 = 0x682E63696C627570;
          break;
        case 8:
          v28 = 0xD000000000000010;
          v27 = 0x8000000214788090;
          break;
        case 9:
          v28 = 0x6A2E63696C627570;
          v27 = 0xEF7478652D676570;
          break;
        case 10:
          v27 = 0xEA00000000006F70;
LABEL_39:
          v28 = 0x6D2E63696C627570;
          break;
        case 11:
          v28 = 0x6A2E63696C627570;
          v27 = 0xEB00000000676570;
          break;
        case 12:
          v27 = 0xEA0000000000676ELL;
          v28 = 0x702E63696C627570;
          break;
        case 13:
          v28 = 0x772E63696C627570;
          v27 = 0xEB00000000706265;
          break;
        case 14:
          v28 = 0x742E63696C627570;
          v27 = 0xEB00000000666669;
          break;
        case 15:
          v27 = 0xEA0000000000706DLL;
          v28 = 0x622E63696C627570;
          break;
        case 16:
          v28 = 0x672E63696C627570;
          v27 = 0xEA00000000006669;
          break;
        case 17:
          v28 = 0xD000000000000019;
          v27 = 0x8000000214788110;
          break;
        case 18:
          v28 = 0xD000000000000018;
          v27 = 0x8000000214788130;
          break;
        case 19:
          v27 = 0xE700000000000000;
          v28 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v29 = sub_2144AEA38(v28, v27, &v54);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2050;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v35 = *(a1 + 16);
          v34 = *(a1 + 24);
          sub_213FB54FC(a1, a2);
          v23 = __OFSUB__(v34, v35);
          v32 = v34 - v35;
          if (v23)
          {
            goto LABEL_60;
          }

          v8 = v25;
          v31 = v24;
          v6 = a4;
          v33 = a2;
          goto LABEL_51;
        }

        v8 = v25;
        v31 = v24;
        v32 = 0;
        v6 = a4;
      }

      else
      {
        v30 = v8;
        v8 = v25;
        v31 = v24;
        v32 = v49;
        v6 = a4;
        if (v30)
        {
          v33 = a2;
          sub_213FB54FC(a1, a2);
          v32 = v46;
          if (v47)
          {
            goto LABEL_61;
          }

          goto LABEL_51;
        }
      }

      v33 = a2;
      sub_213FB54FC(a1, a2);
LABEL_51:
      *(v26 + 14) = v32;
      sub_213FB54FC(a1, v33);
      *(v26 + 22) = 2050;
      *(v26 + 24) = v19;
      _os_log_impl(&dword_213FAF000, v8, v31, "%{public}s header validation failed because the data count was %{public}ld and we expected it to be >= %{public}ld", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x216056AC0](v48, -1, -1);
      MEMORY[0x216056AC0](v26, -1, -1);
      v11 = v33;
      LODWORD(v8) = v44;
      goto LABEL_7;
    }

LABEL_6:
    sub_21402D9F8(a1, v11);

    sub_21462C008(v19, a1, v11, v53);
    sub_2143BD2CC(v6, v53[0], v53[1], &v54);
    v12 = v54;
    v13 = v55;
    v14 = sub_21462C150(v17, v54, v55);
    v15 = v12;
    v16 = v13;
    v6 = a4;
    v11 = a2;
    sub_213FB54FC(v15, v16);

    if (v14)
    {
      return 1;
    }

LABEL_7:
    v10 += 8;
    if (!--v5)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_53:
  v36 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v5))
  {

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446210;
    LOBYTE(v53[0]) = a3;
    v39 = ImageHeader.rawValue.getter();
    v41 = v40;

    v42 = sub_2144AEA38(v39, v41, &v54);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_213FAF000, v36, v5, "%{public}s header validation failed because neither headerBytes was empty", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216056AC0](v38, -1, -1);
    MEMORY[0x216056AC0](v37, -1, -1);
  }

  return 0;
}

uint64_t sub_21462B924(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    LOBYTE(v7) = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v5 = a2;
  v7 = a2 >> 62;
  v8 = __OFSUB__(HIDWORD(a1), a1);
  v39 = v8;
  v38 = HIDWORD(a1) - a1;
  v41 = BYTE6(a2);
  for (i = 32; ; i += 8)
  {
    v14 = *(a4 + i);
    v15 = *(v14 + 16);
    if (v7 <= 1)
    {
      v16 = v41;
      if (v7)
      {
        v16 = v38;
        if (v39)
        {
          goto LABEL_57;
        }
      }

LABEL_14:
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }

    if (v7 == 2)
    {
      break;
    }

    if (v15)
    {
LABEL_17:
      v20 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v21 = qword_280B35410;
      if (!os_log_type_enabled(qword_280B35410, v20))
      {
        goto LABEL_7;
      }

      sub_21402D9F8(a1, v5);
      sub_21402D9F8(a1, v5);

      v22 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v22 = 136446722;

      v23 = 0xED00007874612E65;
      v24 = 0x6C7070612E6D6F63;
      switch(a3)
      {
        case 1:
          v24 = 0x612E63696C627570;
          v23 = 0xEB00000000696376;
          break;
        case 2:
          v24 = 0x682E63696C627570;
          v23 = 0xEB00000000636965;
          break;
        case 3:
          v23 = 0xEB00000000316673;
          goto LABEL_38;
        case 4:
          v24 = 0x6D2E63696C627570;
          v23 = 0xEB00000000316669;
          break;
        case 5:
          v23 = 0xEB00000000666976;
          v24 = 0x612E63696C627570;
          break;
        case 6:
          v24 = 0x612E63696C627570;
          v23 = 0xEB00000000736976;
          break;
        case 7:
          v23 = 0xEB00000000666965;
          v24 = 0x682E63696C627570;
          break;
        case 8:
          v24 = 0xD000000000000010;
          v23 = 0x8000000214788090;
          break;
        case 9:
          v24 = 0x6A2E63696C627570;
          v23 = 0xEF7478652D676570;
          break;
        case 10:
          v23 = 0xEA00000000006F70;
LABEL_38:
          v24 = 0x6D2E63696C627570;
          break;
        case 11:
          v24 = 0x6A2E63696C627570;
          v23 = 0xEB00000000676570;
          break;
        case 12:
          v23 = 0xEA0000000000676ELL;
          v24 = 0x702E63696C627570;
          break;
        case 13:
          v24 = 0x772E63696C627570;
          v23 = 0xEB00000000706265;
          break;
        case 14:
          v24 = 0x742E63696C627570;
          v23 = 0xEB00000000666669;
          break;
        case 15:
          v23 = 0xEA0000000000706DLL;
          v24 = 0x622E63696C627570;
          break;
        case 16:
          v24 = 0x672E63696C627570;
          v23 = 0xEA00000000006669;
          break;
        case 17:
          v24 = 0xD000000000000019;
          v23 = 0x8000000214788110;
          break;
        case 18:
          v24 = 0xD000000000000018;
          v23 = 0x8000000214788130;
          break;
        case 19:
          v23 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v25 = sub_2144AEA38(v24, v23, &v45);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2050;
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          v26 = 0;
          v5 = a2;
          goto LABEL_49;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        sub_213FB54FC(a1, a2);
        v19 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v19)
        {
          goto LABEL_59;
        }

        v5 = a2;
      }

      else
      {
        v26 = v41;
        v5 = a2;
        if (v7)
        {
          sub_213FB54FC(a1, a2);
          v26 = v38;
          if (v39)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

LABEL_49:
        sub_213FB54FC(a1, v5);
      }

LABEL_50:
      *(v22 + 14) = v26;
      sub_213FB54FC(a1, v5);
      *(v22 + 22) = 2050;
      *(v22 + 24) = v15;
      _os_log_impl(&dword_213FAF000, v21, v20, "%{public}s header validation failed because the data count was %{public}ld and we expected it to be >= %{public}ld", v22, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x216056AC0](v40, -1, -1);
      MEMORY[0x216056AC0](v22, -1, -1);
      goto LABEL_7;
    }

LABEL_6:
    sub_21402D9F8(a1, v5);

    sub_21462C008(v15, a1, v5, v44);
    sub_2143BD2CC(0, v44[0], v44[1], &v45);
    v10 = v45;
    v11 = v46;
    v12 = sub_21462C150(v14, v45, v46);
    v13 = v11;
    v5 = a2;
    sub_213FB54FC(v10, v13);

    if (v12)
    {
      return 1;
    }

LABEL_7:
    if (!--v4)
    {
      return 0;
    }
  }

  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (!v19)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  swift_once();
LABEL_52:
  v29 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v7))
  {

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136446210;
    LOBYTE(v44[0]) = a3;
    v32 = ImageHeader.rawValue.getter();
    v34 = v33;

    v35 = sub_2144AEA38(v32, v34, &v45);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_213FAF000, v29, v7, "%{public}s header validation failed because neither headerBytes was empty", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x216056AC0](v31, -1, -1);
    MEMORY[0x216056AC0](v30, -1, -1);
  }

  return 0;
}

uint64_t sub_21462C008@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2143BDD00(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2143BDC9C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_2146D8A18();
    v15 = v14;
    result = sub_213FB54FC(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21462C150(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2146D8A88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21402D9F8(a2, a3);
  sub_2146D8A98();
  v10 = *(a1 + 16);
  sub_21462C2D4();
  sub_2146D9DA8();
  if (v10)
  {
    v11 = (a1 + 32);
    while (1)
    {
      v12 = 0;
      if (v16)
      {
        break;
      }

      v13 = *v11++;
      if (v15[14] != v13)
      {
        break;
      }

      sub_2146D9DA8();
      if (!--v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = v16;
  }

  (*(v7 + 8))(v9, v6);
  return v12;
}

unint64_t sub_21462C2D4()
{
  result = qword_27C917180;
  if (!qword_27C917180)
  {
    v3 = sub_2146D8A88();
    result = swift_getWitnessTable(MEMORY[0x277CC92E8], v3, v0, v1);
    atomic_store(result, &qword_27C917180);
  }

  return result;
}

uint64_t sub_21462C368@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for RepositionStickerCommand(0) + 20);
  memcpy(__dst, (v1 + v3), 0x139uLL);
  memcpy(a1, (v1 + v3), 0x139uLL);
  return sub_2142E371C(__dst, &v5);
}

uint64_t type metadata accessor for RepositionStickerCommand(uint64_t a1)
{
  result = qword_280B301B0;
  if (!qword_280B301B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_21462C41C(const void *a1)
{
  v3 = *(type metadata accessor for RepositionStickerCommand(0) + 20);
  memcpy(v5, (v1 + v3), 0x139uLL);
  sub_2142E34C8(v5);
  return memcpy((v1 + v3), a1, 0x139uLL);
}

uint64_t sub_21462C4C8()
{
  v1 = *(v0 + *(type metadata accessor for RepositionStickerCommand(0) + 24));

  return v1;
}

void sub_21462C508(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RepositionStickerCommand(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21462C598(uint64_t a1)
{
  *(a1 + 8) = sub_21462C600(&qword_27C917188, byte_2146FBE40);
  result = sub_21462C600(&qword_27C917190, aQMts);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21462C600(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RepositionStickerCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21462C66C(uint64_t a1)
{
  result = type metadata accessor for Metadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21462C6F0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if ((result + 1) < 3)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_21462C718()
{
  result = qword_27C917198;
  if (!qword_27C917198)
  {
    result = swift_getWitnessTable(byte_214770540, &type metadata for MBDActionSettingsType, v0, v1);
    atomic_store(result, &qword_27C917198);
  }

  return result;
}

uint64_t sub_21462C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21462C8D8()
{
  result = qword_27C9171A0;
  if (!qword_27C9171A0)
  {
    result = swift_getWitnessTable(byte_2147705A8, &type metadata for MBDActionSettingsType, v0, v1);
    atomic_store(result, &qword_27C9171A0);
  }

  return result;
}

unint64_t sub_21462C92C(uint64_t a1)
{
  *(a1 + 8) = sub_2142FFB1C();
  result = sub_2142FFCCC();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16MBDRichCardMediaVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21462C97C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 409))
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

uint64_t sub_21462C9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 408) = 0;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 409) = 1;
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

    *(result + 409) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21462CA80@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21462CBCC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 2000;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t SMSMessage.spamCategory.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t SMSMessage.carrierNameSupportsReportJunk.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SMSMessage.carrierNameSupportsReportJunk.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SMSMessage.version.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void SMSMessage.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t SMSMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SMSMessage(0) + 40);

  return sub_2144716D8(v3, a1);
}

uint64_t type metadata accessor for SMSMessage(uint64_t a1)
{
  result = qword_280B30B10;
  if (!qword_280B30B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SMSMessage.date.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SMSMessage(0) + 40);

  return sub_2140924F0(a1, v3);
}

uint64_t SMSMessage.sender.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 44));

  return v1;
}

void SMSMessage.sender.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.iMessageCapability.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SMSMessage(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SMSMessage.serviceCenter.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 52));

  return v1;
}

void SMSMessage.serviceCenter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 52));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.originatedDeviceNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 56));

  return v1;
}

void SMSMessage.originatedDeviceNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 56));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.originatedDeviceEmail.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 60));

  return v1;
}

void SMSMessage.originatedDeviceEmail.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.originatedDeviceSIM.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 64));

  return v1;
}

void SMSMessage.originatedDeviceSIM.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 64));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 68));

  return v1;
}

void SMSMessage.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 68));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.contentType.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 72));

  return v1;
}

void SMSMessage.contentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 72));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.replaceMessage.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SMSMessage(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SMSMessage.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 80));

  return v1;
}

void SMSMessage.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 80));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.GUID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 84));

  return v1;
}

void SMSMessage.GUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 84));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.fallbackHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 88));

  return v1;
}

void SMSMessage.fallbackHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 88));

  *v5 = a1;
  v5[1] = a2;
}

double SMSMessage.items.getter()
{
  type metadata accessor for SMSMessage(0);

  return result;
}

void SMSMessage.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SMSMessage(0) + 92);

  *(v1 + v3) = a1;
}

uint64_t SMSMessage.trackMessage.setter(char a1)
{
  result = type metadata accessor for SMSMessage(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t SMSMessage.sendEnabled.setter(char a1)
{
  result = type metadata accessor for SMSMessage(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t SMSMessage.foundAppleGUID.setter(char a1)
{
  result = type metadata accessor for SMSMessage(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t SMSMessage.groupID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 108));

  return v1;
}

void SMSMessage.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 108));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.originalGroupID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 112));

  return v1;
}

void SMSMessage.originalGroupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 112));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 116));

  return v1;
}

void SMSMessage.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 116));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.originatedDeviceUniqueID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SMSMessage(0) + 120));

  return v1;
}

void SMSMessage.originatedDeviceUniqueID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SMSMessage(0) + 120));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SMSMessage.smsFilteringSettings.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SMSMessage(0) + 124));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_213FDC9D0(v4, v5);
}

__n128 SMSMessage.smsFilteringSettings.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for SMSMessage(0) + 124));
  sub_213FDC6D0(*v3, v3[1]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

BlastDoor::SMSMessage::SMSType_optional __swiftcall SMSMessage.SMSType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BlastDoor::SMSMessage::FilterSubCategoryType_optional __swiftcall SMSMessage.FilterSubCategoryType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SMSMessage.SMSFilteringSettings.filterExtensionName.getter()
{
  v1 = *v0;

  return v1;
}

void SMSMessage.SMSFilteringSettings.filterExtensionName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SMSMessage.debugDescription.getter()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x617373654D534D53, 0xEA00000000006567);
  MEMORY[0x2160545D0](0x534D4D2F534D5320, 0xEA0000000000203ALL);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0x203A4449554720, 0xE700000000000000);
  type metadata accessor for SMSMessage(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v0 = sub_2146D9608();
  MEMORY[0x2160545D0](v0);

  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0;
}

unint64_t sub_21462E438()
{
  result = qword_27C9171A8;
  if (!qword_27C9171A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSMessage.SMSType, &type metadata for SMSMessage.SMSType, v0, v1);
    atomic_store(result, &qword_27C9171A8);
  }

  return result;
}

unint64_t sub_21462E4BC()
{
  result = qword_27C9171B0;
  if (!qword_27C9171B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSMessage.FilterSubCategoryType, &type metadata for SMSMessage.FilterSubCategoryType, v0, v1);
    atomic_store(result, &qword_27C9171B0);
  }

  return result;
}

uint64_t sub_21462E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21462E5A4(uint64_t a1)
{
  *(a1 + 8) = sub_21462E60C(&qword_280B30B20, protocol conformance descriptor for SMSMessage);
  result = sub_21462E60C(&qword_280B30B28, protocol conformance descriptor for SMSMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21462E60C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for SMSMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21462E67C(uint64_t a1)
{
  sub_21462E910(319, &qword_280B34BC8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21462E910(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21462E8AC(319);
      if (v3 <= 0x3F)
      {
        sub_21409320C(319);
        if (v4 <= 0x3F)
        {
          sub_21462E910(319, &qword_280B2E3D8, &type metadata for SMSCTPart, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_21462E910(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_21462E910(319, &qword_280B2FC40, &type metadata for SMSMessage.SMSFilteringSettings, MEMORY[0x277D83D88]);
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

void sub_21462E8AC(uint64_t a1)
{
  if (!qword_280B2E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B2E3C0);
    }
  }
}

void sub_21462E910(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21462E990()
{
  result = qword_27C9171B8;
  if (!qword_27C9171B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSMessage.FilterSubCategoryType, &type metadata for SMSMessage.FilterSubCategoryType, v0, v1);
    atomic_store(result, &qword_27C9171B8);
  }

  return result;
}

unint64_t sub_21462E9E4()
{
  result = qword_280B30B30;
  if (!qword_280B30B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SMSMessage.SMSType, &type metadata for SMSMessage.SMSType, v0, v1);
    atomic_store(result, &qword_280B30B30);
  }

  return result;
}

void sub_21462EA3C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v8 = sub_21404A62C();
  if (!v3)
  {
    v20 = v8;
    [v20 _enableStrictSecureDecodingMode];
    [v20 setDecodingFailurePolicy_];
    v21 = type metadata accessor for _BlastDoorCKShareParticipant();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = sub_2146D9588();
    [v20 setClass:ObjCClassFromMetadata forClassName:v23];

    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    v24 = swift_getObjCClassFromMetadata();
    v25 = sub_2146D9588();
    [v20 setClass:v24 forClassName:v25];

    type metadata accessor for _BlastDoorCKUserIdentity();
    v26 = swift_getObjCClassFromMetadata();
    v27 = sub_2146D9588();
    [v20 setClass:v26 forClassName:v27];

    type metadata accessor for _BlastDoorCKRecordID();
    v28 = swift_getObjCClassFromMetadata();
    v29 = sub_2146D9588();
    [v20 setClass:v28 forClassName:v29];

    type metadata accessor for _BlastDoorCKRecordZoneID();
    v30 = swift_getObjCClassFromMetadata();
    v31 = sub_2146D9588();
    [v20 setClass:v30 forClassName:v31];

    type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
    v32 = swift_getObjCClassFromMetadata();
    v33 = sub_2146D9588();
    [v20 setClass:v32 forClassName:v33];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2146EA710;
    *(v34 + 32) = v21;
    sub_2146D95B8();
    sub_2146D9D08();

    if (v41[3])
    {
      if (swift_dynamicCast())
      {
        sub_21462F86C(v42, a3);
LABEL_10:

        sub_213FB54FC(a1, a2);
        return;
      }
    }

    else
    {
      sub_213FB2DF4(v41, &qword_27C913170, &qword_2146EAB20);
    }

    v38 = sub_2146D9F58();
    swift_allocError();
    v40 = v39;
    sub_2146D9F28();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84168], v38);
    swift_willThrow();
    goto LABEL_10;
  }

  v42 = v3;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    sub_21404A6EC();
    swift_allocError();
    v11 = v10;
    v12 = v41[4];
    v13 = [v12 domain];
    v14 = sub_2146D95B8();
    v16 = v15;

    MEMORY[0x2160545D0](v14, v16);

    *v11 = 0xD000000000000014;
    v11[1] = 0x800000021478AAD0;
    v41[0] = [v12 code];
    v17 = sub_2146DA428();
    v19 = v18;

    v11[2] = v17;
    v11[3] = v19;
    v11[4] = 0xD000000000000012;
    v11[5] = 0x80000002147A5E50;
    swift_willThrow();
    sub_213FB54FC(a1, a2);
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v36 = v35;
    v37 = v3;
    sub_214689A34(v3, 0xD000000000000012, 0x80000002147A5E50, v36);
    swift_willThrow();
    sub_213FB54FC(a1, a2);
  }
}

int *sub_21462F008()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for CloudKitSharingToken(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CloudKitShareParticipant(0);
  sub_213FB2E54(v2 + v10[19], v5, &qword_27C9041D8, &qword_2146ED5C0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C9041D8, &qword_2146ED5C0);
    v11 = 0;
  }

  else
  {
    sub_21404A900(v5, v9);
    v11 = sub_2145A8204();
    sub_2146382D0(v9, type metadata accessor for CloudKitSharingToken);
    if (v1)
    {
      return v10;
    }
  }

  if (v2[3])
  {

    v12 = sub_2146D9588();

    v13 = v2[8];
    if (!v13)
    {
LABEL_8:
      v86 = v11;
      v16 = sub_21463084C();
      v17 = *(v2 + v10[8]);
      v18 = v10[10];
      v19 = *(v2 + v10[9]);
      v78 = *(v2 + v10[7]);
      v79 = v19;
      v20 = *(v2 + v18);
      v21 = v10[12];
      v80 = *(v2 + v10[11]);
      v81 = v17;
      v22 = *(v2 + v21);
      v83 = v20;
      v84 = v22;
      v23 = v10[14];
      v82 = *(v2 + v10[13]);
      v85 = *(v2 + v23);
      if (*(v2 + v10[15] + 8) >> 60 == 15)
      {
        v24 = 0;
      }

      else
      {
        v24 = sub_2146D8A38();
      }

      if (*(v2 + v10[16] + 8) >> 60 == 15)
      {
        v25 = 0;
      }

      else
      {
        v25 = sub_2146D8A38();
      }

      v26 = *(v2 + v10[18]);
      v76 = *(v2 + v10[17]);
      v77 = v26;
      v27 = *(v2 + v10[20] + 8) >> 60;
      v88 = v1;
      if (v27 == 15)
      {
        v73 = 0;
      }

      else
      {
        v73 = sub_2146D8A38();
      }

      v28 = v10[22];
      v72 = *(v2 + v10[21]);
      v29 = *(v2 + v10[23]);
      v74 = *(v2 + v28);
      v75 = v29;
      v71 = type metadata accessor for _BlastDoorCKShareParticipant();
      v30 = objc_allocWithZone(v71);
      v31 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID;
      *&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID] = 0;
      v32 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo;
      *&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo] = 0;
      v33 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo;
      *&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo] = 0;
      v34 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken;
      *&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken] = 0;
      v35 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey;
      *&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey] = 0;
      v36 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey];
      strcpy(&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey], "ParticipantID");
      *(v36 + 7) = -4864;
      v37 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_InviterIDKey];
      *v37 = 0x4972657469766E49;
      *(v37 + 1) = 0xE900000000000044;
      v38 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey];
      strcpy(&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey], "UserIdentity");
      v38[13] = 0;
      *(v38 + 7) = -5120;
      v39 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey];
      strcpy(&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey], "IsCurrentUser");
      *(v39 + 7) = -4864;
      v40 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey];
      strcpy(&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey], "IsOrgAdminUser");
      v40[15] = -18;
      v41 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptanceStatusKey];
      *v41 = 0xD000000000000010;
      *(v41 + 1) = 0x80000002147A5D50;
      v42 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_RoleKey];
      *v42 = 1701869908;
      *(v42 + 1) = 0xE400000000000000;
      v43 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_PermissionKey];
      *v43 = 0x697373696D726550;
      *(v43 + 1) = 0xEA00000000006E6FLL;
      v44 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalParticipantRoleKey];
      *v44 = 0xD000000000000017;
      *(v44 + 1) = 0x80000002147A5D70;
      v45 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalAcceptanceStatusKey];
      *v45 = 0xD000000000000018;
      *(v45 + 1) = 0x80000002147A5D90;
      v46 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalPermissionKey];
      *v46 = 0xD000000000000012;
      *(v46 + 1) = 0x80000002147A5DB0;
      v47 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey];
      strcpy(&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey], "ProtectionInfo");
      v47[15] = -18;
      v48 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_EncryptedPersonalInfoKey];
      *v48 = 0xD000000000000015;
      *(v48 + 1) = 0x80000002147A5BE0;
      v49 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_CreatedInProcessKey];
      *v49 = 0xD000000000000010;
      *(v49 + 1) = 0x80000002147A5DD0;
      v50 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptedInProcessKey];
      *v50 = 0xD000000000000011;
      *(v50 + 1) = 0x80000002147A5DF0;
      v51 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_DeviceToDeviceShareInvitationTokenKey];
      *v51 = 0x6974617469766E49;
      *(v51 + 1) = 0xEF6E656B6F546E6FLL;
      v52 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoPublicIdentityKey];
      *v52 = 0xD000000000000017;
      *(v52 + 1) = 0x80000002147A5E10;
      v53 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_WantsNewInvitationTokenKey];
      *v53 = 0xD000000000000017;
      *(v53 + 1) = 0x80000002147943A0;
      v54 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_MutableInvitationTokenStatus];
      *v54 = 0xD00000000000001CLL;
      *(v54 + 1) = 0x80000002147A5E30;
      v55 = &v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsAnonymousInvitedParticipant];
      *v55 = 0xD00000000000001DLL;
      *(v55 + 1) = 0x80000002147943C0;
      *&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_participantID] = v12;
      *&v30[v31] = v13;
      *&v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity] = v16;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser] = v78;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser] = v81;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role] = v79;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus] = v83;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission] = v80;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole] = v84;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus] = v82;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission] = v85;
      *&v30[v32] = v24;
      v56 = *&v30[v33];
      *&v30[v33] = v25;
      v57 = v12;
      v58 = v13;
      v59 = v16;
      v60 = v24;
      v61 = v25;

      v62 = v77;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess] = v76;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess] = v62;
      v63 = *&v30[v34];
      v64 = v86;
      *&v30[v34] = v86;
      v65 = v64;

      v66 = *&v30[v35];
      v67 = v73;
      *&v30[v35] = v73;
      v68 = v67;

      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken] = v72;
      v69 = v75;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant] = v74;
      v30[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus] = v69;
      v87.receiver = v30;
      v87.super_class = v71;
      v10 = objc_msgSendSuper2(&v87, sel_init);

      return v10;
    }

    if (v13 != 1)
    {
      v14 = v2[7];

      v15 = sub_2146D9588();
      sub_213FDC6D0(v14, v13);
      v13 = v15;
      goto LABEL_8;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_21462F86C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CloudKitUserIdentity(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v95 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  v16 = type metadata accessor for CloudKitSharingToken(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v18 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken];
  if (v18)
  {
    sub_2145A8530(v18, v13);
    if (v2)
    {
      sub_213FB2DF4(v15, &qword_27C9041D8, &qword_2146ED5C0);

      return;
    }

    sub_213FB2DF4(v15, &qword_27C9041D8, &qword_2146ED5C0);
    v17(v13, 0, 1, v16);
    sub_21408AC04(v13, v15, &qword_27C9041D8, &qword_2146ED5C0);
  }

  v19 = sub_2146D95B8();
  v21 = v20;
  if (*&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID])
  {
    v22 = sub_2146D95B8();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_214630348(*&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity], v7);
  if (v2)
  {
    sub_213FB2DF4(v15, &qword_27C9041D8, &qword_2146ED5C0);

    return;
  }

  v93 = v21;
  v94 = v7;
  LODWORD(v89) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser];
  LODWORD(v88) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser];
  LODWORD(v87) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role];
  LODWORD(v86) = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus];
  v102 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission];
  v85 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole];
  v84 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus];
  v83 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission];
  v25 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo];
  if (v25)
  {
    v26 = v25;
    v82 = sub_2146D8A58();
    v81 = v27;
  }

  else
  {
    v82 = 0;
    v81 = 0xF000000000000000;
  }

  v28 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo];
  if (v28)
  {
    v29 = v28;
    v80 = sub_2146D8A58();
    v79 = v30;
  }

  else
  {
    v80 = 0;
    v79 = 0xF000000000000000;
  }

  v78 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess];
  v77 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess];
  sub_213FB2E54(v15, v95, &qword_27C9041D8, &qword_2146ED5C0);
  v31 = *&a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey];
  v90 = v15;
  v91 = v19;
  v92 = v24;
  v73 = v22;
  if (v31)
  {
    v32 = v31;
    v76 = sub_2146D8A58();
    v75 = v33;
  }

  else
  {
    v76 = 0;
    v75 = 0xF000000000000000;
  }

  v74 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken];
  v34 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant];
  v35 = a1[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus];
  v36 = type metadata accessor for CloudKitShareParticipant(0);
  sub_2144F6638(v94, a2 + v36[6]);
  sub_213FB2E54(v95, a2 + v36[19], &qword_27C9041D8, &qword_2146ED5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_21405980C;
  *(v38 + 24) = 0;
  *(inited + 32) = v38;
  sub_214042B80(inited, &v98);
  v39 = v99;
  v40 = v100;
  LOBYTE(inited) = v101;
  sub_2144F5110(v96);
  *a2 = v98;
  v41 = v96[1];
  *(a2 + 40) = v96[0];
  v42 = v97;
  *(a2 + 16) = v39;
  *(a2 + 24) = v40;
  *(a2 + 32) = inited;
  *(a2 + 56) = v41;
  *(a2 + 72) = v42;
  *(a2 + v36[7]) = v89;
  *(a2 + v36[8]) = v88;
  *(a2 + v36[9]) = v87;
  *(a2 + v36[10]) = v86;
  *(a2 + v36[11]) = v102;
  *(a2 + v36[12]) = v85;
  *(a2 + v36[13]) = v84;
  *(a2 + v36[14]) = v83;
  v43 = (a2 + v36[15]);
  v44 = v81;
  *v43 = v82;
  v43[1] = v44;
  v45 = (a2 + v36[16]);
  v46 = v79;
  *v45 = v80;
  v45[1] = v46;
  *(a2 + v36[17]) = v78;
  *(a2 + v36[18]) = v77;
  v47 = (a2 + v36[20]);
  v48 = v75;
  *v47 = v76;
  v47[1] = v48;
  *(a2 + v36[21]) = v74;
  *(a2 + v36[22]) = v34;
  *(a2 + v36[23]) = v35;
  v50 = *a2;
  v49 = *(a2 + 8);
  v51 = *(a2 + 24);
  v87 = *(a2 + 16);
  LODWORD(v48) = *(a2 + 32);
  *&v96[0] = v91;
  *(&v96[0] + 1) = v93;
  LODWORD(v89) = v48;
  v103 = v48;
  *&v98 = 0xD000000000000026;
  *(&v98 + 1) = 0x800000021478D9B0;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v88 = v50;
  v52 = v50(v96, &v103, &v98);
  v53 = v92;
  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v62 = 0xD000000000000026;
    v62[1] = 0x800000021478D9B0;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v95, &qword_27C9041D8, &qword_2146ED5C0);
    sub_2146382D0(v94, type metadata accessor for CloudKitUserIdentity);
    sub_213FB2DF4(v90, &qword_27C9041D8, &qword_2146ED5C0);

    *a2 = v88;
    *(a2 + 8) = v49;
    *(a2 + 16) = v87;
    *(a2 + 24) = v51;
    *(a2 + 32) = v89;
LABEL_22:
    sub_2146382D0(a2, type metadata accessor for CloudKitShareParticipant);
    return;
  }

  v86 = 0x800000021478A360;

  *a2 = v88;
  *(a2 + 8) = v49;
  v54 = v93;
  *(a2 + 16) = v91;
  *(a2 + 24) = v54;
  *(a2 + 32) = v89;
  v56 = *(a2 + 40);
  v55 = *(a2 + 48);
  v57 = *(a2 + 56);
  v58 = *(a2 + 64);
  LODWORD(v54) = *(a2 + 72);
  v59 = v73;
  *&v96[0] = v73;
  *(&v96[0] + 1) = v53;
  v60 = v86;
  LODWORD(v91) = v54;
  v103 = v54;
  *&v98 = 0xD000000000000022;
  *(&v98 + 1) = 0x800000021478D9E0;
  v99 = 0xD00000000000001CLL;
  v100 = v86;

  v89 = v57;
  v88 = v58;
  sub_213FDC9D0(v57, v58);
  v87 = v55;
  v93 = v56;
  v61 = v56(v96, &v103, &v98);
  v63 = v92;
  if ((v61 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD000000000000022;
    v67[1] = 0x800000021478D9E0;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = v60;
    swift_willThrow();

    sub_213FB2DF4(v95, &qword_27C9041D8, &qword_2146ED5C0);
    sub_2146382D0(v94, type metadata accessor for CloudKitUserIdentity);
    sub_213FB2DF4(v90, &qword_27C9041D8, &qword_2146ED5C0);
    v68 = *(a2 + 56);
    v69 = *(a2 + 64);

    sub_213FDC6D0(v68, v69);
    v70 = v87;
    *(a2 + 40) = v93;
    *(a2 + 48) = v70;
    v71 = v88;
    *(a2 + 56) = v89;
    *(a2 + 64) = v71;
    *(a2 + 72) = v91;
    goto LABEL_22;
  }

  sub_213FDC6D0(v89, v88);

  sub_213FB2DF4(v95, &qword_27C9041D8, &qword_2146ED5C0);
  sub_2146382D0(v94, type metadata accessor for CloudKitUserIdentity);
  sub_213FB2DF4(v90, &qword_27C9041D8, &qword_2146ED5C0);
  v64 = *(a2 + 56);
  v65 = *(a2 + 64);

  sub_213FDC6D0(v64, v65);
  v66 = v87;
  *(a2 + 40) = v93;
  *(a2 + 48) = v66;
  *(a2 + 56) = v59;
  *(a2 + 64) = v63;
  *(a2 + 72) = v91;
}
unint64_t sub_2144B1A2C()
{
  result = qword_27C9147E0;
  if (!qword_27C9147E0)
  {
    result = swift_getWitnessTable(byte_21475149C, &type metadata for PixelBufferEncodingConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9147E0);
  }

  return result;
}

unint64_t sub_2144B1A80()
{
  result = qword_27C9147E8;
  if (!qword_27C9147E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlastDoorPixelBufferFormats, &type metadata for BlastDoorPixelBufferFormats, v0, v1);
    atomic_store(result, &qword_27C9147E8);
  }

  return result;
}

unint64_t sub_2144B1AD4()
{
  result = qword_27C9147F8;
  if (!qword_27C9147F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlastDoorPixelBufferFormats, &type metadata for BlastDoorPixelBufferFormats, v0, v1);
    atomic_store(result, &qword_27C9147F8);
  }

  return result;
}

uint64_t sub_2144B1B28(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9041D0, &qword_2146F5CA0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2144B1B98()
{
  result = qword_27C914800;
  if (!qword_27C914800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlastDoorPixelBufferFormats, &type metadata for BlastDoorPixelBufferFormats, v0, v1);
    atomic_store(result, &qword_27C914800);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_2144B1C30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_2144B1C8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

unint64_t sub_2144B1DEC()
{
  result = qword_27C914808;
  if (!qword_27C914808)
  {
    result = swift_getWitnessTable(aU_92, &type metadata for PixelBufferEncodingConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914808);
  }

  return result;
}

unint64_t sub_2144B1E44()
{
  result = qword_27C914810;
  if (!qword_27C914810)
  {
    result = swift_getWitnessTable(byte_2147513E4, &type metadata for PixelBufferEncodingConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914810);
  }

  return result;
}

unint64_t sub_2144B1E9C()
{
  result = qword_27C914818;
  if (!qword_27C914818)
  {
    result = swift_getWitnessTable(asc_21475140C, &type metadata for PixelBufferEncodingConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914818);
  }

  return result;
}

uint64_t sub_2144B1EF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000021479B8A0 == a2;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479B8C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021479B8E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000021479B900 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000021479B920 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021479B940 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479B960 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479B980 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479B9A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000021479B9C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479B9E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021479BA00 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021479BA20 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021479BA40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479BA60 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021479BA80 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000021 && 0x800000021479BAA0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479BAD0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_2144B2468()
{
  result = qword_27C914820;
  if (!qword_27C914820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlastDoorPixelBufferFormats, &type metadata for BlastDoorPixelBufferFormats, v0, v1);
    atomic_store(result, &qword_27C914820);
  }

  return result;
}

uint64_t sub_2144B2510()
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

uint64_t sub_2144B2590()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B262C()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  if (*(v1 + 24) >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    sub_213FDCA18(v2, *(v1 + 24));
    return v2;
  }

  return result;
}

uint64_t sub_2144B26C4()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
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

uint64_t sub_2144B2754()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
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

uint64_t sub_2144B27E4()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B2860()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B28DC()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  if (*(v1 + 24) >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    sub_213FDCA18(v2, *(v1 + 24));
    return v2;
  }

  return result;
}

uint64_t sub_2144B2974()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B29E0()
{
  if ((*(v0 + 57) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B2A4C()
{
  if ((*(v0 + 89) & 1) == 0)
  {
    return *(v0 + 80);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144B2AEC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214751550;
  *(v4 + 16) = sub_21447174C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214471750;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_2144B2C30@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 128;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2144B2E3C@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_214751560;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142DFFF8(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140428D0(inited, a5);
}

unint64_t sub_2144B2FB4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 520;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
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

uint64_t sub_2144B311C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144B3174(__n128 *a1)
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

uint64_t sub_2144B31DC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2144B3244(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B32B4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48));
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

  return sub_21404F7E0(v6, v7);
}

__n128 sub_2144B3320(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B3398@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52));
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

__n128 sub_2144B3404(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52));
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

uint64_t sub_2144B347C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64));
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

__n128 sub_2144B34E8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64));
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

uint64_t sub_2144B3560@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2144B35C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3638@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2144B36A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3710@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76));
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

  return sub_21404F7E0(v6, v7);
}

__n128 sub_2144B377C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

unint64_t sub_2144B37F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214751570;
  *(v4 + 16) = sub_21447174C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_2140428D0(inited, a1);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_214751570;
  *(v11 + 16) = sub_21447174C;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142DFFF8(v10);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_214471750;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_2140428D0(v9, a1 + 32);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_214751580;
  *(v18 + 16) = sub_21447174C;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  v20 = sub_2142DFFF8(v17);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = sub_214471750;
  *(v21 + 24) = v22;
  *(v16 + 32) = v21;
  return sub_2140428D0(v16, a1 + 64);
}

uint64_t sub_2144B3B00@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B3B2C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  v1[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B3BB8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  v1[3].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3C18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 89);
  v6 = *(v1 + 90);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B3C44(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u8[8] = v4;
  v1[5].n128_u8[9] = v5;
  v1[5].n128_u8[10] = v6;
  return result;
}

unint64_t sub_2144B3CA4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D8, &qword_2146EAA28);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2147494C0;
  *(v5 + 16) = sub_214032554;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2144B95B8;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_214044AC0(inited, a1);
}

BOOL sub_2144B3E10(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    v8 = *v6++;
    v13 = v8;
    v9 = *(a3 + 16);
    v12 = a2;
    v10 = v9(&v13, &v12);
    v5 = v7 - 1;
  }

  while ((v10 & 1) != 0);
  return v7 == 0;
}

void sub_2144B3E8C(uint64_t a1, uint64_t a2)
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

void (*sub_2144B3FD0(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_2144B40A8(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_2144B41C0(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_2142F56E4(v4, v5, v6, v7);
}

__n128 sub_2144B4218(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 24);
  sub_2142F5584(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_2144B42DC(char a1)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2144B4354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  v5 = a1 + *(result + 32);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2144B4430(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_2144B44E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2144B4550(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2144B45D4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 32);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

uint64_t sub_2144B46AC(char a1)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_2144B4724@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_2142F5800(v4, v5);
}

uint64_t sub_2144B476C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 40));
  result = sub_2142F56A0(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2144B48D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  v4 = *(v3 + 24);
  if (v4 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 16);
    *a2 = v5;
    a2[1] = v4;

    return sub_213FDCA18(v5, v4);
  }

  return result;
}

double sub_2144B4970(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHomeKitInvitation(0);
  sub_214032118(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2144B4A38(uint64_t a1, unint64_t a2)
{
  type metadata accessor for IDSHomeKitInvitation(0);
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2144B4B18(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  *(a1 + 24) = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 24);
  if (v5 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 16);
    *a1 = v6;
    *(a1 + 8) = v5;
    sub_213FDCA18(v6, v5);
    return sub_2144B4BCC;
  }

  return result;
}

uint64_t sub_2144B4BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48));
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

  return sub_21404F7E0(v6, v7);
}

uint64_t sub_2144B4C40(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_21404F7E0(v4, v5);

  result = sub_214032564(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144B4CD8(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
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

  sub_21404F7E0(v9, v10);
  return sub_2144B4D84;
}

void sub_2144B4DB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
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

double sub_2144B4E4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHomeKitInvitation(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144B4F14(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
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

void (*sub_2144B5064(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
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

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2144B5150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52));
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

uint64_t sub_2144B51C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
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

void (*sub_2144B5258(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
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
  return sub_2144B5304;
}

void sub_2144B54E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
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

double sub_2144B557C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHomeKitInvitation(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144B5644(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
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

void (*sub_2144B5794(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
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

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2144B5880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64));
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

uint64_t sub_2144B58F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
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

uint64_t (*sub_2144B5988(uint64_t *a1))(uint64_t, uint64_t)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
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
  return sub_2144B95C8;
}

uint64_t sub_2144B5A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  v5 = a1 + *(result + 68);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2144B5B10(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 68);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B5BC4;
  }

  return result;
}

uint64_t sub_2144B5BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2144B5C34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2144B5CB8(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 68);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B5D6C;
}

uint64_t sub_2144B5D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  v5 = a1 + *(result + 72);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2144B5E4C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 72);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_2144B5F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2144B5F6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2144B5FF0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 72);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

uint64_t sub_2144B60A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  v4 = *(v3 + 24);
  if (v4 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 16);
    *a2 = v5;
    a2[1] = v4;

    return sub_213FDCA18(v5, v4);
  }

  return result;
}

double sub_2144B6144(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHomeKitInvitation(0);
  sub_214032118(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2144B620C(uint64_t a1, unint64_t a2)
{
  type metadata accessor for IDSHomeKitInvitation(0);
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2144B62EC(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  *(a1 + 24) = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 24);
  if (v5 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 16);
    *a1 = v6;
    *(a1 + 8) = v5;
    sub_213FDCA18(v6, v5);
    return sub_2144B95D4;
  }

  return result;
}

uint64_t sub_2144B63A0(uint64_t *a1, char a2)
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

uint64_t sub_2144B64E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76));
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

  return sub_21404F7E0(v6, v7);
}

uint64_t sub_2144B6554(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_21404F7E0(v4, v5);

  result = sub_214032564(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

uint64_t (*sub_2144B65EC(uint64_t *a1))(uint64_t, uint64_t)
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
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
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

  sub_21404F7E0(v9, v10);
  return sub_2144B95D8;
}

void sub_2144B6698(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5] + *(*a1 + 9);
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v17 = *(*a1 + 32);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v12);
    *v6 = v8;
    *(v6 + 8) = v7;
    *(v6 + 16) = v10;
    *(v6 + 24) = v9;
    *(v6 + 32) = v17;
    v14 = v5[2];
    v15 = v5[3];

    a3(v14, v15);
  }

  else
  {

    a3(v11, v12);
    *v6 = v8;
    *(v6 + 8) = v7;
    *(v6 + 16) = v10;
    *(v6 + 24) = v9;
    *(v6 + 32) = v17;
  }

  free(v5);
}

uint64_t (*sub_2144B687C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6910;
  }

  return result;
}

void (*sub_2144B6940(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2140305F8;
}

uint64_t sub_2144B69E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 56);
    *a2 = *(result + 48);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144B6A74(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 56);
    *a1 = *(v1 + 48);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6B08;
  }

  return result;
}

uint64_t sub_2144B6B3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 57) = v7;
  *(a2 + 58) = v8;
  return result;
}

void (*sub_2144B6BB0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  v9 = *(v1 + 58);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144B6C50;
}

void sub_2144B6C50(uint64_t **a1, char a2)
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

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
    *(v3 + 58) = v9;
  }

  else
  {

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
    *(v3 + 58) = v9;
  }

  free(v2);
}

uint64_t sub_2144B6D10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 89))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 88);
    *a2 = *(result + 80);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144B6DA4(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 89))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 88);
    *a1 = *(v1 + 80);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6E38;
  }

  return result;
}

uint64_t sub_2144B6E6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 89) = v7;
  *(a2 + 90) = v8;
  return result;
}

void (*sub_2144B6EE0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 89);
  v9 = *(v1 + 90);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144B6F80;
}

void sub_2144B6F80(uint64_t **a1, char a2)
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

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
    *(v3 + 89) = v8;
    *(v3 + 90) = v9;
  }

  else
  {

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
    *(v3 + 89) = v8;
    *(v3 + 90) = v9;
  }

  free(v2);
}

uint64_t sub_2144B71E0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 24);
    if (!v2 || (v3 = *(a2 + 24)) == 0)
    {
LABEL_19:
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *(v2 + 16);
    if (v4 == *(v3 + 16))
    {
      if (!v4 || v2 == v3)
      {
        return 1;
      }

      v6 = (v2 + 32);
      v7 = (v3 + 32);
      while (v4)
      {
        v9 = *v6++;
        v8 = v9;
        v10 = *v7++;
        result = v8 == v10;
        if (v8 != v10 || v4-- == 1)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t sub_2144B72B0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 25) & 1) == 0 && (*(a2 + 25) & 1) == 0)
  {
    if (*(a1 + 24))
    {
      if ((*(a2 + 24) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
      if ((*(a2 + 24) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
      {
        return v2 & 1;
      }
    }

    if ((*(a1 + 57) & 1) == 0 && (*(a2 + 57) & 1) == 0)
    {
      if (*(a1 + 56))
      {
        if ((*(a2 + 56) & 1) == 0)
        {
LABEL_12:
          v2 = 0;
          return v2 & 1;
        }
      }

      else
      {
        v2 = 0;
        if ((*(a2 + 56) & 1) != 0 || *(a1 + 48) != *(a2 + 48))
        {
          return v2 & 1;
        }
      }

      if ((*(a1 + 89) & 1) == 0 && (*(a2 + 89) & 1) == 0)
      {
        if (*(a1 + 88))
        {
          v2 = *(a2 + 88);
        }

        else
        {
          v2 = (*(a1 + 80) == *(a2 + 80)) & ~*(a2 + 88);
        }

        return v2 & 1;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B73BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  v13 = MEMORY[0x28223BE20](v12);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = *(v15 + 48);
  v40 = a1;
  sub_213FB2E54(a1, &v36 - v16, &qword_27C913090, &unk_2146E9DB0);
  v41 = a2;
  sub_213FB2E54(a2, &v17[v18], &qword_27C913090, &unk_2146E9DB0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      v36 = v5;
      sub_213FB2DF4(v17, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_8;
    }

LABEL_6:
    v20 = v17;
LABEL_14:
    sub_213FB2DF4(v20, &qword_27C913180, &qword_214739C58);
    goto LABEL_15;
  }

  sub_213FB2E54(v17, v11, &qword_27C913090, &unk_2146E9DB0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  v21 = *(v5 + 32);
  v22 = &v17[v18];
  v23 = v5;
  v24 = v38;
  v21(v38, v22, v4);
  sub_2144B8F78(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v25 = sub_2146D9578();
  v36 = v23;
  v26 = *(v23 + 8);
  v26(v24, v4);
  v26(v11, v4);
  sub_213FB2DF4(v17, &qword_27C913090, &unk_2146E9DB0);
  if ((v25 & 1) == 0)
  {
LABEL_15:
    v30 = 0;
    return v30 & 1;
  }

LABEL_8:
  v27 = *(type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0) + 20);
  v28 = *(v12 + 48);
  v29 = v39;
  sub_213FB2E54(v40 + v27, v39, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v41 + v27, v29 + v28, &qword_27C913090, &unk_2146E9DB0);
  if (v19(v29, 1, v4) != 1)
  {
    v31 = v37;
    sub_213FB2E54(v29, v37, &qword_27C913090, &unk_2146E9DB0);
    if (v19((v29 + v28), 1, v4) != 1)
    {
      v33 = v36;
      v34 = v38;
      (*(v36 + 32))(v38, v29 + v28, v4);
      sub_2144B8F78(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v30 = sub_2146D9578();
      v35 = *(v33 + 8);
      v35(v34, v4);
      v35(v31, v4);
      sub_213FB2DF4(v29, &qword_27C913090, &unk_2146E9DB0);
      return v30 & 1;
    }

    (*(v36 + 8))(v31, v4);
    goto LABEL_13;
  }

  if (v19((v29 + v28), 1, v4) != 1)
  {
LABEL_13:
    v20 = v29;
    goto LABEL_14;
  }

  sub_213FB2DF4(v29, &qword_27C913090, &unk_2146E9DB0);
  v30 = 1;
  return v30 & 1;
}

BOOL sub_2144B792C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v6 || (sub_2143D5B78(v4, v6) & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  result = (v5 | v7) == 0;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {

    v10 = sub_2143D5CDC(v5, v7);

    return v10 & 1;
  }

  return result;
}

uint64_t sub_2144B79B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken(0);
  v150 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v7 - 8);
  v148 = (&v142 - v8);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917540, &unk_214751950);
  MEMORY[0x28223BE20](v149);
  v152 = &v142 - v9;
  v159 = sub_2146D8B88();
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v154 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v151 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v155 = &v142 - v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F40, &qword_21477E730);
  v15 = MEMORY[0x28223BE20](v158);
  v153 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v156 = &v142 - v17;
  v18 = sub_2146D8B08();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v142 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  MEMORY[0x28223BE20](v25);
  v27 = &v142 - v26;
  v28 = *(a1 + 24);
  if (v28 == 1)
  {
    goto LABEL_148;
  }

  v147 = v6;
  v29 = *(a2 + 24);
  if (v29 == 1)
  {
    goto LABEL_148;
  }

  v30 = *(a1 + 16);
  if (v28)
  {
    if (!v29 || (v30 != *(a2 + 16) || v28 != v29) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v29)
    {
      return 0;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v30, 0);
  }

  v144 = v4;
  v31 = type metadata accessor for IDSHomeKitInvitation(0);
  v32 = *(v31 + 20);
  v33 = a1;
  v34 = *(v25 + 48);
  v145 = v33;
  v146 = v31;
  sub_213FB2E54(v33 + v32, v27, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v32, &v27[v34], &qword_27C913090, &unk_2146E9DB0);
  v35 = *(v19 + 48);
  if (v35(v27, 1, v18) == 1)
  {
    if (v35(&v27[v34], 1, v18) == 1)
    {
      sub_213FB2DF4(v27, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_18;
    }

LABEL_16:
    sub_213FB2DF4(v27, &qword_27C913180, &qword_214739C58);
    return 0;
  }

  sub_213FB2E54(v27, v24, &qword_27C913090, &unk_2146E9DB0);
  if (v35(&v27[v34], 1, v18) == 1)
  {
    (*(v19 + 8))(v24, v18);
    goto LABEL_16;
  }

  (*(v19 + 32))(v21, &v27[v34], v18);
  sub_2144B8F78(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v36 = sub_2146D9578();
  v37 = *(v19 + 8);
  v37(v21, v18);
  v37(v24, v18);
  sub_213FB2DF4(v27, &qword_27C913090, &unk_2146E9DB0);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v38 = v146[6];
  v40 = *(v145 + v38);
  v39 = *(v145 + v38 + 8);
  v42 = *(v145 + v38 + 16);
  v41 = *(v145 + v38 + 24);
  v143 = a2;
  v43 = (a2 + v38);
  v45 = *v43;
  v44 = v43[1];
  v47 = v43[2];
  v46 = v43[3];
  if (!v39)
  {
    if (!v44)
    {
      sub_2142F56E4(v40, 0, v42, v41);
      sub_2142F56E4(v45, 0, v47, v46);
      sub_2142F5584(v40, 0, v42, v41);
      goto LABEL_29;
    }

LABEL_26:
    sub_2142F56E4(v40, v39, v42, v41);
    sub_2142F56E4(v45, v44, v47, v46);
    sub_2142F5584(v40, v39, v42, v41);
    sub_2142F5584(v45, v44, v47, v46);
    return 0;
  }

  if (!v44)
  {
    goto LABEL_26;
  }

  if (*&v40 != *&v45)
  {
    sub_2142F56E4(v40, v39, v42, v41);
    sub_2142F56E4(v45, v44, v47, v46);
    sub_2142F5584(v45, v44, v47, v46);
    sub_2142F5584(v40, v39, v42, v41);
    return 0;
  }

  if (!v41 || !v46)
  {
    goto LABEL_148;
  }

  LODWORD(v142) = sub_2143D7490(v41, v43[3]);
  sub_2142F56E4(v40, v39, v42, v41);
  sub_2142F56E4(v45, v44, v47, v46);
  sub_2142F5584(v45, v44, v47, v46);
  sub_2142F5584(v40, v39, v42, v41);
  if ((v142 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v48 = v145;
  v49 = v146[7];
  v50 = *(v145 + v49);
  v51 = v143;
  v52 = *(v143 + v49);
  if (v50 == 2)
  {
    if (v52 != 2)
    {
      return 0;
    }
  }

  else
  {
    v53 = 0;
    if (v52 == 2 || ((v52 ^ v50) & 1) != 0)
    {
      return v53;
    }
  }

  v54 = v146[8];
  v55 = v145 + v54;
  if (*(v145 + v54 + 25))
  {
    goto LABEL_148;
  }

  v56 = v143 + v54;
  if (*(v56 + 25))
  {
    goto LABEL_148;
  }

  if (*(v55 + 24))
  {
    if ((*(v56 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v53 = 0;
    if ((*(v56 + 24) & 1) != 0 || *(v55 + 16) != *(v56 + 16))
    {
      return v53;
    }
  }

  v57 = v146[9];
  v58 = *(v145 + v57);
  v59 = *(v143 + v57);
  if (v58 == 2)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else
  {
    v53 = 0;
    if (v59 == 2 || ((v59 ^ v58) & 1) != 0)
    {
      return v53;
    }
  }

  v60 = v146[10];
  v61 = *(v145 + v60);
  v62 = *(v145 + v60 + 8);
  v63 = (v143 + v60);
  v64 = *v63;
  v65 = v63[1];
  if (v61 == 1)
  {
    sub_2142F5800(1, v62);
    if (v64 == 1)
    {
      sub_2142F5800(1, v65);
      v66 = 1;
      v67 = v62;
LABEL_49:
      sub_2142F56A0(v66, v67);
      goto LABEL_50;
    }

    sub_2142F5800(v64, v65);
    goto LABEL_56;
  }

  if (v64 == 1)
  {
    sub_2142F5800(v61, v62);
    sub_2142F5800(1, v65);
    sub_2142F5800(v61, v62);

LABEL_56:
    sub_2142F56A0(v61, v62);
    v74 = v64;
    v75 = v65;
LABEL_94:
    sub_2142F56A0(v74, v75);
    return 0;
  }

  if (v61)
  {
    if (!v64)
    {
      sub_2142F5800(v61, v62);
      sub_2142F5800(0, v65);
      sub_2142F5800(v61, v62);
      v79 = 0;
      v80 = v65;
      goto LABEL_93;
    }

    if ((sub_2143D5B78(v61, *v63) & 1) == 0)
    {
      sub_2142F5800(v61, v62);
      sub_2142F5800(v64, v65);
      v76 = v61;
LABEL_66:
      v78 = v62;
LABEL_67:
      sub_2142F5800(v76, v78);
      v79 = v64;
      v80 = v65;
LABEL_93:
      sub_2142F56A0(v79, v80);

      v74 = v61;
      v75 = v62;
      goto LABEL_94;
    }
  }

  else if (v64)
  {
    sub_2142F5800(0, v62);
    sub_2142F5800(v64, v65);
    v76 = 0;
    goto LABEL_66;
  }

  if (!v62)
  {
    sub_2142F5800(v61, 0);
    if (!v65)
    {
      sub_2142F5800(v64, 0);
      sub_2142F5800(v61, 0);
      sub_2142F56A0(v64, 0);

      v66 = v61;
      v67 = 0;
      goto LABEL_49;
    }

    sub_2142F5800(v64, v65);
    v76 = v61;
    v78 = 0;
    goto LABEL_67;
  }

  if (!v65)
  {
    sub_2142F5800(v61, v62);
    sub_2142F5800(v64, 0);
    sub_2142F5800(v61, v62);
    v79 = v64;
    v80 = 0;
    goto LABEL_93;
  }

  sub_2142F5800(v61, v62);
  sub_2142F5800(v64, v65);
  sub_2142F5800(v61, v62);

  v81 = sub_2143D5CDC(v62, v65);

  sub_2142F56A0(v64, v65);

  sub_2142F56A0(v61, v62);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v68 = v146[11];
  v69 = *(v158 + 48);
  v70 = v156;
  sub_213FB2E54(v48 + v68, v156, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v51 + v68, v70 + v69, &unk_27C904F30, &unk_2146EFA20);
  v71 = v157;
  v72 = *(v157 + 48);
  v73 = v159;
  if (v72(v70, 1, v159) == 1)
  {
    if (v72(v70 + v69, 1, v73) == 1)
    {
      v142 = v72;
      sub_213FB2DF4(v70, &unk_27C904F30, &unk_2146EFA20);
      goto LABEL_73;
    }

LABEL_63:
    sub_213FB2DF4(v70, &qword_27C904F40, &qword_21477E730);
    return 0;
  }

  v77 = v155;
  sub_213FB2E54(v70, v155, &unk_27C904F30, &unk_2146EFA20);
  if (v72(v70 + v69, 1, v73) == 1)
  {
    (*(v71 + 8))(v77, v73);
    goto LABEL_63;
  }

  v142 = v72;
  v82 = v154;
  (*(v71 + 32))(v154, v70 + v69, v73);
  sub_2144B8F78(&qword_27C904F48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v83 = sub_2146D9578();
  v84 = *(v71 + 8);
  v84(v82, v73);
  v84(v77, v73);
  sub_213FB2DF4(v70, &unk_27C904F30, &unk_2146EFA20);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_73:
  v85 = v146[12];
  v86 = v145 + v85;
  v87 = *(v145 + v85 + 24);
  if (v87 >> 60 == 11)
  {
    goto LABEL_148;
  }

  v88 = *(v51 + v85 + 24);
  if (v88 >> 60 == 11)
  {
    goto LABEL_148;
  }

  v89 = *(v86 + 16);
  v90 = *(v51 + v85 + 16);
  if (v87 >> 60 == 15)
  {
    if (v88 >> 60 == 15)
    {
      sub_21404F7E0(*(v86 + 16), *(v86 + 24));
      sub_21404F7E0(v90, v88);
      sub_213FDC6BC(v89, v87);
      goto LABEL_84;
    }

LABEL_80:
    sub_21404F7E0(*(v86 + 16), *(v86 + 24));
    sub_21404F7E0(v90, v88);
    sub_213FDC6BC(v89, v87);
    sub_213FDC6BC(v90, v88);
    return 0;
  }

  if (v88 >> 60 == 15)
  {
    goto LABEL_80;
  }

  sub_21404F7E0(*(v86 + 16), *(v86 + 24));
  sub_21404F7E0(v90, v88);
  sub_21404F7E0(v89, v87);
  sub_21404F7E0(v90, v88);
  v91 = sub_214466780(v89, v87, v90, v88);
  sub_213FDC6BC(v90, v88);
  sub_214032564(v90, v88);
  sub_214032564(v89, v87);
  sub_213FDC6BC(v89, v87);
  if (!v91)
  {
    return 0;
  }

LABEL_84:
  v92 = v146[13];
  v93 = v145 + v92;
  v94 = *(v145 + v92 + 24);
  if (v94 == 1)
  {
    goto LABEL_148;
  }

  v95 = v51 + v92;
  v96 = *(v95 + 24);
  if (v96 == 1)
  {
    goto LABEL_148;
  }

  v97 = *(v93 + 16);
  if (v94)
  {
    if (!v96 || (v97 != *(v95 + 16) || v94 != v96) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v96)
    {
      return 0;
    }

    sub_213FDC9D0(*(v95 + 16), 0);
    sub_213FDC9D0(v97, 0);
    v51 = v143;
  }

  v99 = v146[14];
  v100 = *(v158 + 48);
  v101 = v153;
  sub_213FB2E54(v145 + v99, v153, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v51 + v99, v101 + v100, &unk_27C904F30, &unk_2146EFA20);
  v102 = v159;
  v103 = v142;
  if (v142(v101, 1, v159) == 1)
  {
    if (v103(v101 + v100, 1, v102) == 1)
    {
      sub_213FB2DF4(v153, &unk_27C904F30, &unk_2146EFA20);
      goto LABEL_107;
    }

LABEL_105:
    sub_213FB2DF4(v153, &qword_27C904F40, &qword_21477E730);
    return 0;
  }

  sub_213FB2E54(v101, v151, &unk_27C904F30, &unk_2146EFA20);
  if (v103(v101 + v100, 1, v102) == 1)
  {
    (*(v157 + 8))(v151, v159);
    goto LABEL_105;
  }

  v104 = v157;
  v106 = v153;
  v105 = v154;
  v107 = v153 + v100;
  v108 = v159;
  (*(v157 + 32))(v154, v107, v159);
  sub_2144B8F78(&qword_27C904F48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v109 = v151;
  v110 = sub_2146D9578();
  v111 = *(v104 + 8);
  v111(v105, v108);
  v111(v109, v108);
  sub_213FB2DF4(v106, &unk_27C904F30, &unk_2146EFA20);
  if ((v110 & 1) == 0)
  {
    return 0;
  }

LABEL_107:
  v112 = v146[15];
  v113 = *(v149 + 48);
  v114 = v152;
  sub_213FB2E54(v145 + v112, v152, &qword_27C9041D8, &qword_2146ED5C0);
  sub_213FB2E54(v143 + v112, v114 + v113, &qword_27C9041D8, &qword_2146ED5C0);
  v115 = *(v150 + 48);
  if (v115(v114, 1, v144) == 1)
  {
    if (v115(v152 + v113, 1, v144) == 1)
    {
      sub_213FB2DF4(v152, &qword_27C9041D8, &qword_2146ED5C0);
      goto LABEL_114;
    }

LABEL_112:
    sub_213FB2DF4(v152, &qword_27C917540, &unk_214751950);
    return 0;
  }

  v116 = v152;
  sub_213FB2E54(v152, v148, &qword_27C9041D8, &qword_2146ED5C0);
  if (v115(v116 + v113, 1, v144) == 1)
  {
    sub_214068310(v148);
    goto LABEL_112;
  }

  v117 = v152;
  v118 = v147;
  sub_21404A900(v152 + v113, v147);
  v119 = v148;
  v120 = sub_2145AF7C4(v148, v118);
  sub_214068310(v118);
  sub_214068310(v119);
  sub_213FB2DF4(v117, &qword_27C9041D8, &qword_2146ED5C0);
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_114:
  v121 = v146[16];
  v122 = v145 + v121;
  v123 = *(v145 + v121 + 24);
  if (v123 != 1)
  {
    v124 = v143 + v121;
    v125 = *(v124 + 24);
    if (v125 != 1)
    {
      v126 = *(v122 + 16);
      if (v123)
      {
        if (!v125 || (v126 != *(v124 + 16) || v123 != v125) && (sub_2146DA6A8() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v125)
        {
          return 0;
        }

        sub_213FDC9D0(*(v124 + 16), 0);
        sub_213FDC9D0(v126, 0);
      }

      v127 = v146[17];
      v128 = v145 + v127;
      if ((*(v145 + v127 + 25) & 1) == 0)
      {
        v129 = v143 + v127;
        if ((*(v129 + 25) & 1) == 0)
        {
          if (*(v128 + 24))
          {
            v130 = v145;
            if ((*(v129 + 24) & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v53 = 0;
            if (*(v129 + 24))
            {
              return v53;
            }

            v131 = *(v128 + 16) == *(v129 + 16);
            v130 = v145;
            if (!v131)
            {
              return v53;
            }
          }

          v132 = v146[18];
          v133 = v130 + v132;
          if ((*(v133 + 25) & 1) == 0)
          {
            v134 = v143 + v132;
            if ((*(v134 + 25) & 1) == 0)
            {
              if (*(v133 + 24))
              {
                v135 = v145;
                if ((*(v134 + 24) & 1) == 0)
                {
                  return 0;
                }
              }

              else
              {
                v53 = 0;
                if (*(v134 + 24))
                {
                  return v53;
                }

                v131 = *(v133 + 16) == *(v134 + 16);
                v135 = v145;
                if (!v131)
                {
                  return v53;
                }
              }

              v136 = v146[19];
              v137 = v135 + v136;
              v138 = *(v135 + v136 + 24);
              if (v138 >> 60 != 11)
              {
                v139 = *(v143 + v136 + 24);
                if (v139 >> 60 != 11)
                {
                  v140 = *(v137 + 16);
                  v141 = *(v143 + v136 + 16);
                  if (v138 >> 60 == 15)
                  {
                    if (v139 >> 60 == 15)
                    {
                      sub_21404F7E0(*(v137 + 16), v138);
                      sub_21404F7E0(v141, v139);
                      sub_213FDC6BC(v140, v138);
                      return 1;
                    }
                  }

                  else if (v139 >> 60 != 15)
                  {
                    sub_21404F7E0(*(v137 + 16), v138);
                    sub_21404F7E0(v141, v139);
                    sub_21404F7E0(v140, v138);
                    sub_21404F7E0(v141, v139);
                    v53 = sub_214466780(v140, v138, v141, v139);
                    sub_213FDC6BC(v141, v139);
                    sub_214032564(v141, v139);
                    sub_214032564(v140, v138);
                    sub_213FDC6BC(v140, v138);
                    return v53;
                  }

                  sub_21404F7E0(*(v137 + 16), v138);
                  sub_21404F7E0(v141, v139);
                  sub_213FDC6BC(v140, v138);
                  sub_213FDC6BC(v141, v139);
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_148:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B8EF4(uint64_t a1)
{
  *(a1 + 8) = sub_2144B8F78(&qword_27C90CB20, type metadata accessor for IDSHomeKitInvitation, aY_95);
  result = sub_2144B8F78(&qword_27C90CAE8, type metadata accessor for IDSHomeKitInvitation, byte_2146FA3D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144B8F78(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2144B9018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144B9054(uint64_t a1)
{
  *(a1 + 8) = sub_2144B8F78(&qword_27C907780, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule, aI_28);
  result = sub_2144B8F78(&qword_27C9077B8, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule, byte_2146FA4C8);
  *(a1 + 16) = result;
  return result;
}

void sub_2144B9100(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v1 <= 0x3F)
  {
    sub_2144B9330(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C914840, &type metadata for IDSHomeKitInvitation.IDSHomeKitInvitationRequestedCapabilities);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_27C914848, &type metadata for IDSHomeKitInviteeSchedule);
            if (v6 <= 0x3F)
            {
              sub_2144B9330(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
              if (v7 <= 0x3F)
              {
                sub_21409A2B4(319, &qword_27C912210, &qword_27C905680, &unk_2146F3CE0);
                if (v8 <= 0x3F)
                {
                  sub_2144B9330(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
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

void sub_2144B9330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2144B9384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2144B93CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2144B9454(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
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

uint64_t sub_2144B949C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2144B9530(uint64_t a1)
{
  sub_2144B9330(319, &qword_280B35230, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2144B95DC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214059900;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144B96FC@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144B9754(__n128 *a1)
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

uint64_t sub_2144B97BC()
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

unint64_t sub_2144B983C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F530;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438F534;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF64;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_2144B99E4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C88, &unk_214731A20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21438F51C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0598(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904118, &qword_2146EAA78);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2144C5518;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044574(inited, a1);
}

unint64_t sub_2144B9B54@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2143C945C;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_214059908;
  v7[3] = 0;
  v7[4] = 128;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_2143A572C;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_2143A5724;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2144B9D68@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144B9DB4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2144B9E10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144B9E5C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144B9EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144B9F00(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B9F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 145);
  v6 = *(v1 + 146);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B9F88(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 145) = v5;
  *(v1 + 146) = v6;
  return result;
}

uint64_t sub_2144B9FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  *a1 = *(v1 + 264);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2144BA034(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 280);

  sub_213FB7170(v5);
  result = *a1;
  *(v1 + 264) = *a1;
  *(v1 + 280) = v3;
  *(v1 + 288) = v4;
  return result;
}

uint64_t sub_2144BA090@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 3256);
  v3 = *(v1 + 3264);
  v4 = *(v1 + 3272);
  v5 = *(v1 + 3280);
  *a1 = *(v1 + 3248);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2144BA0F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[204].n128_i64[0];
  v7 = v1[204].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[203] = *a1;
  v1[204].n128_u64[0] = v3;
  v1[204].n128_u64[1] = v4;
  v1[205].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BA160@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 3296);
  v3 = *(v1 + 3304);
  v4 = *(v1 + 3312);
  v5 = *(v1 + 3313);
  v6 = *(v1 + 3314);
  *a1 = *(v1 + 3288);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144BA190(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *(v1 + 3288) = *a1;
  *(v1 + 3304) = v3;
  *(v1 + 3312) = v4;
  *(v1 + 3313) = v5;
  *(v1 + 3314) = v6;
  return result;
}

uint64_t sub_2144BA1FC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144BA278()
{
  if (*(v0 + 64))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t sub_2144BA2E8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BA364()
{
  if ((*(v0 + 145) & 1) == 0)
  {
    return *(v0 + 136);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2144BA3D0()
{
  if (*(v0 + 280) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_2144BA444()
{
  v1 = *(v0 + 3272);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 3264);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2144BA4CC()
{
  if ((*(v0 + 3313) & 1) == 0)
  {
    return *(v0 + 3304);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144BA538@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F530;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438F534;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF64;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_2144BA6E0@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_214751960;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E04E4(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904128, qword_2147557C0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_21404441C(inited, a5);
}

uint64_t sub_2144BA81C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144BA868(__n128 *a1)
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

uint64_t sub_2144BA8C4@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144BA910(__n128 *a1)
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

uint64_t sub_2144BA96C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144BA9B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BAA10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 169);
  v6 = *(v1 + 170);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144BAA3C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v3;
  v1[10].n128_u8[8] = v4;
  v1[10].n128_u8[9] = v5;
  v1[10].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144BAA9C()
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

uint64_t sub_2144BAB18()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144BAB94()
{
  if (*(v0 + 112))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t sub_2144BAC04()
{
  if ((*(v0 + 169) & 1) == 0)
  {
    return *(v0 + 160);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144BACAC@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_214751970;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142DFFF8(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140428D0(inited, a5);
}

uint64_t KeyMaterial.$index.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 KeyMaterial.$index.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t KeyMaterial.$wrapMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 113);
  v6 = *(v1 + 114);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 KeyMaterial.$wrapMode.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 113) = v5;
  *(v1 + 114) = v6;
  return result;
}

uint64_t KeyMaterial.index.getter()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t KeyMaterial.wrapMode.getter()
{
  if ((*(v0 + 113) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144BB028@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C90, &unk_214731A30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21438F51C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E04A8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904120, &unk_2146EAA80);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2144C54A8;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044178(inited, a1);
}

unint64_t sub_2144BB198@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F530;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438F534;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF64;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_2144BB304@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144BB350(__n128 *a1)
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

uint64_t sub_2144BB3AC@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144BB3F8(__n128 *a1)
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

uint64_t sub_2144BB454@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2144BB4A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[6].n128_i64[0];

  sub_213FB7170(v5);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BB4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144BB544(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BB59C()
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

uint64_t sub_2144BB618()
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

void sub_2144BB694()
{
  if (*(v0 + 96) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

void sub_2144BB708()
{
  if (*(v0 + 128))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

unint64_t sub_2144BB778@<X0>(uint64_t a1@<X8>)
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
  *(v4 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_2143C945C;
  v6[3] = 0;
  v6[4] = 16;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_2143A571C;
  *(v5 + 24) = v6;
  *(v4 + 32) = v5;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_214059908;
  v8[3] = 0;
  v8[4] = 128;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_2143A572C;
  *(v7 + 24) = v8;
  *(v4 + 40) = v7;
  sub_214042CD0(v4, a1 + 40);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_214751970;
  *(v11 + 16) = sub_214032554;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142DFFF8(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_21403255C;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_2140428D0(v9, a1 + 80);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_214059900;
  *(v17 + 24) = 0;
  *(v16 + 32) = v17;
  return sub_214042B80(v16, a1 + 112);
}

uint64_t sub_2144BBA88@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144BBAD4(__n128 *a1)
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

uint64_t sub_2144BBB30@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2144BBB88(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144BBBF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 105);
  v6 = *(v1 + 106);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144BBC1C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  v1[6].n128_u8[9] = v5;
  v1[6].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144BBC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 128);
  v3 = *(v1 + 136);
  v5 = *(v1 + 144);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BBCC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u64[1] = v4;
  v1[9].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BBD24()
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

uint64_t sub_2144BBDA0()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2144BBE28()
{
  if ((*(v0 + 105) & 1) == 0)
  {
    return *(v0 + 96);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144BBE94()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 128);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2144BBF10@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2144C54A4;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2146EAEB0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21439DF28;
  *(v9 + 24) = v5;
  *(v8 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21439DF60;
  *(v10 + 24) = v7;
  *(v8 + 40) = v10;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v11 + 16) = sub_21439DF54;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21408E9E0;
  *(v13 + 24) = v11;
  *(inited + 40) = v13;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_2144BC164@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C88, &unk_214731A20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214309284;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0598(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904118, &qword_2146EAA78);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2144C545C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044574(inited, a1);
}

uint64_t sub_2144BC2D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BC320(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2144BC37C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144BC3C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BC420@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BC46C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BC4C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  *a1 = *(v1 + 232);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2144BC514(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 248);

  sub_213FB7170(v5);
  result = *a1;
  *(v1 + 232) = *a1;
  *(v1 + 248) = v3;
  *(v1 + 256) = v4;
  return result;
}

uint64_t sub_2144BC56C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144BC5E8()
{
  if (*(v0 + 64))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t sub_2144BC658()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144BC6D4()
{
  if (*(v0 + 248) == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
  }
}

unint64_t sub_2144BC748@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_2144BC81C(uint64_t a1, uint64_t a2)
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

void (*sub_2144BC960(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_2144BCA38(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2144BCAD8()
{
  v1 = *(v0 + 40);
  sub_213FDCA18(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_2144BCB0C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2144BCB64()
{
  v1 = *(v0 + 56);
  sub_213FDCA18(v1, *(v0 + 64));
  return v1;
}

uint64_t sub_2144BCB98(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_2144BCBF0()
{
  v1 = *(v0 + 72);
  sub_213FDCA18(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_2144BCC24(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_2144BCC7C()
{
  v1 = *(v0 + 88);
  sub_213FDCA18(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_2144BCCB0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

void sub_2144BCD40(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
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

uint64_t (*sub_2144BCE88(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_2144BCF24;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BCF28(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144BCFC0;
}

void sub_2144BCFC4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2144BD02C(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144BD0D4(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 48);
  v6 = *(v1 + 72);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 64) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2144BD210(void *a1))()
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2144BD2A8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144BD2AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
}

uint64_t (*sub_2144BD320(uint64_t *a1))()
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2144BD3B8;
}

void sub_2144BD3BC(uint64_t a1, uint64_t a2)
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

void (*sub_2144BD504(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_214476798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BD5A0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214476834;
}

uint64_t sub_2144BD698@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 145))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 144);
    *a2 = *(result + 136);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144BD72C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 145))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 144);
    *a1 = *(v1 + 136);
    *(a1 + 8) = v2 & 1;
    return sub_2144BD7C0;
  }

  return result;
}

uint64_t sub_2144BD7F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  *(a2 + 144) = v6;
  *(a2 + 145) = v7;
  *(a2 + 146) = v8;
  return result;
}

void (*sub_2144BD868(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 145);
  v9 = *(v1 + 146);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144BD908;
}

void sub_2144BD908(uint64_t **a1, char a2)
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

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v6;
    *(v3 + 144) = v7;
    *(v3 + 145) = v8;
    *(v3 + 146) = v9;
  }

  else
  {

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v6;
    *(v3 + 144) = v7;
    *(v3 + 145) = v8;
    *(v3 + 146) = v9;
  }

  free(v2);
}

uint64_t sub_2144BD9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 240);
  v13 = *(v1 + 224);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 256);
  v4 = v15;
  v5 = *(v1 + 176);
  v10[0] = *(v1 + 160);
  v10[1] = v5;
  v6 = *(v1 + 208);
  v11 = *(v1 + 192);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_2142F2518(v10, v9);
}

__n128 sub_2144BDA54(uint64_t a1)
{
  v3 = *(v1 + 240);
  v9[4] = *(v1 + 224);
  v9[5] = v3;
  v10 = *(v1 + 256);
  v4 = *(v1 + 176);
  v9[0] = *(v1 + 160);
  v9[1] = v4;
  v5 = *(v1 + 208);
  v9[2] = *(v1 + 192);
  v9[3] = v5;
  sub_2142F2470(v9);
  v6 = *(a1 + 80);
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = v6;
  *(v1 + 256) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v7;
  result = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = result;
  return result;
}

void sub_2144BDAE4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 280);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2144BDB50(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144BDBF8(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 264);
  v6 = *(v1 + 288);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 280));

    *(v1 + 280) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144BDD30(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 280);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2144BDDCC;
  }

  return result;
}

void sub_2144BDDCC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v4 + 264);
    v9 = *(v4 + 288);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 280) = v3;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v5 = *(v4 + 264);
  v9 = *(v4 + 288);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v5(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 280) = v3;
}

uint64_t sub_2144BDFA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 280);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *(a2 + 264) = v4;
  *(a2 + 272) = v3;
  *(a2 + 280) = v5;
  *(a2 + 288) = v6;
  return result;
}

void (*sub_2144BE018(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 272);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  *v4 = *(v1 + 264);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2144BE0AC;
}

void sub_2144BE0AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 280);
  if (a2)
  {

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 264) = v5;
    *(v3 + 272) = v4;
    *(v3 + 280) = v6;
    *(v3 + 288) = v7;
    v9 = v2[2];

    sub_213FB7170(v9);
  }

  else
  {

    sub_213FB7170(v8);
    *(v3 + 264) = v5;
    *(v3 + 272) = v4;
    *(v3 + 280) = v6;
    *(v3 + 288) = v7;
  }

  free(v2);
}

uint64_t sub_2144BE16C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  memcpy(__dst, (v1 + 296), 0xB81uLL);
  memcpy(v3, (v1 + 296), 0xB81uLL);
  return sub_213FB2E54(__dst, v5, &qword_27C907278, &qword_2146F49A0);
}

void *sub_2144BE1EC(const void *a1)
{
  memcpy(v4, (v1 + 296), 0xB81uLL);
  sub_213FB2DF4(v4, &qword_27C907278, &qword_2146F49A0);
  return memcpy((v1 + 296), a1, 0xB81uLL);
}

uint64_t sub_2144BE26C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 3272);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 3264);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2144BE2E0(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2144BE390(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2144BE45C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 3272);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 3264);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2144BE4FC;
  }

  return result;
}

uint64_t sub_2144BE4FC(uint64_t *a1, char a2)
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

uint64_t sub_2144BE63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 3256);
  v3 = *(a1 + 3264);
  v4 = *(a1 + 3272);
  v5 = *(a1 + 3280);
  *a2 = *(a1 + 3248);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2144BE698(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 3264);
  v9 = *(a2 + 3272);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 3248) = v4;
  *(a2 + 3256) = v3;
  *(a2 + 3264) = v5;
  *(a2 + 3272) = v6;
  *(a2 + 3280) = v7;
  return result;
}

void (*sub_2144BE72C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 3256);
  v6 = *(v1 + 3264);
  v7 = *(v1 + 3272);
  v8 = *(v1 + 3280);
  *v4 = *(v1 + 3248);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2144BE7D4;
}

void sub_2144BE7D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 3264);
  v10 = *(v3 + 3272);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 3248) = v5;
    *(v3 + 3256) = v4;
    *(v3 + 3264) = v7;
    *(v3 + 3272) = v6;
    *(v3 + 3280) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 3248) = v5;
    *(v3 + 3256) = v4;
    *(v3 + 3264) = v7;
    *(v3 + 3272) = v6;
    *(v3 + 3280) = v8;
  }

  free(v2);
}

uint64_t sub_2144BE8C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 3313))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 3312);
    *a2 = *(result + 3304);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144BE95C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 3313))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 3312);
    *a1 = *(v1 + 3304);
    *(a1 + 8) = v2 & 1;
    return sub_2144BE9F0;
  }

  return result;
}

uint64_t sub_2144BEA24(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 3288) = v4;
  *(a2 + 3296) = v3;
  *(a2 + 3304) = v5;
  *(a2 + 3312) = v6;
  *(a2 + 3313) = v7;
  *(a2 + 3314) = v8;
  return result;
}

void (*sub_2144BEA9C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 3296);
  v6 = *(v1 + 3304);
  v7 = *(v1 + 3312);
  v8 = *(v1 + 3313);
  v9 = *(v1 + 3314);
  *v4 = *(v1 + 3288);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144BEB40;
}

void sub_2144BEB40(uint64_t **a1, char a2)
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

    *(v3 + 3288) = v5;
    *(v3 + 3296) = v4;
    *(v3 + 3304) = v6;
    *(v3 + 3312) = v7;
    *(v3 + 3313) = v8;
    *(v3 + 3314) = v9;
  }

  else
  {

    *(v3 + 3288) = v5;
    *(v3 + 3296) = v4;
    *(v3 + 3304) = v6;
    *(v3 + 3312) = v7;
    *(v3 + 3313) = v8;
    *(v3 + 3314) = v9;
  }

  free(v2);
}

void sub_2144BEC40(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *(a1 + 4) = *(v1 + 8);
  *a1 = v2;
}

int *sub_2144BEC54(int *result)
{
  v2 = *result;
  *(v1 + 8) = *(result + 2);
  *(v1 + 4) = v2;
  return result;
}

void sub_2144BEC88(uint64_t a1, uint64_t a2)
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

void (*sub_2144BEDD0(void *a1))(uint64_t *a1, char a2)
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

void (*sub_2144BEE6C(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_2144BEF04(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 56);
  v8 = *(v2 + 88);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
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

void (*sub_2144BF04C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BF0E8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

void sub_2144BF180(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 96);
  v6 = *(v1 + 120);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 112) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144BF2BC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 112);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C0798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BF354(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C0A84;
}

uint64_t sub_2144BF47C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 169))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 168);
    *a2 = *(result + 160);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144BF510(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 169))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 168);
    *a1 = *(v1 + 160);
    *(a1 + 8) = v2 & 1;
    return sub_2144BF5A4;
  }

  return result;
}

uint64_t sub_2144BF5D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 144) = v4;
  *(a2 + 152) = v3;
  *(a2 + 160) = v5;
  *(a2 + 168) = v6;
  *(a2 + 169) = v7;
  *(a2 + 170) = v8;
  return result;
}

void (*sub_2144BF64C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v8 = *(v1 + 169);
  v9 = *(v1 + 170);
  *v4 = *(v1 + 144);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144BF6EC;
}

void sub_2144BF6EC(uint64_t **a1, char a2)
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

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v6;
    *(v3 + 168) = v7;
    *(v3 + 169) = v8;
    *(v3 + 170) = v9;
  }

  else
  {

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v6;
    *(v3 + 168) = v7;
    *(v3 + 169) = v8;
    *(v3 + 170) = v9;
  }

  free(v2);
}

uint64_t sub_2144BF7C4()
{
  if (*v0)
  {
    return 5065555;
  }

  else
  {
    return 5065549;
  }
}

void sub_2144BF7E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 5065549 && a2 == 0xE300000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 5065555 && a2 == 0xE300000000000000)
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

uint64_t sub_2144BF8B4(uint64_t a1)
{
  v2 = sub_2144BFCCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144BF8F0(uint64_t a1)
{
  v2 = sub_2144BFCCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144BF92C(uint64_t a1)
{
  v2 = sub_2144BFD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144BF968(uint64_t a1)
{
  v2 = sub_2144BFD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144BF9A4(uint64_t a1)
{
  v2 = sub_2144BFD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144BF9E0(uint64_t a1)
{
  v2 = sub_2144BFD20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyMaterial.MaterialType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914860, &qword_214751988);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914868, &qword_214751990);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914870, &qword_214751998);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144BFCCC();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2144BFD20();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2144BFD74();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2144BFCCC()
{
  result = qword_27C914878;
  if (!qword_27C914878)
  {
    result = swift_getWitnessTable(byte_214755764, &type metadata for KeyMaterial.MaterialType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914878);
  }

  return result;
}

unint64_t sub_2144BFD20()
{
  result = qword_27C914880;
  if (!qword_27C914880)
  {
    result = swift_getWitnessTable(byte_214755714, &type metadata for KeyMaterial.MaterialType.SKMCodingKeys, v0, v1);
    atomic_store(result, &qword_27C914880);
  }

  return result;
}

unint64_t sub_2144BFD74()
{
  result = qword_27C914888;
  if (!qword_27C914888)
  {
    result = swift_getWitnessTable(aE_80, &type metadata for KeyMaterial.MaterialType.MKMCodingKeys, v0, v1);
    atomic_store(result, &qword_27C914888);
  }

  return result;
}

uint64_t KeyMaterial.MaterialType.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t KeyMaterial.MaterialType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914890, &qword_2147519A0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914898, &qword_2147519A8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9148A0, &unk_2147519B0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144BFCCC();
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
      *v22 = &type metadata for KeyMaterial.MaterialType;
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
        sub_2144BFD20();
        sub_2146DA0B8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2144BFD74();
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

uint64_t KeyMaterial.index.setter(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*KeyMaterial.index.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 32);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A05C8;
  }

  return result;
}

void (*KeyMaterial.$index.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A0884;
}

uint64_t KeyMaterial.wrappedData.getter()
{
  v1 = *(v0 + 48);
  sub_21402D9F8(v1, *(v0 + 56));
  return v1;
}

uint64_t KeyMaterial.wrappedData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t KeyMaterial.salt.getter()
{
  v1 = *(v0 + 64);
  sub_21402D9F8(v1, *(v0 + 72));
  return v1;
}

uint64_t KeyMaterial.salt.setter(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t KeyMaterial.generation.setter(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2144C06D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 113))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 112);
    *a2 = *(result + 104);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*KeyMaterial.wrapMode.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 113))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 112);
    *a1 = *(v1 + 104);
    *(a1 + 8) = v2 & 1;
    return sub_2144C07FC;
  }

  return result;
}

uint64_t sub_2144C0830(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 88) = v4;
  *(a2 + 96) = v3;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 113) = v7;
  *(a2 + 114) = v8;
  return result;
}

void (*KeyMaterial.$wrapMode.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 113);
  v9 = *(v1 + 114);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144C0944;
}

void sub_2144C0944(uint64_t **a1, char a2)
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

    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v6;
    *(v3 + 112) = v7;
    *(v3 + 113) = v8;
    *(v3 + 114) = v9;
  }

  else
  {

    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v6;
    *(v3 + 112) = v7;
    *(v3 + 113) = v8;
    *(v3 + 114) = v9;
  }

  free(v2);
}

uint64_t KeyMaterial.participantId.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t KeyMaterial.shortKILength.setter(uint64_t result)
{
  *(v1 + 129) = result;
  *(v1 + 130) = BYTE1(result) & 1;
  return result;
}

void sub_2144C0A88(uint64_t a1, uint64_t a2)
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

void (*sub_2144C0BD0(void *a1))(uint64_t *, char)
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

uint64_t (*sub_2144C0C6C(uint64_t *a1))()
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

void sub_2144C0D04(uint64_t a1, uint64_t a2)
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

void (*sub_2144C0E4C(void *a1))(uint64_t *a1, char a2)
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

void (*sub_2144C0EE8(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_2144C0F80(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2144C0FEC(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144C1094(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 80);
  v6 = *(v1 + 104);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 96));

    *(v1 + 96) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144C11CC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2144C1268;
  }

  return result;
}

void sub_2144C1268(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v4 + 80);
    v9 = *(v4 + 104);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 96) = v3;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v5 = *(v4 + 80);
  v9 = *(v4 + 104);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v5(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 96) = v3;
}

uint64_t sub_2144C1440(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 96);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  return result;
}

void (*sub_2144C14B4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2144C1548;
}

void sub_2144C1548(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 96);
  if (a2)
  {

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    v9 = v2[2];

    sub_213FB7170(v9);
  }

  else
  {

    sub_213FB7170(v8);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
  }

  free(v2);
}

void sub_2144C1608(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2144C1670(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144C1718(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 112);
  v6 = *(v1 + 136);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 128) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144C1854(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 128);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2144C18EC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144C18EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v7 = *a1;
    v5 = *(v3 + 112);
    v8 = *(v3 + 136);
    v9 = 0x6E776F6E6B6E753CLL;
    v10 = 0xE90000000000003ELL;
    v11 = 0xD00000000000001CLL;
    v12 = 0x800000021478A360;
    if (v5(&v7, &v8, &v9))
    {

      *(v3 + 128) = v2;
      return;
    }

    goto LABEL_8;
  }

  v7 = *a1;
  v4 = *(v3 + 112);
  v8 = *(v3 + 136);
  v9 = 0x6E776F6E6B6E753CLL;
  v10 = 0xE90000000000003ELL;
  v11 = 0xD00000000000001CLL;
  v12 = 0x800000021478A360;

  if ((v4(&v7, &v8, &v9) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 128) = v2;
}

void sub_2144C1ACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
}

void (*sub_2144C1B40(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2144C1BD8;
}

void sub_2144C1BD8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
  }

  else
  {

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
  }

  free(v2);
}

uint64_t sub_2144C1C98@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 256);
  v20 = *(v1 + 240);
  v21[0] = v3;
  v4 = *(v1 + 160);
  v5 = *(v1 + 192);
  v16 = *(v1 + 176);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 192);
  v8 = *(v1 + 224);
  v18 = *(v1 + 208);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 160);
  v15[0] = *(v1 + 144);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 256);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(v21 + 15) = *(v1 + 271);
  *(a1 + 127) = *(v1 + 271);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v15, v14, &qword_27C907388, &qword_2147519C0);
}

__n128 sub_2144C1D34(uint64_t a1)
{
  v3 = *(v1 + 256);
  v11[6] = *(v1 + 240);
  v12[0] = v3;
  v4 = *(v1 + 192);
  v11[2] = *(v1 + 176);
  v11[3] = v4;
  v5 = *(v1 + 224);
  v11[4] = *(v1 + 208);
  v11[5] = v5;
  v6 = *(v1 + 160);
  v11[0] = *(v1 + 144);
  v11[1] = v6;
  *(v12 + 15) = *(v1 + 271);
  sub_213FB2DF4(v11, &qword_27C907388, &qword_2147519C0);
  v7 = *(a1 + 112);
  *(v1 + 240) = *(a1 + 96);
  *(v1 + 256) = v7;
  *(v1 + 271) = *(a1 + 127);
  v8 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v8;
  v9 = *(a1 + 80);
  *(v1 + 208) = *(a1 + 64);
  *(v1 + 224) = v9;
  result = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = result;
  return result;
}

uint64_t sub_2144C1DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 360);
  v3 = *(v1 + 392);
  v20 = *(v1 + 376);
  v21[0] = v3;
  v4 = *(v1 + 296);
  v5 = *(v1 + 328);
  v16 = *(v1 + 312);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 328);
  v8 = *(v1 + 360);
  v18 = *(v1 + 344);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 296);
  v15[0] = *(v1 + 280);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 392);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(v21 + 15) = *(v1 + 407);
  *(a1 + 127) = *(v1 + 407);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v15, v14, &qword_27C907388, &qword_2147519C0);
}

__n128 sub_2144C1E8C(uint64_t a1)
{
  v3 = v1 + 280;
  v4 = *(v3 + 112);
  v12[6] = *(v3 + 96);
  v13[0] = v4;
  *(v13 + 15) = *(v3 + 127);
  v5 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v5;
  v6 = *(v3 + 80);
  v12[4] = *(v3 + 64);
  v12[5] = v6;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  sub_213FB2DF4(v12, &qword_27C907388, &qword_2147519C0);
  v8 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v8;
  *(v3 + 127) = *(a1 + 127);
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  v10 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v10;
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

void sub_2144C1F40(uint64_t a1, uint64_t a2)
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

void (*sub_2144C2088(void *a1))(uint64_t *a1, char a2)
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

uint64_t (*sub_2144C2124(uint64_t *a1))()
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

uint64_t sub_2144C21BC(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2144C2288(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2164;
  }

  return result;
}

void (*sub_2144C2328(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDCA18(v6, v7);
  return sub_2143A2420;
}

uint64_t sub_2144C23C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 105))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 104);
    *a2 = *(result + 96);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144C245C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 105))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 104);
    *a1 = *(v1 + 96);
    *(a1 + 8) = v2 & 1;
    return sub_2144C24F0;
  }

  return result;
}

uint64_t sub_2144C2524(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 105) = v7;
  *(a2 + 106) = v8;
  return result;
}

void (*sub_2144C2598(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 105);
  v9 = *(v1 + 106);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144C2638;
}

void sub_2144C2638(uint64_t **a1, char a2)
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

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
    *(v3 + 106) = v9;
  }

  else
  {

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
    *(v3 + 106) = v9;
  }

  free(v2);
}

void sub_2144C26F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    *a2 = *(a1 + 128);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2144C2768(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144C2818(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 112);
  v8 = *(v2 + 144);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 128) = a1;
    *(v2 + 136) = a2;
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

void (*sub_2144C2960(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 136);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 128);
    a1[1] = v3;

    return sub_2144C29FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144C29FC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 112);
    v10 = *(v3 + 144);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 128) = v4;
      *(v3 + 136) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 112);
  v10 = *(v3 + 144);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 128) = v4;
  *(v3 + 136) = v2;
}

void sub_2144C2C1C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v6;
  *(a2 + 136) = v5;
  *(a2 + 144) = v7;
}

void (*sub_2144C2C94(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 120);
  v7 = *(v1 + 128);
  v6 = *(v1 + 136);
  v8 = *(v1 + 144);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144C2D2C;
}

void sub_2144C2D2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
  }

  else
  {

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
  }

  free(v2);
}

void sub_2144C2E34(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
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

uint64_t (*sub_2144C2F7C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_2144C5534;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144C3018(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144C5538;
}

void sub_2144C30B0(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 48);
  v6 = *(v1 + 72);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 64) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2144C31EC(void *a1))()
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2144C553C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2144C3284(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v7 = *a1;
    v5 = *(v3 + 48);
    v8 = *(v3 + 72);
    v9 = 0x6E776F6E6B6E753CLL;
    v10 = 0xE90000000000003ELL;
    v11 = 0xD00000000000001CLL;
    v12 = 0x800000021478A360;
    if (v5(&v7, &v8, &v9))
    {

      *(v3 + 64) = v2;
      return;
    }

    goto LABEL_8;
  }

  v7 = *a1;
  v4 = *(v3 + 48);
  v8 = *(v3 + 72);
  v9 = 0x6E776F6E6B6E753CLL;
  v10 = 0xE90000000000003ELL;
  v11 = 0xD00000000000001CLL;
  v12 = 0x800000021478A360;

  if ((v4(&v7, &v8, &v9) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 64) = v2;
}

uint64_t (*sub_2144C3464(uint64_t *a1))()
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2144C5540;
}

void sub_2144C34FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
  }

  else
  {

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
  }

  free(v2);
}

void sub_2144C35BC(uint64_t a1, uint64_t a2)
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

void (*sub_2144C3704(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_21447B160;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144C37A0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21447B164;
}

uint64_t sub_2144C3898@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 208);
  v13 = *(v1 + 192);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 224);
  v4 = v15;
  v5 = *(v1 + 144);
  v10[0] = *(v1 + 128);
  v10[1] = v5;
  v6 = *(v1 + 176);
  v11 = *(v1 + 160);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_2142F2518(v10, v9);
}

__n128 sub_2144C38F4(uint64_t a1)
{
  v3 = *(v1 + 208);
  v9[4] = *(v1 + 192);
  v9[5] = v3;
  v10 = *(v1 + 224);
  v4 = *(v1 + 144);
  v9[0] = *(v1 + 128);
  v9[1] = v4;
  v5 = *(v1 + 176);
  v9[2] = *(v1 + 160);
  v9[3] = v5;
  sub_2142F2470(v9);
  v6 = *(a1 + 80);
  *(v1 + 192) = *(a1 + 64);
  *(v1 + 208) = v6;
  *(v1 + 224) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v7;
  result = *(a1 + 48);
  *(v1 + 160) = *(a1 + 32);
  *(v1 + 176) = result;
  return result;
}

void sub_2144C3984(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 248);
  if (v3 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

double sub_2144C39F0(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144C3A98(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 232);
  v6 = *(v1 + 256);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {
    sub_213FB7170(*(v1 + 248));

    *(v1 + 248) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144C3BD0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 248);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2144C3C6C;
  }

  return result;
}

void sub_2144C3C6C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v4 + 232);
    v9 = *(v4 + 256);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 248) = v3;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v5 = *(v4 + 232);
  v9 = *(v4 + 256);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v5(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 248) = v3;
}

uint64_t sub_2144C3E44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 248);

  sub_213FBE134(v5);

  result = sub_213FB7170(v7);
  *(a2 + 232) = v4;
  *(a2 + 240) = v3;
  *(a2 + 248) = v5;
  *(a2 + 256) = v6;
  return result;
}

void (*sub_2144C3EB8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  *v4 = *(v1 + 232);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2144C3F4C;
}

void sub_2144C3F4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 248);
  if (a2)
  {

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v6;
    *(v3 + 256) = v7;
    v9 = v2[2];

    sub_213FB7170(v9);
  }

  else
  {

    sub_213FB7170(v8);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v6;
    *(v3 + 256) = v7;
  }

  free(v2);
}

uint64_t sub_2144C400C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  memcpy(__dst, (v1 + 264), 0xB81uLL);
  memcpy(v3, (v1 + 264), 0xB81uLL);
  return sub_213FB2E54(__dst, v5, &qword_27C907278, &qword_2146F49A0);
}

void *sub_2144C408C(const void *a1)
{
  memcpy(v4, (v1 + 264), 0xB81uLL);
  sub_213FB2DF4(v4, &qword_27C907278, &qword_2146F49A0);
  return memcpy((v1 + 264), a1, 0xB81uLL);
}

unint64_t sub_2144C4110()
{
  result = qword_27C9148A8;
  if (!qword_27C9148A8)
  {
    result = swift_getWitnessTable(byte_2147519C8, &type metadata for GroupSessionParticipantUpdateType, v0, v1);
    atomic_store(result, &qword_27C9148A8);
  }

  return result;
}

unint64_t sub_2144C4218()
{
  result = qword_27C9148B0;
  if (!qword_27C9148B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyMaterial.MaterialType, &type metadata for KeyMaterial.MaterialType, v0, v1);
    atomic_store(result, &qword_27C9148B0);
  }

  return result;
}

uint64_t sub_2144C4348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144C4394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2144C43DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_SDySSSays6UInt64VGGSgSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor32CSDMConversationActivityMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144C4488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 3315))
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

uint64_t sub_2144C44D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 3304) = 0;
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
    *(result + 3314) = 0;
    *(result + 3312) = 0;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
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
      *(result + 3315) = 1;
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

    *(result + 3315) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy171_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2144C48D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 171))
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

uint64_t sub_2144C4918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 170) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 171) = 1;
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

    *(result + 171) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy131_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2144C49CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 131))
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

uint64_t sub_2144C4A14(uint64_t result, int a2, int a3)
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
    *(result + 130) = 0;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 131) = 1;
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

    *(result + 131) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144C4AA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 411))
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

uint64_t sub_2144C4AEC(uint64_t result, int a2, int a3)
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
    *(result + 410) = 0;
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
      *(result + 411) = 1;
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

    *(result + 411) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2144C4BE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_2144C4C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144C4CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 3209))
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

uint64_t sub_2144C4CF0(uint64_t result, int a2, int a3)
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
    *(result + 3208) = 0;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
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
      *(result + 3209) = 1;
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

    *(result + 3209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}
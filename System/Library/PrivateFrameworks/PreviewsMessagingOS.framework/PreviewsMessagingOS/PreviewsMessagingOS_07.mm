uint64_t sub_25F48001C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4800A0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F480110(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48019C(uint64_t *a1@<X8>)
{
  v2 = 0x77656976657270;
  if (*v1)
  {
    v2 = 0x7972747369676572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4801DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B0EC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4802AC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F480394(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F480468(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F48054C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48B140(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F48057C(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0x696D697263736964;
  v4 = 0xEC00000065707954;
  v5 = 0x7972747369676572;
  if (*v1 != 2)
  {
    v5 = 0x4E79616C70736964;
    v4 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v3 = 0x4D77656976657270;
    v2 = 0xEF61746164617465;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25F480620()
{
  v1 = 0x696D697263736964;
  v2 = 0x7972747369676572;
  if (*v0 != 2)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v1 = 0x4D77656976657270;
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

uint64_t PreviewFlavor.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[3];
  v36 = v0[2];
  v37 = v4;
  v38 = *(v0 + 8);
  v5 = v0[1];
  v34 = *v0;
  v35 = v5;
  v19 = &v34;
  v6 = sub_25F4820E4();
  sub_25F482138();
  sub_25F4A25C0();
  v7 = v34;
  v8 = v35;
  v9 = v37;
  if ((v37 & 0x8000000000000000) != 0)
  {
    v26[0] = v34;
    *(&v30 + 1) = &type metadata for PreviewFlavor.Key;
    *&v31 = v6;
    LOBYTE(v29) = 2;
    sub_25F42F2B0();

    sub_25F4A2520();

    __swift_destroy_boxed_opaque_existential_1(&v29);
    v26[0] = v8;
    *(&v30 + 1) = &type metadata for PreviewFlavor.Key;
    *&v31 = v6;
    LOBYTE(v29) = 3;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v15 = *(&v37 + 1);
    v16 = v38;
    v14 = v36;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v20[3] = &type metadata for PreviewFlavor.Key;
    v20[4] = v6;
    LOBYTE(v20[0]) = 1;
    v10 = v0[3];
    v26[2] = v0[2];
    v27 = v10;
    v11 = *(v0 + 8);
    v12 = v0[1];
    v26[0] = *v0;
    v26[1] = v12;
    v28 = v11;
    *&v27 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    sub_25F404B8C(v26, &v29, &qword_27FD6F828, &qword_25F4AFB70);
    sub_25F48218C();
    sub_25F4A2520();
    v31 = v23;
    v32 = v24;
    v33 = v25;
    v29 = v21;
    v30 = v22;
    sub_25F3F21F4(&v29, &qword_27FD6F838, &qword_25F4AFB78);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = v7;
    v22 = v8;
    v23 = v14;
    *&v24 = v9;
    *(&v24 + 1) = v15;
    v25 = v16;
    sub_25F4A2940();
    sub_25F4A2540();
    return (*(v17 + 8))(v3, v18);
  }
}

void PreviewFlavor.init(propertyListValue:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = &type metadata for PreviewFlavor.Key;
  v9 = sub_25F4820E4();
  *(&v21 + 1) = v9;
  LOBYTE(v20[0]) = 0;
  sub_25F482138();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    (*(v6 + 16))(v8, a1, v5);
    sub_25F48218C();
    sub_25F4A2950();
    (*(v6 + 8))(a1, v5);

LABEL_5:
    v16 = v20[0];
    v15 = v20[1];
    v12 = v20[2];
    v13 = v21;
    v10 = v22;
    v11 = v24;
    v14 = v23 & 0x10301;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  if ((v19[0] & 1) == 0)
  {
    v19[3] = &type metadata for PreviewFlavor.Key;
    v19[4] = v9;
    LOBYTE(v19[0]) = 1;
    sub_25F48218C();
    sub_25F4A2530();
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v19);
    goto LABEL_5;
  }

  *&v21 = &type metadata for PreviewFlavor.Key;
  *(&v21 + 1) = v9;
  LOBYTE(v20[0]) = 2;
  sub_25F42F2B0();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v18 = v19[0];
  v25 = v19[1];
  *&v21 = &type metadata for PreviewFlavor.Key;
  *(&v21 + 1) = v9;
  LOBYTE(v20[0]) = 3;
  sub_25F4A2580();
  (*(v6 + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v12 = v19[5];
  *&v13 = v19[6];
  v14 = 0x8000000000000000;
  v15 = v25;
  v16 = v18;
LABEL_6:
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 40) = v10;
  *(a2 + 48) = v14;
  *(a2 + 56) = v11;
}

uint64_t PreviewFlavor.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  if ((*(v1 + 48) & 0x8000000000000000) != 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    if (v3)
    {
      sub_25F4A3320();

      return sub_25F4A2C60();
    }

    else
    {
      return sub_25F4A3320();
    }
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    return PreviewMetadata.hash(into:)(a1);
  }
}

uint64_t PreviewFlavor.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  sub_25F4A3300();
  if (v2 < 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    sub_25F4A3320();
    if (v1)
    {
      sub_25F4A2C60();
    }
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    PreviewMetadata.hash(into:)(v4);
  }

  return sub_25F4A3350();
}

uint64_t sub_25F480EFC(uint64_t a1)
{
  v3 = *(v1 + 24);
  if ((*(v1 + 48) & 0x8000000000000000) != 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    if (v3)
    {
      sub_25F4A3320();

      return sub_25F4A2C60();
    }

    else
    {
      return sub_25F4A3320();
    }
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    return PreviewMetadata.hash(into:)(a1);
  }
}

uint64_t sub_25F481008(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  sub_25F4A3300();
  if (v3 < 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    sub_25F4A3320();
    if (v2)
    {
      sub_25F4A2C60();
    }
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    PreviewMetadata.hash(into:)(v5);
  }

  return sub_25F4A3350();
}

uint64_t PreviewMetadata.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t PreviewMetadata.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

__n128 PreviewMetadata.requestedTraits.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  v3 = v1[3].n128_u8[1];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 PreviewMetadata.requestedTraits.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u8[0] = v2;
  v1[3].n128_u8[1] = v3;
  return result;
}

uint64_t PreviewMetadata.displayName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PreviewMetadata.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 PreviewMetadata.init(contentDomain:contentCategory:supportsOnDevice:supportsInteractive:requestedTraits:isPreviewGroup:displayName:)@<Q0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, __n128 *a5@<X4>, unsigned __int8 a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a5[1].n128_u8[0];
  v12 = a5[1].n128_u8[1];
  a9->n128_u8[0] = *a1;
  a9->n128_u64[1] = v9;
  a9[1].n128_u64[0] = v10;
  a9[1].n128_u8[8] = a3;
  a9[1].n128_u8[9] = a4;
  result = *a5;
  a9[2] = *a5;
  a9[3].n128_u8[0] = v11;
  a9[3].n128_u8[1] = v12;
  a9[3].n128_u8[2] = a6;
  a9[3].n128_u64[1] = a7;
  a9[4].n128_u64[0] = a8;
  return result;
}

unint64_t PreviewMetadata.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[7];
  v3 = v0[8];

  sub_25F4A30F0();

  MEMORY[0x25F8DD480](v1, v2);
  MEMORY[0x25F8DD480](0x616C70736964202CLL, 0xEF203A656D614E79);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7104878;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x25F8DD480](v5, v6);

  MEMORY[0x25F8DD480](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_25F481440(uint64_t a1)
{
  sub_25F4A2C60();
}

unint64_t sub_25F48159C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48B18C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4815CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E69616D6FLL;
  v4 = 0x44746E65746E6F63;
  v5 = 0xEE0070756F724777;
  v6 = 0x6569766572507369;
  if (v2 != 5)
  {
    v6 = 0x4E79616C70736964;
    v5 = 0xEB00000000656D61;
  }

  v7 = 0x800000025F4B6BD0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x6574736575716572;
    v7 = 0xEF73746961725464;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF79726F67657461;
  v10 = 0x43746E65746E6F63;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x800000025F4B6BB0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_25F4816F0()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6569766572507369;
  if (v1 != 5)
  {
    v3 = 0x4E79616C70736964;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6574736575716572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x43746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_25F481868(char *a1)
{
  v1 = *a1;
  v25 = *(a1 + 8);
  v2 = a1[24];
  v3 = a1[25];
  v4 = a1[48];
  v5 = a1[50];
  v6 = a1[49];
  v10 = *(a1 + 56);
  v24 = 0;
  v23 = v1;
  v22 = 1;
  v21 = v25;
  v20 = 2;
  v19 = v2;
  v18 = 3;
  v17 = v3;
  v16 = 4;
  v14 = *(a1 + 2);
  v15 = v4 & 1 | (v6 << 8);
  v13 = 5;
  v12 = v5;
  v11 = 6;
  sub_25F48B430(&v25, v9);
  sub_25F488420();
  sub_25F4500BC();
  sub_25F406680();
  sub_25F488474();
  v7 = sub_25F4A2880();

  return v7;
}

uint64_t PreviewMetadata.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = &type metadata for PreviewMetadata.Key;
  v5 = sub_25F488420();
  v22 = v5;
  LOBYTE(v20[0]) = 0;
  sub_25F4500BC();
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v6 = v25;
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 1;
    sub_25F406680();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v8 = v24;
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 3;
    sub_25F4A2530();
    v12 = v8;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v9 = v23;
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 4;
    sub_25F488474();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 6;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v6;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19;
    *(a2 + 24) = v12;
    *(a2 + 25) = v9;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
    *(a2 + 49) = v17;
    *(a2 + 50) = v13 & 1;
    *(a2 + 56) = v13;
  }

  return result;
}

uint64_t PreviewMetadata.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  v8 = *(v1 + 64);
  sub_25F4A2C60();

  sub_25F4A2C60();
  sub_25F4A3320();
  sub_25F4A3320();
  if (v4)
  {
    MEMORY[0x25F8DDB20]((v3 | v2) != 0);
  }

  else
  {
    MEMORY[0x25F8DDB20](2);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x25F8DDB50](v5);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x25F8DDB50](v6);
  }

  sub_25F4A2C60();

  sub_25F4A3320();
  if (!v8)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t PreviewMetadata.hashValue.getter()
{
  sub_25F4A3300();
  PreviewMetadata.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F482048()
{
  sub_25F4A3300();
  PreviewMetadata.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F48208C(uint64_t a1)
{
  sub_25F4A3300();
  PreviewMetadata.hash(into:)(v2);
  return sub_25F4A3350();
}

_BYTE *sub_25F4820CC(_BYTE *result, BOOL *a2)
{
  v3 = *(v2 + 16);
  *result = 0;
  *a2 = *(v3 + 48) < 0;
  return result;
}

unint64_t sub_25F4820E4()
{
  result = qword_27FD6F818;
  if (!qword_27FD6F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F818);
  }

  return result;
}

unint64_t sub_25F482138()
{
  result = qword_27FD6F820;
  if (!qword_27FD6F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F820);
  }

  return result;
}

unint64_t sub_25F48218C()
{
  result = qword_27FD6F830;
  if (!qword_27FD6F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F830);
  }

  return result;
}

uint64_t PlaygroundMetadata.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlaygroundMetadata.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

PreviewsMessagingOS::PlaygroundMetadata __swiftcall PlaygroundMetadata.init(displayName:)(Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.displayName.value._object = v6;
  result.displayName.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static PlaygroundMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_25F4A3270() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_25F482324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F4A3270();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F4823BC(uint64_t a1)
{
  v2 = sub_25F4884C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F4823F8(uint64_t a1)
{
  v2 = sub_25F4884C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaygroundMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F850, &qword_25F4AFB80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F4884C8();
  sub_25F4A3380();
  sub_25F4A31E0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PlaygroundMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F860, &qword_25F4AFB88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F4884C8();
  sub_25F4A3370();
  if (!v2)
  {
    v9 = sub_25F4A31A0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25F4826FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F850, &qword_25F4AFB80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F4884C8();
  sub_25F4A3380();
  sub_25F4A31E0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25F482838(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_25F4A3270() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_25F4828AC()
{
  if (*v0)
  {
    return 0x7272457765726874;
  }

  else
  {
    return 0x6F4E646574697865;
  }
}

uint64_t sub_25F4828F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F4E646574697865 && a2 == 0xEE00796C6C616D72;
  if (v6 || (sub_25F4A3270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7272457765726874 && a2 == 0xEA0000000000726FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();

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

uint64_t sub_25F4829F0(uint64_t a1)
{
  v2 = sub_25F48851C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F482A2C(uint64_t a1)
{
  v2 = sub_25F48851C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F482A68@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25F482AA4(uint64_t a1)
{
  v2 = sub_25F4885C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F482AE0(uint64_t a1)
{
  v2 = sub_25F4885C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F482B20()
{
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  return sub_25F4A3350();
}

uint64_t sub_25F482B90(uint64_t a1)
{
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  return sub_25F4A3350();
}

uint64_t sub_25F482BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F4A3270();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F482C7C(uint64_t a1)
{
  v2 = sub_25F488570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F482CB8(uint64_t a1)
{
  v2 = sub_25F488570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaygroundEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F868, &qword_25F4AFB90);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F870, &qword_25F4AFB98);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v17 = &v16 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F878, &qword_25F4AFBA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F48851C();
  sub_25F4A3380();
  if (v12)
  {
    v24 = 1;
    sub_25F488570();
    sub_25F4A31D0();
    v13 = v22;
    sub_25F4A31F0();
    (*(v21 + 8))(v5, v13);
  }

  else
  {
    v23 = 0;
    sub_25F4885C4();
    v15 = v17;
    sub_25F4A31D0();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t PlaygroundEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F898, &qword_25F4AFBA8);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F8A0, &qword_25F4AFBB0);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F8A8, &qword_25F4AFBB8);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F48851C();
  v12 = v39;
  sub_25F4A3370();
  if (v12)
  {
    goto LABEL_7;
  }

  v33 = v6;
  v14 = v36;
  v13 = v37;
  v39 = a1;
  v15 = v11;
  v16 = sub_25F4A31C0();
  if (*(v16 + 16) != 1)
  {
    v20 = sub_25F4A3120();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F8B0, &qword_25F4AFBC0);
    *v22 = &type metadata for PlaygroundEvent;
    sub_25F4A3190();
    sub_25F4A3110();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v38 + 8))(v11, v9);
    swift_unknownObjectRelease();
    a1 = v39;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  if (*(v16 + 32))
  {
    v41 = 1;
    sub_25F488570();
    v17 = v5;
    sub_25F4A3180();
    v18 = v15;
    v19 = v38;
    v25 = v13;
    v26 = v17;
    v34 = v18;
    v29 = sub_25F4A31B0();
    v31 = v30;
    (*(v35 + 8))(v26, v14);
    (*(v19 + 8))(v34, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    sub_25F4885C4();
    v23 = v8;
    sub_25F4A3180();
    v24 = v38;
    v25 = v13;
    (*(v34 + 1))(v23, v33);
    (*(v24 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v29 = 0;
    v31 = 0;
  }

  *v25 = v29;
  v25[1] = v31;
  v27 = v39;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t IOSurfacePayload.init(surfaceID:scaleFactor:width:height:selectableRegions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_25F483520()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48360C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4836E4(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F4837CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48B1D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4837FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x4965636166727573;
  v5 = 0xE500000000000000;
  v6 = 0x6874646977;
  v7 = 0xE600000000000000;
  v8 = 0x746867696568;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000025F4B69B0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636146656C616373;
    v3 = 0xEB00000000726F74;
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

uint64_t sub_25F4838A4()
{
  v1 = *v0;
  v2 = 0x4965636166727573;
  v3 = 0x6874646977;
  v4 = 0x746867696568;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636146656C616373;
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

uint64_t sub_25F483998(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v23 = 0;
  v21 = v1;
  v22 = 0;
  v20 = 1;
  v18 = v2;
  v19 = 0;
  v17 = 2;
  v15 = v3;
  v16 = 0;
  v14 = 3;
  v12 = v4;
  v13 = 0;
  v11 = 4;
  v10 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  v7 = sub_25F488620();
  v8 = sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  return sub_25F4A28A0(&v23, &v21, &v20, &v18, &v17, &v15, &v14, &v12, &v11, &v10, &type metadata for IOSurfacePayload.Key, MEMORY[0x277D84CC0], &type metadata for IOSurfacePayload.Key, MEMORY[0x277D85048], &type metadata for IOSurfacePayload.Key, MEMORY[0x277D85048], &type metadata for IOSurfacePayload.Key, MEMORY[0x277D85048], &type metadata for IOSurfacePayload.Key, v6, v7, MEMORY[0x277D40638], v7, MEMORY[0x277D40390], v7, MEMORY[0x277D40390], v7, MEMORY[0x277D40390], v7, v8);
}

uint64_t IOSurfacePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &type metadata for IOSurfacePayload.Key;
  v5 = sub_25F488620();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v6 = v17;
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 3;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
    sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    *a2 = v6;
    *(a2 + 8) = v13;
    *(a2 + 16) = v12;
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
  }

  return result;
}

uint64_t PreviewDescription.contentType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PreviewDescription.contentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PreviewDescription.device.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PreviewDescription.device.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PreviewDescription.displayName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PreviewDescription.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 PreviewDescription.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 PreviewDescription.layout.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  return result;
}

uint64_t PreviewDescription.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  a1[1] = v2;
}

uint64_t PreviewDescription.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t PreviewDescription.init(index:contentType:device:displayName:layout:contentDomain:supportsLive:supportsOnDevice:interfaceOrientation:contentCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, char a12, char *a13, uint64_t *a14)
{
  v15 = *(a8 + 16);
  v16 = *a10;
  v17 = *a13;
  v18 = *a14;
  v19 = a14[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = *a8;
  *(a9 + 72) = v15;
  *(a9 + 73) = v16;
  *(a9 + 74) = a11;
  *(a9 + 75) = a12;
  *(a9 + 76) = v17;

  *(a9 + 80) = v18;
  *(a9 + 88) = v19;
  return result;
}

unint64_t sub_25F484190(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x54747865746E6F63;
    if (a1 != 5)
    {
      v7 = 0x7374726F70707573;
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
    v1 = 0x7865646E69;
    v2 = 0x656369766564;
    v3 = 0x4E79616C70736964;
    if (a1 != 3)
    {
      v3 = 0x74756F79616CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x54746E65746E6F63;
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

uint64_t sub_25F4842EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25F484190(*a1);
  v5 = v4;
  if (v3 == sub_25F484190(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F484374()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F484190(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4843D8(uint64_t a1)
{
  sub_25F484190(*v1);
  sub_25F4A2C60();
}

uint64_t sub_25F48442C(uint64_t a1)
{
  v2 = *v1;
  sub_25F4A3300();
  sub_25F484190(v2);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F48448C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48B224(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25F4844BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F484190(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F484558(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 3);
  v38 = *(a1 + 5);
  v39 = v4;
  v5 = *(a1 + 72);
  v6 = *(a1 + 73);
  v7 = *(a1 + 74);
  v8 = *(a1 + 75);
  v9 = *(a1 + 76);
  v37 = *(a1 + 5);
  v36 = 0;
  v34 = v1;
  v35 = 0;
  v33 = 1;
  v31 = v2;
  v32 = v3;
  v30 = 2;
  v29 = *(a1 + 3);
  v28 = 3;
  v27 = *(a1 + 5);
  v26 = 4;
  v23 = *(a1 + 7);
  v24 = v5 & 1;
  v25 = 0;
  v22 = 5;
  v21 = v6;
  v20 = 6;
  v19 = v7;
  v18 = 7;
  v17 = v8;
  v16 = 8;
  v15 = v9;
  v14 = 9;
  v13 = v37;

  sub_25F404B8C(&v39, v12, &qword_27FD6D5F0, &qword_25F4A4420);
  sub_25F404B8C(&v38, v12, &qword_27FD6D5F0, &qword_25F4A4420);
  sub_25F404B8C(&v37, v12, &qword_27FD6FCD0, &qword_25F4B2998);
  sub_25F48867C();
  sub_25F47CE80();
  sub_25F4500BC();
  sub_25F43AA08();
  sub_25F406680();
  v10 = sub_25F4A2850();

  sub_25F3F21F4(&v38, &qword_27FD6D5F0, &qword_25F4A4420);
  sub_25F3F21F4(&v39, &qword_27FD6D5F0, &qword_25F4A4420);

  return v10;
}

uint64_t PreviewDescription.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = &type metadata for PreviewDescription.Key;
  v5 = sub_25F48867C();
  v17 = v5;
  LOBYTE(v15[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 4;
    sub_25F47CE80();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v18 = v14;
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 5;
    sub_25F4500BC();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v12 == 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v12;
    }

    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 6;
    sub_25F4A2580();
    v19 = v8;
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 7;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 8;
    sub_25F43AA08();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = v12;
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 9;
    sub_25F406680();
    sub_25F4A2580();
    if (v12 == 4)
    {
      v9 = 0;
    }

    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    v11 = v18;
    *a2 = v12;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = v11;
    *(a2 + 73) = v19;
    *(a2 + 74) = (v12 == 2) | v12 & 1;
    *(a2 + 75) = (v12 == 2) | v12 & 1;
    *(a2 + 76) = v9;
    *(a2 + 80) = v12;
    *(a2 + 88) = v13;
  }

  return result;
}

Swift::Void __swiftcall PreviewDescription.describe(with:)(Swift::OpaquePointer *with)
{
  v36 = *(v1 + 8);
  v2 = *(v1 + 16);
  v25 = *(v1 + 24);
  v38 = *(v1 + 32);
  v24 = *(v1 + 40);
  v3 = *(v1 + 56);
  v37 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 74);
  v7 = *(v1 + 75);
  v34 = *(v1 + 76);
  v35 = *(v1 + 73);
  v32 = *(v1 + 88);
  v33 = *(v1 + 80);
  v39 = &unk_287178350;
  sub_25F486004(&v39);
  v8 = v39;
  v9 = *(v39 + 2);
  if (v9)
  {
    v10 = 1702195828;
    if (v7)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    v31 = v11;
    if (v7)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v30 = v12;
    if (!v6)
    {
      v10 = 0x65736C6166;
    }

    v29 = v10;
    if (v6)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v28 = v13;
    v14 = 0x74616854657A6973;
    if (!(v3 | v4))
    {
      v14 = 0x656369766564;
    }

    v15 = 0xEC00000073746946;
    if (!(v3 | v4))
    {
      v15 = 0xE600000000000000;
    }

    if (!v5)
    {
      v14 = 0x6465786966;
    }

    v27 = v14;
    if (v5)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v26 = v16;
    v17 = 32;
    while (1)
    {
      v18 = v8[v17];
      if (v18 > 4)
      {
        break;
      }

      if (v8[v17] <= 1u)
      {
        if (!v8[v17])
        {
          sub_25F488724();
          v39 = sub_25F4A3080();
          v40 = v21;
          goto LABEL_57;
        }

        v39 = v36;
        v40 = v2;

        sub_25F4A2D70();
LABEL_58:

        goto LABEL_59;
      }

      if (v18 == 2)
      {
        if (v38)
        {
          v39 = v25;
          v40 = v38;

          goto LABEL_57;
        }
      }

      else
      {
        if (v18 != 3)
        {
          v39 = v27;
          v40 = v26;
          goto LABEL_57;
        }

        if (v37)
        {
          v39 = v24;
          v40 = v37;

          goto LABEL_57;
        }
      }

LABEL_59:
      ++v17;
      if (!--v9)
      {
        goto LABEL_63;
      }
    }

    if (v8[v17] <= 6u)
    {
      if (v18 == 5)
      {
        if (v35)
        {
          v22 = 0x746567646977;
          if (v35 == 1)
          {
            v23 = 0xE600000000000000;
          }

          else
          {
            v22 = 0x6163696C706D6F63;
            v23 = 0xEC0000006E6F6974;
          }
        }

        else
        {
          v22 = 0x746163696C707061;
          v23 = 0xEB000000006E6F69;
        }

        v39 = v22;
        v40 = v23;
      }

      else
      {
        v39 = v29;
        v40 = v28;
      }
    }

    else
    {
      if (v18 == 7)
      {
        v39 = v31;
        v40 = v30;
        goto LABEL_57;
      }

      if (v18 != 8)
      {
        v39 = v33;
        v40 = v32;
        sub_25F4886D0();

        sub_25F4A2D70();
        goto LABEL_58;
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v19 = 0xED00007466654C65;
        }

        else
        {
          v19 = 0xEE00746867695265;
        }

        v20 = 0x70616373646E616CLL;
      }

      else if (v34)
      {
        v20 = 0xD000000000000012;
        v19 = 0x800000025F4B6AF0;
      }

      else
      {
        v19 = 0xE800000000000000;
        v20 = 0x7469617274726F70;
      }

      v39 = v20;
      v40 = v19;
    }

LABEL_57:
    sub_25F4A2D70();
    goto LABEL_58;
  }

LABEL_63:
}

uint64_t sub_25F48535C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 4)
  {
    v13 = 0xD000000000000010;
    v14 = 0x800000025F4B6BB0;
    v15 = 0x800000025F4B6190;
    v16 = 0xD000000000000014;
    if (v2 != 8)
    {
      v16 = 0xD000000000000015;
      v15 = 0x800000025F4B6C40;
    }

    if (v2 != 7)
    {
      v13 = v16;
      v14 = v15;
    }

    v17 = 0x54747865746E6F63;
    v18 = 0xEB00000000657079;
    if (v2 != 5)
    {
      v17 = 0x7374726F70707573;
      v18 = 0xEC0000006576694CLL;
    }

    if (*a1 <= 6u)
    {
      v10 = v17;
    }

    else
    {
      v10 = v13;
    }

    if (v2 <= 6)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (*a2 > 4u)
    {
      goto LABEL_16;
    }

LABEL_34:
    if (*a2 > 1u)
    {
      if (v3 == 2)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x656369766564)
        {
          goto LABEL_58;
        }
      }

      else if (v3 == 3)
      {
        v12 = 0xEB00000000656D61;
        if (v10 != 0x4E79616C70736964)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x74756F79616CLL)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_56;
    }

    if (!*a2)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7865646E69)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v19 = 0x6E65746E6F63;
    goto LABEL_55;
  }

  v4 = 0xE500000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x656369766564;
  v7 = 0x4E79616C70736964;
  v8 = 0xEB00000000656D61;
  if (v2 != 3)
  {
    v7 = 0x74756F79616CLL;
    v8 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x54746E65746E6F63;
  if (*a1)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v9 = 0x7865646E69;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*a2 <= 4u)
  {
    goto LABEL_34;
  }

LABEL_16:
  if (*a2 > 6u)
  {
    if (v3 == 7)
    {
      v12 = 0x800000025F4B6BB0;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_58;
      }
    }

    else if (v3 == 8)
    {
      v12 = 0x800000025F4B6190;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v12 = 0x800000025F4B6C40;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_56;
  }

  if (v3 != 5)
  {
    v12 = 0xEC0000006576694CLL;
    if (v10 != 0x7374726F70707573)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v19 = 0x7865746E6F63;
LABEL_55:
  v12 = 0xEB00000000657079;
  if (v10 != (v19 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
  {
LABEL_58:
    v20 = sub_25F4A3270();
    goto LABEL_59;
  }

LABEL_56:
  if (v11 != v12)
  {
    goto LABEL_58;
  }

  v20 = 0;
LABEL_59:

  return v20 & 1;
}

uint64_t PreviewContentDomain.rawValue.getter()
{
  v1 = 0x746567646977;
  if (*v0 != 1)
  {
    v1 = 0x6163696C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746163696C707061;
  }
}

__n128 PreviewDescription.previewTraits.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 76);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

uint64_t PreviewDescription.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 88);
  MEMORY[0x25F8DDB20](*v1);
  sub_25F4A2C60();
  if (v2)
  {
    sub_25F4A3320();
    sub_25F4A2C60();
    v8 = v7;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_25F4A3320();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    MEMORY[0x25F8DDB20](2);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x25F8DDB50](v9);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x25F8DDB50](v10);
    goto LABEL_14;
  }

  sub_25F4A3320();
  v8 = v7;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_25F4A3320();
  sub_25F4A2C60();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  MEMORY[0x25F8DDB20]((v3 | v5) != 0);
LABEL_14:
  sub_25F4A2C60();

  sub_25F4A3320();
  sub_25F4A3320();
  sub_25F4A2C60();

  if (!v8)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t PreviewDescription.hashValue.getter()
{
  sub_25F4A3300();
  PreviewDescription.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F485A74()
{
  sub_25F4A3300();
  PreviewDescription.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F485AB8(uint64_t a1)
{
  sub_25F4A3300();
  PreviewDescription.hash(into:)(v2);
  return sub_25F4A3350();
}

uint64_t sub_25F485AFC(uint64_t a1)
{
  sub_25F48B2C4();

  return sub_25F4A29D0();
}

PreviewsMessagingOS::PreviewContentDomain_optional __swiftcall PreviewContentDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25F485B94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746567646977;
  if (v2 != 1)
  {
    v4 = 0x6163696C706D6F63;
    v3 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746163696C707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746567646977;
  if (*a2 != 1)
  {
    v8 = 0x6163696C706D6F63;
    v7 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746163696C707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000006E6F69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F485CA4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F485D54(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F485DF0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F485EA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0xE600000000000000;
  v5 = 0x746567646977;
  if (v2 != 1)
  {
    v5 = 0x6163696C706D6F63;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746163696C707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F485F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B270();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F486004(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F487B5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25F486070(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25F486070(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F4A3200();
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
        v5 = sub_25F4A2DC0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25F4864DC(v7, v8, a1, v4);
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
    return sub_25F486168(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F486168(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = 0xEB00000000657079;
    v5 = 0x54746E65746E6F63;
    v6 = (*a4 + a3);
    v7 = result - a3;
    v30 = *a4;
LABEL_6:
    v28 = v6;
    v29 = a3;
    v8 = *(v30 + a3);
    v27 = v7;
    while (1)
    {
      if (v8 > 4u)
      {
        if (v8 <= 6u)
        {
          if (v8 == 5)
          {
            v13 = 0x54747865746E6F63;
            v14 = 0xEB00000000657079;
          }

          else
          {
            v13 = 0x7374726F70707573;
            v14 = 0xEC0000006576694CLL;
          }
        }

        else if (v8 == 7)
        {
          v13 = 0xD000000000000010;
          v14 = 0x800000025F4B6BB0;
        }

        else if (v8 == 8)
        {
          v13 = 0xD000000000000014;
          v14 = 0x800000025F4B6190;
        }

        else
        {
          v13 = 0xD000000000000015;
          v14 = 0x800000025F4B6C40;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x4E79616C70736964;
        }

        else
        {
          v9 = 0x74756F79616CLL;
        }

        if (v8 == 3)
        {
          v10 = 0xEB00000000656D61;
        }

        else
        {
          v10 = 0xE600000000000000;
        }

        if (v8 == 2)
        {
          v9 = 0x656369766564;
          v10 = 0xE600000000000000;
        }

        if (v8)
        {
          v11 = 0x54746E65746E6F63;
        }

        else
        {
          v11 = 0x7865646E69;
        }

        if (v8)
        {
          v12 = 0xEB00000000657079;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (v8 <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }
      }

      v15 = *(v6 - 1);
      v16 = 0xD000000000000014;
      if (v15 != 8)
      {
        v16 = 0xD000000000000015;
      }

      v17 = 0x800000025F4B6C40;
      if (v15 == 8)
      {
        v17 = 0x800000025F4B6190;
      }

      if (v15 == 7)
      {
        v16 = 0xD000000000000010;
        v17 = 0x800000025F4B6BB0;
      }

      v18 = 0x7374726F70707573;
      if (v15 == 5)
      {
        v18 = 0x54747865746E6F63;
      }

      v19 = 0xEC0000006576694CLL;
      if (v15 == 5)
      {
        v19 = 0xEB00000000657079;
      }

      if (*(v6 - 1) <= 6u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (v15 == 3)
      {
        v20 = 0x4E79616C70736964;
      }

      else
      {
        v20 = 0x74756F79616CLL;
      }

      if (v15 == 3)
      {
        v21 = 0xEB00000000656D61;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      if (v15 == 2)
      {
        v20 = 0x656369766564;
        v21 = 0xE600000000000000;
      }

      if (!*(v6 - 1))
      {
        v5 = 0x7865646E69;
        v4 = 0xE500000000000000;
      }

      if (*(v6 - 1) <= 1u)
      {
        v20 = v5;
        v21 = v4;
      }

      if (*(v6 - 1) <= 4u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v16;
      }

      if (*(v6 - 1) <= 4u)
      {
        v23 = v21;
      }

      else
      {
        v23 = v17;
      }

      if (v13 == v22 && v14 == v23)
      {

        v5 = 0x54746E65746E6F63;
        v4 = 0xEB00000000657079;
LABEL_5:
        a3 = v29 + 1;
        v6 = v28 + 1;
        v7 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v24 = sub_25F4A3270();

      v5 = 0x54746E65746E6F63;
      v4 = 0xEB00000000657079;
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v30)
      {
        break;
      }

      v8 = *v6;
      *v6 = *(v6 - 1);
      *--v6 = v8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F4864DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v114 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_219:
    v9 = v6;
    v6 = *v114;
    if (!*v114)
    {
      goto LABEL_257;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_251:
      result = sub_25F487B20(v10);
      v10 = result;
    }

    v105 = v5;
    v122 = v10;
    v106 = *(v10 + 2);
    if (v106 >= 2)
    {
      while (*v9)
      {
        v5 = v106 - 1;
        v107 = *&v10[16 * v106];
        v108 = *&v10[16 * v106 + 24];
        sub_25F487230((*v9 + v107), (*v9 + *&v10[16 * v106 + 16]), (*v9 + v108), v6);
        if (v105)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_244;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25F487B20(v10);
        }

        if (v106 - 2 >= *(v10 + 2))
        {
          goto LABEL_245;
        }

        v109 = &v10[16 * v106];
        *v109 = v107;
        *(v109 + 1) = v108;
        v122 = v10;
        result = sub_25F487A94(v106 - 1);
        v10 = v122;
        v106 = *(v122 + 2);
        if (v106 <= 1)
        {
        }
      }

      goto LABEL_255;
    }
  }

  v8 = 0;
  v9 = 0xEB00000000657079;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v8++;
    if (v8 < v7)
    {
      v12 = *v6;
      v13 = v8;
      v121 = v8[*v6];
      v14 = v11;
      v15 = v12;
      v120 = *(v12 + v14);
      result = sub_25F48535C(&v121, &v120);
      __dst = result;
      if (v5)
      {
      }

      v112 = v14;
      v8 = (v14 + 2);
      if (v8 < v7)
      {
        while (1)
        {
          v17 = v8[v15];
          if (v17 > 4)
          {
            if (v8[v15] <= 6u)
            {
              if (v17 == 5)
              {
                v22 = 0x54747865746E6F63;
              }

              else
              {
                v22 = 0x7374726F70707573;
              }

              if (v17 == 5)
              {
                v23 = 0xEB00000000657079;
              }

              else
              {
                v23 = 0xEC0000006576694CLL;
              }
            }

            else if (v17 == 7)
            {
              v22 = 0xD000000000000010;
              v23 = 0x800000025F4B6BB0;
            }

            else if (v17 == 8)
            {
              v22 = 0xD000000000000014;
              v23 = 0x800000025F4B6190;
            }

            else
            {
              v22 = 0xD000000000000015;
              v23 = 0x800000025F4B6C40;
            }
          }

          else
          {
            v18 = 0xEB00000000656D61;
            if (v17 == 3)
            {
              v19 = 0x4E79616C70736964;
            }

            else
            {
              v19 = 0x74756F79616CLL;
            }

            if (v17 != 3)
            {
              v18 = 0xE600000000000000;
            }

            if (v17 == 2)
            {
              v19 = 0x656369766564;
              v18 = 0xE600000000000000;
            }

            if (v8[v15])
            {
              v20 = 0x54746E65746E6F63;
            }

            else
            {
              v20 = 0x7865646E69;
            }

            if (v8[v15])
            {
              v21 = 0xEB00000000657079;
            }

            else
            {
              v21 = 0xE500000000000000;
            }

            if (v8[v15] <= 1u)
            {
              v22 = v20;
            }

            else
            {
              v22 = v19;
            }

            if (v8[v15] <= 1u)
            {
              v23 = v21;
            }

            else
            {
              v23 = v18;
            }
          }

          v24 = v8[v15 - 1];
          if (v24 > 4)
          {
            if (v8[v15 - 1] <= 6u)
            {
              if (v24 == 5)
              {
                v25 = 0x7865746E6F63;
                goto LABEL_67;
              }

              v9 = 0xEC0000006576694CLL;
              if (v22 != 0x7374726F70707573)
              {
                goto LABEL_8;
              }
            }

            else if (v24 == 7)
            {
              v9 = 0x800000025F4B6BB0;
              if (v22 != 0xD000000000000010)
              {
                goto LABEL_8;
              }
            }

            else if (v24 == 8)
            {
              v9 = 0x800000025F4B6190;
              if (v22 != 0xD000000000000014)
              {
                goto LABEL_8;
              }
            }

            else
            {
              v9 = 0x800000025F4B6C40;
              if (v22 != 0xD000000000000015)
              {
                goto LABEL_8;
              }
            }
          }

          else if (v8[v15 - 1] <= 1u)
          {
            if (v8[v15 - 1])
            {
              v25 = 0x6E65746E6F63;
LABEL_67:
              if (v22 != (v25 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
              {
                goto LABEL_8;
              }

              goto LABEL_70;
            }

            v9 = 0xE500000000000000;
            if (v22 != 0x7865646E69)
            {
              goto LABEL_8;
            }
          }

          else if (v24 == 2)
          {
            v9 = 0xE600000000000000;
            if (v22 != 0x656369766564)
            {
              goto LABEL_8;
            }
          }

          else if (v24 == 3)
          {
            v9 = 0xEB00000000656D61;
            if (v22 != 0x4E79616C70736964)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v9 = 0xE600000000000000;
            if (v22 != 0x74756F79616CLL)
            {
              goto LABEL_8;
            }
          }

LABEL_70:
          if (v23 == v9)
          {

            if (__dst)
            {
              v13 = (v8 - 1);
              v9 = 0xEB00000000657079;
              v11 = v112;
              goto LABEL_76;
            }

            goto LABEL_9;
          }

LABEL_8:
          v16 = sub_25F4A3270();

          v6 = a3;
          if ((__dst ^ v16))
          {
            v13 = (v8 - 1);
            v9 = 0xEB00000000657079;
            break;
          }

LABEL_9:
          ++v8;
          v9 = 0xEB00000000657079;
          if (v7 == v8)
          {
            v8 = v7;
            v13 = v7 - 1;
            break;
          }
        }
      }

      v11 = v112;
      if (__dst)
      {
LABEL_76:
        if (v8 < v11)
        {
          goto LABEL_248;
        }

        if (v11 <= v13)
        {
          v52 = v8 - 1;
          v53 = v11;
          do
          {
            if (v53 != v52)
            {
              v55 = *v6;
              if (!*v6)
              {
                goto LABEL_254;
              }

              v56 = v53[v55];
              v53[v55] = v52[v55];
              v52[v55] = v56;
            }
          }

          while (++v53 < v52--);
        }
      }
    }

    v26 = v6[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_247;
      }

      if (&v8[-v11] < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_249;
        }

        if (v11 + a4 < v26)
        {
          v26 = v11 + a4;
        }

        if (v26 < v11)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        if (v8 != v26)
        {
          break;
        }
      }
    }

LABEL_167:
    if (v8 < v11)
    {
      goto LABEL_246;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v57 = v11;
    if ((result & 1) == 0)
    {
      result = sub_25F3EE578(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v59 = *(v10 + 2);
    v58 = *(v10 + 3);
    v9 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_25F3EE578((v58 > 1), v59 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v9;
    v60 = &v10[16 * v59];
    *(v60 + 4) = v57;
    *(v60 + 5) = v8;
    __dstb = *v114;
    if (!*v114)
    {
      goto LABEL_256;
    }

    if (v59)
    {
      while (1)
      {
        v61 = v9 - 1;
        if (v9 >= 4)
        {
          break;
        }

        if (v9 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_187:
          if (v65)
          {
            goto LABEL_235;
          }

          v78 = &v10[16 * v9];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_238;
          }

          v84 = &v10[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_241;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_242;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v9 - 2;
            }

            goto LABEL_208;
          }

          goto LABEL_201;
        }

        v88 = &v10[16 * v9];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_201:
        if (v83)
        {
          goto LABEL_237;
        }

        v91 = &v10[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_240;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_208:
        v99 = v61 - 1;
        if (v61 - 1 >= v9)
        {
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        v100 = *v6;
        if (!*v6)
        {
          goto LABEL_253;
        }

        v101 = v8;
        v102 = v6;
        v103 = *&v10[16 * v99 + 32];
        v6 = *&v10[16 * v61 + 40];
        sub_25F487230((v100 + v103), (v100 + *&v10[16 * v61 + 32]), v6 + v100, __dstb);
        if (v5)
        {
        }

        if (v6 < v103)
        {
          goto LABEL_231;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25F487B20(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_232;
        }

        v104 = &v10[16 * v99];
        *(v104 + 4) = v103;
        *(v104 + 5) = v6;
        v122 = v10;
        result = sub_25F487A94(v61);
        v10 = v122;
        v9 = *(v122 + 2);
        v8 = v101;
        v6 = v102;
        if (v9 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v9 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_233;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_234;
      }

      v73 = &v10[16 * v9];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_236;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_239;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_243;
        }

        if (v64 < v98)
        {
          v61 = v9 - 2;
        }

        goto LABEL_208;
      }

      goto LABEL_187;
    }

LABEL_3:
    v7 = v6[1];
    v9 = 0xEB00000000657079;
    if (v8 >= v7)
    {
      goto LABEL_219;
    }
  }

  v110 = v5;
  v27 = *v6;
  v28 = &v8[*v6];
  v113 = v11;
  v29 = v11 - v8;
  v116 = v26;
LABEL_89:
  __dsta = v8;
  v30 = v8[v27];
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 > 4u)
    {
      if (v30 <= 6u)
      {
        if (v30 == 5)
        {
          v37 = 0x54747865746E6F63;
          v38 = 0xEB00000000657079;
        }

        else
        {
          v37 = 0x7374726F70707573;
          v38 = 0xEC0000006576694CLL;
        }
      }

      else if (v30 == 7)
      {
        v37 = 0xD000000000000010;
        v38 = 0x800000025F4B6BB0;
      }

      else if (v30 == 8)
      {
        v37 = 0xD000000000000014;
        v38 = 0x800000025F4B6190;
      }

      else
      {
        v37 = 0xD000000000000015;
        v38 = 0x800000025F4B6C40;
      }
    }

    else
    {
      v33 = 0xEB00000000656D61;
      if (v30 == 3)
      {
        v34 = 0x4E79616C70736964;
      }

      else
      {
        v34 = 0x74756F79616CLL;
      }

      if (v30 != 3)
      {
        v33 = 0xE600000000000000;
      }

      if (v30 == 2)
      {
        v34 = 0x656369766564;
        v33 = 0xE600000000000000;
      }

      if (v30)
      {
        v35 = 0x54746E65746E6F63;
      }

      else
      {
        v35 = 0x7865646E69;
      }

      if (v30)
      {
        v36 = 0xEB00000000657079;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      if (v30 <= 1u)
      {
        v37 = v35;
      }

      else
      {
        v37 = v34;
      }

      if (v30 <= 1u)
      {
        v38 = v36;
      }

      else
      {
        v38 = v33;
      }
    }

    v39 = *(v32 - 1);
    v40 = 0xD000000000000014;
    if (v39 != 8)
    {
      v40 = 0xD000000000000015;
    }

    v41 = 0x800000025F4B6C40;
    if (v39 == 8)
    {
      v41 = 0x800000025F4B6190;
    }

    if (v39 == 7)
    {
      v40 = 0xD000000000000010;
      v41 = 0x800000025F4B6BB0;
    }

    v42 = 0x7374726F70707573;
    if (v39 == 5)
    {
      v42 = 0x54747865746E6F63;
    }

    v43 = 0xEC0000006576694CLL;
    if (v39 == 5)
    {
      v43 = 0xEB00000000657079;
    }

    if (*(v32 - 1) <= 6u)
    {
      v40 = v42;
      v41 = v43;
    }

    v44 = 0xEB00000000656D61;
    if (v39 == 3)
    {
      v45 = 0x4E79616C70736964;
    }

    else
    {
      v45 = 0x74756F79616CLL;
    }

    if (v39 != 3)
    {
      v44 = 0xE600000000000000;
    }

    if (v39 == 2)
    {
      v45 = 0x656369766564;
      v44 = 0xE600000000000000;
    }

    if (*(v32 - 1))
    {
      v46 = 0x54746E65746E6F63;
    }

    else
    {
      v46 = 0x7865646E69;
    }

    if (*(v32 - 1))
    {
      v47 = 0xEB00000000657079;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    if (*(v32 - 1) <= 1u)
    {
      v45 = v46;
      v44 = v47;
    }

    if (*(v32 - 1) <= 4u)
    {
      v48 = v45;
    }

    else
    {
      v48 = v40;
    }

    if (*(v32 - 1) <= 4u)
    {
      v49 = v44;
    }

    else
    {
      v49 = v41;
    }

    if (v37 == v48 && v38 == v49)
    {

LABEL_88:
      v8 = __dsta + 1;
      ++v28;
      --v29;
      if (__dsta + 1 != v116)
      {
        goto LABEL_89;
      }

      v8 = v116;
      v5 = v110;
      v6 = a3;
      v11 = v113;
      goto LABEL_167;
    }

    v50 = sub_25F4A3270();

    if ((v50 & 1) == 0)
    {
      v9 = 0xEB00000000657079;
      goto LABEL_88;
    }

    if (!v27)
    {
      break;
    }

    v30 = *v32;
    *v32 = *(v32 - 1);
    *--v32 = v30;
    v51 = __CFADD__(v31++, 1);
    v9 = 0xEB00000000657079;
    if (v51)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
  return result;
}

uint64_t sub_25F487230(_BYTE *__src, _BYTE *a2, _BYTE *a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        while (1)
        {
          v11 = *v6;
          if (v11 > 4)
          {
            if (*v6 <= 6u)
            {
              if (v11 == 5)
              {
                v14 = 0x7865746E6F63;
LABEL_25:
                v12 = v14 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
                v13 = 0xEB00000000657079;
                goto LABEL_27;
              }

              v12 = 0x7374726F70707573;
              v13 = 0xEC0000006576694CLL;
            }

            else if (v11 == 7)
            {
              v12 = 0xD000000000000010;
              v13 = 0x800000025F4B6BB0;
            }

            else if (v11 == 8)
            {
              v12 = 0xD000000000000014;
              v13 = 0x800000025F4B6190;
            }

            else
            {
              v12 = 0xD000000000000015;
              v13 = 0x800000025F4B6C40;
            }
          }

          else
          {
            if (*v6 <= 1u)
            {
              if (!*v6)
              {
                v13 = 0xE500000000000000;
                v12 = 0x7865646E69;
                goto LABEL_27;
              }

              v14 = 0x6E65746E6F63;
              goto LABEL_25;
            }

            if (v11 == 2)
            {
              v13 = 0xE600000000000000;
              v12 = 0x656369766564;
            }

            else if (v11 == 3)
            {
              v12 = 0x4E79616C70736964;
              v13 = 0xEB00000000656D61;
            }

            else
            {
              v13 = 0xE600000000000000;
              v12 = 0x74756F79616CLL;
            }
          }

LABEL_27:
          v15 = *v4;
          if (v15 > 4)
          {
            if (*v4 <= 6u)
            {
              if (v15 == 5)
              {
                v17 = 0x7865746E6F63;
                goto LABEL_52;
              }

              v16 = 0xEC0000006576694CLL;
              if (v12 != 0x7374726F70707573)
              {
                goto LABEL_57;
              }
            }

            else if (v15 == 7)
            {
              v16 = 0x800000025F4B6BB0;
              if (v12 != 0xD000000000000010)
              {
                goto LABEL_57;
              }
            }

            else if (v15 == 8)
            {
              v16 = 0x800000025F4B6190;
              if (v12 != 0xD000000000000014)
              {
                goto LABEL_57;
              }
            }

            else
            {
              v16 = 0x800000025F4B6C40;
              if (v12 != 0xD000000000000015)
              {
                goto LABEL_57;
              }
            }
          }

          else if (*v4 <= 1u)
          {
            if (*v4)
            {
              v17 = 0x6E65746E6F63;
LABEL_52:
              v16 = 0xEB00000000657079;
              if (v12 != (v17 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
              {
                goto LABEL_57;
              }

              goto LABEL_55;
            }

            v16 = 0xE500000000000000;
            if (v12 != 0x7865646E69)
            {
              goto LABEL_57;
            }
          }

          else if (v15 == 2)
          {
            v16 = 0xE600000000000000;
            if (v12 != 0x656369766564)
            {
              goto LABEL_57;
            }
          }

          else if (v15 == 3)
          {
            v16 = 0xEB00000000656D61;
            if (v12 != 0x4E79616C70736964)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v12 != 0x74756F79616CLL)
            {
              goto LABEL_57;
            }
          }

LABEL_55:
          if (v13 == v16)
          {

            goto LABEL_61;
          }

LABEL_57:
          v18 = sub_25F4A3270();

          if (v18)
          {
            v19 = v6 + 1;
            v20 = v6;
            if (v7 >= v6 && v7 < v19)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

LABEL_61:
          v21 = v4 + 1;
          v20 = v4;
          v19 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v21)
            {
              goto LABEL_66;
            }
          }

LABEL_65:
          *v7 = *v20;
LABEL_66:
          ++v7;
          if (v4 < v10)
          {
            v6 = v19;
            if (v19 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_141;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_148;
      }

LABEL_147:
      if (v6 >= v10)
      {
        goto LABEL_148;
      }

      return 1;
    }

    v6 = v7;
LABEL_146:
    if (v6 != v4)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_146;
  }

LABEL_74:
  v22 = v6 - 1;
  --v5;
  v23 = v10;
  __dsta = v6 - 1;
  do
  {
    v25 = *--v23;
    v24 = v25;
    if (v25 > 4)
    {
      if (v24 <= 6)
      {
        if (v24 == 5)
        {
          v27 = 0x54747865746E6F63;
          v26 = 0xEB00000000657079;
        }

        else
        {
          v27 = 0x7374726F70707573;
          v26 = 0xEC0000006576694CLL;
        }
      }

      else if (v24 == 7)
      {
        v27 = 0xD000000000000010;
        v26 = 0x800000025F4B6BB0;
      }

      else if (v24 == 8)
      {
        v27 = 0xD000000000000014;
        v26 = 0x800000025F4B6190;
      }

      else
      {
        v27 = 0xD000000000000015;
        v26 = 0x800000025F4B6C40;
      }
    }

    else if (v24 <= 1)
    {
      if (v24)
      {
        v27 = 0x54746E65746E6F63;
      }

      else
      {
        v27 = 0x7865646E69;
      }

      if (v24)
      {
        v26 = 0xEB00000000657079;
      }

      else
      {
        v26 = 0xE500000000000000;
      }
    }

    else if (v24 == 2)
    {
      v26 = 0xE600000000000000;
      v27 = 0x656369766564;
    }

    else if (v24 == 3)
    {
      v26 = 0xEB00000000656D61;
      v27 = 0x4E79616C70736964;
    }

    else
    {
      v26 = 0xE600000000000000;
      v27 = 0x74756F79616CLL;
    }

    v28 = *v22;
    if (v28 > 4)
    {
      if (*v22 > 6u)
      {
        if (v28 == 7)
        {
          v29 = 0x800000025F4B6BB0;
          if (v27 != 0xD000000000000010)
          {
            goto LABEL_129;
          }
        }

        else if (v28 == 8)
        {
          v29 = 0x800000025F4B6190;
          if (v27 != 0xD000000000000014)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v29 = 0x800000025F4B6C40;
          if (v27 != 0xD000000000000015)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_127;
      }

      if (v28 == 5)
      {
        v30 = 0x7865746E6F63;
        goto LABEL_124;
      }

      v29 = 0xEC0000006576694CLL;
      if (v27 != 0x7374726F70707573)
      {
        goto LABEL_129;
      }
    }

    else if (*v22 <= 1u)
    {
      if (*v22)
      {
        v30 = 0x6E65746E6F63;
LABEL_124:
        v29 = 0xEB00000000657079;
        if (v27 != (v30 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
        {
          goto LABEL_129;
        }

        goto LABEL_127;
      }

      v29 = 0xE500000000000000;
      if (v27 != 0x7865646E69)
      {
        goto LABEL_129;
      }
    }

    else if (v28 == 2)
    {
      v29 = 0xE600000000000000;
      if (v27 != 0x656369766564)
      {
        goto LABEL_129;
      }
    }

    else if (v28 == 3)
    {
      v29 = 0xEB00000000656D61;
      if (v27 != 0x4E79616C70736964)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v29 = 0xE600000000000000;
      if (v27 != 0x74756F79616CLL)
      {
        goto LABEL_129;
      }
    }

LABEL_127:
    if (v26 == v29)
    {

      goto LABEL_130;
    }

LABEL_129:
    v31 = sub_25F4A3270();

    if (v31)
    {
      if (v5 + 1 < v6 || v5 >= v6)
      {
        *v5 = *__dsta;
      }

      if (v10 > v4)
      {
        --v6;
        if (__dsta > v7)
        {
          goto LABEL_74;
        }
      }

      v6 = __dsta;
      if (__dsta == v4)
      {
        goto LABEL_147;
      }

      goto LABEL_148;
    }

LABEL_130:
    v22 = v6 - 1;
    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *v23;
    }

    --v5;
    v10 = v23;
  }

  while (v23 > v4);
  v10 = v23;
LABEL_141:
  if (v6 == v4)
  {
    goto LABEL_147;
  }

LABEL_148:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_25F487A94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F487B20(v3);
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

char *sub_25F487B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7D0, &unk_25F4B29D0);
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

char *sub_25F487C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
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

char *sub_25F487D70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FCC8, &unk_25F4B2988);
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

BOOL _s19PreviewsMessagingOS15PreviewMetadataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[24];
  v34 = a1[25];
  *(&v31 + 1) = *(a1 + 4);
  *&v31 = *(a1 + 5);
  v33 = a1[48];
  v29 = a1[49];
  v27 = a1[50];
  v23 = *(a1 + 7);
  v25 = *(a1 + 8);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  *&v30 = *(a2 + 40);
  *(&v30 + 1) = *(a2 + 32);
  v32 = *(a2 + 48);
  v10 = 0xE600000000000000;
  v11 = 0x746567646977;
  v28 = *(a2 + 49);
  v26 = *(a2 + 50);
  if (v2 != 1)
  {
    v11 = 0x6163696C706D6F63;
    v10 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x746163696C707061;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xEB000000006E6F69;
  }

  v22 = *(a2 + 56);
  v24 = *(a2 + 64);
  v14 = 0xE600000000000000;
  v15 = 0x746567646977;
  if (*a2 != 1)
  {
    v15 = 0x6163696C706D6F63;
    v14 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x746163696C707061;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xEB000000006E6F69;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_25F4A3270();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    result = 0;
    if (v5 != v8)
    {
      return result;
    }
  }

  else
  {
    v20 = sub_25F4A3270();
    result = 0;
    if (v20 & 1) == 0 || ((v5 ^ v8))
    {
      return result;
    }
  }

  if ((v34 ^ v9))
  {
    return result;
  }

  if (v33)
  {
    if (v31 == 0)
    {
      if (!v32 || v30 != 0)
      {
        return 0;
      }
    }

    else if (!v32 || v30 == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v32)
    {
      return 0;
    }

    result = 0;
    if (*(&v31 + 1) != *(&v30 + 1) || *&v31 != *&v30)
    {
      return result;
    }
  }

  v21 = sub_25F46F8DC(v29, v28);
  result = 0;
  if ((v21 & 1) != 0 && ((v27 ^ v26) & 1) == 0)
  {
    if (v25)
    {
      return v24 && (v23 == v22 && v25 == v24 || (sub_25F4A3270() & 1) != 0);
    }

    return !v24;
  }

  return result;
}

BOOL _s19PreviewsMessagingOS13PreviewFlavorO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v28[16] = a1[2];
  v29 = v2;
  v4 = a1[1];
  v27 = *a1;
  *v28 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  *v34 = v5;
  v7 = a2[1];
  v31 = *a2;
  v32 = v7;
  v8 = a1[3];
  v35[2] = *&v28[16];
  v35[3] = v8;
  v35[0] = v27;
  v35[1] = v3;
  v37 = v31;
  v40 = a2[3];
  v30 = *(a1 + 8);
  *&v34[16] = *(a2 + 8);
  v9 = *(a2 + 8);
  v36 = *(a1 + 8);
  v41 = v9;
  v39 = v33;
  v38 = v6;
  v11 = *(&v4 + 1);
  v10 = v4;
  if ((v29 & 0x8000000000000000) != 0)
  {
    if ((*v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    v14 = *(&v32 + 1);
    if (v27 != v31)
    {
      v15 = sub_25F4A3270();
      v11 = *&v28[8];
      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if (v11)
    {
      if (!*(&v32 + 1))
      {
        goto LABEL_5;
      }

      if (__PAIR128__(v11, v10) == v32)
      {
        sub_25F48B48C(&v27, &v21);
        sub_25F48B48C(&v31, &v21);
        sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
        return 1;
      }

      v16 = sub_25F4A3270();
      sub_25F48B48C(&v27, &v21);
      sub_25F48B48C(&v31, &v21);
      sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_25F48B48C(&v27, &v21);
      sub_25F48B48C(&v31, &v21);

      sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
      if (v14)
      {

        return 0;
      }
    }

    return 1;
  }

  if ((*v34 & 0x8000000000000000) != 0)
  {
LABEL_5:
    sub_25F48B48C(&v27, &v21);
    sub_25F48B48C(&v31, &v21);
    sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
    return 0;
  }

  v21 = v27;
  v23 = *&v28[8];
  v22 = *v28;
  v24 = *&v28[24];
  v25 = v29;
  v26 = v30;
  v18[0] = v31;
  v18[1] = v32;
  v18[2] = v33;
  v19 = *v34;
  v20 = *&v34[8];
  sub_25F48B48C(&v31, v17);
  sub_25F48B48C(&v27, v17);
  sub_25F48B48C(&v27, v17);
  sub_25F48B48C(&v31, v17);
  v12 = _s19PreviewsMessagingOS15PreviewMetadataV2eeoiySbAC_ACtFZ_0(&v21, v18);
  sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
  sub_25F48B4C4(&v31);
  sub_25F48B4C4(&v27);
  return v12;
}

unint64_t sub_25F488420()
{
  result = qword_27FD6F840;
  if (!qword_27FD6F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F840);
  }

  return result;
}

unint64_t sub_25F488474()
{
  result = qword_27FD6F848;
  if (!qword_27FD6F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F848);
  }

  return result;
}

unint64_t sub_25F4884C8()
{
  result = qword_27FD6F858;
  if (!qword_27FD6F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F858);
  }

  return result;
}

unint64_t sub_25F48851C()
{
  result = qword_27FD6F880;
  if (!qword_27FD6F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F880);
  }

  return result;
}

unint64_t sub_25F488570()
{
  result = qword_27FD6F888;
  if (!qword_27FD6F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F888);
  }

  return result;
}

unint64_t sub_25F4885C4()
{
  result = qword_27FD6F890;
  if (!qword_27FD6F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F890);
  }

  return result;
}

unint64_t sub_25F488620()
{
  result = qword_27FD6F8B8;
  if (!qword_27FD6F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8B8);
  }

  return result;
}

unint64_t sub_25F48867C()
{
  result = qword_27FD6F8C0;
  if (!qword_27FD6F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8C0);
  }

  return result;
}

unint64_t sub_25F4886D0()
{
  result = qword_27FD6F8C8;
  if (!qword_27FD6F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8C8);
  }

  return result;
}

unint64_t sub_25F488724()
{
  result = qword_27FD6F8D0;
  if (!qword_27FD6F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8D0);
  }

  return result;
}

BOOL _s19PreviewsMessagingOS18PreviewDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v32 = *(a1 + 64);
  *(&v32 + 1) = *(a1 + 56);
  v6 = *(a1 + 72);
  v30 = *(a1 + 73);
  v28 = *(a1 + 74);
  v26 = *(a1 + 75);
  v24 = *(a1 + 76);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  *&v31 = *(a2 + 64);
  *(&v31 + 1) = *(a2 + 56);
  v11 = *(a2 + 72);
  v29 = *(a2 + 73);
  v27 = *(a2 + 74);
  v25 = *(a2 + 75);
  v23 = *(a2 + 76);
  v19 = *(a2 + 80);
  v22 = *(a2 + 88);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v7 || v3 != v8) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v32 == 0)
    {
      if (!v11 || v31 != 0)
      {
        return 0;
      }
    }

    else if (!v11 || v31 == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v11 & 1) != 0 || *(&v32 + 1) != *(&v31 + 1) || *&v32 != *&v31)
    {
      return result;
    }
  }

  v13 = 0xEB000000006E6F69;
  v14 = 0x746163696C707061;
  if (v30)
  {
    v15 = v29;
    if (v30 == 1)
    {
      v17 = 0xE600000000000000;
      v16 = 0x746567646977;
    }

    else
    {
      v16 = 0x6163696C706D6F63;
      v17 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v16 = 0x746163696C707061;
    v17 = 0xEB000000006E6F69;
    v15 = v29;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v13 = 0xE600000000000000;
      v14 = 0x746567646977;
    }

    else
    {
      v14 = 0x6163696C706D6F63;
      v13 = 0xEC0000006E6F6974;
    }
  }

  if (v16 == v14 && v17 == v13)
  {

    result = 0;
    if (v28 != v27)
    {
      return result;
    }

    goto LABEL_46;
  }

  v18 = sub_25F4A3270();

  result = 0;
  if ((v18 & 1) != 0 && ((v28 ^ v27) & 1) == 0)
  {
LABEL_46:
    if ((v26 ^ v25))
    {
      return result;
    }

    if ((sub_25F46F8DC(v24, v23) & 1) == 0)
    {
      return 0;
    }

    if (v21)
    {
      return v22 && (v20 == v19 && v21 == v22 || (sub_25F4A3270() & 1) != 0);
    }

    if (!v22)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_25F488AE0()
{
  result = qword_27FD6F8D8;
  if (!qword_27FD6F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8D8);
  }

  return result;
}

unint64_t sub_25F488B38()
{
  result = qword_27FD6F8E0;
  if (!qword_27FD6F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8E0);
  }

  return result;
}

unint64_t sub_25F488B90()
{
  result = qword_27FD6F8E8;
  if (!qword_27FD6F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8E8);
  }

  return result;
}

unint64_t sub_25F488BE8()
{
  result = qword_27FD6F8F0;
  if (!qword_27FD6F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8F0);
  }

  return result;
}

unint64_t sub_25F488C40()
{
  result = qword_27FD6F8F8;
  if (!qword_27FD6F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8F8);
  }

  return result;
}

unint64_t sub_25F488C98()
{
  result = qword_27FD6F900;
  if (!qword_27FD6F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F900);
  }

  return result;
}

unint64_t sub_25F488CF0()
{
  result = qword_27FD6F908;
  if (!qword_27FD6F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F908);
  }

  return result;
}

unint64_t sub_25F488D48()
{
  result = qword_27FD6F910;
  if (!qword_27FD6F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F910);
  }

  return result;
}

unint64_t sub_25F488DA0()
{
  result = qword_27FD6F918;
  if (!qword_27FD6F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F918);
  }

  return result;
}

unint64_t sub_25F488DF8()
{
  result = qword_27FD6F920;
  if (!qword_27FD6F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F920);
  }

  return result;
}

unint64_t sub_25F488E50()
{
  result = qword_27FD6F928;
  if (!qword_27FD6F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F928);
  }

  return result;
}

uint64_t sub_25F488EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25F488F04(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F488F68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F488FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS12HostIdentityO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25F4890A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A25E0();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F48917C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F4A25E0();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_25F489238(uint64_t a1)
{
  sub_25F4A25E0();
  if (v1 <= 0x3F)
  {
    sub_25F48931C(319, &qword_27FD6F940, type metadata accessor for CanvasControlDescription);
    if (v2 <= 0x3F)
    {
      sub_25F48931C(319, &qword_27FD6F948, type metadata accessor for PlistValueBox);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F48931C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F4A2E20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F489384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A25E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F489458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F4A25E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_25F489514(uint64_t a1)
{
  sub_25F489610();
  if (v1 <= 0x3F)
  {
    sub_25F4A25E0();
    if (v2 <= 0x3F)
    {
      sub_25F48931C(319, &qword_27FD6F940, type metadata accessor for CanvasControlDescription);
      if (v3 <= 0x3F)
      {
        sub_25F48931C(319, &qword_27FD6F948, type metadata accessor for PlistValueBox);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F489610()
{
  if (!qword_27FD6F960[0])
  {
    v0 = sub_25F4A3060();
    if (!v1)
    {
      atomic_store(v0, qword_27FD6F960);
    }
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewTraits(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 18))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewTraits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewTraits.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreviewTraits.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25F48978C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F4897A8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_25F4897F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F489868(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_25F489980(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F489B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0x1F80 | (*(a1 + 48) >> 1) | (*(a1 + 48) >> 4) & 0xFFFFE000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25F489BA8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = (8 * -a2) & 0xFC00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF00001FFFFLL | ((-a2 >> 13) << 17);
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F489C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25F489CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F489D10(uint64_t a1, unsigned int a2)
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

uint64_t sub_25F489D60(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS29PreviewOverridesConfigurationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25F489E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_25F489E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F489F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25F48A0B0()
{
  result = qword_27FD6FB68;
  if (!qword_27FD6FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB68);
  }

  return result;
}

unint64_t sub_25F48A108()
{
  result = qword_27FD6FB70;
  if (!qword_27FD6FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB70);
  }

  return result;
}

unint64_t sub_25F48A160()
{
  result = qword_27FD6FB78;
  if (!qword_27FD6FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB78);
  }

  return result;
}

unint64_t sub_25F48A1B8()
{
  result = qword_27FD6FB80;
  if (!qword_27FD6FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB80);
  }

  return result;
}

unint64_t sub_25F48A210()
{
  result = qword_27FD6FB88;
  if (!qword_27FD6FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB88);
  }

  return result;
}

unint64_t sub_25F48A268()
{
  result = qword_27FD6FB90;
  if (!qword_27FD6FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB90);
  }

  return result;
}

unint64_t sub_25F48A2C0()
{
  result = qword_27FD6FB98;
  if (!qword_27FD6FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB98);
  }

  return result;
}

unint64_t sub_25F48A318()
{
  result = qword_27FD6FBA0;
  if (!qword_27FD6FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBA0);
  }

  return result;
}

unint64_t sub_25F48A370()
{
  result = qword_27FD6FBA8;
  if (!qword_27FD6FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBA8);
  }

  return result;
}

unint64_t sub_25F48A3C8()
{
  result = qword_27FD6FBB0;
  if (!qword_27FD6FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBB0);
  }

  return result;
}

unint64_t sub_25F48A420()
{
  result = qword_27FD6FBB8;
  if (!qword_27FD6FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBB8);
  }

  return result;
}

unint64_t sub_25F48A478()
{
  result = qword_27FD6FBC0;
  if (!qword_27FD6FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBC0);
  }

  return result;
}

unint64_t sub_25F48A4D0()
{
  result = qword_27FD6FBC8;
  if (!qword_27FD6FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBC8);
  }

  return result;
}

unint64_t sub_25F48A528()
{
  result = qword_27FD6FBD0;
  if (!qword_27FD6FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBD0);
  }

  return result;
}

unint64_t sub_25F48A580()
{
  result = qword_27FD6FBD8;
  if (!qword_27FD6FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBD8);
  }

  return result;
}

unint64_t sub_25F48A5D8()
{
  result = qword_27FD6FBE0;
  if (!qword_27FD6FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBE0);
  }

  return result;
}

unint64_t sub_25F48A630()
{
  result = qword_27FD6FBE8;
  if (!qword_27FD6FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBE8);
  }

  return result;
}

unint64_t sub_25F48A6DC()
{
  result = qword_27FD6FBF0;
  if (!qword_27FD6FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBF0);
  }

  return result;
}

unint64_t sub_25F48A734()
{
  result = qword_27FD6FBF8;
  if (!qword_27FD6FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBF8);
  }

  return result;
}

unint64_t sub_25F48A78C()
{
  result = qword_27FD6FC00;
  if (!qword_27FD6FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC00);
  }

  return result;
}

unint64_t sub_25F48A7E4()
{
  result = qword_27FD6FC08;
  if (!qword_27FD6FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC08);
  }

  return result;
}

unint64_t sub_25F48A83C()
{
  result = qword_27FD6FC10;
  if (!qword_27FD6FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC10);
  }

  return result;
}

unint64_t sub_25F48A894()
{
  result = qword_27FD6FC18;
  if (!qword_27FD6FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC18);
  }

  return result;
}

unint64_t sub_25F48A8EC()
{
  result = qword_27FD6FC20;
  if (!qword_27FD6FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC20);
  }

  return result;
}

unint64_t sub_25F48A944()
{
  result = qword_27FD6FC28;
  if (!qword_27FD6FC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6FC30, qword_25F4B2248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC28);
  }

  return result;
}

unint64_t sub_25F48A9AC()
{
  result = qword_27FD6FC38;
  if (!qword_27FD6FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC38);
  }

  return result;
}

unint64_t sub_25F48AA04()
{
  result = qword_27FD6FC40;
  if (!qword_27FD6FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC40);
  }

  return result;
}

unint64_t sub_25F48AA5C()
{
  result = qword_27FD6FC48;
  if (!qword_27FD6FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC48);
  }

  return result;
}

unint64_t sub_25F48AAB4()
{
  result = qword_27FD6FC50;
  if (!qword_27FD6FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC50);
  }

  return result;
}

unint64_t sub_25F48AB0C()
{
  result = qword_27FD6FC58;
  if (!qword_27FD6FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC58);
  }

  return result;
}

unint64_t sub_25F48AB64()
{
  result = qword_27FD6FC60;
  if (!qword_27FD6FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC60);
  }

  return result;
}

unint64_t sub_25F48ABBC()
{
  result = qword_27FD6FC68;
  if (!qword_27FD6FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC68);
  }

  return result;
}

unint64_t sub_25F48AC14()
{
  result = qword_27FD6FC70;
  if (!qword_27FD6FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC70);
  }

  return result;
}

unint64_t sub_25F48AC6C()
{
  result = qword_27FD6FC78;
  if (!qword_27FD6FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC78);
  }

  return result;
}

unint64_t sub_25F48ACF8()
{
  result = qword_27FD6FC80;
  if (!qword_27FD6FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC80);
  }

  return result;
}

unint64_t sub_25F48AD4C()
{
  result = qword_27FD6FC88;
  if (!qword_27FD6FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC88);
  }

  return result;
}

unint64_t sub_25F48ADA0()
{
  result = qword_27FD6FC90;
  if (!qword_27FD6FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC90);
  }

  return result;
}

unint64_t sub_25F48ADF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48AE40(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48AE8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48AED8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48AF24(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48AF70(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48AFBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B008(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B054(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B0A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B0EC()
{
  result = qword_27FD6FC98;
  if (!qword_27FD6FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC98);
  }

  return result;
}

unint64_t sub_25F48B140(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B18C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B1D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B224(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F48B270()
{
  result = qword_27FD6FCA0;
  if (!qword_27FD6FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCA0);
  }

  return result;
}

unint64_t sub_25F48B2C4()
{
  result = qword_27FD6FCA8;
  if (!qword_27FD6FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCA8);
  }

  return result;
}

unint64_t sub_25F48B318()
{
  result = qword_27FD6FCB0;
  if (!qword_27FD6FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCB0);
  }

  return result;
}

unint64_t sub_25F48B388()
{
  result = qword_27FD6FCB8;
  if (!qword_27FD6FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCB8);
  }

  return result;
}

unint64_t sub_25F48B3DC()
{
  result = qword_27FD6FCC0;
  if (!qword_27FD6FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCC0);
  }

  return result;
}

uint64_t sub_25F48B4F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25F47CBA4(a1, a2, a3);
  }

  return a1;
}

uint64_t PreviewVariantGroup.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PreviewVariantGroup.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t PreviewVariantGroup.associatedGroupIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PreviewVariantGroup.overridesConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v4 = *(v1 + 72);
  v8 = *(v1 + 56);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_25F404B8C(v7, &v6, &qword_27FD6FD00, &qword_25F4B2A10);
}

__n128 PreviewVariantGroup.overridesConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v4 = *(v1 + 72);
  v8[2] = *(v1 + 56);
  v8[3] = v4;
  sub_25F3F21F4(v8, &qword_27FD6FD00, &qword_25F4B2A10);
  v5 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v7;
  return result;
}

void PreviewVariantGroup.variantsConfiguration.getter(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_25F48B720(v2, v3, v4);
}

void sub_25F48B720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

__n128 PreviewVariantGroup.variantsConfiguration.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_25F48B7AC(v1[11], v1[12], v1[13]);
  result = v4;
  *(v1 + 11) = v4;
  v1[13] = v2;
  return result;
}

void sub_25F48B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

__n128 PreviewVariantGroup.init(id:associatedGroupIDs:overridesConfiguration:variantsConfiguration:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[1];
  v8 = *a4;
  v9 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = v7;
  *(a5 + 16) = a2;
  v13 = v8;
  memset(v14, 0, sizeof(v14));
  sub_25F3F21F4(v14, &qword_27FD6FD00, &qword_25F4B2A10);
  v10 = a3[1];
  *(a5 + 24) = *a3;
  *(a5 + 40) = v10;
  v11 = a3[3];
  *(a5 + 56) = a3[2];
  *(a5 + 72) = v11;
  sub_25F48B7AC(0, 0, 0);
  result = v13;
  *(a5 + 88) = v13;
  *(a5 + 104) = v9;
  return result;
}

uint64_t sub_25F48B8C0()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48B978(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48BA1C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F48BAD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F492CC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F48BB00(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x800000025F4B6C90;
  v5 = 0xD000000000000017;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x800000025F4B6CB0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x800000025F4B6C70;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F48BB74()
{
  v1 = 25705;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_25F48BC44(uint64_t a1)
{
  v21[0] = *a1;
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    sub_25F494344(v21, v20);
LABEL_5:
    v8 = *(a1 + 40);
    v20[0] = *(a1 + 24);
    v20[1] = v8;
    v9 = *(a1 + 72);
    v20[2] = *(a1 + 56);
    v20[3] = v9;
    v18 = *(a1 + 88);
    v19 = *(a1 + 104);
    v13 = *(a1 + 24);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    v16 = *(a1 + 72);
    v11 = v18;
    v12 = v19;
    sub_25F404B8C(v20, v17, &qword_27FD6FD00, &qword_25F4B2A10);
    sub_25F404B8C(&v18, v17, &qword_27FD6FF00, &qword_25F4B3E38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD18, &qword_25F4B2A18);
    sub_25F48C2D8();
    sub_25F48C32C();
    sub_25F493134(&qword_27FD6FD20, &qword_27FD6FD18, &qword_25F4B2A18, sub_25F48C32C);
    sub_25F492DD0();
    sub_25F492E24();
    v10 = sub_25F4A28B0();
    sub_25F48B7AC(v11, *(&v11 + 1), v12);
    v17[0] = v13;
    v17[1] = v14;
    v17[2] = v15;
    v17[3] = v16;
    sub_25F3F21F4(v17, &qword_27FD6FD00, &qword_25F4B2A10);

    return v10;
  }

  v4 = sub_25F3EEB0C(v3, 0);
  v5 = sub_25F3F1124(v20, v4 + 4, v3, v2);
  v6 = *&v20[0];
  sub_25F494344(v21, v17);

  result = sub_25F3F0D04(v6);
  if (v5 == v3)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void PreviewVariantGroup.init(propertyListValue:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(&v29 + 1) = &type metadata for PreviewVariantGroup.Key;
  v5 = sub_25F48C2D8();
  *&v30 = v5;
  LOBYTE(v28) = 0;
  sub_25F48C32C();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    v34 = a2;
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v7 = v32;
    v8 = v33;
    *(&v29 + 1) = &type metadata for PreviewVariantGroup.Key;
    *&v30 = v5;
    LOBYTE(v28) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD18, &qword_25F4B2A18);
    sub_25F493134(&qword_27FD6FD20, &qword_27FD6FD18, &qword_25F4B2A18, sub_25F48C32C);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    if (v23)
    {
      v9 = v23;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = sub_25F492D0C(v9);

    v27[3] = &type metadata for PreviewVariantGroup.Key;
    v27[4] = v5;
    LOBYTE(v27[0]) = 1;
    sub_25F492DD0();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v27);
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v20[3] = &type metadata for PreviewVariantGroup.Key;
    v20[4] = v5;
    LOBYTE(v20[0]) = 2;
    sub_25F492E24();
    sub_25F4A2580();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v12 = v22;
    v18 = v21;
    memset(v19, 0, sizeof(v19));
    sub_25F3F21F4(v19, &qword_27FD6FD00, &qword_25F4B2A10);
    v16 = v25;
    v17 = v23;
    v14 = v26;
    v15 = v24;
    sub_25F48B7AC(0, 0, 0);
    v13 = v34;
    *v34 = v7;
    v13[1] = v8;
    v13[2] = v10;
    *(v13 + 5) = v15;
    *(v13 + 3) = v17;
    *(v13 + 9) = v14;
    *(v13 + 7) = v16;
    *(v13 + 11) = v18;
    v13[13] = v12;
  }
}

unint64_t sub_25F48C2D8()
{
  result = qword_27FD6FD08;
  if (!qword_27FD6FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD08);
  }

  return result;
}

unint64_t sub_25F48C32C()
{
  result = qword_27FD6FD10;
  if (!qword_27FD6FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD10);
  }

  return result;
}

uint64_t PreviewVariantGroup.overridesVariants.getter()
{
  if (*(v0 + 32))
  {
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

char *PreviewVariantGroup.gridVariants.getter()
{
  if (!*(v0 + 96))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(v0 + 104);
  v2 = *(v1 + 16);

  if (!v2)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_22:

    return v6;
  }

  v4 = 0;
  v5 = (v1 + 48);
  v6 = MEMORY[0x277D84F90];
  while (v4 < *(v1 + 16))
  {
    v7 = *v5;
    v8 = *(*v5 + 16);
    v9 = *(v6 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_25;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v6 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_25F3EE960(result, v11, 1, v6);
      v6 = result;
      if (*(v7 + 16))
      {
LABEL_16:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v8)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v6 + 2);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_28;
          }

          *(v6 + 2) = v14;
        }

        goto LABEL_5;
      }
    }

    if (v8)
    {
      goto LABEL_26;
    }

LABEL_5:
    ++v4;
    v5 += 3;
    if (v2 == v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t PreviewVariantGroup.allVariants.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD38, &qword_25F4B2A20);
  MEMORY[0x28223BE20](v1);
  if (*(v0 + 32))
  {
  }

  v2 = PreviewVariantGroup.gridVariants.getter();
  sub_25F3E8A50(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
  sub_25F492E78();
  sub_25F3F2708(&qword_27FD6FD50, &qword_27FD6FD40, &qword_25F4B2A28, MEMORY[0x277D83970]);
  sub_25F4A2130();
  sub_25F3F2708(&qword_27FD6FD58, &qword_27FD6FD38, &qword_25F4B2A20, MEMORY[0x277D403C8]);
  return sub_25F4A2CD0();
}

uint64_t PreviewOverridesConfiguration.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PreviewOverridesConfiguration.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PreviewOverridesConfiguration.selectionBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_25F492ECC(v2, v3, v4, v5);
}

__n128 PreviewOverridesConfiguration.selectionBehavior.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_25F492ED8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t PreviewOverridesConfiguration.variants.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PreviewOverridesConfiguration.childVariantConfigurations.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

__n128 PreviewOverridesConfiguration.init(title:selectionBehavior:variants:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v13 = *a3;
  v9 = a3[1].n128_u64[0];
  v10 = a3[1].n128_u8[8];
  v11 = sub_25F492B24(MEMORY[0x277D84F90]);
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = a2;
  result = v13;
  a5[1] = v13;
  a5[2].n128_u64[0] = v9;
  a5[2].n128_u8[8] = v10;
  a5[3].n128_u64[0] = a4;
  a5[3].n128_u64[1] = v11;
  return result;
}

__n128 PreviewOverridesConfiguration.init(title:selectionBehavior:variants:childVariantConfigurations:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a3[1].n128_u64[0];
  v7 = a3[1].n128_u8[8];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = v6;
  a6[2].n128_u8[8] = v7;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u64[1] = a5;
  return result;
}

uint64_t sub_25F48C9DC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48CAA8(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48CB60(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F48CC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F494020(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F48CC58(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x73746E6169726176;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001ALL;
    v4 = 0x800000025F4B6CF0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000025F4B6CD0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F48CCE0()
{
  v1 = 0x656C746974;
  v2 = 0x73746E6169726176;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_25F48CDB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(v19 + 9) = *(a1 + 25);
  v19[0] = *(a1 + 1);
  v3 = a1[6];
  v4 = a1[7];
  v18 = 0;
  v16 = v1;
  v17 = v2;
  v15 = 1;
  v12 = v19[0];
  v13 = *&v19[1];
  v14 = BYTE8(v19[1]) & 1;
  v11 = 2;
  v10 = v3;
  v9 = 3;
  v8 = v4;

  sub_25F4942F4(v19, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD80, &qword_25F4B2A30);
  sub_25F492EEC();
  sub_25F492F40();
  sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
  sub_25F492FE8();
  v5 = sub_25F4A28B0();
  sub_25F49432C(v12, *(&v12 + 1), v13, v14);

  return v5;
}

uint64_t PreviewOverridesConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = &type metadata for PreviewOverridesConfiguration.Key;
  v5 = sub_25F492EEC();
  v21 = v5;
  LOBYTE(v19[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = v22;
    v7 = v23;
    v20 = &type metadata for PreviewOverridesConfiguration.Key;
    v21 = v5;
    LOBYTE(v19[0]) = 1;
    sub_25F492F40();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v24 = v18;
    v20 = &type metadata for PreviewOverridesConfiguration.Key;
    v21 = v5;
    LOBYTE(v19[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
    sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = &type metadata for PreviewOverridesConfiguration.Key;
    v21 = v5;
    LOBYTE(v19[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD80, &qword_25F4B2A30);
    sub_25F492FE8();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v10 = v13;
    v11 = v24;
    if (!v13)
    {
      v10 = sub_25F492B24(MEMORY[0x277D84F90]);
    }

    v12 = sub_25F4A25E0();
    result = (*(*(v12 - 8) + 8))(a1, v12);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v11;
    *(a2 + 48) = v14;
    *(a2 + 56) = v10;
  }

  return result;
}

uint64_t PreviewOverridesConfiguration.defaultSelection.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v27 = MEMORY[0x277D84FA0];
  if (v3)
  {

    sub_25F48D48C(v5);
  }

  else
  {

    sub_25F491618(v26, v1, v2, &qword_27FD6FED8, &qword_25F4B3E10, &type metadata for PreviewVariant.ID);
  }

  v6 = v27;
  v7 = v27 + 56;
  v8 = 1 << *(v27 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v27 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v10;
LABEL_13:
    v10 = (v14 - 1) & v14;
    if (*(v4 + 16))
    {
      v16 = (*(v6 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_25F3EEC04(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = (*(v4 + 56) + (v19 << 6));
        v23 = v22[1];
        v26[0] = *v22;
        v26[1] = v23;
        v24 = v22[3];
        v26[2] = v22[2];
        v26[3] = v24;
        v25 = PreviewOverridesConfiguration.defaultSelection.getter();
        result = sub_25F48D48C(v25);
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return v27;
    }

    v14 = *(v7 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F48D48C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_25F491618(&v13, v11, v12, &qword_27FD6FED8, &qword_25F4B3E10, &type metadata for PreviewVariant.ID);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_25F48D5C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
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
  v43 = result;
  if (v7)
  {
    do
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
LABEL_12:
      v13 = v9 | (v3 << 6);
      v14 = (*(result + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(result + 56) + (v13 << 6));
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[1];
      v56 = *v17;
      v57 = v20;
      v58 = v18;
      v59 = v19;
      v48 = v19;
      v50 = v20;
      v46 = v18;
      v47 = v56;

      sub_25F49428C(&v56, &v52);
      if (!v15)
      {
        return 1;
      }

      v56 = v47;
      v57 = v50;
      v58 = v46;
      v59 = v48;
      v21 = sub_25F3EEC04(v16, v15);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_51;
      }

      v24 = (*(v2 + 56) + (v21 << 6));
      v25 = v24[3];
      v27 = *v24;
      v26 = v24[1];
      v54 = v24[2];
      v55 = v25;
      v52 = v27;
      v53 = v26;
      if (v27 != v56 && (sub_25F4A3270() & 1) == 0)
      {
        goto LABEL_51;
      }

      v28 = v53;
      v29 = v54;
      v30 = v57;
      v31 = v58;
      v45 = v10;
      if (BYTE8(v54))
      {
        if ((BYTE8(v58) & 1) == 0)
        {
          sub_25F492ECC(v53, *(&v53 + 1), v54, 1);
          sub_25F492ECC(v30, *(&v30 + 1), v31, 0);
          sub_25F492ED8(v28, *(&v28 + 1), v29, 1);
          v40 = *(&v30 + 1);
          v39 = v30;
          v41 = v31;
          v42 = 0;
LABEL_48:
          sub_25F492ED8(v39, v40, v41, v42);
          goto LABEL_51;
        }

        sub_25F492ECC(v57, *(&v57 + 1), v58, 1);
        sub_25F492ECC(v28, *(&v28 + 1), v29, 1);
        sub_25F492ECC(v28, *(&v28 + 1), v29, 1);
        sub_25F492ECC(v30, *(&v30 + 1), v31, 1);
        sub_25F49428C(&v52, v51);
        v32 = sub_25F3F2F20();
        sub_25F492ED8(v28, *(&v28 + 1), v29, 1);
        sub_25F492ED8(v30, *(&v30 + 1), v31, 1);
        sub_25F492ED8(v30, *(&v30 + 1), v31, 1);
        sub_25F492ED8(v28, *(&v28 + 1), v29, 1);
        if ((v32 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (BYTE8(v58))
        {
          sub_25F492ECC(v53, *(&v53 + 1), v54, 0);
          sub_25F492ECC(v30, *(&v30 + 1), v31, 1);
          sub_25F492ED8(v28, *(&v28 + 1), v29, 0);
          v40 = *(&v30 + 1);
          v39 = v30;
          v41 = v31;
          v42 = 1;
          goto LABEL_48;
        }

        if (v53)
        {
          v33 = 0x65676E6172;
        }

        else
        {
          v33 = 1953720684;
        }

        if (v53)
        {
          v34 = 0xE500000000000000;
        }

        else
        {
          v34 = 0xE400000000000000;
        }

        if (v57)
        {
          v35 = 0x65676E6172;
        }

        else
        {
          v35 = 1953720684;
        }

        if (v57)
        {
          v36 = 0xE500000000000000;
        }

        else
        {
          v36 = 0xE400000000000000;
        }

        if (v33 == v35 && v34 == v36)
        {
          sub_25F492ECC(v57, *(&v57 + 1), v58, 0);
          sub_25F492ECC(v28, *(&v28 + 1), v29, 0);
          sub_25F492ECC(v28, *(&v28 + 1), v29, 0);
          sub_25F492ECC(v30, *(&v30 + 1), v31, 0);
          sub_25F49428C(&v52, v51);
        }

        else
        {
          v49 = sub_25F4A3270();
          sub_25F492ECC(v30, *(&v30 + 1), v31, 0);
          sub_25F492ECC(v28, *(&v28 + 1), v29, 0);
          sub_25F492ECC(v28, *(&v28 + 1), v29, 0);
          sub_25F492ECC(v30, *(&v30 + 1), v31, 0);
          sub_25F49428C(&v52, v51);

          if ((v49 & 1) == 0)
          {
            sub_25F492ED8(v28, *(&v28 + 1), v29, 0);
            sub_25F492ED8(v30, *(&v30 + 1), v31, 0);
            sub_25F492ED8(v30, *(&v30 + 1), v31, 0);
            sub_25F492ED8(v28, *(&v28 + 1), v29, 0);
LABEL_50:
            sub_25F4942C4(&v52);
LABEL_51:
            sub_25F4942C4(&v56);
            return 0;
          }
        }

        if (*(&v28 + 1) == *(&v30 + 1) && v29 == v31)
        {
          sub_25F492ED8(v28, *(&v28 + 1), v29, 0);
          sub_25F492ED8(v30, *(&v28 + 1), v29, 0);
          sub_25F492ED8(v30, *(&v28 + 1), v29, 0);
          sub_25F492ED8(v28, *(&v28 + 1), v29, 0);
        }

        else
        {
          v37 = sub_25F4A3270();
          sub_25F492ED8(v28, *(&v28 + 1), v29, 0);
          sub_25F492ED8(v30, *(&v30 + 1), v31, 0);
          sub_25F492ED8(v30, *(&v30 + 1), v31, 0);
          sub_25F492ED8(v28, *(&v28 + 1), v29, 0);
          if ((v37 & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      if ((sub_25F3FAD5C(v55, v59) & 1) == 0)
      {
        goto LABEL_50;
      }

      v38 = sub_25F48D5C0(*(&v55 + 1), *(&v59 + 1));
      sub_25F4942C4(&v52);
      sub_25F4942C4(&v56);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      result = v43;
      v2 = a2;
      v7 = v45;
    }

    while (v45);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t PreviewVariantsConfiguration.title.getter()
{
  v1 = *v0;

  return v1;
}

PreviewsMessagingOS::PreviewVariantsConfiguration __swiftcall PreviewVariantsConfiguration.init(title:variants:)(Swift::String title, Swift::OpaquePointer variants)
{
  object = title._object;
  countAndFlagsBits = title._countAndFlagsBits;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD98, &qword_25F4B2A38);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25F4A43D0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = variants;
  *v6 = countAndFlagsBits;
  v6[1] = object;
  v6[2] = v7;
  result.sections._rawValue = v9;
  result.title._object = v8;
  result.title._countAndFlagsBits = v7;
  return result;
}

PreviewsMessagingOS::PreviewVariantsConfiguration __swiftcall PreviewVariantsConfiguration.init(title:sections:)(Swift::String title, Swift::OpaquePointer sections)
{
  *v2 = title;
  *(v2 + 16) = sections;
  result.title = title;
  result.sections = sections;
  return result;
}

uint64_t sub_25F48DCD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F6974636573;
  }

  else
  {
    v3 = 0x656C746974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F6974636573;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F48DD74()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48DDF4(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48DE60(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48DEE8(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x736E6F6974636573;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48DF24()
{
  if (*v0)
  {
    return 0x736E6F6974636573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_25F48DFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDA8, &qword_25F4B2A40);
  sub_25F4930E0();
  sub_25F493134(&qword_27FD6FDB0, &qword_27FD6FDA8, &qword_25F4B2A40, sub_25F4931B0);
  return sub_25F4A28D0();
}

uint64_t PreviewVariantsConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for PreviewVariantsConfiguration.Key;
  v5 = sub_25F4930E0();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for PreviewVariantsConfiguration.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDA8, &qword_25F4B2A40);
    sub_25F493134(&qword_27FD6FDB0, &qword_27FD6FDA8, &qword_25F4B2A40, sub_25F4931B0);
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
  }

  return result;
}

uint64_t static PreviewVariantsConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  return sub_25F3FB298(v2, v3);
}

uint64_t sub_25F48E324(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  return sub_25F3FB298(v2, v3);
}

uint64_t PreviewVariantsConfiguration.Section.title.getter()
{
  v1 = *v0;

  return v1;
}

PreviewsMessagingOS::PreviewVariantsConfiguration::Section __swiftcall PreviewVariantsConfiguration.Section.init(title:variants:)(Swift::String title, Swift::OpaquePointer variants)
{
  *v2 = title;
  *(v2 + 16) = variants;
  result.title.value = title;
  result.variants = variants;
  return result;
}

uint64_t sub_25F48E3DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746E6169726176;
  }

  else
  {
    v3 = 0x656C746974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746E6169726176;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F48E480()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48E500(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48E56C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48E5F4(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x73746E6169726176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48E630()
{
  if (*v0)
  {
    return 0x73746E6169726176;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_25F48E6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
  sub_25F493210();
  sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
  return sub_25F4A28D0();
}

uint64_t PreviewVariantsConfiguration.Section.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for PreviewVariantsConfiguration.Section.Key;
  v5 = sub_25F493210();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for PreviewVariantsConfiguration.Section.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
    sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
  }

  return result;
}

uint64_t PreviewOverridesConfiguration.SelectionBehavior.Discriminant.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C655369746C756DLL;
  }

  else
  {
    return 0x6553656C676E6973;
  }
}

uint64_t sub_25F48EA1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C655369746C756DLL;
  }

  else
  {
    v3 = 0x6553656C676E6973;
  }

  if (v2)
  {
    v4 = 0xEC0000007463656CLL;
  }

  else
  {
    v4 = 0xEB00000000746365;
  }

  if (*a2)
  {
    v5 = 0x6C655369746C756DLL;
  }

  else
  {
    v5 = 0x6553656C676E6973;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746365;
  }

  else
  {
    v6 = 0xEC0000007463656CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F48EAD4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48EB68(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48EBE8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48EC84(uint64_t *a1@<X8>)
{
  v2 = 0x6553656C676E6973;
  if (*v1)
  {
    v2 = 0x6C655369746C756DLL;
  }

  v3 = 0xEC0000007463656CLL;
  if (*v1)
  {
    v3 = 0xEB00000000746365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48ECD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F494200();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F48ED98(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000018;
  v3 = *a1;
  v4 = 0x800000025F4B6D30;
  if (v3 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v3 == 1)
  {
    v6 = 0x800000025F4B6D30;
  }

  else
  {
    v6 = 0x800000025F4B6D50;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC000000746E616ELL;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v4 = 0x800000025F4B6D50;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F48EE78()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48EF30(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48EFD4(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F48F088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F49406C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F48F0B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x800000025F4B6D30;
  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0xD000000000000018;
    v4 = 0x800000025F4B6D50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25F48F12C()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_25F48F240(char a1, uint64_t a2, uint64_t a3)
{
  sub_25F493278();
  sub_25F4932CC();
  sub_25F493374();

  v3 = sub_25F4A28D0();

  return v3;
}

uint64_t sub_25F48F2F0(uint64_t a1)
{
  sub_25F493278();
  sub_25F4932CC();
  sub_25F493320();

  v1 = sub_25F4A28D0();

  return v1;
}

uint64_t PreviewOverridesConfiguration.SelectionBehavior.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for PreviewOverridesConfiguration.SelectionBehavior.Key;
  v5 = sub_25F493278();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F4932CC();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for PreviewOverridesConfiguration.SelectionBehavior.Key;
    v18 = v5;
    if (v13)
    {
      LOBYTE(v16[0]) = 2;
      sub_25F493320();
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v9 = 0;
      v10 = 0;
      v11 = v13;
    }

    else
    {
      LOBYTE(v16[0]) = 1;
      sub_25F493374();
      sub_25F4A2530();
      v12 = sub_25F4A25E0();
      (*(*(v12 - 8) + 8))(a1, v12);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v11 = v13;
      v9 = v14;
      v10 = v15;
    }

    *a2 = v11;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v13;
  }

  return result;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.defaultVariant.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.defaultVariant.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

PreviewsMessagingOS::PreviewOverridesConfiguration::SingleSelectConfiguration __swiftcall PreviewOverridesConfiguration.SingleSelectConfiguration.init(style:defaultVariant:)(PreviewsMessagingOS::PreviewOverridesConfiguration::SingleSelectConfiguration::Style style, PreviewsMessagingOS::PreviewVariant::ID defaultVariant)
{
  v3 = *defaultVariant.rawValue._countAndFlagsBits;
  v4 = *(defaultVariant.rawValue._countAndFlagsBits + 8);
  *v2 = *style;
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  result.defaultVariant = defaultVariant;
  result.style = style;
  return result;
}

uint64_t sub_25F48F704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x56746C7561666564;
  }

  else
  {
    v3 = 0x656C797473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEE00746E61697261;
  }

  if (*a2)
  {
    v5 = 0x56746C7561666564;
  }

  else
  {
    v5 = 0x656C797473;
  }

  if (*a2)
  {
    v6 = 0xEE00746E61697261;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F48F7B4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48F840(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48F8B8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48F94C(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x56746C7561666564;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEE00746E61697261;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48F994()
{
  if (*v0)
  {
    return 0x56746C7561666564;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_25F48FA20(char a1, uint64_t a2, uint64_t a3)
{
  sub_25F4933D4();
  sub_25F493428();
  sub_25F493080();

  v3 = sub_25F4A28D0();

  return v3;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for PreviewOverridesConfiguration.SingleSelectConfiguration.Key;
  v5 = sub_25F4933D4();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F493428();
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v6 = v15;
    v13 = &type metadata for PreviewOverridesConfiguration.SingleSelectConfiguration.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F493080();
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v6;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return result;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.Style.rawValue.getter()
{
  if (*v0)
  {
    return 0x65676E6172;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_25F48FC64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65676E6172;
  }

  else
  {
    v3 = 1953720684;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65676E6172;
  }

  else
  {
    v5 = 1953720684;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F48FD00()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48FD78(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F48FDDC(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48FE5C(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 0x65676E6172;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48FE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4941AC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t PreviewOverridesConfiguration.MultiSelectConfiguration.defaultVariants.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_25F490014()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F490098(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4900F4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25F4A3170();

  *a2 = v3 != 0;
  return result;
}

uint64_t PreviewOverridesConfiguration.MultiSelectConfiguration.propertyListValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F49347C();
  sub_25F4934D0();
  return sub_25F4A25C0();
}

uint64_t PreviewOverridesConfiguration.MultiSelectConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewOverridesConfiguration.MultiSelectConfiguration.Key;
  v7[4] = sub_25F49347C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F4934D0();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F490338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F49347C();
  sub_25F4934D0();
  return sub_25F4A25C0();
}

uint64_t sub_25F4903C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewOverridesConfiguration.MultiSelectConfiguration.Key;
  v7[4] = sub_25F49347C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F4934D0();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F490508(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F494158();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t PreviewVariant.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PreviewVariant.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t PreviewVariant.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PreviewVariant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PreviewVariant.renderEffects.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

double PreviewVariant.init(id:displayName:renderEffect:interfaceOrientationOverride:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1[1];
  v8 = *a4;
  v9 = a4[1];
  v10 = *a5;
  *a6 = *a1;
  *(a6 + 8) = v7;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FE10, &unk_25F4B2A50);
  v11 = swift_allocObject();
  *&result = 1;
  *(v11 + 16) = xmmword_25F4A43D0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(a6 + 32) = v11;
  *(a6 + 40) = v10;
  return result;
}

void *PreviewVariant.init(id:displayName:renderEffects:interfaceOrientationOverride:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = result[1];
  v7 = *a5;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = v7;
  return result;
}

uint64_t sub_25F4907DC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4908D4(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4909B8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F490AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F4940B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F490ADC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xED00007374636566;
  v6 = 0x66457265646E6572;
  v7 = 0x800000025F4B6DA0;
  v8 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v8 = 0x66457265646E6572;
    v7 = 0xEC00000074636566;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4E79616C70736964;
    v3 = 0xEB00000000656D61;
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

uint64_t sub_25F490B90()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x66457265646E6572;
  v4 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v4 = 0x66457265646E6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
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

uint64_t sub_25F490C90(__int128 *a1)
{
  v26 = *a1;
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  if (v3[2])
  {
    v5 = v3[4];
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x676E697373694DLL;
  }

  v25 = 0;
  v24 = v26;
  v23 = 1;
  v22[0] = v2;
  v22[1] = v1;
  v21 = 2;
  v20 = v3;
  v19 = 3;
  v18 = v4;
  v17 = 4;
  v16[0] = v5;
  v16[1] = v6;
  sub_25F494254(&v26, v15);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  v8 = sub_25F49355C();
  v9 = sub_25F493080();
  v10 = sub_25F4386A8();
  v11 = sub_25F43AA08();
  v12 = sub_25F43872C();
  v13 = sub_25F4A28A0(&v25, &v24, &v23, v22, &v21, &v20, &v19, &v18, &v17, v16, &type metadata for PreviewVariant.Key, &type metadata for PreviewVariant.ID, &type metadata for PreviewVariant.Key, MEMORY[0x277D837D0], &type metadata for PreviewVariant.Key, v7, &type metadata for PreviewVariant.Key, &type metadata for PreviewTraits.Orientation, &type metadata for PreviewVariant.Key, &type metadata for RenderEffect, v8, v9, v8, MEMORY[0x277D405B0], v8, v10, v8, v11, v8, v12);

  return v13;
}

uint64_t PreviewVariant.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = &type metadata for PreviewVariant.Key;
  v5 = sub_25F49355C();
  v17 = v5;
  LOBYTE(v15[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F4386A8();
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v7 = v13;
    if (!v13)
    {
      v16 = &type metadata for PreviewVariant.Key;
      v17 = v5;
      LOBYTE(v15[0]) = 4;
      sub_25F43872C();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FE10, &unk_25F4B2A50);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25F4A43D0;
      *(v7 + 32) = 0;
      *(v7 + 40) = v14;
    }

    v16 = &type metadata for PreviewVariant.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 0;
    sub_25F493080();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewVariant.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewVariant.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 3;
    sub_25F43AA08();
    sub_25F4A2580();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v10 = v18;
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v7;
    *(a2 + 40) = v10;
  }

  return result;
}

uint64_t PreviewVariant.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_25F4A2C60();
  sub_25F4A2C60();
  MEMORY[0x25F8DDB20](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_25F4A2C60();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  if (v3 == 4)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();
  sub_25F4A2C60();
}
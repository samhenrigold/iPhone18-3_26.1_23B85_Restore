unint64_t sub_2144A23C4()
{
  result = qword_280B34B48;
  if (!qword_280B34B48)
  {
    result = swift_getWitnessTable(aY_28, &type metadata for LargeImage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34B48);
  }

  return result;
}

uint64_t sub_2144A2418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F506863616DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6953726566667562 && a2 == 0xEA0000000000657ALL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365726464416D76 && a2 == 0xE900000000000073 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_2144A258C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2144A2598()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2144A25C8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2144A2620()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = *(v0 + 24);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v1 + 16);
  v30 = MEMORY[0x277D837D0];
  *&v29 = v9;
  *(&v29 + 1) = v8;
  sub_213FDC730(&v29, v28);

  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v10;
  sub_2140524DC(v28, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v31 = v27;
  v12 = type metadata accessor for IDSSampleInvitation(0);
  v13 = *(v12 + 20);
  sub_2144716D8(v1 + v13, v7);
  v14 = sub_2146D8B08();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v7, 1, v14);
  sub_213FB2DF4(v7, &qword_27C913090, &unk_2146E9DB0);
  if (v17 != 1)
  {
    sub_2144716D8(v1 + v13, v5);
    if (v16(v5, 1, v14) == 1)
    {
      sub_213FB2DF4(v5, &qword_27C913090, &unk_2146E9DB0);
      sub_2144AEF6C(1702125924, 0xE400000000000000, &v29);
      sub_213FB2DF4(&v29, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v30 = v14;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
      (*(v15 + 32))(boxed_opaque_existential_0, v5, v14);
      sub_213FDC730(&v29, v28);
      v19 = v31;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v27 = v19;
      sub_2140524DC(v28, 1702125924, 0xE400000000000000, v20);
      v31 = v27;
    }
  }

  v21 = v1 + *(v12 + 24);
  v22 = *(v21 + 24);
  if (!v22)
  {
    return v31;
  }

  if (v22 == 1)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v24 = *(v21 + 16);
    v30 = MEMORY[0x277D837D0];
    *&v29 = v24;
    *(&v29 + 1) = v22;
    sub_213FDC730(&v29, v28);

    v25 = v31;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v25;
    sub_2140524DC(v28, 0x6E6F73616572, 0xE600000000000000, v26);
    return v27;
  }

  return result;
}

unint64_t sub_2144A2974@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
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

uint64_t sub_2144A2A94()
{
  sub_2144A2620();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144A2AE8()
{
  sub_2144A2620();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144A2B3C(uint64_t a1)
{
  *(a1 + 8) = sub_2144A2BF0(&qword_27C90CB28, byte_2146FA680);
  result = sub_2144A2BF0(&qword_27C90CAF0, a1_44);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for IDSSampleInvitation(uint64_t a1)
{
  result = qword_280B2F268;
  if (!qword_280B2F268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144A2BF0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IDSSampleInvitation(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144A2C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214426938(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_21409320C(319);
    if (v5 <= 0x3F)
    {
      sub_214084AA4(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2144A2CF8(uint64_t a1)
{
  *(a1 + 8) = sub_2144643EC(&qword_27C90C798, byte_2146F8060);
  result = sub_2144643EC(&qword_27C90C680, aQ_27);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDActionCalendar(uint64_t a1)
{
  result = qword_27C914738;
  if (!qword_27C914738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2144A2DD4(uint64_t a1)
{
  sub_2146D8B08();
  if (v1 <= 0x3F)
  {
    sub_214426938(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_214084AA4(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2144A2E70@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 500;
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

unint64_t sub_2144A2FBC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282653968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144A3178@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2144A31C4(__n128 *a1)
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

uint64_t sub_2144A3220@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 28));
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

uint64_t type metadata accessor for IMSGSMACharacteristic(uint64_t a1)
{
  result = qword_27C914790;
  if (!qword_27C914790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2144A32D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 28));
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

uint64_t sub_2144A3350@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 32));
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

__n128 sub_2144A33BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 32));
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

uint64_t sub_2144A3434()
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

uint64_t sub_2144A34B0()
{
  v1 = v0 + *(type metadata accessor for IMSGSMACharacteristic(0) + 28);
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

uint64_t sub_2144A3540()
{
  v1 = v0 + *(type metadata accessor for IMSGSMACharacteristic(0) + 32);
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

void sub_2144A35D0(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2144A370C()
{
  if (*v0)
  {
    return 0x534C546F5052534DLL;
  }

  else
  {
    return 1347572557;
  }
}

void sub_2144A38C4(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2144A39E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x534C546F5052534DLL;
  }

  else
  {
    v3 = 1347572557;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x534C546F5052534DLL;
  }

  else
  {
    v5 = 1347572557;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2144A3A88()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A3B04(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A3C44()
{
  if (*v0)
  {
    return 1347703379;
  }

  else
  {
    return 5264466;
  }
}

uint64_t sub_2144A3C70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1347703379;
  }

  else
  {
    v3 = 5264466;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1347703379;
  }

  else
  {
    v5 = 5264466;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2144A3D08()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A3D7C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2144A40A0(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2144A4108()
{
  v1 = 0x747365676944;
  if (*v0 != 1)
  {
    v1 = 0x442064656E676953;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4279105;
  }
}

uint64_t sub_2144A4164(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x747365676944;
  if (v2 != 1)
  {
    v4 = 0x442064656E676953;
    v3 = 0xED00007473656769;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4279105;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x747365676944;
  if (*a2 != 1)
  {
    v8 = 0x442064656E676953;
    v7 = 0xED00007473656769;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 4279105;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A4270()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2144A4314(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2144A43A4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2144A4450(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x747365676944;
  if (v2 != 1)
  {
    v5 = 0x442064656E676953;
    v4 = 0xED00007473656769;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 4279105;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_2144A4570(uint64_t a1, uint64_t a2)
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

void (*sub_2144A46B8(void *a1))(uint64_t *a1, char a2)
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

void (*sub_2144A4754(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_2144A48FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 28);
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

double sub_2144A4998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IMSGSMACharacteristic(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144A4A60(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IMSGSMACharacteristic(0) + 28);
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

void (*sub_2144A4BB0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMSGSMACharacteristic(0) + 28);
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

uint64_t sub_2144A4C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 28));
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

uint64_t sub_2144A4D0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IMSGSMACharacteristic(0) + 28);
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

void (*sub_2144A4DA4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMSGSMACharacteristic(0) + 28);
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
  return sub_21439DFAC;
}

void sub_2144A4E50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 32);
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

double sub_2144A4EEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IMSGSMACharacteristic(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144A4FB4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IMSGSMACharacteristic(0) + 32);
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

void (*sub_2144A5104(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMSGSMACharacteristic(0) + 32);
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

uint64_t sub_2144A51F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMSGSMACharacteristic(0) + 32));
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

uint64_t sub_2144A5260(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IMSGSMACharacteristic(0) + 32);
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

void (*sub_2144A52F8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMSGSMACharacteristic(0) + 32);
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
  return sub_21409E45C;
}

uint64_t sub_2144A53A4@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IMSGSMACharacteristic(0);
  v4 = v1 + *(result + 36);
  *a1 = *v4;
  *(a1 + 8) = *(v4 + 8);
  return result;
}

uint64_t sub_2144A53E4(uint64_t a1)
{
  result = type metadata accessor for IMSGSMACharacteristic(0);
  v4 = v1 + *(result + 36);
  *v4 = *a1;
  *(v4 + 8) = *(a1 + 8);
  return result;
}

unint64_t sub_2144A5548()
{
  result = qword_27C914748;
  if (!qword_27C914748)
  {
    result = swift_getWitnessTable(byte_2147507D0, &type metadata for IMSGSMATransportProtoCharacteristic.PSSignallingProto, v0, v1);
    atomic_store(result, &qword_27C914748);
  }

  return result;
}

unint64_t sub_2144A55A0()
{
  result = qword_27C914750;
  if (!qword_27C914750)
  {
    result = swift_getWitnessTable(asc_2147508C0, &type metadata for IMSGSMATransportProtoCharacteristic.PSMediaProto, v0, v1);
    atomic_store(result, &qword_27C914750);
  }

  return result;
}

unint64_t sub_2144A55F8()
{
  result = qword_27C914758;
  if (!qword_27C914758)
  {
    result = swift_getWitnessTable(byte_2147509B0, &type metadata for IMSGSMATransportProtoCharacteristic.PSRTMediaProto, v0, v1);
    atomic_store(result, &qword_27C914758);
  }

  return result;
}

unint64_t sub_2144A5650()
{
  result = qword_27C914760;
  if (!qword_27C914760)
  {
    result = swift_getWitnessTable(asc_214750AA0, &type metadata for IMSGSMATransportProtoCharacteristic.WifiSignallingProto, v0, v1);
    atomic_store(result, &qword_27C914760);
  }

  return result;
}

unint64_t sub_2144A56A8()
{
  result = qword_27C914768;
  if (!qword_27C914768)
  {
    result = swift_getWitnessTable(a9_8, &type metadata for IMSGSMATransportProtoCharacteristic.WifiMediaProto, v0, v1);
    atomic_store(result, &qword_27C914768);
  }

  return result;
}

unint64_t sub_2144A5700()
{
  result = qword_27C914770;
  if (!qword_27C914770)
  {
    result = swift_getWitnessTable(aI_26, &type metadata for IMSGSMATransportProtoCharacteristic.WifiRTMediaProto, v0, v1);
    atomic_store(result, &qword_27C914770);
  }

  return result;
}

unint64_t sub_2144A5754(uint64_t a1)
{
  *(a1 + 8) = sub_214305490();
  result = sub_214305538();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144A5788()
{
  result = qword_27C914778;
  if (!qword_27C914778)
  {
    result = swift_getWitnessTable(asc_214750D8C, &type metadata for IMSGSMACharacteristic.AuthType, v0, v1);
    atomic_store(result, &qword_27C914778);
  }

  return result;
}

unint64_t sub_2144A57E0()
{
  result = qword_27C914780;
  if (!qword_27C914780)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C914788, qword_214750E80);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27C914780);
  }

  return result;
}

uint64_t sub_2144A5844(uint64_t a1)
{
  *(a1 + 8) = sub_2144A58AC(&qword_27C9093E0, a9um);
  result = sub_2144A58AC(&qword_27C9093F0, byte_2146FCEF8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144A58AC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IMSGSMACharacteristic(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IMSGSMATransportProtoCharacteristic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IMSGSMATransportProtoCharacteristic(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

void sub_2144A5A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214426938(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_2144A5B28(319, &qword_280B30B80, MEMORY[0x277CC9260]);
    if (v5 <= 0x3F)
    {
      sub_214084AA4(319);
      if (v6 <= 0x3F)
      {
        sub_2144A5B28(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2144A5B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_2144A5B8C()
{
  result = qword_27C9147A0;
  if (!qword_27C9147A0)
  {
    result = swift_getWitnessTable(byte_214750DF4, &type metadata for IMSGSMACharacteristic.AuthType, v0, v1);
    atomic_store(result, &qword_27C9147A0);
  }

  return result;
}

unint64_t sub_2144A5BE0()
{
  result = qword_27C9147A8;
  if (!qword_27C9147A8)
  {
    result = swift_getWitnessTable(byte_214750CE8, &type metadata for IMSGSMATransportProtoCharacteristic.WifiRTMediaProto, v0, v1);
    atomic_store(result, &qword_27C9147A8);
  }

  return result;
}

unint64_t sub_2144A5C34()
{
  result = qword_27C9147B0;
  if (!qword_27C9147B0)
  {
    result = swift_getWitnessTable(byte_214750BF8, &type metadata for IMSGSMATransportProtoCharacteristic.WifiMediaProto, v0, v1);
    atomic_store(result, &qword_27C9147B0);
  }

  return result;
}

unint64_t sub_2144A5C88()
{
  result = qword_27C9147B8;
  if (!qword_27C9147B8)
  {
    result = swift_getWitnessTable(byte_214750B08, &type metadata for IMSGSMATransportProtoCharacteristic.WifiSignallingProto, v0, v1);
    atomic_store(result, &qword_27C9147B8);
  }

  return result;
}

unint64_t sub_2144A5CDC()
{
  result = qword_27C9147C0;
  if (!qword_27C9147C0)
  {
    result = swift_getWitnessTable(byte_214750A18, &type metadata for IMSGSMATransportProtoCharacteristic.PSRTMediaProto, v0, v1);
    atomic_store(result, &qword_27C9147C0);
  }

  return result;
}

unint64_t sub_2144A5D30()
{
  result = qword_27C9147C8;
  if (!qword_27C9147C8)
  {
    result = swift_getWitnessTable(aY_29, &type metadata for IMSGSMATransportProtoCharacteristic.PSMediaProto, v0, v1);
    atomic_store(result, &qword_27C9147C8);
  }

  return result;
}

unint64_t sub_2144A5D84()
{
  result = qword_27C9147D0;
  if (!qword_27C9147D0)
  {
    result = swift_getWitnessTable(aI_27, &type metadata for IMSGSMATransportProtoCharacteristic.PSSignallingProto, v0, v1);
    atomic_store(result, &qword_27C9147D0);
  }

  return result;
}

uint64_t sub_2144A5E20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E69616C70;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1818848627;
    }

    else
    {
      v4 = 0x6E69616C70;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x656D686361747461;
    v5 = 0xEA0000000000746ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3 == 3)
    {
      v5 = 0x8000000214786E80;
    }

    else
    {
      v5 = 0x8000000214786EA0;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE400000000000000;
    v8 = 1818848627;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000012;
    v6 = 0x8000000214786E80;
    v7 = 0x8000000214786EA0;
    v8 = 0xD000000000000013;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xEA0000000000746ELL;
  if (v4 != 0x656D686361747461)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v5 != v11)
  {
LABEL_30:
    v12 = sub_2146DA6A8();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_2144A5F9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656369766564;
  v6 = 0xE800000000000000;
  if (a1 != 5)
  {
    v5 = 0x73676E6974746573;
    v4 = 0xE800000000000000;
  }

  v7 = 0x7261646E656C6163;
  if (a1 != 3)
  {
    v7 = 0x65736F706D6F63;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x72656C616964;
  if (a1 != 1)
  {
    v9 = 7364973;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7107189;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x72656C616964)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 7364973)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656369766564)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x73676E6974746573)
      {
LABEL_39:
        v13 = sub_2146DA6A8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x7261646E656C6163)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x65736F706D6F63)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_2144A61A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E69646FLL;
  v3 = 0x636E456567616D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D6F436573667A6CLL;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (v4 == 2)
    {
      v6 = 0xEF64657373657270;
    }

    else
    {
      v6 = 0x8000000214786040;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6464697754657270;
    }

    else
    {
      v5 = 0x636E456567616D69;
    }

    if (v4)
    {
      v6 = 0xEB0000000064656CLL;
    }

    else
    {
      v6 = 0xED0000676E69646FLL;
    }
  }

  v7 = 0x6D6F436573667A6CLL;
  v8 = 0x8000000214786040;
  if (a2 == 2)
  {
    v8 = 0xEF64657373657270;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (a2)
  {
    v3 = 0x6464697754657270;
    v2 = 0xEB0000000064656CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A6314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "digitalwallet.carkey.ccc";
      v3 = 0xD000000000000013;
    }

    else
    {
      v4 = "digitalwallet.apple";
      v3 = 0xD000000000000018;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000028;
    }

    if (v2)
    {
      v4 = "neric.authorizationToken";
    }

    else
    {
      v4 = "contentDescription";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a2 == 2)
    {
      v6 = "digitalwallet.carkey.ccc";
    }

    else
    {
      v6 = "digitalwallet.apple";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000028;
    }

    if (a2)
    {
      v6 = "neric.authorizationToken";
    }

    else
    {
      v6 = "contentDescription";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_2144A643C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x657A65657262;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6562656C6B637568;
    }

    else
    {
      v4 = 0x6F65646976;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000797272;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6157646564697567;
    }

    else
    {
      v4 = 0x657A65657262;
    }

    if (v3)
    {
      v5 = 0xEA00000000006B6CLL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x6562656C6B637568;
  v8 = 0xEB00000000797272;
  if (a2 != 2)
  {
    v7 = 0x6F65646976;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6157646564697567;
    v6 = 0xEA00000000006B6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A658C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A66A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x657461647075;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74736575716572;
    }

    else
    {
      v4 = 0x5274736575716572;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF65736E6F707365;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x68736572666572;
    }

    else
    {
      v4 = 0x657461647075;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x74736575716572;
  if (a2 != 2)
  {
    v8 = 0x5274736575716572;
    v7 = 0xEF65736E6F707365;
  }

  if (a2)
  {
    v2 = 0x68736572666572;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A67FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000026;
  v3 = "idsScreenSharingInvitation";
  if (a1 <= 3u)
  {
    v4 = "ZoneInvitationRequestMessage";
    v5 = 0xD00000000000002DLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000026;
      v4 = "ZoneInvitationResponseMessage";
    }

    v8 = "sampleProtobufMessage";
    v9 = 0xD00000000000002CLL;
    if (!a1)
    {
      v9 = 0xD000000000000015;
      v8 = "idsScreenSharingInvitation";
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "ionRequestMessage";
    v5 = 0xD00000000000001BLL;
    v6 = "walletPassSharingUrlMessage";
    v7 = 0xD00000000000002CLL;
    if (a1 == 7)
    {
      v7 = 0xD000000000000026;
    }

    else
    {
      v6 = "strationRequestMessage";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "ingCapabilitiesMessage";
    v9 = 0xD00000000000001ELL;
    if (a1 != 4)
    {
      v9 = 0xD000000000000031;
      v8 = "walletPassSharingCancelMessage";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0xD000000000000015;
        goto LABEL_39;
      }

      v13 = "walletCloudStoreZoneInvitationRequestMessage";
      goto LABEL_37;
    }

    if (a2 == 2)
    {
      v3 = "ZoneInvitationRequestMessage";
      v2 = 0xD00000000000002DLL;
    }

    else
    {
      v3 = "ZoneInvitationResponseMessage";
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ionRequestMessage";
        v2 = 0xD00000000000001BLL;
        goto LABEL_39;
      }

      if (a2 == 7)
      {
        v3 = "walletPassSharingUrlMessage";
        goto LABEL_39;
      }

      v13 = "walletRemoteRegistrationRequestResultMessage";
LABEL_37:
      v3 = (v13 - 32);
      v2 = 0xD00000000000002CLL;
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v3 = "ingCapabilitiesMessage";
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = "walletPassSharingCancelMessage";
      v2 = 0xD000000000000031;
    }
  }

LABEL_39:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2146DA6A8();
  }

  return v14 & 1;
}

uint64_t sub_2144A6A28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x65676E616863;
    }

    else
    {
      v3 = 0x64696C61766E69;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F69746E656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x68737265626D656DLL;
    v4 = 0xEA00000000007069;
  }

  else
  {
    v3 = 0x6574736973726570;
    v4 = 0xEB0000000065636ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65676E616863;
    }

    else
    {
      v9 = 0x64696C61766E69;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x68737265626D656DLL;
    v6 = 0xEA00000000007069;
    if (a2 != 3)
    {
      v5 = 0x6574736973726570;
      v6 = 0xEB0000000065636ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x6E6F69746E656DLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A6BC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736E6F6974706FLL;
    }

    else
    {
      v4 = 0x68437972616E6962;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC0000006563696FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C676E6973;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (a2 != 2)
  {
    v8 = 0x68437972616E6962;
    v7 = 0xEC0000006563696FLL;
  }

  if (a2)
  {
    v2 = 0x656C676E6973;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A6D08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x64656C696166;
    }

    else
    {
      v3 = 0x65726576696C6564;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE900000000000064;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000214787050;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564646962726F66;
    v4 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x726F727265;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x64656C696166;
    }

    else
    {
      v9 = 0x65726576696C6564;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564646962726F66;
    v6 = 0xE90000000000006ELL;
    if (a2 != 3)
    {
      v5 = 0x726F727265;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000214787050;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A6E8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726576696C6564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x69737365636F7270;
    }

    else
    {
      v4 = 0x726F777265746E69;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xEC000000676E696BLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x79616C70736964;
    }

    else
    {
      v4 = 0x79726576696C6564;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x69737365636F7270;
  v8 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v7 = 0x726F777265746E69;
    v8 = 0xEC000000676E696BLL;
  }

  if (a2)
  {
    v2 = 0x79616C70736964;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A6FE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7221858;
  if (a1 <= 1u)
  {
    v4 = 0x8000000214788450;
    v3 = 0x8000000214788470;
    v6 = a1 == 0;
    if (a1)
    {
      v7 = 0xD000000000000020;
    }

    else
    {
      v7 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0x80000002147884A0;
    v5 = 7811682;
    if (a1 == 3)
    {
      v5 = 7221858;
    }

    else
    {
      v3 = 0xE300000000000000;
    }

    v6 = a1 == 2;
    if (a1 == 2)
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v7 = v5;
    }
  }

  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = 0xD000000000000020;
    }

    else
    {
      v10 = 0xD00000000000001BLL;
    }

    if (a2)
    {
      v9 = 0x8000000214788470;
    }

    else
    {
      v9 = 0x8000000214788450;
    }

    if (v7 != v10)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v9 = 0x80000002147884A0;
    if (v7 != 0xD000000000000023)
    {
LABEL_31:
      v11 = sub_2146DA6A8();
      goto LABEL_32;
    }
  }

  else
  {
    if (a2 != 3)
    {
      v2 = 7811682;
    }

    v9 = 0xE300000000000000;
    if (v7 != v2)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_2144A7150(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF646E756F726779;
  v3 = 0x616C50726F467369;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7365636166;
    }

    else
    {
      v5 = 0x6E6F69676572;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736E6F69676572;
    }

    else
    {
      v5 = 0x616C50726F467369;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF646E756F726779;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7365636166;
  if (a2 != 2)
  {
    v8 = 0x6E6F69676572;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x736E6F69676572;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A728C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x64757469676E6F6CLL;
    }

    else
    {
      v4 = 0x656475746974616CLL;
    }

    if (v2)
    {
      v3 = 0xE900000000000065;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7972657571;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6C6562616CLL;
  }

  else
  {
    v4 = 0x6B6361626C6C6166;
    v3 = 0xEB000000006C7255;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x64757469676E6F6CLL;
    }

    else
    {
      v9 = 0x656475746974616CLL;
    }

    if (a2)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6C6562616CLL;
    if (a2 != 3)
    {
      v6 = 0x6B6361626C6C6166;
      v5 = 0xEB000000006C7255;
    }

    if (a2 == 2)
    {
      v7 = 0x7972657571;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A7420(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x616D49696A6F6D65;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = 0xEA00000000006567;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x72656B63697473;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x746F68506576696CLL;
    }

    else
    {
      v5 = 0x73654D6F69647561;
    }

    if (v4 == 3)
    {
      v6 = 0xE90000000000006FLL;
    }

    else
    {
      v6 = 0xEC00000065676173;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656B63697473;
  v9 = 0x746F68506576696CLL;
  v10 = 0xE90000000000006FLL;
  if (a2 != 3)
  {
    v9 = 0x73654D6F69647561;
    v10 = 0xEC00000065676173;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x616D49696A6F6D65;
    v2 = 0xEA00000000006567;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2146DA6A8();
  }

  return v13 & 1;
}

uint64_t sub_2144A75C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6D756964656DLL;
    }

    else
    {
      v3 = 7827308;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1751607656;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 7823730;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = 7827308;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1751607656)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE300000000000000;
    if (v3 != 7823730)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = sub_2146DA6A8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_2144A772C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "statusKitInvitation";
  v4 = a1;
  v5 = 0xD00000000000001CLL;
  if (a1 == 4)
  {
    v6 = "idsHealthInvitation";
  }

  else
  {
    v5 = 0xD00000000000001ALL;
    v6 = "idsActivitySharingInvitation";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "idsKCSharingInvitation";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000016;
  if (a1 == 1)
  {
    v9 = 0xD000000000000014;
    v10 = "idsSampleInvitation";
  }

  else
  {
    v10 = "idsHomekitInvitation";
  }

  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0xD000000000000013;
    v11 = "statusKitInvitation";
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "idsKCSharingInvitation";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001CLL;
      v3 = "idsHealthInvitation";
    }

    else
    {
      v2 = 0xD00000000000001ALL;
      v3 = "idsActivitySharingInvitation";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
      v3 = "idsSampleInvitation";
    }

    else
    {
      v2 = 0xD000000000000016;
      v3 = "idsHomekitInvitation";
    }
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2146DA6A8();
  }

  return v14 & 1;
}

uint64_t sub_2144A7890(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1936943467;
  if (a1 != 6)
  {
    v5 = 0x7265676E61;
    v4 = 0xE500000000000000;
  }

  v6 = 0x6563657264616572;
  v7 = 0xEB00000000747069;
  if (a1 != 4)
  {
    v6 = 0x6F65646976;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6165627472616568;
  v9 = 0xE900000000000074;
  if (a1 != 2)
  {
    v8 = 0x7061746B63697571;
    v9 = 0xE800000000000000;
  }

  v10 = 0x656C646F6F64;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 7364980;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1936943467)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7265676E61)
        {
LABEL_45:
          v14 = sub_2146DA6A8();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEB00000000747069;
      if (v11 != 0x6563657264616572)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6F65646976)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x6165627472616568)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x7061746B63697571)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x656C646F6F64)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7364980)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_2144A7AF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = 0xD000000000000022;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000214787FB0;
    }

    else
    {
      v4 = 0x8000000214787FD0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x323030327061;
    }

    else
    {
      v3 = 0x313030327061;
    }

    v4 = 0xE600000000000000;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      v7 = 0xD000000000000022;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000214787FB0;
    }

    else
    {
      v6 = 0x8000000214787FD0;
    }

    if (v3 != v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x323030327061;
    }

    else
    {
      v5 = 0x313030327061;
    }

    v6 = 0xE600000000000000;
    if (v3 != v5)
    {
      goto LABEL_27;
    }
  }

  if (v4 != v6)
  {
LABEL_27:
    v8 = sub_2146DA6A8();
    goto LABEL_28;
  }

  v8 = 1;
LABEL_28:

  return v8 & 1;
}

uint64_t sub_2144A7C28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7461746E6569726FLL;
  v4 = a1;
  v5 = 0x797453656C746974;
  v6 = 0xEA0000000000656CLL;
  v7 = 0xD000000000000010;
  v8 = 0x8000000214785FB0;
  if (a1 != 4)
  {
    v7 = 0x6C79745364726163;
    v8 = 0xEC0000006C725565;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x696C416567616D69;
  v10 = 0xEE00746E656D6E67;
  if (a1 != 1)
  {
    v9 = 0x6874646977;
    v10 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x7461746E6569726FLL;
    v10 = 0xEB000000006E6F69;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA0000000000656CLL;
      if (v11 != 0x797453656C746974)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000214785FB0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEC0000006C725565;
      if (v11 != 0x6C79745364726163)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00746E656D6E67;
        if (v11 != 0x696C416567616D69)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x6874646977;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_2146DA6A8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_2144A7E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D69547472617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656D6954646E65;
    }

    else
    {
      v5 = 0x6D69547472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x656C746974;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x72637365446C6163;
    }

    else
    {
      v5 = 0x6B6361626C6C6166;
    }

    if (v4 == 3)
    {
      v6 = 0xEE006E6F69747069;
    }

    else
    {
      v6 = 0xEB000000006C7255;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  v9 = 0x72637365446C6163;
  v10 = 0xEE006E6F69747069;
  if (a2 != 3)
  {
    v9 = 0x6B6361626C6C6166;
    v10 = 0xEB000000006C7255;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x656D6954646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2146DA6A8();
  }

  return v13 & 1;
}

uint64_t sub_2144A7FCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00737365726464;
  v3 = 0x41657361426C696ELL;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0x4674707572726F63;
    v8 = 0xEB00000000656C69;
    if (a1 == 1)
    {
      v7 = 0x41657361426C696ELL;
      v8 = 0xEE00737365726464;
    }

    if (a1)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0x8000000214786200;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4 == 5)
    {
      v6 = 0x8000000214786260;
    }

    else
    {
      v6 = 0x8000000214786280;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4964696C61766E69;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 3)
    {
      v6 = 0xEC0000006567616DLL;
    }

    else
    {
      v6 = 0x8000000214786240;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v2 = 0xEB00000000656C69;
        if (v5 != 0x4674707572726F63)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0x8000000214786200;
      v3 = 0xD000000000000012;
    }

    if (v5 != v3)
    {
LABEL_45:
      v10 = sub_2146DA6A8();
      goto LABEL_46;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    if (a2 == 5)
    {
      v2 = 0x8000000214786260;
    }

    else
    {
      v2 = 0x8000000214786280;
    }

    if (v5 != v9)
    {
      goto LABEL_45;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xEC0000006567616DLL;
    if (v5 != 0x4964696C61766E69)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v2 = 0x8000000214786240;
    if (v5 != 0xD000000000000014)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v6 != v2)
  {
    goto LABEL_45;
  }

  v10 = 1;
LABEL_46:

  return v10 & 1;
}

uint64_t sub_2144A820C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x746867696568;
    if (a1 != 6)
    {
      v10 = 0xD000000000000012;
      v9 = 0x8000000214787A20;
    }

    v11 = 0x80000002147879E0;
    v12 = 0xD000000000000011;
    if (a1 == 4)
    {
      v12 = 0xD000000000000014;
    }

    else
    {
      v11 = 0x8000000214787A00;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C6946616964656DLL;
    v5 = 0xED0000657A695365;
    if (a1 != 2)
    {
      v4 = 0x69616E626D756874;
      v5 = 0xEC0000006C72556CLL;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v3 = 0x80000002147879B0;
    }

    else
    {
      v6 = 0x6C7255616964656DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x746867696568)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0x8000000214787A20;
        if (v7 != 0xD000000000000012)
        {
LABEL_48:
          v14 = sub_2146DA6A8();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000002147879E0;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x8000000214787A00;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED0000657A695365;
      if (v7 != 0x6C6946616964656DLL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEC0000006C72556CLL;
      if (v7 != 0x69616E626D756874)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x80000002147879B0;
    if (v7 != 0xD000000000000010)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x6C7255616964656DLL)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_2144A84CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF726F7461636964;
  v3 = 0x6E49676E69707974;
  v4 = a1;
  v5 = 0x73654D6F69647561;
  v6 = 0xEC00000065676173;
  v7 = 0x726F707075736E75;
  v8 = 0xEB00000000646574;
  if (a1 != 4)
  {
    v7 = 0x706154696A6F6D65;
    v8 = 0xEC0000006B636162;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x7373654D74786574;
  v10 = 0xEB00000000656761;
  if (a1 != 1)
  {
    v9 = 0x6B636162706174;
    v10 = 0xE700000000000000;
  }

  if (!a1)
  {
    v9 = 0x6E49676E69707974;
    v10 = 0xEF726F7461636964;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x7373654D74786574;
        v14 = 6645601;
        goto LABEL_22;
      }

      v2 = 0xE700000000000000;
      v3 = 0x6B636162706174;
    }

    if (v11 != v3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 3)
  {
    v15 = 0x73654D6F69647561;
    v16 = 1701273971;
  }

  else
  {
    if (a2 == 4)
    {
      v13 = 0x726F707075736E75;
      v14 = 6579572;
LABEL_22:
      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v11 != v13)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v15 = 0x706154696A6F6D65;
    v16 = 1801675106;
  }

  v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v15)
  {
LABEL_32:
    v17 = sub_2146DA6A8();
    goto LABEL_33;
  }

LABEL_30:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v17 = 1;
LABEL_33:

  return v17 & 1;
}

uint64_t sub_2144A86D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7632239;
    }

    else
    {
      v3 = 28265;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7265746E65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1953069157;
    }

    else
    {
      v3 = 0x6D72657465646E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEC00000064656E69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7632239;
    }

    else
    {
      v6 = 28265;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7265746E65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1953069157)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000064656E69;
    if (v3 != 0x6D72657465646E75)
    {
LABEL_34:
      v7 = sub_2146DA6A8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_2144A8854(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 48 == a2 << 48)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2144A88CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656B6F727473;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x63696D6F63;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7966667570;
  }

  else
  {
    v4 = 0x6563736564697269;
    v3 = 0xEA0000000000746ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656B6F727473;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7966667570;
    if (a2 != 3)
    {
      v6 = 0x6563736564697269;
      v5 = 0xEA0000000000746ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x63696D6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A8A40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x746E656964617267;
  v6 = 0x746E656964617267;
  v7 = 0xEB00000000584656;
  if (a1 != 4)
  {
    v6 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x696A6F6D656DLL;
  if (a1 != 1)
  {
    v9 = 0x6D6172676F6E6F6DLL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x736F746F6870;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x746E656964617267)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000584656;
      if (v10 != 0x746E656964617267)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x63696D616E7964)
      {
LABEL_34:
        v13 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x696A6F6D656DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6D6172676F6E6F6DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x736F746F6870)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2144A8C2C(char a1, char a2)
{
  if (*&aLatn_1[8 * a1] == *&aLatn_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2144A8C94(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v8 = 0x8000000214786C70;
      v7 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    v2 = 0x8000000214786C90;
    v3 = 0xD000000000000013;
    v4 = 0x8000000214786CB0;
    v5 = 0xD000000000000015;
    v6 = a1 == 4;
  }

  else
  {
    v2 = 0x8000000214786C30;
    v3 = 0xD000000000000012;
    v4 = 0x8000000214786C50;
    if (a1 == 1)
    {
      v5 = 0x74697277646E6168;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 1)
    {
      v4 = 0xEB00000000676E69;
    }

    v6 = a1 == 0;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

LABEL_16:
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x8000000214786C70;
      if (v7 != 0xD00000000000001CLL)
      {
        goto LABEL_38;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x8000000214786C90;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v10 = 0x8000000214786CB0;
      if (v7 != 0xD000000000000015)
      {
LABEL_38:
        v11 = sub_2146DA6A8();
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0x74697277646E6168;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v10 = 0xEB00000000676E69;
    }

    else
    {
      v10 = 0x8000000214786C50;
    }

    if (v7 != v9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = 0x8000000214786C30;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_38;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_38;
  }

  v11 = 1;
LABEL_39:

  return v11 & 1;
}

uint64_t sub_2144A8E70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = 0x7465756F686C6973;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x696A6F6D65;
    }

    else
    {
      v5 = 0x6567616D69;
    }

    v6 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D6172676F6E6F6DLL;
    }

    else
    {
      v5 = 0x7465756F686C6973;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000006574;
    }
  }

  v7 = 0x696A6F6D65;
  if (a2 != 2)
  {
    v7 = 0x6567616D69;
  }

  if (a2)
  {
    v3 = 0x6D6172676F6E6F6DLL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2144A8FA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6F5465766F6DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F546576727563;
    }

    else
    {
      v4 = 0x74615065736F6C63;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000068;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F54656E696CLL;
    }

    else
    {
      v4 = 0x6F5465766F6DLL;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x6F546576727563;
  if (a2 != 2)
  {
    v7 = 0x74615065736F6C63;
    v6 = 0xE900000000000068;
  }

  if (a2)
  {
    v2 = 0x6F54656E696CLL;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2144A90E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF726F7461636964;
  v3 = 0x6E49676E69707974;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x6B636162706174;
    if (a1 != 2)
    {
      v14 = 0x506E6F6F6C6C6162;
      v13 = 0xED00006E6967756CLL;
    }

    v15 = 0x7373654D74786574;
    v16 = 0xEB00000000656761;
    if (!a1)
    {
      v15 = 0x6E49676E69707974;
      v16 = 0xEF726F7461636964;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x706154696A6F6D65;
    v6 = 0xEC0000006B636162;
    v7 = 0x5472656B63697473;
    v8 = 0xEE006B6361627061;
    if (a1 != 7)
    {
      v7 = 0xD000000000000015;
      v8 = 0x8000000214786CB0;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xE700000000000000;
    v10 = 0x72656B63697473;
    if (a1 != 4)
    {
      v10 = 0x73654D6F69647561;
      v9 = 0xEC00000065676173;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x72656B63697473)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }

      v17 = 0x73654D6F69647561;
      v18 = 1701273971;
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0xEE006B6361627061;
          if (v11 != 0x5472656B63697473)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v3 = 0xD000000000000015;
        v2 = 0x8000000214786CB0;
        goto LABEL_44;
      }

      v17 = 0x706154696A6F6D65;
      v18 = 1801675106;
    }

    v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v11 != v17)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6B636162706174)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v2 = 0xED00006E6967756CLL;
      if (v11 != 0x506E6F6F6C6C6162)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_45;
  }

  if (a2)
  {
    v2 = 0xEB00000000656761;
    if (v11 != 0x7373654D74786574)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_44:
  if (v11 != v3)
  {
LABEL_49:
    v19 = sub_2146DA6A8();
    goto LABEL_50;
  }

LABEL_45:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v19 = 1;
LABEL_50:

  return v19 & 1;
}

uint64_t sub_2144A93F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x6373654464726163;
  v5 = 0xEF6E6F6974706972;
  v6 = 0xE800000000000000;
  v7 = 0x7473694C70696863;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x8000000214788010;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x616964656DLL;
  if (a1 != 1)
  {
    v8 = 0x656C746974;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x74756F79616CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEF6E6F6974706972;
      if (v9 != 0x6373654464726163)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x7473694C70696863)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x8000000214788010;
      if (v9 != 0xD000000000000010)
      {
LABEL_34:
        v12 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE500000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x616964656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x656C746974)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x74756F79616CLL)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_2144A95DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x69737365636F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    v6 = 0xD000000000000011;
    if (v4)
    {
      v5 = 0x8000000214787720;
    }

    else
    {
      v5 = 0x8000000214787700;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0x69737365636F7270;
    v5 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v5 = 0xE700000000000000;
    v6 = 0x79616C70736964;
  }

  else
  {
    v6 = 0x726F777265746E69;
    v5 = 0xEC000000676E696BLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x79616C70736964;
  if (a2 != 3)
  {
    v8 = 0x726F777265746E69;
    v7 = 0xEC000000676E696BLL;
  }

  if (a2 != 2)
  {
    v3 = v8;
    v2 = v7;
  }

  v9 = 0x8000000214787720;
  if (!a2)
  {
    v9 = 0x8000000214787700;
  }

  if (a2 <= 1u)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = v3;
  }

  if (a2 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v2;
  }

  if (v6 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2146DA6A8();
  }

  return v12 & 1;
}

uint64_t sub_2144A977C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  v3 = a1;
  v4 = 0xE500000000000000;
  v5 = 0x7961727261;
  v6 = 1819242338;
  if (a1 != 4)
  {
    v6 = 1819047278;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 0x7265626D756ELL;
  if (a1 != 1)
  {
    v7 = 0x7463656A626FLL;
  }

  if (!a1)
  {
    v7 = 0x676E69727473;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 2)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x7961727261)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v8 != 1819242338)
        {
          goto LABEL_31;
        }
      }

      else if (v8 != 1819047278)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 0x7265626D756ELL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x7463656A626FLL;
    }

    if (v8 != v2)
    {
LABEL_31:
      v11 = sub_2146DA6A8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v9 != v10)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_2144A990C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x67696C4174786574;
  v5 = 0xE90000000000006ELL;
  v6 = 0xE400000000000000;
  v7 = 1953394534;
  if (a1 != 4)
  {
    v7 = 0x756F72676B636162;
    v6 = 0xEF6567616D49646ELL;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x726F6C6F63;
  if (a1 != 1)
  {
    v9 = 0x756F72676B636162;
    v8 = 0xEF726F6C6F43646ELL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64696C61766E69;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE90000000000006ELL;
      if (v10 != 0x67696C4174786574)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953394534)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF6567616D49646ELL;
      if (v10 != 0x756F72676B636162)
      {
LABEL_34:
        v13 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x726F6C6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF726F6C6F43646ELL;
      if (v10 != 0x756F72676B636162)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x64696C61766E69)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2144A9B04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x2D6567617373656DLL;
  v5 = 0xEB00000000786F62;
  v6 = 0x61632D6C6C616D73;
  v7 = 0xED00006E6F697470;
  if (a1 != 4)
  {
    v6 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 1852793705;
  if (a1 != 1)
  {
    v8 = 1970169197;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x6E6F6974706163;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000786F62;
      if (v9 != 0x2D6567617373656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006E6F697470;
      if (v9 != 0x61632D6C6C616D73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEA00000000007261;
      if (v9 != 0x622D737574617473)
      {
LABEL_34:
        v12 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1852793705)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1970169197)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E6F6974706163)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_2144A9CF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656772616C2D78;
  if (a1 != 5)
  {
    v5 = 0x656772616C2D7878;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a1 != 3)
  {
    v7 = 0x656772616CLL;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C6C616D732D78;
  if (a1 != 1)
  {
    v9 = 0x6C6C616D73;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C6C616D732D7878;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6C6C616D732D78)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6C6C616D73)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6C6C616D732D7878)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656772616C2D78)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656772616C2D7878)
      {
LABEL_39:
        v13 = sub_2146DA6A8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6D756964656DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x656772616CLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_2144A9F0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 28005;
    }

    else
    {
      v3 = 30821;
    }

    v4 = 0xE200000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 30832;
    }

    else
    {
      v3 = 37;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 37;
  v7 = 28005;
  if (a2 != 2)
  {
    v7 = 30821;
  }

  if (a2)
  {
    v6 = 30832;
    v5 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2144A9FFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000644965;
  v3 = 0x636E657265666572;
  v4 = a1;
  v5 = 25705;
  if (a1 == 6)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v5 = 0x4379616C70736964;
    v6 = 0xEE00746E65746E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1869768040;
  if (a1 != 4)
  {
    v8 = 0xD000000000000017;
    v7 = 0x8000000214788230;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (a1 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  v11 = 0xE500000000000000;
  v12 = 0x656C746974;
  if (!a1)
  {
    v12 = 0x636E657265666572;
    v11 = 0xEB00000000644965;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE200000000000000;
        if (v13 != 25705)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v2 = 0xEE00746E65746E6FLL;
        if (v13 != 0x4379616C70736964)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1869768040)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0x8000000214788230;
      if (v13 != 0xD000000000000017)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x656C746974627573)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v2 = 0xE400000000000000;
      v3 = 1852793705;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x656C746974)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = sub_2146DA6A8();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

__n128 sub_2144AA298(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 144);
  *(v2 + 144) = *(a1 + 128);
  *(v2 + 160) = v3;
  v4 = *(a1 + 176);
  *(v2 + 176) = *(a1 + 160);
  *(v2 + 192) = v4;
  v5 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v5;
  v6 = *(a1 + 112);
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = v6;
  v7 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 48) = result;
  *(v2 + 64) = v9;
  return result;
}

void sub_2144AA2F8(uint64_t a1, unint64_t a2)
{
  v5 = v3;
  v166 = *MEMORY[0x277D85DE8];
  v8 = swift_beginAccess();
  v9 = *(v2 + 96);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
        __break(1u);
        goto LABEL_139;
      }

      if (v9 == v14)
      {
        goto LABEL_8;
      }
    }

    else if (!v9)
    {
      goto LABEL_8;
    }

LABEL_15:
    v16 = sub_2146D9BA8();
    if (qword_280B30DD8 != -1)
    {
      v113 = v16;
      swift_once();
      v16 = v113;
    }

    sub_2146D91D8(v16, &dword_213FAF000, qword_280B30DE0, "Expected pixel buffer data size does not match data provided.", 61, 2, MEMORY[0x277D84F90]);
    goto LABEL_18;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (v9 != HIDWORD(a1) - a1)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v9 != BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_8:
  v15 = *(v2 + 89);
  if (v15 == 4)
  {
    v8 = sub_2146D9BA8();
    if (qword_280B30DD8 == -1)
    {
LABEL_10:
      sub_2146D91D8(v8, &dword_213FAF000, qword_280B30DE0, "Unrecognized pixel buffer formatted.", 36, 2, MEMORY[0x277D84F90]);
LABEL_18:
      sub_214061118();
      swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 0;
      swift_willThrow();
      return;
    }

LABEL_140:
    v114 = v8;
    swift_once();
    v8 = v114;
    goto LABEL_10;
  }

  pixelBufferOut = 0;
  if (*(v2 + 121) != 1)
  {
LABEL_31:
    v33 = sub_21405019C(*&a420v[8 * v15], 0xE400000000000000);
    if (v33 == sub_21405019C(0x41524742uLL, 0xE400000000000000))
    {
      v34 = sub_214045DA4(MEMORY[0x277D84F90]);
      v35 = MEMORY[0x277D83B88];
      v152 = a1;
      if (*(v2 + 120))
      {
        if (*(v2 + 40))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v150 = *(v2 + 112);
        v46 = *MEMORY[0x277CC4D60];
        type metadata accessor for CFString(0);
        sub_2143A6B04();
        v47 = v46;
        v35 = MEMORY[0x277D83B88];
        sub_2146D9E98();
        v161 = v35;
        *&v159 = v150;
        sub_213FDC730(&v159, v158);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = v34;
        sub_2140528AC(v158, &pixelTransferSessionOut, isUniquelyReferenced_nonNull_native);
        sub_21408DE3C(&pixelTransferSessionOut);
        if (*(v2 + 40))
        {
LABEL_34:
          if (*(v2 + 56))
          {
            goto LABEL_35;
          }

          goto LABEL_51;
        }
      }

      v150 = *(v2 + 32);
      *&v159 = *MEMORY[0x277CC4DC0];
      v49 = v159;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v50 = v49;
      v35 = MEMORY[0x277D83B88];
      sub_2146D9E98();
      v161 = v35;
      *&v159 = v150;
      sub_213FDC730(&v159, v158);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v157 = v34;
      sub_2140528AC(v158, &pixelTransferSessionOut, v51);
      sub_21408DE3C(&pixelTransferSessionOut);
      if (*(v2 + 56))
      {
LABEL_35:
        if (*(v2 + 72))
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }

LABEL_51:
      v150 = *(v2 + 48);
      *&v159 = *MEMORY[0x277CC4DA0];
      v52 = v159;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v53 = v52;
      v35 = MEMORY[0x277D83B88];
      sub_2146D9E98();
      v161 = v35;
      *&v159 = v150;
      sub_213FDC730(&v159, v158);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v157 = v34;
      sub_2140528AC(v158, &pixelTransferSessionOut, v54);
      sub_21408DE3C(&pixelTransferSessionOut);
      if (*(v2 + 72))
      {
LABEL_36:
        if (*(v2 + 88))
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_52:
      v150 = *(v2 + 64);
      *&v159 = *MEMORY[0x277CC4DB0];
      v55 = v159;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v56 = v55;
      v35 = MEMORY[0x277D83B88];
      sub_2146D9E98();
      v161 = v35;
      *&v159 = v150;
      sub_213FDC730(&v159, v158);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v157 = v34;
      sub_2140528AC(v158, &pixelTransferSessionOut, v57);
      sub_21408DE3C(&pixelTransferSessionOut);
      if (*(v2 + 88))
      {
LABEL_38:
        v39 = *(v2 + 16);
        v40 = *(v2 + 24);
        v26 = sub_21405019C(*&a420v[8 * v15], 0xE400000000000000);
        v15 = sub_2146D9468();

        v41 = CVPixelBufferCreate(0, v39, v40, v26, v15, &pixelBufferOut);

        if (v41 || !pixelBufferOut)
        {
          v44 = sub_2146D9BA8();
          if (qword_280B30DD8 != -1)
          {
            v127 = v44;
            swift_once();
            v44 = v127;
          }

          sub_2146D91D8(v44, &dword_213FAF000, qword_280B30DE0, "Failed to create the destination pixel buffer for the non-planar pixel buffer.", 78, 2, MEMORY[0x277D84F90]);
          goto LABEL_48;
        }

        v4 = pixelBufferOut;
        DataSize = CVPixelBufferGetDataSize(v4);
        if (v10 <= 1)
        {
          a1 = v152;
          if (!v10)
          {
            v43 = BYTE6(a2);
            goto LABEL_76;
          }

          LODWORD(v43) = HIDWORD(v152) - v152;
          if (!__OFSUB__(HIDWORD(v152), v152))
          {
            v43 = v43;
            goto LABEL_76;
          }

LABEL_164:
          __break(1u);
LABEL_165:
          sub_214061118();
          swift_allocError();
          *v135 = 768;
          *(v135 + 8) = 0;
          swift_willThrow();
          sub_213FDC6BC(v2, v10);

          goto LABEL_166;
        }

        a1 = v152;
        if (v10 != 2)
        {
          if (!DataSize)
          {
LABEL_77:
            CVPixelBufferLockBaseAddress(v4, 1uLL);
            if (!CVPixelBufferGetBaseAddress(v4))
            {
              v102 = sub_2146D9BA8();
              if (qword_280B30DD8 != -1)
              {
                v136 = v102;
                swift_once();
                v102 = v136;
              }

              sub_2146D91D8(v102, &dword_213FAF000, qword_280B30DE0, "Non-planar destination pixel buffer has a nil base address.", 59, 2, MEMORY[0x277D84F90]);
              sub_214061118();
              swift_allocError();
              v85 = 1792;
              goto LABEL_129;
            }

            if (v10 > 1)
            {
              if (v10 == 2 && __OFSUB__(*(a1 + 24), *(a1 + 16)))
              {
                __break(1u);
LABEL_119:
                v103 = sub_2146D9BA8();
                if (qword_280B30DD8 != -1)
                {
                  v137 = v103;
                  swift_once();
                  v103 = v137;
                }

                sub_2146D91D8(v103, &dword_213FAF000, qword_280B30DE0, "Pixel buffer plane information does not have the appropriate number of planes.", 78, 2, MEMORY[0x277D84F90]);
                goto LABEL_122;
              }
            }

            else if (v10 && __OFSUB__(HIDWORD(a1), a1))
            {
              __break(1u);
            }

            sub_2146D8AA8();
            CVPixelBufferUnlockBaseAddress(v4, 1uLL);
            v104 = *(v2 + 200);
            if (v104 >> 60 == 15)
            {
              sub_214061118();
              swift_allocError();
              v85 = 2048;
              goto LABEL_129;
            }

            v105 = *(v2 + 192);
            v106 = objc_opt_self();
            sub_21402D9F8(v105, v104);
            v107 = sub_2146D8A38();
            pixelTransferSessionOut = 0;
            v108 = [v106 propertyListWithData:v107 options:0 format:0 error:&pixelTransferSessionOut];

            if (v108)
            {
              v109 = pixelTransferSessionOut;
              sub_2146D9E28();
              swift_unknownObjectRelease();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
              if (swift_dynamicCast())
              {
                v110 = sub_2146D9468();

                CVBufferSetAttachments(v4, v110, kCVAttachmentMode_ShouldPropagate);

                sub_213FDC6BC(v105, v104);
                if (pixelBufferOut)
                {
                  return;
                }

LABEL_48:
                sub_214061118();
                swift_allocError();
                *v45 = 512;
LABEL_123:
                *(v45 + 8) = 0;
                swift_willThrow();
LABEL_124:

                return;
              }

              sub_214061118();
              swift_allocError();
              *v112 = 2304;
              *(v112 + 8) = 0;
            }

            else
            {
              v111 = pixelTransferSessionOut;
              sub_2146D8838();
            }

            swift_willThrow();
            sub_213FDC6BC(v105, v104);
            goto LABEL_130;
          }

LABEL_82:
          sub_214061118();
          swift_allocError();
          v85 = 512;
LABEL_129:
          *v84 = v85;
          *(v84 + 8) = 0;
          swift_willThrow();
LABEL_130:

          goto LABEL_124;
        }

        v73 = *(v152 + 16);
        v72 = *(v152 + 24);
        v13 = __OFSUB__(v72, v73);
        v43 = v72 - v73;
        if (!v13)
        {
LABEL_76:
          if (DataSize == v43)
          {
            goto LABEL_77;
          }

          goto LABEL_82;
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_37:
      v147 = *(v2 + 80);
      *&v159 = *MEMORY[0x277CC4DB8];
      v36 = v159;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v150 = v15;
      v37 = v36;
      sub_2146D9E98();
      v161 = v35;
      *&v159 = v147;
      sub_213FDC730(&v159, v158);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v157 = v34;
      sub_2140528AC(v158, &pixelTransferSessionOut, v38);
      sub_21408DE3C(&pixelTransferSessionOut);
      goto LABEL_38;
    }

    v8 = sub_2146D9BA8();
    if (qword_280B30DD8 == -1)
    {
LABEL_44:
      sub_2146D91D8(v8, &dword_213FAF000, qword_280B30DE0, "Pixel buffer is planar or the pixel format is unrecognized.", 59, 2, MEMORY[0x277D84F90]);
LABEL_122:
      sub_214061118();
      swift_allocError();
      *v45 = 0;
      goto LABEL_123;
    }

LABEL_152:
    v125 = v8;
    swift_once();
    v8 = v125;
    goto LABEL_44;
  }

  v156 = 0;
  v159 = 0uLL;
  v160 = 1;
  v18 = *(v2 + 184);
  if (!v18)
  {
    goto LABEL_85;
  }

  if (!*(v18 + 16))
  {
    __break(1u);
    goto LABEL_152;
  }

  if (*(v18 + 32) < 16)
  {
    goto LABEL_85;
  }

  LOBYTE(v156) = 1;
  v19 = sub_2146D8A78();
  v21 = v20;
  sub_2144AF650(v19, v20);
  v10 = v22;
  v24 = v23;
  v25 = v21;
  v26 = v24;
  v27 = sub_213FB54FC(v19, v25);
  v150 = v10;
  v152 = a1;
  if ((v26 >> 62) > 1)
  {
    if (v26 >> 62 != 2)
    {
      goto LABEL_170;
    }

    a1 = v2;
    v10 = *(v10 + 16);
    v58 = sub_2146D8728();
    if (v58)
    {
      v30 = v58;
      v2 = v26 & 0x3FFFFFFFFFFFFFFFLL;
      v59 = sub_2146D8758();
      v32 = v10 - v59;
      if (!__OFSUB__(v10, v59))
      {
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_164;
    }

LABEL_66:
    sub_2146D8748();
    goto LABEL_67;
  }

  if (v26 >> 62 != 1)
  {
    __break(1u);
LABEL_170:
    __break(1u);
    return;
  }

  v28 = v10;
  v10 = v10;
  if (v10 > v28 >> 32)
  {
    __break(1u);
    goto LABEL_156;
  }

  a1 = v2;
  v29 = sub_2146D8728();
  if (!v29)
  {
    goto LABEL_66;
  }

  v30 = v29;
  v2 = v26 & 0x3FFFFFFFFFFFFFFFLL;
  v31 = sub_2146D8758();
  v32 = v10 - v31;
  if (__OFSUB__(v10, v31))
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_57:
  v60 = (v32 + v30);
  sub_2146D8748();
  if (v60)
  {
    v62 = v60[2];
    v61 = v60[3];
    v64 = v60;
    v63 = *v60;
    v145 = v61;
    v148 = v64[1];
    v65 = sub_2146D9B98();
    v2 = a1;
    if (qword_280B30DD8 != -1)
    {
      v134 = v65;
      swift_once();
      v65 = v134;
    }

    v143 = v65;
    v66 = qword_280B30DE0;
    if (os_log_type_enabled(qword_280B30DE0, v65))
    {
      v140 = v26;
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *&v158[0] = v139;
      *v138 = 136315138;
      pixelTransferSessionOut = __PAIR64__(v148, v63);
      v163 = v62;
      v164 = v145;
      type metadata accessor for CVPlanarPixelBufferInfo_YCbCrBiPlanar(0);
      v67 = sub_2146D9608();
      v69 = v63;
      v70 = sub_2144AEA38(v67, v68, v158);

      *(v138 + 4) = v70;
      v71 = v148;
      _os_log_impl(&dword_213FAF000, v66, v143, "Pixel Buffer Info from Header: %s", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x216056AC0](v139, -1, -1);
      MEMORY[0x216056AC0](v138, -1, -1);
      sub_213FB54FC(v150, v140);
      a1 = v152;
    }

    else
    {
      sub_213FB54FC(v150, v26);
      a1 = v152;
      v69 = v63;
      v71 = v148;
    }

    *&v159 = v69 | (v71 << 32);
    *(&v159 + 1) = v62 | (v145 << 32);
    v160 = 0;
    goto LABEL_85;
  }

LABEL_67:
  v74 = v26;
  v75 = sub_2146D9BA8();
  v2 = a1;
  if (qword_280B30DD8 != -1)
  {
    v130 = v75;
    swift_once();
    v75 = v130;
  }

  v76 = qword_280B30DE0;
  sub_2146D91D8(v75, &dword_213FAF000, qword_280B30DE0, "Planar source pixel buffer has a nil base address.", 50, 2, MEMORY[0x277D84F90]);
  sub_214061118();
  v77 = swift_allocError();
  *v78 = 1792;
  *(v78 + 8) = 0;
  swift_willThrow();
  v79 = sub_2146D9BA8();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  if (os_log_type_enabled(v76, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    v82 = v77;
    v83 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v83;
    *v81 = v83;
    _os_log_impl(&dword_213FAF000, v76, v79, "Invalid header format. Error: %@", v80, 0xCu);
    sub_213FB2DF4(v81, &qword_27C9041E0, &qword_214736EF0);
    MEMORY[0x216056AC0](v81, -1, -1);
    MEMORY[0x216056AC0](v80, -1, -1);
  }

  sub_213FB54FC(v150, v74);

  v5 = 0;
  HIBYTE(v156) = 1;
  a1 = v152;
LABEL_85:
  v86 = sub_21405019C(*&a420v[8 * v15], 0xE400000000000000);
  if (v86 != sub_21405019C(0x30323478uLL, 0xE400000000000000))
  {
    v87 = sub_21405019C(*&a420v[8 * v15], 0xE400000000000000);
    if (v87 != sub_21405019C(0x66303234uLL, 0xE400000000000000))
    {
      v88 = sub_21405019C(*&a420v[8 * v15], 0xE400000000000000);
      if (v88 != sub_21405019C(0x76303234uLL, 0xE400000000000000))
      {
        v27 = sub_2146D9BA8();
        if (qword_280B30DD8 == -1)
        {
LABEL_111:
          sub_2146D91D8(v27, &dword_213FAF000, qword_280B30DE0, "Pixel buffer is not planar or the pixel format is unrecognized.", 63, 2, MEMORY[0x277D84F90]);
          goto LABEL_122;
        }

LABEL_156:
        v132 = v27;
        swift_once();
        v27 = v132;
        goto LABEL_111;
      }
    }
  }

  if ((*(v2 + 152) & 1) != 0 || *(v2 + 144) != 2)
  {
    v100 = sub_2146D9BA8();
    if (qword_280B30DD8 != -1)
    {
      v124 = v100;
      swift_once();
      v100 = v124;
    }

    sub_2146D91D8(v100, &dword_213FAF000, qword_280B30DE0, "Planar pixel buffer does not have the appropriate number of planes.", 67, 2, MEMORY[0x277D84F90]);
    goto LABEL_122;
  }

  v89 = *(v2 + 160);
  if (!v89 || (v90 = *(v2 + 168)) == 0 || (v91 = *(v2 + 176)) == 0 || (v92 = a1, (v93 = *(v2 + 184)) == 0))
  {
    v101 = sub_2146D9BA8();
    if (qword_280B30DD8 != -1)
    {
      v131 = v101;
      swift_once();
      v101 = v131;
    }

    sub_2146D91D8(v101, &dword_213FAF000, qword_280B30DE0, "Configuration cannot be planar and not have per plane information.", 66, 2, MEMORY[0x277D84F90]);
    goto LABEL_122;
  }

  if (*(v89 + 2) != 2 || *(v90 + 16) != 2 || v91[2] != 2 || v93[2] != 2)
  {
    goto LABEL_119;
  }

  v94 = sub_2146D9B98();
  v146 = v94;
  if (qword_280B30DD8 != -1)
  {
    swift_once();
    v94 = v146;
  }

  v149 = qword_280B30DE0;
  if (os_log_type_enabled(qword_280B30DE0, v94))
  {
    v151 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    pixelTransferSessionOut = v144;
    *v151 = 136315394;
    v95 = MEMORY[0x216054820](v91, MEMORY[0x277D83B88]);
    v141 = sub_2144AEA38(v95, v96, &pixelTransferSessionOut);

    *(v151 + 4) = v141;
    *(v151 + 12) = 2080;
    v97 = MEMORY[0x216054820](v93, MEMORY[0x277D83B88]);
    v142 = sub_2144AEA38(v97, v98, &pixelTransferSessionOut);

    *(v151 + 14) = v142;
    _os_log_impl(&dword_213FAF000, v149, v146, "Pixel buffer plane information. bytesPerRow: %s offsets: %s", v151, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v144, -1, -1);
    MEMORY[0x216056AC0](v151, -1, -1);
  }

  v157 = MEMORY[0x277D84F90];
  *&v158[0] = v92;
  v154 = MEMORY[0x277D84F90];
  v155 = MEMORY[0x277D84F90];
  v153 = MEMORY[0x277D84F90];
  *(&v158[0] + 1) = a2;

  sub_21402D9F8(v92, a2);
  v99 = sub_2144AF6EC(v158, 2uLL, v91, v89, v90, v93, &v157, &v155, &v154, &v159, &v156 + 1, &v153, &v156, v2, v15);
  if (v5)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

LABEL_161:
    sub_213FB54FC(*&v158[0], *(&v158[0] + 1));
LABEL_162:

    goto LABEL_124;
  }

  a2 = v99;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v2 + 200);
  if (v10 >> 60 == 15)
  {
    sub_214061118();
    swift_allocError();
    *v115 = 2048;
    *(v115 + 8) = 0;
    swift_willThrow();
LABEL_160:

    goto LABEL_161;
  }

  v116 = v2;
  v2 = *(v2 + 192);
  v117 = objc_opt_self();
  sub_21402D9F8(v2, v10);
  v118 = sub_2146D8A38();
  pixelTransferSessionOut = 0;
  v119 = [v117 propertyListWithData:v118 options:0 format:0 error:&pixelTransferSessionOut];

  if (!v119)
  {
    v126 = pixelTransferSessionOut;
    sub_2146D8838();

LABEL_159:
    swift_willThrow();
    sub_213FDC6BC(v2, v10);
    goto LABEL_160;
  }

  v120 = pixelTransferSessionOut;
  sub_2146D9E28();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  if (!swift_dynamicCast())
  {
    sub_214061118();
    swift_allocError();
    v129 = 2304;
LABEL_158:
    *v128 = v129;
    *(v128 + 8) = 0;
    goto LABEL_159;
  }

  v121 = sub_2146D9468();

  CVBufferSetAttachments(a2, v121, kCVAttachmentMode_ShouldPropagate);

  if (CVPixelBufferCreate(0, *(v116 + 16), *(v116 + 24), 0x42475241u, 0, &pixelBufferOut) || !pixelBufferOut)
  {
    v133 = sub_2146D9BA8();
    sub_2146D91D8(v133, &dword_213FAF000, v149, "Failed to create the destination pixel buffer for the planar pixel buffer.", 74, 2, MEMORY[0x277D84F90]);
    sub_214061118();
    swift_allocError();
    v129 = 512;
    goto LABEL_158;
  }

  pixelTransferSessionOut = 0;
  v4 = pixelBufferOut;
  if (VTPixelTransferSessionCreate(0, &pixelTransferSessionOut) || !pixelTransferSessionOut)
  {
    goto LABEL_165;
  }

  v122 = pixelTransferSessionOut;
  if (VTPixelTransferSessionTransferImage(v122, a2, v4))
  {
    sub_214061118();
    swift_allocError();
    *v123 = 1024;
    *(v123 + 8) = 0;
    swift_willThrow();
    sub_213FDC6BC(v2, v10);

LABEL_166:
    sub_213FB54FC(*&v158[0], *(&v158[0] + 1));

    goto LABEL_162;
  }

  VTPixelTransferSessionInvalidate(v122);
  sub_213FDC6BC(v2, v10);

  sub_213FB54FC(*&v158[0], *(&v158[0] + 1));

  if (!pixelBufferOut)
  {
    goto LABEL_48;
  }
}

uint64_t sub_2144ABAB0()
{
  sub_214061118();
  swift_allocError();
  *v0 = 1280;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

BlastDoor::BlastDoorPixelBufferFormats_optional __swiftcall BlastDoorPixelBufferFormats.init(rawValue:)(Swift::UInt32 rawValue)
{
  v3 = v1;
  v4 = sub_21405019C(0x76303234uLL, 0xE400000000000000);
  if (v4 == rawValue)
  {
    v5 = 0;
  }

  else
  {
    v4 = sub_21405019C(0x66303234uLL, 0xE400000000000000);
    if (v4 == rawValue)
    {
      v5 = 1;
    }

    else
    {
      v4 = sub_21405019C(0x30323478uLL, 0xE400000000000000);
      if (v4 == rawValue)
      {
        v5 = 2;
      }

      else
      {
        v4 = sub_21405019C(0x41524742uLL, 0xE400000000000000);
        if (v4 == rawValue)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }
      }
    }
  }

  *v3 = v5;
  return v4;
}

uint64_t sub_2144ABC24@<X0>(_DWORD *a1@<X8>)
{
  result = sub_21405019C(*&a420v[8 * *v1], 0xE400000000000000);
  *a1 = result;
  return result;
}

uint64_t sub_2144ABD7C(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2144ABDB8(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_2144ABDF4(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_2144ABE30(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_2144ABF04(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t sub_2144ABF70(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t sub_2144ABFAC(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t sub_2144AC12C()
{
  v1 = *(v0 + 176);
  sub_213FDCA18(v1, *(v0 + 184));
  return v1;
}

uint64_t sub_2144AC160(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 176), *(v2 + 184));
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

double sub_2144AC1B8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1025;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0xF000000000000000;
  *(a1 + 105) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 80) = 0;
  return result;
}

void sub_2144AC218(__CVBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  v111[4] = *MEMORY[0x277D85DE8];
  v93 = sub_2146D9458();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = 1;
  v107 = 1;
  v106 = 1;
  v105 = 1;
  v104 = 1;
  v103 = 1;
  v102 = 1;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  BlastDoorPixelBufferFormats.init(rawValue:)(PixelFormatType);
  v8 = LOBYTE(v110[0]);
  DataSize = CVPixelBufferGetDataSize(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  IsPlanar = CVPixelBufferIsPlanar(a1);
  v98 = v8;
  v97 = DataSize;
  if (IsPlanar)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
    v102 = 0;
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v99 = Width;
    v96 = Height;
    v95 = BytesPerRow;
    v101 = PlaneCount;
    if (BaseAddress)
    {
      if ((PlaneCount & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_80:
        __break(1u);
      }

      if (PlaneCount)
      {
        v12 = 0;
        v13 = MEMORY[0x277D84F90];
        v14 = MEMORY[0x277D84F90];
        v15 = MEMORY[0x277D84F90];
        v16 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v13)
          {
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_214095ECC(0, *(v13 + 2) + 1, 1, v13);
            }

            v20 = *(v13 + 2);
            v19 = *(v13 + 3);
            if (v20 >= v19 >> 1)
            {
              v13 = sub_214095ECC((v19 > 1), v20 + 1, 1, v13);
            }

            *(v13 + 2) = v20 + 1;
            *&v13[8 * v20 + 32] = WidthOfPlane;
          }

          if (v14)
          {
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_214095ECC(0, *(v14 + 2) + 1, 1, v14);
            }

            v23 = *(v14 + 2);
            v22 = *(v14 + 3);
            if (v23 >= v22 >> 1)
            {
              v14 = sub_214095ECC((v22 > 1), v23 + 1, 1, v14);
            }

            *(v14 + 2) = v23 + 1;
            *&v14[8 * v23 + 32] = HeightOfPlane;
          }

          if (v15)
          {
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_214095ECC(0, *(v15 + 2) + 1, 1, v15);
            }

            v26 = *(v15 + 2);
            v25 = *(v15 + 3);
            if (v26 >= v25 >> 1)
            {
              v15 = sub_214095ECC((v25 > 1), v26 + 1, 1, v15);
            }

            *(v15 + 2) = v26 + 1;
            *&v15[8 * v26 + 32] = BytesPerRowOfPlane;
          }

          if (v16)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v12);
            if (!BaseAddressOfPlane)
            {
              goto LABEL_80;
            }

            v28 = BaseAddressOfPlane;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_214095ECC(0, *(v16 + 2) + 1, 1, v16);
            }

            v30 = *(v16 + 2);
            v29 = *(v16 + 3);
            if (v30 >= v29 >> 1)
            {
              v16 = sub_214095ECC((v29 > 1), v30 + 1, 1, v16);
            }

            v17 = v28 - BaseAddress;
            *(v16 + 2) = v30 + 1;
            *&v16[8 * v30 + 32] = v17;
          }

          if (v101 == ++v12)
          {
            goto LABEL_33;
          }
        }
      }
    }

    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
LABEL_33:
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    v99 = CVPixelBufferGetWidth(a1);
    v96 = CVPixelBufferGetHeight(a1);
    v95 = CVPixelBufferGetBytesPerRow(a1);
    v101 = 0;
    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
  }

  v31 = CVPixelBufferCopyCreationAttributes(a1);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_71;
  }

  *&v110[0] = 0;
  sub_2146D9478();

  v32 = *&v110[0];
  if (!*&v110[0])
  {
LABEL_71:
    v40 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    BaseAddress = 0;
    goto LABEL_72;
  }

  if (!*(*&v110[0] + 16))
  {

    goto LABEL_71;
  }

  v111[0] = *MEMORY[0x277CC4D60];
  v33 = v111[0];
  type metadata accessor for CFString(0);
  v35 = v34;
  sub_2143A6B04();
  v36 = v33;
  v88 = v35;
  sub_2146D9E98();
  if (*(v32 + 16) && (v37 = sub_21408C378(v110), (v38 & 1) != 0))
  {
    sub_2140537E4(*(v32 + 56) + 32 * v37, v111);
    sub_21408DE3C(v110);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v40 = v109;
    }

    else
    {
      v40 = 0;
    }

    v41 = v39 ^ 1;
  }

  else
  {
    sub_21408DE3C(v110);
    v40 = 0;
    v41 = 1;
  }

  v104 = v41;
  v111[0] = *MEMORY[0x277CC4DC0];
  v42 = v111[0];
  sub_2146D9E98();
  if (*(v32 + 16) && (v43 = sub_21408C378(v110), (v44 & 1) != 0))
  {
    sub_2140537E4(*(v32 + 56) + 32 * v43, v111);
    sub_21408DE3C(v110);
    v45 = swift_dynamicCast();
    v46 = v109;
    if (!v45)
    {
      v46 = 0;
    }

    BaseAddress = v46;
    v47 = v45 ^ 1;
  }

  else
  {
    sub_21408DE3C(v110);
    BaseAddress = 0;
    v47 = 1;
  }

  v108 = v47;
  v111[0] = *MEMORY[0x277CC4DA0];
  v48 = v111[0];
  sub_2146D9E98();
  if (*(v32 + 16) && (v49 = sub_21408C378(v110), (v50 & 1) != 0))
  {
    sub_2140537E4(*(v32 + 56) + 32 * v49, v111);
    sub_21408DE3C(v110);
    v51 = swift_dynamicCast();
    v52 = v109;
    if (!v51)
    {
      v52 = 0;
    }

    v90 = v52;
    v53 = v51 ^ 1;
  }

  else
  {
    sub_21408DE3C(v110);
    v90 = 0;
    v53 = 1;
  }

  v107 = v53;
  v111[0] = *MEMORY[0x277CC4DB0];
  v54 = v111[0];
  sub_2146D9E98();
  if (*(v32 + 16) && (v55 = sub_21408C378(v110), (v56 & 1) != 0))
  {
    sub_2140537E4(*(v32 + 56) + 32 * v55, v111);
    sub_21408DE3C(v110);
    v57 = swift_dynamicCast();
    v58 = v109;
    if (!v57)
    {
      v58 = 0;
    }

    v89 = v58;
    v59 = v57 ^ 1;
  }

  else
  {
    sub_21408DE3C(v110);
    v89 = 0;
    v59 = 1;
  }

  v106 = v59;
  v109 = *MEMORY[0x277CC4DB8];
  v60 = v109;
  sub_2146D9E98();
  if (*(v32 + 16) && (v61 = sub_21408C378(v110), (v62 & 1) != 0))
  {
    sub_2140537E4(*(v32 + 56) + 32 * v61, v111);
    sub_21408DE3C(v110);

    v63 = swift_dynamicCast();
    v64 = v109;
    if (!v63)
    {
      v64 = 0;
    }

    v88 = v64;
    v105 = v63 ^ 1;
  }

  else
  {

    sub_21408DE3C(v110);
    v88 = 0;
    v105 = 1;
  }

LABEL_72:
  v65 = v91;
  sub_2146D9B58();
  v66 = sub_2146D9448();
  (*(v92 + 8))(v65, v93);
  v111[0] = v66;
  if (v66[2])
  {
    v93 = v40;
    sub_2144AEF6C(0x53726F6C6F434743, 0xEC00000065636170, v110);
    sub_213FB2DF4(v110, &qword_27C913170, &qword_2146EAB20);
    sub_2144AEF6C(0xD000000000000017, 0x800000021479B810, v110);
    sub_213FB2DF4(v110, &qword_27C913170, &qword_2146EAB20);
    v67 = objc_opt_self();
    v68 = sub_2146D9468();

    *&v110[0] = 0;
    v69 = [v67 dataWithPropertyList:v68 format:200 options:0 error:v110];

    v70 = *&v110[0];
    if (v69)
    {
      v71 = sub_2146D8A58();
      v73 = v72;
    }

    else
    {
      v76 = v70;
      v77 = sub_2146D8838();

      swift_willThrow();
      v71 = 0;
      v73 = 0xF000000000000000;
    }

    v74 = BaseAddress;
    v75 = v90;
    sub_213FDC6BC(0, 0xF000000000000000);
    v40 = v93;
  }

  else
  {

    v71 = 0;
    v73 = 0xF000000000000000;
    v74 = BaseAddress;
    v75 = v90;
  }

  v78 = v108;
  v79 = IsPlanar != 0;
  v80 = v107;
  v81 = v106;
  v82 = v105;
  v83 = v104;
  v84 = v103;
  v85 = v102;
  v86 = v96;
  *a2 = v99;
  *(a2 + 8) = v86;
  *(a2 + 16) = v74;
  *(a2 + 24) = v78;
  *(a2 + 32) = v75;
  *(a2 + 40) = v80;
  *(a2 + 48) = v89;
  *(a2 + 56) = v81;
  *(a2 + 64) = v88;
  *(a2 + 72) = v82;
  *(a2 + 73) = v98;
  v87 = v95;
  *(a2 + 80) = v97;
  *(a2 + 88) = v87;
  *(a2 + 96) = v40;
  *(a2 + 104) = v83;
  *(a2 + 105) = v79;
  *(a2 + 112) = 0;
  *(a2 + 120) = v84;
  *(a2 + 128) = v101;
  *(a2 + 136) = v85;
  *(a2 + 144) = v13;
  *(a2 + 152) = v14;
  *(a2 + 160) = v15;
  *(a2 + 168) = v16;
  *(a2 + 176) = v71;
  *(a2 + 184) = v73;
}

unint64_t sub_2144ACD28(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 10:
      result = 0xD000000000000013;
      break;
    case 8:
    case 14:
    case 17:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
    case 13:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2144ACEC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2144B1EF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2144ACEEC(uint64_t a1)
{
  v2 = sub_2144B1A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144ACF28(uint64_t a1)
{
  v2 = sub_2144B1A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144ACF64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9147D8, &unk_214751078);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 8);
  v37 = *(v1 + 16);
  v38 = v7;
  v42 = *(v1 + 24);
  v36 = *(v1 + 32);
  LODWORD(v7) = *(v1 + 40);
  v33 = *(v1 + 48);
  v34 = *(v1 + 56);
  v35 = v7;
  v31 = *(v1 + 64);
  v32 = *(v1 + 72);
  v30 = *(v1 + 73);
  v8 = *(v1 + 80);
  v28 = *(v1 + 88);
  v29 = v8;
  v26 = *(v1 + 96);
  v27 = *(v1 + 104);
  LODWORD(v8) = *(v1 + 105);
  v23 = *(v1 + 112);
  v24 = *(v1 + 120);
  v25 = v8;
  v9 = *(v1 + 128);
  v22 = *(v1 + 136);
  v10 = *(v1 + 152);
  v20 = *(v1 + 144);
  v21 = v9;
  v19 = v10;
  v11 = *(v1 + 168);
  v18 = *(v1 + 160);
  v17 = v11;
  v12 = *(v1 + 184);
  v16 = *(v1 + 176);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144B1A2C();
  sub_2146DAA28();
  LOBYTE(v40) = 0;
  v13 = v39;
  sub_2146DA368();
  if (!v13)
  {
    v39 = v12;
    LOBYTE(v40) = 1;
    sub_2146DA368();
    LOBYTE(v40) = 2;
    sub_2146DA2E8();
    LOBYTE(v40) = 3;
    sub_2146DA2E8();
    LOBYTE(v40) = 4;
    sub_2146DA2E8();
    LOBYTE(v40) = 5;
    sub_2146DA2E8();
    LOBYTE(v40) = v30;
    v43 = 6;
    sub_2144B1A80();
    sub_2146DA308();
    LOBYTE(v40) = 7;
    sub_2146DA368();
    LOBYTE(v40) = 8;
    sub_2146DA368();
    LOBYTE(v40) = 9;
    sub_2146DA2E8();
    LOBYTE(v40) = 10;
    sub_2146DA338();
    LOBYTE(v40) = 11;
    sub_2146DA2E8();
    LOBYTE(v40) = 12;
    sub_2146DA2E8();
    v40 = v20;
    v43 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    sub_2144B1B28(&qword_27C90A1B0, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_2146DA308();
    v40 = v19;
    v43 = 14;
    sub_2146DA308();
    v40 = v18;
    v43 = 15;
    sub_2146DA308();
    v40 = v17;
    v43 = 16;
    sub_2146DA308();
    v40 = v16;
    v41 = v39;
    v43 = 17;
    sub_213FDCA18(v16, v39);
    sub_214061684();
    sub_2146DA308();
    sub_213FDC6BC(v40, v41);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2144AD51C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9147F0, &qword_214751088);
  v5 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v7 = &v31 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144B1A2C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_213FDC6BC(0, 0xF000000000000000);
  }

  else
  {
    v52 = v5;
    LOBYTE(v65[0]) = 0;
    v51 = sub_2146DA1A8();
    LOBYTE(v65[0]) = 1;
    v50 = sub_2146DA1A8();
    LOBYTE(v65[0]) = 2;
    v49 = sub_2146DA128();
    v116 = v8 & 1;
    LOBYTE(v65[0]) = 3;
    v48 = sub_2146DA128();
    v114 = v9 & 1;
    LOBYTE(v65[0]) = 4;
    v47 = sub_2146DA128();
    v112 = v10 & 1;
    LOBYTE(v65[0]) = 5;
    v46 = sub_2146DA128();
    v110 = v11 & 1;
    LOBYTE(v53) = 6;
    sub_2144B1AD4();
    sub_2146DA148();
    v12 = LOBYTE(v65[0]);
    LOBYTE(v65[0]) = 7;
    v45 = sub_2146DA1A8();
    LOBYTE(v65[0]) = 8;
    v44 = sub_2146DA1A8();
    v43 = v12;
    LOBYTE(v65[0]) = 9;
    v13 = sub_2146DA128();
    v107 = v14 & 1;
    LOBYTE(v65[0]) = 10;
    v42 = sub_2146DA178();
    LOBYTE(v65[0]) = 11;
    v41 = sub_2146DA128();
    v104 = v15 & 1;
    LOBYTE(v65[0]) = 12;
    v40 = sub_2146DA128();
    v102 = v16 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    LOBYTE(v53) = 13;
    v39 = sub_2144B1B28(&qword_27C90A1A0, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    sub_2146DA148();
    v38 = v65[0];
    LOBYTE(v53) = 14;
    sub_2146DA148();
    v37 = v65[0];
    LOBYTE(v53) = 15;
    sub_2146DA148();
    v17 = v65[0];
    LOBYTE(v53) = 16;
    sub_2146DA148();
    v18 = v65[0];
    v98 = 17;
    sub_21406116C();
    sub_2146DA148();
    v42 &= 1u;
    (*(v52 + 8))(v7, v117);
    v19 = v99;
    v31 = v100;
    v32 = v99;
    sub_213FDC6BC(0, 0xF000000000000000);
    *&v53 = v51;
    *(&v53 + 1) = v50;
    *&v54 = v49;
    LODWORD(v117) = v116;
    BYTE8(v54) = v116;
    *(&v54 + 9) = *v115;
    HIDWORD(v54) = *&v115[3];
    *&v55 = v48;
    LODWORD(v52) = v114;
    BYTE8(v55) = v114;
    *(&v55 + 9) = *v113;
    HIDWORD(v55) = *&v113[3];
    *&v56 = v47;
    LODWORD(v39) = v112;
    BYTE8(v56) = v112;
    *(&v56 + 9) = *v111;
    HIDWORD(v56) = *&v111[3];
    *&v57 = v46;
    v36 = v110;
    BYTE8(v57) = v110;
    BYTE9(v57) = v43;
    *(&v57 + 10) = v108;
    HIWORD(v57) = v109;
    *&v58 = v45;
    *(&v58 + 1) = v44;
    v35 = v13;
    *&v59 = v13;
    v34 = v107;
    BYTE8(v59) = v107;
    BYTE9(v59) = v42;
    HIWORD(v59) = v106;
    *(&v59 + 10) = v105;
    *&v60 = v41;
    v33 = v104;
    BYTE8(v60) = v104;
    HIDWORD(v60) = *&v103[3];
    *(&v60 + 9) = *v103;
    *&v61 = v40;
    HIDWORD(v61) = *&v101[3];
    *(&v61 + 9) = *v101;
    LOBYTE(v13) = v102;
    BYTE8(v61) = v102;
    *&v62 = v38;
    *(&v62 + 1) = v37;
    *&v63 = v17;
    *(&v63 + 1) = v18;
    *&v64 = v19;
    v20 = v31;
    *(&v64 + 1) = v31;
    v21 = v53;
    v22 = v54;
    v23 = v56;
    a2[2] = v55;
    a2[3] = v23;
    *a2 = v21;
    a2[1] = v22;
    v24 = v57;
    v25 = v58;
    v26 = v60;
    a2[6] = v59;
    a2[7] = v26;
    a2[4] = v24;
    a2[5] = v25;
    v27 = v61;
    v28 = v62;
    v29 = v64;
    a2[10] = v63;
    a2[11] = v29;
    a2[8] = v27;
    a2[9] = v28;
    sub_214060FB0(&v53, v65);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v65[0] = v51;
    v65[1] = v50;
    v65[2] = v49;
    v66 = v117;
    *v67 = *v115;
    *&v67[3] = *&v115[3];
    v68 = v48;
    v69 = v52;
    *v70 = *v113;
    *&v70[3] = *&v113[3];
    v71 = v47;
    v72 = v39;
    *v73 = *v111;
    *&v73[3] = *&v111[3];
    v74 = v46;
    v75 = v36;
    v76 = v43;
    v77 = v108;
    v78 = v109;
    v79 = v45;
    v80 = v44;
    v81 = v35;
    v82 = v34;
    v83 = v42;
    v84 = v105;
    v85 = v106;
    v86 = v41;
    v87 = v33;
    *&v88[3] = *&v103[3];
    *v88 = *v103;
    v89 = v40;
    v90 = v13;
    *&v91[3] = *&v101[3];
    *v91 = *v101;
    v92 = v38;
    v93 = v37;
    v94 = v17;
    v95 = v18;
    v96 = v32;
    v97 = v20;
    return sub_214061060(v65);
  }
}

uint64_t sub_2144ADE6C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2144ADF10@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[11];
  v4 = v1[9];
  v29 = v1[10];
  v30 = v3;
  v5 = v1[11];
  v6 = v1[13];
  v31 = v1[12];
  v7 = v31;
  v32 = v6;
  v8 = v1[7];
  v10 = v1[5];
  v25 = v1[6];
  v9 = v25;
  v26 = v8;
  v11 = v1[7];
  v12 = v1[9];
  v27 = v1[8];
  v13 = v27;
  v28 = v12;
  v14 = v1[3];
  v22[0] = v1[2];
  v22[1] = v14;
  v15 = v1[5];
  v17 = v1[2];
  v16 = v1[3];
  v23 = v1[4];
  v18 = v23;
  v24 = v15;
  a1[8] = v29;
  a1[9] = v5;
  v19 = v1[13];
  a1[10] = v7;
  a1[11] = v19;
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v16;
  a1[2] = v18;
  a1[3] = v10;
  return sub_214060FB0(v22, v21);
}

uint64_t sub_2144ADFC8(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[10];
  v4 = v1[12];
  v5 = v1[13];
  v17[9] = v1[11];
  v17[10] = v4;
  v17[11] = v5;
  v6 = v1[7];
  v17[4] = v1[6];
  v17[5] = v6;
  v7 = v1[9];
  v17[6] = v1[8];
  v17[7] = v7;
  v17[8] = v3;
  v8 = v1[3];
  v17[0] = v1[2];
  v17[1] = v8;
  v9 = v1[5];
  v17[2] = v1[4];
  v17[3] = v9;
  v10 = a1[9];
  v1[10] = a1[8];
  v1[11] = v10;
  v11 = a1[11];
  v1[12] = a1[10];
  v1[13] = v11;
  v12 = a1[5];
  v1[6] = a1[4];
  v1[7] = v12;
  v13 = a1[7];
  v1[8] = a1[6];
  v1[9] = v13;
  v14 = a1[1];
  v1[2] = *a1;
  v1[3] = v14;
  v15 = a1[3];
  v1[4] = a1[2];
  v1[5] = v15;
  return sub_214061060(v17);
}

__n128 sub_2144AE0CC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  v3 = *(a1 + 144);
  *(v2 + 160) = *(a1 + 128);
  *(v2 + 176) = v3;
  v4 = *(a1 + 176);
  *(v2 + 192) = *(a1 + 160);
  *(v2 + 208) = v4;
  v5 = *(a1 + 80);
  *(v2 + 96) = *(a1 + 64);
  *(v2 + 112) = v5;
  v6 = *(a1 + 112);
  *(v2 + 128) = *(a1 + 96);
  *(v2 + 144) = v6;
  v7 = *(a1 + 16);
  *(v2 + 32) = *a1;
  *(v2 + 48) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 64) = result;
  *(v2 + 80) = v9;
  return result;
}

uint64_t sub_2144AE138(_OWORD *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = a1[9];
  *(v1 + 160) = a1[8];
  *(v1 + 176) = v2;
  v3 = a1[11];
  *(v1 + 192) = a1[10];
  *(v1 + 208) = v3;
  v4 = a1[5];
  *(v1 + 96) = a1[4];
  *(v1 + 112) = v4;
  v5 = a1[7];
  *(v1 + 128) = a1[6];
  *(v1 + 144) = v5;
  v6 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  v7 = a1[3];
  *(v1 + 64) = a1[2];
  *(v1 + 80) = v7;
  return v1;
}

uint64_t sub_2144AE17C(_OWORD *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  v7 = a1[9];
  *(v6 + 160) = a1[8];
  *(v6 + 176) = v7;
  v8 = a1[11];
  *(v6 + 192) = a1[10];
  *(v6 + 208) = v8;
  v9 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v9;
  v10 = a1[7];
  *(v6 + 128) = a1[6];
  *(v6 + 144) = v10;
  v11 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v11;
  v12 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v12;
  swift_beginAccess();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3 & 1;
  return v6;
}

uint64_t sub_2144AE234(_OWORD *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v6 = a1[9];
  *(v3 + 160) = a1[8];
  *(v3 + 176) = v6;
  v7 = a1[11];
  *(v3 + 192) = a1[10];
  *(v3 + 208) = v7;
  v8 = a1[5];
  *(v3 + 96) = a1[4];
  *(v3 + 112) = v8;
  v9 = a1[7];
  *(v3 + 128) = a1[6];
  *(v3 + 144) = v9;
  v10 = a1[1];
  *(v3 + 32) = *a1;
  *(v3 + 48) = v10;
  v11 = a1[3];
  *(v3 + 64) = a1[2];
  *(v3 + 80) = v11;
  swift_beginAccess();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return v3;
}

uint64_t sub_2144AE2FC(__CVBuffer *a1, uint64_t a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v5 = BaseAddress;
    swift_beginAccess();
    v6 = sub_2144668E8(v5, *(v2 + 112));
    v8 = v7;
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    sub_2146D8A68();
    return sub_213FB54FC(v6, v8);
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v10 = 257;
    *(v10 + 8) = 0;
    return swift_willThrow();
  }
}

unint64_t sub_2144AE3EC(__CVBuffer *a1)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v4 = BaseAddress;
    swift_beginAccess();
    v1 = sub_2144668E8(v4, *(v1 + 112));
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v5 = 257;
    *(v5 + 8) = 0;
    swift_willThrow();
  }

  return v1;
}

_OWORD *sub_2144AE4B0()
{
  v1 = v0[11];
  v8[8] = v0[10];
  v8[9] = v1;
  v2 = v0[13];
  v8[10] = v0[12];
  v8[11] = v2;
  v3 = v0[7];
  v8[4] = v0[6];
  v8[5] = v3;
  v4 = v0[9];
  v8[6] = v0[8];
  v8[7] = v4;
  v5 = v0[3];
  v8[0] = v0[2];
  v8[1] = v5;
  v6 = v0[5];
  v8[2] = v0[4];
  v8[3] = v6;
  sub_214061060(v8);
  return v0;
}

uint64_t sub_2144AE508()
{
  v1 = v0[11];
  v8[8] = v0[10];
  v8[9] = v1;
  v2 = v0[13];
  v8[10] = v0[12];
  v8[11] = v2;
  v3 = v0[7];
  v8[4] = v0[6];
  v8[5] = v3;
  v4 = v0[9];
  v8[6] = v0[8];
  v8[7] = v4;
  v5 = v0[3];
  v8[0] = v0[2];
  v8[1] = v5;
  v6 = v0[5];
  v8[2] = v0[4];
  v8[3] = v6;
  sub_214061060(v8);
  return swift_deallocClassInstance();
}

__n128 sub_2144AE56C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  v5 = *(a1 + 144);
  *(v4 + 160) = *(a1 + 128);
  *(v4 + 176) = v5;
  v6 = *(a1 + 176);
  *(v4 + 192) = *(a1 + 160);
  *(v4 + 208) = v6;
  v7 = *(a1 + 80);
  *(v4 + 96) = *(a1 + 64);
  *(v4 + 112) = v7;
  v8 = *(a1 + 112);
  *(v4 + 128) = *(a1 + 96);
  *(v4 + 144) = v8;
  v9 = *(a1 + 16);
  *(v4 + 32) = *a1;
  *(v4 + 48) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v4 + 64) = result;
  *(v4 + 80) = v11;
  *a2 = v4;
  return result;
}

unint64_t sub_2144AE60C(__CVBuffer *a1)
{
  v4 = *v1;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v6 = BaseAddress;
    swift_beginAccess();
    v2 = sub_2144668E8(v6, *(v4 + 112));
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v7 = 257;
    *(v7 + 8) = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2144AE6DC@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[10];
  v4 = v1[8];
  v29 = v1[9];
  v30 = v3;
  v5 = v1[10];
  v6 = v1[12];
  v31 = v1[11];
  v7 = v31;
  v32 = v6;
  v8 = v1[6];
  v10 = v1[4];
  v25 = v1[5];
  v9 = v25;
  v26 = v8;
  v11 = v1[6];
  v12 = v1[8];
  v27 = v1[7];
  v13 = v27;
  v28 = v12;
  v14 = v1[2];
  v22[0] = v1[1];
  v22[1] = v14;
  v15 = v1[4];
  v17 = v1[1];
  v16 = v1[2];
  v23 = v1[3];
  v18 = v23;
  v24 = v15;
  a1[8] = v29;
  a1[9] = v5;
  v19 = v1[12];
  a1[10] = v7;
  a1[11] = v19;
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v16;
  a1[2] = v18;
  a1[3] = v10;
  return sub_214060FB0(v22, v21);
}

uint64_t sub_2144AE794(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[9];
  v4 = v1[11];
  v5 = v1[12];
  v17[9] = v1[10];
  v17[10] = v4;
  v17[11] = v5;
  v6 = v1[6];
  v17[4] = v1[5];
  v17[5] = v6;
  v7 = v1[8];
  v17[6] = v1[7];
  v17[7] = v7;
  v17[8] = v3;
  v8 = v1[2];
  v17[0] = v1[1];
  v17[1] = v8;
  v9 = v1[4];
  v17[2] = v1[3];
  v17[3] = v9;
  v10 = a1[9];
  v1[9] = a1[8];
  v1[10] = v10;
  v11 = a1[11];
  v1[11] = a1[10];
  v1[12] = v11;
  v12 = a1[5];
  v1[5] = a1[4];
  v1[6] = v12;
  v13 = a1[7];
  v1[7] = a1[6];
  v1[8] = v13;
  v14 = a1[1];
  v1[1] = *a1;
  v1[2] = v14;
  v15 = a1[3];
  v1[3] = a1[2];
  v1[4] = v15;
  return sub_214061060(v17);
}

_OWORD *sub_2144AE89C(_OWORD *a1)
{
  v2 = a1[9];
  v1[9] = a1[8];
  v1[10] = v2;
  v3 = a1[11];
  v1[11] = a1[10];
  v1[12] = v3;
  v4 = a1[5];
  v1[5] = a1[4];
  v1[6] = v4;
  v5 = a1[7];
  v1[7] = a1[6];
  v1[8] = v5;
  v6 = a1[1];
  v1[1] = *a1;
  v1[2] = v6;
  v7 = a1[3];
  v1[3] = a1[2];
  v1[4] = v7;
  return v1;
}

_OWORD *sub_2144AE8D4()
{
  v1 = v0[10];
  v8[8] = v0[9];
  v8[9] = v1;
  v2 = v0[12];
  v8[10] = v0[11];
  v8[11] = v2;
  v3 = v0[6];
  v8[4] = v0[5];
  v8[5] = v3;
  v4 = v0[8];
  v8[6] = v0[7];
  v8[7] = v4;
  v5 = v0[2];
  v8[0] = v0[1];
  v8[1] = v5;
  v6 = v0[4];
  v8[2] = v0[3];
  v8[3] = v6;
  sub_214061060(v8);
  return v0;
}

uint64_t sub_2144AE92C()
{
  v1 = v0[10];
  v8[8] = v0[9];
  v8[9] = v1;
  v2 = v0[12];
  v8[10] = v0[11];
  v8[11] = v2;
  v3 = v0[6];
  v8[4] = v0[5];
  v8[5] = v3;
  v4 = v0[8];
  v8[6] = v0[7];
  v8[7] = v4;
  v5 = v0[2];
  v8[0] = v0[1];
  v8[1] = v5;
  v6 = v0[4];
  v8[2] = v0[3];
  v8[3] = v6;
  sub_214061060(v8);
  return swift_deallocClassInstance();
}

_BYTE **sub_2144AE9A4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2144AE9DC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2144AEA38(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_2144AEA38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2144AEB04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2140537E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2144AEB04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2144AEC10(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2146D9F88();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2144AEC10(uint64_t a1, unint64_t a2)
{
  v3 = sub_2144AEC5C(a1, a2);
  sub_2144AED8C(&unk_2826533D0);
  return v3;
}

void *sub_2144AEC5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2146701CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2146D9F88();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2146D9708();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2146701CC(v10, 0);
        result = sub_2146D9EB8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_2144AED8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2144AEE78(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_2144AEE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914828, &unk_2147514F0);
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

double sub_2144AEF6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21408C300(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214482C24();
      v10 = v12;
    }

    sub_213FDC730((*(v10 + 56) + 32 * v8), a3);
    sub_214481C3C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2144AF010@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21408C508(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2144831F0();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_2146DA008();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_213FDC730((*(v9 + 56) + 32 * v7), a2);
    sub_21448210C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_2144AF0EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21408C300(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2144838E8();
      v10 = v12;
    }

    sub_213FB77C8((*(v10 + 56) + 40 * v8), a3);
    sub_214482A68(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t *sub_2144AF198(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v35 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_213FB54FC(v5, v4);
      *&v34 = v5;
      *(&v34 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2146ECC00;
      sub_213FB54FC(0, 0xC000000000000000);
      result = sub_2144AF544(&v34, a2);
      v16 = v34;
      v17 = *(&v34 + 1) | 0x4000000000000000;
LABEL_26:
      *v3 = v16;
      v3[1] = v17;
      return result;
    }

    result = sub_213FB54FC(v5, v4);
    *&v34 = v5;
    WORD4(v34) = v4;
    BYTE10(v34) = BYTE2(v4);
    BYTE11(v34) = BYTE3(v4);
    BYTE12(v34) = BYTE4(v4);
    BYTE13(v34) = BYTE5(v4);
    BYTE14(v34) = BYTE6(v4);
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        if (a2 > 7)
        {
          v7 = a2 & 0x7FFFFFFFFFFFFFF8;
          v19 = &v35;
          v20 = a2 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v21 = vrev32q_s8(*v19);
            v19[-1] = vrev32q_s8(v19[-1]);
            *v19 = v21;
            v19 += 2;
            v20 -= 8;
          }

          while (v20);
          if (v7 == a2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v7 = 0;
        }

        v22 = a2 - v7;
        v23 = &v34 + v7;
        do
        {
          *v23 = bswap32(*v23);
          ++v23;
          --v22;
        }

        while (v22);
      }

LABEL_25:
      v16 = v34;
      v17 = DWORD2(v34) | ((WORD6(v34) | (BYTE14(v34) << 16)) << 32);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v6 == 2)
  {

    sub_213FB54FC(v5, v4);
    *&v34 = v5;
    *(&v34 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    v8 = v34;
    v9 = *(v34 + 16);
    v10 = *(v34 + 24);
    result = sub_2146D8728();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = sub_2146D8758();
    v13 = v9 - v12;
    if (__OFSUB__(v9, v12))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (__OFSUB__(v10, v9))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v14 = v12;
    result = sub_2146D8748();
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (!a2)
    {
      goto LABEL_38;
    }

    if (a2 > 7)
    {
      v15 = a2 & 0x7FFFFFFFFFFFFFF8;
      v29 = (v11 + v13 + 16);
      v30 = a2 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v31 = vrev32q_s8(*v29);
        v29[-1] = vrev32q_s8(v29[-1]);
        *v29 = v31;
        v29 += 2;
        v30 -= 8;
      }

      while (v30);
      if (v15 == a2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v15 = 0;
    }

    v32 = a2 - v15;
    v33 = (v11 + v9 + 4 * v15 - v14);
    do
    {
      *v33 = bswap32(*v33);
      ++v33;
      --v32;
    }

    while (v32);
LABEL_38:
    *v3 = v8;
    v3[1] = *(&v8 + 1) | 0x8000000000000000;
    return result;
  }

  *(&v34 + 7) = 0;
  *&v34 = 0;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a2)
  {
    if (a2 <= 7)
    {
      v18 = 0;
LABEL_30:
      v27 = a2 - v18;
      v28 = &v34 + v18;
      do
      {
        *v28 = bswap32(*v28);
        ++v28;
        --v27;
      }

      while (v27);
      return result;
    }

    v18 = a2 & 0x7FFFFFFFFFFFFFF8;
    v24 = &v35;
    v25 = a2 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v26 = vrev32q_s8(*v24);
      v24[-1] = vrev32q_s8(v24[-1]);
      *v24 = v26;
      v24 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v18 != a2)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t sub_2144AF544(int *a1, unint64_t a2)
{
  result = sub_2146D89A8();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_2146D8728();
  if (result)
  {
    v6 = result;
    result = sub_2146D8758();
    v7 = v5 - result;
    if (!__OFSUB__(v5, result))
    {
      v8 = result;
      result = sub_2146D8748();
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (a2)
        {
          if (a2 > 7)
          {
            v9 = a2 & 0x7FFFFFFFFFFFFFF8;
            v10 = (v7 + v6 + 16);
            v11 = a2 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v12 = vrev32q_s8(*v10);
              v10[-1] = vrev32q_s8(v10[-1]);
              *v10 = v12;
              v10 += 2;
              v11 -= 8;
            }

            while (v11);
            if (v9 == a2)
            {
            }
          }

          else
          {
            v9 = 0;
          }

          v13 = a2 - v9;
          v14 = (v6 + v5 + 4 * v9 - v8);
          do
          {
            *v14 = bswap32(*v14);
            ++v14;
            --v13;
          }

          while (v13);
        }
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2144AF650(uint64_t a1, unint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v3 = 0;
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
LABEL_10:
      sub_21402D9F8(a1, a2);
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
LABEL_11:
    sub_2144AF198(v6, v3 / 4);
    return;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v3 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
}

__CVBuffer *sub_2144AF6EC(uint64_t *a1, size_t a2, void *a3, __CVBuffer *a4, uint64_t a5, void *a6, char **a7, char **a8, char **a9, uint64_t a10, _BYTE *a11, char **a12, _BYTE *a13, void *a14, char a15)
{
  v15 = a4;
  v16 = a3;
  v256 = *MEMORY[0x277D85DE8];
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      *(&dataPtr + 7) = 0;
      *&dataPtr = 0;
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_313:
        __break(1u);
        goto LABEL_314;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      if (a2)
      {
        v86 = 4;
        v87 = a2;
        while (1)
        {
          v88 = v86 - 4;
          if ((v86 - 4) >= v16[2])
          {
            goto LABEL_289;
          }

          if (v88 >= *(v15 + 2))
          {
            goto LABEL_291;
          }

          if (v88 >= *(a5 + 16))
          {
            goto LABEL_293;
          }

          if (v88 >= a6[2])
          {
            goto LABEL_297;
          }

          v89 = v16[v86];
          if (v89 < 0)
          {
            break;
          }

          v90 = *(v15 + v86);
          if (v90 < 0)
          {
            break;
          }

          v91 = *(a5 + 8 * v86);
          if (v91 < 0)
          {
            break;
          }

          *pixelFormatTypea = a6[v86];
          v92 = *a7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v92;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v92 = sub_214095ECC(0, *(v92 + 2) + 1, 1, v92);
            *a7 = v92;
          }

          v95 = *(v92 + 2);
          v94 = *(v92 + 3);
          if (v95 >= v94 >> 1)
          {
            v92 = sub_214095ECC((v94 > 1), v95 + 1, 1, v92);
            *a7 = v92;
          }

          *(v92 + 2) = v95 + 1;
          *&v92[8 * v95 + 32] = v89;
          v96 = *a8;
          v97 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v96;
          if ((v97 & 1) == 0)
          {
            v96 = sub_214095ECC(0, *(v96 + 2) + 1, 1, v96);
            *a8 = v96;
          }

          v99 = *(v96 + 2);
          v98 = *(v96 + 3);
          if (v99 >= v98 >> 1)
          {
            v96 = sub_214095ECC((v98 > 1), v99 + 1, 1, v96);
            *a8 = v96;
          }

          *(v96 + 2) = v99 + 1;
          *&v96[8 * v99 + 32] = v90;
          v100 = *a9;
          v101 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v100;
          if ((v101 & 1) == 0)
          {
            v100 = sub_214095ECC(0, *(v100 + 2) + 1, 1, v100);
            *a9 = v100;
          }

          v15 = a4;
          v103 = *(v100 + 2);
          v102 = *(v100 + 3);
          if (v103 >= v102 >> 1)
          {
            v100 = sub_214095ECC((v102 > 1), v103 + 1, 1, v100);
            *a9 = v100;
          }

          *(v100 + 2) = v103 + 1;
          *&v100[8 * v103 + 32] = v91;
          v16 = a3;
          if ((*pixelFormatTypea & 0x8000000000000000) != 0)
          {
            break;
          }

          v104 = v91 * v89;
          if ((v91 * v89) >> 64 != (v91 * v89) >> 63)
          {
            goto LABEL_305;
          }

          v40 = __OFADD__(*pixelFormatTypea, v104);
          v105 = *pixelFormatTypea + v104;
          if (v40)
          {
            goto LABEL_307;
          }

          if (v105 >= 1)
          {
            break;
          }

          if ((*(a10 + 16) & 1) != 0 || (v106 = a10, v86 != 4) && (v106 = (a10 + 8), v86 != 5) || (v107 = *v106, *pixelFormatTypea != v107) || v89 != HIDWORD(v107))
          {
            *a11 = 1;
          }

          v108 = *a12;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v108;
          if ((v109 & 1) == 0)
          {
            v108 = sub_214095FD0(0, *(v108 + 2) + 1, 1, v108);
            *a12 = v108;
          }

          v111 = *(v108 + 2);
          v110 = *(v108 + 3);
          if (v111 >= v110 >> 1)
          {
            v108 = sub_214095FD0((v110 > 1), v111 + 1, 1, v108);
            *a12 = v108;
          }

          *(v108 + 2) = v111 + 1;
          *&v108[8 * v111 + 32] = &dataPtr + *pixelFormatTypea;
          ++v86;
          if (!--v87)
          {
            goto LABEL_128;
          }
        }

        sub_214061118();
        swift_allocError();
        *v223 = 2560;
        *(v223 + 8) = 0;
        swift_willThrow();
      }

      else
      {
LABEL_128:
        if ((*a13 & 1) != 0 && *a11 == 1)
        {
          v112 = a6[2];
          if (!v112)
          {
LABEL_322:
            __break(1u);
            goto LABEL_323;
          }

          v113 = a6[4];
          if (v113 < 0xFFFFFFFF80000000)
          {
LABEL_324:
            __break(1u);
            goto LABEL_325;
          }

          if (v113 > 0x7FFFFFFF)
          {
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

          v114 = v16[2];
          if (!v114)
          {
LABEL_330:
            __break(1u);
            goto LABEL_331;
          }

          v115 = v16[4];
          if ((v115 & 0x8000000000000000) != 0)
          {
LABEL_334:
            __break(1u);
            goto LABEL_335;
          }

          if (HIDWORD(v115))
          {
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          if (v112 == 1)
          {
LABEL_342:
            __break(1u);
            goto LABEL_343;
          }

          v116 = a6[5];
          if (v116 < 0xFFFFFFFF80000000)
          {
LABEL_346:
            __break(1u);
            goto LABEL_347;
          }

          if (v116 > 0x7FFFFFFF)
          {
LABEL_350:
            __break(1u);
            goto LABEL_351;
          }

          if (v114 == 1)
          {
LABEL_354:
            __break(1u);
            goto LABEL_355;
          }

          v117 = v16[5];
          if ((v117 & 0x8000000000000000) != 0)
          {
LABEL_358:
            __break(1u);
            goto LABEL_359;
          }

          if (HIDWORD(v117))
          {
LABEL_362:
            __break(1u);
            goto LABEL_363;
          }

          *&dataPtr = _byteswap_uint64(__PAIR64__(v113, v115));
          *(&dataPtr + 1) = _byteswap_uint64(__PAIR64__(v116, v117));
        }

        v254 = 0;
        swift_beginAccess();
        v118 = a14[2];
        v119 = a14[3];
        v250 = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
        v241 = a14[12];
        v120 = *a12;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v120;
        if ((v121 & 1) == 0)
        {
          v120 = sub_214095FD0(0, *(v120 + 2), 0, v120);
        }

        *a12 = v120;
        v122 = *a8;

        v123 = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v122;
        if ((v123 & 1) == 0)
        {
          v122 = sub_214095ECC(0, *(v122 + 2), 0, v122);
        }

        *a8 = v122;
        v124 = *a9;

        v125 = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v124;
        if ((v125 & 1) == 0)
        {
          v124 = sub_214095ECC(0, *(v124 + 2), 0, v124);
        }

        *a9 = v124;
        v126 = *a7;

        v127 = swift_isUniquelyReferenced_nonNull_native();
        *a7 = v126;
        if ((v127 & 1) == 0)
        {
          v126 = sub_214095ECC(0, *(v126 + 2), 0, v126);
        }

        *a7 = v126;

        CVPixelBufferCreateWithPlanarBytes(0, v118, v119, v250, &dataPtr, v241, a2, v120 + 4, v122 + 4, v124 + 4, v126 + 4, 0, 0, 0, &v254);

        v15 = v254;
        if (v254)
        {
        }

        else
        {
          sub_214061118();
          swift_allocError();
          *v166 = 256;
          *(v166 + 8) = 0;
          swift_willThrow();
          v167 = v254;

          v15 = a4;
        }
      }

      goto LABEL_287;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_21402D9F8(v18, v19);
    sub_213FB54FC(v18, v19);
    *&dataPtr = v18;
    *(&dataPtr + 1) = v19 & 0x3FFFFFFFFFFFFFFFLL;
    v233 = a1;
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    v48 = *(dataPtr + 16);
    v49 = *(dataPtr + 24);

    v229 = *(&dataPtr + 1);
    result = sub_2146D8728();
    if (result)
    {
      v51 = result;
      v52 = sub_2146D8758();
      v53 = v48 - v52;
      if (__OFSUB__(v48, v52))
      {
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      v40 = __OFSUB__(v49, v48);
      v54 = v49 - v48;
      if (v40)
      {
LABEL_316:
        __break(1u);
        goto LABEL_317;
      }

      v55 = sub_2146D8748();
      if (v55 >= v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = v55;
      }

      v231 = v56;
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_318;
      }

      v227 = dataPtr;
      v234 = (v51 + v53);
      if (a2)
      {
        v57 = 4;
        v58 = a2;
        while (1)
        {
          v59 = v57 - 4;
          if ((v57 - 4) >= v16[2])
          {
            goto LABEL_294;
          }

          if (v59 >= *(v15 + 2))
          {
            goto LABEL_298;
          }

          if (v59 >= *(a5 + 16))
          {
            goto LABEL_300;
          }

          if (v59 >= a6[2])
          {
            goto LABEL_302;
          }

          v60 = v16[v57];
          if (v60 < 0)
          {
            break;
          }

          v61 = *(v15 + v57);
          if (v61 < 0)
          {
            break;
          }

          v62 = *(a5 + 8 * v57);
          if (v62 < 0)
          {
            break;
          }

          *pixelFormatType = a6[v57];
          v63 = *a7;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v63;
          if ((v64 & 1) == 0)
          {
            v63 = sub_214095ECC(0, *(v63 + 2) + 1, 1, v63);
            *a7 = v63;
          }

          v66 = *(v63 + 2);
          v65 = *(v63 + 3);
          if (v66 >= v65 >> 1)
          {
            v63 = sub_214095ECC((v65 > 1), v66 + 1, 1, v63);
            *a7 = v63;
          }

          *(v63 + 2) = v66 + 1;
          *&v63[8 * v66 + 32] = v60;
          v67 = *a8;
          v68 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v67;
          if ((v68 & 1) == 0)
          {
            v67 = sub_214095ECC(0, *(v67 + 2) + 1, 1, v67);
            *a8 = v67;
          }

          v70 = *(v67 + 2);
          v69 = *(v67 + 3);
          if (v70 >= v69 >> 1)
          {
            v67 = sub_214095ECC((v69 > 1), v70 + 1, 1, v67);
            *a8 = v67;
          }

          *(v67 + 2) = v70 + 1;
          *&v67[8 * v70 + 32] = v61;
          v71 = *a9;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v71;
          if ((v72 & 1) == 0)
          {
            v71 = sub_214095ECC(0, *(v71 + 2) + 1, 1, v71);
            *a9 = v71;
          }

          v15 = a4;
          v74 = *(v71 + 2);
          v73 = *(v71 + 3);
          if (v74 >= v73 >> 1)
          {
            v71 = sub_214095ECC((v73 > 1), v74 + 1, 1, v71);
            *a9 = v71;
          }

          *(v71 + 2) = v74 + 1;
          *&v71[8 * v74 + 32] = v62;
          v16 = a3;
          if ((*pixelFormatType & 0x8000000000000000) != 0)
          {
            break;
          }

          v75 = v62 * v60;
          if ((v62 * v60) >> 64 != (v62 * v60) >> 63)
          {
            goto LABEL_308;
          }

          v40 = __OFADD__(*pixelFormatType, v75);
          v76 = *pixelFormatType + v75;
          if (v40)
          {
            goto LABEL_310;
          }

          if (v231 < v76)
          {
            break;
          }

          if ((*(a10 + 16) & 1) != 0 || (v77 = a10, v57 != 4) && (v77 = (a10 + 8), v57 != 5) || (v78 = *v77, *pixelFormatType != v78) || v60 != HIDWORD(v78))
          {
            *a11 = 1;
          }

          v79 = *a12;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v79;
          if ((v80 & 1) == 0)
          {
            v79 = sub_214095FD0(0, *(v79 + 2) + 1, 1, v79);
            *a12 = v79;
          }

          v82 = *(v79 + 2);
          v81 = *(v79 + 3);
          if (v82 >= v81 >> 1)
          {
            v79 = sub_214095FD0((v81 > 1), v82 + 1, 1, v79);
            *a12 = v79;
          }

          *(v79 + 2) = v82 + 1;
          *&v79[8 * v82 + 32] = v234 + *pixelFormatType;
          ++v57;
          if (!--v58)
          {
            goto LABEL_179;
          }
        }

        sub_214061118();
        swift_allocError();
        *v224 = 2560;
        *(v224 + 8) = 0;
        swift_willThrow();

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      else
      {
LABEL_179:
        if ((*a13 & 1) != 0 && *a11 == 1)
        {
          v146 = a6[2];
          if (!v146)
          {
LABEL_328:
            __break(1u);
            goto LABEL_329;
          }

          v147 = a6[4];
          if (v147 < 0xFFFFFFFF80000000)
          {
LABEL_332:
            __break(1u);
            goto LABEL_333;
          }

          if (v147 > 0x7FFFFFFF)
          {
LABEL_336:
            __break(1u);
            goto LABEL_337;
          }

          v148 = v16[2];
          if (!v148)
          {
LABEL_340:
            __break(1u);
            goto LABEL_341;
          }

          v149 = v16[4];
          if ((v149 & 0x8000000000000000) != 0)
          {
LABEL_344:
            __break(1u);
            goto LABEL_345;
          }

          if (HIDWORD(v149))
          {
LABEL_348:
            __break(1u);
            goto LABEL_349;
          }

          if (v146 == 1)
          {
LABEL_352:
            __break(1u);
            goto LABEL_353;
          }

          v150 = a6[5];
          if (v150 < 0xFFFFFFFF80000000)
          {
LABEL_356:
            __break(1u);
            goto LABEL_357;
          }

          if (v150 > 0x7FFFFFFF)
          {
LABEL_360:
            __break(1u);
            goto LABEL_361;
          }

          if (v148 == 1)
          {
LABEL_364:
            __break(1u);
            goto LABEL_365;
          }

          v151 = v16[5];
          if ((v151 & 0x8000000000000000) != 0)
          {
LABEL_366:
            __break(1u);
            goto LABEL_367;
          }

          if (HIDWORD(v151))
          {
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
          }

          *v234 = bswap32(v147);
          v234[1] = bswap32(v149);
          v234[2] = bswap32(v150);
          v234[3] = bswap32(v151);
        }

        v254 = 0;
        swift_beginAccess();
        v153 = a14[2];
        v152 = a14[3];
        v154 = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
        v155 = a14[12];
        v156 = *a12;
        v157 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v156;
        v252 = v152;
        if ((v157 & 1) == 0)
        {
          v156 = sub_214095FD0(0, *(v156 + 2), 0, v156);
        }

        *a12 = v156;
        v158 = *a8;

        v159 = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v158;
        if ((v159 & 1) == 0)
        {
          v158 = sub_214095ECC(0, *(v158 + 2), 0, v158);
        }

        *a8 = v158;
        v160 = *a9;

        v161 = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v160;
        if ((v161 & 1) == 0)
        {
          v160 = sub_214095ECC(0, *(v160 + 2), 0, v160);
        }

        *a9 = v160;
        v162 = *a7;

        v163 = swift_isUniquelyReferenced_nonNull_native();
        *a7 = v162;
        if ((v163 & 1) == 0)
        {
          v162 = sub_214095ECC(0, *(v162 + 2), 0, v162);
        }

        *a7 = v162;

        CVPixelBufferCreateWithPlanarBytes(0, v153, v252, v154, v234, v155, a2, v156 + 4, v158 + 4, v160 + 4, v162 + 4, 0, 0, 0, &v254);

        v15 = v254;
        if (v254)
        {

          v164 = v229 | 0x8000000000000000;
          goto LABEL_278;
        }

        sub_214061118();
        swift_allocError();
        *v169 = 256;
        *(v169 + 8) = 0;
        swift_willThrow();
        v170 = v254;

        v15 = a4;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v225 = v229 | 0x8000000000000000;
LABEL_286:
      *v233 = v227;
      v233[1] = v225;
      goto LABEL_287;
    }

    __break(1u);
  }

  else
  {
    v233 = a1;
    if (!v20)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_213FB54FC(v18, v19);
      *&dataPtr = v18;
      WORD4(dataPtr) = v19;
      BYTE10(dataPtr) = BYTE2(v19);
      BYTE11(dataPtr) = BYTE3(v19);
      BYTE12(dataPtr) = BYTE4(v19);
      BYTE13(dataPtr) = BYTE5(v19);
      BYTE14(dataPtr) = BYTE6(v19);
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      v15 = a4;
      v21 = a5;
      if (a2)
      {
        v22 = 0;
        v228 = BYTE6(v19);
        while (v22 < a3[2])
        {
          if (v22 >= *(v15 + 2))
          {
            goto LABEL_290;
          }

          if (v22 >= *(v21 + 16))
          {
            goto LABEL_292;
          }

          if (v22 >= a6[2])
          {
            goto LABEL_296;
          }

          v23 = a3[v22 + 4];
          if (v23 < 0)
          {
            goto LABEL_204;
          }

          v24 = *(a4 + v22 + 4);
          if (v24 < 0)
          {
            goto LABEL_204;
          }

          v25 = *(a5 + 32 + 8 * v22);
          if (v25 < 0)
          {
            goto LABEL_204;
          }

          v26 = a6[v22 + 4];
          v27 = *a7;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v27;
          if ((v28 & 1) == 0)
          {
            v27 = sub_214095ECC(0, *(v27 + 2) + 1, 1, v27);
            *a7 = v27;
          }

          v30 = *(v27 + 2);
          v29 = *(v27 + 3);
          if (v30 >= v29 >> 1)
          {
            v27 = sub_214095ECC((v29 > 1), v30 + 1, 1, v27);
            *a7 = v27;
          }

          *(v27 + 2) = v30 + 1;
          *&v27[8 * v30 + 32] = v23;
          v31 = *a8;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v31;
          if ((v32 & 1) == 0)
          {
            v31 = sub_214095ECC(0, *(v31 + 2) + 1, 1, v31);
            *a8 = v31;
          }

          v34 = *(v31 + 2);
          v33 = *(v31 + 3);
          if (v34 >= v33 >> 1)
          {
            v31 = sub_214095ECC((v33 > 1), v34 + 1, 1, v31);
            *a8 = v31;
          }

          *(v31 + 2) = v34 + 1;
          *&v31[8 * v34 + 32] = v24;
          v35 = *a9;
          v36 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v35;
          if ((v36 & 1) == 0)
          {
            v35 = sub_214095ECC(0, *(v35 + 2) + 1, 1, v35);
            *a9 = v35;
          }

          v15 = a4;
          v38 = *(v35 + 2);
          v37 = *(v35 + 3);
          if (v38 >= v37 >> 1)
          {
            v35 = sub_214095ECC((v37 > 1), v38 + 1, 1, v35);
            *a9 = v35;
          }

          *(v35 + 2) = v38 + 1;
          *&v35[8 * v38 + 32] = v25;
          if (v26 < 0)
          {
LABEL_204:
            sub_214061118();
            swift_allocError();
            *v165 = 2560;
            *(v165 + 8) = 0;
            swift_willThrow();
            goto LABEL_178;
          }

          v39 = v25 * v23;
          if ((v25 * v23) >> 64 != (v25 * v23) >> 63)
          {
            goto LABEL_304;
          }

          v40 = __OFADD__(v26, v39);
          v41 = v26 + v39;
          if (v40)
          {
            goto LABEL_306;
          }

          if (v228 < v41)
          {
            goto LABEL_204;
          }

          if ((*(a10 + 16) & 1) != 0 || (v42 = a10, v22) && (v42 = (a10 + 8), v22 != 1) || (v43 = *v42, v26 != v43) || v23 != HIDWORD(v43))
          {
            *a11 = 1;
          }

          v44 = *a12;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v44;
          if ((v45 & 1) == 0)
          {
            v44 = sub_214095FD0(0, *(v44 + 2) + 1, 1, v44);
            *a12 = v44;
          }

          v47 = *(v44 + 2);
          v46 = *(v44 + 3);
          if (v47 >= v46 >> 1)
          {
            v44 = sub_214095FD0((v46 > 1), v47 + 1, 1, v44);
            *a12 = v44;
          }

          ++v22;
          *(v44 + 2) = v47 + 1;
          *&v44[8 * v47 + 32] = &dataPtr + v26;
          v21 = a5;
          if (a2 == v22)
          {
            goto LABEL_153;
          }
        }

        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

LABEL_153:
      if ((*a13 & 1) != 0 && *a11 == 1)
      {
        v128 = a6[2];
        if (!v128)
        {
LABEL_323:
          __break(1u);
          goto LABEL_324;
        }

        v129 = a6[4];
        if (v129 < 0xFFFFFFFF80000000)
        {
LABEL_325:
          __break(1u);
          goto LABEL_326;
        }

        if (v129 > 0x7FFFFFFF)
        {
LABEL_327:
          __break(1u);
          goto LABEL_328;
        }

        v130 = a3[2];
        if (!v130)
        {
LABEL_331:
          __break(1u);
          goto LABEL_332;
        }

        v131 = a3[4];
        if ((v131 & 0x8000000000000000) != 0)
        {
LABEL_335:
          __break(1u);
          goto LABEL_336;
        }

        if (HIDWORD(v131))
        {
LABEL_339:
          __break(1u);
          goto LABEL_340;
        }

        if (v128 == 1)
        {
LABEL_343:
          __break(1u);
          goto LABEL_344;
        }

        v132 = a6[5];
        if (v132 < 0xFFFFFFFF80000000)
        {
LABEL_347:
          __break(1u);
          goto LABEL_348;
        }

        if (v132 > 0x7FFFFFFF)
        {
LABEL_351:
          __break(1u);
          goto LABEL_352;
        }

        if (v130 == 1)
        {
LABEL_355:
          __break(1u);
          goto LABEL_356;
        }

        v133 = a3[5];
        if ((v133 & 0x8000000000000000) != 0)
        {
LABEL_359:
          __break(1u);
          goto LABEL_360;
        }

        if (HIDWORD(v133))
        {
LABEL_363:
          __break(1u);
          goto LABEL_364;
        }

        *&dataPtr = _byteswap_uint64(__PAIR64__(v129, v131));
        *(&dataPtr + 1) = _byteswap_uint64(__PAIR64__(v132, v133));
      }

      v254 = 0;
      swift_beginAccess();
      v134 = a14[2];
      v135 = a14[3];
      v251 = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
      v242 = a14[12];
      v136 = *a12;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      *a12 = v136;
      if ((v137 & 1) == 0)
      {
        v136 = sub_214095FD0(0, *(v136 + 2), 0, v136);
      }

      *a12 = v136;
      v138 = *a8;

      v139 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v138;
      if ((v139 & 1) == 0)
      {
        v138 = sub_214095ECC(0, *(v138 + 2), 0, v138);
      }

      *a8 = v138;
      v140 = *a9;

      v141 = swift_isUniquelyReferenced_nonNull_native();
      *a9 = v140;
      if ((v141 & 1) == 0)
      {
        v140 = sub_214095ECC(0, *(v140 + 2), 0, v140);
      }

      *a9 = v140;
      v142 = *a7;

      v143 = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v142;
      if ((v143 & 1) == 0)
      {
        v142 = sub_214095ECC(0, *(v142 + 2), 0, v142);
      }

      *a7 = v142;

      CVPixelBufferCreateWithPlanarBytes(0, v134, v135, v251, &dataPtr, v242, a2, v136 + 4, v138 + 4, v140 + 4, v142 + 4, 0, 0, 0, &v254);

      v15 = v254;
      if (!v254)
      {
        sub_214061118();
        swift_allocError();
        *v168 = 256;
        *(v168 + 8) = 0;
        swift_willThrow();

        v15 = a4;
      }

LABEL_178:
      v144 = dataPtr;
      v145 = DWORD2(dataPtr) | ((WORD6(dataPtr) | (BYTE14(dataPtr) << 16)) << 32);

      *v233 = v144;
      v233[1] = v145;
      goto LABEL_287;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_21402D9F8(v18, v19);
    sub_213FB54FC(v18, v19);
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    v230 = v19 & 0x3FFFFFFFFFFFFFFFLL;
    v83 = v18;
    v227 = v18;
    v84 = v18 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v84 < v83)
      {
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
        goto LABEL_322;
      }

      if (sub_2146D8728() && __OFSUB__(v83, sub_2146D8758()))
      {
        goto LABEL_321;
      }

      sub_2146D8778();
      swift_allocObject();
      v171 = sub_2146D8708();

      v230 = v171;
    }

    v172 = v84 < v83;
    v173 = v84 - v83;
    if (v172)
    {
      goto LABEL_315;
    }

    result = sub_2146D8728();
    if (result)
    {
      v174 = result;
      v175 = sub_2146D8758();
      v176 = v83 - v175;
      if (__OFSUB__(v83, v175))
      {
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      v177 = sub_2146D8748();
      if (v177 >= v173)
      {
        v178 = v173;
      }

      else
      {
        v178 = v177;
      }

      v232 = v178;
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_319;
      }

      v235 = (v174 + v176);
      if (a2)
      {
        v179 = 4;
        v180 = a2;
        while (1)
        {
          v181 = v179 - 4;
          if ((v179 - 4) >= v16[2])
          {
            goto LABEL_295;
          }

          if (v181 >= *(v15 + 2))
          {
            goto LABEL_299;
          }

          if (v181 >= *(a5 + 16))
          {
            goto LABEL_301;
          }

          if (v181 >= a6[2])
          {
            goto LABEL_303;
          }

          v182 = v16[v179];
          if (v182 < 0)
          {
            break;
          }

          v183 = *(v15 + v179);
          if (v183 < 0)
          {
            break;
          }

          v184 = *(a5 + 8 * v179);
          if (v184 < 0)
          {
            break;
          }

          *pixelFormatTypeb = a6[v179];
          v185 = *a7;
          v186 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v185;
          if ((v186 & 1) == 0)
          {
            v185 = sub_214095ECC(0, *(v185 + 2) + 1, 1, v185);
            *a7 = v185;
          }

          v188 = *(v185 + 2);
          v187 = *(v185 + 3);
          if (v188 >= v187 >> 1)
          {
            v185 = sub_214095ECC((v187 > 1), v188 + 1, 1, v185);
            *a7 = v185;
          }

          *(v185 + 2) = v188 + 1;
          *&v185[8 * v188 + 32] = v182;
          v189 = *a8;
          v190 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v189;
          if ((v190 & 1) == 0)
          {
            v189 = sub_214095ECC(0, *(v189 + 2) + 1, 1, v189);
            *a8 = v189;
          }

          v192 = *(v189 + 2);
          v191 = *(v189 + 3);
          if (v192 >= v191 >> 1)
          {
            v189 = sub_214095ECC((v191 > 1), v192 + 1, 1, v189);
            *a8 = v189;
          }

          *(v189 + 2) = v192 + 1;
          *&v189[8 * v192 + 32] = v183;
          v193 = *a9;
          v194 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v193;
          if ((v194 & 1) == 0)
          {
            v193 = sub_214095ECC(0, *(v193 + 2) + 1, 1, v193);
            *a9 = v193;
          }

          v15 = a4;
          v196 = *(v193 + 2);
          v195 = *(v193 + 3);
          if (v196 >= v195 >> 1)
          {
            v193 = sub_214095ECC((v195 > 1), v196 + 1, 1, v193);
            *a9 = v193;
          }

          *(v193 + 2) = v196 + 1;
          *&v193[8 * v196 + 32] = v184;
          v16 = a3;
          if ((*pixelFormatTypeb & 0x8000000000000000) != 0)
          {
            break;
          }

          v197 = v184 * v182;
          if ((v184 * v182) >> 64 != (v184 * v182) >> 63)
          {
            goto LABEL_309;
          }

          v40 = __OFADD__(*pixelFormatTypeb, v197);
          v198 = *pixelFormatTypeb + v197;
          if (v40)
          {
            goto LABEL_311;
          }

          if (v232 < v198)
          {
            break;
          }

          if ((*(a10 + 16) & 1) != 0 || (v199 = a10, v179 != 4) && (v199 = (a10 + 8), v179 != 5) || (v200 = *v199, *pixelFormatTypeb != v200) || v182 != HIDWORD(v200))
          {
            *a11 = 1;
          }

          v201 = *a12;
          v202 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v201;
          if ((v202 & 1) == 0)
          {
            v201 = sub_214095FD0(0, *(v201 + 2) + 1, 1, v201);
            *a12 = v201;
          }

          v204 = *(v201 + 2);
          v203 = *(v201 + 3);
          if (v204 >= v203 >> 1)
          {
            v201 = sub_214095FD0((v203 > 1), v204 + 1, 1, v201);
            *a12 = v201;
          }

          *(v201 + 2) = v204 + 1;
          *&v201[8 * v204 + 32] = v235 + *pixelFormatTypeb;
          ++v179;
          if (!--v180)
          {
            goto LABEL_253;
          }
        }

        sub_214061118();
        swift_allocError();
        *v226 = 2560;
        *(v226 + 8) = 0;
        swift_willThrow();
        v222 = v230;

        swift_bridgeObjectRelease_n();
        goto LABEL_285;
      }

LABEL_253:
      if ((*a13 & 1) != 0 && *a11 == 1)
      {
        v205 = a6[2];
        if (!v205)
        {
LABEL_329:
          __break(1u);
          goto LABEL_330;
        }

        v206 = a6[4];
        if (v206 < 0xFFFFFFFF80000000)
        {
LABEL_333:
          __break(1u);
          goto LABEL_334;
        }

        if (v206 > 0x7FFFFFFF)
        {
LABEL_337:
          __break(1u);
          goto LABEL_338;
        }

        v207 = v16[2];
        if (!v207)
        {
LABEL_341:
          __break(1u);
          goto LABEL_342;
        }

        v208 = v16[4];
        if ((v208 & 0x8000000000000000) != 0)
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        if (HIDWORD(v208))
        {
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        if (v205 == 1)
        {
LABEL_353:
          __break(1u);
          goto LABEL_354;
        }

        v209 = a6[5];
        if (v209 < 0xFFFFFFFF80000000)
        {
LABEL_357:
          __break(1u);
          goto LABEL_358;
        }

        if (v209 > 0x7FFFFFFF)
        {
LABEL_361:
          __break(1u);
          goto LABEL_362;
        }

        if (v207 == 1)
        {
LABEL_365:
          __break(1u);
          goto LABEL_366;
        }

        v210 = v16[5];
        if ((v210 & 0x8000000000000000) != 0)
        {
LABEL_367:
          __break(1u);
          goto LABEL_368;
        }

        if (HIDWORD(v210))
        {
          goto LABEL_369;
        }

        *v235 = bswap32(v206);
        v235[1] = bswap32(v208);
        v235[2] = bswap32(v209);
        v235[3] = bswap32(v210);
      }

      *&dataPtr = 0;
      swift_beginAccess();
      v211 = a14[2];
      v253 = a14[3];
      pixelFormatTypec = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
      v243 = a14[12];
      v212 = *a12;
      v213 = swift_isUniquelyReferenced_nonNull_native();
      *a12 = v212;
      if ((v213 & 1) == 0)
      {
        v212 = sub_214095FD0(0, *(v212 + 2), 0, v212);
      }

      *a12 = v212;
      v214 = *a8;

      v215 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v214;
      if ((v215 & 1) == 0)
      {
        v214 = sub_214095ECC(0, *(v214 + 2), 0, v214);
      }

      *a8 = v214;
      v216 = *a9;

      v217 = swift_isUniquelyReferenced_nonNull_native();
      *a9 = v216;
      if ((v217 & 1) == 0)
      {
        v216 = sub_214095ECC(0, *(v216 + 2), 0, v216);
      }

      *a9 = v216;
      v218 = *a7;

      v219 = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v218;
      if ((v219 & 1) == 0)
      {
        v218 = sub_214095ECC(0, *(v218 + 2), 0, v218);
      }

      *a7 = v218;

      CVPixelBufferCreateWithPlanarBytes(0, v211, v253, pixelFormatTypec, v235, v243, a2, v212 + 4, v214 + 4, v216 + 4, v218 + 4, 0, 0, 0, &dataPtr);

      v15 = dataPtr;
      if (!dataPtr)
      {
        sub_214061118();
        swift_allocError();
        *v220 = 256;
        *(v220 + 8) = 0;
        swift_willThrow();
        v221 = dataPtr;
        v222 = v230;

        v15 = a4;

        swift_bridgeObjectRelease_n();

LABEL_285:

        v225 = v222 | 0x4000000000000000;
        goto LABEL_286;
      }

      v164 = v230 | 0x4000000000000000;
LABEL_278:
      *v233 = v227;
      v233[1] = v164;
LABEL_287:

      return v15;
    }
  }

  __break(1u);
  return result;
}
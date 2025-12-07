uint64_t sub_2145EE910()
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

uint64_t sub_2145EE990()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);

    return v1;
  }

  return result;
}

uint64_t sub_2145EEA10()
{
  v1 = v0 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
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

unint64_t sub_2145EEAB8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 40);
  if ((*(v2 + 21) & 1) == 0)
  {
    return *(v2 + 16) | ((*(v2 + 20) & 1) << 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145EEB40@<X0>(uint64_t a1@<X8>)
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
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145EEC60@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2145EECB8(__n128 *a1)
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

uint64_t sub_2145EED20()
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

unint64_t sub_2145EEDA0@<X0>(uint64_t a1@<X8>)
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
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_214042A28(inited, a1);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_214059900;
  *(v10 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = sub_2142E0070(v9);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(v8 + 32) = v12;
  return sub_214042A28(v8, a1 + 40);
}

uint64_t sub_2145EEFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EF018(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_i64[0];
  v7 = v1[2].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EF080()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

unint64_t sub_2145EF100@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282654088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_2826541C8);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2140598E8;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214042A28(inited, a1);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = sub_214069764(&unk_282654128);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = sub_2140598E4;
  *(v16 + 24) = v17;
  *(v14 + 32) = v16;
  v18 = sub_214069888(&unk_282654218);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v19 + 16) = sub_2140598E8;
  *(v19 + 24) = v20;
  *(v14 + 40) = v19;
  v21 = sub_2142E0070(v14);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = sub_214032610;
  *(v22 + 24) = v23;
  *(v13 + 32) = v22;
  return sub_214042A28(v13, a1 + 40);
}

uint64_t sub_2145EF400@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2145EF45C(__n128 *a1)
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

uint64_t sub_2145EF4CC()
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

unint64_t sub_2145EF54C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282654268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282654308);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214059818;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21403254C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145EF6FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EF758(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_i64[0];
  v7 = v1[2].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EF7C4()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

unint64_t sub_2145EF844@<X0>(uint64_t a1@<X8>)
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
  v5[4] = 16;
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

unint64_t sub_2145EF9AC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C60, &unk_21476AE10);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2147680A0;
  *(v4 + 16) = sub_21438F468;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E07B4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E0, &unk_2146EAA30);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2145FF1A8;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044EAC(inited, a1);
}

uint64_t sub_2145EFAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145EFB48(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  return result;
}

uint64_t sub_2145EFBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 137);
  v6 = *(v1 + 138);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2145EFBDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u8[8] = v4;
  v1[8].n128_u8[9] = v5;
  v1[8].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2145EFC3C()
{
  v1 = *(v0 + 96);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 88);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145EFCC4()
{
  if ((*(v0 + 137) & 1) == 0)
  {
    return *(v0 + 128);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145EFD30@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C60, &unk_21476AE10);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2147680B0;
  *(v4 + 16) = sub_2142E10E8;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E07B4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E0, &unk_2146EAA30);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2145FF0B4;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044EAC(inited, a1);
}

uint64_t sub_2145EFE74@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2145EFEA0(__n128 *a1)
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

uint64_t sub_2145EFF00()
{
  if ((*(v0 + 97) & 1) == 0)
  {
    return *(v0 + 88);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145EFF6C@<X0>(uint64_t a1@<X8>)
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
  v5[4] = 16;
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

uint64_t sub_2145F00D4@<X0>(uint64_t a1@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145F012C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145F0194()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145F047C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_21431326C(v4, v5, v6, v7);
}

__n128 sub_2145F04D4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 32);
  sub_214313220(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_2145F0574@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 36));
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
  return sub_213FB2E54(v10, &v9, &qword_27C9074A0, &qword_2146F4A68);
}

__n128 sub_2145F05EC(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 36));
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_213FB2DF4(v8, &qword_27C9074A0, &qword_2146F4A68);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

void sub_2145F06B4(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  sub_2144D6614(v4, v5, v6, v7, v8, v9);
}

__n128 sub_2145F0714(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 40);
  sub_2144D6660(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40));
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  return result;
}

uint64_t sub_2145F07DC(uint64_t a1)
{
  v2 = sub_2145F155C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0818(uint64_t a1)
{
  v2 = sub_2145F155C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2145F0854()
{
  v1 = 0xD000000000000019;
  v2 = 0xD000000000000018;
  v3 = 0xD000000000000015;
  if (*v0 != 6)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    v1 = v2;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2145F0928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2145FEAEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2145F0950(uint64_t a1)
{
  v2 = sub_2145F14B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F098C(uint64_t a1)
{
  v2 = sub_2145F14B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F09C8(uint64_t a1)
{
  v2 = sub_2145F1508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0A04(uint64_t a1)
{
  v2 = sub_2145F1508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0A40(uint64_t a1)
{
  v2 = sub_2145F15B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0A7C(uint64_t a1)
{
  v2 = sub_2145F15B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0AB8(uint64_t a1)
{
  v2 = sub_2145F1754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0AF4(uint64_t a1)
{
  v2 = sub_2145F1754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0B30(uint64_t a1)
{
  v2 = sub_2145F1700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0B6C(uint64_t a1)
{
  v2 = sub_2145F1700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0BA8(uint64_t a1)
{
  v2 = sub_2145F1658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0BE4(uint64_t a1)
{
  v2 = sub_2145F1658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0C20(uint64_t a1)
{
  v2 = sub_2145F1604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0C5C(uint64_t a1)
{
  v2 = sub_2145F1604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0C98(uint64_t a1)
{
  v2 = sub_2145F16AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0CD4(uint64_t a1)
{
  v2 = sub_2145F16AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0D10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916618, &qword_2147680D0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916620, &qword_2147680D8);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916628, &qword_2147680E0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916630, &qword_2147680E8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916638, &qword_2147680F0);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v39 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916640, &qword_2147680F8);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v36 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916648, &qword_214768100);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916650, &qword_214768108);
  v33 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916658, &qword_214768110);
  v20 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_2145F14B4();
  sub_2146DAA28();
  v26 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v61 = 6;
        sub_2145F155C();
        v28 = v48;
        v27 = v54;
        sub_2146DA288();
        v30 = v49;
        v29 = v50;
      }

      else
      {
        v62 = 7;
        sub_2145F1508();
        v28 = v51;
        v27 = v54;
        sub_2146DA288();
        v30 = v52;
        v29 = v53;
      }
    }

    else if (v21 == 4)
    {
      v59 = 4;
      sub_2145F1604();
      v28 = v42;
      v27 = v54;
      sub_2146DA288();
      v30 = v43;
      v29 = v44;
    }

    else
    {
      v60 = 5;
      sub_2145F15B0();
      v28 = v45;
      v27 = v54;
      sub_2146DA288();
      v30 = v46;
      v29 = v47;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v57 = 2;
      sub_2145F16AC();
      v28 = v36;
      v27 = v54;
      sub_2146DA288();
      v30 = v37;
      v29 = v38;
    }

    else
    {
      v58 = 3;
      sub_2145F1658();
      v28 = v39;
      v27 = v54;
      sub_2146DA288();
      v30 = v40;
      v29 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return (*v26)(v25, v27);
  }

  if (v21)
  {
    v56 = 1;
    sub_2145F1700();
    v31 = v54;
    sub_2146DA288();
    (*(v34 + 8))(v16, v35);
    return (*v26)(v25, v31);
  }

  v55 = 0;
  sub_2145F1754();
  v27 = v54;
  sub_2146DA288();
  (*(v33 + 8))(v19, v17);
  return (*v26)(v25, v27);
}

unint64_t sub_2145F14B4()
{
  result = qword_27C916660;
  if (!qword_27C916660)
  {
    result = swift_getWitnessTable(aU_95, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916660);
  }

  return result;
}

unint64_t sub_2145F1508()
{
  result = qword_27C916668;
  if (!qword_27C916668)
  {
    result = swift_getWitnessTable(byte_21476AD64, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.DeclineSecureCloudPingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916668);
  }

  return result;
}

unint64_t sub_2145F155C()
{
  result = qword_27C916670;
  if (!qword_27C916670)
  {
    result = swift_getWitnessTable(byte_21476AD14, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.AcceptSecureCloudPingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916670);
  }

  return result;
}

unint64_t sub_2145F15B0()
{
  result = qword_27C916678;
  if (!qword_27C916678)
  {
    result = swift_getWitnessTable(aE_84, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.PingSecureCloudDestinationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916678);
  }

  return result;
}

unint64_t sub_2145F1604()
{
  result = qword_27C916680;
  if (!qword_27C916680)
  {
    result = swift_getWitnessTable(byte_21476AC74, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudUpgradeResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916680);
  }

  return result;
}

unint64_t sub_2145F1658()
{
  result = qword_27C916688;
  if (!qword_27C916688)
  {
    result = swift_getWitnessTable(byte_21476AC24, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudUpgradeRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916688);
  }

  return result;
}

unint64_t sub_2145F16AC()
{
  result = qword_27C916690;
  if (!qword_27C916690)
  {
    result = swift_getWitnessTable(aU_96, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.WithdrawSecureCloudInviteCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916690);
  }

  return result;
}

unint64_t sub_2145F1700()
{
  result = qword_27C916698;
  if (!qword_27C916698)
  {
    result = swift_getWitnessTable(byte_21476AB84, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudInviteResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916698);
  }

  return result;
}

unint64_t sub_2145F1754()
{
  result = qword_27C9166A0;
  if (!qword_27C9166A0)
  {
    result = swift_getWitnessTable(byte_21476AB34, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudInviteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9166A0);
  }

  return result;
}

uint64_t sub_2145F17D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166A8, &qword_214768118);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166B0, &qword_214768120);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166B8, &qword_214768128);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166C0, &qword_214768130);
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166C8, &qword_214768138);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v79 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166D0, &qword_214768140);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v77 = &v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166D8, &qword_214768148);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166E0, &qword_214768150);
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166E8, &unk_214768158);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_2145F14B4();
  v24 = v84;
  sub_2146DAA08();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v59 = v15;
    v26 = v79;
    v25 = v80;
    v28 = v81;
    v27 = v82;
    v84 = v20;
    v29 = v83;
    v61 = v19;
    v60 = v22;
    v30 = sub_2146DA238();
    v31 = (2 * *(v30 + 16)) | 1;
    v86 = v30;
    v87 = v30 + 32;
    v88 = 0;
    v89 = v31;
    v32 = sub_214396F68();
    if (v32 != 8 && v88 == v89 >> 1)
    {
      v90 = v32;
      if (v32 > 3u)
      {
        v43 = v61;
        v44 = v60;
        if (v32 > 5u)
        {
          v52 = v84;
          if (v32 == 6)
          {
            v91 = 6;
            sub_2145F155C();
            sub_2146DA0B8();
            (*(v73 + 8))(v27, v74);
          }

          else
          {
            v91 = 7;
            sub_2145F1508();
            v56 = v78;
            sub_2146DA0B8();
            (*(v75 + 8))(v56, v76);
          }

          (*(v52 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        v45 = v84;
        if (v32 == 4)
        {
          v91 = 4;
          sub_2145F1604();
          sub_2146DA0B8();
          v46 = v69;
          v47 = v70;
        }

        else
        {
          v91 = 5;
          sub_2145F15B0();
          v25 = v28;
          sub_2146DA0B8();
          v47 = v71;
          v46 = v72;
        }

        (*(v47 + 8))(v25, v46);
        (*(v45 + 8))(v44, v43);
      }

      else
      {
        if (v32 > 1u)
        {
          v48 = v84;
          if (v32 == 2)
          {
            v91 = 2;
            sub_2145F16AC();
            v49 = v77;
            v50 = v61;
            v51 = v60;
            sub_2146DA0B8();
            (*(v65 + 8))(v49, v66);
          }

          else
          {
            v91 = 3;
            sub_2145F1658();
            v50 = v61;
            v51 = v60;
            sub_2146DA0B8();
            (*(v67 + 8))(v26, v68);
          }

          (*(v48 + 8))(v51, v50);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        if (v32)
        {
          v91 = 1;
          sub_2145F1700();
          v53 = v59;
          v54 = v61;
          v55 = v60;
          sub_2146DA0B8();
          (*(v63 + 8))(v53, v64);
          (*(v84 + 8))(v55, v54);
        }

        else
        {
          v91 = 0;
          sub_2145F1754();
          v34 = v58;
          v35 = v61;
          v36 = v60;
          sub_2146DA0B8();
          (*(v62 + 8))(v34, v57);
          (*(v84 + 8))(v36, v35);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v33 = v90;
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v37 = sub_2146D9F58();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v39 = &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem;
    v40 = v61;
    v41 = v60;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v84 + 8))(v41, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_2145F2328(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t (*sub_2145F2358(uint64_t *a1))()
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
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

    return sub_2145FF164;
  }

  return result;
}

uint64_t (*sub_2145F2430(uint64_t *a1))()
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
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF168;
}

void (*sub_2145F24D4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
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

    return sub_2145F25AC;
  }

  return result;
}

void (*sub_2145F25B0(uint64_t *a1))(uint64_t **, char)
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
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F2650;
}

void (*sub_2145F2658(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 112);
  *(v3 + 24) = v5;
  v6 = *(v1 + 120);
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

    return sub_2145F2730;
  }

  return result;
}

void (*sub_2145F2734(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F27D4;
}

uint64_t sub_2145F2870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 20);
    *a2 = *(v5 + 16);
    *(a2 + 4) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2145F294C(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 20);
    *(a1 + 8) = *(v4 + 16);
    *(a1 + 12) = v5 & 1;
    return sub_2145F2A00;
  }

  return result;
}

uint64_t sub_2145F2A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  v7 = *(v3 + 20);
  v8 = *(v3 + 21);
  LOBYTE(v3) = *(v3 + 22);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 20) = v7;
  *(a2 + 16) = v6;
  *(a2 + 21) = v8;
  *(a2 + 22) = v3;
}

uint64_t sub_2145F2A70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  v7 = *(a1 + 22);
  v8 = a2 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 20) = v5;
  *(v8 + 16) = v4;
  *(v8 + 21) = v6;
  *(v8 + 22) = v7;
  return result;
}

uint64_t (*sub_2145F2AF4(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 20);
  v10 = *(v6 + 4);
  v11 = *(v6 + 21);
  LOBYTE(v6) = *(v6 + 22);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v10;
  *(v4 + 20) = v9;
  *(v4 + 21) = v11;
  *(v4 + 22) = v6;

  return sub_2145F2BA8;
}

uint64_t (*sub_2145F2BCC(uint64_t *a1))()
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
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

    return sub_2145FF164;
  }

  return result;
}

uint64_t (*sub_2145F2CA4(uint64_t *a1))()
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
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF168;
}

void (*sub_2145F2D44(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
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

    return sub_2145FF16C;
  }

  return result;
}

void (*sub_2145F2E1C(uint64_t *a1))(uint64_t **, char)
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
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF170;
}

void sub_2145F2EBC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 96);
  v8 = *(v2 + 128);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 112), *(v2 + 120));

    *(v2 + 112) = a1;
    *(v2 + 120) = a2;
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

void (*sub_2145F3000(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 112);
  *(v3 + 24) = v5;
  v6 = *(v1 + 120);
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

    return sub_2145FF174;
  }

  return result;
}

void (*sub_2145F30D8(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF178;
}

uint64_t (*sub_2145F32A0(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 20);
    *(a1 + 8) = *(v4 + 16);
    *(a1 + 12) = v5 & 1;
    return sub_2145FF17C;
  }

  return result;
}

uint64_t (*sub_2145F3354(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 20);
  v10 = *(v6 + 4);
  v11 = *(v6 + 21);
  LOBYTE(v6) = *(v6 + 22);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v10;
  *(v4 + 20) = v9;
  *(v4 + 21) = v11;
  *(v4 + 22) = v6;

  return sub_2145FF180;
}

uint64_t sub_2145F3408@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x189uLL);
  memcpy(a1, v1, 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145F346C(const void *a1)
{
  memcpy(__dst, v1, 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy(v1, a1, 0x189uLL);
}

void sub_2145F34EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 424);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 416);
    a2[1] = v4;
  }
}

double sub_2145F3560(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145F3610(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 400);
  v8 = *(v2 + 432);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 416), *(v2 + 424));

    *(v2 + 416) = a1;
    *(v2 + 424) = a2;
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

void (*sub_2145F3754(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 416);
  *(v3 + 24) = v5;
  v6 = *(v1 + 424);
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

    return sub_2145F382C;
  }

  return result;
}

void sub_2145F382C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 400);
    v13 = *(v3 + 432);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 416) = v5;
      *(v9 + 424) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 400);
  v13 = *(v3 + 432);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 416) = v5;
  *(v7 + 424) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2145F39FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 408);
  v3 = *(a1 + 416);
  v4 = *(a1 + 424);
  v5 = *(a1 + 432);
  *a2 = *(a1 + 400);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145F3A50(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 416);
  v9 = *(a2 + 424);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 400) = v4;
  *(a2 + 408) = v3;
  *(a2 + 416) = v5;
  *(a2 + 424) = v6;
  *(a2 + 432) = v7;
  return result;
}

void (*sub_2145F3AD8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 408);
  v6 = *(v1 + 416);
  v7 = *(v1 + 424);
  v8 = *(v1 + 432);
  *v4 = *(v1 + 400);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F3B78;
}

void sub_2145F3B78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 416);
  v10 = *(v3 + 424);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 400) = v5;
    *(v3 + 408) = v4;
    *(v3 + 416) = v7;
    *(v3 + 424) = v6;
    *(v3 + 432) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 400) = v5;
    *(v3 + 408) = v4;
    *(v3 + 416) = v7;
    *(v3 + 424) = v6;
    *(v3 + 432) = v8;
  }

  free(v2);
}

uint64_t sub_2145F3C58@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 488);
  v9 = *(v1 + 472);
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 497);
  v3 = *(v10 + 9);
  v4 = *(v1 + 456);
  v8[0] = *(v1 + 440);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145F3CB8(uint64_t a1)
{
  v3 = (v1 + 440);
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_213FB2DF4(v8, &qword_27C909E68, &qword_214761070);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_2145F3EC8()
{
  if (*v0)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 0x74736575716572;
  }
}

void sub_2145F3F04(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
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

uint64_t sub_2145F3FE0(uint64_t a1)
{
  v2 = sub_2145F43F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F401C(uint64_t a1)
{
  v2 = sub_2145F43F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F4058(uint64_t a1)
{
  v2 = sub_2145F44A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F4094(uint64_t a1)
{
  v2 = sub_2145F44A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F40D0(uint64_t a1)
{
  v2 = sub_2145F444C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F410C(uint64_t a1)
{
  v2 = sub_2145F444C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F4148(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166F0, &qword_214768168);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166F8, &qword_214768170);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916700, &qword_214768178);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145F43F8();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2145F444C();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2145F44A0();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2145F43F8()
{
  result = qword_27C916708;
  if (!qword_27C916708)
  {
    result = swift_getWitnessTable(aE_85, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916708);
  }

  return result;
}

unint64_t sub_2145F444C()
{
  result = qword_27C916710;
  if (!qword_27C916710)
  {
    result = swift_getWitnessTable(byte_21476AA94, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.ResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916710);
  }

  return result;
}

unint64_t sub_2145F44A0()
{
  result = qword_27C916718;
  if (!qword_27C916718)
  {
    result = swift_getWitnessTable(byte_21476AA44, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.RequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916718);
  }

  return result;
}

uint64_t sub_2145F4520()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2145F4568@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916720, &qword_214768180);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916728, &qword_214768188);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916730, &qword_214768190);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145F43F8();
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
      *v22 = &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType;
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
        sub_2145F444C();
        sub_2146DA0B8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2145F44A0();
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

void sub_2145F4A54(uint64_t a1, uint64_t a2)
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

void (*sub_2145F4B98(uint64_t *a1))(uint64_t **a1, char a2)
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

    return sub_21439DFB0;
  }

  return result;
}

uint64_t (*sub_2145F4C70(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  return sub_2145FF184;
}

uint64_t sub_2145F4D1C(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void sub_2145F4D4C(uint64_t a1, uint64_t a2)
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
    sub_213FDC6D0(*(v2 + 72), *(v2 + 80));

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

void (*sub_2145F4E90(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
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

    return sub_2145FF16C;
  }

  return result;
}

void (*sub_2145F4F68(uint64_t *a1))(uint64_t **, char)
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
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF170;
}

void sub_2145F5184(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
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

double sub_2145F5220(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145F52E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
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

void (*sub_2145F5438(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
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

uint64_t sub_2145F5524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36));
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

uint64_t sub_2145F5594(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
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

void (*sub_2145F562C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
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

uint64_t sub_2145F56D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(0);
  v6 = a1 + *(result + 40);
  if (*(v6 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = *(v6 + 20);
    *a3 = *(v6 + 16);
    *(a3 + 4) = v7 & 1;
  }

  return result;
}

uint64_t (*sub_2145F57D4(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 20);
    *(a1 + 8) = *(v4 + 16);
    *(a1 + 12) = v5 & 1;
    return sub_2145FF17C;
  }

  return result;
}

uint64_t sub_2145F58C8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 40));
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 4);
  v8 = *(v4 + 20);
  v9 = *(v4 + 21);
  LOBYTE(v4) = *(v4 + 22);
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 20) = v8;
  *(a3 + 16) = v7;
  *(a3 + 21) = v9;
  *(a3 + 22) = v4;
}

uint64_t sub_2145F5938(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 4);
  v8 = *(a1 + 20);
  v9 = *(a1 + 21);
  v10 = *(a1 + 22);
  v11 = a2 + *((a5)(0, a2, a3, a4) + 40);

  *v11 = v6;
  *(v11 + 8) = v5;
  *(v11 + 20) = v8;
  *(v11 + 16) = v7;
  *(v11 + 21) = v9;
  *(v11 + 22) = v10;
  return result;
}

uint64_t (*sub_2145F59C0(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 20);
  v10 = *(v6 + 4);
  v11 = *(v6 + 21);
  LOBYTE(v6) = *(v6 + 22);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v10;
  *(v4 + 20) = v9;
  *(v4 + 21) = v11;
  *(v4 + 22) = v6;

  return sub_2145FF180;
}

void sub_2145F5A74(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3] + *(*a1 + 8);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 4) | (*(*a1 + 20) << 32);
  v7 = *(*a1 + 21);
  v8 = *(*a1 + 22);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 20) = BYTE4(v6);
    *(v3 + 16) = v6;
    *(v3 + 21) = v7;
    *(v3 + 22) = v8;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 20) = BYTE4(v6);
    *(v3 + 21) = v7;
    *(v3 + 22) = v8;
  }

  free(v2);
}

void sub_2145F5B40(uint64_t a1, uint64_t a2)
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

void (*sub_2145F5C84(uint64_t *a1))(uint64_t **a1, char a2)
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

    return sub_21439DFB0;
  }

  return result;
}

uint64_t (*sub_2145F5D5C(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  return sub_2145FF184;
}

void (*sub_2145F5DFC(uint64_t *a1))(uint64_t **a1, char a2)
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

    return sub_21439DFB0;
  }

  return result;
}

uint64_t (*sub_2145F5ED4(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  return sub_2145FF184;
}

void (*sub_2145F5F74(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_2145F604C(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2145F60F8(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_2145F6128(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 32);
    a2[1] = v4;
  }
}

double sub_2145F619C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145F624C(uint64_t a1, uint64_t a2)
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
    sub_213FDC6D0(*(v2 + 32), *(v2 + 40));

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

uint64_t (*sub_2145F6390(uint64_t *a1))()
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
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

    return sub_2145FF164;
  }

  return result;
}

uint64_t sub_2145F6468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145F64BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t (*sub_2145F6544(uint64_t *a1))()
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
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF168;
}

uint64_t sub_2145F65E4(uint64_t a1)
{
  v2 = sub_2145F706C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F6620(uint64_t a1)
{
  v2 = sub_2145F706C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2145F665C()
{
  v1 = *v0;
  v2 = 0x747065636361;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x4164696C61766E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2145F6708@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2145FEEF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2145F6730(uint64_t a1)
{
  v2 = sub_2145F6EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F676C(uint64_t a1)
{
  v2 = sub_2145F6EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F67A8(uint64_t a1)
{
  v2 = sub_2145F7018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F67E4(uint64_t a1)
{
  v2 = sub_2145F7018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6820(uint64_t a1)
{
  v2 = sub_2145F6FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F685C(uint64_t a1)
{
  v2 = sub_2145F6FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6898(uint64_t a1)
{
  v2 = sub_2145F6F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F68D4(uint64_t a1)
{
  v2 = sub_2145F6F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6910(uint64_t a1)
{
  v2 = sub_2145F6F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F694C(uint64_t a1)
{
  v2 = sub_2145F6F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6988(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916738, &qword_214768198);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916740, &qword_2147681A0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916748, &qword_2147681A8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916750, &qword_2147681B0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916758, &qword_2147681B8);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916760, &qword_2147681C0);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_2145F6EC8();
  sub_2146DAA28();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_2145F7018();
      v31 = v45;
      sub_2146DA288();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_2145F706C();
      v31 = v45;
      sub_2146DA288();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_2145F6FC4();
      v22 = v33;
      v23 = v45;
      sub_2146DA288();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_2145F6F70();
      v22 = v36;
      v23 = v45;
      sub_2146DA288();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_2145F6F1C();
      v22 = v39;
      v23 = v45;
      sub_2146DA288();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_2145F6EC8()
{
  result = qword_27C916768;
  if (!qword_27C916768)
  {
    result = swift_getWitnessTable(a5_41, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916768);
  }

  return result;
}

unint64_t sub_2145F6F1C()
{
  result = qword_27C916770;
  if (!qword_27C916770)
  {
    result = swift_getWitnessTable(byte_21476A9A4, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.InvalidAddressCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916770);
  }

  return result;
}

unint64_t sub_2145F6F70()
{
  result = qword_27C916778;
  if (!qword_27C916778)
  {
    result = swift_getWitnessTable(byte_21476A954, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IneligibleDevicesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916778);
  }

  return result;
}

unint64_t sub_2145F6FC4()
{
  result = qword_27C916780;
  if (!qword_27C916780)
  {
    result = swift_getWitnessTable(asc_21476A904, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IncompatibleVersionCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916780);
  }

  return result;
}

unint64_t sub_2145F7018()
{
  result = qword_27C916788;
  if (!qword_27C916788)
  {
    result = swift_getWitnessTable(aU_97, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IncompatibleAccountCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916788);
  }

  return result;
}

unint64_t sub_2145F706C()
{
  result = qword_27C916790;
  if (!qword_27C916790)
  {
    result = swift_getWitnessTable(byte_21476A864, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.AcceptCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916790);
  }

  return result;
}

uint64_t sub_2145F70C0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916798, &qword_2147681C8);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167A0, &qword_2147681D0);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167A8, &qword_2147681D8);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167B0, &qword_2147681E0);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167B8, &qword_2147681E8);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167C0, &unk_2147681F0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2145F6EC8();
  v19 = v61;
  sub_2146DAA08();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_2146DA238();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_214396FD0();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_2146D9F58();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v34 = &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_2145F7018();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_2146DA0B8();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_2145F706C();
      v37 = v46;
      sub_2146DA0B8();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_2145F6FC4();
    v38 = v24;
    v39 = v46;
    sub_2146DA0B8();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_2145F6F1C();
    v41 = v56;
    v42 = v46;
    sub_2146DA0B8();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_2145F6F70();
  v31 = v46;
  sub_2146DA0B8();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_2145F78EC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x169uLL);
  memcpy(a1, v1, 0x169uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909F60, &qword_2146F5B98);
}

void *sub_2145F7950(const void *a1)
{
  memcpy(__dst, v1, 0x169uLL);
  sub_213FB2DF4(__dst, &qword_27C909F60, &qword_2146F5B98);
  return memcpy(v1, a1, 0x169uLL);
}

uint64_t sub_2145F7A84(uint64_t result, char a2)
{
  *(v2 + 384) = result;
  *(v2 + 392) = a2 & 1;
  return result;
}

void (*sub_2145F7AB8(uint64_t *a1))(uint64_t **a1, char a2)
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

    return sub_21439BAB0;
  }

  return result;
}

void (*sub_2145F7B90(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  return sub_2145F7C30;
}

void sub_2145F7C60(uint64_t a1, uint64_t a2)
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

void (*sub_2145F7DA4(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_2145F7E7C(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2145F7F1C()
{
  v1 = *v0;

  return v1;
}

void sub_2145F7F4C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_2145F7FA8(uint64_t a1, uint64_t a2)
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
    sub_213FDC6D0(*(v2 + 32), *(v2 + 40));

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

uint64_t (*sub_2145F80EC(uint64_t *a1))()
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
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

    return sub_2145F81C4;
  }

  return result;
}

void sub_2145F81C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 16);
    v13 = *(v3 + 48);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 32) = v5;
      *(v9 + 40) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 16);
  v13 = *(v3 + 48);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 32) = v5;
  *(v7 + 40) = v4;

LABEL_6:

  free(v2);
}

uint64_t (*sub_2145F8398(uint64_t *a1))()
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
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F8438;
}

void sub_2145F843C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
  }

  free(v2);
}

uint64_t sub_2145F8680@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90A020, &qword_2146F5BE0);
}

__n128 sub_2145F86DC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A020, &qword_2146F5BE0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_2145F876C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 88);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2145F87E0(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2145F8890(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145F895C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 96);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 88);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145F89FC;
  }

  return result;
}

uint64_t sub_2145F89FC(uint64_t *a1, char a2)
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

uint64_t sub_2145F8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  *a2 = *(a1 + 72);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145F8B90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 72) = v4;
  *(a2 + 80) = v3;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  return result;
}

void (*sub_2145F8C18(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145F8CB8;
}

void sub_2145F8CB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 88);
  v10 = *(v3 + 96);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
  }

  free(v2);
}

uint64_t sub_2145F8D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 137))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 136);
    *a2 = *(result + 128);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2145F8E2C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 137))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 136);
    *a1 = *(v1 + 128);
    *(a1 + 8) = v2 & 1;
    return sub_2145F8EC0;
  }

  return result;
}

uint64_t sub_2145F8EF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
  *(a2 + 137) = v7;
  *(a2 + 138) = v8;
  return result;
}

void (*sub_2145F8F68(uint64_t *a1))(uint64_t **a1, char a2)
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
  v8 = *(v1 + 137);
  v9 = *(v1 + 138);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2145F9008;
}

void sub_2145F9008(uint64_t **a1, char a2)
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

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
    *(v3 + 138) = v9;
  }

  else
  {

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
    *(v3 + 138) = v9;
  }

  free(v2);
}

uint64_t sub_2145F90D4(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t sub_2145F9110(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t sub_2145F914C(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t sub_2145F9188(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t sub_2145F91C4(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t sub_2145F9200(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t sub_2145F923C(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t sub_2145F9278(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t sub_2145F92B4(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t sub_2145F92F0(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t sub_2145F932C(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

uint64_t sub_2145F9368(uint64_t result, char a2)
{
  *(v2 + 320) = result;
  *(v2 + 328) = a2 & 1;
  return result;
}

uint64_t sub_2145F93A4(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t sub_2145F93E0(uint64_t result, char a2)
{
  *(v2 + 352) = result;
  *(v2 + 360) = a2 & 1;
  return result;
}

uint64_t sub_2145F9410@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90A020, &qword_2146F5BE0);
}

__n128 sub_2145F946C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A020, &qword_2146F5BE0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_2145F94FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 97))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 96);
    *a2 = *(result + 88);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2145F9590(uint64_t a1))()
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

uint64_t sub_2145F9658(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 72) = v4;
  *(a2 + 80) = v3;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 97) = v7;
  *(a2 + 98) = v8;
  return result;
}

void (*sub_2145F96CC(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_2145F976C(uint64_t **a1, char a2)
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

    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v6;
    *(v3 + 96) = v7;
    *(v3 + 97) = v8;
    *(v3 + 98) = v9;
  }

  else
  {

    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v6;
    *(v3 + 96) = v7;
    *(v3 + 97) = v8;
    *(v3 + 98) = v9;
  }

  free(v2);
}

uint64_t sub_2145F9838(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_2145F9874(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_2145F98B0(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t sub_2145F98EC(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t sub_2145F9928(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t sub_2145F9964(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t sub_2145F9994()
{
  v1 = *(v0 + 200);

  return v1;
}

void sub_2145F99C4(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
}

uint64_t sub_2145F9A7C()
{
  v1 = *(v0 + 224);

  return v1;
}

void sub_2145F9AAC(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
}

uint64_t sub_2145F9B04()
{
  v1 = *(v0 + 240);

  return v1;
}

void sub_2145F9B34(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
}

uint64_t sub_2145F9B98(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t sub_2145F9BC8()
{
  v1 = *(v0 + 272);

  return v1;
}

void sub_2145F9BF8(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
}

uint64_t sub_2145F9C88()
{
  v1 = 0x7552646564697567;
  v2 = 0x697461746964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x6157646564697567;
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

uint64_t sub_2145F9D10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2145FED80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2145F9D38(uint64_t a1)
{
  v2 = sub_2145FA3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9D74(uint64_t a1)
{
  v2 = sub_2145FA3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9DB0(uint64_t a1)
{
  v2 = sub_2145FA518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9DEC(uint64_t a1)
{
  v2 = sub_2145FA518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9E28(uint64_t a1)
{
  v2 = sub_2145FA4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9E64(uint64_t a1)
{
  v2 = sub_2145FA4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9EA0(uint64_t a1)
{
  v2 = sub_2145FA470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9EDC(uint64_t a1)
{
  v2 = sub_2145FA470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9F18(uint64_t a1)
{
  v2 = sub_2145FA41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9F54(uint64_t a1)
{
  v2 = sub_2145FA41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9F90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167C8, &qword_214768200);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167D0, &qword_214768208);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167D8, &qword_214768210);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167E0, &qword_214768218);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167E8, &qword_214768220);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145FA3C8();
  sub_2146DAA28();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_2145FA470();
      v18 = v27;
      sub_2146DA288();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_2145FA41C();
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
    sub_2145FA4C4();
    v18 = v24;
    sub_2146DA288();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_2145FA518();
  sub_2146DA288();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_2145FA3C8()
{
  result = qword_27C9167F0;
  if (!qword_27C9167F0)
  {
    result = swift_getWitnessTable(byte_21476A814, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9167F0);
  }

  return result;
}

unint64_t sub_2145FA41C()
{
  result = qword_27C9167F8;
  if (!qword_27C9167F8)
  {
    result = swift_getWitnessTable(aE_86, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.VideoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9167F8);
  }

  return result;
}

unint64_t sub_2145FA470()
{
  result = qword_27C916800;
  if (!qword_27C916800)
  {
    result = swift_getWitnessTable(byte_21476A774, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.MeditationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916800);
  }

  return result;
}

unint64_t sub_2145FA4C4()
{
  result = qword_27C916808;
  if (!qword_27C916808)
  {
    result = swift_getWitnessTable(byte_21476A724, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.GuidedWalkCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916808);
  }

  return result;
}

unint64_t sub_2145FA518()
{
  result = qword_27C916810;
  if (!qword_27C916810)
  {
    result = swift_getWitnessTable(aU_98, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.GuidedRunCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916810);
  }

  return result;
}

uint64_t sub_2145FA56C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916818, &qword_214768228);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916820, &qword_214768230);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916828, &qword_214768238);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916830, &qword_214768240);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916838, &qword_214768248);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2145FA3C8();
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
      *v28 = &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType;
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
        sub_2145FA4C4();
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
        sub_2145FA518();
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
      sub_2145FA470();
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
      sub_2145FA41C();
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

uint64_t sub_2145FABF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90A020, &qword_2146F5BE0);
}

__n128 sub_2145FAC54(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A020, &qword_2146F5BE0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_2145FACF0(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t sub_2145FAD2C(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_2145FAD68(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_2145FADA4(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_2145FADD4()
{
  v1 = *(v0 + 136);

  return v1;
}

void sub_2145FAE04(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t sub_2145FAE5C()
{
  v1 = *(v0 + 152);

  return v1;
}

void sub_2145FAE8C(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t sub_2145FAEE4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145FAFAC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DCEB8;
  }

  return result;
}

void (*sub_2145FB04C(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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

  sub_21404F7E0(v6, v7);
  return sub_2145FB0EC;
}

void sub_2145FB118(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
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

uint64_t sub_2145FB238(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_2145FB274(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_2145FB2A4()
{
  v1 = *v0;

  return v1;
}

void sub_2145FB2D4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2145FB32C()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_2145FB35C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2145FB3B4()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_2145FB3E4(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_2145FB43C()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_2145FB46C(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_2145FB4E4(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145FB514@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), 0x189uLL);
  memcpy(a1, (v1 + 72), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145FB578(const void *a1)
{
  memcpy(__dst, (v1 + 72), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 72), a1, 0x189uLL);
}

uint64_t sub_2145FB5F8()
{
  v1 = *v0;

  return v1;
}

void sub_2145FB628(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2145FB6A0(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145FB6D0()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_2145FB700(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2145FB758@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 97);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145FB7BC(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v9[0] = v4;
  *(v9 + 9) = *(v1 + 97);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C909E68, &qword_214761070);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  v6 = a1[3];
  *(v1 + 72) = a1[2];
  *(v1 + 88) = v6;
  result = *(a1 + 57);
  *(v1 + 97) = result;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2145FB85C()
{
  v1 = *(v0 + 120);

  return v1;
}

void sub_2145FB88C(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t sub_2145FB904(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 140) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145FB934@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0x189uLL);
  memcpy(a1, (v1 + 144), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145FB998(const void *a1)
{
  memcpy(__dst, (v1 + 144), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 144), a1, 0x189uLL);
}

uint64_t sub_2145FBA18()
{
  v1 = *v0;

  return v1;
}

void sub_2145FBA48(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2145FBAA0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145FBAFC(uint64_t a1)
{
  v3 = v1[4];
  v7[2] = v1[3];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 73);
  v4 = v1[2];
  v7[0] = v1[1];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C909E68, &qword_214761070);
  v5 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v5;
  *(v1 + 73) = *(a1 + 57);
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

uint64_t sub_2145FBB8C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0x189uLL);
  memcpy(a1, (v1 + 96), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145FBBF0(const void *a1)
{
  memcpy(__dst, (v1 + 96), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 96), a1, 0x189uLL);
}

uint64_t sub_2145FBC70()
{
  v1 = *v0;

  return v1;
}

void sub_2145FBCA0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

unint64_t sub_2145FBCFC()
{
  result = qword_27C916840;
  if (!qword_27C916840)
  {
    result = swift_getWitnessTable(aY_39, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem, v0, v1);
    atomic_store(result, &qword_27C916840);
  }

  return result;
}

uint64_t sub_2145FBD7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C907460, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest, aI_94);
  result = sub_2145FBE00(&qword_27C9074F0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest, byte_2146FE0C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145FBE00(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2145FBE48(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C907470, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse, byte_2146FE0F0);
  result = sub_2145FBE00(&qword_27C907500, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse, byte_2146FE118);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145FBECC(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C909DD8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo, byte_2146FE140);
  result = sub_2145FBE00(&qword_27C909DF0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo, aQ_37);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FBF54()
{
  result = qword_27C916848;
  if (!qword_27C916848)
  {
    result = swift_getWitnessTable(aQ_38, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType, v0, v1);
    atomic_store(result, &qword_27C916848);
  }

  return result;
}

uint64_t sub_2145FBFD4(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C907480, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage, aY_40);
  result = sub_2145FBE00(&qword_27C907510, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage, asc_2146FE1B8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FC0E0()
{
  result = qword_27C916850;
  if (!qword_27C916850)
  {
    result = swift_getWitnessTable(asc_2147684BC, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType, v0, v1);
    atomic_store(result, &qword_27C916850);
  }

  return result;
}

uint64_t sub_2145FC1B8(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C909E88, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem, byte_2146FE370);
  result = sub_2145FBE00(&qword_27C909EC0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem, aA_43);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FC298()
{
  result = qword_27C916858;
  if (!qword_27C916858)
  {
    result = swift_getWitnessTable(byte_21476861C, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType, v0, v1);
    atomic_store(result, &qword_27C916858);
  }

  return result;
}

unint64_t sub_2145FC39C()
{
  result = qword_27C916860;
  if (!qword_27C916860)
  {
    result = swift_getWitnessTable(asc_2146FE500, &type metadata for IDSActivitySharingInvitation.InviteRequest, v0, v1);
    atomic_store(result, &qword_27C916860);
  }

  return result;
}

unint64_t sub_2145FC3F0()
{
  result = qword_27C916868;
  if (!qword_27C916868)
  {
    result = swift_getWitnessTable(byte_2146FE528, &type metadata for IDSActivitySharingInvitation.InviteRequest, v0, v1);
    atomic_store(result, &qword_27C916868);
  }

  return result;
}

unint64_t sub_2145FC470()
{
  result = qword_27C916870;
  if (!qword_27C916870)
  {
    result = swift_getWitnessTable(byte_2146FE550, &type metadata for IDSActivitySharingInvitation.InviteResponse, v0, v1);
    atomic_store(result, &qword_27C916870);
  }

  return result;
}

unint64_t sub_2145FC4C4()
{
  result = qword_27C916878;
  if (!qword_27C916878)
  {
    result = swift_getWitnessTable(aA_44, &type metadata for IDSActivitySharingInvitation.InviteResponse, v0, v1);
    atomic_store(result, &qword_27C916878);
  }

  return result;
}

unint64_t sub_2145FC544()
{
  result = qword_27C916880;
  if (!qword_27C916880)
  {
    result = swift_getWitnessTable(aI_44, &type metadata for IDSActivitySharingInvitation.FinalizeHandshake, v0, v1);
    atomic_store(result, &qword_27C916880);
  }

  return result;
}

unint64_t sub_2145FC598()
{
  result = qword_27C916888;
  if (!qword_27C916888)
  {
    result = swift_getWitnessTable(byte_2146FE5C8, &type metadata for IDSActivitySharingInvitation.FinalizeHandshake, v0, v1);
    atomic_store(result, &qword_27C916888);
  }

  return result;
}

uint64_t sub_2145FC618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FC654()
{
  result = qword_27C916890;
  if (!qword_27C916890)
  {
    result = swift_getWitnessTable(byte_2146FE5F0, &type metadata for IDSActivitySharingInvitation.WithdrawInviteRequest, v0, v1);
    atomic_store(result, &qword_27C916890);
  }

  return result;
}

unint64_t sub_2145FC6A8()
{
  result = qword_27C916898;
  if (!qword_27C916898)
  {
    result = swift_getWitnessTable(byte_2146FE618, &type metadata for IDSActivitySharingInvitation.WithdrawInviteRequest, v0, v1);
    atomic_store(result, &qword_27C916898);
  }

  return result;
}

uint64_t sub_2145FC6FC(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C90CB08, type metadata accessor for IDSActivitySharingInvitation, byte_2146FA270);
  result = sub_2145FBE00(&qword_27C90CAD0, type metadata accessor for IDSActivitySharingInvitation, aA_45);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_set_77Tm(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v5 = *a1;
  v6 = *(a1 + 4);
  (a5)(0, a2, a3, a4);
  return sub_2140300F8(v5 | (v6 << 32));
}

void sub_2145FC804(uint64_t a1)
{
  sub_21403BEC8(319, &qword_27C9168B0, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem);
  if (v1 <= 0x3F)
  {
    sub_2145FC994(319, &qword_27C9168B8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
    if (v2 <= 0x3F)
    {
      sub_2145FC994(319, &qword_27C9168C0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
      if (v3 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C9168C8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_27C9168D0, &type metadata for IDSActivitySharingInvitation.SecureCloudPingRequest);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_27C9168D8, &type metadata for IDSActivitySharingInvitation.SecureCloudPingResponse);
            if (v6 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_27C9168E0, &type metadata for IDSActivitySharingInvitation.SecureCloudWithdrawRequest);
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

void sub_2145FC994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_2145FCA20(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v2 <= 0x3F)
    {
      sub_2145FC994(319, &qword_27C9168F8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
      if (v3 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_27C916900, &qword_27C905AC0, &unk_2146F3F90);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145FCB60(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C916918, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType);
      if (v3 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C9168F8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
        if (v4 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_27C916900, &qword_27C905AC0, &unk_2146F3F90);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2145FCCC8(uint64_t a1)
{
  sub_21403BEC8(319, &qword_27C916930, &type metadata for IDSActivitySharingInvitation.ActivityDataPreview);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C916938, &type metadata for IDSActivitySharingInvitation.ShareLocations);
      if (v3 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C916940, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145FCE08(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C916958, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType);
      if (v3 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C916940, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
        if (v4 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_27C916900, &qword_27C905AC0, &unk_2146F3F90);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2145FCF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 393))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145FCFD4(uint64_t result, int a2, int a3)
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
    *(result + 392) = 0;
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
      *(result + 393) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 393) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2145FD0C4(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v2 <= 0x3F)
    {
      sub_2145FC994(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2145FD1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
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

uint64_t sub_2145FD1F4(uint64_t result, int a2, int a3)
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
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

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145FD2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
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

uint64_t sub_2145FD2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145FD3B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2145FD3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145FD468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 465))
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

uint64_t sub_2145FD4C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 456) = 0;
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
    *(result + 464) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 465) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 465) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2145FD5A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 537))
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

uint64_t sub_2145FD600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 536) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 537) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 537) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2145FD6FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 489))
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

uint64_t sub_2145FD758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 488) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 489) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 489) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2145FD9C0()
{
  result = qword_27C916970;
  if (!qword_27C916970)
  {
    result = swift_getWitnessTable(byte_21476A114, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916970);
  }

  return result;
}

unint64_t sub_2145FDA18()
{
  result = qword_27C916978;
  if (!qword_27C916978)
  {
    result = swift_getWitnessTable(asc_21476A26C, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916978);
  }

  return result;
}

unint64_t sub_2145FDA70()
{
  result = qword_27C916980;
  if (!qword_27C916980)
  {
    result = swift_getWitnessTable(byte_21476A4B4, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916980);
  }

  return result;
}

unint64_t sub_2145FDAC8()
{
  result = qword_27C916988;
  if (!qword_27C916988)
  {
    result = swift_getWitnessTable(byte_21476A6AC, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916988);
  }

  return result;
}

unint64_t sub_2145FDB20()
{
  result = qword_27C916990;
  if (!qword_27C916990)
  {
    result = swift_getWitnessTable(byte_21476A5CC, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.GuidedRunCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916990);
  }

  return result;
}

unint64_t sub_2145FDB78()
{
  result = qword_27C916998;
  if (!qword_27C916998)
  {
    result = swift_getWitnessTable(byte_21476A5F4, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.GuidedRunCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916998);
  }

  return result;
}

unint64_t sub_2145FDBD0()
{
  result = qword_27C9169A0;
  if (!qword_27C9169A0)
  {
    result = swift_getWitnessTable(asc_21476A57C, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.GuidedWalkCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169A0);
  }

  return result;
}

unint64_t sub_2145FDC28()
{
  result = qword_27C9169A8;
  if (!qword_27C9169A8)
  {
    result = swift_getWitnessTable(a5_42, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.GuidedWalkCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169A8);
  }

  return result;
}

unint64_t sub_2145FDC80()
{
  result = qword_27C9169B0;
  if (!qword_27C9169B0)
  {
    result = swift_getWitnessTable(aU_99, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.MeditationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169B0);
  }

  return result;
}

unint64_t sub_2145FDCD8()
{
  result = qword_27C9169B8;
  if (!qword_27C9169B8)
  {
    result = swift_getWitnessTable(byte_21476A554, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.MeditationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169B8);
  }

  return result;
}

unint64_t sub_2145FDD30()
{
  result = qword_27C9169C0;
  if (!qword_27C9169C0)
  {
    result = swift_getWitnessTable(byte_21476A4DC, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.VideoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169C0);
  }

  return result;
}

unint64_t sub_2145FDD88()
{
  result = qword_27C9169C8;
  if (!qword_27C9169C8)
  {
    result = swift_getWitnessTable(byte_21476A504, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.VideoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169C8);
  }

  return result;
}

unint64_t sub_2145FDDE0()
{
  result = qword_27C9169D0;
  if (!qword_27C9169D0)
  {
    result = swift_getWitnessTable(byte_21476A61C, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169D0);
  }

  return result;
}

unint64_t sub_2145FDE38()
{
  result = qword_27C9169D8;
  if (!qword_27C9169D8)
  {
    result = swift_getWitnessTable(byte_21476A644, &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169D8);
  }

  return result;
}

unint64_t sub_2145FDE90()
{
  result = qword_27C9169E0;
  if (!qword_27C9169E0)
  {
    result = swift_getWitnessTable(byte_21476A3D4, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.AcceptCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169E0);
  }

  return result;
}

unint64_t sub_2145FDEE8()
{
  result = qword_27C9169E8;
  if (!qword_27C9169E8)
  {
    result = swift_getWitnessTable(byte_21476A3FC, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.AcceptCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169E8);
  }

  return result;
}

unint64_t sub_2145FDF40()
{
  result = qword_27C9169F0;
  if (!qword_27C9169F0)
  {
    result = swift_getWitnessTable(byte_21476A384, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IncompatibleAccountCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169F0);
  }

  return result;
}

unint64_t sub_2145FDF98()
{
  result = qword_27C9169F8;
  if (!qword_27C9169F8)
  {
    result = swift_getWitnessTable(asc_21476A3AC, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IncompatibleAccountCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9169F8);
  }

  return result;
}

unint64_t sub_2145FDFF0()
{
  result = qword_27C916A00;
  if (!qword_27C916A00)
  {
    result = swift_getWitnessTable(aM_121, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IncompatibleVersionCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A00);
  }

  return result;
}

unint64_t sub_2145FE048()
{
  result = qword_27C916A08;
  if (!qword_27C916A08)
  {
    result = swift_getWitnessTable(asc_21476A35C, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IncompatibleVersionCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A08);
  }

  return result;
}

unint64_t sub_2145FE0A0()
{
  result = qword_27C916A10;
  if (!qword_27C916A10)
  {
    result = swift_getWitnessTable(byte_21476A2E4, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IneligibleDevicesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A10);
  }

  return result;
}

unint64_t sub_2145FE0F8()
{
  result = qword_27C916A18;
  if (!qword_27C916A18)
  {
    result = swift_getWitnessTable(byte_21476A30C, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.IneligibleDevicesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A18);
  }

  return result;
}

unint64_t sub_2145FE150()
{
  result = qword_27C916A20;
  if (!qword_27C916A20)
  {
    result = swift_getWitnessTable(asc_21476A294, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.InvalidAddressCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A20);
  }

  return result;
}

unint64_t sub_2145FE1A8()
{
  result = qword_27C916A28;
  if (!qword_27C916A28)
  {
    result = swift_getWitnessTable(byte_21476A2BC, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.InvalidAddressCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A28);
  }

  return result;
}

unint64_t sub_2145FE200()
{
  result = qword_27C916A30;
  if (!qword_27C916A30)
  {
    result = swift_getWitnessTable(asc_21476A424, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A30);
  }

  return result;
}

unint64_t sub_2145FE258()
{
  result = qword_27C916A38;
  if (!qword_27C916A38)
  {
    result = swift_getWitnessTable(byte_21476A44C, &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A38);
  }

  return result;
}

unint64_t sub_2145FE2B0()
{
  result = qword_27C916A40;
  if (!qword_27C916A40)
  {
    result = swift_getWitnessTable(byte_21476A18C, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.RequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A40);
  }

  return result;
}

unint64_t sub_2145FE308()
{
  result = qword_27C916A48;
  if (!qword_27C916A48)
  {
    result = swift_getWitnessTable(asc_21476A1B4, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.RequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A48);
  }

  return result;
}

unint64_t sub_2145FE360()
{
  result = qword_27C916A50;
  if (!qword_27C916A50)
  {
    result = swift_getWitnessTable(aE_87, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.ResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A50);
  }

  return result;
}

unint64_t sub_2145FE3B8()
{
  result = qword_27C916A58;
  if (!qword_27C916A58)
  {
    result = swift_getWitnessTable(aU_100, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.ResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A58);
  }

  return result;
}

unint64_t sub_2145FE410()
{
  result = qword_27C916A60;
  if (!qword_27C916A60)
  {
    result = swift_getWitnessTable(byte_21476A1DC, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A60);
  }

  return result;
}

unint64_t sub_2145FE468()
{
  result = qword_27C916A68;
  if (!qword_27C916A68)
  {
    result = swift_getWitnessTable(byte_21476A204, &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A68);
  }

  return result;
}

unint64_t sub_2145FE4C0()
{
  result = qword_27C916A70;
  if (!qword_27C916A70)
  {
    result = swift_getWitnessTable(aM_122, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudInviteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A70);
  }

  return result;
}

unint64_t sub_2145FE518()
{
  result = qword_27C916A78;
  if (!qword_27C916A78)
  {
    result = swift_getWitnessTable(asc_21476A05C, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudInviteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A78);
  }

  return result;
}

unint64_t sub_2145FE570()
{
  result = qword_27C916A80;
  if (!qword_27C916A80)
  {
    result = swift_getWitnessTable(byte_214769FE4, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudInviteResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A80);
  }

  return result;
}

unint64_t sub_2145FE5C8()
{
  result = qword_27C916A88;
  if (!qword_27C916A88)
  {
    result = swift_getWitnessTable(byte_21476A00C, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudInviteResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A88);
  }

  return result;
}

unint64_t sub_2145FE620()
{
  result = qword_27C916A90;
  if (!qword_27C916A90)
  {
    result = swift_getWitnessTable(asc_214769F94, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.WithdrawSecureCloudInviteCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A90);
  }

  return result;
}

unint64_t sub_2145FE678()
{
  result = qword_27C916A98;
  if (!qword_27C916A98)
  {
    result = swift_getWitnessTable(byte_214769FBC, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.WithdrawSecureCloudInviteCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916A98);
  }

  return result;
}

unint64_t sub_2145FE6D0()
{
  result = qword_27C916AA0;
  if (!qword_27C916AA0)
  {
    result = swift_getWitnessTable(asc_214769F44, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudUpgradeRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AA0);
  }

  return result;
}

unint64_t sub_2145FE728()
{
  result = qword_27C916AA8;
  if (!qword_27C916AA8)
  {
    result = swift_getWitnessTable(aM_123, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudUpgradeRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AA8);
  }

  return result;
}

unint64_t sub_2145FE780()
{
  result = qword_27C916AB0;
  if (!qword_27C916AB0)
  {
    result = swift_getWitnessTable(byte_214769EF4, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudUpgradeResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AB0);
  }

  return result;
}

unint64_t sub_2145FE7D8()
{
  result = qword_27C916AB8;
  if (!qword_27C916AB8)
  {
    result = swift_getWitnessTable(byte_214769F1C, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.SecureCloudUpgradeResponseCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AB8);
  }

  return result;
}

unint64_t sub_2145FE830()
{
  result = qword_27C916AC0;
  if (!qword_27C916AC0)
  {
    result = swift_getWitnessTable(byte_214769EA4, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.PingSecureCloudDestinationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AC0);
  }

  return result;
}

unint64_t sub_2145FE888()
{
  result = qword_27C916AC8;
  if (!qword_27C916AC8)
  {
    result = swift_getWitnessTable(asc_214769ECC, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.PingSecureCloudDestinationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AC8);
  }

  return result;
}

unint64_t sub_2145FE8E0()
{
  result = qword_27C916AD0;
  if (!qword_27C916AD0)
  {
    result = swift_getWitnessTable(aM_124, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.AcceptSecureCloudPingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AD0);
  }

  return result;
}

unint64_t sub_2145FE938()
{
  result = qword_27C916AD8;
  if (!qword_27C916AD8)
  {
    result = swift_getWitnessTable(asc_214769E7C, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.AcceptSecureCloudPingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AD8);
  }

  return result;
}

unint64_t sub_2145FE990()
{
  result = qword_27C916AE0;
  if (!qword_27C916AE0)
  {
    result = swift_getWitnessTable(byte_214769E04, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.DeclineSecureCloudPingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AE0);
  }

  return result;
}

unint64_t sub_2145FE9E8()
{
  result = qword_27C916AE8;
  if (!qword_27C916AE8)
  {
    result = swift_getWitnessTable(byte_214769E2C, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.DeclineSecureCloudPingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AE8);
  }

  return result;
}

unint64_t sub_2145FEA40()
{
  result = qword_27C916AF0;
  if (!qword_27C916AF0)
  {
    result = swift_getWitnessTable(byte_21476A084, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AF0);
  }

  return result;
}

unint64_t sub_2145FEA98()
{
  result = qword_27C916AF8;
  if (!qword_27C916AF8)
  {
    result = swift_getWitnessTable(asc_21476A0AC, &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916AF8);
  }

  return result;
}

uint64_t sub_2145FEAEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000214794B00 == a2;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000214794B20 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002147A52E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002147A5300 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002147A5320 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002147A5340 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002147A5360 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002147A5380 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2145FED80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
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

uint64_t sub_2145FEEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479A990 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479A970 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479A9B0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEE00737365726464)
  {

    return 4;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2145FF0C4(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return 1;
  }

  else
  {
    return sub_214041DF4();
  }
}

uint64_t sub_2145FF1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for Untrusted(0, *(a1 + 16), a2, a3);

  return sub_213FB1620(v5, a4);
}

uint64_t sub_2145FF1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6.n128_f64[0] = sub_2145FF878(a1, a2, a3, a4);
  v7 = *(*(*(a2 + 16) - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_2145FF25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for Untrusted(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t sub_2145FF2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Untrusted(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

void (*sub_2145FF334(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v14 = v11;
  v7[5] = v11;
  v15 = type metadata accessor for Untrusted(0, v8, v12, v13);
  sub_213FB1620(v15, v14);
  return sub_2145FF44C;
}

void sub_2145FF44C(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    v12 = sub_2145FF878(v5, v9, v10, v11);
    v13 = *(v8 + 8);
    v13(v5, v7, v12);
    (v13)(v6, v7);
  }

  else
  {
    v14 = sub_2145FF878((*a1)[5], v9, a3, a4);
    (*(v8 + 8))(v6, v7, v14);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_2145FF538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Untrusted(0, v5, a3, a4);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  (*(v9 + 16))(&v16 - v7, a1);
  v12 = type metadata accessor for Validated(0, v5, v10, v11);
  return sub_2145FF2C8(v8, v12, v13, v14);
}

void (*sub_2145FF618(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v9 = v6;
  *a1 = v6;
  *v6 = v2;
  v10 = *(a2 + 16);
  v6[1] = v10;
  v11 = type metadata accessor for Untrusted(0, v10, v7, v8);
  v9[2] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v9[3] = v12;
  v14 = *(v12 + 64);
  if (v5)
  {
    v9[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v15 = malloc(v14);
  }

  v9[5] = v15;
  (*(v13 + 16))();
  return sub_2145FF750;
}

void sub_2145FF750(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v10 = *v4;
    v9 = v4[1];
    (*(v8 + 16))((*a1)[4], v6, v7, a4);
    v13 = type metadata accessor for Untrusted(0, v9, v11, v12);
    (*(*(v13 - 8) + 40))(v10, v5, v13);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v14 = *v4;
    v15 = type metadata accessor for Untrusted(0, v4[1], a3, a4);
    (*(*(v15 - 8) + 40))(v14, v6, v15);
  }

  free(v6);
  free(v5);

  free(v4);
}

double sub_2145FF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 2;
  v5 = *(a2 + 16);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  v6 = type metadata accessor for Untrusted(0, v5, a3, a4);
  sub_21469B914(a1, &v9, v8, v6);

  return result;
}

uint64_t sub_2145FF990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Untrusted(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145FFA00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_2145FFBC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 16) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 16) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 16] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;

      v25(v21, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_2145FFEB8()
{
  v1 = type metadata accessor for MBDChip(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v24 - v5);
  v7 = type metadata accessor for MBDPersistentMenuItem(0);
  sub_2146002B8(v0 + *(v7 + 20), v6);
  v8 = type metadata accessor for MBDPersistentMenuItemContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_214600F9C(v6, v3, type metadata accessor for MBDChip);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E6910;
    *(inited + 32) = 1701869940;
    v21 = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0;
    *(inited + 72) = v21;
    *(inited + 80) = 0x746E65746E6F63;
    *(inited + 88) = 0xE700000000000000;
    v22 = sub_2144DA1CC();
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(inited + 96) = v22;
    v23 = sub_214045690(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v16 = sub_2140418B8(v23);

    sub_214601004(v3, type metadata accessor for MBDChip);
    return v16;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_2146EA710;
    *(v17 + 32) = 1701869940;
    v18 = v17 + 32;
    *(v17 + 72) = MEMORY[0x277D83B88];
    *(v17 + 40) = 0xE400000000000000;
    *(v17 + 48) = -1;
    v16 = sub_2140457C0(v17);
    swift_setDeallocating();
    sub_213FB2DF4(v18, &qword_27C903FE0, &unk_2146EA760);
  }

  else
  {
    v10 = v6[3];
    v27 = v6[2];
    v28 = v10;
    v29 = v6[4];
    v11 = v6[1];
    v25 = *v6;
    v26 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_2146E6910;
    *(v12 + 32) = 1701869940;
    v13 = MEMORY[0x277D83B88];
    *(v12 + 40) = 0xE400000000000000;
    *(v12 + 48) = 1;
    *(v12 + 72) = v13;
    *(v12 + 80) = 0x746E65746E6F63;
    *(v12 + 88) = 0xE700000000000000;
    v24[11] = v27;
    v24[12] = v28;
    v24[13] = v29;
    v24[9] = v25;
    v24[10] = v26;
    v14 = sub_214093C70();
    *(v12 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(v12 + 96) = v14;
    v15 = sub_214045690(v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v16 = sub_2140418B8(v15);

    sub_2142E1100(&v25);
  }

  return v16;
}

uint64_t sub_2146002B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21460032C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E65746E6F63;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E65746E6F63;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_2146003CC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214600448(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2146004B0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214600528(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_214600588(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x746E65746E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2146005C0(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_214600624(uint64_t a1)
{
  v2 = sub_214600F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214600660(uint64_t a1)
{
  v2 = sub_214600F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21460069C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = a2;
  v25 = type metadata accessor for MBDChip(0);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MBDPersistentMenuItemContent(0);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B00, &qword_21476AE80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214600F48();
  v13 = v28;
  sub_2146DAA08();
  if (!v13)
  {
    v28 = v4;
    v14 = v9;
    v15 = v5;
    v16 = v27;
    v35 = 0;
    sub_2142FBDC0();
    sub_2146DA1C8();
    v17 = v7;
    v18 = v30;
    swift_storeEnumTagMultiPayload();
    if (v18)
    {
      if (v18 != 1)
      {
        v35 = 1;
        sub_21409675C();
        sub_2146DA0D8();
        sub_214601004(v17, type metadata accessor for MBDPersistentMenuItemContent);
        (*(v14 + 8))(v11, v8);
        v19 = v26;
        v20 = v33;
        v17[2] = v32;
        v17[3] = v20;
        v17[4] = v34;
        v21 = v31;
        *v17 = v30;
        v17[1] = v21;
        swift_storeEnumTagMultiPayload();
        goto LABEL_8;
      }

      LOBYTE(v30) = 1;
      sub_2140326D4(&qword_27C9129E8, byte_214756600);
      sub_2146DA0D8();
      sub_214601004(v17, type metadata accessor for MBDPersistentMenuItemContent);
      (*(v14 + 8))(v11, v8);
      sub_214600F9C(v28, v17, type metadata accessor for MBDChip);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v14 + 8))(v11, v8);
    }

    v19 = v26;
LABEL_8:
    v22 = *(type metadata accessor for MBDPersistentMenuItem(0) + 20);
    sub_214600F9C(v17, &v16[v22], type metadata accessor for MBDPersistentMenuItemContent);
    (*(v19 + 56))(&v16[v22], 0, 1, v15);
    *v16 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_214600AD0(void *a1)
{
  v2 = v1;
  v29 = type metadata accessor for MBDChip(0);
  MEMORY[0x28223BE20](v29);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B10, qword_21476AE88);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214600F48();
  v15 = v11;
  sub_2146DAA28();
  v16 = v2;
  LOBYTE(v37[0]) = *v2;
  LOBYTE(v32) = 0;
  sub_2142FBEC8();
  v17 = v40;
  sub_2146DA388();
  if (v17)
  {
    return (*(v12 + 8))(v14, v15);
  }

  v40 = v12;
  v19 = v30;
  v20 = type metadata accessor for MBDPersistentMenuItem(0);
  sub_2146002B8(&v16[*(v20 + 20)], v10);
  v21 = type metadata accessor for MBDPersistentMenuItemContent(0);
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) != 1)
  {
    sub_2146002B8(v10, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v23 = v8[1];
        v24 = v8[2];
        v25 = v8[4];
        v38 = v8[3];
        v39 = v25;
        v26 = *v8;
        v27 = *v8;
        v37[1] = v8[1];
        v37[2] = v24;
        v34 = v24;
        v35 = v38;
        v36 = v8[4];
        v37[0] = v26;
        v32 = v27;
        v33 = v23;
        v31 = 1;
        sub_214096834();
        sub_2146DA2A8();
        (*(v40 + 8))(v14, v15);
        sub_2142E1100(v37);
      }

      else
      {
        (*(v40 + 8))(v14, v15);
        sub_214601004(v8, type metadata accessor for MBDPersistentMenuItemContent);
      }

      return sub_213FB2DF4(v10, &qword_27C9082D8, &unk_21476AE70);
    }

    sub_214600F9C(v8, v19, type metadata accessor for MBDChip);
    LOBYTE(v37[0]) = 1;
    sub_2140326D4(&qword_27C912A00, byte_214756630);
    sub_2146DA2A8();
    sub_214601004(v19, type metadata accessor for MBDChip);
  }

  (*(v40 + 8))(v14, v15);
  return sub_213FB2DF4(v10, &qword_27C9082D8, &unk_21476AE70);
}

unint64_t sub_214600F48()
{
  result = qword_27C916B08;
  if (!qword_27C916B08)
  {
    result = swift_getWitnessTable(asc_21476B020, &_s19CodingConfigurationV10CodingKeysON_14, v0, v1);
    atomic_store(result, &qword_27C916B08);
  }

  return result;
}

uint64_t sub_214600F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214601004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214601088()
{
  result = qword_27C916B18;
  if (!qword_27C916B18)
  {
    result = swift_getWitnessTable(byte_21476AFF8, &_s19CodingConfigurationV10CodingKeysON_14, v0, v1);
    atomic_store(result, &qword_27C916B18);
  }

  return result;
}

unint64_t sub_2146010E0()
{
  result = qword_27C916B20;
  if (!qword_27C916B20)
  {
    result = swift_getWitnessTable("q", &_s19CodingConfigurationV10CodingKeysON_14, v0, v1);
    atomic_store(result, &qword_27C916B20);
  }

  return result;
}

unint64_t sub_214601138()
{
  result = qword_27C916B28;
  if (!qword_27C916B28)
  {
    result = swift_getWitnessTable(byte_21476AF58, &_s19CodingConfigurationV10CodingKeysON_14, v0, v1);
    atomic_store(result, &qword_27C916B28);
  }

  return result;
}

uint64_t sub_2146011BC()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_2146011EC(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_214601244@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollaborationClearNotice(0) + 24);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CollaborationClearNotice(uint64_t a1)
{
  result = qword_280B2ECB8;
  if (!qword_280B2ECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21460130C(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationClearNotice(0) + 24);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2146013D0()
{
  v1 = *(v0 + *(type metadata accessor for CollaborationClearNotice(0) + 28));

  return v1;
}

void sub_214601410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CollaborationClearNotice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2146014A0(uint64_t a1)
{
  *(a1 + 8) = sub_214601508(&qword_27C916B30, byte_2146F8920);
  result = sub_214601508(&qword_27C916B38, byte_2146F8948);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214601508(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CollaborationClearNotice(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214601574(uint64_t a1)
{
  result = sub_2146D8B08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_2146015F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v9)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  [v9 writeUint32:*v1 forTag:1];
  v11 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  sub_2140857F4(v1 + v11[5], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &qword_27C904EC8, "</\r");
  }

  else
  {
    sub_21460434C(v4, v8, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
    v12 = sub_2144DC484();
    v13 = sub_214601954(v12);
    v15 = v14;
    v16 = sub_2146D8A38();
    sub_213FB54FC(v13, v15);
    [v10 writeData:v16 forTag:2];

    sub_214603E80(v8, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
  }

  v17 = (v1 + v11[6]);
  if ((v17[1] & 1) == 0)
  {
    [v10 writeUint32:*v17 forTag:3];
  }

  v18 = v1 + v11[7];
  v19 = *(v18 + 3);
  if (v19)
  {
    if (v19 == 1)
    {
      goto LABEL_17;
    }

    v20 = *(v18 + 2);

    v21 = sub_2146D9588();
    sub_213FDC6D0(v20, v19);
    [v10 writeString:v21 forTag:4];
  }

  v22 = v1 + v11[8];
  v23 = *(v22 + 3);
  if (!v23)
  {
    goto LABEL_13;
  }

  if (v23 != 1)
  {
    v24 = *(v22 + 2);

    v25 = sub_2146D9588();
    sub_213FDC6D0(v24, v23);
    [v10 writeString:v25 forTag:5];

LABEL_13:
    v26 = [v10 immutableData];
    if (v26)
    {
      v27 = v26;

      return v27;
    }

    goto LABEL_16;
  }

LABEL_17:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214601954(void *a1)
{
  v36[5] = *MEMORY[0x277D85DE8];
  v32 = a1;
  *&v33 = a1;
  sub_21404B79C();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B50, &qword_21476B170);
  if (swift_dynamicCast())
  {
    sub_213FB77C8(v34, v36);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_2146D8788();
    v34[0] = v33;
    __swift_destroy_boxed_opaque_existential_1(v36);
    goto LABEL_40;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_213FB2DF4(v34, &qword_27C916B58, qword_21476B178);
  v3 = sub_2146D9CC8();
  v4 = sub_2146D9CD8();
  v5 = sub_2146D9CC8();
  v6 = sub_2146D9CD8();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = sub_2146D9CC8();
  v8 = sub_2146D9CD8();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v34[0] = sub_21408F798(v4 - v3);
  *(&v34[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v34[0]);
  v31[2] = &v32;
  v12 = sub_2146432EC(sub_2146043B4, v31);
  v13 = v10;
  v14 = *&v34[0];
  v15 = *(&v34[0] + 1) >> 62;
  if ((*(&v34[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v34[0] + 16);
      v16 = *(*&v34[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v34[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v34[0]), v34[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v34[0]) - LODWORD(v34[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v34[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v34[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          sub_2146D89F8();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v36, 0, 15);
  if (v10 == sub_2146D9CD8())
  {
    goto LABEL_39;
  }

  v21 = sub_2146D9CE8();
  v22 = sub_2146D9CC8();
  v23 = sub_2146D9CD8();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v36 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      *&v33 = v36[0];
      *(&v33 + 6) = *(v36 + 6);
      sub_2146D8A08();
      if (v25 == sub_2146D9CD8())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == sub_2146D9CD8())
    {
      break;
    }

LABEL_32:
    v21 = sub_2146D9CE8();
    v26 = sub_2146D9CC8();
    v27 = sub_2146D9CD8();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  *&v33 = v36[0];
  *(&v33 + 6) = *(v36 + 6);
  sub_2146D8A08();
LABEL_39:

LABEL_40:
  v29 = v34[0];
  sub_21402D9F8(*&v34[0], *(&v34[0] + 1));

  sub_213FB54FC(v29, *(&v29 + 1));
  return v29;
}

uint64_t sub_214601D60(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2145B089C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_21460424C(v3, v4);
    }

    else
    {
      v6 = sub_2146042C8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

unint64_t sub_214601E1C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_2146D86D8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ContainsOnlyCharacterSetValidator(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v21 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = v21;
  sub_2146D8668();
  sub_2146D8658();
  sub_2146D8698();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_21460434C(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ContainsOnlyCharacterSetValidator);
  *(v14 + 16) = sub_214493E44;
  *(v14 + 24) = v16;
  *(v12 + 32) = v14;
  v17 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_214032610;
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  return sub_214042A28(inited, v22);
}

unint64_t sub_2146020FC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
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

uint64_t sub_214602248@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28));
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

__n128 sub_2146022B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28));
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

uint64_t sub_21460232C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32));
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

__n128 sub_214602398(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32));
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

uint64_t sub_214602410()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28);
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

uint64_t sub_2146024A0()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32);
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

uint64_t type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(uint64_t a1)
{
  result = qword_27C916B40;
  if (!qword_27C916B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146025AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 20);

  return sub_2140857F4(v3, a1);
}

uint64_t sub_2146025F0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 20);

  return sub_214086154(a1, v3);
}

uint64_t sub_2146026BC(uint64_t a1)
{
  result = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

void sub_214602740(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28);
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

double sub_2146027DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146028A4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28);
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

void (*sub_2146029F4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28);
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

uint64_t sub_214602AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28));
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

uint64_t sub_214602B50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28);
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

void (*sub_214602BE8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 28);
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

void sub_214602C94(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32);
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

double sub_214602D30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214602DF8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32);
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

void (*sub_214602F48(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32);
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

uint64_t sub_214603034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32));
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

uint64_t sub_2146030A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32);
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

void (*sub_21460313C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0) + 32);
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

void sub_2146031EC(_DWORD *a3@<X8>)
{
  v142 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v131 = (&v120 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = &v120 - v11;
  v13 = objc_allocWithZone(MEMORY[0x277D43170]);
  v14 = sub_2146D8A38();
  v15 = [v13 initWithData_];

  v16 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v17 = *(v16 - 8);
  v129 = *(v17 + 56);
  v130 = v16;
  v128 = v17 + 56;
  v129(v12, 1, 1);
  v18 = [v15 position];
  if (v18 < [v15 length])
  {
    v124 = v8;
    v123 = a3;
    v133 = 0;
    v134 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v126) = 0;
    LODWORD(v127) = 0;
    v132 = 1;
    LODWORD(v125) = 1;
    v21 = v12;
    while (1)
    {
      if ([v15 hasError])
      {
LABEL_63:
        if (v132)
        {
          goto LABEL_64;
        }

        v122 = v20;
        v65 = v12;
        v66 = v124;
        sub_2140857F4(v65, v124);
        v67 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
        v131 = v3;
        v68 = v19;
        v69 = v67;
        v70 = v123;
        sub_2140857F4(v66, v123 + *(v67 + 20));
        sub_214601E1C(&v138);
        v71 = v139;
        v72 = v140;
        v73 = v141;
        sub_2146020FC(v136);
        v74 = v137;
        *v70 = v126;
        v75 = v70 + v69[6];
        *v75 = v127;
        v75[4] = v125 & 1;
        v76 = v70 + v69[7];
        *v76 = v138;
        *(v76 + 2) = v71;
        *(v76 + 3) = v72;
        v76[32] = v73;
        v77 = v70 + v69[8];
        v78 = v136[1];
        *v77 = v136[0];
        *(v77 + 1) = v78;
        v77[32] = v74;
        v80 = *v76;
        v79 = *(v76 + 1);
        v81 = *(v76 + 2);
        v82 = *(v76 + 3);
        v83 = v76[32];
        v125 = v68;
        *&v136[0] = v68;
        *(&v136[0] + 1) = v134;
        LODWORD(v130) = v83;
        v135 = v83;
        *&v138 = 0xD000000000000038;
        *(&v138 + 1) = 0x8000000214790CA0;
        v126 = 0x8000000214790CA0;
        v139 = 0xD00000000000001CLL;
        v140 = 0x800000021478A360;
        v132 = 0x800000021478A360;

        v128 = v82;
        v129 = v81;
        sub_213FDC9D0(v81, v82);
        v127 = v79;
        v84 = v131;
        v131 = v80;
        v85 = (v80)(v136, &v135, &v138);
        if (v84)
        {

          v86 = v128;
          v87 = v129;
          goto LABEL_72;
        }

        v88 = v125;
        if (v85)
        {
          v89 = v77;
          v121 = v21;
          sub_213FDC6D0(v129, v128);
          v90 = v132;

          v91 = *(v76 + 2);
          v92 = *(v76 + 3);

          sub_213FDC6D0(v91, v92);
          v93 = v127;
          *v76 = v131;
          *(v76 + 1) = v93;
          v95 = v133;
          v94 = v134;
          *(v76 + 2) = v88;
          *(v76 + 3) = v94;
          v76[32] = v130;
          v97 = *v89;
          v96 = *(v89 + 1);
          v98 = *(v89 + 2);
          v99 = *(v89 + 3);
          v100 = v89[32];
          *&v136[0] = v122;
          *(&v136[0] + 1) = v95;
          LODWORD(v134) = v100;
          v135 = v100;
          *&v138 = 0xD00000000000003DLL;
          *(&v138 + 1) = 0x8000000214790CE0;
          v139 = 0xD00000000000001CLL;
          v140 = v90;

          v129 = v98;
          v131 = v99;
          sub_213FDC9D0(v98, v99);
          v101 = v96;
          v130 = v97;
          v102 = v97(v136, &v135, &v138);
          v109 = v121;
          if (v102)
          {
            sub_213FDC6D0(v129, v131);

            sub_213FB2DF4(v124, &qword_27C904EC8, "</\r");
            sub_213FB2DF4(v109, &qword_27C904EC8, "</\r");
            v110 = *(v89 + 2);
            v111 = *(v89 + 3);

            sub_213FDC6D0(v110, v111);
            *v89 = v130;
            *(v89 + 1) = v101;
            v112 = v133;
            *(v89 + 2) = v122;
            *(v89 + 3) = v112;
            v89[32] = v134;
            return;
          }

          sub_214031C4C();
          swift_allocError();
          *v113 = 0xD00000000000003DLL;
          v113[1] = 0x8000000214790CE0;
          v114 = v132;
          v113[2] = 0xD00000000000001CLL;
          v113[3] = v114;
          swift_willThrow();

          v115 = v129;
          v116 = v130;
          sub_213FB2DF4(v124, &qword_27C904EC8, "</\r");
          sub_213FB2DF4(v109, &qword_27C904EC8, "</\r");
          v117 = *(v89 + 2);
          v118 = *(v89 + 3);

          sub_213FDC6D0(v117, v118);
          *v89 = v116;
          *(v89 + 1) = v96;
          v119 = v131;
          *(v89 + 2) = v115;
          *(v89 + 3) = v119;
          v89[32] = v134;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          v103 = v126;
          *v104 = 0xD000000000000038;
          v104[1] = v103;
          v105 = v132;
          v104[2] = 0xD00000000000001CLL;
          v104[3] = v105;
          swift_willThrow();

          v86 = v128;
          v87 = v129;
LABEL_72:

          sub_213FB2DF4(v124, &qword_27C904EC8, "</\r");
          sub_213FB2DF4(v21, &qword_27C904EC8, "</\r");
          v106 = *(v76 + 2);
          v107 = *(v76 + 3);

          sub_213FDC6D0(v106, v107);
          v108 = v127;
          *v76 = v131;
          *(v76 + 1) = v108;
          *(v76 + 2) = v87;
          *(v76 + 3) = v86;
          v76[32] = v130;
        }

        sub_214603E80(v123, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        return;
      }

      v23 = v20;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        LOBYTE(v138) = 0;
        v27 = [v15 position] + 1;
        if (v27 >= [v15 position] && (v28 = objc_msgSend(v15, "position") + 1, v28 <= objc_msgSend(v15, "length")))
        {
          v29 = [v15 data];
          [v29 getBytes:&v138 range:{objc_msgSend(v15, "position"), 1}];

          [v15 setPosition:{objc_msgSend(v15, "position") + 1}];
        }

        else
        {
          [v15 _setError];
        }

        v26 |= (v138 & 0x7F) << v24;
        if ((v138 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        if (v25++ >= 9)
        {
          v31 = 0;
          goto LABEL_19;
        }
      }

      if ([v15 hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v26;
      }

LABEL_19:
      if ([v15 hasError])
      {

        sub_2140861C4();
        swift_allocError();
        *v64 = 0;
        swift_willThrow();

        v63 = v21;
        goto LABEL_65;
      }

      v20 = v23;
      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        while (1)
        {
          LOBYTE(v138) = 0;
          v55 = [v15 position] + 1;
          if (v55 >= [v15 position] && (v56 = objc_msgSend(v15, "position") + 1, v56 <= objc_msgSend(v15, "length")))
          {
            v57 = [v15 data];
            [v57 getBytes:&v138 range:{objc_msgSend(v15, "position"), 1}];

            [v15 setPosition:{objc_msgSend(v15, "position") + 1}];
          }

          else
          {
            [v15 _setError];
          }

          v54 |= (v138 & 0x7F) << v52;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v39 = v53++ > 8;
          if (v39)
          {
            LODWORD(v126) = 0;
            v132 = 0;
            goto LABEL_60;
          }
        }

        v58 = [v15 hasError];
        v132 = 0;
        if (v58)
        {
          v59 = 0;
        }

        else
        {
          v59 = v54;
        }

        v60 = &v143;
        goto LABEL_59;
      }

      if (v32 != 2)
      {
        goto LABEL_3;
      }

      v40 = PBReaderReadData();
      if (!v40)
      {
        goto LABEL_4;
      }

      v41 = v40;
      v42 = sub_2146D8A58();
      v44 = v43;

      v45 = v131;
      sub_2144DB5B0(v131);
      v12 = v21;
      if (v3)
      {
        sub_213FB2DF4(v21, &qword_27C904EC8, "</\r");

        sub_213FB54FC(v42, v44);

        return;
      }

      sub_213FB2DF4(v21, &qword_27C904EC8, "</\r");
      sub_213FB54FC(v42, v44);
      (v129)(v45, 0, 1, v130);
      sub_214086218(v45, v21);
      v20 = v23;
LABEL_5:
      v22 = [v15 position];
      if (v22 >= [v15 length])
      {
        goto LABEL_63;
      }
    }

    switch(v32)
    {
      case 5:

        v46 = PBReaderReadString();
        if (v46)
        {
          v47 = v46;
          v20 = sub_2146D95B8();
          v133 = v48;
        }

        else
        {
          v20 = 0;
          v133 = 0;
        }

        break;
      case 4:

        v49 = PBReaderReadString();
        if (v49)
        {
          v50 = v49;
          v19 = sub_2146D95B8();
          v134 = v51;
        }

        else
        {
          v19 = 0;
          v134 = 0;
        }

        break;
      case 3:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          LOBYTE(v138) = 0;
          v36 = [v15 position] + 1;
          if (v36 >= [v15 position] && (v37 = objc_msgSend(v15, "position") + 1, v37 <= objc_msgSend(v15, "length")))
          {
            v38 = [v15 data];
            [v38 getBytes:&v138 range:{objc_msgSend(v15, "position"), 1}];

            [v15 setPosition:{objc_msgSend(v15, "position") + 1}];
          }

          else
          {
            [v15 _setError];
          }

          v35 |= (v138 & 0x7F) << v33;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v39 = v34++ > 8;
          if (v39)
          {
            LODWORD(v127) = 0;
            LODWORD(v125) = 0;
            goto LABEL_60;
          }
        }

        v61 = [v15 hasError];
        LODWORD(v125) = 0;
        if (v61)
        {
          v59 = 0;
        }

        else
        {
          v59 = v35;
        }

        v60 = &v144;
LABEL_59:
        *(v60 - 64) = v59;
LABEL_60:
        v12 = v21;
        v20 = v23;
        goto LABEL_5;
      default:
LABEL_3:
        PBReaderSkipValueWithTag();
        break;
    }

LABEL_4:
    v12 = v21;
    goto LABEL_5;
  }

LABEL_64:

  sub_2140861C4();
  swift_allocError();
  *v62 = 1;
  swift_willThrow();

  v63 = v12;
LABEL_65:
  sub_213FB2DF4(v63, &qword_27C904EC8, "</\r");
}
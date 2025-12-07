uint64_t sub_24576A070(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24576A090(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PassportSceneHelpers.CubicBezier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PassportSceneHelpers.CubicBezier(uint64_t result, int a2, int a3)
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

void *sub_24576A130@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_24576A170(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_24576A1F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_245910A04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24576A264(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24590F4E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_24590F444();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_24590F4B4();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[12]];

  return v15(v16, a2, v14);
}

char *sub_24576A3D0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_24590F4E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_24590F444();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_24590F4B4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_24576A588@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24576A608()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28A50, &qword_2459162A8);
  sub_245778B20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24576A66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28AF8, &unk_245916340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24576A734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28AF8, &unk_245916340);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24576A7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590FA54();
  *a1 = result;
  return result;
}

uint64_t sub_24576A854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24576A8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24576A958()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28C00, &qword_245916528);
  sub_24577BF74();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24576A9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24576AA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24576AA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24576AB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24576AB78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CC8, &unk_245916880);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24576AC0C()
{

  return swift_deallocObject();
}

uint64_t sub_24576AC60()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576ACA8()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_24578FC28(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_24576AD00()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0, &qword_245916B08) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_24590EAF4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24576AE60()
{

  sub_24578FC28(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24576AEA0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576AEF0()
{

  return swift_deallocObject();
}

uint64_t sub_24576AF30()
{

  return swift_deallocObject();
}

uint64_t sub_24576AF68()
{
  v1 = sub_24590C474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24576B024()
{
  v1 = sub_24590C474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24576B0D0()
{
  v1 = sub_24590EEB4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24576B16C()
{

  return swift_deallocObject();
}

uint64_t sub_24576B1AC()
{

  return swift_deallocObject();
}

uint64_t sub_24576B1F4()
{

  return swift_deallocObject();
}

uint64_t sub_24576B240()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576B278()
{

  return swift_deallocObject();
}

uint64_t sub_24576B2C0()
{
  sub_24578FC28(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24576B304()
{

  return swift_deallocObject();
}

uint64_t sub_24576B33C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24576B37C()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576B3C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576B410()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576B448()
{

  return swift_deallocObject();
}

uint64_t sub_24576B484()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576B4C4()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576B4FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576B53C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576B57C()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576B5B8()
{

  return swift_deallocObject();
}

uint64_t sub_24576B5F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24576B62C()
{

  return swift_deallocObject();
}

uint64_t sub_24576B668()
{
  v1 = sub_24590E9D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24576B73C()
{
  v1 = sub_24590E9D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24576B808()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576B850()
{

  return swift_deallocObject();
}

uint64_t sub_24576B88C()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576B8C8()
{
  v1 = (type metadata accessor for IDCornersResult(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v1[7];
  v6 = sub_24590E9D4();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_24576B9D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576BA14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24590E9D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24576BAC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24590E9D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24576BB74()
{

  return swift_deallocObject();
}

uint64_t sub_24576BBB4()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576BBEC()
{

  return swift_deallocObject();
}

uint64_t sub_24576BC3C()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576BC74()
{

  return swift_deallocObject();
}

uint64_t sub_24576BCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LDSSecurityObject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29920, &qword_245918558);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24576BE1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LDSSecurityObject(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29920, &qword_245918558);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24576BF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24590CB34();
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

uint64_t sub_24576C00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24590CB34();
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

uint64_t sub_24576C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24590EC04();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24576C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24590EC04();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24576C1BC()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576C1F4()
{

  return swift_deallocObject();
}

uint64_t sub_24576C23C()
{

  return swift_deallocObject();
}

uint64_t sub_24576C274()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576C2BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576C338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v18[2] = *(v3 + 48);
  v18[3] = v6;
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v18[5] = *(v3 + 96);
  v18[6] = v8;
  v19 = *(v3 + 128);
  v9 = v19;
  v18[4] = v7;
  v18[0] = v4;
  v18[1] = v5;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v12 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v12;
  *a2 = v10;
  *(a2 + 16) = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 96);
  v15 = *(v3 + 112);
  *(a2 + 112) = v9;
  *(a2 + 80) = v14;
  *(a2 + 96) = v15;
  *(a2 + 64) = v13;
  return sub_245778F2C(v18, &v17, &qword_27EE29C10, &unk_2459189E0);
}

uint64_t sub_24576C3EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = (*a1 + 136);
  swift_beginAccess();
  v5 = v4[9];
  v6 = v4[11];
  v26 = v4[10];
  v7 = v26;
  v27 = v6;
  v8 = v4[9];
  v24 = v4[8];
  v9 = v24;
  v25 = v8;
  v31 = *(v3 + 376);
  v10 = v4[13];
  v30 = v4[14];
  v11 = v4[13];
  v12 = v4[11];
  v28 = v4[12];
  v29 = v11;
  v13 = *(v3 + 216);
  v23[4] = *(v3 + 200);
  v23[5] = v13;
  v14 = *(v3 + 248);
  v23[6] = *(v3 + 232);
  v23[7] = v14;
  v15 = *(v3 + 152);
  v23[0] = *(v3 + 136);
  v23[1] = v15;
  v16 = *(v3 + 184);
  v23[2] = *(v3 + 168);
  v23[3] = v16;
  *(a2 + 192) = v28;
  *(a2 + 208) = v10;
  *(a2 + 224) = v4[14];
  *(a2 + 128) = v9;
  *(a2 + 144) = v5;
  *(a2 + 240) = *(v3 + 376);
  *(a2 + 160) = v7;
  *(a2 + 176) = v12;
  v17 = *(v3 + 216);
  *(a2 + 64) = *(v3 + 200);
  *(a2 + 80) = v17;
  v18 = *(v3 + 248);
  *(a2 + 96) = *(v3 + 232);
  *(a2 + 112) = v18;
  v19 = *(v3 + 152);
  *a2 = *(v3 + 136);
  *(a2 + 16) = v19;
  v20 = *(v3 + 184);
  *(a2 + 32) = *(v3 + 168);
  *(a2 + 48) = v20;
  return sub_245778F2C(v23, &v22, &qword_27EE29C18, &qword_24591C690);
}

id sub_24576C508@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 384);
  *a2 = v4;

  return v4;
}

uint64_t sub_24576C564()
{

  return swift_deallocObject();
}

uint64_t sub_24576C59C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576C5EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576C654()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576C690()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576C71C()
{

  return swift_deallocObject();
}

void sub_24576C794(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2457FC8A4(v1);
}

void sub_24576C850(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2457FCB94(v1);
}

uint64_t sub_24576C8E4()
{

  return swift_deallocObject();
}

uint64_t sub_24576C92C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576CA00@<X0>(_BYTE *a1@<X8>)
{
  sub_24580EE50();
  result = sub_24590FB24();
  *a1 = v3;
  return result;
}

uint64_t sub_24576CA9C()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576CB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E30, &qword_2459192A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24576CBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E30, &qword_2459192A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_24576CCA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29E58, &qword_245919310);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29E70, &qword_245919328);
  sub_24580F5D8();
  sub_24580F71C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24576CE04()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576CE3C()
{

  return swift_deallocObject();
}

uint64_t sub_24576CE74()
{

  return swift_deallocObject();
}

uint64_t sub_24576CEAC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576CEF4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576CF3C()
{

  return swift_deallocObject();
}

uint64_t sub_24576CF94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576CFF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576D034()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576D06C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576D0B4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576D104()
{

  return swift_deallocObject();
}

uint64_t sub_24576D14C()
{

  return swift_deallocObject();
}

uint64_t sub_24576D18C()
{

  return swift_deallocObject();
}

uint64_t sub_24576D1C4()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576D1FC()
{

  return swift_deallocObject();
}

uint64_t sub_24576D23C()
{

  return swift_deallocObject();
}

uint64_t sub_24576D274()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576D2B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576D2EC()
{

  return swift_deallocObject();
}

uint64_t sub_24576D328()
{

  return swift_deallocObject();
}

uint64_t sub_24576D360()
{

  return swift_deallocObject();
}

uint64_t sub_24576D398()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576D3F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576D438()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576D470()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576D4A8()
{

  return swift_deallocObject();
}

uint64_t sub_24576D4F0()
{

  return swift_deallocObject();
}

uint64_t sub_24576D530()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576D568()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576D5BC()
{

  return swift_deallocObject();
}

uint64_t sub_24576D5F8()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576D670(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24590FDA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

void *sub_24576D71C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24590FDA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24576D7C0()
{

  if (v0[14])
  {
  }

  if (v0[16])
  {
  }

  if (v0[18])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576D850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v11 = v1;
  v10 = *(v0 + 24);
  v12 = v10;
  v13 = v2;
  v3 = _s8BaseViewVMa(0, &v11);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8, &qword_245919140);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(type metadata accessor for IdentityProofing.ViewStyleFormat(0) + 76);
    v7 = sub_24590FDA4();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = v4 + v3[13];
  if (*(v8 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v3[14], v1);
  (*(*(v10 - 8) + 8))(v4 + v3[15]);
  return swift_deallocObject();
}

uint64_t sub_24576DA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E30, &qword_2459192A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24576DB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E30, &qword_2459192A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_24576DBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E30, &qword_2459192A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24576DCB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29E30, &qword_2459192A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  return result;
}

uint64_t sub_24576DD80(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A448, &qword_24591A880);
  _s14BottomTrayViewVMa(255);
  swift_getTupleTypeMetadata2();
  sub_245910744();
  swift_getWitnessTable();
  sub_2459105E4();
  swift_getWitnessTable();
  sub_24590FD34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A450, &qword_24591A888);
  sub_24590F854();
  swift_getWitnessTable();
  sub_245778BD8(&qword_27EE2A458, &qword_27EE2A450, &qword_24591A888, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A460, &qword_24591A890);
  sub_24590F854();
  sub_24590F854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A468, &qword_24591A898);
  sub_245778BD8(&qword_27EE2A470, &qword_27EE2A468, &qword_24591A898, MEMORY[0x277CDD6E0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_245778BD8(&qword_27EE2A478, &qword_27EE2A460, &qword_24591A890, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_245910744();
  swift_getWitnessTable();
  sub_2459105E4();
  sub_24590F854();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A480, &qword_24591A8A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A488, &qword_24591A8A8);
  sub_24583397C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24576E208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590F9C4();
  *a1 = result;
  return result;
}

uint64_t sub_24576E294@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D750B0]();
  *a1 = result;
  return result;
}

uint64_t sub_24576E348()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576E388()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576E3D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576E420()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A830, &unk_24591AFF0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24576E4B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24576E504(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24576E55C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576E5CC()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576E604()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576E63C()
{

  return swift_deallocObject();
}

uint64_t sub_24576E678()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576E6D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24576E790(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24576E8A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576E8E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576E928()
{
  v1 = sub_24590ED94();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24576EA18()
{

  return swift_deallocObject();
}

uint64_t sub_24576EA50()
{

  return swift_deallocObject();
}

uint64_t sub_24576EAA0()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576EADC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576EB34()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576EB6C()
{

  return swift_deallocObject();
}

uint64_t sub_24576EBAC()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576EBF0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576EC40()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576ECB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24576ED0C()
{

  return swift_deallocObject();
}

uint64_t sub_24576ED5C()
{

  return swift_deallocObject();
}

uint64_t sub_24576EDB4()
{

  return swift_deallocObject();
}

uint64_t sub_24576EE0C()
{

  return swift_deallocObject();
}

uint64_t sub_24576EE54()
{

  return swift_deallocObject();
}

uint64_t sub_24576EE94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576EEE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576EF40()
{

  return swift_deallocObject();
}

uint64_t sub_24576EFAC()
{

  return swift_deallocObject();
}

uint64_t sub_24576F020()
{

  return swift_deallocObject();
}

uint64_t sub_24576F088(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24576F144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24576F1F4()
{
  v1 = (type metadata accessor for IdentityProofingProgressViewConfiguration(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v4 = v1[11];
  v5 = sub_24590E544();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_24576F350()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576F388()
{

  return swift_deallocObject();
}

uint64_t sub_24576F3D0()
{

  return swift_deallocObject();
}

uint64_t sub_24576F410()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576F460()
{

  return swift_deallocObject();
}

uint64_t sub_24576F4A8()
{

  return swift_deallocObject();
}

uint64_t sub_24576F4F0()
{

  return swift_deallocObject();
}

uint64_t sub_24576F528()
{

  return swift_deallocObject();
}

uint64_t sub_24576F564()
{
  v1 = *(type metadata accessor for IdentityProofingLivenessVideoData(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_24590C094();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24576F668()
{

  return swift_deallocObject();
}

uint64_t sub_24576F6E8()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576F728()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576F760()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576F7A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24576F7D8()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576F830()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24576F868()
{

  return swift_deallocObject();
}

uint64_t sub_24576F8A4()
{

  return swift_deallocObject();
}

uint64_t sub_24576F8DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24576F938()
{

  return swift_deallocObject();
}

uint64_t sub_24576F970()
{
  swift_unknownObjectRelease();

  sub_24578FC28(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_24576F9C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576FA40()
{
  swift_unknownObjectRelease();

  sub_24578FC28(*(v0 + 40), *(v0 + 48));
  sub_24578FC28(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_24576FA90()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24576FAC8()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24576FB20()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24576FB80()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24576FBEC()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24576FC60()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24576FCA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24576FCEC()
{
  v1 = sub_24590E814();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24576FD74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24576FDE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24576FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24590F2B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24590E814();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24576FF60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24590F2B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24590E814();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_245770068()
{
  v1 = sub_24590C094();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_245770138()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_245770184()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2457701C4()
{

  return swift_deallocObject();
}

uint64_t sub_2457702B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24590FAB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_245770320()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B658, &qword_24591D570);
  type metadata accessor for MobileDocumentProviderPresentmentContext(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B828, &qword_24591D6A0);
  sub_2458DC4D8();
  sub_2458DCD0C(&qword_27EE2B838, type metadata accessor for MobileDocumentProviderPresentmentContext, &unk_24591D26C);
  sub_245778BD8(&qword_27EE2B840, &qword_27EE2B828, &qword_24591D6A0, MEMORY[0x277CDDA18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24577049C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2457704D4()
{

  return swift_deallocObject();
}

uint64_t sub_24577050C()
{
  v1 = sub_24590E814();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2457705FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2457706B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_245770790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590DCB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2457707BC()
{
  v1 = type metadata accessor for IdentityCredentialProviderSelectionViewPicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70) + 32);
  v5 = sub_24590DCE4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_24577092C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24590DCE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_245770A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24590DCE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_245770B30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA10, &qword_24591DB18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA08, &qword_24591DB10);
  sub_24590FDC4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA00, &qword_24591DB08);
  sub_245778BD8(&qword_27EE2BB28, &qword_27EE2BA00, &qword_24591DB08, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_245770C60()
{
  v1 = (type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_24590DCE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v2 + v1[7];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70) + 32);
  if (!(*(v4 + 48))(v6 + v7, 1, v3))
  {
    v5(v6 + v7, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_245770DC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590FAD4();
  *a1 = result;
  return result;
}

uint64_t sub_245770E74()
{

  return swift_deallocObject();
}

uint64_t sub_245770EBC()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_245770EFC()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_245770F60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_245770FC4()
{

  return swift_deallocObject();
}

uint64_t sub_245771024()
{
  MEMORY[0x245D77C60](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24577105C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2457710C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590F984();
  *a1 = result;
  return result;
}

uint64_t sub_245771124()
{

  return swift_deallocObject();
}

uint64_t sub_24577116C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2457711B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF10, &unk_24591E6C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_245771278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF10, &unk_24591E6C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_2457713C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF10, &unk_24591E6C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_245771478(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF10, &unk_24591E6C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_245771530()
{

  return swift_deallocObject();
}

uint64_t sub_24577156C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2457715AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C240, &qword_24591EDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24577166C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2457716E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590E574();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24577174C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590E574();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2457717BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24590FA34();
  *a1 = result;
  return result;
}

uint64_t sub_245771810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C308, &qword_24591EFA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245771880()
{
  v1 = *(type metadata accessor for IdentityCredentialProviderAuxiliaryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24590E574();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_2457719B0()
{

  return swift_deallocObject();
}

uint64_t sub_2457719F0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_245771A68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_245771AA0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_245771AE8()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_245771B9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_245771BB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_245771BD8()
{
  v0 = sub_2458A1B04();
  sub_2458B4FCC(0);
}

uint64_t sub_245771C34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_245771C44(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24578FC28(result, a2);
  }

  return result;
}

Class __getPKIdentityHeroViewControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKIdentityHeroViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKIdentityHeroViewControllerClass_block_invoke_cold_1();
  }

  getPKIdentityHeroViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PassKitUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PassKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278E87388;
    v3 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PassKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPKIdentityHeroViewConfigurationClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKIdentityHeroViewConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKIdentityHeroViewConfigurationClass_block_invoke_cold_1();
  }

  getPKIdentityHeroViewConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_245774080()
{
  type metadata accessor for BundleToken();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EE32B38 = result;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2457741E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x245D71940](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_245774238(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x245D71950](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_24577435C(uint64_t a1, uint64_t a2)
{
  sub_245911824();
  swift_getWitnessTable();
  sub_24590EBA4();
  return sub_245911864();
}

uint64_t sub_2457743CC(uint64_t a1, id *a2)
{
  result = sub_2459109E4();
  *a2 = 0;
  return result;
}

uint64_t sub_245774444(uint64_t a1, id *a2)
{
  v3 = sub_2459109F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2457744C4@<X0>(uint64_t *a2@<X8>)
{
  sub_245910A04();
  v3 = sub_2459109C4();

  *a2 = v3;
  return result;
}

uint64_t sub_245774508()
{
  v0 = sub_245910A04();
  v1 = MEMORY[0x245D761F0](v0);

  return v1;
}

uint64_t sub_245774544(uint64_t a1)
{
  sub_245910A04();
  sub_245910AF4();
}

uint64_t sub_245774598()
{
  sub_245910A04();
  sub_245911824();
  sub_245910AF4();
  v0 = sub_245911864();

  return v0;
}

void *sub_245774634@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_245774660@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_245774710(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_24590EB94();
}

uint64_t sub_24577478C(uint64_t a1)
{
  v2 = sub_245774CDC(&qword_27EE28928, type metadata accessor for LAError, &unk_245915B48);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2457747F8(uint64_t a1)
{
  v2 = sub_245774CDC(&qword_27EE28928, type metadata accessor for LAError, &unk_245915B48);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_245774864(void *a1, uint64_t a2)
{
  v4 = sub_245774CDC(&qword_27EE28928, type metadata accessor for LAError, &unk_245915B48);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_245774918(uint64_t a1, uint64_t a2)
{
  v4 = sub_245774CDC(&qword_27EE28928, type metadata accessor for LAError, &unk_245915B48);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_245774994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_245911824();
  sub_245910914();
  return sub_245911864();
}

uint64_t sub_2457749F4(void *a1, uint64_t *a2)
{
  v2 = sub_245910A04();
  v4 = v3;
  if (v2 == sub_245910A04() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_245911714();
  }

  return v7 & 1;
}

uint64_t sub_245774A7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2457751CC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_245774ABC(uint64_t a1)
{
  sub_245774CDC(&qword_27EE28978, type metadata accessor for Key, &unk_245915AC8);
  sub_245774CDC(&qword_27EE28980, type metadata accessor for Key, &unk_245915970);

  return sub_245911634();
}

double sub_245774B78@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_245774B84(uint64_t a1)
{
  sub_245774CDC(&qword_27EE28818, type metadata accessor for Weight, &unk_245915298);
  sub_245774CDC(&qword_27EE28820, type metadata accessor for Weight, &unk_245915238);
  sub_245775204();
  return sub_245911634();
}

uint64_t sub_245774CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_245774D24(uint64_t a1)
{
  v2 = sub_245774CDC(&qword_27EE28930, type metadata accessor for LAError, &unk_245915C9C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_245774D90(uint64_t a1)
{
  v2 = sub_245774CDC(&qword_27EE28930, type metadata accessor for LAError, &unk_245915C9C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_245774E00(uint64_t a1)
{
  v2 = sub_245774CDC(&qword_27EE28928, type metadata accessor for LAError, &unk_245915B48);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_245774E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245774CDC(&qword_27EE28928, type metadata accessor for LAError, &unk_245915B48);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_245774EF0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2459109C4();

  *a2 = v3;
  return result;
}

uint64_t sub_245774F38(uint64_t a1)
{
  sub_245774CDC(&qword_27EE28988, type metadata accessor for OpenExternalURLOptionsKey, &unk_245915CE0);
  sub_245774CDC(&qword_27EE28990, type metadata accessor for OpenExternalURLOptionsKey, &unk_2459157D0);

  return sub_245911634();
}

uint64_t sub_245774FFC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x245D76E90](*&v1);
}

uint64_t sub_2457751CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_245775204()
{
  result = qword_27EE28828;
  if (!qword_27EE28828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28828);
  }

  return result;
}

uint64_t sub_245775264(uint64_t a1, int a2)
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

uint64_t sub_245775284(uint64_t result, int a2, int a3)
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

void sub_24577564C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_245775804()
{
  result = qword_27EE28958;
  if (!qword_27EE28958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28958);
  }

  return result;
}

uint64_t sub_24577594C()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2457759BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_245775A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_245775A6C()
{
  v1 = v0;
  v2 = sub_24590F454();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CFF0A8])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_2459114D4();

    v15 = 0xD000000000000016;
    v16 = 0x8000000245923880;
    v14[1] = v8;
    v9 = sub_2459116E4();
    MEMORY[0x245D76160](v9);

    return v15;
  }

  if (v7 == *MEMORY[0x277CFF120])
  {
    v11 = 1701667150;
    return v11 | 0x6D656C4500000000;
  }

  if (v7 == *MEMORY[0x277CFF0B8])
  {
    return 0xD000000000000016;
  }

  if (v7 == *MEMORY[0x277CFF160])
  {
    return 0xD000000000000014;
  }

  if (v7 == *MEMORY[0x277CFF108])
  {
    v12 = 1164273473;
    return v12 | 0x656D656C00000000;
  }

  if (v7 == *MEMORY[0x277CFF110])
  {
    v12 = 1165518163;
    return v12 | 0x656D656C00000000;
  }

  if (v7 == *MEMORY[0x277CFF130] || v7 == *MEMORY[0x277CFF138])
  {
    return 0xD000000000000011;
  }

  if (v7 == *MEMORY[0x277CFF150])
  {
    return 0xD000000000000013;
  }

  if (v7 == *MEMORY[0x277CFF168])
  {
    return 0xD000000000000014;
  }

  if (v7 == *MEMORY[0x277CFF140])
  {
    return 0xD000000000000012;
  }

  if (v7 == *MEMORY[0x277CFF118])
  {
    v11 = 2037672259;
    return v11 | 0x6D656C4500000000;
  }

  v13 = v7;
  result = 0xD000000000000012;
  if (v13 == *MEMORY[0x277CFF128])
  {
    return 0xD000000000000010;
  }

  if (v13 == *MEMORY[0x277CFF0B0])
  {
    return 0xD000000000000015;
  }

  if (v13 != *MEMORY[0x277CFF148])
  {
    if (v13 == *MEMORY[0x277CFF0C8])
    {
      return 0xD000000000000019;
    }

    if (v13 == *MEMORY[0x277CFF0E0])
    {
      return 0xD00000000000001BLL;
    }

    if (v13 == *MEMORY[0x277CFF0F0])
    {
      return 0xD00000000000001CLL;
    }

    if (v13 == *MEMORY[0x277CFF0D0])
    {
      return 0xD000000000000015;
    }

    if (v13 == *MEMORY[0x277CFF100])
    {
      return 0xD000000000000026;
    }

    else if (v13 == *MEMORY[0x277CFF158])
    {
      return 0xD000000000000013;
    }

    else
    {
      if (v13 == *MEMORY[0x277CFF0F8])
      {
        return 0xD00000000000001CLL;
      }

      if (v13 == *MEMORY[0x277CFF0D8] || v13 == *MEMORY[0x277CFF0E8])
      {
        return 0xD00000000000001BLL;
      }

      if (v13 == *MEMORY[0x277CFF0C0])
      {
        return 0xD000000000000018;
      }

      else
      {
        (*(v3 + 8))(v6, v2);
        return 0xD000000000000012;
      }
    }
  }

  return result;
}

uint64_t sub_24577602C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t type metadata accessor for DigitalPresentmentRootViewModel(uint64_t a1)
{
  result = qword_27EE289A0;
  if (!qword_27EE289A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2457760AC(uint64_t a1)
{
  sub_2457761D8(319, &qword_27EE289B0, &type metadata for DigitalPresentmentIdentityElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24590F4E4();
    if (v2 <= 0x3F)
    {
      sub_24590F444();
      if (v3 <= 0x3F)
      {
        sub_2457761D8(319, &qword_27EE289B8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24590F4B4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2457761D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24577624C()
{
  result = qword_27EE289C0;
  if (!qword_27EE289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE289C0);
  }

  return result;
}

uint64_t sub_2457762A0()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x53746E65736E6F63;
  }
}

uint64_t sub_2457762E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53746E65736E6F63 && a2 == 0xEC00000074656568;
  if (v6 || (sub_245911714() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000245923AD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_245911714();

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

uint64_t sub_2457763E8(uint64_t a1)
{
  v2 = sub_245777C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245776424(uint64_t a1)
{
  v2 = sub_245777C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245776460(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE289F8, &qword_245915F40);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A00, &qword_245915F48);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A08, &qword_245915F50);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245777C9C();
  sub_245911884();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_245777D3C();
    sub_2459116B4();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_245777D90();
    sub_2459116B4();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_245776728(uint64_t a1)
{
  v2 = sub_245777D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245776764(uint64_t a1)
{
  v2 = sub_245777D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2457767A0(uint64_t a1)
{
  v2 = sub_245777D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2457767DC(uint64_t a1)
{
  v2 = sub_245777D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245776818@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2457777D4(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_245776864()
{
  v1 = *v0;
  sub_245911824();
  MEMORY[0x245D76E70](v1);
  return sub_245911864();
}

uint64_t sub_2457768AC()
{
  v1 = *v0;
  sub_245911824();
  MEMORY[0x245D76E70](v1);
  return sub_245911864();
}

uint64_t sub_2457768F0(char a1)
{
  v3 = sub_24590C234();
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590BFB4();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2459109B4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24590BFC4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_24590F4B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = (v1[2] + 16);
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_8;
    }

    if (*v17 || *(*v1 + 16))
    {
      return 0;
    }

    v18 = v1 + 1;
  }

  else
  {
    v19 = *v17;
    v18 = v1;
    if (v19)
    {
      return 0;
    }
  }

  v17 = (*v18 + 16);
LABEL_8:
  if (*v17)
  {
    v20 = type metadata accessor for DigitalPresentmentRootViewModel(0);
    v21 = v20;
    if (*(v1 + v20[11]))
    {
      v22 = (v1 + v20[10]);
      result = *v22;
      v24 = v22[1];
      if (!v24)
      {
        return result;
      }

      v25 = *v22;
      (*(v11 + 16))(v13, v1 + v21[12], v10);
      v26 = (*(v11 + 88))(v13, v10);
      if (v26 == *MEMORY[0x277CFF170] || v26 == *MEMORY[0x277CFF178])
      {
        sub_24590A70C(v25, v24);
        return sub_245910A64();
      }

      if (v26 == *MEMORY[0x277CFF180])
      {
        sub_24590A474(v25, v24);
        return sub_245910A64();
      }

      (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 16))(v16, v1 + v20[12], v10);
      v27 = (*(v11 + 88))(v16, v10);
      if (v27 == *MEMORY[0x277CFF170] || v27 == *MEMORY[0x277CFF178] || v27 == *MEMORY[0x277CFF180])
      {
        sub_245910944();
        if (qword_27EE28728 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v5, qword_27EE2C438);
        (*(v30 + 16))(v7, v28, v5);
        sub_24590C224();
        sub_24590BFE4();
        return sub_245910A64();
      }

      (*(v11 + 8))(v16, v10);
    }
  }

  return 0;
}

uint64_t sub_245776DD4(char a1)
{
  v3 = sub_24590F4E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24590C234();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24590BFB4();
  v26[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2459109B4();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_24590BFC4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  if (!a1)
  {
    v16 = (v1 + *(v13 + 36));
    v17 = v16[1];
    if (v17)
    {
      sub_24590A99C(*v16, v17);
      return sub_245910A64();
    }

LABEL_13:
    sub_245910944();
    if (qword_27EE28728 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v8, qword_27EE2C438);
    (*(v26[0] + 16))(v10, v25, v8);
    sub_24590C224();
    sub_24590BFE4();
    return sub_245910A64();
  }

  if (a1 == 1)
  {
    v14 = (v1 + *(v13 + 36));
    v15 = v14[1];
    if (v15)
    {
      sub_24590AC34(*v14, v15);
      return sub_245910A64();
    }

    goto LABEL_13;
  }

  v18 = v13;
  (*(v4 + 16))(v6, v1 + *(v13 + 28), v3);
  v19 = (*(v4 + 88))(v6, v3);
  if (v19 == *MEMORY[0x277CFF190])
  {
    (*(v4 + 96))(v6, v3);
    v20 = (v1 + *(v18 + 36));
    result = *v20;
    v22 = v20[1];
    if (v22)
    {
      sub_24590B160(*v6, result, v22);
      return sub_245910A64();
    }
  }

  else
  {
    if (v19 == *MEMORY[0x277CFF188])
    {
      v23 = (v1 + *(v18 + 36));
      v24 = v23[1];
      if (v24)
      {
        sub_24590AECC(*v23, v24);
        return sub_245910A64();
      }

      goto LABEL_13;
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  return result;
}

uint64_t sub_245777224(unsigned __int8 a1)
{
  v3 = sub_24590F4E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24590C234();
  MEMORY[0x28223BE20](v7 - 8);
  v26 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590BFB4();
  v24[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v25 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2459109B4();
  MEMORY[0x28223BE20](v11 - 8);
  v24[1] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24590BFC4();
  MEMORY[0x28223BE20](v13 - 8);
  v27 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590F4B4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  (*(v16 + 16))(v18, v1 + *(v19 + 48), v15);
  v20 = (*(v16 + 88))(v18, v15);
  if (v20 != *MEMORY[0x277CFF170] && v20 != *MEMORY[0x277CFF178])
  {
    if (v20 == *MEMORY[0x277CFF180])
    {
      goto LABEL_4;
    }

    (*(v16 + 8))(v18, v15);
    return 0;
  }

  if (a1 <= 1u)
  {
LABEL_4:
    sub_245910944();
    if (qword_27EE28728 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v9, qword_27EE2C438);
    (*(v24[0] + 16))(v25, v23, v9);
    sub_24590C224();
    sub_24590BFE4();
    return sub_245910A64();
  }

  (*(v4 + 16))(v6, v1 + *(v19 + 28), v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 != *MEMORY[0x277CFF190])
  {
    if (v21 != *MEMORY[0x277CFF188])
    {
      (*(v4 + 8))(v6, v3);
      return 0;
    }

    goto LABEL_4;
  }

  (*(v4 + 96))(v6, v3);
  sub_24590B41C(*v6);
  return sub_245910A64();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2457777A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2457777D4(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE289C8, &qword_245915F20);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE289D0, &qword_245915F28);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE289D8, &unk_245915F30);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245777C9C();
  v10 = v26;
  sub_245911874();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_2459116A4();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_245911524();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD50, &qword_24591DF70);
    *v18 = &type metadata for DigitalPresentmentRootViewModel.PresentationStyle;
    sub_245911674();
    sub_245911514();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_245777D3C();
    sub_245911664();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_245777D90();
    sub_245911664();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v27;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_245777C9C()
{
  result = qword_27EE289E0;
  if (!qword_27EE289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE289E0);
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

unint64_t sub_245777D3C()
{
  result = qword_27EE289E8;
  if (!qword_27EE289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE289E8);
  }

  return result;
}

unint64_t sub_245777D90()
{
  result = qword_27EE289F0;
  if (!qword_27EE289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE289F0);
  }

  return result;
}

uint64_t _s15PassportVariantOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15PassportVariantOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245777F58()
{
  result = qword_27EE28A10;
  if (!qword_27EE28A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A10);
  }

  return result;
}

unint64_t sub_245777FB0()
{
  result = qword_27EE28A18;
  if (!qword_27EE28A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A18);
  }

  return result;
}

unint64_t sub_245778008()
{
  result = qword_27EE28A20;
  if (!qword_27EE28A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A20);
  }

  return result;
}

unint64_t sub_245778060()
{
  result = qword_27EE28A28;
  if (!qword_27EE28A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A28);
  }

  return result;
}

unint64_t sub_2457780B8()
{
  result = qword_27EE28A30;
  if (!qword_27EE28A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A30);
  }

  return result;
}

unint64_t sub_245778110()
{
  result = qword_27EE28A38;
  if (!qword_27EE28A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A38);
  }

  return result;
}

unint64_t sub_245778168()
{
  result = qword_27EE28A40;
  if (!qword_27EE28A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A40);
  }

  return result;
}

uint64_t sub_245778210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = sub_24590FE84();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A48, &qword_2459162A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A50, &qword_2459162A8);
  MEMORY[0x28223BE20](v17);
  v9 = &v17 - v8;
  v10 = sub_24590FBC4();
  v11 = sub_24590FB54();
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = 0;
  v7[24] = 1;
  *(v7 + 4) = 0x4018000000000000;
  v7[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A58, &unk_2459162B0);
  *&v21 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A60, &unk_245916480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A68, &qword_2459162C0);
  sub_245778BD8(&qword_27EE28A70, &qword_27EE28A60, &unk_245916480, MEMORY[0x277D83980]);
  sub_245778BD8(&qword_27EE28A78, &qword_27EE28A68, &qword_2459162C0, MEMORY[0x277CDF0A0]);
  sub_245778A5C();
  sub_245910674();
  sub_2459106E4();
  sub_24590F904();
  sub_245778AB0(v7, v9);
  v12 = &v9[*(v17 + 36)];
  v13 = v26;
  *(v12 + 4) = v25;
  *(v12 + 5) = v13;
  *(v12 + 6) = v27;
  v14 = v22;
  *v12 = v21;
  *(v12 + 1) = v14;
  v15 = v24;
  *(v12 + 2) = v23;
  *(v12 + 3) = v15;
  sub_24590FE74();
  sub_245778B20();
  sub_245910334();
  (*(v18 + 8))(v4, v20);
  return sub_245778F94(v9, &qword_27EE28A50, &qword_2459162A8);
}

uint64_t sub_24577857C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = a1[2];
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A68, &qword_2459162C0);
  return sub_2457785E4(v6, a2 + *(v4 + 36));
}

uint64_t sub_2457785E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A98, &qword_2459162C8);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28AA0, &qword_2459162D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v32 - v13);

  v15 = sub_2459104C4();
  v16 = (v14 + *(v9 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28AA8, &qword_2459162D8) + 28);
  v18 = *MEMORY[0x277CE1058];
  v19 = sub_245910524();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v14 = v15;
  v20 = a1[1];
  *&v37[0] = *a1;
  *(&v37[0] + 1) = v20;
  sub_245778CE8();

  v21 = sub_2459101A4();
  v23 = v22;
  LOBYTE(v17) = v24;
  v26 = v25;
  sub_2459106F4();
  sub_24590F904();
  *&v38[54] = v43;
  *&v38[70] = v44;
  *&v38[86] = v45;
  *&v38[102] = v46;
  *&v38[6] = v40;
  *&v38[22] = v41;
  LOBYTE(v17) = v17 & 1;
  v39 = v17;
  *&v38[38] = v42;
  v27 = sub_24590FBD4();
  *(&v36[4] + 2) = *&v38[64];
  *(&v36[5] + 2) = *&v38[80];
  *(&v36[6] + 2) = *&v38[96];
  *(v36 + 2) = *v38;
  *(&v36[1] + 2) = *&v38[16];
  *(&v36[2] + 2) = *&v38[32];
  *&v34 = v21;
  *(&v34 + 1) = v23;
  LOBYTE(v35) = v17;
  *(&v35 + 1) = v26;
  LOWORD(v36[0]) = 256;
  *(&v36[3] + 2) = *&v38[48];
  *&v36[7] = *&v38[110];
  *(&v36[7] + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28AB8, &unk_245916310);
  sub_245778D3C();
  sub_245910274();
  v37[6] = v36[4];
  v37[7] = v36[5];
  v37[8] = v36[6];
  v37[9] = v36[7];
  v37[2] = v36[0];
  v37[3] = v36[1];
  v37[4] = v36[2];
  v37[5] = v36[3];
  v37[0] = v34;
  v37[1] = v35;
  sub_245778F94(v37, &qword_27EE28AB8, &unk_245916310);
  sub_245778F2C(v14, v11, &qword_27EE28AA0, &qword_2459162D0);
  v28 = v32;
  sub_245778F2C(v7, v32, &qword_27EE28A98, &qword_2459162C8);
  v29 = v33;
  sub_245778F2C(v11, v33, &qword_27EE28AA0, &qword_2459162D0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28AF0, &qword_245916328);
  sub_245778F2C(v28, v29 + *(v30 + 48), &qword_27EE28A98, &qword_2459162C8);
  sub_245778F94(v7, &qword_27EE28A98, &qword_2459162C8);
  sub_245778F94(v14, &qword_27EE28AA0, &qword_2459162D0);
  sub_245778F94(v28, &qword_27EE28A98, &qword_2459162C8);
  return sub_245778F94(v11, &qword_27EE28AA0, &qword_2459162D0);
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

unint64_t sub_245778A5C()
{
  result = qword_27EE28A80;
  if (!qword_27EE28A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A80);
  }

  return result;
}

uint64_t sub_245778AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A48, &qword_2459162A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_245778B20()
{
  result = qword_27EE28A88;
  if (!qword_27EE28A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28A50, &qword_2459162A8);
    sub_245778BD8(&qword_27EE28A90, &qword_27EE28A48, &qword_2459162A0, MEMORY[0x277CDE590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28A88);
  }

  return result;
}

uint64_t sub_245778BD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_245778C20(uint64_t a1)
{
  v2 = sub_245910524();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24590F944();
}

unint64_t sub_245778CE8()
{
  result = qword_27EE28AB0;
  if (!qword_27EE28AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28AB0);
  }

  return result;
}

unint64_t sub_245778D3C()
{
  result = qword_27EE28AC0;
  if (!qword_27EE28AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28AB8, &unk_245916310);
    sub_245778DC8();
    sub_245778ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28AC0);
  }

  return result;
}

unint64_t sub_245778DC8()
{
  result = qword_27EE28AC8;
  if (!qword_27EE28AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28AD0, &unk_245916460);
    sub_245778E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28AC8);
  }

  return result;
}

unint64_t sub_245778E54()
{
  result = qword_27EE28AD8;
  if (!qword_27EE28AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28AE0, &qword_245916320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28AD8);
  }

  return result;
}

unint64_t sub_245778ED8()
{
  result = qword_27EE28AE8;
  if (!qword_27EE28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28AE8);
  }

  return result;
}

uint64_t sub_245778F2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_245778F94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for DigitalPresentmentIdentityElementSetView(uint64_t a1)
{
  result = qword_27EE28B00;
  if (!qword_27EE28B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245779068(uint64_t a1)
{
  sub_245779164(319);
  if (v1 <= 0x3F)
  {
    sub_2457791BC(319, &qword_27EE289B8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2457791BC(319, &qword_27EE289B0, &type metadata for DigitalPresentmentIdentityElement, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_245779164(uint64_t a1)
{
  if (!qword_27EE28B10)
  {
    sub_24590F774();
    v1 = sub_24590F5C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE28B10);
    }
  }
}

void sub_2457791BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_245779228@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_24590FE84();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B18, &qword_2459163D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B20, &qword_2459163D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  *v7 = sub_24590FBD4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B28, &qword_2459163E0);
  sub_2457794CC(v1, &v7[*(v12 + 44)]);
  sub_24590FE74();
  v13 = sub_245778BD8(&qword_27EE28B30, &qword_27EE28B18, &qword_2459163D0, MEMORY[0x277CE1198]);
  sub_245910334();
  (*(v16 + 8))(v4, v17);
  sub_245778F94(v7, &qword_27EE28B18, &qword_2459163D0);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  sub_245910274();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2457794CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B38, &qword_2459163E8);
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x28223BE20](v3);
  v101 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B40, &qword_2459163F0);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B48, &qword_2459163F8);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B50, &qword_245916400);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B58, &qword_245916408);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v95 - v20;
  v22 = type metadata accessor for DigitalPresentmentIdentityElementSetView(0);
  v23 = (a1 + v22[5]);
  v24 = v23[1];
  v108 = v21;
  v105 = v22;
  if (v24)
  {
    v97 = v11;
    *&v118 = *v23;
    *(&v118 + 1) = v24;
    sub_245778CE8();

    v25 = sub_2459101A4();
    v95 = v26;
    v96 = v25;
    v28 = v27;
    v30 = v29;
    sub_2459106F4();
    sub_24590F904();
    *&v110[38] = v137;
    *&v110[22] = v136;
    *&v110[102] = v141;
    *&v110[86] = v140;
    *&v110[70] = v139;
    *&v110[54] = v138;
    v31 = v22;
    v32 = v28 & 1;
    LOBYTE(v142[0]) = v28 & 1;
    *&v110[6] = v135;
    LOBYTE(v31) = *(a1 + v31[9]);
    v98 = a1;
    if (v31)
    {
      sub_245910024();
      sub_245910094();
    }

    else
    {
      sub_245910014();
      sub_245910084();
    }

    v33 = sub_2459100D4();

    KeyPath = swift_getKeyPath();
    *(&v114[4] + 2) = *&v110[64];
    *(&v114[5] + 2) = *&v110[80];
    *(&v114[6] + 2) = *&v110[96];
    *(v114 + 2) = *v110;
    *(&v114[1] + 2) = *&v110[16];
    *(&v114[2] + 2) = *&v110[32];
    *&v112 = v96;
    *(&v112 + 1) = v95;
    LOBYTE(v113) = v32;
    *(&v113 + 1) = v30;
    LOWORD(v114[0]) = 256;
    *(&v114[3] + 2) = *&v110[48];
    *&v114[7] = *&v110[110];
    *(&v114[7] + 1) = KeyPath;
    *&v114[8] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B88, &qword_245916458);
    sub_24577AB0C();
    v35 = v100;
    sub_245910274();
    v120[6] = v114[6];
    v120[7] = v114[7];
    *&v120[8] = *&v114[8];
    v120[2] = v114[2];
    v120[3] = v114[3];
    v120[4] = v114[4];
    v120[5] = v114[5];
    v118 = v112;
    v119 = v113;
    v120[0] = v114[0];
    v120[1] = v114[1];
    sub_245778F94(&v118, &qword_27EE28B88, &qword_245916458);
    LOBYTE(v33) = sub_24590FFD4();
    sub_24590F594();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_24577ABC4(v35, v14, &qword_27EE28B48, &qword_2459163F8);
    v44 = v97;
    v45 = &v14[*(v97 + 36)];
    *v45 = v33;
    *(v45 + 1) = v37;
    *(v45 + 2) = v39;
    *(v45 + 3) = v41;
    *(v45 + 4) = v43;
    v45[40] = 0;
    v46 = v14;
    v47 = v99;
    sub_24577ABC4(v46, v99, &qword_27EE28B50, &qword_245916400);
    v48 = v47;
    v49 = v108;
    sub_24577ABC4(v48, v108, &qword_27EE28B50, &qword_245916400);
    (*(v12 + 56))(v49, 0, 1, v44);
    a1 = v98;
    v22 = v105;
  }

  else
  {
    (*(v12 + 56))(v21, 1, 1, v11);
  }

  v50 = (a1 + v22[6]);
  v51 = v50[1];
  if (v51)
  {
    *&v118 = *v50;
    *(&v118 + 1) = v51;
    sub_245778CE8();

    v52 = sub_2459101A4();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_2459106F4();
    sub_24590F904();
    *&v111[38] = v142[2];
    *&v111[22] = v142[1];
    *&v111[102] = v142[6];
    *&v111[86] = v142[5];
    *&v111[70] = v142[4];
    *&v111[54] = v142[3];
    v59 = v56 & 1;
    v134 = v56 & 1;
    *&v111[6] = v142[0];
    if (*(a1 + v22[9]))
    {
      v60 = a1;
      v61 = sub_245910024();
    }

    else
    {
      v60 = a1;
      v61 = sub_2459100F4();
    }

    v62 = v61;
    v63 = swift_getKeyPath();
    v64 = sub_24590FE34();
    *(&v114[4] + 2) = *&v111[64];
    *(&v114[5] + 2) = *&v111[80];
    *(&v114[6] + 2) = *&v111[96];
    *(v114 + 2) = *v111;
    *(&v114[1] + 2) = *&v111[16];
    *(&v114[2] + 2) = *&v111[32];
    *&v112 = v52;
    *(&v112 + 1) = v54;
    LOBYTE(v113) = v59;
    *(&v113 + 1) = v58;
    LOWORD(v114[0]) = 256;
    *(&v114[3] + 2) = *&v111[48];
    *&v114[7] = *&v111[110];
    *(&v114[7] + 1) = v63;
    *&v114[8] = v62;
    DWORD2(v114[8]) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B70, &qword_245916450);
    sub_24577AA54();
    v65 = v101;
    sub_245910274();
    v120[6] = v114[6];
    v120[7] = v114[7];
    *(&v120[7] + 12) = *(&v114[7] + 12);
    v120[2] = v114[2];
    v120[3] = v114[3];
    v120[4] = v114[4];
    v120[5] = v114[5];
    v118 = v112;
    v119 = v113;
    v120[0] = v114[0];
    v120[1] = v114[1];
    sub_245778F94(&v118, &qword_27EE28B70, &qword_245916450);
    v66 = v109;
    sub_24577ABC4(v65, v109, &qword_27EE28B38, &qword_2459163E8);
    (*(v102 + 56))(v66, 0, 1, v103);
    a1 = v60;
    v22 = v105;
  }

  else
  {
    (*(v102 + 56))(v109, 1, 1, v103);
  }

  v103 = sub_24590FB64();
  sub_245779FE4(&v118);
  v101 = *(&v118 + 1);
  v102 = v118;
  sub_2459106E4();
  sub_24590F904();
  v133 = 1;
  LODWORD(v100) = sub_24590FFC4();
  sub_24590F594();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v134 = 0;
  if (*(a1 + v22[9]))
  {
    v75 = sub_245910014();
  }

  else
  {
    v75 = sub_245910104();
  }

  v99 = v75;
  v105 = swift_getKeyPath();
  v76 = v106;
  sub_245778F2C(v108, v106, &qword_27EE28B58, &qword_245916408);
  v77 = v107;
  sub_245778F2C(v109, v107, &qword_27EE28B40, &qword_2459163F0);
  v78 = v76;
  v79 = v104;
  sub_245778F2C(v78, v104, &qword_27EE28B58, &qword_245916408);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28B60, &qword_245916440);
  sub_245778F2C(v77, v79 + *(v80 + 48), &qword_27EE28B40, &qword_2459163F0);
  v81 = *(v80 + 64);
  *(&v114[3] + 8) = v129;
  *(&v114[4] + 8) = v130;
  *(&v114[5] + 8) = v131;
  *(&v114[6] + 8) = v132;
  *(&v114[1] + 8) = v127;
  v82 = v79 + v81;
  v84 = v102;
  v83 = v103;
  v112 = v103;
  LOBYTE(v113) = 1;
  v85 = v101;
  *(&v113 + 1) = v102;
  *&v114[0] = v101;
  *(&v114[2] + 8) = v128;
  *(v114 + 8) = v126;
  v86 = v100;
  BYTE8(v114[7]) = v100;
  *&v114[8] = v68;
  *(&v114[8] + 1) = v70;
  *&v115 = v72;
  *(&v115 + 1) = v74;
  LOBYTE(v116) = 0;
  v87 = v99;
  *(&v116 + 1) = v105;
  v117 = v99;
  *(v82 + 208) = v99;
  v88 = v114[3];
  *(v82 + 64) = v114[2];
  *(v82 + 80) = v88;
  v89 = v114[1];
  *(v82 + 32) = v114[0];
  *(v82 + 48) = v89;
  v90 = v114[5];
  *(v82 + 96) = v114[4];
  *(v82 + 112) = v90;
  v91 = v113;
  *v82 = v112;
  *(v82 + 16) = v91;
  v92 = v116;
  *(v82 + 176) = v115;
  *(v82 + 192) = v92;
  v93 = v114[8];
  *(v82 + 144) = v114[7];
  *(v82 + 160) = v93;
  *(v82 + 128) = v114[6];
  sub_245778F2C(&v112, &v118, &qword_27EE28B68, &qword_245916448);
  sub_245778F94(v109, &qword_27EE28B40, &qword_2459163F0);
  sub_245778F94(v108, &qword_27EE28B58, &qword_245916408);
  *(&v120[3] + 8) = v129;
  *(&v120[4] + 8) = v130;
  *(&v120[5] + 8) = v131;
  *(&v120[6] + 8) = v132;
  *(v120 + 8) = v126;
  *(&v120[1] + 8) = v127;
  v118 = v83;
  LOBYTE(v119) = 1;
  *(&v119 + 1) = v84;
  *&v120[0] = v85;
  *(&v120[2] + 8) = v128;
  BYTE8(v120[7]) = v86;
  *&v120[8] = v68;
  *(&v120[8] + 1) = v70;
  v121 = v72;
  v122 = v74;
  v123 = 0;
  v124 = v105;
  v125 = v87;
  sub_245778F94(&v118, &qword_27EE28B68, &qword_245916448);
  sub_245778F94(v107, &qword_27EE28B40, &qword_2459163F0);
  return sub_245778F94(v106, &qword_27EE28B58, &qword_245916408);
}

uint64_t sub_245779FE4@<X0>(void *a1@<X8>)
{
  sub_24577A0CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28A60, &unk_245916480);
  sub_245778BD8(&qword_27EE28BB0, &qword_27EE28A60, &unk_245916480, MEMORY[0x277D83988]);
  sub_245910EE4();

  sub_245910EE4();

  *a1 = v3;
  a1[1] = v3;
  return result;
}

char *sub_24577A0CC()
{
  v1 = sub_24590F774();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  sub_24577A7FC(&qword_27EE28BB8, &qword_245916580, MEMORY[0x277CDFA28], &v16 - v6);
  (*(v2 + 104))(v4, *MEMORY[0x277CDFA00], v1);
  v8 = sub_24590F764();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    v10 = type metadata accessor for DigitalPresentmentIdentityElementSetView(0);
    if (*(v0 + *(v10 + 32)) == 1)
    {
      v11 = *(v0 + *(v10 + 28));
      v12 = *(v11 + 16);
      v13 = ceil(vcvtd_n_f64_u64(v12, 1uLL));
      if (v13 == INFINITY)
      {
        __break(1u);
      }

      else if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v0 = v13;
          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v12 >= v0)
            {
              if (v12 == v0)
              {

                v4 = v11;
              }

              else
              {
                sub_2458276E8(v11, v11 + 32, 0, (2 * v0) | 1);
                v4 = v14;
                v12 = *(v11 + 16);
              }

              if (v12 >= v0)
              {
                if (!v0)
                {

                  return v4;
                }

LABEL_22:
                sub_2458276E8(v11, v11 + 32, v0, (2 * v12) | 1);
                return v4;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  v4 = *(v0 + *(type metadata accessor for DigitalPresentmentIdentityElementSetView(0) + 28));

  return v4;
}

uint64_t sub_24577A354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24590FB14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8, &qword_245919140);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_245778F2C(v2, &v13 - v9, &qword_27EE28BC8, &qword_245919140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24577AC2C(v10, a1);
  }

  sub_245910F74();
  v12 = sub_24590FF74();
  sub_24590F314();

  sub_24590FB04();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24577A524@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24590FB14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245778F2C(v2, v10, &qword_27EE28BE8, &qword_2459164A8);
  if (v11 == 1)
  {
    return sub_245771B9C(v10, a1);
  }

  sub_245910F74();
  v9 = sub_24590FF74();
  sub_24590F314();

  sub_24590FB04();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24577A694(uint64_t a1, char a2)
{
  v4 = sub_24590FB14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_245910F74();
    v8 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_24577A7FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_24590FB14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_245778F2C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_245910F74();
    v19 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24577A9FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590FA54();
  *a1 = result;
  return result;
}

unint64_t sub_24577AA54()
{
  result = qword_27EE28B78;
  if (!qword_27EE28B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28B70, &qword_245916450);
    sub_24577AB0C();
    sub_245778BD8(&qword_27EE28BA0, &qword_27EE28BA8, &qword_245916478, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28B78);
  }

  return result;
}

unint64_t sub_24577AB0C()
{
  result = qword_27EE28B80;
  if (!qword_27EE28B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28B88, &qword_245916458);
    sub_245778DC8();
    sub_245778BD8(&qword_27EE28B90, &qword_27EE28B98, &qword_245916470, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28B80);
  }

  return result;
}

uint64_t sub_24577ABC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24577AC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofing.ViewStyleFormat(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24577AC90()
{
  result = qword_27EE28BD0;
  if (!qword_27EE28BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28BD8, &qword_2459164A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28B18, &qword_2459163D0);
    sub_245778BD8(&qword_27EE28B30, &qword_27EE28B18, &qword_2459163D0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_24577AD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28BD0);
  }

  return result;
}

unint64_t sub_24577AD8C()
{
  result = qword_27EE28BE0;
  if (!qword_27EE28BE0)
  {
    sub_24590FF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28BE0);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentRequestedElementsView(uint64_t a1)
{
  result = qword_27EE28BF0;
  if (!qword_27EE28BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24577AE58(uint64_t a1)
{
  result = type metadata accessor for DigitalPresentmentRootViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24577AEE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = sub_24590C234();
  MEMORY[0x28223BE20](v3 - 8);
  v138 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24590BFB4();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2459109B4();
  MEMORY[0x28223BE20](v6 - 8);
  v134 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590BFC4();
  MEMORY[0x28223BE20](v8 - 8);
  v142 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C18, &qword_245916538);
  v145 = *(v10 - 8);
  v147 = v145;
  MEMORY[0x28223BE20](v10);
  v146 = &v134 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C20, &qword_245916540);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v134 - v16;
  MEMORY[0x28223BE20](v18);
  v160 = &v134 - v19;
  MEMORY[0x28223BE20](v20);
  v161 = &v134 - v21;
  v22 = type metadata accessor for DigitalPresentmentIdentityElementSetView(0);
  MEMORY[0x28223BE20](v22);
  v141 = (&v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v143 = (&v134 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = (&v134 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C28, &qword_245916548);
  MEMORY[0x28223BE20](v29 - 8);
  v150 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v156 = &v134 - v32;
  MEMORY[0x28223BE20](v33);
  v157 = &v134 - v34;
  MEMORY[0x28223BE20](v35);
  v149 = &v134 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v134 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v134 - v41;
  v43 = a1[1];
  v44 = a1[2];
  v45 = *(v44 + 16);
  v144 = *a1;
  v46 = *(v144 + 16);
  v140 = v43;
  v148 = *(v43 + 16);
  v158 = v17;
  v159 = &v134 - v41;
  v153 = a1;
  v154 = v10;
  v151 = v14;
  v155 = v39;
  if (v45)
  {
    v139 = v46;
    v47 = sub_2457768F0(2);
    v49 = v48;
    v50 = *(a1 + *(type metadata accessor for DigitalPresentmentRootViewModel(0) + 44));
    if (v50)
    {
      v51 = sub_245777224(2u);
    }

    else
    {
      v51 = sub_245776DD4(2);
    }

    v55 = v51;
    v56 = v52;
    v57 = *(v44 + 16) > 2uLL;
    *v28 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BB8, &qword_245916580);
    swift_storeEnumTagMultiPayload();
    v58 = (v28 + v22[5]);
    *v58 = v47;
    v58[1] = v49;
    v59 = (v28 + v22[6]);
    *v59 = v55;
    v59[1] = v56;
    *(v28 + v22[7]) = v44;
    *(v28 + v22[8]) = v57;
    *(v28 + v22[9]) = v50;
    sub_24577C0A0();

    v60 = v159;
    sub_245910274();
    sub_24577C0F8(v28);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C38, &qword_245916588);
    v54 = 1;
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    if (v139)
    {
      v62 = v146;
      sub_245910654();
      v63 = sub_24590FFF4();
      sub_24590F594();
      v64 = v154;
      v65 = v62 + *(v154 + 36);
      *v65 = v63;
      *(v65 + 8) = v66;
      *(v65 + 16) = v67;
      *(v65 + 24) = v68;
      *(v65 + 32) = v69;
      *(v65 + 40) = 0;
      v70 = v161;
      sub_24577C154(v62, v161);
      v71 = *(v147 + 56);
      v71(v70, 0, 1, v64);
      a1 = v153;
      goto LABEL_12;
    }

    v10 = v154;
    v39 = v155;
    a1 = v153;
  }

  else
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C38, &qword_245916588);
    (*(*(v53 - 8) + 56))(v42, 1, 1, v53);
    v54 = v46 == 0;
  }

  v71 = *(v147 + 56);
  v71(v161, 1, 1, v10);
  if (v54)
  {
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C38, &qword_245916588);
    v73 = 1;
    (*(*(v72 - 8) + 56))(v39, 1, 1, v72);
    v71(v160, 1, 1, v10);
    if (!v148)
    {
      v74 = v39;
      v75 = v149;
LABEL_32:
      v114 = v158;
      goto LABEL_33;
    }

LABEL_22:
    v154 = sub_2457768F0(1);
    v106 = v105;
    v107 = type metadata accessor for DigitalPresentmentRootViewModel(0);
    v108 = *(a1 + *(v107 + 44));
    if (v108)
    {
      v109 = sub_245777224(1u);
    }

    else
    {
      v111 = (a1 + *(v107 + 36));
      v112 = v111[1];
      if (v112)
      {
        sub_24590AC34(*v111, v112);
      }

      else
      {
        sub_245910944();
        if (qword_27EE28728 != -1)
        {
          swift_once();
        }

        v115 = v137;
        v116 = __swift_project_value_buffer(v137, qword_27EE2C438);
        (*(v135 + 16))(v136, v116, v115);
        sub_24590C224();
        sub_24590BFE4();
      }

      v109 = sub_245910A64();
    }

    v117 = v109;
    v118 = v110;
    v74 = v39;
    v119 = v140;
    v120 = *(v140 + 16) > 2uLL;
    KeyPath = swift_getKeyPath();
    v122 = v141;
    *v141 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BB8, &qword_245916580);
    swift_storeEnumTagMultiPayload();
    v123 = (v122 + v22[5]);
    *v123 = v154;
    v123[1] = v106;
    v124 = (v122 + v22[6]);
    *v124 = v117;
    v124[1] = v118;
    *(v122 + v22[7]) = v119;
    *(v122 + v22[8]) = v120;
    *(v122 + v22[9]) = v108;
    sub_24577C0A0();

    v75 = v149;
    sub_245910274();
    sub_24577C0F8(v122);
    v73 = 0;
    goto LABEL_32;
  }

LABEL_12:
  v76 = sub_2457768F0(0);
  v78 = v77;
  v79 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  v80 = *(a1 + *(v79 + 44));
  if (v80)
  {
    v81 = sub_245777224(0);
  }

  else
  {
    v83 = (a1 + *(v79 + 36));
    v84 = v83[1];
    if (v84)
    {
      sub_24590A99C(*v83, v84);
    }

    else
    {
      sub_245910944();
      if (qword_27EE28728 != -1)
      {
        swift_once();
      }

      v85 = v137;
      v86 = __swift_project_value_buffer(v137, qword_27EE2C438);
      (*(v135 + 16))(v136, v86, v85);
      sub_24590C224();
      sub_24590BFE4();
    }

    v81 = sub_245910A64();
  }

  v87 = v81;
  v88 = v82;
  v89 = v144;
  v90 = *(v144 + 16) > 2uLL;
  v91 = swift_getKeyPath();
  v92 = v143;
  *v143 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BB8, &qword_245916580);
  swift_storeEnumTagMultiPayload();
  v93 = (v92 + v22[5]);
  *v93 = v76;
  v93[1] = v78;
  v94 = (v92 + v22[6]);
  *v94 = v87;
  v94[1] = v88;
  *(v92 + v22[7]) = v89;
  *(v92 + v22[8]) = v90;
  *(v92 + v22[9]) = v80;
  sub_24577C0A0();

  v39 = v155;
  sub_245910274();
  sub_24577C0F8(v92);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C38, &qword_245916588);
  (*(*(v95 - 8) + 56))(v39, 0, 1, v95);
  if (v148)
  {
    v96 = v146;
    sub_245910654();
    v97 = sub_24590FFF4();
    sub_24590F594();
    v98 = v154;
    v99 = v96 + *(v154 + 36);
    *v99 = v97;
    *(v99 + 8) = v100;
    *(v99 + 16) = v101;
    *(v99 + 24) = v102;
    *(v99 + 32) = v103;
    *(v99 + 40) = 0;
    v104 = v160;
    sub_24577C154(v96, v160);
    v71(v104, 0, 1, v98);
    a1 = v153;
    goto LABEL_22;
  }

  v113 = v71;
  v74 = v39;
  v73 = 1;
  v113(v160, 1, 1, v154);
  v114 = v158;
  v75 = v149;
LABEL_33:
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C38, &qword_245916588);
  (*(*(v125 - 8) + 56))(v75, v73, 1, v125);
  v126 = v157;
  sub_245778F2C(v159, v157, &qword_27EE28C28, &qword_245916548);
  sub_245778F2C(v161, v114, &qword_27EE28C20, &qword_245916540);
  v127 = v156;
  sub_245778F2C(v74, v156, &qword_27EE28C28, &qword_245916548);
  v128 = v151;
  sub_245778F2C(v160, v151, &qword_27EE28C20, &qword_245916540);
  v129 = v150;
  sub_245778F2C(v75, v150, &qword_27EE28C28, &qword_245916548);
  v130 = v126;
  v131 = v152;
  sub_245778F2C(v130, v152, &qword_27EE28C28, &qword_245916548);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C40, &unk_245916590);
  sub_245778F2C(v114, v131 + v132[12], &qword_27EE28C20, &qword_245916540);
  sub_245778F2C(v127, v131 + v132[16], &qword_27EE28C28, &qword_245916548);
  sub_245778F2C(v128, v131 + v132[20], &qword_27EE28C20, &qword_245916540);
  sub_245778F2C(v129, v131 + v132[24], &qword_27EE28C28, &qword_245916548);
  sub_245778F94(v75, &qword_27EE28C28, &qword_245916548);
  sub_245778F94(v160, &qword_27EE28C20, &qword_245916540);
  sub_245778F94(v155, &qword_27EE28C28, &qword_245916548);
  sub_245778F94(v161, &qword_27EE28C20, &qword_245916540);
  sub_245778F94(v159, &qword_27EE28C28, &qword_245916548);
  sub_245778F94(v129, &qword_27EE28C28, &qword_245916548);
  sub_245778F94(v128, &qword_27EE28C20, &qword_245916540);
  sub_245778F94(v156, &qword_27EE28C28, &qword_245916548);
  sub_245778F94(v158, &qword_27EE28C20, &qword_245916540);
  return sub_245778F94(v157, &qword_27EE28C28, &qword_245916548);
}

uint64_t sub_24577BDDC()
{
  v1 = sub_24590FE84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C00, &qword_245916528);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_24590FBD4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C08, &qword_245916530);
  sub_24577AEE0(v0, &v7[*(v8 + 44)]);
  sub_24590FE74();
  sub_24577BF74();
  sub_245910334();
  (*(v2 + 8))(v4, v1);
  return sub_245778F94(v7, &qword_27EE28C00, &qword_245916528);
}

unint64_t sub_24577BF74()
{
  result = qword_27EE28C10;
  if (!qword_27EE28C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28C00, &qword_245916528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28C10);
  }

  return result;
}

uint64_t sub_24577BFD8(uint64_t a1)
{
  v2 = sub_24590F774();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24590F9B4();
}

unint64_t sub_24577C0A0()
{
  result = qword_27EE28C30;
  if (!qword_27EE28C30)
  {
    type metadata accessor for DigitalPresentmentIdentityElementSetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28C30);
  }

  return result;
}

uint64_t sub_24577C0F8(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentIdentityElementSetView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24577C154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C18, &qword_245916538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IdentityDocumentPresentmentConsentView.init(elementCategoryGroups:presentmentSource:relyingPartyName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a4;
  v110 = a3;
  v112 = a2;
  v113 = a5;
  v134 = sub_24590F454();
  v6 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v105 - v9;
  v131 = sub_24590F4A4();
  v10 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v105 - v13;
  v108 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  MEMORY[0x28223BE20](v108);
  v109 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590F514();
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v115 = a1;
  v122 = v10;
  v114 = v6;
  if (v16)
  {
    v135 = MEMORY[0x277D84F90];
    sub_24577CA94(0, v16, 0);
    v18 = v135;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v120 = v20;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v106 = v15;
    v22 = v15 + v21;
    v23 = *(v19 + 56);
    v118 = (v6 + 16);
    v119 = v23;
    v121 = v19;
    v116 = (v6 + 8);
    v117 = (v19 - 8);
    v24 = v129;
    v25 = v131;
    do
    {
      v120(v24, v22, v25);
      v26 = v132;
      sub_24590F484();
      v27 = v134;
      (*v118)(v133, v26, v134);
      v28 = v130;
      sub_24590F474();
      v29 = sub_24590F494();
      v127 = v30;
      v128 = v29;
      v31 = sub_24590F464();
      v125 = v32;
      v126 = v31;
      v33 = sub_245775A6C();
      v123 = v34;
      v124 = v33;
      v35 = *v117;
      (*v117)(v28, v25);
      (*v116)(v26, v27);
      v35(v24, v25);
      v135 = v18;
      v37 = v18[2];
      v36 = v18[3];
      if (v37 >= v36 >> 1)
      {
        sub_24577CA94((v36 > 1), v37 + 1, 1);
        v18 = v135;
      }

      v18[2] = (v37 + 1);
      v38 = &v18[6 * v37];
      v39 = v127;
      v38[4] = v128;
      v38[5] = v39;
      v40 = v125;
      v38[6] = v126;
      v38[7] = v40;
      v41 = v123;
      v38[8] = v124;
      v38[9] = v41;
      v22 += v119;
      --v16;
    }

    while (v16);
    v107 = v18;

    a1 = v115;
    v10 = v122;
    v6 = v114;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {

    v107 = MEMORY[0x277D84F90];
  }

  v42 = sub_24590F504();
  v43 = *(v42 + 16);
  if (v43)
  {
    v135 = v17;
    sub_24577CA94(0, v43, 0);
    v44 = v135;
    v46 = *(v10 + 16);
    v45 = v10 + 16;
    v120 = v46;
    v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
    v106 = v42;
    v48 = v42 + v47;
    v49 = *(v45 + 56);
    v118 = (v6 + 16);
    v119 = v49;
    v121 = v45;
    v116 = (v6 + 8);
    v117 = (v45 - 8);
    v50 = v129;
    do
    {
      v51 = v44;
      v52 = v131;
      v120(v50, v48, v131);
      v53 = v132;
      sub_24590F484();
      v54 = v134;
      (*v118)(v133, v53, v134);
      v55 = v130;
      sub_24590F474();
      v56 = sub_24590F494();
      v127 = v57;
      v128 = v56;
      v58 = sub_24590F464();
      v125 = v59;
      v126 = v58;
      v60 = sub_245775A6C();
      v123 = v61;
      v124 = v60;
      v62 = *v117;
      (*v117)(v55, v52);
      (*v116)(v53, v54);
      v63 = v52;
      v44 = v51;
      v62(v50, v63);
      v135 = v51;
      v65 = v51[2];
      v64 = v51[3];
      if (v65 >= v64 >> 1)
      {
        sub_24577CA94((v64 > 1), v65 + 1, 1);
        v44 = v135;
      }

      v44[2] = (v65 + 1);
      v66 = &v44[6 * v65];
      v67 = v127;
      v66[4] = v128;
      v66[5] = v67;
      v68 = v125;
      v66[6] = v126;
      v66[7] = v68;
      v69 = v123;
      v66[8] = v124;
      v66[9] = v69;
      v48 += v119;
      --v43;
    }

    while (v43);

    a1 = v115;
    v10 = v122;
    v6 = v114;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v70 = sub_24590F4F4();
  v71 = *(v70 + 16);
  if (v71)
  {
    v116 = v44;
    v135 = v17;
    sub_24577CA94(0, v71, 0);
    v72 = v135;
    v74 = *(v10 + 16);
    v73 = v10 + 16;
    v121 = v74;
    v75 = (*(v73 + 64) + 32) & ~*(v73 + 64);
    v106 = v70;
    v76 = v70 + v75;
    v77 = *(v73 + 56);
    v119 = (v6 + 16);
    v120 = v77;
    v117 = (v6 + 8);
    v118 = (v73 - 8);
    v122 = v73;
    v78 = v130;
    do
    {
      v79 = v129;
      v80 = v131;
      v121(v129, v76, v131);
      v81 = v132;
      sub_24590F484();
      v82 = v134;
      (*v119)(v133, v81, v134);
      sub_24590F474();
      v83 = sub_24590F494();
      v127 = v84;
      v128 = v83;
      v85 = sub_24590F464();
      v125 = v86;
      v126 = v85;
      v87 = sub_245775A6C();
      v123 = v88;
      v124 = v87;
      v89 = *v118;
      (*v118)(v78, v80);
      (*v117)(v81, v82);
      (v89)(v79, v80);
      v135 = v72;
      v91 = v72[2];
      v90 = v72[3];
      if (v91 >= v90 >> 1)
      {
        sub_24577CA94((v90 > 1), v91 + 1, 1);
        v72 = v135;
      }

      v72[2] = (v91 + 1);
      v92 = &v72[6 * v91];
      v93 = v127;
      v92[4] = v128;
      v92[5] = v93;
      v94 = v125;
      v92[6] = v126;
      v92[7] = v94;
      v95 = v123;
      v92[8] = v124;
      v92[9] = v95;
      v76 += v120;
      --v71;
    }

    while (v71);

    a1 = v115;
    v44 = v116;
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
  }

  v96 = v108;
  v97 = v109;
  sub_24590F4C4();
  sub_24590F4D4();
  v98 = sub_24590F524();
  (*(*(v98 - 8) + 8))(a1, v98);
  *v97 = v107;
  v97[1] = v44;
  v97[2] = v72;
  v99 = (v97 + v96[9]);
  v100 = v111;
  *v99 = v110;
  v99[1] = v100;
  v101 = (v97 + v96[10]);
  *v101 = 0;
  v101[1] = 0;
  *(v97 + v96[11]) = 0;
  v102 = v96[12];
  v103 = sub_24590F4B4();
  (*(*(v103 - 8) + 32))(v97 + v102, v112, v103);
  return sub_24577CAB4(v97, v113);
}

char *sub_24577CA94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577CD84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24577CAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24577CB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IdentityDocumentPresentmentConsentView(uint64_t a1)
{
  result = qword_27EE28C48;
  if (!qword_27EE28C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24577CC0C()
{
  result = qword_27EE28C58;
  if (!qword_27EE28C58)
  {
    type metadata accessor for DigitalPresentmentRequestedElementsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28C58);
  }

  return result;
}

char *sub_24577CC64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577D5F0(a1, a2, a3, *v3, &qword_27EE28C88, &unk_245916650);
  *v3 = result;
  return result;
}

char *sub_24577CC94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577CEA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24577CCB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577CFA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24577CCD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577D0B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24577CCF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577D1C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24577CD14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577D3E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24577CD34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577D4FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24577CD54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24577D5F0(a1, a2, a3, *v3, &qword_27EE28C60, &qword_245919250);
  *v3 = result;
  return result;
}

char *sub_24577CD84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CA0, &qword_245916668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24577CEA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C68, &unk_245916630);
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

char *sub_24577CFA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90, &qword_24591D2B0);
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

char *sub_24577D0B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80, &qword_245918730);
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

char *sub_24577D1C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CA8, &unk_245916670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 88 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_24577D2DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C78, &unk_245916640);
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

char *sub_24577D3E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C70, &unk_245919240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24577D4FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C98, &qword_245916660);
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

char *sub_24577D5F0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t IdentityDocumentTransactionElementDetailsView.init(elementCategoryGroups:presentmentSource:passName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a4;
  v110 = a3;
  v112 = a2;
  v113 = a5;
  v134 = sub_24590F454();
  v6 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v105 - v9;
  v131 = sub_24590F4A4();
  v10 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v105 - v13;
  v108 = type metadata accessor for DigitalPresentmentRootViewModel(0);
  MEMORY[0x28223BE20](v108);
  v109 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590F514();
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v115 = a1;
  v122 = v10;
  v114 = v6;
  if (v16)
  {
    v135 = MEMORY[0x277D84F90];
    sub_24577CA94(0, v16, 0);
    v18 = v135;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v120 = v20;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v106 = v15;
    v22 = v15 + v21;
    v23 = *(v19 + 56);
    v118 = (v6 + 16);
    v119 = v23;
    v121 = v19;
    v116 = (v6 + 8);
    v117 = (v19 - 8);
    v24 = v129;
    v25 = v131;
    do
    {
      v120(v24, v22, v25);
      v26 = v132;
      sub_24590F484();
      v27 = v134;
      (*v118)(v133, v26, v134);
      v28 = v130;
      sub_24590F474();
      v29 = sub_24590F494();
      v127 = v30;
      v128 = v29;
      v31 = sub_24590F464();
      v125 = v32;
      v126 = v31;
      v33 = sub_245775A6C();
      v123 = v34;
      v124 = v33;
      v35 = *v117;
      (*v117)(v28, v25);
      (*v116)(v26, v27);
      v35(v24, v25);
      v135 = v18;
      v37 = v18[2];
      v36 = v18[3];
      if (v37 >= v36 >> 1)
      {
        sub_24577CA94((v36 > 1), v37 + 1, 1);
        v18 = v135;
      }

      v18[2] = (v37 + 1);
      v38 = &v18[6 * v37];
      v39 = v127;
      v38[4] = v128;
      v38[5] = v39;
      v40 = v125;
      v38[6] = v126;
      v38[7] = v40;
      v41 = v123;
      v38[8] = v124;
      v38[9] = v41;
      v22 += v119;
      --v16;
    }

    while (v16);
    v107 = v18;

    a1 = v115;
    v10 = v122;
    v6 = v114;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {

    v107 = MEMORY[0x277D84F90];
  }

  v42 = sub_24590F504();
  v43 = *(v42 + 16);
  if (v43)
  {
    v135 = v17;
    sub_24577CA94(0, v43, 0);
    v44 = v135;
    v46 = *(v10 + 16);
    v45 = v10 + 16;
    v120 = v46;
    v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
    v106 = v42;
    v48 = v42 + v47;
    v49 = *(v45 + 56);
    v118 = (v6 + 16);
    v119 = v49;
    v121 = v45;
    v116 = (v6 + 8);
    v117 = (v45 - 8);
    v50 = v129;
    do
    {
      v51 = v44;
      v52 = v131;
      v120(v50, v48, v131);
      v53 = v132;
      sub_24590F484();
      v54 = v134;
      (*v118)(v133, v53, v134);
      v55 = v130;
      sub_24590F474();
      v56 = sub_24590F494();
      v127 = v57;
      v128 = v56;
      v58 = sub_24590F464();
      v125 = v59;
      v126 = v58;
      v60 = sub_245775A6C();
      v123 = v61;
      v124 = v60;
      v62 = *v117;
      (*v117)(v55, v52);
      (*v116)(v53, v54);
      v63 = v52;
      v44 = v51;
      v62(v50, v63);
      v135 = v51;
      v65 = v51[2];
      v64 = v51[3];
      if (v65 >= v64 >> 1)
      {
        sub_24577CA94((v64 > 1), v65 + 1, 1);
        v44 = v135;
      }

      v44[2] = (v65 + 1);
      v66 = &v44[6 * v65];
      v67 = v127;
      v66[4] = v128;
      v66[5] = v67;
      v68 = v125;
      v66[6] = v126;
      v66[7] = v68;
      v69 = v123;
      v66[8] = v124;
      v66[9] = v69;
      v48 += v119;
      --v43;
    }

    while (v43);

    a1 = v115;
    v10 = v122;
    v6 = v114;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v70 = sub_24590F4F4();
  v71 = *(v70 + 16);
  if (v71)
  {
    v116 = v44;
    v135 = v17;
    sub_24577CA94(0, v71, 0);
    v72 = v135;
    v74 = *(v10 + 16);
    v73 = v10 + 16;
    v121 = v74;
    v75 = (*(v73 + 64) + 32) & ~*(v73 + 64);
    v106 = v70;
    v76 = v70 + v75;
    v77 = *(v73 + 56);
    v119 = (v6 + 16);
    v120 = v77;
    v117 = (v6 + 8);
    v118 = (v73 - 8);
    v122 = v73;
    v78 = v130;
    do
    {
      v79 = v129;
      v80 = v131;
      v121(v129, v76, v131);
      v81 = v132;
      sub_24590F484();
      v82 = v134;
      (*v119)(v133, v81, v134);
      sub_24590F474();
      v83 = sub_24590F494();
      v127 = v84;
      v128 = v83;
      v85 = sub_24590F464();
      v125 = v86;
      v126 = v85;
      v87 = sub_245775A6C();
      v123 = v88;
      v124 = v87;
      v89 = *v118;
      (*v118)(v78, v80);
      (*v117)(v81, v82);
      (v89)(v79, v80);
      v135 = v72;
      v91 = v72[2];
      v90 = v72[3];
      if (v91 >= v90 >> 1)
      {
        sub_24577CA94((v90 > 1), v91 + 1, 1);
        v72 = v135;
      }

      v72[2] = (v91 + 1);
      v92 = &v72[6 * v91];
      v93 = v127;
      v92[4] = v128;
      v92[5] = v93;
      v94 = v125;
      v92[6] = v126;
      v92[7] = v94;
      v95 = v123;
      v92[8] = v124;
      v92[9] = v95;
      v76 += v120;
      --v71;
    }

    while (v71);

    a1 = v115;
    v44 = v116;
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
  }

  v96 = v108;
  v97 = v109;
  sub_24590F4C4();
  sub_24590F4D4();
  v98 = sub_24590F524();
  (*(*(v98 - 8) + 8))(a1, v98);
  *v97 = v107;
  v97[1] = v44;
  v97[2] = v72;
  v99 = (v97 + v96[9]);
  *v99 = 0;
  v99[1] = 0;
  v100 = (v97 + v96[10]);
  v101 = v111;
  *v100 = v110;
  v100[1] = v101;
  *(v97 + v96[11]) = 1;
  v102 = v96[12];
  v103 = sub_24590F4B4();
  (*(*(v103 - 8) + 32))(v97 + v102, v112, v103);
  return sub_24577CAB4(v97, v113);
}

uint64_t type metadata accessor for IdentityDocumentTransactionElementDetailsView(uint64_t a1)
{
  result = qword_27EE28CB0;
  if (!qword_27EE28CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24577E054()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_24577E154(uint64_t a1)
{
  sub_245910AF4();
}

uint64_t sub_24577E240()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

unint64_t sub_24577E33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24577E8C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24577E36C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006C6F72746ELL;
  v4 = 0x6F43686374697773;
  v5 = 0xEC0000006C6F7274;
  v6 = 0x6E6F436563696F76;
  v7 = 0x800000024591F620;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 1836019578;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7669747369737361;
    v3 = 0xEE006863756F5465;
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

char *sub_24577E428()
{
  if (!UIAccessibilityIsSwitchControlRunning())
  {
    v1 = MEMORY[0x277D84F90];
    if (!_AXSAssistiveTouchEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v1 = sub_245809F58(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_245809F58((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v1[v3 + 32] = 0;
  if (_AXSAssistiveTouchEnabled())
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_245809F58(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_245809F58((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    v1[v5 + 32] = 1;
  }

LABEL_12:
  if (_AXSCommandAndControlEnabled())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_245809F58(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_245809F58((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    v1[v7 + 32] = 2;
  }

  v8 = *(*(v0 + 16) + 16);
  if (v8 && [v8 touchAccommodationsEnabled])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_245809F58(0, *(v1 + 2) + 1, 1, v1);
    }

    v10 = *(v1 + 2);
    v9 = *(v1 + 3);
    if (v10 >= v9 >> 1)
    {
      v1 = sub_245809F58((v9 > 1), v10 + 1, 1, v1);
    }

    *(v1 + 2) = v10 + 1;
    v1[v10 + 32] = 3;
  }

  v11 = *(*(v0 + 16) + 16);
  if (v11 && [v11 zoomEnabled])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_245809F58(0, *(v1 + 2) + 1, 1, v1);
    }

    v13 = *(v1 + 2);
    v12 = *(v1 + 3);
    if (v13 >= v12 >> 1)
    {
      v1 = sub_245809F58((v12 > 1), v13 + 1, 1, v1);
    }

    *(v1 + 2) = v13 + 1;
    v1[v13 + 32] = 4;
  }

  return v1;
}

uint64_t sub_24577E6BC()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for IdentityProofingAXSetting(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityProofingAXSetting(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24577E86C()
{
  result = qword_27EE28CC0;
  if (!qword_27EE28CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28CC0);
  }

  return result;
}

unint64_t sub_24577E8C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_245911644();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t IdentityProofingEligibilityHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v0 + 16) = sub_24590C8B4();
  return v0;
}

uint64_t IdentityProofingEligibilityHelper.init()()
{
  sub_24590C8C4();
  swift_allocObject();
  *(v0 + 16) = sub_24590C8B4();
  return v0;
}

uint64_t sub_24577EA08()
{
  if ((*(*v0 + 104))())
  {
    return 1;
  }

  v2 = *(*v0 + 96);

  return v2();
}

uint64_t sub_24577EA80()
{
  if ((*(*v0 + 104))())
  {
    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  if ((*(*v0 + 96))())
  {
    v1 = 1;
  }

  sub_24590C594();
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  sub_24590C564();

  return v1;
}

uint64_t IdentityProofingEligibilityHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_24577EC70(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6))
{
  v6 = a4;
  v21 = a2;
  v9 = HIDWORD(a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CC8, &unk_245916880);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_245916860;
  v15 = objc_opt_self();
  aBlock = a3;
  v23 = __PAIR64__(v9, v6);
  v24 = a5;
  *(v14 + 32) = [v15 valueWithCMTime_];
  sub_24577EEC0();
  v16 = sub_245910C34();

  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v13, v10);
  v26 = sub_24577F1B8;
  v27 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_24577F290;
  v25 = &block_descriptor;
  v19 = _Block_copy(&aBlock);

  [v21 generateCGImagesAsynchronouslyForTimes:v16 completionHandler:v19];
  _Block_release(v19);
}

unint64_t sub_24577EEC0()
{
  result = qword_27EE28CD0;
  if (!qword_27EE28CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE28CD0);
  }

  return result;
}

void sub_24577EF0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = sub_24590F354();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a9)
  {
    v15 = a9;
    sub_24590C714();
    v16 = a9;
    v17 = sub_24590F344();
    v18 = sub_245910F64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = a10;
      v20 = v19;
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_2459117D4();
      v24 = sub_2458CC378(v22, v23, &v29);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_245767000, v17, v18, "Error generating thumbnail: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245D77B40](v21, -1, -1);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CC8, &unk_245916880);
    sub_245910CF4();
  }

  else if (a4)
  {
    v25 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v26 = a4;
    v29 = [v25 initWithCGImage_];
    v27 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CC8, &unk_245916880);
    sub_245910CF4();
  }

  else
  {
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CC8, &unk_245916880);
    sub_245910CF4();
  }
}

void sub_24577F290(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  v15 = *(a1 + 32);

  v16 = a3;
  v14 = a6;
  v15(v8, v9, v10, a3, v11, v12, v13, a5, a6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24577F37C(uint64_t a1, char a2)
{
  [v2 bounds];
  if (a2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = *&a1 / v5;
  }

  if (a2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 * (*&a1 / v5);
  }

  if (a2)
  {
    v9 = v6;
  }

  else
  {
    v9 = v6 * (*&a1 / v5);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v10 setScale_];
  [v10 setOpaque_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v10 format:{v8, v9}];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24577F67C;
  *(v13 + 24) = v12;
  v19[4] = sub_24577F688;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_245817924;
  v19[3] = &block_descriptor_0;
  v14 = _Block_copy(v19);
  v15 = v2;

  v16 = [v11 imageWithActions_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v18 = [v16 CGImage];

    return v18;
  }

  return result;
}

void sub_24577F5D4(void *a1, void *a2, CGFloat a3)
{
  v6 = [a1 CGContext];
  CGContextScaleCTM(v6, a3, a3);

  v7 = [a1 CGContext];
  [a2 renderInContext_];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24577F6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_24590F8B4();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CD8, &qword_245916900);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CE0, &qword_245916908);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CE8, &qword_245916910);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_24577FB34();
  v14 = sub_24590D8B4();
  v15 = MEMORY[0x245D76600](v14);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CF0, &qword_245916918);
  v17 = v16;
  if (v15)
  {
    (*(*(v16 - 8) + 16))(v13, v30, v16);
    swift_storeEnumTagMultiPayload();
    v18 = sub_24577FB80();
    v32 = v17;
    v33 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v6;
    v33 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    return sub_24590FD14();
  }

  else
  {
    v21 = sub_24577FB80();
    sub_2459102F4();
    sub_24590F8A4();
    v32 = v17;
    v33 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    v30 = a2;
    v23 = v22;
    sub_2459103E4();
    (*(v28 + 8))(v5, v29);
    (*(v26 + 8))(v8, v6);
    v24 = v27;
    v25 = v31;
    (*(v27 + 16))(v13, v10, v31);
    swift_storeEnumTagMultiPayload();
    v32 = v6;
    v33 = v23;
    swift_getOpaqueTypeConformance2();
    sub_24590FD14();
    return (*(v24 + 8))(v10, v25);
  }
}

unint64_t sub_24577FB34()
{
  result = qword_27EE2B020;
  if (!qword_27EE2B020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2B020);
  }

  return result;
}

unint64_t sub_24577FB80()
{
  result = qword_27EE28CF8;
  if (!qword_27EE28CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28CF0, &qword_245916918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28CF8);
  }

  return result;
}

unint64_t sub_24577FBE4()
{
  result = qword_27EE28D00;
  if (!qword_27EE28D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28D08, &unk_245916920);
    sub_24577FB80();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28CD8, &qword_245916900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28CF0, &qword_245916918);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28D00);
  }

  return result;
}

id sub_24577FCE8(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B030, &qword_245916940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_245916930;
    v6 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_24577FF5C();
    *(inited + 40) = a2;
    v7 = a2;
    v8 = v6;
    sub_2458B8260(inited);
    swift_setDeallocating();
    sub_24577FFA8(inited + 32);
    v9 = *(a1 + 16);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = *(a1 + 16);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = 0;
  v11 = (a1 + 40);
  do
  {
    v16 = *(v11 - 1);
    v17 = *v11;

    MEMORY[0x245D76160](v16, v17);

    if (v10 < v9 - 1)
    {
      MEMORY[0x245D76160](10, 0xE100000000000000);
    }

    ++v10;
    v12 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v13 = sub_2459109C4();

    type metadata accessor for Key(0);
    sub_24577FF04();
    v14 = sub_2459108E4();
    v15 = [v12 initWithString:v13 attributes:v14];

    [v4 appendAttributedString_];
    v11 += 2;
  }

  while (v9 != v10);
LABEL_9:

  return v4;
}

unint64_t sub_24577FF04()
{
  result = qword_27EE28978;
  if (!qword_27EE28978)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28978);
  }

  return result;
}

unint64_t sub_24577FF5C()
{
  result = qword_27EE2B040;
  if (!qword_27EE2B040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2B040);
  }

  return result;
}

uint64_t sub_24577FFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B050, &qword_24591C620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_245780010()
{
  if (sub_2457800C0(1112687439, 0xE400000000000000, 6714479, 0xE300000000000000))
  {
    v0 = objc_opt_self();
    [v0 systemFontSize];
    v2 = v1;
    v3 = sub_2459109C4();
    v4 = [v0 fontWithName:v3 size:v2];
  }

  else
  {
    v4 = 0;
  }

  qword_27EE32B40 = v4;
}

uint64_t sub_2457800C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  error[1] = *MEMORY[0x277D85DE8];
  v6 = sub_24590F354();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v41 = sub_24590C094();
  v12 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE32B38;
  v16 = sub_2459109C4();
  v17 = sub_2459109C4();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_24590C054();

    error[0] = 0;
    v19 = sub_24590C034();
    v20 = CTFontManagerRegisterFontsForURL(v19, kCTFontManagerScopeProcess, error);

    if (v20)
    {
      (*(v12 + 8))(v14, v41);
      return 1;
    }

    v26 = error[0];
    if (error[0])
    {
      v44 = error[0];
      type metadata accessor for CFError(0);
      sub_2457805D0();
      v27 = sub_2459117D4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    sub_24590C714();

    v30 = sub_24590F344();
    v31 = sub_245910F64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v40 = v26;
      v33 = v32;
      v34 = swift_slowAlloc();
      v39 = v27;
      v35 = v34;
      v44 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_2458CC378(a1, a2, &v44);
      *(v33 + 12) = 2080;
      if (v29)
      {
        v36 = v39;
      }

      else
      {
        v36 = 0;
      }

      if (v29)
      {
        v37 = v29;
      }

      else
      {
        v37 = 0xE000000000000000;
      }

      v38 = sub_2458CC378(v36, v37, &v44);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_245767000, v30, v31, "UIFontExtension could not register font for %s: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D77B40](v35, -1, -1);
      MEMORY[0x245D77B40](v33, -1, -1);
    }

    else
    {
    }

    (*(v42 + 8))(v11, v43);
    (*(v12 + 8))(v14, v41);
  }

  else
  {
    sub_24590C714();

    v22 = sub_24590F344();
    v23 = sub_245910F64();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      error[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2458CC378(a1, a2, error);
      _os_log_impl(&dword_245767000, v22, v23, "UIFontExtension could not find url for custom font: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x245D77B40](v25, -1, -1);
      MEMORY[0x245D77B40](v24, -1, -1);
    }

    (*(v42 + 8))(v8, v43);
  }

  return 0;
}

unint64_t sub_2457805D0()
{
  result = qword_27EE28D10;
  if (!qword_27EE28D10)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28D10);
  }

  return result;
}

uint64_t sub_245780628(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2459107E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_245910814();
  v13 = *(v26 - 8);
  *&v14 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v4 pushViewController:a1 animated:{a2 & 1, v14}];
  if ((a2 & 1) != 0 && (v17 = [v4 transitionCoordinator]) != 0)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v31 = sub_245780A08;
    v32 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_245780B4C;
    v30 = &block_descriptor_6;
    v20 = _Block_copy(&aBlock);
    sub_245771BB4(a3, a4);

    [v18 animateAlongsideTransition:0 completion:v20];
    _Block_release(v20);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2457809BC();
    v22 = sub_245911034();
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v31 = sub_245780A08;
    v32 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_2458935A8;
    v30 = &block_descriptor_1;
    v24 = _Block_copy(&aBlock);
    sub_245771BB4(a3, a4);

    sub_245910804();
    aBlock = MEMORY[0x277D84F90];
    sub_245780A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
    sub_245780AA8();
    sub_2459113A4();
    MEMORY[0x245D76690](0, v16, v12, v24);
    _Block_release(v24);

    (*(v10 + 8))(v12, v9);
    return (*(v13 + 8))(v16, v26);
  }
}

unint64_t sub_2457809BC()
{
  result = qword_27EE2ABC0;
  if (!qword_27EE2ABC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2ABC0);
  }

  return result;
}

uint64_t sub_245780A08()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_245780A50()
{
  result = qword_27EE2A980;
  if (!qword_27EE2A980)
  {
    sub_2459107E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A980);
  }

  return result;
}

unint64_t sub_245780AA8()
{
  result = qword_27EE2A990;
  if (!qword_27EE2A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28D18, &unk_245916E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A990);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_245780B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_245780BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_245781754();
    **(*(v4 + 64) + 40) = sub_245910C44();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_245780C94(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_24590F354();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470, &unk_245917350);
  v2[26] = swift_task_alloc();
  v4 = sub_24590C094();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245780E00, 0, 0);
}

uint64_t sub_245780E00(uint64_t a1)
{
  v24 = v1;
  v2 = v1[20];
  if (!v2)
  {
    v6 = 0xE500000000000000;
    goto LABEL_5;
  }

  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[26];
  sub_24590C084();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_245778F94(v1[26], &unk_27EE29470, &unk_245917350);
    v6 = v2;
LABEL_5:
    sub_24590C714();

    v7 = sub_24590F344();
    v8 = sub_245910F54();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v1[24];
    v12 = v1[21];
    v11 = v1[22];
    if (v9)
    {
      v13 = v1[19];
      v22 = v1[24];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      if (!v2)
      {
        v13 = 0x3E6C696E3CLL;
      }

      v16 = sub_2458CC378(v13, v6, &v23);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_245767000, v7, v8, "AppLinkResolver failed to construct url with provided string: '%s'", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D77B40](v15, -1, -1);
      MEMORY[0x245D77B40](v14, -1, -1);

      (*(v11 + 8))(v22, v12);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v17 = v1[1];

    return v17(0, 0);
  }

  (*(v1[28] + 32))(v1[29], v1[26], v1[27]);
  v19 = objc_opt_self();
  v20 = sub_24590C034();
  v1[30] = v20;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_245781178;
  v21 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D20, &qword_245916960);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_245780BB4;
  v1[13] = &block_descriptor_2;
  v1[14] = v21;
  [v19 getAppLinksWithURL:v20 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_245781178()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_2457814F0;
  }

  else
  {
    v2 = sub_245781288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245781288()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    result = sub_245911424();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = *(v0 + 240);

    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);
    v20 = *(v0 + 200);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245767000, v14, v15, "AppLinkResolver LSAppLink returned no app links", v23, 2u);
      MEMORY[0x245D77B40](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v17, v19);
    v10 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x245D76B30](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  v8 = [v4 targetApplicationRecord];
  v9 = [v8 localizedName];

  v10 = sub_245910A04();
  v12 = v11;

  (*(v7 + 8))(v5, v6);
LABEL_11:

  v24 = *(v0 + 8);

  return v24(v10, v12);
}

uint64_t sub_2457814F0(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[31];
  swift_willThrow();

  sub_24590C714();
  v4 = v3;
  v5 = sub_24590F344();
  v6 = sub_245910F54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[31];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_245767000, v5, v6, "AppLinkResolver LSAppLink failed to fetch app links: %@", v8, 0xCu);
    sub_245778F94(v9, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  v12 = v1[31];
  v14 = v1[28];
  v13 = v1[29];
  v15 = v1[27];
  v17 = v1[22];
  v16 = v1[23];
  v18 = v1[21];

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);

  v19 = v1[1];

  return v19(0, 0);
}

uint64_t sub_2457816F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_245781754()
{
  result = qword_27EE28D28;
  if (!qword_27EE28D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE28D28);
  }

  return result;
}

unint64_t sub_2457817A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24578E7F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2457817D8()
{
  type metadata accessor for DocumentsRepository(0);
  v0 = swift_allocObject();
  result = sub_24578BA84();
  qword_27EE32B48 = v0;
  return result;
}

uint64_t sub_245781818(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2459107E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_245910814();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v3;
  *(v13 + 32) = a1;
  aBlock[4] = sub_245790278;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_189;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_245910804();
  v19 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

unint64_t sub_245781AEC(unsigned __int8 a1, id *a2, void *a3)
{
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      sub_24590C714();
      v26 = sub_24590F344();
      v27 = sub_245910F64();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v63 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_2458CC378(0x74726F7073736150, 0xE800000000000000, &v63);
        _os_log_impl(&dword_245767000, v26, v27, "Unable to save image for type: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x245D77B40](v29, -1, -1);
        MEMORY[0x245D77B40](v28, -1, -1);
      }

      v30 = *(v7 + 8);
      v31 = v12;
      goto LABEL_64;
    }

    v20 = a2[14];
    v14 = sub_24590D9E4();

    if (v14 >> 62)
    {
      v21 = sub_245911424();
      if (v21)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_14:
        v16 = __OFSUB__(v21, 1);
        result = v21 - 1;
        if (v16)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x245D76B30](result, v14);
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v22 = *(v14 + 8 * result + 32);
        }

        v19 = v22;

LABEL_41:
        v39 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions);
        if (v39)
        {
          v40 = v19;
          v41 = v39;
          v35 = sub_24590DF04();

          if (v35)
          {
LABEL_46:
            v37 = sub_24578E800(a3, v35, 2);
            v38 = 4;
            goto LABEL_55;
          }
        }

        else
        {
          v42 = v19;
        }

        v35 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackDimensions);
        goto LABEL_46;
      }
    }

    v19 = 0;
    goto LABEL_41;
  }

  if (!a1)
  {
    v13 = a2[12];
    v14 = sub_24590D9E4();

    if (v14 >> 62)
    {
      v15 = sub_245911424();
      if (v15)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_5:
        v16 = __OFSUB__(v15, 1);
        result = v15 - 1;
        if (!v16)
        {
          if ((v14 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) == 0)
            {
              if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v18 = *(v14 + 8 * result + 32);
LABEL_10:
                v19 = v18;

                goto LABEL_33;
              }

              goto LABEL_80;
            }

            __break(1u);
            goto LABEL_78;
          }

LABEL_74:
          v18 = MEMORY[0x245D76B30](result, v14);
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_72;
      }
    }

    v19 = 0;
LABEL_33:
    v32 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions);
    if (v32)
    {
      v33 = v19;
      v34 = v32;
      v35 = sub_24590DF14();

      if (v35)
      {
LABEL_38:
        v37 = sub_24578E800(a3, v35, 0);
        v38 = 2;
LABEL_55:

        v47 = a2[v38];
        a2[v38] = v37;

        sub_24590C714();
        v48 = v19;
        v49 = sub_24590F344();
        v50 = sub_245910F54();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 136315394;
          v62 = v6;
          v63 = v52;
          if (a1)
          {
            if (a1 == 1)
            {
              v53 = 0x6B636142204449;
            }

            else
            {
              v53 = 0x6569666C6553;
            }

            if (a1 == 1)
            {
              v54 = 0xE700000000000000;
            }

            else
            {
              v54 = 0xE600000000000000;
            }
          }

          else
          {
            v54 = 0xE800000000000000;
            v53 = 0x746E6F7246204449;
          }

          v56 = sub_2458CC378(v53, v54, &v63);

          *(v51 + 4) = v56;
          *(v51 + 12) = 2080;
          if (v19)
          {
            v57 = [v48 debugDescription];
            v58 = sub_245910A04();
            v60 = v59;
          }

          else
          {
            v60 = 0xE300000000000000;
            v58 = 7104878;
          }

          v61 = sub_2458CC378(v58, v60, &v63);

          *(v51 + 14) = v61;
          _os_log_impl(&dword_245767000, v49, v50, "Saved %s image:\n%s", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245D77B40](v52, -1, -1);
          MEMORY[0x245D77B40](v51, -1, -1);

          v30 = *(v7 + 8);
          v31 = v9;
          v55 = v62;
          return v30(v31, v55);
        }

        v30 = *(v7 + 8);
        v31 = v9;
LABEL_64:
        v55 = v6;
        return v30(v31, v55);
      }
    }

    else
    {
      v36 = v19;
    }

    v35 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackDimensions);
    goto LABEL_38;
  }

  v23 = a2[13];
  v14 = sub_24590D9E4();

  if (!(v14 >> 62))
  {
    v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_22;
    }

LABEL_48:

    v19 = 0;
LABEL_49:
    v43 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions);
    if (v43)
    {
      v44 = v19;
      v45 = v43;
      v35 = sub_24590DEF4();

      if (v35)
      {
LABEL_54:
        v37 = sub_24578E800(a3, v35, 1);
        v38 = 3;
        goto LABEL_55;
      }
    }

    else
    {
      v46 = v19;
    }

    v35 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackDimensions);
    goto LABEL_54;
  }

  v24 = sub_245911424();
  if (!v24)
  {
    goto LABEL_48;
  }

LABEL_22:
  v16 = __OFSUB__(v24, 1);
  result = v24 - 1;
  if (v16)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x245D76B30](result, v14);
    goto LABEL_27;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v14 + 8 * result + 32);
LABEL_27:
    v19 = v25;

    goto LABEL_49;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_2457821D4(uint64_t a1)
{
  v3 = sub_2459107E4();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245910814();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590EEB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v17[1] = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_2457901EC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_183;
  v15 = _Block_copy(aBlock);

  sub_245910804();
  v21 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v8, v5, v15);
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

void sub_245782568(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v4 = sub_24590EE04();

  sub_24578F0C4(v4, &v24);

  v5 = sub_24590EE24();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v5 + 32 + 8 * v8);
        if (*(v9 + 16))
        {
          break;
        }

LABEL_5:
        if (v6 == ++v8)
        {
          goto LABEL_14;
        }
      }

      v10 = sub_24588C5BC(12915, 0xE200000000000000);
      if ((v11 & 1) == 0)
      {
        break;
      }

      [*(*(v9 + 56) + 8 * v10) floatValue];
      if (!*(v9 + 16))
      {
        break;
      }

      v12 = sub_24588C5BC(0x6D617473656D6974, 0xE900000000000070);
      if ((v13 & 1) == 0)
      {
        break;
      }

      [*(*(v9 + 56) + 8 * v12) unsignedLongLongValue];
      v14 = objc_allocWithZone(sub_24590C494());
      sub_24590C484();

      MEMORY[0x245D76260](v15);
      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_245910C74();
      }

      v7 = v8 + 1;
      sub_245910CA4();
      if (v6 - 1 == v8)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_5;
  }

LABEL_14:

  sub_24590EDF4();
  sub_24590EE14();
  sub_245910C64();

  sub_24590EDC4();
  sub_24590EEA4();
  sub_24590EDA4();
  sub_24590EE44();
  sub_24590EDB4();
  v16 = sub_24590EDD4();
  sub_24578EFA0(v16);

  v17 = sub_24590EE74();
  sub_24578EFA0(v17);

  sub_24590EE94();
  v18 = *(a2 + 120);
  v19 = *(a2 + 128);
  objc_allocWithZone(sub_24590D514());
  v20 = v18;
  v21 = v19;
  v22 = sub_24590D504();
  v23 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness);
  *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness) = v22;
}

uint64_t sub_245782894(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v25 = a3;
  v24 = a1;
  v28 = sub_2459107E4();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_245910814();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590C474();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  (*(v11 + 16))(v14, a2, v10, v13);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = v4;
  v18 = v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = v24;
  *v18 = v24;
  *(v18 + 8) = v25;
  aBlock[4] = sub_24579014C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_177;
  v20 = _Block_copy(aBlock);

  v21 = v19;
  sub_245910804();
  v31 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  v22 = v28;
  sub_2459113A4();
  MEMORY[0x245D76690](0, v9, v7, v20);
  _Block_release(v20);
  (*(v30 + 8))(v7, v22);
  (*(v27 + 8))(v9, v29);
}

void sub_245782C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_24590F354();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590EA74();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24590C474();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277CFF340])
  {
    v19 = *(a2 + 80);
LABEL_5:
    v20 = v19;
    sub_24590D9A4();

    return;
  }

  if (v18 == *MEMORY[0x277CFF328])
  {
    v19 = *(a2 + 88);
    goto LABEL_5;
  }

  if (v18 == *MEMORY[0x277CFF318])
  {
    v21 = a2;
    v22 = *(a2 + 96);
    sub_24590D9A4();

    if ((a4 & 1) == 0)
    {
      v23 = *(v21 + 80);
      v24 = sub_24590D9C4();

      if (v24 >> 62)
      {
        v25 = sub_245911424();
        if (!v25)
        {
          goto LABEL_44;
        }

LABEL_11:
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v26)
        {
          __break(1u);
        }

        else if ((v24 & 0xC000000000000001) == 0)
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v27 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v28 = *(v24 + 8 * v27 + 32);
LABEL_16:
            v29 = v28;

            v30 = *(v21 + 80);
LABEL_27:
            v36 = v30;
            sub_24590D9A4();

            return;
          }

          __break(1u);
LABEL_43:
          v33 = sub_245911424();
          if (!v33)
          {
            goto LABEL_44;
          }

LABEL_21:
          v26 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v26)
          {
            __break(1u);
          }

          else if ((v24 & 0xC000000000000001) == 0)
          {
            if ((v34 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v34 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v35 = *(v24 + 8 * v34 + 32);
LABEL_26:
              v29 = v35;

              v30 = *(v21 + 88);
              goto LABEL_27;
            }

            __break(1u);
            return;
          }

          v35 = MEMORY[0x245D76B30](v34, v24);
          goto LABEL_26;
        }

        v28 = MEMORY[0x245D76B30](v27, v24);
        goto LABEL_16;
      }

      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_11;
      }

LABEL_44:
    }
  }

  else
  {
    if (v18 != *MEMORY[0x277CFF308])
    {
      if (v18 == *MEMORY[0x277CFF310])
      {
        v19 = *(a2 + 112);
      }

      else if (v18 == *MEMORY[0x277CFF330])
      {
        v19 = *(a2 + 120);
      }

      else if (v18 == *MEMORY[0x277CFF320])
      {
        v19 = *(a2 + 128);
      }

      else
      {
        if (v18 != *MEMORY[0x277CFF338])
        {
          v43 = 0;
          v44 = 0xE000000000000000;
          sub_2459114D4();

          v43 = 0xD00000000000002FLL;
          v44 = 0x8000000245924510;
          v37 = sub_24590C464();
          MEMORY[0x245D76160](v37);

          v39[1] = v44;
          v39[2] = v43;
          (*(v40 + 104))(v12, *MEMORY[0x277CFF9C0], v10);
          sub_2458CC8AC(MEMORY[0x277D84F90]);
          sub_24590EA84();
          sub_24579004C(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
          v38 = swift_allocError();
          sub_24590EA94();
          sub_24590C714();
          sub_24590C724();
          (*(v41 + 8))(v9, v42);

          (*(v14 + 8))(v17, v13);
          return;
        }

        v19 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics);
      }

      goto LABEL_5;
    }

    v21 = a2;
    v31 = *(a2 + 104);
    sub_24590D9A4();

    if ((a4 & 1) == 0)
    {
      v32 = *(v21 + 88);
      v24 = sub_24590D9C4();

      if (v24 >> 62)
      {
        goto LABEL_43;
      }

      v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }
  }
}

uint64_t sub_24578329C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a3;
  v31 = sub_2459107E4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_245910814();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590C474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  (*(v10 + 16))(v13, a2, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v14, v13, v9);
  *(v17 + v15) = v4;
  v19 = v26;
  v18 = v27;
  *(v17 + v16) = v26;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_2457900A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_171;
  v20 = _Block_copy(aBlock);

  v21 = v19;
  sub_245910804();
  v34 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  v22 = v29;
  v23 = v31;
  sub_2459113A4();
  MEMORY[0x245D76690](0, v8, v22, v20);
  _Block_release(v20);
  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v8, v32);
}

void sub_24578366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24590F354();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590EA74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24590C474();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277CFF330])
  {
    v18 = *(a2 + 120);
LABEL_5:
    v19 = v18;
    sub_24590D9F4();

    return;
  }

  if (v17 == *MEMORY[0x277CFF320])
  {
    v18 = *(a2 + 128);
    goto LABEL_5;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2459114D4();
  MEMORY[0x245D76160](0xD00000000000003CLL, 0x80000002459244B0);
  v20 = sub_24590C464();
  MEMORY[0x245D76160](v20);

  (*(v9 + 104))(v11, *MEMORY[0x277CFF9C0], v8);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579004C(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  v21 = swift_allocError();
  sub_24590EA94();
  v22 = v24;
  sub_24590C714();
  sub_24590C724();
  (*(v25 + 8))(v22, v26);

  (*(v13 + 8))(v16, v12);
}

uint64_t sub_245783A58(char a1)
{
  v3 = sub_2459107E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245910814();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_24579009C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_165;
  v11 = _Block_copy(aBlock);

  sub_245910804();
  v15 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

void sub_245783D20(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 120);
    sub_24590D9D4();

    v4 = *(a2 + 128);
    sub_24590D9D4();
  }

  v5 = *(a2 + 120);
  sub_24590D9B4();

  v6 = *(a2 + 128);
  sub_24590D9B4();
}

uint64_t sub_245783DDC(void *a1)
{
  v3 = sub_2459107E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245910814();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_245790094;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_159;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  sub_245910804();
  v16 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

void sub_2457840A4(uint64_t a1, void *a2)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590EA74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 104);
  v13 = sub_24590D9E4();

  if (v13 >> 62)
  {
    v14 = sub_245911424();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
LABEL_14:
    v17 = MEMORY[0x245D76B30](v15, v4);
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    (*(v9 + 104))(v11, *MEMORY[0x277CFFE10], v8);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579004C(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v20 = swift_allocError();
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();
    (*(v5 + 8))(v7, v4);

    return;
  }

  v16 = *(a1 + 104);
  v4 = sub_24590D9E4();

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (v15 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v17 = *(v4 + 8 * v15 + 32);
LABEL_8:
  v22 = v17;

  v18 = a2;
  sub_24590CCA4();
  v19 = v22;
}

uint64_t sub_245784414(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2459107E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_245910814();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_24578FF38;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_153;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_245771BB4(a2, a3);
  sub_245910804();
  v21 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_2457846F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v286 = a4;
  v295 = a3;
  v302 = sub_24590D1B4();
  v6 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v285 = &v261 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v283 = &v261 - v9;
  v10 = sub_24590F354();
  v293 = *(v10 - 8);
  v294 = v10;
  MEMORY[0x28223BE20](v10);
  v296 = &v261 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0, &qword_245916B00);
  MEMORY[0x28223BE20](v12 - 8);
  v284 = &v261 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v282 = &v261 - v15;
  MEMORY[0x28223BE20](v16);
  v281 = &v261 - v17;
  MEMORY[0x28223BE20](v18);
  v280 = &v261 - v19;
  MEMORY[0x28223BE20](v20);
  v279 = &v261 - v21;
  MEMORY[0x28223BE20](v22);
  v278 = &v261 - v23;
  MEMORY[0x28223BE20](v24);
  v277 = &v261 - v25;
  MEMORY[0x28223BE20](v26);
  v276 = &v261 - v27;
  MEMORY[0x28223BE20](v28);
  v292 = (&v261 - v29);
  MEMORY[0x28223BE20](v30);
  v291 = &v261 - v31;
  MEMORY[0x28223BE20](v32);
  v300 = &v261 - v33;
  MEMORY[0x28223BE20](v34);
  v299 = &v261 - v35;
  MEMORY[0x28223BE20](v36);
  v298 = &v261 - v37;
  MEMORY[0x28223BE20](v38);
  v290 = &v261 - v39;
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v41);
  v289 = &v261 - v42;
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  v297 = &v261 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v261 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v261 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v261 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v261 - v56;
  v288 = v58;
  v287 = v59;
  if (a2)
  {
    v60 = sub_24590CEE4();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0xF000000000000000;
  }

  sub_245787C00(v60, v62, v54);
  sub_245771C44(v60, v62);
  v63 = *(v6 + 48);
  v64 = v302;
  v65 = v63(v54, 1, v302);
  v301 = v6 + 48;
  v304 = v63;
  if (v65 == 1)
  {
    (*(v6 + 16))(v57, a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanFallbackSettings, v64);
    if (v63(v54, 1, v64) != 1)
    {
      sub_245778F94(v54, &qword_27EE28ED0, &qword_245916B00);
    }
  }

  else
  {
    (*(v6 + 32))(v57, v54, v64);
  }

  v303 = v6;
  v66 = *(v6 + 56);
  (v66)(v57, 0, 1, v64);
  v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanSettings;
  swift_beginAccess();
  v275 = v67;
  sub_24578FCF4(v57, a1 + v67);
  swift_endAccess();
  v68 = v287;
  if (a2)
  {
    v69 = sub_24590CEA4();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xF000000000000000;
  }

  sub_245787C00(v69, v71, v48);
  sub_245771C44(v69, v71);
  v72 = v302;
  v73 = v304;
  if (v304(v48, 1, v302) == 1)
  {
    (*(v303 + 16))(v51, a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanFallbackSettings, v72);
    if (v73(v48, 1, v72) != 1)
    {
      sub_245778F94(v48, &qword_27EE28ED0, &qword_245916B00);
    }
  }

  else
  {
    (*(v303 + 32))(v51, v48, v72);
  }

  (v66)(v51, 0, 1, v72);
  v74 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanSettings;
  swift_beginAccess();
  v274 = v74;
  sub_24578FCF4(v51, a1 + v74);
  swift_endAccess();
  if (a2)
  {
    v75 = sub_24590CE64();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0xF000000000000000;
  }

  v78 = v304;
  sub_245787C00(v75, v77, v68);
  sub_245771C44(v75, v77);
  if (v78(v68, 1, v72) == 1)
  {
    v79 = v297;
    (*(v303 + 16))(v297, a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackSettings, v72);
    if (v78(v68, 1, v72) != 1)
    {
      sub_245778F94(v68, &qword_27EE28ED0, &qword_245916B00);
    }
  }

  else
  {
    v79 = v297;
    (*(v303 + 32))(v297, v68, v72);
  }

  v297 = v66;
  (v66)(v79, 0, 1, v72);
  v80 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings;
  swift_beginAccess();
  v287 = v80;
  sub_24578FCF4(v79, a1 + v80);
  swift_endAccess();
  if (a2)
  {
    v81 = sub_24590CE34();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0xF000000000000000;
  }

  v84 = v299;
  v85 = v288;
  sub_245787C00(v81, v83, v288);
  sub_245771C44(v81, v83);
  if (v78(v85, 1, v72) == 1)
  {
    v86 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackSettings;
    swift_beginAccess();
    v87 = v289;
    (*(v303 + 16))(v289, a1 + v86, v72);
    if (v78(v85, 1, v72) != 1)
    {
      sub_245778F94(v85, &qword_27EE28ED0, &qword_245916B00);
    }
  }

  else
  {
    v87 = v289;
    (*(v303 + 32))(v289, v85, v72);
  }

  (v297)(v87, 0, 1, v72);
  v88 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings;
  swift_beginAccess();
  v289 = v88;
  sub_24578FCF4(v87, a1 + v88);
  swift_endAccess();
  if (a2)
  {
    v89 = sub_24590CE44();
    v91 = v90;
  }

  else
  {
    v89 = 0;
    v91 = 0xF000000000000000;
  }

  v92 = v84;
  sub_245787C00(v89, v91, v298);
  v93 = v89;
  v94 = v298;
  sub_245771C44(v93, v91);
  v95 = v78(v94, 1, v72);
  v96 = v297;
  if (v95 == 1)
  {
    v97 = v290;
    (*(v303 + 16))(v290, a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackSettings, v72);
    if (v78(v94, 1, v72) != 1)
    {
      sub_245778F94(v94, &qword_27EE28ED0, &qword_245916B00);
    }
  }

  else
  {
    v97 = v290;
    (*(v303 + 32))(v290, v94, v72);
  }

  (v96)(v97, 0, 1, v72);
  v98 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings;
  swift_beginAccess();
  v290 = v98;
  sub_24578FCF4(v97, a1 + v98);
  swift_endAccess();
  if (a2)
  {
    v99 = sub_24590CEB4();
    v101 = v100;
    sub_245787C00(v99, v100, v92);
    sub_245771C44(v99, v101);
    v102 = sub_24590CE84();
    v104 = v103;
  }

  else
  {
    v104 = 0xF000000000000000;
    sub_245787C00(0, 0xF000000000000000, v92);
    sub_245771C44(0, 0xF000000000000000);
    v102 = 0;
  }

  v105 = v300;
  sub_245787C00(v102, v104, v300);
  sub_245771C44(v102, v104);
  v106 = v291;
  sub_24578A2C8(v92, v291);
  (v96)(v106, 0, 1, v72);
  v107 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings;
  swift_beginAccess();
  v288 = v107;
  sub_24578FCF4(v106, a1 + v107);
  swift_endAccess();
  sub_24578A2C8(v105, v106);
  (v96)(v106, 0, 1, v72);
  v108 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings;
  swift_beginAccess();
  v298 = v108;
  sub_24578FCF4(v106, a1 + v108);
  swift_endAccess();
  if (a2)
  {
    v109 = sub_24590CF04();
    v111 = v110;
  }

  else
  {
    v109 = 0;
    v111 = 0xF000000000000000;
  }

  v112 = sub_24578F470(v109, v111);
  sub_245771C44(v109, v111);
  v297 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes;
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes) = v112;

  if (a2)
  {
    v113 = sub_24590CE04();
    v270 = (a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration);
    *v270 = v113 & 1;
    v114 = sub_24590CDF4();
    v116 = 3;
    if ((v115 & 1) == 0)
    {
      v116 = v114;
    }

    v117 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize;
    *v117 = v116;
    v265 = v117;
    *(v117 + 8) = 0;
    v118 = (v117 + 8);
    v119 = sub_24590CED4();
    v120 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions);
    v273 = (a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions);
    *v273 = v119;

    v121 = sub_24590CE14();
    v123 = v122;
    v124 = 0;
    v125 = 5;
    if ((v123 & 1) == 0 && v121 >= 1)
    {
      v125 = sub_24590CE14();
    }

    v135 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow;
    *v135 = v125;
    v267 = v135;
    *(v135 + 8) = v124 & 1;
    v271 = (v135 + 8);
    v136 = sub_24590CE74();
    v138 = v137;
    v139 = 0;
    v140 = 5;
    if ((v138 & 1) == 0 && v136 >= 1)
    {
      v140 = sub_24590CE74();
    }

    v141 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idScanFrameRate;
    *v141 = v140;
    v268 = v141;
    *(v141 + 8) = v139 & 1;
    v272 = (v141 + 8);
    v142 = sub_24590CE54();
    v144 = v143;
    v145 = 0;
    v146 = 5;
    if ((v144 & 1) == 0 && v142 >= 1)
    {
      v146 = sub_24590CE54();
    }

    v147 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_videoFrameRate;
    *v147 = v146;
    v266 = v147;
    *(v147 + 8) = v145 & 1;
    v132 = (v147 + 8);
    v148 = sub_24590CE24();
    if ((v148 & 0x100000000) != 0)
    {
      v149 = 1036831949;
    }

    else
    {
      v149 = v148;
    }

    v150 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel;
    *v150 = v149;
    v269 = v150;
    *(v150 + 4) = 0;
    v291 = (v150 + 4);
    v128 = sub_24590CEC4();
    v134 = v151;
  }

  else
  {
    v270 = (a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration);
    *v270 = 0;
    v126 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize;
    *v126 = 3;
    v265 = v126;
    *(v126 + 8) = 0;
    v118 = (v126 + 8);
    v127 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions);
    v273 = (a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions);
    *v273 = 0;

    v128 = 0;
    v129 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow;
    *v129 = 5;
    v267 = v129;
    *(v129 + 8) = 0;
    v271 = (v129 + 8);
    v130 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idScanFrameRate;
    *v130 = 5;
    v268 = v130;
    *(v130 + 8) = 0;
    v272 = (v130 + 8);
    v131 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_videoFrameRate;
    *v131 = 5;
    v266 = v131;
    *(v131 + 8) = 0;
    v132 = (v131 + 8);
    v133 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel;
    *v133 = 1036831949;
    v269 = v133;
    *(v133 + 4) = 0;
    v291 = (v133 + 4);
    v134 = 0xF000000000000000;
  }

  v152 = v292;
  v153 = v128;
  sub_245787C00(v128, v134, v292);
  sub_245771C44(v153, v134);
  v154 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
  swift_beginAccess();
  sub_24578FCF4(v152, a1 + v154);
  swift_endAccess();
  if (a2)
  {
    v155 = sub_24590CEF4();
    v156 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportFrameRate;
    *v156 = v155;
    *(v156 + 8) = v157 & 1;
    v158 = (v156 + 8);
    v159 = sub_24590CE94();
  }

  else
  {
    v159 = 0;
    v156 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportFrameRate;
    *v156 = 0;
    v160 = 1;
    *(v156 + 8) = 1;
    v158 = (v156 + 8);
  }

  v161 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportTimeout;
  *v161 = v159;
  *(v161 + 8) = v160 & 1;
  v162 = v296;
  sub_24590C714();

  v163 = sub_24590F344();
  v164 = sub_245910F54();
  if (!os_log_type_enabled(v163, v164))
  {

    v168 = (*(v293 + 8))(v162, v294);
    v169 = v299;
    v170 = v295;
    if (!v295)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v263 = v164;
  v264 = v154;
  v292 = v163;
  v165 = swift_slowAlloc();
  v262 = swift_slowAlloc();
  v306 = v262;
  *v165 = 67113474;
  *(v165 + 4) = *v270;

  *(v165 + 8) = 2080;
  if (*v118)
  {
    v166 = 0xE300000000000000;
    v167 = 7104878;
  }

  else
  {
    v305 = *v265;
    sub_24578FF44();
    v167 = sub_245911344();
    v166 = v171;
  }

  v172 = sub_2458CC378(v167, v166, &v306);

  *(v165 + 10) = v172;
  *(v165 + 18) = 2080;
  if (*v273)
  {
    v173 = *v273;
    v174 = sub_24590DEE4();
    v176 = v175;
  }

  else
  {
    v176 = 0xE300000000000000;
    v174 = 7104878;
  }

  v177 = sub_2458CC378(v174, v176, &v306);

  *(v165 + 20) = v177;
  *(v165 + 28) = 2080;
  if (*v271)
  {
    v178 = 0xE300000000000000;
    v179 = 7104878;
  }

  else
  {
    v305 = *v267;
    sub_24578FF44();
    v179 = sub_245911344();
    v178 = v180;
  }

  v181 = sub_2458CC378(v179, v178, &v306);

  *(v165 + 30) = v181;
  *(v165 + 38) = 2080;
  if (*v272)
  {
    v182 = 0xE300000000000000;
    v183 = 7104878;
  }

  else
  {
    v305 = *v268;
    sub_24578FF44();
    v183 = sub_245911344();
    v182 = v184;
  }

  v185 = sub_2458CC378(v183, v182, &v306);

  *(v165 + 40) = v185;
  *(v165 + 48) = 2080;
  if (*v132)
  {
    v186 = 0xE300000000000000;
    v187 = 7104878;
  }

  else
  {
    v305 = *v266;
    sub_24578FF44();
    v187 = sub_245911344();
    v186 = v188;
  }

  v189 = sub_2458CC378(v187, v186, &v306);

  *(v165 + 50) = v189;
  *(v165 + 58) = 2080;
  if (*v291)
  {
    v190 = 0xE300000000000000;
    v191 = 7104878;
  }

  else
  {
    v191 = sub_245910E54();
    v190 = v192;
  }

  v193 = sub_2458CC378(v191, v190, &v306);

  *(v165 + 60) = v193;
  *(v165 + 68) = 2080;
  v194 = *v156;
  if (*v158)
  {
    v194 = 3;
  }

  v305 = v194;
  sub_24578FF44();
  v195 = sub_245911344();
  v197 = sub_2458CC378(v195, v196, &v306);

  *(v165 + 70) = v197;
  *(v165 + 78) = 2080;
  v198 = *v161;
  if (*(v161 + 8))
  {
    v198 = 300;
  }

  v305 = v198;
  v199 = sub_245911344();
  v201 = sub_2458CC378(v199, v200, &v306);

  *(v165 + 80) = v201;
  *(v165 + 88) = 2080;
  sub_24590E9D4();
  sub_24579004C(&qword_27EE28EB8, MEMORY[0x277CFF850], MEMORY[0x277CFF858]);

  v202 = sub_245910E94();
  v204 = v203;

  v205 = sub_2458CC378(v202, v204, &v306);

  *(v165 + 90) = v205;
  *(v165 + 98) = 2080;
  v206 = v276;
  sub_245778F2C(a1 + v275, v276, &qword_27EE28ED0, &qword_245916B00);
  v207 = v302;
  if (v304(v206, 1, v302))
  {
    sub_245778F94(v206, &qword_27EE28ED0, &qword_245916B00);
    v208 = 0xE300000000000000;
    v209 = 7104878;
    v210 = v303;
    v211 = v285;
    v169 = v299;
    v212 = v283;
  }

  else
  {
    v210 = v303;
    v212 = v283;
    (*(v303 + 16))(v283, v206, v207);
    sub_245778F94(v206, &qword_27EE28ED0, &qword_245916B00);
    v213 = sub_24590D144();
    v208 = v214;
    (*(v210 + 8))(v212, v207);
    v209 = v213;
    v211 = v285;
    v169 = v299;
  }

  v215 = sub_2458CC378(v209, v208, &v306);

  *(v165 + 100) = v215;
  *(v165 + 108) = 2080;
  v216 = v277;
  sub_245778F2C(a1 + v274, v277, &qword_27EE28ED0, &qword_245916B00);
  if (v304(v216, 1, v207))
  {
    sub_245778F94(v216, &qword_27EE28ED0, &qword_245916B00);
    v217 = 0xE300000000000000;
    v218 = 7104878;
  }

  else
  {
    (*(v210 + 16))(v212, v216, v207);
    sub_245778F94(v216, &qword_27EE28ED0, &qword_245916B00);
    v219 = sub_24590D144();
    v217 = v220;
    (*(v210 + 8))(v212, v207);
    v218 = v219;
  }

  v221 = sub_2458CC378(v218, v217, &v306);

  *(v165 + 110) = v221;
  *(v165 + 118) = 2080;
  v222 = v278;
  sub_245778F2C(a1 + v287, v278, &qword_27EE28ED0, &qword_245916B00);
  if (v304(v222, 1, v207))
  {
    sub_245778F94(v222, &qword_27EE28ED0, &qword_245916B00);
    v223 = 0xE300000000000000;
    v224 = 7104878;
  }

  else
  {
    (*(v210 + 16))(v212, v222, v207);
    sub_245778F94(v222, &qword_27EE28ED0, &qword_245916B00);
    v225 = sub_24590D144();
    v223 = v226;
    (*(v210 + 8))(v212, v207);
    v224 = v225;
  }

  v227 = sub_2458CC378(v224, v223, &v306);

  *(v165 + 120) = v227;
  *(v165 + 128) = 2080;
  v228 = v279;
  sub_245778F2C(&v289[a1], v279, &qword_27EE28ED0, &qword_245916B00);
  if (v304(v228, 1, v207))
  {
    sub_245778F94(v228, &qword_27EE28ED0, &qword_245916B00);
    v229 = 0xE300000000000000;
    v230 = 7104878;
  }

  else
  {
    (*(v210 + 16))(v212, v228, v207);
    sub_245778F94(v228, &qword_27EE28ED0, &qword_245916B00);
    v231 = sub_24590D144();
    v229 = v232;
    (*(v210 + 8))(v212, v207);
    v230 = v231;
  }

  v233 = sub_2458CC378(v230, v229, &v306);

  *(v165 + 130) = v233;
  *(v165 + 138) = 2080;
  v234 = v280;
  sub_245778F2C(&v290[a1], v280, &qword_27EE28ED0, &qword_245916B00);
  if (v304(v234, 1, v207))
  {
    sub_245778F94(v234, &qword_27EE28ED0, &qword_245916B00);
    v235 = 0xE300000000000000;
    v236 = 7104878;
  }

  else
  {
    (*(v210 + 16))(v212, v234, v207);
    sub_245778F94(v234, &qword_27EE28ED0, &qword_245916B00);
    v237 = sub_24590D144();
    v235 = v238;
    (*(v210 + 8))(v212, v207);
    v236 = v237;
  }

  v239 = sub_2458CC378(v236, v235, &v306);

  *(v165 + 140) = v239;
  *(v165 + 148) = 2080;
  v240 = v281;
  sub_245778F2C(a1 + v288, v281, &qword_27EE28ED0, &qword_245916B00);
  if (v304(v240, 1, v207))
  {
    sub_245778F94(v240, &qword_27EE28ED0, &qword_245916B00);
    v241 = 0xE300000000000000;
    v242 = 7104878;
  }

  else
  {
    (*(v210 + 16))(v212, v240, v207);
    sub_245778F94(v240, &qword_27EE28ED0, &qword_245916B00);
    v243 = sub_24590D144();
    v241 = v244;
    (*(v210 + 8))(v212, v207);
    v242 = v243;
  }

  v245 = sub_2458CC378(v242, v241, &v306);

  *(v165 + 150) = v245;
  *(v165 + 158) = 2080;
  v246 = v282;
  sub_245778F2C(a1 + v298, v282, &qword_27EE28ED0, &qword_245916B00);
  if (v304(v246, 1, v207))
  {
    sub_245778F94(v246, &qword_27EE28ED0, &qword_245916B00);
    v247 = 0xE300000000000000;
    v248 = 7104878;
  }

  else
  {
    (*(v210 + 16))(v212, v246, v207);
    sub_245778F94(v246, &qword_27EE28ED0, &qword_245916B00);
    v249 = sub_24590D144();
    v247 = v250;
    (*(v210 + 8))(v212, v207);
    v248 = v249;
  }

  v251 = sub_2458CC378(v248, v247, &v306);

  *(v165 + 160) = v251;
  *(v165 + 168) = 2080;
  v252 = v284;
  sub_245778F2C(a1 + v264, v284, &qword_27EE28ED0, &qword_245916B00);
  v253 = v304;
  if (v304(v252, 1, v207) == 1)
  {
    (*(v210 + 16))(v211, a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v207);
    if (v253(v252, 1, v207) != 1)
    {
      sub_245778F94(v252, &qword_27EE28ED0, &qword_245916B00);
    }
  }

  else
  {
    (*(v210 + 32))(v211, v252, v207);
  }

  v254 = sub_24590D144();
  v256 = v255;
  (*(v210 + 8))(v211, v207);
  v257 = sub_2458CC378(v254, v256, &v306);

  *(v165 + 170) = v257;
  v258 = v292;
  _os_log_impl(&dword_245767000, v292, v263, "Saved IQ Settings:\nExploration: %{BOOL}d\nFrameBufferSize: %s\nResize: %s\nStableWindow: %s\nIDScanFrameRate: %s\nVideoFrameRate: %s\nMaxRectTravel: %s\nPassportFrameRate: %s\nPassportTimeout: %s\nLivenessBlockingCodes: %s\n------------ Front Scan ------------\n%s\n------------ Back Scan -------------\n%s\n------------- Front ID -------------\n%s\n------------- Back ID --------------\n%s\n-------------- Selfie --------------\n%s\n------------- Liveness -------------\n%s\n------------- Passive --------------\n%s\n------------- Passport -------------\n%s", v165, 0xB2u);
  v259 = v262;
  swift_arrayDestroy();
  MEMORY[0x245D77B40](v259, -1, -1);
  MEMORY[0x245D77B40](v165, -1, -1);

  v168 = (*(v293 + 8))(v296, v294);
  v170 = v295;
  if (v295)
  {
LABEL_113:
    v170(v168);
  }

LABEL_114:
  sub_245778F94(v300, &qword_27EE28ED0, &qword_245916B00);
  return sub_245778F94(v169, &qword_27EE28ED0, &qword_245916B00);
}
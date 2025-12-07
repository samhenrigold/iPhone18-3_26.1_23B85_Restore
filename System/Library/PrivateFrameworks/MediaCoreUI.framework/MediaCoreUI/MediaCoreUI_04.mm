uint64_t sub_1C599BDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C599F4A0();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C599BE54(uint64_t a1)
{
  v2 = sub_1C599F4A0();

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_1C599BEA0@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v12 = *v2;
  v13 = v4;
  v14 = v2[2];
  v15 = *(v2 + 48);
  *a2 = sub_1C5BC8FC4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F78, &qword_1C5BD1E20);
  sub_1C599AF80(&v12, a2 + *(v5 + 44));
  v6 = sub_1C5975558(*(&v12 + 1), v13);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F80, &qword_1C5BD1E28) + 36)) = v6;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F88, &unk_1C5BD1E30) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t _s11MediaCoreUI13DeviceMetricsV6LayoutO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C599BFD4(uint64_t a1)
{
  v2 = *v1;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v2);
  return sub_1C5BCBF94();
}

uint64_t sub_1C599C018()
{
  result = sub_1C5BCA4A4();
  qword_1EC1904C8 = result;
  return result;
}

uint64_t sub_1C599C05C(uint64_t a1)
{
  result = sub_1C5BCA474();
  qword_1EC1904D8 = result;
  return result;
}

uint64_t sub_1C599C0A0@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

uint64_t sub_1C599C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C599E6D0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C599C164()
{
  sub_1C599DCB8();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C599C1A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1C599C1FC()
{
  result = qword_1EC1909F8;
  if (!qword_1EC1909F8)
  {
    sub_1C5BC8974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1909F8);
  }

  return result;
}

uint64_t sub_1C599C248@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v36 = a6;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v37 = a8;
    v38 = a3;
    v39 = a7;
    v40 = a9;
    v41 = a10;
    v42 = a11;
    v18 = sub_1C5BC8974();
    v19 = *(v18 - 8);
    MEMORY[0x1EEE9AC00](v18);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      v34 = v11;
      sub_1C5BCBA94();

      strcpy(v44, "View.task @ ");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      MEMORY[0x1C694F170](a4, v35);
      MEMORY[0x1C694F170](58, 0xE100000000000000);
      v43 = v36;
      v29 = sub_1C5BCBD64();
      MEMORY[0x1C694F170](v29);
    }

    v30 = sub_1C5BCB214();
    v31 = MEMORY[0x1EEE9AC00](v30);
    (*(v33 + 16))(&v34 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v31);

    sub_1C5BC8964();
    MEMORY[0x1C694E550](v21, v41, v18, v42);

    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v22 = sub_1C5BC87B4();
    MEMORY[0x1EEE9AC00](v22);
    v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v25 + 20);
    v27 = sub_1C5BCB214();
    (*(*(v27 - 8) + 16))(&v24[v26], a3, v27);
    *v24 = a7;
    *(v24 + 1) = a8;
    MEMORY[0x1C694E550](v24, a10, v22, a11);
    return sub_1C599C5B0(v24);
  }
}

uint64_t sub_1C599C5B0(uint64_t a1)
{
  v2 = sub_1C5BC87B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1C599C684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599C6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 368) = v3;
  return result;
}

__n128 __swift_memcpy80_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1C599C774(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_1C599C7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1C599C80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C599C878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1C599C8BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1C599C9EC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C694BE20](a1, &v6);
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

uint64_t sub_1C599CA40(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1C694BE30](a1, &v7);
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

uint64_t sub_1C599CAC8(uint64_t a1, id *a2)
{
  result = sub_1C5BCAE54();
  *a2 = 0;
  return result;
}

uint64_t sub_1C599CB40(uint64_t a1, id *a2)
{
  v3 = sub_1C5BCAE64();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C599CBC0@<X0>(uint64_t *a2@<X8>)
{
  sub_1C5BCAE74();
  v3 = sub_1C5BCAE44();

  *a2 = v3;
  return result;
}

uint64_t sub_1C599CC14(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError, &unk_1C5BD1C50);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C599CC80(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError, &unk_1C5BD1C50);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C599CCEC(void *a1, uint64_t a2)
{
  v4 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError, &unk_1C5BD1C50);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C599CDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError, &unk_1C5BD1C50);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C599CE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5BCBF54();
  sub_1C5BCAD44();
  return sub_1C5BCBF94();
}

uint64_t sub_1C599CF20(uint64_t a1, uint64_t a2)
{
  sub_1C5BCBF54();
  swift_getWitnessTable();
  sub_1C5BC7C34();
  return sub_1C5BCBF94();
}

_DWORD *sub_1C599CF88@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C599CF98(uint64_t a1)
{
  sub_1C599D80C(&qword_1EC190F18, type metadata accessor for CAGradientLayerType, &unk_1C5BD1A60);
  sub_1C599D80C(&qword_1EC190F20, type metadata accessor for CAGradientLayerType, &unk_1C5BD1A00);

  return sub_1C5BCBC94();
}

double sub_1C599D054@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C599D060(uint64_t a1)
{
  sub_1C599D80C(&qword_1EC190FE0, type metadata accessor for Weight, &unk_1C5BD10F0);
  sub_1C599D80C(&qword_1EC190FE8, type metadata accessor for Weight, &unk_1C5BD1090);
  sub_1C599F060();
  return sub_1C5BCBC94();
}

uint64_t sub_1C599D128(uint64_t a1)
{
  sub_1C599D80C(&qword_1EC190F58, type metadata accessor for TraitKey, &unk_1C5BD145C);
  sub_1C599D80C(&unk_1EC190F60, type metadata accessor for TraitKey, &unk_1C5BD13FC);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D1E4(uint64_t a1)
{
  sub_1C599D80C(&qword_1EDA4E0C8, type metadata accessor for AttributeName, &unk_1C5BD1D60);
  sub_1C599D80C(&qword_1EC190F50, type metadata accessor for AttributeName, &unk_1C5BD1554);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D2A0(uint64_t a1)
{
  sub_1C599D80C(&qword_1EC190F38, type metadata accessor for Name, &unk_1C5BD16C8);
  sub_1C599D80C(&unk_1EC190F40, type metadata accessor for Name, &unk_1C5BD1668);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D35C(uint64_t a1)
{
  sub_1C599D80C(&qword_1EC191088, type metadata accessor for Key, &unk_1C5BD2184);
  sub_1C599D80C(&qword_1EC191090, type metadata accessor for Key, &unk_1C5BD20D8);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D418(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F20, type metadata accessor for AVError, &unk_1C5BD1840);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C599D484(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F20, type metadata accessor for AVError, &unk_1C5BD1840);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C599D4F0(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError, &unk_1C5BD1C50);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C599D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError, &unk_1C5BD1C50);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C599D5E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C599D64C(uint64_t a1)
{
  sub_1C599D80C(&qword_1EDA4E610, type metadata accessor for Option, &unk_1C5BD1DA4);
  sub_1C599D80C(&qword_1EC190F70, type metadata accessor for Option, &unk_1C5BD12AC);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D708(uint64_t a1)
{
  sub_1C599D80C(&qword_1EDA4E140, type metadata accessor for CIImageOption, &unk_1C5BD0AA8);
  sub_1C599D80C(&qword_1EC190DC8, type metadata accessor for CIImageOption, &unk_1C5BD039C);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C599D89C(uint64_t a1)
{
  sub_1C599D80C(&qword_1EC190DB0, type metadata accessor for NSKeyValueChangeKey, &unk_1C5BD0A64);
  sub_1C599D80C(&unk_1EC190DB8, type metadata accessor for NSKeyValueChangeKey, &unk_1C5BD04BC);

  return sub_1C5BCBC94();
}

unint64_t sub_1C599DCB8()
{
  result = qword_1EC190DA8;
  if (!qword_1EC190DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190DA8);
  }

  return result;
}

uint64_t sub_1C599DD0C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C5BCAE44();

  *a2 = v3;
  return result;
}

uint64_t sub_1C599DD54(uint64_t a1)
{
  sub_1C599D80C(&qword_1EC190F28, type metadata accessor for URLResourceKey, &unk_1C5BD1C0C);
  sub_1C599D80C(&qword_1EC190F30, type metadata accessor for URLResourceKey, &unk_1C5BD18EC);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599DE18()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1C69501C0](*&v1);
}

uint64_t sub_1C599DE6C()
{
  v0 = sub_1C5BCAE74();
  v1 = MEMORY[0x1C694F1E0](v0);

  return v1;
}

uint64_t sub_1C599DEA8(uint64_t a1)
{
  sub_1C5BCAE74();
  sub_1C5BCAF04();
}

uint64_t sub_1C599DEFC(uint64_t a1)
{
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v1 = sub_1C5BCBF94();

  return v1;
}

uint64_t sub_1C599DF84(void *a1, uint64_t *a2)
{
  v2 = sub_1C5BCAE74();
  v4 = v3;
  if (v2 == sub_1C5BCAE74() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C5BCBDE4();
  }

  return v7 & 1;
}

uint64_t sub_1C599E00C(uint64_t a1)
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

unint64_t sub_1C599E044()
{
  result = qword_1EC190DD0;
  if (!qword_1EC190DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190DD0);
  }

  return result;
}

unint64_t sub_1C599E098()
{
  result = qword_1EC190DD8;
  if (!qword_1EC190DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190DD8);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1C599E130(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E150(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C599E1EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E20C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for WaveformTheme.ArtworkTreatment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrubberSensitivityInteractionDirection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrubberSensitivityInteractionDirection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C599E3DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C599E424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1C599E49C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E4BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C599E52C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E54C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1C599E6D0()
{
  result = qword_1EC190E58;
  if (!qword_1EC190E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190E58);
  }

  return result;
}

unint64_t sub_1C599EDFC()
{
  result = qword_1EC190EF8;
  if (!qword_1EC190EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190EF8);
  }

  return result;
}

unint64_t sub_1C599EF70()
{
  result = qword_1EC190F10;
  if (!qword_1EC190F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190F10);
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

unint64_t sub_1C599F00C()
{
  result = qword_1EC190FB0;
  if (!qword_1EC190FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190FB0);
  }

  return result;
}

unint64_t sub_1C599F060()
{
  result = qword_1EC190FF0;
  if (!qword_1EC190FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190FF0);
  }

  return result;
}

unint64_t sub_1C599F100()
{
  result = qword_1EC191018;
  if (!qword_1EC191018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190F88, &unk_1C5BD1E30);
    sub_1C599F18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191018);
  }

  return result;
}

unint64_t sub_1C599F18C()
{
  result = qword_1EC191020;
  if (!qword_1EC191020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190F80, &qword_1C5BD1E28);
    sub_1C5924F54(&qword_1EC191028, &unk_1EC191030, &qword_1C5BD1F68, MEMORY[0x1E69817F8]);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040, &qword_1C5BD1F70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191020);
  }

  return result;
}

unint64_t sub_1C599F2B4()
{
  result = qword_1EC196470;
  if (!qword_1EC196470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196470);
  }

  return result;
}

unint64_t sub_1C599F30C()
{
  result = qword_1EC191060;
  if (!qword_1EC191060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191060);
  }

  return result;
}

unint64_t sub_1C599F364()
{
  result = qword_1EC191068;
  if (!qword_1EC191068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191068);
  }

  return result;
}

unint64_t sub_1C599F4A0()
{
  result = qword_1EC191098;
  if (!qword_1EC191098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191098);
  }

  return result;
}

uint64_t sub_1C599F598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0, &qword_1C5BD26F0);
  sub_1C5BCA834();
  return v1;
}

uint64_t sub_1C599F5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[2] = a1;
  v22[3] = a3;
  swift_getWitnessTable();
  sub_1C5BC9394();
  v5 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168, &qword_1C5BD2220);
  v6 = sub_1C5BC8AB4();
  v28 = *(a2 + 24);
  v7 = v28;
  v29 = sub_1C5924F54(qword_1EC191318, &qword_1EC191168, &qword_1C5BD2220, MEMORY[0x1E6980A18]);
  v22[1] = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Popover(255, v6, WitnessTable, v9);
  sub_1C5BC8AB4();
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x1E69805B0];
  swift_getWitnessTable();
  v22[0] = sub_1C5BC92A4();
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v22[6] = v5;
  v22[7] = v7;
  v23 = v3;
  sub_1C5BCAA54();
  v17 = swift_getWitnessTable();
  sub_1C5BC9CE4();
  v18 = swift_getWitnessTable();
  v24 = v17;
  v25 = v18;
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v19);
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1C593EDC0(v16, v10, v19);
  return (v20)(v16, v10);
}

uint64_t sub_1C599F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = type metadata accessor for PopoverViewModifier(0, a2, a3, a4);
  v7 = sub_1C599F598();
  v32 = v8;
  v33 = v7;
  v27 = v9;
  v31 = *(a1 + 24);
  v30 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v28 = *(a1 + 80);
  v29 = *(a1 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(a1 + 80);
  *(v14 + 96) = *(a1 + 64);
  *(v14 + 112) = v15;
  *(v14 + 128) = *(a1 + 96);
  v16 = *(a1 + 16);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v16;
  v17 = *(a1 + 48);
  *(v14 + 64) = *(a1 + 32);
  *(v14 + 80) = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168, &qword_1C5BD2220);
  v18 = sub_1C5BC8AB4();
  v41 = a3;
  v42 = sub_1C5924F54(qword_1EC191318, &qword_1EC191168, &qword_1C5BD2220, MEMORY[0x1E6980A18]);
  WitnessTable = swift_getWitnessTable();
  *&v51 = v33;
  *(&v51 + 1) = v32;
  LOBYTE(v52) = v27 & 1;
  *(&v52 + 1) = v31;
  LOBYTE(v53) = v30;
  *(&v53 + 1) = v11;
  *&v54 = v10;
  *(&v54 + 1) = v12;
  *&v55 = v13;
  *(&v55 + 1) = v29;
  *v56 = v28;
  *&v56[8] = sub_1C59A5638;
  *&v56[16] = v14;
  v20 = v10;

  sub_1C5974668(v12, v13);
  sub_1C5974668(v29, v28);
  (*(*(v34 - 8) + 16))(&v57, a1);
  v22 = type metadata accessor for Popover(0, v18, WitnessTable, v21);
  swift_getWitnessTable();
  sub_1C5BC9FA4();
  v49[4] = v55;
  v49[5] = *v56;
  v50 = v14;
  v49[0] = v51;
  v49[1] = v52;
  v49[2] = v53;
  v49[3] = v54;
  (*(*(v22 - 8) + 8))(v49, v22);
  v39 = v61;
  v40[0] = v62[0];
  *(v40 + 9) = *(v62 + 9);
  v35 = v57;
  v36 = v58;
  v37 = v59;
  v38 = v60;
  v23 = sub_1C5BC8AB4();
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(&v35, v23, v24);
  v55 = v39;
  *v56 = v40[0];
  *&v56[9] = *(v40 + 9);
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v25 = *(*(v23 - 8) + 8);
  v25(&v51, v23);
  v39 = v47;
  v40[0] = v48[0];
  *(v40 + 9) = *(v48 + 9);
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  sub_1C593EDC0(&v35, v23, v24);
  v61 = v39;
  v62[0] = v40[0];
  *(v62 + 9) = *(v40 + 9);
  v57 = v35;
  v58 = v36;
  v59 = v37;
  v60 = v38;
  return (v25)(&v57, v23);
}

uint64_t sub_1C599FCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8, qword_1C5BD6F70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v26 - v8;
  v26[0] = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168, &qword_1C5BD2220);
  v13 = sub_1C5BC8AB4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - v19;
  (*(a1 + 88))(v18);
  swift_getKeyPath(aP_16);
  v21 = sub_1C5BCA9E4();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_1C5BC9DF4();

  sub_1C59A5644(v9);
  (*(v26[0] + 8))(v12, a2);
  v22 = sub_1C5924F54(qword_1EC191318, &qword_1EC191168, &qword_1C5BD2220, MEMORY[0x1E6980A18]);
  v26[2] = a3;
  v26[3] = v22;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v16, v13, WitnessTable);
  v24 = *(v14 + 8);
  v24(v16, v13);
  sub_1C593EDC0(v20, v13, WitnessTable);
  return (v24)(v20, v13);
}

uint64_t sub_1C59A0020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8, qword_1C5BD6F70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C59400B0(a1, &v9 - v6, &qword_1EC1914B8, qword_1C5BD6F70);
  sub_1C59400B0(v7, v4, &qword_1EC1914B8, qword_1C5BD6F70);
  sub_1C59A57CC();
  sub_1C5BC8F54();
  return sub_1C59A5644(v7);
}

uint64_t sub_1C59A011C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8, &qword_1C5BD2728);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C59400B0(v2, &v14 - v9, &qword_1EC1914C8, &qword_1C5BD2728);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C5BC9114();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C59A0368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = *(a1 + 16);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - v7;
  v35 = v8;
  v42 = *(v8 + 24);
  v9 = sub_1C5BC81E4();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v34 - v13;
  v14 = sub_1C5BC9114();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5BC92D4();
  v40 = *(v18 - 8);
  v41 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = v2;
  sub_1C59A011C(v17);
  v22 = sub_1C5BC9104();
  v23 = (*(v15 + 8))(v17, v14);
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v23);
    v24 = v42;
    *(&v34 - 4) = v3;
    *(&v34 - 3) = v24;
    *(&v34 - 2) = v21;
    sub_1C5BC9874();
    sub_1C5BC81F4();
    WitnessTable = swift_getWitnessTable();
    v26 = v36;
    sub_1C593EDC0(v11, v9, WitnessTable);
    v27 = *(v38 + 8);
    v27(v11, v9);
    sub_1C593EDC0(v26, v9, WitnessTable);
    sub_1C5950E54(v11, v9, v3, WitnessTable, v24);
    v27(v11, v9);
    v27(v26, v9);
  }

  else
  {
    (*(v21 + *(v35 + 36)))(v23);
    v28 = v37;
    v24 = v42;
    sub_1C593EDC0(v5, v3, v42);
    v29 = *(v39 + 8);
    v29(v5, v3);
    sub_1C593EDC0(v28, v3, v24);
    v30 = swift_getWitnessTable();
    sub_1C5941738(v5, v9, v3, v30, v24);
    v29(v5, v3);
    v29(v28, v3);
  }

  v44 = swift_getWitnessTable();
  v45 = v24;
  v31 = v41;
  v32 = swift_getWitnessTable();
  sub_1C593EDC0(v20, v31, v32);
  return (*(v40 + 8))(v20, v31);
}

uint64_t sub_1C59A0864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v15 = type metadata accessor for AXPopoverContainer(0, v12, v13, v14);
  (*(a1 + *(v15 + 36)))();
  sub_1C593EDC0(v8, a2, a3);
  v16 = *(v6 + 8);
  v16(v8, a2);
  sub_1C593EDC0(v11, a2, a3);
  return (v16)(v11, a2);
}

uint64_t sub_1C59A09C4@<X0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(aX_5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8, &qword_1C5BD2728);

  return swift_storeEnumTagMultiPayload();
}

id sub_1C59A0A28(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for Popover.Coordinator(0, v4, *(v8 + 24), v9);
  v10 = *(v1 + 88);
  v11 = *(a1 - 8);
  v12 = (*(v11 + 16))(v18, v1, a1);
  v10(v12);
  v15 = sub_1C59A3D2C(v1, v7, v13, v14);
  (*(v5 + 8))(v7, v4);
  (*(v11 + 8))(v2, a1);
  return v15;
}

void sub_1C59A0B98(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v113 = a1;
  v112 = sub_1C5BC7DC4();
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1C5BC8284();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - v10;
  v106 = sub_1C5BC8F34();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0, &unk_1C5BD2460);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v115 = (&v100 - v13);
  v14 = *(a3 + 16);
  v114 = *(a3 + 24);
  v16 = type metadata accessor for AXPopoverContainer(0, v14, v114, v15);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v20);
  swift_getWitnessTable();
  sub_1C5BC9834();
  sub_1C5BC9814();
  v21 = v117;
  v22 = *(v117 + qword_1EC191190);

  (*(v4 + 88))();
  sub_1C5BC91B4();

  sub_1C5BC9814();
  v23 = aBlock[0];
  v24 = *(aBlock[0] + qword_1EC191188);

  v25 = swift_allocObject();
  v26 = v114;
  *(v25 + 16) = v14;
  *(v25 + 24) = v26;
  v27 = *(v4 + 80);
  *(v25 + 96) = *(v4 + 64);
  *(v25 + 112) = v27;
  *(v25 + 128) = *(v4 + 96);
  v28 = *(v4 + 16);
  *(v25 + 32) = *v4;
  *(v25 + 48) = v28;
  v29 = *(v4 + 48);
  *(v25 + 64) = *(v4 + 32);
  *(v25 + 80) = v29;
  v30 = v115;
  sub_1C59A09C4(v115);
  sub_1C59A56EC(v30, v19);
  v31 = &v19[*(v17 + 44)];
  *v31 = sub_1C59A575C;
  v31[1] = v25;
  v32 = *(*(a3 - 8) + 16);
  v103 = a3;
  v102 = v32;
  v32(&v117, v4, a3);
  sub_1C5BC91B4();

  sub_1C5BC9814();
  v33 = v117;
  v34 = *(v4 + 72);
  v35 = *(v4 + 80);
  v115 = v4;
  sub_1C5974668(v34, v35);
  v36 = &v33[qword_1EC1911A0];
  v37 = *&v33[qword_1EC1911A0];
  v38 = *&v33[qword_1EC1911A0 + 8];
  v101 = v34;
  *v36 = v34;
  v36[1] = v35;
  v100 = v35;
  sub_1C59261FC(v37, v38);

  v114 = a2;
  sub_1C5BC9814();
  v39 = v117;
  v40 = *(v117 + qword_1EC191188);

  if (_UISolariumEnabled())
  {
    v41 = v40;
    v42 = v104;
    sub_1C5BC9824();
    v43 = v107;
    sub_1C5BC8CD4();
    (*(v105 + 8))(v42, v106);
    v44 = v109;
    v45 = v108;
    v46 = v110;
    (*(v109 + 104))(v108, *MEMORY[0x1E697DBA8], v110);
    sub_1C5BC8274();
    v47 = *(v44 + 8);
    v47(v45, v46);
    v47(v43, v46);
    sub_1C5BCB534();
    sub_1C5BC7D94();
    sub_1C5BCB544();
  }

  v117 = *v115;
  v118 = *(v115 + 16);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0, &qword_1C5BD26F0);
  MEMORY[0x1C694EA50](aBlock, v48);
  v49 = v113;
  if (LOBYTE(aBlock[0]) != 1)
  {
    goto LABEL_26;
  }

  v50 = [v113 presentedViewController];
  if (v50)
  {

    goto LABEL_26;
  }

  v51 = v40;
  [v51 setModalPresentationStyle_];
  v52 = [v51 popoverPresentationController];
  if (v52)
  {
    v53 = v52;
    sub_1C5BC9814();
    v54 = v117;
    [v53 setDelegate_];
  }

  v55 = [v51 popoverPresentationController];
  if (v55)
  {
    v56 = v55;
    v57 = [v49 view];
    [v56 setSourceView_];
  }

  v58 = [v51 popoverPresentationController];
  if (v58)
  {
    v59 = v58;
    v60 = [v49 view];
    if (!v60)
    {
      __break(1u);
      goto LABEL_38;
    }

    v61 = v60;
    [v60 bounds];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;

    [v59 setSourceRect_];
  }

  v70 = [v51 popoverPresentationController];
  if (v70)
  {
    v71 = v70;
    [v70 setPermittedArrowDirections_];
  }

  v72 = [v51 popoverPresentationController];
  if (v72)
  {
    v73 = v72;
    sub_1C59A2648();
    v74 = sub_1C5BCB044();
    [v73 setPassthroughViews_];
  }

  v75 = [v51 popoverPresentationController];
  if (v75)
  {
    v76 = v75;
    v77 = v115[6];
    if (v77)
    {
      [v77 safeAreaInsets];
    }

    else
    {
      v80 = 10.0;
      v79 = 19.0;
      v78 = 30.0;
      v81 = 19.0;
    }

    [v76 setPopoverLayoutMargins_];
  }

  v82 = v51;
  if (!_UISolariumEnabled())
  {
    goto LABEL_25;
  }

  v83 = [v51 view];

  if (!v83)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v82 = [objc_opt_self() clearColor];
  [v83 setBackgroundColor_];

LABEL_25:
  v84 = swift_allocObject();
  v85 = v115;
  v86 = *(v115 + 5);
  *(v84 + 80) = *(v115 + 4);
  *(v84 + 96) = v86;
  v87 = v85[12];
  v88 = *(v85 + 1);
  *(v84 + 16) = *v85;
  *(v84 + 32) = v88;
  v89 = *(v85 + 3);
  *(v84 + 48) = *(v85 + 2);
  *(v84 + 64) = v89;
  *(v84 + 112) = v87;
  *(v84 + 120) = v51;
  aBlock[4] = sub_1C59A5784;
  aBlock[5] = v84;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor;
  v90 = _Block_copy(aBlock);
  v102(&v117, v85, v103);
  v91 = v51;

  [v49 presentViewController:v91 animated:1 completion:v90];
  _Block_release(v90);
LABEL_26:
  v117 = *v115;
  v118 = *(v115 + 16);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0, &qword_1C5BD26F0);
  MEMORY[0x1C694EA50](aBlock, v92);
  if (aBlock[0])
  {
    goto LABEL_36;
  }

  v93 = [v49 presentedViewController];
  if (!v93)
  {
    goto LABEL_36;
  }

  v94 = v93;
  sub_1C5BC9814();
  v95 = *(v117 + qword_1EC191180);

  if (v95 == 2)
  {

    return;
  }

  if (v95)
  {
LABEL_35:

LABEL_36:
    return;
  }

  sub_1C5BC9814();
  v96 = v117;
  *(v117 + qword_1EC191180) = 1;

  v97 = v101;
  if (!v101)
  {
LABEL_34:
    [v49 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_35;
  }

  v98 = [v94 view];
  if (v98)
  {
    v99 = v98;
    v97();

    goto LABEL_34;
  }

LABEL_39:
  __break(1u);
}

void sub_1C59A1708(__int128 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Popover(0, *(*((*MEMORY[0x1E69E7D40] & *a2) + *MEMORY[0x1E697C5F8]) + 16), *(*((*MEMORY[0x1E69E7D40] & *a2) + *MEMORY[0x1E697C5F8]) + 24), a4);
  v11 = *a1;
  v12 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0, &qword_1C5BD26F0);
  MEMORY[0x1C694EA50](&v10, v6);
  if (v10 == 1)
  {
    v7 = *(a1 + 7);
    if (v7)
    {
      v8 = [a2 view];
      if (v8)
      {
        v9 = v8;
        v7();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1C59A1804(void *a1, uint64_t a2)
{
  v8 = [a1 presentedViewController];
  if (v8)
  {
    *(a2 + qword_1EC191180) = 1;
    v4 = *(a2 + qword_1EC1911A0);
    if (v4)
    {
      v5 = *(a2 + qword_1EC1911A0 + 8);
      sub_1C5974668(v4, v5);
      v6 = [v8 view];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v4();
      sub_1C59261FC(v4, v5);
    }

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1C59A1924(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EC1911A0);
  v4 = *(v2 + qword_1EC1911A0);
  v5 = *(v2 + qword_1EC1911A0 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1C59261FC(v4, v5);
}

id sub_1C59A1944(void *a1)
{
  v2 = v1;
  v3 = [a1 sourceView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v16.origin.x = v7;
      v16.origin.y = v9;
      v16.size.width = v11;
      v16.size.height = v13;
      CGRectGetWidth(v16);
    }
  }

  v14 = *(v2 + qword_1EC191188);
  sub_1C5BC9164();
  result = [v14 setPreferredContentSize_];
  *(v2 + qword_1EC191180) = 0;
  return result;
}

void sub_1C59A1A48(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C59A1944(v4);
}

void sub_1C59A1AB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  *(v4 + qword_1EC191180) = 1;
  v8 = *(v4 + qword_1EC191198 + 72);
  type metadata accessor for Popover(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0, &qword_1C5BD26F0);
  sub_1C5BCA824();
  if (v8)
  {
    v9 = [a1 presentedViewController];
    v10 = [v9 view];

    if (v10)
    {
      v8(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C59A1BD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  sub_1C59A1AB0(v4, v7, v5, v6);
}

id sub_1C59A1CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Popover.Coordinator(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1C59A1D20(uint64_t a1)
{
  v2 = *(a1 + qword_1EC191198 + 48);
  v3 = *(a1 + qword_1EC191198 + 56);
  v4 = *(a1 + qword_1EC191198 + 64);
  v5 = *(a1 + qword_1EC191198 + 72);
  v6 = *(a1 + qword_1EC191198 + 80);

  sub_1C59261FC(v3, v4);
  sub_1C59261FC(v5, v6);

  v7 = *(a1 + qword_1EC1911A0);
  v8 = *(a1 + qword_1EC1911A0 + 8);

  return sub_1C59261FC(v7, v8);
}

id sub_1C59A1DF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD258]);

  return [v0 init];
}

id sub_1C59A1E88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C59A0A28(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C59A1F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C59A1F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1C59A2010(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1C5BC9784();
  __break(1u);
}

uint64_t PopoverHostingControllerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath(aP_16);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191160, &qword_1C5BD2218) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191168, &qword_1C5BD2220) + 28);
  v7 = sub_1C5BCA9E4();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *v5 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC191170, &qword_1C5BD2228);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_1C59A2160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath(aP_16);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191160, &qword_1C5BD2218) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191168, &qword_1C5BD2220) + 28);
  v7 = sub_1C5BCA9E4();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *v5 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC191170, &qword_1C5BD2228);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_1C59A2270()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 24);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C59A22F0(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 24);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C59A2418()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 32);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C59A2498(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 32);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C59A25C0()
{
  v1 = [v0 popoverPresentationController];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = [v1 passthroughViews];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C59A2648();
  v4 = sub_1C5BCB054();

  return v4;
}

unint64_t sub_1C59A2648()
{
  result = qword_1EDA4E078;
  if (!qword_1EDA4E078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E078);
  }

  return result;
}

void sub_1C59A2694(uint64_t a1)
{
  v2 = [v1 popoverPresentationController];
  if (v2)
  {
    v3 = v2;
    sub_1C59A2648();
    v4 = sub_1C5BCB044();

    [v3 setPassthroughViews_];
  }

  else
  {
  }
}

void (*sub_1C59A274C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C59A25C0();
  return sub_1C59A2794;
}

void sub_1C59A2794(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1C59A2694(v2);
  }

  else
  {
    sub_1C59A2694(*a1);
  }
}

void sub_1C59A27EC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v5 = [v1 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + v3);
    [v6 setSourceView_];
  }

  v8 = [v1 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    v10 = *(v1 + v3);
    if (v10)
    {
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = sub_1C59A2CB0();
      v21 = UIEdgeInsetsInsetRect(v12, v14, v16, v18, v19, v20);
    }

    else
    {
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
    }

    [v9 setSourceRect_];
  }
}

void *sub_1C59A297C()
{
  v0 = sub_1C59A3DBC();
  v1 = v0;
  return v0;
}

void sub_1C59A29A8(void *a1)
{
  sub_1C59A3E3C(a1);
}

void (*sub_1C59A29E0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1C59A2AB8;
}

void sub_1C59A2AB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1C59A3E3C(v3);

    v3 = *v4;
  }

  else
  {
    sub_1C59A3E3C(*(*a1 + 24));
  }

  free(v2);
}

void sub_1C59A2B34(__n128 a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PopoverViewController + 48));
  swift_beginAccess();
  *&v7.f64[0] = a1.n128_u64[0];
  v7.f64[1] = a2;
  v8.f64[0] = a3;
  v8.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v6, v7), vceqq_f64(v6[1], v8)))) & 1) == 0)
  {
    v9 = [v4 popoverPresentationController];
    if (v9)
    {
      v10 = v9;
      v11 = *((*v5 & *v4) + class metadata base offset for PopoverViewController + 40);
      swift_beginAccess();
      v12 = *(v4 + v11);
      if (v12)
      {
        [v12 frame];
        v17 = UIEdgeInsetsInsetRect(v13, v14, v15, v16, v6->f64[0], v6->f64[1]);
      }

      else
      {
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
        v20 = 0.0;
      }

      [v10 setSourceRect_];
    }
  }
}

double sub_1C59A2CB0()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 48);
  swift_beginAccess();
  return *v1;
}

void sub_1C59A2D38(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PopoverViewController + 48));
  swift_beginAccess();
  v10.n128_u64[0] = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  *v9 = a1;
  *(v9 + 1) = a2;
  *(v9 + 2) = a3;
  *(v9 + 3) = a4;
  sub_1C59A2B34(v10, v11, v12, v13);
}

void (*sub_1C59A2DEC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 48));
  swift_beginAccess();
  v6 = v5[1];
  *v4 = *v5;
  v4[1] = v6;
  return sub_1C59A2EC0;
}

void sub_1C59A2EC0(double **a1)
{
  v1 = *a1;
  sub_1C59A2D38(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

uint64_t sub_1C59A2F04@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1C59A3EDC();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = sub_1C59A57A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_1C5974668(v2, v3);
}

uint64_t sub_1C59A2F98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C59A579C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C5974668(v1, v2);
  return sub_1C59A305C(v4, v3);
}

uint64_t sub_1C59A3028()
{
  v0 = sub_1C59A3EDC();
  sub_1C5974668(v0, v1);
  return v0;
}

uint64_t sub_1C59A305C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for PopoverViewController + 56));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1C59261FC(v6, v7);
}

void *PopoverViewController.__allocating_init(rootView:sourceView:sourceRectInsets:)(uint64_t a1, void *a2, int8x16_t *a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = sub_1C59A3F60(a1, a2, a3);

  (*(*(*(v4 + class metadata base offset for PopoverViewController) - 8) + 8))(a1);
  return v9;
}

void *PopoverViewController.init(rootView:sourceView:sourceRectInsets:)(uint64_t a1, void *a2, int8x16_t *a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = sub_1C59A3F60(a1, a2, a3);

  (*(*(*(v6 + class metadata base offset for PopoverViewController) - 8) + 8))(a1);
  return v7;
}

id PopoverViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1C59A3398(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C59A482C();
}

void sub_1C59A33F8()
{
  [v0 preferredContentSize];
  if (v1 != 1.79769313e308)
  {
    [v0 preferredContentSize];
    if (v2 != 0.0)
    {
      v3 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 32);
      swift_beginAccess();
      if (*(v0 + v3) == 1)
      {
        [v0 preferredContentSize];
        sub_1C5BC9164();
        [v0 setPreferredContentSize_];
      }
    }
  }
}

uint64_t sub_1C59A35D4()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = (v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 56));
  v3 = *v2;
  v4 = v2[1];

  return sub_1C59261FC(v3, v4);
}

id PopoverViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PopoverViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PopoverViewController), *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PopoverViewController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1C59A3750(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = (a1 + *((*v2 & *a1) + class metadata base offset for PopoverViewController + 56));
  v4 = *v3;
  v5 = v3[1];

  return sub_1C59261FC(v4, v5);
}

uint64_t View.popover<A>(isPresented:permittedArrowDirections:isDismissable:passthroughViews:containerView:onAppear:onDismiss:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *&v20 = a1;
  *(&v20 + 1) = a2;
  LOBYTE(v21) = a3;
  *(&v21 + 1) = a4;
  LOBYTE(v22) = a5;
  *(&v22 + 1) = a6;
  *&v23 = a7;
  *(&v23 + 1) = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v16 = a7;

  sub_1C5974668(a8, a9);
  sub_1C5974668(*(&a9 + 1), a10);
  v18 = type metadata accessor for PopoverViewModifier(0, a13, a15, v17);

  MEMORY[0x1C694E550](&v20, a12, v18, a14);
  v27[4] = v24;
  v27[5] = v25;
  v28 = v26;
  v27[0] = v20;
  v27[1] = v21;
  v27[2] = v22;
  v27[3] = v23;
  return (*(*(v18 - 8) + 8))(v27, v18);
}

id sub_1C59A39B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0, &unk_1C5BD2460);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = (v36 - v8);
  v9 = *((v6 & v5) + 0x50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  v14 = *((v6 & v5) + 0x58);
  v16 = type metadata accessor for AXPopoverContainer(0, v9, v14, v15);
  MEMORY[0x1EEE9AC00](v16);
  v38 = v36 - v17;
  *(v3 + qword_1EC191180) = 2;
  v18 = (v3 + qword_1EC1911A0);
  *v18 = 0;
  v18[1] = 0;
  v19 = v3 + qword_1EC191198;
  v20 = *(a1 + 80);
  *(v19 + 4) = *(a1 + 64);
  *(v19 + 5) = v20;
  *(v19 + 12) = *(a1 + 96);
  v21 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 1) = v21;
  v22 = *(a1 + 48);
  *(v19 + 2) = *(a1 + 32);
  *(v19 + 3) = v22;
  swift_getWitnessTable();
  v23 = sub_1C5BC91C4();
  v24 = *(v10 + 16);
  v36[1] = v23;
  v37 = v24;
  v24(v13, v40, v9);
  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v9;
  *(v26 + 24) = v14;
  (*(v10 + 32))(v26 + v25, v13, v9);
  v27 = v39;
  sub_1C59A09C4(v39);
  v28 = v27;
  v29 = v38;
  sub_1C59A56EC(v28, v38);
  v30 = (v29 + *(v16 + 36));
  *v30 = sub_1C59A56AC;
  v30[1] = v26;
  v32 = type metadata accessor for Popover(0, v9, v14, v31);
  (*(*(v32 - 8) + 16))(v42, a1, v32);
  *(v3 + qword_1EC191188) = sub_1C5BC9194();
  sub_1C5BC91C4();
  v37(v13, v40, v9);
  *(v3 + qword_1EC191190) = sub_1C5BC9194();
  v34 = type metadata accessor for Popover.Coordinator(0, v9, v14, v33);
  v41.receiver = v3;
  v41.super_class = v34;
  return objc_msgSendSuper2(&v41, sel_init);
}

uint64_t sub_1C59A3DBC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C59A3E3C(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1C59A27EC(v4);
}

uint64_t sub_1C59A3EDC()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 56);
  swift_beginAccess();
  return *v1;
}

void *sub_1C59A3F60(uint64_t a1, void *a2, int8x16_t *a3)
{
  v4 = v3;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E7D40];
  v65 = (*MEMORY[0x1E69E7D40] & *v4);
  v8 = sub_1C5BC9804();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v65[class metadata base offset for PopoverViewController];
  v11 = *&v65[class metadata base offset for PopoverViewController];
  v12 = sub_1C5BC8AB4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v58 - v13;
  v14 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  *(v4 + *(v10 + 3)) = 1;
  *(v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 32)) = 1;
  v18 = *((*v7 & *v4) + class metadata base offset for PopoverViewController + 40);
  *(v4 + v18) = 0;
  v19 = (v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 48));
  v20 = a3[1];
  v62 = *a3;
  v63 = v20;
  v22 = *MEMORY[0x1E69DDCE0];
  v61 = *(MEMORY[0x1E69DDCE0] + 16);
  v21 = v61;
  v60 = v22;
  *v19 = v22;
  v19[1] = v21;
  v23 = (v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 56));
  *v23 = 0;
  v23[1] = 0;
  swift_beginAccess();
  *(v4 + v18) = a2;
  if (a3[2].i8[0])
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  v25 = vdupq_n_s64(v24);
  v62 = vbslq_s8(v25, v60, v62);
  v63 = vbslq_s8(v25, v61, v63);
  swift_beginAccess();
  v26 = v63;
  *v19 = v62;
  v19[1] = v26;
  sub_1C5BC91C4();
  (*(v14 + 16))(v17, v66, v11);
  v63.i64[0] = a2;
  v65 = a2;
  v27 = sub_1C5BC9194();
  *(v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 16)) = v27;
  v28 = v27;
  sub_1C5BC9164();

  MEMORY[0x1C694E550]();
  v29 = sub_1C5BC91A4();
  sub_1C5BC97F4();
  sub_1C5BC9174();
  sub_1C5BC9164();
  [v29 setPreferredContentSize_];
  [v29 setModalPresentationStyle_];
  v30 = [v29 popoverPresentationController];

  if (v30)
  {
    [v30 setDelegate_];
  }

  v31 = [v29 popoverPresentationController];
  v32 = v65;
  [v31 setSourceView_];

  v33 = [v29 popoverPresentationController];
  if (v33)
  {
    v34 = v33;
    if (v63.i64[0])
    {
      [v32 bounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = (v29 + *((*v7 & *v29) + class metadata base offset for PopoverViewController + 48));
      swift_beginAccess();
      v44 = UIEdgeInsetsInsetRect(v36, v38, v40, v42, *v43, v43[1]);
    }

    else
    {
      v44 = 0.0;
      v45 = 0.0;
      v46 = 0.0;
      v47 = 0.0;
    }

    [v34 setSourceRect_];
  }

  if (!_UISolariumEnabled())
  {
    goto LABEL_14;
  }

  result = [v29 view];
  if (result)
  {
    v49 = result;
    v50 = [objc_opt_self() clearColor];
    [v49 setBackgroundColor_];

LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0, &unk_1C5BD2730);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1C5BD21E0;
    v52 = sub_1C5BC7E34();
    v53 = MEMORY[0x1E69DC2B0];
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    v54 = sub_1C5BC7E14();
    v55 = MEMORY[0x1E69DC130];
    *(v51 + 48) = v54;
    *(v51 + 56) = v55;
    v56 = sub_1C5BC7DF4();
    v57 = MEMORY[0x1E69DC0C8];
    *(v51 + 64) = v56;
    *(v51 + 72) = v57;
    *(swift_allocObject() + 16) = ObjectType;
    sub_1C5BCB554();
    swift_unknownObjectRelease();

    return v29;
  }

  __break(1u);
  return result;
}

void _s11MediaCoreUI21PopoverViewControllerC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 24)) = 1;
  *(v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 32)) = 1;
  *(v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 40)) = 0;
  v2 = (v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 48));
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  v4 = (v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 56));
  *v4 = 0;
  v4[1] = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

void (*sub_1C59A482C())(uint64_t)
{
  result = sub_1C59A3EDC();
  if (result)
  {
    v2 = result;
    v3 = v1;

    v2(v4);

    return sub_1C59261FC(v2, v3);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PopoverHostingControllerModifier(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PopoverHostingControllerModifier(_WORD *result, int a2, int a3)
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

uint64_t dispatch thunk of PopoverViewController.__allocating_init(rootView:sourceView:sourceRectInsets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + class metadata base offset for PopoverViewController + 208);
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, a2, v8);
}

unint64_t sub_1C59A5208()
{
  result = qword_1EC191308;
  if (!qword_1EC191308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191160, &qword_1C5BD2218);
    sub_1C5924F54(&qword_1EC191310, &unk_1EC191170, &qword_1C5BD2228, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(qword_1EC191318, &qword_1EC191168, &qword_1C5BD2220, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191308);
  }

  return result;
}

uint64_t sub_1C59A52EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

void sub_1C59A5384(uint64_t a1)
{
  sub_1C59A5448(319);
  if (v1 <= 0x3F)
  {
    sub_1C5927B74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C59A5448(uint64_t a1)
{
  if (!qword_1EC191428[0])
  {
    sub_1C5BC9114();
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, qword_1EC191428);
    }
  }
}

uint64_t sub_1C59A54A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59A54DC(uint64_t a1, int a2)
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

uint64_t sub_1C59A5524(uint64_t result, int a2, int a3)
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

uint64_t sub_1C59A5644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8, qword_1C5BD6F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59A56EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0, &unk_1C5BD2460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C59A57CC()
{
  result = qword_1EC1914D8;
  if (!qword_1EC1914D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1914D8);
  }

  return result;
}

void *sub_1C59A5830@<X0>(_BYTE *a1@<X8>)
{
  sub_1C599DCB8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

void MCUINamespace<A>.debugPadding(_:_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v6[0] = a1;
  v7 = a4;
  KeyPath = swift_getKeyPath(asc_1C5BD2740);
  v9 = 0;
  v10 = swift_getKeyPath(byte_1C5BD2768);
  v11 = 0;
  MEMORY[0x1C694E550](v6, *(a2 + 16), &type metadata for DebugPaddingModifier, a3);
}

void MCUINamespace<A>.debugPadding(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1C5BC9894();

  MCUINamespace<A>.debugPadding(_:_:)(v6, a1, a2, a3);
}

uint64_t sub_1C59A5A40(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

uint64_t sub_1C59A5A88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_1C5BC8F54();
}

unint64_t sub_1C59A5AEC()
{
  result = qword_1EC191550;
  if (!qword_1EC191550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191550);
  }

  return result;
}

uint64_t sub_1C59A5B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59A5B88(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59A5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BCAA54();
  v7 = v6;
  sub_1C59A5F30(v2, &v40);
  v48 = v42;
  v49 = v43;
  v50 = v44;
  v51 = v45;
  v46 = v40;
  v47 = v41;
  *&v52 = v5;
  *(&v52 + 1) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191558, &qword_1C5BD28C8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191560, &qword_1C5BD28D0) + 36));
  v10 = v51;
  v9[4] = v50;
  v9[5] = v10;
  v9[6] = v52;
  v11 = v47;
  *v9 = v46;
  v9[1] = v11;
  v12 = v49;
  v9[2] = v48;
  v9[3] = v12;
  v53[0] = v40;
  v53[1] = v41;
  v53[4] = v44;
  v53[5] = v45;
  v53[2] = v42;
  v53[3] = v43;
  v54 = v5;
  v55 = v7;
  sub_1C59400B0(&v46, &v38, &qword_1EC191568, &qword_1C5BD28D8);
  sub_1C5924EF4(v53, &qword_1EC191568, &qword_1C5BD28D8);
  LOBYTE(v5) = *v2;
  sub_1C5BC8174();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191570, &qword_1C5BD28E0) + 36);
  *v21 = v5;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_1C5BCAA54();
  v24 = v23;
  v38 = *(v2 + 16);
  v39 = *(v2 + 24);
  *&v40 = *(v2 + 32);
  BYTE8(v40) = *(v2 + 40);
  v25 = swift_allocObject();
  v26 = *(v2 + 16);
  v25[1] = *v2;
  v25[2] = v26;
  *(v25 + 41) = *(v2 + 25);
  v27 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191578, &qword_1C5BD28E8) + 36));
  *v27 = sub_1C59A7AD0;
  v27[1] = v25;
  v27[2] = v22;
  v27[3] = v24;
  sub_1C59400B0(&v38, v37, &qword_1EC190FB8, &qword_1C5BD28F0);
  sub_1C59400B0(&v40, v37, &qword_1EC190FB8, &qword_1C5BD28F0);
  v28 = sub_1C5BCAA54();
  v30 = v29;
  v31 = swift_allocObject();
  v32 = *(v2 + 16);
  v31[1] = *v2;
  v31[2] = v32;
  *(v31 + 41) = *(v2 + 25);
  v33 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191580, &qword_1C5BD28F8) + 36));
  *v33 = sub_1C59A7AD8;
  v33[1] = v31;
  v33[2] = v28;
  v33[3] = v30;
  KeyPath = swift_getKeyPath(aP_17);
  v35 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191588, &qword_1C5BD2928) + 36);
  *v35 = KeyPath;
  *(v35 + 8) = 1;
  sub_1C59400B0(&v38, v37, &qword_1EC190FB8, &qword_1C5BD28F0);
  return sub_1C59400B0(&v40, v37, &qword_1EC190FB8, &qword_1C5BD28F0);
}

double sub_1C59A5F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 32);
  v17 = v9;
  v18 = *(a1 + 40);
  if (v18 == 1)
  {
    v16 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v17, &qword_1EC190FB8, &qword_1C5BD28F0);
    (*(v5 + 8))(v7, v4);
    v9 = v16;
  }

  sub_1C59A60FC(v9, v8, v14);

  v11 = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = v11;
  *(a2 + 64) = v14[4];
  *(a2 + 80) = v15;
  result = *v14;
  v13 = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = v13;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1C59A60FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C5BC83C4();
  v7 = v31;
  v8 = v31 * 0.5;
  v9 = v32;
  v10 = DWORD1(v32);
  v11 = *(&v32 + 1);
  v12 = v33;

  v13 = sub_1C5BCAA54();
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v14 = *v30;
  v15 = *&v30[16];
  v37 = *v30;
  v38 = *&v30[16];
  v36[0] = v34[0];
  v36[1] = v32;
  *&v39 = v13;
  *(&v39 + 1) = v16;
  v17 = v32;
  *(a3 + 8) = v34[0];
  v18 = v38;
  *(a3 + 72) = v39;
  v19 = v37;
  *(a3 + 56) = v18;
  *a3 = a2;
  *(a3 + 40) = v19;
  *(a3 + 24) = v17;
  v40[2] = v14;
  v40[3] = v15;
  v40[0] = v28;
  v40[1] = v29;
  v41 = v13;
  v42 = v16;
  sub_1C59400B0(v34, v21, &qword_1EC1915C0, &qword_1C5BD29B0);

  sub_1C59400B0(v36, v21, &qword_1EC1915C8, &qword_1C5BD29B8);
  sub_1C5924EF4(v40, &qword_1EC1915C8, &qword_1C5BD29B8);
  *v21 = v8;
  *&v21[1] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a1;
  v27 = 256;
  return sub_1C5924EF4(v21, &qword_1EC1915C0, &qword_1C5BD29B0);
}

double sub_1C59A62B0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  KeyPath = swift_getKeyPath(asc_1C5BD2938);
  v5 = swift_getKeyPath(asc_1C5BD2960);
  v6 = swift_getKeyPath(aP_17);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  LOBYTE(v136) = 0;
  LOBYTE(v121) = 0;
  LOBYTE(v118[0]) = 0;
  *&v150[7] = v88;
  *&v150[23] = v89;
  *&v150[39] = v90;
  *&v91 = v3;
  *(&v91 + 1) = KeyPath;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = v5;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = v6;
  v94[0] = 0;
  *&v94[48] = *(&v90 + 1);
  *&v94[33] = *&v150[32];
  *&v94[17] = *&v150[16];
  *&v94[1] = *v150;
  v44 = sub_1C5BCA484();
  v7 = sub_1C5BCAA64();
  v9 = v8;
  v85 = *&v94[16];
  v86 = *&v94[32];
  v87 = *&v94[48];
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v84 = *v94;
  sub_1C59400B0(&v91, v150, &qword_1EC191598, &qword_1C5BD2988);
  sub_1C59A6D28(&v81, MEMORY[0x1E6980D38], &v136);
  v95[8] = v144;
  v95[9] = v145;
  v95[10] = v146;
  v95[4] = v140;
  v95[5] = v141;
  v95[7] = v143;
  v95[6] = v142;
  v95[0] = v136;
  v95[1] = v137;
  v95[3] = v139;
  v95[2] = v138;
  v181 = v144;
  v182 = v145;
  v177 = v140;
  v178 = v141;
  v180 = v143;
  v179 = v142;
  v173 = v136;
  v174 = v137;
  *&v96 = v7;
  *(&v96 + 1) = v9;
  v176 = v139;
  v175 = v138;
  v183 = v146;
  v184 = v96;
  v97[8] = v144;
  v97[9] = v145;
  v97[10] = v146;
  v97[4] = v140;
  v97[5] = v141;
  v97[7] = v143;
  v97[6] = v142;
  v97[0] = v136;
  v97[1] = v137;
  v97[3] = v139;
  v97[2] = v138;
  v98 = v7;
  v99 = v9;
  sub_1C59400B0(v95, v150, &qword_1EC1915A0, &qword_1C5BD2990);
  sub_1C5924EF4(v97, &qword_1EC1915A0, &qword_1C5BD2990);
  v100[4] = v85;
  v100[5] = v86;
  v101 = v87;
  v100[0] = v81;
  v100[1] = v82;
  v100[3] = v84;
  v100[2] = v83;
  sub_1C5924EF4(v100, &qword_1EC191598, &qword_1C5BD2988);
  v10 = sub_1C5BCAA74();
  v12 = v11;
  v78 = *&v94[16];
  v79 = *&v94[32];
  v80 = *&v94[48];
  v74 = v91;
  v75 = v92;
  v76 = v93;
  v77 = *v94;
  sub_1C59400B0(&v91, v150, &qword_1EC191598, &qword_1C5BD2988);
  sub_1C59A6D28(&v74, MEMORY[0x1E6980D40], &v136);
  v102[8] = v144;
  v102[9] = v145;
  v102[10] = v146;
  v102[4] = v140;
  v102[5] = v141;
  v102[7] = v143;
  v102[6] = v142;
  v102[0] = v136;
  v102[1] = v137;
  v102[3] = v139;
  v102[2] = v138;
  v169 = v144;
  v170 = v145;
  v165 = v140;
  v166 = v141;
  v168 = v143;
  v167 = v142;
  v161 = v136;
  v162 = v137;
  *&v103 = v10;
  *(&v103 + 1) = v12;
  v164 = v139;
  v163 = v138;
  v171 = v146;
  v172 = v103;
  v104[8] = v144;
  v104[9] = v145;
  v104[10] = v146;
  v104[4] = v140;
  v104[5] = v141;
  v104[7] = v143;
  v104[6] = v142;
  v104[0] = v136;
  v104[1] = v137;
  v104[3] = v139;
  v104[2] = v138;
  v105 = v10;
  v106 = v12;
  sub_1C59400B0(v102, v150, &qword_1EC1915A0, &qword_1C5BD2990);
  sub_1C5924EF4(v104, &qword_1EC1915A0, &qword_1C5BD2990);
  v107[4] = v78;
  v107[5] = v79;
  v108 = v80;
  v107[0] = v74;
  v107[1] = v75;
  v107[3] = v77;
  v107[2] = v76;
  sub_1C5924EF4(v107, &qword_1EC191598, &qword_1C5BD2988);
  v13 = sub_1C5BCAA34();
  v15 = v14;
  v71 = *&v94[16];
  v72 = *&v94[32];
  v73 = *&v94[48];
  v67 = v91;
  v68 = v92;
  v69 = v93;
  v70 = *v94;
  sub_1C59400B0(&v91, v150, &qword_1EC191598, &qword_1C5BD2988);
  sub_1C59A6FB0(&v67, MEMORY[0x1E6980D28], &v121);
  v109[10] = v131;
  v109[11] = v132;
  v109[6] = v127;
  v109[7] = v128;
  v109[9] = v130;
  v109[8] = v129;
  v109[2] = v123;
  v109[3] = v124;
  v109[5] = v126;
  v109[4] = v125;
  v109[1] = v122;
  v109[0] = v121;
  *&v110 = v133;
  *(&v110 + 1) = v13;
  v157 = v131;
  v158 = v132;
  v153 = v127;
  v154 = v128;
  v155 = v129;
  v156 = v130;
  *&v150[32] = v123;
  *&v150[48] = v124;
  v151 = v125;
  v152 = v126;
  *v150 = v121;
  *&v150[16] = v122;
  v159 = v110;
  v112[10] = v131;
  v112[11] = v132;
  v112[6] = v127;
  v112[7] = v128;
  v112[9] = v130;
  v112[8] = v129;
  v112[2] = v123;
  v112[3] = v124;
  v112[5] = v126;
  v112[4] = v125;
  v111 = v15;
  v160 = v15;
  v112[1] = v122;
  v112[0] = v121;
  v113 = v133;
  v114 = v13;
  v115 = v15;
  sub_1C59400B0(v109, &v136, &qword_1EC1915A8, &qword_1C5BD2998);
  sub_1C5924EF4(v112, &qword_1EC1915A8, &qword_1C5BD2998);
  v116[4] = v71;
  v116[5] = v72;
  v117 = v73;
  v116[0] = v67;
  v116[1] = v68;
  v116[3] = v70;
  v116[2] = v69;
  sub_1C5924EF4(v116, &qword_1EC191598, &qword_1C5BD2988);
  v16 = sub_1C5BCAA44();
  v18 = v17;
  v64 = *&v94[16];
  v65 = *&v94[32];
  v66 = *&v94[48];
  v60 = v91;
  v61 = v92;
  v62 = v93;
  v63 = *v94;
  sub_1C59400B0(&v91, &v136, &qword_1EC191598, &qword_1C5BD2988);
  sub_1C59A6FB0(&v60, MEMORY[0x1E6980D30], &v47);
  sub_1C5924EF4(&v91, &qword_1EC191598, &qword_1C5BD2988);
  v118[10] = v57;
  v118[11] = v58;
  v118[6] = v53;
  v118[7] = v54;
  v118[9] = v56;
  v118[8] = v55;
  v118[2] = v49;
  v118[3] = v50;
  v118[5] = v52;
  v118[4] = v51;
  v118[1] = v48;
  v118[0] = v47;
  *&v119 = v59;
  *(&v119 + 1) = v16;
  v146 = v57;
  v147 = v58;
  v142 = v53;
  v143 = v54;
  v144 = v55;
  v145 = v56;
  v138 = v49;
  v139 = v50;
  v140 = v51;
  v141 = v52;
  v136 = v47;
  v137 = v48;
  v148 = v119;
  v131 = v57;
  v132 = v58;
  v127 = v53;
  v128 = v54;
  v130 = v56;
  v129 = v55;
  v123 = v49;
  v124 = v50;
  v126 = v52;
  v125 = v51;
  v120 = v18;
  v149 = v18;
  v122 = v48;
  v121 = v47;
  v133 = v59;
  v134 = v16;
  v135 = v18;
  sub_1C59400B0(v118, v45, &qword_1EC1915A8, &qword_1C5BD2998);
  sub_1C5924EF4(&v121, &qword_1EC1915A8, &qword_1C5BD2998);
  v45[4] = v64;
  v45[5] = v65;
  v46 = v66;
  v45[0] = v60;
  v45[1] = v61;
  v45[2] = v62;
  v45[3] = v63;
  sub_1C5924EF4(v45, &qword_1EC191598, &qword_1C5BD2988);
  *a2 = v44;
  v19 = v182;
  *(a2 + 136) = v181;
  *(a2 + 152) = v19;
  v20 = v184;
  *(a2 + 168) = v183;
  *(a2 + 184) = v20;
  v21 = v178;
  *(a2 + 72) = v177;
  *(a2 + 88) = v21;
  v22 = v180;
  *(a2 + 104) = v179;
  *(a2 + 120) = v22;
  v23 = v174;
  *(a2 + 8) = v173;
  *(a2 + 24) = v23;
  v24 = v176;
  *(a2 + 40) = v175;
  *(a2 + 56) = v24;
  v25 = v170;
  *(a2 + 328) = v169;
  *(a2 + 344) = v25;
  v26 = v172;
  *(a2 + 360) = v171;
  *(a2 + 376) = v26;
  v27 = v166;
  *(a2 + 264) = v165;
  *(a2 + 280) = v27;
  v28 = v168;
  *(a2 + 296) = v167;
  *(a2 + 312) = v28;
  v29 = v162;
  *(a2 + 200) = v161;
  *(a2 + 216) = v29;
  v30 = v164;
  *(a2 + 232) = v163;
  *(a2 + 248) = v30;
  v31 = v158;
  *(a2 + 552) = v157;
  *(a2 + 568) = v31;
  *(a2 + 584) = v159;
  *(a2 + 600) = v160;
  v32 = v154;
  *(a2 + 488) = v153;
  *(a2 + 504) = v32;
  v33 = v156;
  *(a2 + 520) = v155;
  *(a2 + 536) = v33;
  v34 = *&v150[48];
  *(a2 + 424) = *&v150[32];
  *(a2 + 440) = v34;
  v35 = v152;
  *(a2 + 456) = v151;
  *(a2 + 472) = v35;
  v36 = *&v150[16];
  *(a2 + 392) = *v150;
  *(a2 + 408) = v36;
  v37 = v147;
  *(a2 + 768) = v146;
  *(a2 + 784) = v37;
  *(a2 + 800) = v148;
  *(a2 + 816) = v149;
  v38 = v143;
  *(a2 + 704) = v142;
  *(a2 + 720) = v38;
  v39 = v145;
  *(a2 + 736) = v144;
  *(a2 + 752) = v39;
  v40 = v139;
  *(a2 + 640) = v138;
  *(a2 + 656) = v40;
  v41 = v141;
  *(a2 + 672) = v140;
  *(a2 + 688) = v41;
  result = *&v136;
  v43 = v137;
  *(a2 + 608) = v136;
  *(a2 + 624) = v43;
  *(a2 + 824) = 0;
  return result;
}

__n128 sub_1C59A6D28@<Q0>(uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1C5BC9884();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v7 || (v8 = a3(), sub_1C5BC98D4(), sub_1C5BC98D4() == v8))
  {
    v24 = sub_1C5BCA484();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v9 = v51;
    v10 = v53;
    v11 = v55;
    v12 = v56;
    v13 = sub_1C5BCAA54();
    v14 = *(a2 + 80);
    v29 = *(a2 + 64);
    v30 = v14;
    v31 = *(a2 + 96);
    v15 = *(a2 + 16);
    v26[0] = *a2;
    v26[1] = v15;
    v16 = *(a2 + 48);
    v27 = *(a2 + 32);
    v28 = v16;
    v35[0] = v26[0];
    v35[1] = v15;
    v35[2] = v27;
    v35[3] = v16;
    v35[4] = v29;
    v35[5] = v14;
    v32[3] = v16;
    v32[4] = v29;
    v32[5] = v14;
    v32[1] = v15;
    v32[2] = v27;
    v32[0] = v26[0];
    *&v33 = v31;
    *(&v33 + 1) = v13;
    v34 = v17;
    LOBYTE(v47) = v52;
    v25 = v54;
    v46 = v17;
    v41 = v27;
    v42 = v16;
    v39 = v26[0];
    v40 = v15;
    v43 = v29;
    v44 = v14;
    v45 = v33;
    v36 = v31;
    v37 = v13;
    v38 = v17;
    sub_1C59400B0(v26, &v57, &qword_1EC191598, &qword_1C5BD2988);
    sub_1C59400B0(v32, &v57, &qword_1EC1915B8, &qword_1C5BD29A8);
    sub_1C5924EF4(v35, &qword_1EC1915B8, &qword_1C5BD29A8);
    *&v50[72] = v43;
    *&v50[88] = v44;
    *&v50[104] = v45;
    *&v50[8] = v39;
    *&v50[24] = v40;
    *&v50[40] = v41;
    v18 = v47;
    *&v47 = v24;
    *(&v47 + 1) = v9;
    LOBYTE(v48) = v18;
    *(&v48 + 1) = v10;
    LOBYTE(v49) = v25;
    *(&v49 + 1) = v11;
    *v50 = v12;
    *&v50[120] = v46;
    *&v50[56] = v42;
    CGSizeMake();
    v65 = *&v50[80];
    v66 = *&v50[96];
    v67 = *&v50[112];
    v61 = *&v50[16];
    v62 = *&v50[32];
    v63 = *&v50[48];
    v64 = *&v50[64];
    v57 = v47;
    v58 = v48;
    v59 = v49;
    v60 = *v50;
  }

  else
  {
    sub_1C59A7B8C(&v57);
  }

  v19 = v66;
  *(a4 + 128) = v65;
  *(a4 + 144) = v19;
  *(a4 + 160) = v67;
  v20 = v62;
  *(a4 + 64) = v61;
  *(a4 + 80) = v20;
  v21 = v64;
  *(a4 + 96) = v63;
  *(a4 + 112) = v21;
  v22 = v58;
  *a4 = v57;
  *(a4 + 16) = v22;
  result = v60;
  *(a4 + 32) = v59;
  *(a4 + 48) = result;
  return result;
}

__n128 sub_1C59A6FB0@<Q0>(uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1C5BC98F4();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v7 || (v8 = a3(), sub_1C5BC98D4(), sub_1C5BC98D4() == v8))
  {
    v32 = sub_1C5BCA484();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v9 = v66;
    v30 = v68;
    v31 = v64;
    v29 = v69;
    v10 = sub_1C5BCAA54();
    v12 = v11;
    v13 = *(a2 + 80);
    v34[4] = *(a2 + 64);
    v34[5] = v13;
    v35 = *(a2 + 96);
    v14 = *(a2 + 16);
    v34[0] = *a2;
    v34[1] = v14;
    v15 = *(a2 + 48);
    v34[2] = *(a2 + 32);
    v34[3] = v15;
    sub_1C5BCABD4();
    v16 = *(a2 + 80);
    v43 = *(a2 + 64);
    v44 = v16;
    v17 = *(a2 + 96);
    v18 = *(a2 + 16);
    v40[0] = *a2;
    v40[1] = v18;
    v19 = *(a2 + 48);
    v41 = *(a2 + 32);
    v42 = v19;
    v36[0] = v40[0];
    v36[1] = v18;
    v36[2] = v41;
    v36[4] = v43;
    v36[5] = v16;
    v36[3] = v19;
    *&v37 = v17;
    *(&v37 + 1) = 0xBFF921FB54442D18;
    *&v38 = v20;
    *(&v38 + 1) = v21;
    *&v39 = v10;
    *(&v39 + 1) = v12;
    LOBYTE(v60) = v65;
    v33 = v67;
    v53 = v41;
    v54 = v19;
    v51 = v40[0];
    v52 = v18;
    v58 = v38;
    v59 = v39;
    v56 = v16;
    v57 = v37;
    v55 = v43;
    v45 = v17;
    v46 = 0xBFF921FB54442D18;
    v47 = v20;
    v48 = v21;
    v49 = v10;
    v50 = v12;
    sub_1C59400B0(v34, &v70, &qword_1EC191598, &qword_1C5BD2988);
    sub_1C59400B0(v36, &v70, &qword_1EC1915B0, &qword_1C5BD29A0);
    sub_1C5924EF4(v40, &qword_1EC1915B0, &qword_1C5BD29A0);
    *&v63[88] = v56;
    *&v63[104] = v57;
    *&v63[120] = v58;
    *&v63[136] = v59;
    *&v63[24] = v52;
    *&v63[40] = v53;
    *&v63[56] = v54;
    *&v63[72] = v55;
    v22 = v60;
    *&v60 = v32;
    *(&v60 + 1) = v31;
    v61.n128_u8[0] = v22;
    v61.n128_u64[1] = v9;
    LOBYTE(v62) = v33;
    *(&v62 + 1) = v30;
    *v63 = v29;
    *&v63[8] = v51;
    CGSizeMake();
    v80 = *&v63[112];
    v81 = *&v63[128];
    v82 = *&v63[144];
    v76 = *&v63[48];
    v77 = *&v63[64];
    v78 = *&v63[80];
    v79 = *&v63[96];
    v72 = v62;
    v73 = *v63;
    v74 = *&v63[16];
    v75 = *&v63[32];
    v70 = v60;
    v71 = v61;
  }

  else
  {
    sub_1C59A7B68(&v70);
  }

  v23 = v81;
  *(a4 + 160) = v80;
  *(a4 + 176) = v23;
  *(a4 + 192) = v82;
  v24 = v77;
  *(a4 + 96) = v76;
  *(a4 + 112) = v24;
  v25 = v79;
  *(a4 + 128) = v78;
  *(a4 + 144) = v25;
  v26 = v73;
  *(a4 + 32) = v72;
  *(a4 + 48) = v26;
  v27 = v75;
  *(a4 + 64) = v74;
  *(a4 + 80) = v27;
  result = v71;
  *a4 = v70;
  *(a4 + 16) = result;
  return result;
}

__n128 sub_1C59A72D8@<Q0>(unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1C5BCA484();
  v6 = sub_1C5BCAA64();
  v8 = v7;
  sub_1C59A765C(a2, MEMORY[0x1E6980D38], &v71);
  v33[0] = v71;
  v33[1] = v72;
  v33[2] = v73;
  *&v34 = v74;
  *(&v34 + 1) = v6;
  v35 = v8;
  v36[0] = v71;
  v32 = v8;
  v30 = v73;
  v31 = v34;
  v28 = v71;
  v29 = v72;
  v36[1] = v72;
  v36[2] = v73;
  v37 = v74;
  v38 = v6;
  v39 = v8;
  sub_1C59400B0(v33, &v71, &qword_1EC191590, &qword_1C5BD2930);
  sub_1C5924EF4(v36, &qword_1EC191590, &qword_1C5BD2930);
  v9 = sub_1C5BCAA74();
  v11 = v10;
  sub_1C59A765C(a2, MEMORY[0x1E6980D40], &v71);
  v40[0] = v71;
  v40[1] = v72;
  v40[2] = v73;
  *&v41 = v74;
  *(&v41 + 1) = v9;
  v42 = v11;
  v43[0] = v71;
  v75 = v11;
  v74 = v41;
  v43[1] = v72;
  v43[2] = v73;
  v44 = v41;
  v45 = v9;
  v46 = v11;
  sub_1C59400B0(v40, &v66, &qword_1EC191590, &qword_1C5BD2930);
  sub_1C5924EF4(v43, &qword_1EC191590, &qword_1C5BD2930);
  v12 = sub_1C5BCAA34();
  v14 = v13;
  sub_1C59A7878(a2, MEMORY[0x1E6980D28], &v66);
  v47[0] = v66;
  v47[1] = v67;
  v47[2] = v68;
  *&v48 = v69;
  *(&v48 + 1) = v12;
  v49 = v14;
  v70 = v14;
  v69 = v48;
  v50[0] = v66;
  v50[1] = v67;
  v50[2] = v68;
  v51 = v48;
  v52 = v12;
  v53 = v14;
  sub_1C59400B0(v47, &v61, &qword_1EC191590, &qword_1C5BD2930);
  sub_1C5924EF4(v50, &qword_1EC191590, &qword_1C5BD2930);
  v15 = sub_1C5BCAA44();
  v17 = v16;
  sub_1C59A7878(a2, MEMORY[0x1E6980D30], &v61);
  v18 = v64;
  v54[0] = v61;
  v54[1] = v62;
  v54[2] = v63;
  *&v55 = v64;
  *(&v55 + 1) = v15;
  v56 = v17;
  v65 = v17;
  v64 = v55;
  v57[0] = v61;
  v57[1] = v62;
  v57[2] = v63;
  v58 = v18;
  v59 = v15;
  v60 = v17;
  sub_1C59400B0(v54, v27, &qword_1EC191590, &qword_1C5BD2930);
  sub_1C5924EF4(v57, &qword_1EC191590, &qword_1C5BD2930);
  v19 = v28;
  *(a3 + 24) = v29;
  v20 = v31;
  *(a3 + 40) = v30;
  *(a3 + 56) = v20;
  *(a3 + 8) = v19;
  v21 = v74;
  *(a3 + 112) = v73;
  *(a3 + 128) = v21;
  v22 = v72;
  *(a3 + 80) = v71;
  *(a3 + 96) = v22;
  v23 = v66;
  *(a3 + 168) = v67;
  v24 = v69;
  *(a3 + 184) = v68;
  *a3 = v5;
  *(a3 + 72) = v32;
  *(a3 + 144) = v75;
  *(a3 + 200) = v24;
  *(a3 + 216) = v70;
  *(a3 + 152) = v23;
  v25 = v64;
  *(a3 + 256) = v63;
  *(a3 + 272) = v25;
  *(a3 + 288) = v65;
  result = v62;
  *(a3 + 224) = v61;
  *(a3 + 240) = result;
  *(a3 + 296) = 0;
  return result;
}

void *sub_1C59A765C@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC9884();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v10 || (v11 = a2(), sub_1C5BC98D4(), result = sub_1C5BC98D4(), result == v11))
  {
    v27 = a1[24];
    v13 = *(a1 + 2);
    v26 = v13;
    v14 = v27;

    if ((v14 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v15 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v26, &qword_1EC190FB8, &qword_1C5BD28F0);
      (*(v7 + 8))(v9, v6);
      v13 = v21;
    }

    sub_1C5BCAA54();
    result = sub_1C5BC85D4();
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
  }

  else
  {
    v13 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  *a3 = v13;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  return result;
}

void *sub_1C59A7878@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC98F4();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v10 || (v11 = a2(), sub_1C5BC98D4(), result = sub_1C5BC98D4(), result == v11))
  {
    v27 = a1[24];
    v13 = *(a1 + 2);
    v26 = v13;
    v14 = v27;

    if ((v14 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v15 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v26, &qword_1EC190FB8, &qword_1C5BD28F0);
      (*(v7 + 8))(v9, v6);
      v13 = v21;
    }

    sub_1C5BCAA54();
    result = sub_1C5BC85D4();
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
  }

  else
  {
    v13 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  *a3 = v13;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  return result;
}

uint64_t sub_1C59A7AE0(uint64_t a1)
{
  result = sub_1C5BCA484();
  qword_1EC191540 = result;
  return result;
}

uint64_t sub_1C59A7B24(uint64_t a1)
{
  result = sub_1C5BCA484();
  qword_1EC191548 = result;
  return result;
}

double sub_1C59A7B68(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1C59A7B8C(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1C59A7BAC()
{
  result = qword_1EC1915D0;
  if (!qword_1EC1915D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915D0);
  }

  return result;
}

unint64_t sub_1C59A7C00()
{
  result = qword_1EC1915D8;
  if (!qword_1EC1915D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915D8);
  }

  return result;
}

unint64_t sub_1C59A7C74()
{
  result = qword_1EC1915E0;
  if (!qword_1EC1915E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191588, &qword_1C5BD2928);
    sub_1C59A7D2C();
    sub_1C5924F54(&qword_1EC191638, &qword_1EC191640, &qword_1C5BD29F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915E0);
  }

  return result;
}

unint64_t sub_1C59A7D2C()
{
  result = qword_1EC1915E8;
  if (!qword_1EC1915E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191580, &qword_1C5BD28F8);
    sub_1C59A7DE4();
    sub_1C5924F54(&qword_1EC191628, &qword_1EC191630, &qword_1C5BD29E8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915E8);
  }

  return result;
}

unint64_t sub_1C59A7DE4()
{
  result = qword_1EC1915F0;
  if (!qword_1EC1915F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191578, &qword_1C5BD28E8);
    sub_1C59A7E9C();
    sub_1C5924F54(&qword_1EC191618, &qword_1EC191620, &qword_1C5BD29E0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915F0);
  }

  return result;
}

unint64_t sub_1C59A7E9C()
{
  result = qword_1EC1915F8;
  if (!qword_1EC1915F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191570, &qword_1C5BD28E0);
    sub_1C59A7F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915F8);
  }

  return result;
}

unint64_t sub_1C59A7F28()
{
  result = qword_1EC191600;
  if (!qword_1EC191600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191560, &qword_1C5BD28D0);
    sub_1C5924F54(&qword_1EC191608, &qword_1EC191558, &qword_1C5BD28C8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC191610, &qword_1EC191568, &qword_1C5BD28D8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191600);
  }

  return result;
}

uint64_t NowPlayingViewModel.PlayerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C59A809C()
{
  swift_getKeyPath(asc_1C5BD2B78);
  sub_1C59A8828();
  sub_1C5BC7B74();

  return *(v0 + 16);
}

void sub_1C59A810C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_1C5BD2B78);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C59A8828();
    sub_1C5BC7B64();
  }
}

void sub_1C59A81F4(char *a1)
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7D64();
  __swift_project_value_buffer(v1, qword_1EDA5DA78);

  oslog = sub_1C5BC7D44();
  v2 = sub_1C5BCB4F4();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446466;
    swift_getKeyPath(asc_1C5BD2B50);
    sub_1C59A8828();
    sub_1C5BC7B74();

    v5 = sub_1C5BCAEA4();
    v7 = sub_1C592ADA8(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    v8 = sub_1C5BCAEA4();
    v10 = sub_1C592ADA8(v8, v9, &v12);

    *(v3 + 14) = v10;
    _os_log_impl(&dword_1C5922000, oslog, v2, "Will update player style from %{public}s to %{public}s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v4, -1, -1);
    MEMORY[0x1C69510F0](v3, -1, -1);
  }

  else
  {
  }
}

void sub_1C59A841C(_BYTE *a1@<X8>)
{
  swift_getKeyPath(asc_1C5BD2B50);
  sub_1C59A8828();
  sub_1C5BC7B74();

  *a1 = *(v1 + 17);
}

void sub_1C59A8494(_BYTE *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + 17))
  {
    LOBYTE(v4) = *a1;
    sub_1C59A81F4(&v4);
    *(v1 + 17) = v2;
    swift_getKeyPath(asc_1C5BD2B50);
    v4 = v1;
    sub_1C59A8828();
    sub_1C5BC7B74();

    LOBYTE(v4) = *(v1 + 17);
    sub_1C5BC7F34();
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_1C5BD2B50);
    MEMORY[0x1EEE9AC00](KeyPath);
    v4 = v1;
    sub_1C59A8828();
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C59A85D8(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  v5 = a2 & 1;
  sub_1C59A81F4(&v5);
  *(a1 + 17) = v3;
  swift_getKeyPath(asc_1C5BD2B50);
  sub_1C59A8828();
  sub_1C5BC7B74();

  return sub_1C5BC7F34();
}

uint64_t sub_1C59A8684()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel12Presentation___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s12PresentationCMa(uint64_t a1)
{
  result = qword_1EDA4AF60;
  if (!qword_1EDA4AF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C59A877C(uint64_t a1)
{
  result = sub_1C5BC7BB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C59A8828()
{
  result = qword_1EDA4AF70;
  if (!qword_1EDA4AF70)
  {
    _s12PresentationCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4AF70);
  }

  return result;
}

uint64_t sub_1C59A88A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 9);

  if ((v10 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = v18;
  }

  swift_getKeyPath(asc_1C5BD2B50);
  v18 = v9;
  sub_1C59A8828();
  sub_1C5BC7B74();

  v13 = *(v9 + 17);

  if ((v11 ^ v13))
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191648, &qword_1C5BD2C78);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191650, &qword_1C5BD2C80);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_1C59A8ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59A8B24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1C59A8B68@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_1C5BD2C88);
  swift_getKeyPath(byte_1C5BD2CB0);
  sub_1C5BC8034();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t WaveformState.SamplingMode.ValueProvider.__allocating_init(value:)(double a1, double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658, &qword_1C5BD5010);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_1C5BC7FF4();
  (*(v11 + 32))(v14 + v15, v13, v10);
  swift_getKeyPath(byte_1C5BD2C88);
  swift_getKeyPath(byte_1C5BD2CB0);
  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v19 = *&a5;
  v20 = 0;

  sub_1C5BC8044();
  return v14;
}

uint64_t WaveformState.SamplingMode.ValueProvider.init(value:)(double a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658, &qword_1C5BD5010);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_1C5BC7FF4();
  (*(v12 + 32))(v5 + v15, v14, v11);
  swift_getKeyPath(byte_1C5BD2C88);
  swift_getKeyPath(byte_1C5BD2CB0);
  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v19 = *&a5;
  v20 = 0;

  sub_1C5BC8044();
  return v5;
}

uint64_t sub_1C59A8F00(double a1, double a2, double a3, double a4, double a5)
{
  swift_getKeyPath(byte_1C5BD2C88);
  swift_getKeyPath(byte_1C5BD2CB0);

  return sub_1C5BC8044();
}

uint64_t WaveformState.SamplingMode.ValueProvider.init(fiveBarProvider:)(uint64_t a1)
{
  v1 = sub_1C59A9B20(a1);

  return v1;
}

__n128 sub_1C59A8FF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1C59A9024(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_allocObject();
  v4 = a2(a1);

  return v4;
}

uint64_t WaveformState.SamplingMode.ValueProvider.init(sixBarProvider:)(uint64_t a1)
{
  v1 = sub_1C59A9F9C(a1);

  return v1;
}

__n128 sub_1C59A90B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = 1;
  return result;
}

double sub_1C59A90D0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath("ئ\\&");
  swift_getKeyPath(byte_1C5BD2D00);
  sub_1C5BC8034();

  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t WaveformState.SamplingMode.ValueProvider.FiveBar.__allocating_init(value:)(double a1, double a2, double a3, double a4, double a5)
{
  v5 = swift_allocObject();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191668, &qword_1C5BD2CD0);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v5;
}

uint64_t WaveformState.SamplingMode.ValueProvider.FiveBar.init(value:)(double a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191668, &qword_1C5BD2CD0);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v5;
}

uint64_t WaveformState.SamplingMode.ValueProvider.FiveBar.update(to:)(double a1, double a2, double a3, double a4, double a5)
{
  swift_getKeyPath("ئ\\&");
  swift_getKeyPath(byte_1C5BD2D00);

  return sub_1C5BC8044();
}

double sub_1C59A9390@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath(byte_1C5BD2D30);
  swift_getKeyPath(aP_18);
  sub_1C5BC8034();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t WaveformState.SamplingMode.ValueProvider.SixBar.__allocating_init(value:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = swift_allocObject();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191680, &qword_1C5BD2D28);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v6;
}

uint64_t WaveformState.SamplingMode.ValueProvider.SixBar.init(value:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191680, &qword_1C5BD2D28);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v6;
}

uint64_t WaveformState.SamplingMode.ValueProvider.SixBar.update(to:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  swift_getKeyPath(byte_1C5BD2D30);
  swift_getKeyPath(aP_18);

  return sub_1C5BC8044();
}

uint64_t sub_1C59A9678(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  return v3;
}

uint64_t sub_1C59A96F4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_1C59A9790@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WaveformState.SamplingMode.ValueProvider(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

double sub_1C59A97D0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_1C5BD2C88);
  swift_getKeyPath(byte_1C5BD2CB0);
  sub_1C5BC8034();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1C59A9860(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_1C5BD2C88);
  swift_getKeyPath(byte_1C5BD2CB0);

  return sub_1C5BC8044();
}

double sub_1C59A98FC@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath("ئ\\&");
  swift_getKeyPath(byte_1C5BD2D00);
  sub_1C5BC8034();

  result = v6;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1C59A9984(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath("ئ\\&");
  swift_getKeyPath(byte_1C5BD2D00);

  return sub_1C5BC8044();
}

double sub_1C59A9A10@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(byte_1C5BD2D30);
  swift_getKeyPath(aP_18);
  sub_1C5BC8034();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1C59A9A98(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath(byte_1C5BD2D30);
  swift_getKeyPath(aP_18);

  return sub_1C5BC8044();
}

uint64_t sub_1C59A9B20(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916B8, &qword_1C5BD5000);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916E0, &qword_1C5BD2F00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916E8, &qword_1C5BD2F08);
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658, &qword_1C5BD5010);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v20 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  sub_1C5BC7FF4();
  (*(v17 + 32))(v2 + v20, v19, v16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191670, &qword_1C5BD2D20);
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EDA46860, &qword_1EC1916E0, &qword_1C5BD2F00, MEMORY[0x1E695C068]);
  sub_1C5BC8084();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EC1916F0, &qword_1EC1916E8, &qword_1C5BD2F08, MEMORY[0x1E695BD60]);
  v21 = v26;
  sub_1C5BC8124();
  (*(v27 + 8))(v15, v21);
  v22 = v29;
  v23 = v30;
  (*(v29 + 16))(v28, v7, v30);
  swift_beginAccess();
  sub_1C5BC8014();
  swift_endAccess();
  (*(v22 + 8))(v7, v23);
  return v2;
}

uint64_t sub_1C59A9F9C(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916B8, &qword_1C5BD5000);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916C0, &qword_1C5BD2EF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916C8, &qword_1C5BD2EF8);
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658, &qword_1C5BD5010);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v20 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  sub_1C5BC7FF4();
  (*(v17 + 32))(v2 + v20, v19, v16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191688, &qword_1C5BD2D78);
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EC1916D0, &qword_1EC1916C0, &qword_1C5BD2EF0, MEMORY[0x1E695C068]);
  sub_1C5BC8084();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EC1916D8, &qword_1EC1916C8, &qword_1C5BD2EF8, MEMORY[0x1E695BD60]);
  v21 = v26;
  sub_1C5BC8124();
  (*(v27 + 8))(v15, v21);
  v22 = v29;
  v23 = v30;
  (*(v29 + 16))(v28, v7, v30);
  swift_beginAccess();
  sub_1C5BC8014();
  swift_endAccess();
  (*(v22 + 8))(v7, v23);
  return v2;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI13WaveformStateO12SamplingModeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI13WaveformStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C59AA460(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C59AA4C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1C59AA514(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    v2 = -2147483646;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 1;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_1C59AA554(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C59AA5A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1C59AA604(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1C59AA65C(uint64_t a1)
{
  sub_1C59AA764();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C59AA764()
{
  if (!qword_1EDA46848)
  {
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46848);
    }
  }
}

void sub_1C59AA7F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1C59AA930(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C59AA930(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C5BC8054();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C59AA98C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, double a5)
{
  v24 = a4;
  v9 = sub_1C5BC7D64();
  v23[0] = *(v9 - 8);
  v23[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8, &qword_1C5BD2F38);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - v16;
  (*(v14 + 16))(v23 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  type metadata accessor for AudioTapQueueProcessor();
  swift_allocObject();
  v20 = sub_1C5A4EFB0(a2, a3, v24, sub_1C59AAF18, v19, a5);

  sub_1C5BCB224();
  v21 = sub_1C5BCB214();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  sub_1C5AD0FB8(0, 0, v12, &unk_1C5BD2F48, v22);
}

uint64_t sub_1C59AAE14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191708, &unk_1C5BD2F60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8, &qword_1C5BD2F38);
  sub_1C5BCB234();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C59AAF18(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8, &qword_1C5BD2F38);

  return sub_1C59AAE14(a1);
}

double sub_1C59AAF94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1C5BCB214();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_1C5AD0FB8(0, 0, v5, &unk_1C5BD2F58, v7);

  return result;
}

uint64_t sub_1C59AB0C0()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  sub_1C59AB370(v1 + 144, v0 + 16);
  v2 = *(v0 + 40);
  sub_1C5924EF4(v0 + 16, &qword_1EC191700, &unk_1C5BD5040);
  if (v2)
  {
    v3 = *(*(v0 + 96) + 112);
    if (v3)
    {
      AudioQueueStop(v3, 1u);
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    swift_beginAccess();
    sub_1C59AB3E0(v0 + 16, v1 + 144);
    swift_endAccess();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C59AB1C0()
{
  v1 = v0[12];
  swift_beginAccess();
  sub_1C59AB370(v1 + 144, (v0 + 2));
  v2 = v0[5];
  sub_1C5924EF4((v0 + 2), &qword_1EC191700, &unk_1C5BD5040);
  if (!v2)
  {
    v3 = v0[12];
    v4 = *(v3 + 112);
    if (v4)
    {
      AudioQueueStart(v4, 0);
      v3 = v0[12];
    }

    v0[5] = type metadata accessor for AudioTapQueueProcessor();
    v0[2] = v3;
    swift_beginAccess();

    sub_1C59AB3E0((v0 + 2), v1 + 144);
    swift_endAccess();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C59AB2BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C59AB1A0(a1, v4, v5, v6);
}

uint64_t sub_1C59AB370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700, &unk_1C5BD5040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59AB3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700, &unk_1C5BD5040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59AB490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C59AB0A0(a1, v4, v5, v6);
}

uint64_t sub_1C59AB544(uint64_t a1, double a2)
{
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  if ((a1 & 0x100000000) != 0)
  {
    a1 = getpid();
  }

  v18 = log2(48000.0 / (a2 + COERCE_DOUBLE(1)));
  v19 = exp2(ceil(v18));
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v19 < 9.22337204e18)
  {
    if (qword_1EDA46940 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_7:
  v20 = __swift_project_value_buffer(v4, qword_1EDA5DA48);
  v21 = *(v5 + 16);
  v47 = v20;
  v53 = v21;
  (v21)(v17);
  v22 = sub_1C5BC7D44();
  v23 = sub_1C5BCB4F4();
  v24 = os_log_type_enabled(v22, v23);
  v49 = v7;
  v50 = a1;
  v48 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 134349314;
    *(v25 + 4) = a1;
    *(v25 + 12) = 2082;
    v54 = 0;
    v55 = 0xE000000000000000;
    v56 = v26;
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0x5268736572666572, 0xED0000203A657461);
    sub_1C5BCB324();
    MEMORY[0x1C694F170](31304, 0xE200000000000000);
    v27 = sub_1C592ADA8(v54, v55, &v56);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_1C5922000, v22, v23, "AudioTapSetup initialized for pid: %{public}ld, framing: %{public}s", v25, 0x16u);
    v28 = __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1C69510F0](v26, -1, -1, v28);
    MEMORY[0x1C69510F0](v25, -1, -1);
  }

  v29 = *(v5 + 8);
  v29(v17, v4);
  v30 = v47;
  v53(v51, v47, v4);
  sub_1C59AA984();
  sub_1C59AA984();
  v31 = sub_1C5BC7D44();
  v32 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 68157952;
    *(v33 + 8) = 2050;
    *(v33 + 10) = 0x40E7700000000000;
    _os_log_impl(&dword_1C5922000, v31, v32, "AudioTapSetup sampleRate: %{public}.*fHz", v33, 0x12u);
    MEMORY[0x1C69510F0](v33, -1, -1);
  }

  v34 = v19;

  v29(v51, v4);
  v53(v52, v30, v4);
  sub_1C59AA984();
  sub_1C59AA984();
  v35 = sub_1C5BC7D44();
  v36 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 68157952;
    *(v37 + 4) = 1;
    *(v37 + 8) = 2050;
    *(v37 + 10) = 48000.0 / v34;
    _os_log_impl(&dword_1C5922000, v35, v36, "AudioTapSetup actual refresh rate: %{public}.*fHz", v37, 0x12u);
    MEMORY[0x1C69510F0](v37, -1, -1);
  }

  v29(v52, v4);
  v38 = v48;
  v53(v48, v30, v4);
  v39 = sub_1C5BC7D44();
  v40 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134349056;
    *(v41 + 4) = v34;
    _os_log_impl(&dword_1C5922000, v39, v40, "AudioTapSetup frameCount: %{public}ld", v41, 0xCu);
    MEMORY[0x1C69510F0](v41, -1, -1);
  }

  v29(v38, v4);
  v42 = v49;
  v53(v49, v30, v4);
  v43 = sub_1C5BC7D44();
  v44 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134349312;
    *(v45 + 4) = v34 / 48000.0 * 1000.0;
    *(v45 + 12) = 2050;
    *(v45 + 14) = 48000.0 / v34;
    _os_log_impl(&dword_1C5922000, v43, v44, "AudioTapSetup FFT info: dt=%{public}f, df=%{public}f", v45, 0x16u);
    MEMORY[0x1C69510F0](v45, -1, -1);
  }

  v29(v42, v4);
  return v50;
}

uint64_t FittedTextStack.init(totalLineLimit:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(void *)@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for FittedTextStack(0);
  sub_1C5BC9BA4();
  v13 = (a6 + *(v12 + 36));
  v14 = sub_1C5BCA684();
  *v13 = v17;
  v13[1] = v18;
  if (a1 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a1;
  }

  *a6 = v15;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  result = a5(v14);
  *(a6 + 32) = result;
  return result;
}

uint64_t FittedTextStack.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FittedTextStack(0);
  v5 = v4 - 8;
  v28[0] = *(v4 - 8);
  v6 = *(v28[0] + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1C5BC9BB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2 + *(v5 + 40), v7, v9);
  v12 = *v2;
  v13 = (v2 + *(v5 + 44));
  v14 = *v13;
  v15 = v13[1];
  v28[2] = v14;
  v28[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  v16 = v28[1];
  type metadata accessor for FittedTextHeightResolver(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_cache;
  *(v17 + v18) = sub_1C59AD25C(MEMORY[0x1E69E7CC0]);
  (*(v8 + 32))(v17 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements, v11, v7);
  *(v17 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines) = v12;
  *(v17 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_containerWidth) = v16;
  v19 = *(v2 + 24);
  *a1 = *(v2 + 8);
  *(a1 + 16) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191738, &qword_1C5BD2F78);
  sub_1C59AC080(v2, v17, a1 + *(v20 + 44));
  v21 = sub_1C5BCAA54();
  v23 = v22;
  swift_setDeallocating();
  (*(v8 + 8))(v17 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements, v7);

  swift_deallocClassInstance();
  sub_1C59AEC94(v2, v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FittedTextStack);
  v24 = (*(v28[0] + 80) + 16) & ~*(v28[0] + 80);
  v25 = swift_allocObject();
  sub_1C59AD444(v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191740, &qword_1C5BD2F80);
  v27 = (a1 + *(result + 36));
  *v27 = sub_1C59AD4A8;
  v27[1] = v25;
  v27[2] = v21;
  v27[3] = v23;
  return result;
}

uint64_t sub_1C59AC080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v35[1] = a3;
  v4 = type metadata accessor for FittedText(0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - v9;
  v11 = *(a1 + 32);
  v37 = v11[2];
  if (!v37)
  {
    v14 = MEMORY[0x1E69E7CC8];
LABEL_17:
    v40 = v11;
    *(swift_allocObject() + 16) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191878, &qword_1C5BD3120);
    sub_1C5BC7B04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191880, &qword_1C5BD3128);
    sub_1C5924F54(&qword_1EC191888, &qword_1EC191878, &qword_1C5BD3120, MEMORY[0x1E69E6338]);
    sub_1C59AED60();
    sub_1C59AEDDC();
    return sub_1C5BCA8B4();
  }

  v12 = 0;
  v35[0] = v7;
  v13 = &v10[*(v7 + 20)];
  v36 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v14 = MEMORY[0x1E69E7CC8];
  while (v12 < v11[2])
  {
    v15 = v8;
    v16 = *(v8 + 72);
    sub_1C59AEC94(v36 + v16 * v12, v10, type metadata accessor for FittedText);
    sub_1C59AC99C(*v13, *(v13 + 1), v13[16], *(v13 + 3), v10);
    v18 = v17;
    v19 = v39;
    sub_1C59AEC94(v10, v39, type metadata accessor for FittedText);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v14;
    v21 = sub_1C5AB6E44(v19);
    v23 = v14[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v14[3] < v26)
    {
      sub_1C5AF0E88(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1C5AB6E44(v39);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v14 = v40;
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v33 = v21;
    sub_1C5AF48D0();
    v21 = v33;
    v14 = v40;
    if (v27)
    {
LABEL_3:
      *(v14[7] + 8 * v21) = v18;
      sub_1C59AECFC(v39);
      goto LABEL_4;
    }

LABEL_12:
    v14[(v21 >> 6) + 8] |= 1 << v21;
    v29 = v21;
    v30 = v39;
    sub_1C59AEC94(v39, v14[6] + v21 * v16, type metadata accessor for FittedText);
    *(v14[7] + 8 * v29) = v18;
    sub_1C59AECFC(v30);
    v31 = v14[2];
    v25 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v14[2] = v32;
LABEL_4:
    ++v12;
    sub_1C59AECFC(v10);
    v8 = v15;
    if (v37 == v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

void sub_1C59AC44C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FittedText(0);
  if (*(a2 + 16) && (v7 = v6, v8 = a1 + *(v6 + 20), v9 = *v8, v10 = *(v8 + 8), v11 = *(v8 + 16), v12 = *(v8 + 24), v13 = sub_1C5AB6E44(a1), (v14 & 1) != 0) && *(*(a2 + 56) + 8 * v13) > 0.0)
  {
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    LOBYTE(v18) = v11;
    *&v23 = v9;
    *(&v23 + 1) = v10;
    LOBYTE(v24) = v11;
    *(&v24 + 1) = v12;
    v15 = *(a1 + *(v7 + 28));
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v18 = v23;
    v19 = v24;
    sub_1C59AEE34(v9, v10, v11);

    sub_1C59400B0(&v23, &v17, &qword_1EC1918A0, &qword_1C5BD3130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A0, &qword_1C5BD3130);
    sub_1C59AEE44();
    sub_1C5BCA804();
    v16 = v15();
    sub_1C59AEEC8(&v23);
  }

  else
  {
    v16 = 0;
  }

  *a3 = v16;
}

double sub_1C59AC5CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v32 = a3;
  v5 = sub_1C5BC86E4();
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FittedTextStack(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C5BCA484();
  v28 = type metadata accessor for FittedTextStack;
  sub_1C59AEC94(a2, v12, type metadata accessor for FittedTextStack);
  v27 = *(v6 + 16);
  v13 = a1;
  v14 = a1;
  v15 = v5;
  v27(v8, v13, v5);
  v16 = *(v10 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = *(v6 + 80);
  v19 = (v11 + v18 + v17) & ~v18;
  v26 = v16 | v18;
  v20 = swift_allocObject();
  v31 = v20;
  sub_1C59AD444(v12, v20 + v17);
  v25 = *(v6 + 32);
  v25(v20 + v19, v8, v15);
  v35 = v33;
  v36 = sub_1C59AEF30;
  v37 = v20;
  v38 = 0;
  v39 = 0;
  sub_1C5BC86C4();
  v34 = v21;
  sub_1C59AEC94(v29, v12, v28);
  v27(v8, v14, v15);
  v22 = swift_allocObject();
  sub_1C59AD444(v12, v22 + v17);
  v25(v22 + v19, v8, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191870, &qword_1C5BD3118);
  sub_1C59AEBBC();
  sub_1C59AEC40();
  sub_1C5BCA344();

  return result;
}

void sub_1C59AC8E4(uint64_t a1)
{
  sub_1C5BC86C4();
  if (v1 != 0.0)
  {
    v2 = v1;
    type metadata accessor for FittedTextStack(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
    sub_1C5BCA694();
    if (v3 != v2)
    {
      sub_1C5BCA6A4();
    }
  }
}

uint64_t sub_1C59AC99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5)
{
  v91 = a4;
  v90 = a3;
  v89 = a2;
  v82 = a1;
  v7 = sub_1C5BC7B04();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917E0, &qword_1C5BD3080);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917E8, &qword_1C5BD3088);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v66 - v12;
  v80 = sub_1C5BC9B94();
  v13 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_cache;
  swift_beginAccess();
  v92 = v5;
  v16 = *(v5 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_1C5AB6D70(a5);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      if (*(v19 + 16))
      {
        sub_1C5AB6EF8(*(v92 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_containerWidth));
        if (v20)
        {
        }
      }
    }
  }

  v71 = v15;
  v67 = v7;
  v22 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements;
  v23 = sub_1C5BC9B54();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v79;
  v87 = v23;
  v86 = v25;
  v75 = (v24 + 56);
  (v25)(v79, 1, 1);
  v27 = sub_1C5BC9C54();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v85 = v27;
  v84 = v29;
  v74 = v28 + 56;
  (v29)(v81, 1, 1);
  v30 = v78;
  sub_1C5BC9B84();
  v31 = v92;
  v88 = v22;
  sub_1C5BC9B74();
  v33 = v32;
  v35 = *(v13 + 8);
  v34 = v13 + 8;
  v76 = v34;
  v73 = v35;
  v35(v30, v80);
  v36 = *(type metadata accessor for FittedText(0) + 24);
  v70 = a5;
  v37 = &a5[v36];
  v38 = (v31 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines);
  if (v37[8])
  {
    v37 = (v31 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines);
  }

  v39 = *v37;
  v40 = *v38;
  if (*v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = *v38;
  }

  v77 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_containerWidth;
  if (v41 >= 1)
  {
    v66 = (v31 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines);
    v42 = 0;
    v72 = v41;
    v43 = v41;
    v44 = 0.0;
    v45 = v73;
    while (1)
    {
      v83 = v42;
      v26 = v79;
      v30 = v75;
      v86(v79, 1, 1, v87);
      v46 = v81;
      v84(v81, 1, 1, v85);
      v47 = v78;
      sub_1C5BC9B84();
      sub_1C5BC9B74();
      v49 = v48;
      v34 = v80;
      v45(v47, v80);
      v86(v26, 1, 1, v87);
      v84(v46, 1, 1, v85);
      sub_1C5BC9B84();
      v50 = sub_1C5BC9B64();
      v45(v47, v34);
      if ((v50 & 0x8000000000000000) != 0)
      {
        break;
      }

      v42 = v83;
      if (v50 != v83)
      {
        v43 = v43 + 1.0;
        v42 = v50;
        v44 = v49;
        if (v50 < v72)
        {
          continue;
        }
      }

      v38 = v66;
      v40 = *v66;
      goto LABEL_19;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = 0;
  v44 = 0.0;
LABEL_19:
  v51 = __OFSUB__(v40, v42);
  v52 = v40 - v42;
  v47 = v71;
  if (v51)
  {
    goto LABEL_29;
  }

  *v38 = v52;
  v53 = v92;
  v33 = *(v92 + v77);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = *&v47[v53];
  v55 = v93;
  *&v47[v53] = 0x8000000000000000;
  v30 = v70;
  v26 = sub_1C5AB6D70(v70);
  v57 = v55[2];
  v58 = (v56 & 1) == 0;
  v59 = v57 + v58;
  if (__OFADD__(v57, v58))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v34) = v56;
  if (v55[3] >= v59)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_31:
      sub_1C5AF4C50();
      v55 = v93;
    }
  }

  else
  {
    sub_1C5AF14AC(v59, isUniquelyReferenced_nonNull_native);
    v55 = v93;
    v60 = sub_1C5AB6D70(v30);
    if ((v34 & 1) != (v61 & 1))
    {
      result = sub_1C5BCBE84();
      __break(1u);
      return result;
    }

    v26 = v60;
  }

  *&v47[v92] = v55;
  if ((v34 & 1) == 0)
  {
    v62 = sub_1C59AD8B4(MEMORY[0x1E69E7CC0]);
    v63 = v68;
    (*(v69 + 16))(v68, v30, v67);
    sub_1C5B3CC40(v26, v63, v62, v55);
  }

  v64 = v55[7];
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v64 + 8 * v26);
  *(v64 + 8 * v26) = 0x8000000000000000;
  sub_1C5B3BF18(v65, v44, v33);
  *(v64 + 8 * v26) = v93;

  return swift_endAccess();
}

uint64_t sub_1C59AD1B0()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements;
  v2 = sub_1C5BC9BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1C59AD25C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A8, &qword_1C5BD3138);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918B0, &qword_1C5BD3140);
    v7 = sub_1C5BCBC74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C59400B0(v9, v5, &qword_1EC1918A8, &qword_1C5BD3138);
      result = sub_1C5AB6D70(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C5BC7B04();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C59AD444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FittedTextStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C59AD4A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FittedTextStack(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C59AC5CC(a1, v6, a2);
}

void sub_1C59AD56C(uint64_t a1)
{
  sub_1C59AD6C8(319, &qword_1EDA46AC0, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C59AD670(319);
    if (v2 <= 0x3F)
    {
      sub_1C5BC9BB4();
      if (v3 <= 0x3F)
      {
        sub_1C59AD6C8(319, &qword_1EDA45FF8, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C59AD670(uint64_t a1)
{
  if (!qword_1EC191758)
  {
    type metadata accessor for FittedText(255);
    v1 = sub_1C5BCB144();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC191758);
    }
  }
}

void sub_1C59AD6C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59AD724(uint64_t a1)
{
  result = sub_1C5BC9BB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C59AD7D0()
{
  result = qword_1EC191770;
  if (!qword_1EC191770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191740, &qword_1C5BD2F80);
    sub_1C5924F54(&qword_1EC191778, &qword_1EC191780, &qword_1C5BD3020, MEMORY[0x1E6981870]);
    sub_1C5924F54(&qword_1EC191788, &qword_1EC191790, &qword_1C5BD3028, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191770);
  }

  return result;
}

unint64_t sub_1C59AD8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917F0, &qword_1C5BD3090);
    v3 = sub_1C5BCBC74();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C5AB6EF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AD990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A0, &unk_1C5BD3040);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v13, &qword_1EC1917A8, &qword_1C5BD4E10);
      v5 = v13;
      v6 = v14;
      result = sub_1C596FBD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C593F33C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C59ADAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D0, &qword_1C5BD3070);
  v3 = sub_1C5BCBC74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1C5AB97D8();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1C5AB97D8();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C59ADBF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C596FBD8(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59ADCF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C8, &qword_1C5BE7F80);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59ADDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191798, &unk_1C5BD3030);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v11, &qword_1EC198CA0, &unk_1C5BED310);
      v5 = v11;
      result = sub_1C5AB97DC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C593F33C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59ADF18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D8, &qword_1C5BD3078);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1C5AB70E8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE010(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C0, &unk_1C5BD3060);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C5AB97DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917B0, &qword_1C5BD3050);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v11, &qword_1EC1917B8, &qword_1C5BD3058);
      v5 = v11;
      result = sub_1C5AB97DC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C593F33C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191808, &qword_1C5BD30A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191810, &unk_1C5BD30B0);
    v7 = sub_1C5BCBC74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C59400B0(v9, v5, &qword_1EC191808, &qword_1C5BD30A8);
      result = sub_1C5AB71BC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C5BC7A24();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191860, &qword_1C5BD3108);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A30, &qword_1C5BD89F0);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, v13, &qword_1EC191858, &qword_1C5BD3100);
      result = sub_1C5AB7290(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C593F33C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191850, &unk_1C5BD30F0);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C5AB97DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191840, &unk_1C5BD30E0);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v11, &qword_1EC191848, &qword_1C5BE6F20);
      v5 = v11;
      result = sub_1C5AB97DC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C593F33C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C59AE878(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191838, &qword_1C5BE7FB0);
  v3 = sub_1C5BCBC74();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1C5AB6FAC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1C5AB6FAC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for FittedTextStack(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1C5BC86E4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v1[10];
  v8 = sub_1C5BC9BB4();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

void sub_1C59AEAFC()
{
  v1 = *(type metadata accessor for FittedTextStack(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1C5BC86E4();
  sub_1C59AC8E4(v0 + v2);
}

unint64_t sub_1C59AEBBC()
{
  result = qword_1EDA46530;
  if (!qword_1EDA46530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191870, &qword_1C5BD3118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46530);
  }

  return result;
}

unint64_t sub_1C59AEC40()
{
  result = qword_1EDA46AD0;
  if (!qword_1EDA46AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46AD0);
  }

  return result;
}

uint64_t sub_1C59AEC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C59AECFC(uint64_t a1)
{
  v2 = type metadata accessor for FittedText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59AED60()
{
  result = qword_1EC191890;
  if (!qword_1EC191890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191880, &qword_1C5BD3128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191890);
  }

  return result;
}

unint64_t sub_1C59AEDDC()
{
  result = qword_1EC191898;
  if (!qword_1EC191898)
  {
    type metadata accessor for FittedText(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191898);
  }

  return result;
}

uint64_t sub_1C59AEE34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C59AEE44()
{
  result = qword_1EDA465A8;
  if (!qword_1EDA465A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1918A0, &qword_1C5BD3130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465A8);
  }

  return result;
}

uint64_t sub_1C59AEEC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A0, &qword_1C5BD3130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Numeric<>.isApproximatelyEqual(to:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v20 = a1;
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  sub_1C5BCAD04();
  swift_getAssociatedConformanceWitness();
  sub_1C5BCB3A4();
  v18 = *(v12 + 8);
  v18(v14, AssociatedTypeWitness);
  LOBYTE(a7) = AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(v20, v17, a2, v21, v22, a5, AssociatedTypeWitness, *(a6 + 8), a7);
  v18(v17, AssociatedTypeWitness);
  return a7 & 1;
}

uint64_t AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a4;
  v46 = a3;
  v47 = a2;
  v12 = *(a6 - 8);
  v40 = a5;
  v41 = v12;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v42 = &v38 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v38 - v27;
  v30 = v29;
  if (sub_1C5BCADB4())
  {
    v31 = 1;
  }

  else
  {
    v38 = a9;
    sub_1C5BCBBE4();
    v39 = v28;
    v32 = v44;
    v44(v14);
    (*(v41 + 8))(v14, a6);
    v32(v9);
    v33 = v39;
    v32(v30);
    v34 = v42;
    sub_1C5BCBE44();
    v35 = *(v43 + 8);
    v35(v20, a7);
    v35(v23, a7);
    sub_1C5BCB3A4();
    v36 = v45;
    sub_1C5BCBE44();
    v35(v23, a7);
    if (sub_1C5BCAD14())
    {
      v31 = sub_1C5BCAD94();
    }

    else
    {
      v31 = 0;
    }

    v35(v36, a7);
    v35(v34, a7);
    v35(v33, a7);
  }

  return v31 & 1;
}

uint64_t Numeric<>.isApproximatelyEqual(to:absoluteTolerance:relativeTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v14 = a5;
  v15 = a6;
  KeyPath = swift_getKeyPath(byte_1C5BD3148, v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(a1, a2, a3, sub_1C59AF584, v13, a4, AssociatedTypeWitness, *(v14 + 8), v15);

  return v11 & 1;
}

double sub_1C59AF58C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v15 = sub_1C5942458(a2, 0);
    (*(v11 + 8))(v13, v10, v15);
    LOBYTE(a2) = v19[15];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled) = a2 & 1;
  sub_1C59AF7A0();
  if ((a5 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v17 = sub_1C5942458(a4, 0);
    (*(v11 + 8))(v13, v10, v17);
    LOBYTE(a4) = v19[14];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled) = a4 & 1;
  return sub_1C59AF7A0();
}

double sub_1C59AF7A0()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer);
  if (v1)
  {
    [v1 setMask_];
  }

  KeyPath = swift_getKeyPath(byte_1C5BD33A0);
  v3 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled;
  sub_1C5B865E4(KeyPath, *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled));

  v4 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer);
  if (v4)
  {
    [v4 setMask_];
  }

  v5 = swift_getKeyPath(byte_1C5BD33C8);
  sub_1C5B8674C(v5, *(v0 + v3));

  v6 = swift_getKeyPath(aP_19);
  sub_1C5B86764(v6, *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled));

  return result;
}

void *sub_1C59AF88C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer);
  v2 = v1;
  return v1;
}

void *sub_1C59AF8BC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer);
  v2 = v1;
  return v1;
}

void *sub_1C59AF8EC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer);
  v2 = v1;
  return v1;
}

id sub_1C59AF91C()
{
  v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled] = 1;
  v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled] = 1;
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer] = 0;
  v1 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.FirstBlurOpacityMask()) init];
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer] = 0;
  v2 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.SecondBlurOpacityMask()) init];
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1C59AF7A0();

  return v3;
}

void *sub_1C59AFA20(void *a1)
{
  v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled] = 1;
  v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled] = 1;
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer] = 0;
  v3 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.FirstBlurOpacityMask()) init];
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer] = 0;
  v4 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.SecondBlurOpacityMask()) init];
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_1C5BCBDD4();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  v6 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  v7 = v6;
  sub_1C59AF7A0();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id sub_1C59AFB88()
{
  v61.receiver = v0;
  v61.super_class = type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  objc_msgSendSuper2(&v61, sel_layoutSublayers);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  [v0 bounds];
  v4 = round(sub_1C59B1A0C(v2, v3));
  [v0 bounds];
  Width = CGRectGetWidth(v62);
  [v0 bounds];
  Height = CGRectGetHeight(v63);
  v7 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer;
  v8 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer];
  if (Height <= Width)
  {
    if (v8)
    {
      v32 = v8;
      CATransform3DMakeRotation(&v60, 1.57079633, 0.0, 0.0, 1.0);
      [v32 setTransform_];

      v33 = *&v0[v7];
      if (v33)
      {
        v34 = v33;
        [v0 bounds];
        MinX = CGRectGetMinX(v72);
        [v0 bounds];
        MinY = CGRectGetMinY(v73);
        [v0 bounds];
        [v34 setFrame_];
      }
    }

    v37 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask];
    [v0 bounds];
    [v37 setFrame_];

    v38 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer;
    v39 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer];
    if (v39)
    {
      v40 = v39;
      CATransform3DMakeRotation(&v60, 4.71238898, 0.0, 0.0, 1.0);
      [v40 setTransform_];

      v41 = *&v0[v38];
      if (v41)
      {
        v42 = v41;
        [v0 bounds];
        v43 = CGRectGetMaxX(v76) - v4;
        [v0 bounds];
        v44 = CGRectGetMinY(v77);
        [v0 bounds];
        [v42 setFrame_];
      }
    }

    v45 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask];
    [v0 bounds];
    [v45 setFrame_];

    v46 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
    if (v46)
    {
      v47 = v46;
      CATransform3DMakeRotation(&v60, 1.57079633, 0.0, 0.0, 1.0);
      [v47 setTransform_];
    }
  }

  else
  {
    if (v8)
    {
      v9 = v8;
      CATransform3DMakeScale(&v60, 1.0, -1.0, 1.0);
      [v9 setTransform_];

      v10 = *&v0[v7];
      if (v10)
      {
        v11 = v10;
        [v0 bounds];
        v12 = CGRectGetMinX(v64);
        [v0 bounds];
        v13 = CGRectGetMinY(v65);
        [v0 bounds];
        [v11 setFrame_];
      }
    }

    v14 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask];
    [v0 bounds];
    [v14 setFrame_];

    v15 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer;
    v16 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer];
    v17 = MEMORY[0x1E69792E8];
    if (v16)
    {
      v18 = *(MEMORY[0x1E69792E8] + 80);
      *&v60.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v60.m33 = v18;
      v19 = *(MEMORY[0x1E69792E8] + 112);
      *&v60.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v60.m43 = v19;
      v20 = *(MEMORY[0x1E69792E8] + 16);
      *&v60.m11 = *MEMORY[0x1E69792E8];
      *&v60.m13 = v20;
      v21 = *(MEMORY[0x1E69792E8] + 48);
      *&v60.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v60.m23 = v21;
      [v16 setTransform_];
      v22 = *&v0[v15];
      if (v22)
      {
        v23 = v22;
        [v0 bounds];
        v24 = CGRectGetMinX(v68);
        [v0 bounds];
        v25 = CGRectGetMaxY(v69) - v4;
        [v0 bounds];
        [v23 setFrame_];
      }
    }

    v26 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask];
    [v0 bounds];
    [v26 setFrame_];

    v27 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
    if (v27)
    {
      v28 = v17[5];
      *&v60.m31 = v17[4];
      *&v60.m33 = v28;
      v29 = v17[7];
      *&v60.m41 = v17[6];
      *&v60.m43 = v29;
      v30 = v17[1];
      *&v60.m11 = *v17;
      *&v60.m13 = v30;
      v31 = v17[3];
      *&v60.m21 = v17[2];
      *&v60.m23 = v31;
      [v27 setTransform_];
    }
  }

  [v0 bounds];
  sub_1C59B1A80(&v60, v48, v49, v4);
  if (*&v60.m21)
  {
    v50 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer;
    v51 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
    if (v51 && (v52 = *&v60.m13, [v51 setStartPoint_], (v53 = *&v0[v50]) != 0) && (objc_msgSend(v53, sel_setEndPoint_, v52), (v54 = *&v0[v50]) != 0))
    {
      sub_1C59B1CD0();
      v55 = v54;
      v56 = sub_1C5BCB044();
      sub_1C59B1D1C(&v60);
      [v55 setLocations_];
    }

    else
    {
      sub_1C59B1D1C(&v60);
    }
  }

  v57 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
  if (v57)
  {
    v58 = v57;
    [v0 bounds];
    [v58 setFrame_];
  }

  return [v1 commit];
}

uint64_t sub_1C59B036C()
{
  if (qword_1EC1904F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC1A6960;
  v1 = qword_1EC1A6960;
  return v0;
}

id sub_1C59B04D0()
{
  if (qword_1EC1904F8 != -1)
  {
    swift_once();
  }

  [v0 setContents_];
  v1 = *MEMORY[0x1E6979DE0];

  return [v0 setContentsGravity_];
}

id sub_1C59B056C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = (a3)(0, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C59B05CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v6 = sub_1C5BCBDD4();
  v9.receiver = a1;
  v9.super_class = a4(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

id sub_1C59B0690(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = (a4)(0, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1C59B0728(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C59B08E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C59B0940@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190500 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = qword_1EC1918B8;
  v2 = unk_1EC1918C0;
  v4 = qword_1EC1918C8;
  v3 = qword_1EC1918D0;
  v5 = dword_1EC1918D8;
  *a1 = qword_1EC1918B8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  v6 = v1;
}

uint64_t sub_1C59B09E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59B0A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59B0A9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_1C5950E48(v1, v2);
  sub_1C5950E48(v3, v4);

  return sub_1C5BC85C4();
}

uint64_t sub_1C59B0B84()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1054951342;
  LODWORD(v2) = 1058306785;
  LODWORD(v3) = 1.0;
  v4 = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  v5 = sub_1C59B1344(80, 0x50uLL, v4, 1, 1.02, 1.1);
  v6 = sub_1C5B86A7C(0x50, 0x50uLL, v5, 1);

  qword_1EC1A6960 = v6;
  return result;
}

uint64_t sub_1C59B0C40()
{
  v0 = *MEMORY[0x1E6979EB8];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 functionWithName_];

  v4 = sub_1C59B0F74(80, 0x50uLL, v3, 0, 1.02, 0.1);
  v5 = sub_1C5B86934(0x50, 0x50uLL, v4, 0);

  qword_1EC1A6968 = v5;
  return result;
}

double sub_1C59B0D08()
{
  v0 = *MEMORY[0x1E6979DB0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5BD31B0;
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  *(v1 + 32) = v6;
  v7 = [v2 blackColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = [v8 CGColor];
  *(v1 + 40) = v9;
  v10 = [v2 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = [v11 CGColor];
  *(v1 + 48) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C5BD31C0;
  v14 = *MEMORY[0x1E6979ED8];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 functionWithName_];

  *(v13 + 32) = v17;
  v18 = *MEMORY[0x1E6979EB8];
  v19 = [v15 functionWithName_];

  *(v13 + 40) = v19;
  qword_1EC1918B8 = v3;
  unk_1EC1918C0 = v1;
  qword_1EC1918C8 = v13;
  result = 2.77068541e-11;
  qword_1EC1918D0 = 0x3DBE76C93F333333;
  dword_1EC1918D8 = 1075419546;
  return result;
}

uint64_t sub_1C59B0F74(uint64_t a1, unint64_t a2, void *a3, char a4, float a5, float a6)
{
  if (a4)
  {
    v8 = 65535.0;
  }

  else
  {
    v8 = 255.0;
  }

  v9 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    goto LABEL_50;
  }

  if (v9 + 0x4000000000000000 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = 2 * v9;
  if (2 * v9 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v10)
  {
    v13 = sub_1C5BCB0C4();
    *(v13 + 16) = v10;
    bzero((v13 + 32), v10);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = vcvts_n_f32_s64(a2, 1uLL);
  v15 = v14 * a5;
  v16 = sqrtf(((v15 * v15) * 4.0) - (a2 * a2));
  if (((((v16 * 0.5) - v15) + a1) * a6) > 0.0)
  {
    v17 = (((v16 * 0.5) - v15) + a1) * a6;
  }

  else
  {
    v17 = 1.1755e-38;
  }

  v18 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_53;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      return v13;
    }

    if (v18 < -1)
    {
      goto LABEL_55;
    }

    v19 = 0;
    v20 = 0;
    v21 = -(v16 * 0.5);
    v22 = v13 + 32;
    v40 = 2 * a2;
    v41 = a1;
    v42 = v18 / 2 + 1;
    v23 = v13 + 33;
LABEL_19:
    v24 = v20 + 1;
    v25 = (v20 + 1) * a2;
    if (((v20 + 1) * a2) >> 64 == v25 >> 63)
    {
      if (v25 + 0x4000000000000000 >= 0)
      {
        if ((v20 * a2) >> 64 == (v20 * a2) >> 63)
        {
          v26 = 0;
          v27 = 0;
          v28 = 2 * v25;
          v29 = v21 - v20;
          v30 = v42;
          while (1)
          {
            v31 = (hypotf(v14 - v27, v29) - v15) / v17;
            v32 = 0.0;
            if (v31 > 0.0)
            {
              v32 = v8;
              if (v31 < 1.0)
              {
                [a3 _solveForInput_];
                v32 = v8 * v33;
              }
            }

            sub_1C59B1898(v44, roundf(v32));
            if ((v44[0] & 0x100) != 0)
            {
              goto LABEL_56;
            }

            if (v19 < 0)
            {
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v34 = *(v13 + 16);
            if (v19 + v26 >= v34)
            {
              goto LABEL_41;
            }

            v35 = v44[0];
            *(v23 + v26 - 1) = 0;
            if (v19 + v26 + 1 >= v34)
            {
              goto LABEL_42;
            }

            *(v23 + v26) = v35;
            if ((a2 & 1) != 0 && v30 == 1)
            {
              goto LABEL_18;
            }

            v36 = v28 - v26;
            if (__OFSUB__(v28, v26))
            {
              goto LABEL_43;
            }

            v37 = __OFSUB__(v36, 1);
            v38 = v36 - 1;
            if (v37)
            {
              goto LABEL_44;
            }

            if (v38 < 1 || v38 > v34)
            {
              goto LABEL_45;
            }

            *(v22 + v38 - 1) = 0;
            if (v38 >= v34)
            {
              goto LABEL_46;
            }

            *(v22 + v38) = v35;
            ++v27;
            v26 += 2;
            if (!--v30)
            {
LABEL_18:
              v19 += v40;
              v23 += v40;
              v20 = v24;
              if (v24 == v41)
              {
                return v13;
              }

              goto LABEL_19;
            }
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
LABEL_47:
      __break(1u);
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1C694F170](0xD00000000000001ELL, 0x80000001C5BF5F70);
  MEMORY[0x1C694F170](0x38746E4955, 0xE500000000000000);
  MEMORY[0x1C694F170](0xD00000000000002ELL, 0x80000001C5BF5F90);
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

uint64_t sub_1C59B1344(uint64_t a1, unint64_t a2, void *a3, char a4, float a5, float a6)
{
  if (a4)
  {
    v8 = 65535.0;
  }

  else
  {
    v8 = 255.0;
  }

  v9 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    goto LABEL_50;
  }

  if (v9 + 0x4000000000000000 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = 2 * v9;
  if (2 * v9 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v10)
  {
    v13 = sub_1C5BCB0C4();
    *(v13 + 16) = v10;
    bzero((v13 + 32), 4 * v9);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = vcvts_n_f32_s64(a2, 1uLL);
  v15 = v14 * a5;
  v16 = sqrtf(((v15 * v15) * 4.0) - (a2 * a2));
  if (((((v16 * 0.5) - v15) + a1) * a6) > 0.0)
  {
    v17 = (((v16 * 0.5) - v15) + a1) * a6;
  }

  else
  {
    v17 = 1.1755e-38;
  }

  v18 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_53;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      return v13;
    }

    if (v18 < -1)
    {
      goto LABEL_55;
    }

    v19 = 0;
    v20 = 0;
    v21 = -(v16 * 0.5);
    v40 = a1;
    v41 = v18 / 2 + 1;
    v22 = (v13 + 34);
LABEL_19:
    v23 = v20 + 1;
    v24 = (v20 + 1) * a2;
    if (((v20 + 1) * a2) >> 64 == v24 >> 63)
    {
      if (v24 + 0x4000000000000000 >= 0)
      {
        if ((v20 * a2) >> 64 == (v20 * a2) >> 63)
        {
          v25 = 0;
          v26 = 0;
          v27 = 2 * v24;
          v28 = v21 - v20;
          v42 = v22;
          v29 = v41;
          while (1)
          {
            v30 = (hypotf(v14 - v26, v28) - v15) / v17;
            v31 = 0.0;
            if (v30 > 0.0)
            {
              v31 = v8;
              if (v30 < 1.0)
              {
                [a3 _solveForInput_];
                v31 = v8 * v32;
              }
            }

            sub_1C59B1724(v44, roundf(v31));
            if ((v44[0] & 0x10000) != 0)
            {
              goto LABEL_56;
            }

            if (v19 < 0)
            {
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v33 = *(v13 + 16);
            if (v19 + v25 >= v33)
            {
              goto LABEL_41;
            }

            v34 = v44[0];
            *(v22 - 1) = 0;
            if (v19 + v25 + 1 >= v33)
            {
              goto LABEL_42;
            }

            *v22 = v34;
            if ((a2 & 1) != 0 && v29 == 1)
            {
              goto LABEL_18;
            }

            v35 = v27 - v25;
            if (__OFSUB__(v27, v25))
            {
              goto LABEL_43;
            }

            v36 = __OFSUB__(v35, 1);
            v37 = v35 - 1;
            if (v36)
            {
              goto LABEL_44;
            }

            if (v37 < 1 || v37 > v33)
            {
              goto LABEL_45;
            }

            v38 = (v13 + 32 + 2 * v37);
            *(v38 - 1) = 0;
            if (v37 >= v33)
            {
              goto LABEL_46;
            }

            *v38 = v34;
            ++v26;
            v25 += 2;
            v22 += 2;
            if (!--v29)
            {
LABEL_18:
              v19 += 2 * a2;
              v22 = &v42[2 * a2];
              v20 = v23;
              if (v23 == v40)
              {
                return v13;
              }

              goto LABEL_19;
            }
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
LABEL_47:
      __break(1u);
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1C694F170](0xD00000000000001ELL, 0x80000001C5BF5F70);
  MEMORY[0x1C694F170](0x3631746E4955, 0xE600000000000000);
  MEMORY[0x1C694F170](0xD00000000000002ELL, 0x80000001C5BF5F90);
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

BOOL sub_1C59B1724(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_1C5BCB354();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_1C5BCB344();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v13 < -16 || v13 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -16)
            {
              goto LABEL_9;
            }

            v6 = LOWORD(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 16)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOWORD(v14) = 0;
LABEL_23:
          v7 = 0;
          LOWORD(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOWORD(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_1C59B1898(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_1C5BCB354();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_1C5BCB344();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v13 < -8 || v13 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -8)
            {
              goto LABEL_9;
            }

            v6 = LOBYTE(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 8)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOBYTE(v14) = 0;
LABEL_23:
          v7 = 0;
          LOBYTE(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOBYTE(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

double sub_1C59B1A0C(double a1, double a2)
{
  if (a2 >= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (a1 <= a2)
  {
    a1 = a2;
  }

  v3 = 1.0;
  if (v2 > 0.0 && a1 > 0.0)
  {
    v3 = 1.422 / (a1 / v2);
    if (v3 < 1.0)
    {
      v3 = sqrt(v3);
    }
  }

  v4 = (a1 - v2) * 0.5 * 2.8 * v3;
  result = a1 * 0.5;
  if (result >= v4)
  {
    return v4;
  }

  return result;
}

void sub_1C59B1A80(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v5 = 0;
  v6 = 0uLL;
  if (a2 == 0.0 || a3 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (a4 != 0.0)
    {
      if (a2 > a3)
      {
        v8 = a2;
      }

      else
      {
        v8 = a3;
      }

      if (a3 >= a2)
      {
        v9 = a2;
      }

      else
      {
        v9 = a3;
      }

      v10 = 1.0 - a4 / v8;
      if (v10 <= 0.0)
      {
        v10 = 0.0;
      }

      if (v10 <= 1.0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1.0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C5BD31B0;
      sub_1C59B1CD0();
      *(v7 + 32) = sub_1C5BCB714();
      *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      *(v7 + 48) = sub_1C5BCB714();
      v13 = v8 / v9 * (v9 / a4 * 1.01999998);
      if (v13 == 0.0)
      {
        v13 = 1.0;
      }

      v14 = sqrt(1.0 / (v13 * v13) + 1.0);
      v15.f64[0] = v13 * v14;
      v15.f64[1] = v14;
      __asm { FMOV            V1.2D, #0.5 }

      v6 = vaddq_f64(vmulq_f64(v15, _Q1), _Q1);
      v5 = 0x3FE0000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
}

void sub_1C59B1BE8()
{
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer) = 0;
  v1 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.FirstBlurOpacityMask()) init];
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer) = 0;
  v2 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.SecondBlurOpacityMask()) init];
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

unint64_t sub_1C59B1CD0()
{
  result = qword_1EDA4E048;
  if (!qword_1EDA4E048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E048);
  }

  return result;
}

uint64_t sub_1C59B1D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191920, &qword_1C5BD3418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59B1D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C59B1DCC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1C59B1E24()
{
  result = qword_1EC191928;
  if (!qword_1EC191928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191930, &qword_1C5BD3458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191928);
  }

  return result;
}

__n128 DeviceMetrics.safeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t DeviceMetrics.Layout.description.getter()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x4572616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

void (*MCUINamespace<A>.deviceMetrics.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  *(v3 + 168) = sub_1C593F9B0();
  sub_1C5BC8F44();
  return sub_1C59B2070;
}

void sub_1C59B2070(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v1[7] = *(*a1 + 32);
  v1[8] = v2;
  *(v1 + 137) = *(v1 + 57);
  v3 = v1[1];
  v1[5] = *v1;
  v1[6] = v3;
  sub_1C5BC8F54();

  free(v1);
}

double MCUINamespace<A>.safeAreaInsets.getter()
{
  sub_1C593F8A4();
  sub_1C5BC8F44();
  return v1;
}

void (*MCUINamespace<A>.safeAreaInsets.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1C593F8A4();
  sub_1C5BC8F44();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1C59B21EC;
}

void sub_1C59B21EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  sub_1C5BC8F54();

  free(v1);
}

uint64_t sub_1C59B2244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59B31E0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.deviceMetrics.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1C5BC8F34();
  (*(*(v5 - 8) + 16))(v4, v1, v5);
  sub_1C593F9B0();
  sub_1C5BC8F44();
  return sub_1C59B2FC0(v4);
}

__n128 sub_1C59B2388@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = sub_1C5BC8F34();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C593F9B0();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v6);
  v8 = v11[0];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v8;
  *(a2 + 57) = *(v11 + 9);
  result = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C59B2484(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = a1[3];
  v16 = a1[2];
  v17[0] = v7;
  *(v17 + 9) = *(a1 + 57);
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v9 = sub_1C5BC8F34();
  v10 = *(*(v9 - 8) + 32);
  v10(v6, a2, v9);
  v12[2] = v16;
  v13[0] = v17[0];
  *(v13 + 9) = *(v17 + 9);
  v12[0] = v14;
  v12[1] = v15;
  sub_1C593F9B0();
  sub_1C5BC8F54();
  return (v10)(a2, v6, v9);
}

uint64_t EnvironmentValues.deviceMetrics.setter(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = a1[3];
  v16 = a1[2];
  v17[0] = v7;
  *(v17 + 9) = *(a1 + 57);
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v9 = sub_1C5BC8F34();
  v10 = *(*(v9 - 8) + 32);
  v10(v6, v2, v9);
  v12[2] = v16;
  v13[0] = v17[0];
  *(v13 + 9) = *(v17 + 9);
  v12[0] = v14;
  v12[1] = v15;
  sub_1C593F9B0();
  sub_1C5BC8F54();
  return (v10)(v2, v6, v9);
}

void (*EnvironmentValues.deviceMetrics.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x118uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 240) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[31] = v7;
  v9 = sub_1C5BC8F34();
  v5[32] = v9;
  v10 = *(v9 - 8);
  v5[33] = v10;
  (*(v10 + 16))(v8, v1, v9);
  v5[34] = sub_1C593F9B0();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v8);
  return sub_1C59B2830;
}

void sub_1C59B2830(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 33) + 32);
  v6 = *(*a1 + 30);
  v5 = *(*a1 + 31);
  v10 = (*a1)[2];
  *v11 = (*a1)[3];
  *&v11[9] = *(*a1 + 57);
  v8 = **a1;
  v9 = (*a1)[1];
  v7 = *v4;
  if (a2)
  {
    (*v4)(v5, v6, v3);
    v2[7] = v10;
    v2[8] = *v11;
    *(v2 + 137) = *&v11[9];
    v2[5] = v8;
    v2[6] = v9;
  }

  else
  {
    (*v4)(v5, v6, v3);
    v2[12] = v10;
    v2[13] = *v11;
    *(v2 + 217) = *&v11[9];
    v2[10] = v8;
    v2[11] = v9;
  }

  sub_1C5BC8F54();
  v7(v6, v5, v3);
  free(v5);

  free(v2);
}

double EnvironmentValues.safeAreaInsets.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1C5BC8F34();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  sub_1C593F8A4();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v3);
  return v6;
}

double sub_1C59B2A54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = sub_1C5BC8F34();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C593F8A4();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v6);
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  a2[1] = v9;
  return result;
}

uint64_t sub_1C59B2B40(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C5BC8F34();
  v8 = *(*(v7 - 8) + 32);
  v9 = *a1;
  v11 = a1[1];
  v12 = v9;
  v8(v6, a2, v7);
  v13 = v12;
  v14 = v11;
  sub_1C593F8A4();
  sub_1C5BC8F54();
  return (v8)(a2, v6, v7);
}

uint64_t EnvironmentValues.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;
  v13 = sub_1C5BC8F34();
  v14 = *(*(v13 - 8) + 32);
  v14(v12, v5, v13);
  *v16 = a1;
  *&v16[1] = a2;
  *&v16[2] = a3;
  *&v16[3] = a4;
  sub_1C593F8A4();
  sub_1C5BC8F54();
  return (v14)(v5, v12, v13);
}

void (*EnvironmentValues.safeAreaInsets.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 128) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 136) = v7;
  v9 = sub_1C5BC8F34();
  *(v5 + 144) = v9;
  v10 = *(v9 - 8);
  *(v5 + 152) = v10;
  (*(v10 + 16))(v8, v1, v9);
  *(v5 + 160) = sub_1C593F8A4();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v8);
  v11 = *(v5 + 48);
  *v5 = *(v5 + 32);
  *(v5 + 16) = v11;
  return sub_1C59B2EC4;
}

void sub_1C59B2EC4(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = *((*a1)[19] + 32);
  v8((*a1)[17], (*a1)[16], (*a1)[18]);
  v9 = (a2 & 1) == 0;
  v10 = v3[17];
  v11 = v3[18];
  v12 = 12;
  if (!v9)
  {
    v12 = 8;
  }

  v13 = 13;
  v14 = v3[16];
  if (!v9)
  {
    v13 = 9;
  }

  v15 = 14;
  if (!v9)
  {
    v15 = 10;
  }

  v3[v12] = v4;
  v3[v13] = v5;
  v16 = 11;
  if (v9)
  {
    v16 = 15;
  }

  v3[v15] = v6;
  v3[v16] = v7;
  sub_1C5BC8F54();
  v8(v14, v10, v11);
  free(v10);

  free(v3);
}

uint64_t sub_1C59B2FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59B302C()
{
  result = qword_1EC191940;
  if (!qword_1EC191940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceMetrics.SizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceMetrics.SizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C59B31E0()
{
  result = qword_1EDA467F8;
  if (!qword_1EDA467F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA467F8);
  }

  return result;
}

MediaCoreUI::MotionMode_optional __swiftcall MotionMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MotionMode.description.getter()
{
  v1 = 28271;
  if (*v0 == 1)
  {
    v1 = 0x796C6E4F69666977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

uint64_t sub_1C59B32E0()
{
  v1 = 28271;
  if (*v0 == 1)
  {
    v1 = 0x796C6E4F69666977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

unint64_t sub_1C59B3348()
{
  result = qword_1EC191948;
  if (!qword_1EC191948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191948);
  }

  return result;
}

uint64_t SplitPercentageLayout.locations.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SplitPercentageLayout.init(axis:locations:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result & 1;
  *(a3 + 8) = a2;
  return result;
}

double SplitPercentageLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t SplitPercentageLayout.placeSubviews(in:proposal:subviews:cache:)(void (**a1)(uint64_t), int a2, void (**a3)(char *), int a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  LODWORD(v90) = a4;
  v88 = a3;
  LODWORD(v89) = a2;
  v87 = a1;
  v94 = sub_1C5BC8744();
  v80 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919B0, &qword_1C5BD3810);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v84 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v78 - v20;
  v21 = sub_1C5BC8894();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919B8, &qword_1C5BD3818);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v78 - v25;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C0, &qword_1C5BD3820);
  MEMORY[0x1EEE9AC00](v82);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  v81 = *v8;
  v32 = *(v8 + 1);
  v33 = *(v32 + 16);
  v34 = sub_1C59B3F0C(&qword_1EDA4E1A0, MEMORY[0x1E697E3D8]);
  swift_bridgeObjectRetain_n();
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  if (v33 == sub_1C5BCB414())
  {

    (*(v22 + 16))(v26, a5, v21);
    (*(v22 + 32))(v91, v26, v21);
    sub_1C59B3F0C(&qword_1EDA466A0, MEMORY[0x1E697E3D0]);
    v93 = v32;
    v35 = v94;
    if (v81)
    {
      if (v90)
      {
        v36 = 10.0;
      }

      else
      {
        v36 = *&v88;
      }

      sub_1C5BCAFE4();
      v37 = v82;
      v38 = &v31[*(v82 + 52)];
      *v38 = v32;
      *(v38 + 1) = 0;
      v90 = v38;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C8, &qword_1C5BD3828) + 36);
      sub_1C5BCB424();
      if (*&v31[v39] == v95[0])
      {
        v28 = v31;
      }

      else
      {
        v58 = v32;
        v32 = 0;
        v88 = (v80 + 16);
        v86 = (v58 + 32);
        v84 = (v80 + 32);
        v91 = (v80 + 8);
        v59 = 0.0;
        v60 = v92;
        while (1)
        {
          v61 = sub_1C5BCB484();
          (*v88)(v60);
          v61(v95, 0);
          sub_1C5BCB434();
          v62 = *(v93 + 16);
          if (v32 == v62)
          {
            break;
          }

          if (v32 >= v62)
          {
            goto LABEL_44;
          }

          v63 = v32 + 1;
          v64 = *&v86[8 * v32];
          *(v90 + 1) = v32 + 1;
          v28 = v31;
          v65 = *v84;
          v66 = v39;
          v67 = v34;
          v68 = v83;
          v69 = v94;
          (*v84)(v83, v92, v94);
          v70 = v85;
          v71 = v68;
          v34 = v67;
          v39 = v66;
          v65(v85, v71, v69);
          if (v64 > 0.0)
          {
            v72 = v64;
          }

          else
          {
            v72 = 0.0;
          }

          if (v64 >= 1.0)
          {
            v72 = 1.0;
          }

          v73 = v36 * v72 - v59;
          if (v73 < 0.0)
          {
            v74 = 0.0;
          }

          else
          {
            v74 = v73;
          }

          sub_1C5BCAB94();
          LOBYTE(v95[0]) = v89 & 1;
          LOBYTE(v96) = 0;
          sub_1C5BC8724();
          (*v91)(v70, v69);
          v59 = v59 + v74;
          sub_1C5BCB424();
          v32 = v63;
          v60 = v92;
          if (*&v31[v66] == v95[0])
          {
            goto LABEL_41;
          }
        }

        v28 = v31;
LABEL_40:
        (*v91)(v60, v94);
LABEL_41:
        v37 = v82;
      }

      goto LABEL_42;
    }

    if (v89)
    {
      v40 = 10.0;
    }

    else
    {
      v40 = *&v87;
    }

    sub_1C5BCAFE4();
    v37 = v82;
    v41 = &v28[*(v82 + 52)];
    *v41 = v32;
    *(v41 + 1) = 0;
    v89 = v41;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C8, &qword_1C5BD3828) + 36);
    v92 = v21;
    sub_1C5BCB424();
    if (*&v28[v42] == v95[0])
    {
LABEL_42:
      v28[*(v37 + 56)] = 1;
      return sub_1C59B3F50(v28);
    }

    v43 = v32;
    v32 = v35;
    v44 = 0;
    v87 = (v80 + 16);
    v85 = (v43 + 32);
    v45 = (v80 + 32);
    v91 = (v80 + 8);
    v46 = 0.0;
    v47 = v79;
    while (1)
    {
      v48 = sub_1C5BCB484();
      (*v87)(v47);
      v48(v95, 0);
      sub_1C5BCB434();
      v49 = *(v93 + 16);
      if (v44 == v49)
      {
        v60 = v47;
        goto LABEL_40;
      }

      if (v44 >= v49)
      {
        break;
      }

      v50 = v44 + 1;
      v51 = *&v85[8 * v44];
      *(v89 + 1) = v44 + 1;
      v52 = *v45;
      v53 = v84;
      v32 = v94;
      (*v45)(v84, v47, v94);
      v54 = v86;
      v52(v86, v53, v32);
      if (v51 > 0.0)
      {
        v55 = v51;
      }

      else
      {
        v55 = 0.0;
      }

      if (v51 >= 1.0)
      {
        v55 = 1.0;
      }

      v56 = v40 * v55 - v46;
      if (v56 < 0.0)
      {
        v57 = 0.0;
      }

      else
      {
        v57 = v56;
      }

      sub_1C5BCAB94();
      LOBYTE(v95[0]) = 0;
      LOBYTE(v96) = v90 & 1;
      sub_1C5BC8724();
      (*v91)(v54, v32);
      v46 = v46 + v57;
      sub_1C5BCB424();
      v44 = v50;
      if (*&v28[v42] == v95[0])
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD00000000000003CLL, 0x80000001C5BF60C0);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  v96 = sub_1C5BCB414();
  v76 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v76);

  MEMORY[0x1C694F170](0xD000000000000025, 0x80000001C5BF6100);
  v96 = *(v32 + 16);
  v77 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v77);

  MEMORY[0x1C694F170](41, 0xE100000000000000);
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}
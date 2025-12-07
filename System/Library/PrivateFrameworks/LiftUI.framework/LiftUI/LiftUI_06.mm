unint64_t sub_255DB0378(uint64_t a1)
{
  result = sub_255DB03A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DB03A0()
{
  result = qword_27F7E7EC8;
  if (!qword_27F7E7EC8)
  {
    result = swift_getWitnessTable(byte_255E52874, &type metadata for BackgroundModifier, v0, v1);
    atomic_store(result, &qword_27F7E7EC8);
  }

  return result;
}

uint64_t sub_255DB042C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7ED0, &qword_255E528B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255DB04A0()
{
  result = qword_27F7E7F10;
  if (!qword_27F7E7F10)
  {
    result = swift_getWitnessTable(aA_12, &type metadata for BackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F10);
  }

  return result;
}

unint64_t sub_255DB04F4()
{
  result = qword_27F7E7F18;
  if (!qword_27F7E7F18)
  {
    result = swift_getWitnessTable(byte_255E56438, &type metadata for ShapeStyleContentBox, v0, v1);
    atomic_store(result, &qword_27F7E7F18);
  }

  return result;
}

unint64_t sub_255DB059C()
{
  result = qword_27F7E7F28;
  if (!qword_27F7E7F28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShapeContentBox, &type metadata for ShapeContentBox, v0, v1);
    atomic_store(result, &qword_27F7E7F28);
  }

  return result;
}

unint64_t sub_255DB05F0()
{
  result = qword_27F7E7F30;
  if (!qword_27F7E7F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FillStyle, MEMORY[0x277CE1430], v0, v1);
    atomic_store(result, &qword_27F7E7F30);
  }

  return result;
}

uint64_t sub_255DB0654(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 83))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 82);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255DB0690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 79) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 82) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DB06E4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 82) = a2;
  return result;
}

unint64_t sub_255DB0728()
{
  result = qword_27F7E7F38;
  if (!qword_27F7E7F38)
  {
    result = swift_getWitnessTable(aRT, &type metadata for BackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F38);
  }

  return result;
}

unint64_t sub_255DB0780()
{
  result = qword_27F7E7F40;
  if (!qword_27F7E7F40)
  {
    result = swift_getWitnessTable(aQ_5, &type metadata for BackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F40);
  }

  return result;
}

unint64_t sub_255DB07D8()
{
  result = qword_27F7E7F48;
  if (!qword_27F7E7F48)
  {
    result = swift_getWitnessTable(byte_255E52E58, &type metadata for BackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F48);
  }

  return result;
}

uint64_t sub_255DB082C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_255E3AC68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_255E3AC68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255E65E50 == a2 || (sub_255E3AC68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C7974536C6C6966 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_255E3AC68();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_255DB0A6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255DB0AB4(uint64_t result, int a2, int a3)
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
      *(result + 129) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DB0B28@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  v24 = *(v3 + 40);
  v25 = v7;
  v26 = v8;
  v27 = v9;
  sub_255D612A0(v24, v7, v8, v9);
  sub_255D8F6FC(a2);
  v11 = v10;
  sub_255D4CB98(v24, v25, v26, v27);
  if (v11)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = *(v3 + 24);
  v14 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v15);
  (*(v14 + 16))(a2, v15, v14);
  v16 = *(v3 + 96);
  if (v16 <= 0xFD)
  {
    v17 = *(v3 + 80);
    v18 = *(v3 + 88);
    v24 = *(v3 + 72);
    v25 = v17;
    v26 = v18;
    v27 = v16;
    sub_255D612A0(v24, v17, v18, v16);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v24, v25, v26, v27);
  }

  v19 = *(v3 + 128);
  if (v19 <= 0xFD)
  {
    v20 = *(v3 + 112);
    v21 = *(v3 + 120);
    v24 = *(v3 + 104);
    v25 = v20;
    v26 = v21;
    v27 = v19;
    sub_255D612A0(v24, v20, v21, v19);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v24, v25, v26, v27);
  }

  v22 = sub_255E38AE8();
  a3[3] = v22;
  v23[0] = v13;
  v23[1] = MEMORY[0x277CDF760];
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v22, v23);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39C18();
}

uint64_t sub_255DB0D68()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DB0E0C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DB0E9C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DB0F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DB1810(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DB0F6C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726F6C6F63;
  v4 = 120;
  if (*v1 != 2)
  {
    v4 = 121;
  }

  if (*v1)
  {
    v3 = 0x737569646172;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE100000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_255DB0FCC()
{
  v1 = 0x726F6C6F63;
  v2 = 120;
  if (*v0 != 2)
  {
    v2 = 121;
  }

  if (*v0)
  {
    v1 = 0x737569646172;
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

unint64_t sub_255DB1028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DB1810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DB1050(uint64_t a1)
{
  v2 = sub_255DB1580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DB108C(uint64_t a1)
{
  v2 = sub_255DB1580();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255DB10C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F58, &qword_255E53538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255DB1580();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v14 = a2;
    v15 = v6;
    LOBYTE(v18[0]) = 1;
    v10 = sub_255D64774();
    sub_255E3ABC8();
    v13 = v10;
    *&v23[40] = v19;
    v24 = v20;
    v25 = v21;
    v16 = 0;
    sub_255D65E28();
    sub_255E3ABA8();
    if (v17[3])
    {
      sub_255D3CE1C(v17, v18);
      sub_255D65FFC(v17);
      sub_255D34630(v18, &v19);
    }

    else
    {
      sub_255DB15D4(v17);
      v21 = &type metadata for MonoColor;
      v22 = sub_255DB163C();
      v11 = swift_allocObject();
      *&v19 = v11;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      *(v11 + 40) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 48) = 0x3FD51EB851EB851FLL;
      *(v11 + 72) = 0;
    }

    sub_255D34630(&v19, v23);
    LOBYTE(v18[0]) = 2;
    sub_255E3ABA8();
    v12 = v15;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    LOBYTE(v18[0]) = 3;
    sub_255E3ABA8();
    (*(v12 + 8))(v8, v5);
    v29 = v19;
    v30 = v20;
    v31 = v21;
    sub_255DB1690(v23, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_255DB16C8(v23);
  }
}

unint64_t sub_255DB1504(uint64_t a1)
{
  result = sub_255DB152C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DB152C()
{
  result = qword_27F7E7F50;
  if (!qword_27F7E7F50)
  {
    result = swift_getWitnessTable(byte_255E534F0, &type metadata for ShadowModifier, v0, v1);
    atomic_store(result, &qword_27F7E7F50);
  }

  return result;
}

unint64_t sub_255DB1580()
{
  result = qword_27F7E7F60;
  if (!qword_27F7E7F60)
  {
    result = swift_getWitnessTable(byte_255E53644, &type metadata for ShadowModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F60);
  }

  return result;
}

uint64_t sub_255DB15D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F68, &qword_255E53540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DB163C()
{
  result = qword_27F7E7F70;
  if (!qword_27F7E7F70)
  {
    result = swift_getWitnessTable(aH_2, &type metadata for MonoColor, v0, v1);
    atomic_store(result, &qword_27F7E7F70);
  }

  return result;
}

unint64_t sub_255DB170C()
{
  result = qword_27F7E7F78;
  if (!qword_27F7E7F78)
  {
    result = swift_getWitnessTable(byte_255E5361C, &type metadata for ShadowModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F78);
  }

  return result;
}

unint64_t sub_255DB1764()
{
  result = qword_27F7E7F80;
  if (!qword_27F7E7F80)
  {
    result = swift_getWitnessTable(aMz, &type metadata for ShadowModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F80);
  }

  return result;
}

unint64_t sub_255DB17BC()
{
  result = qword_27F7E7F88;
  if (!qword_27F7E7F88)
  {
    result = swift_getWitnessTable(aV_12, &type metadata for ShadowModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7F88);
  }

  return result;
}

unint64_t sub_255DB1810(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DB185C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v4 = a1[3];
  v3 = a1[4];
  v34 = *v2;
  v33 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_255E390C8();
  sub_255DC8544(&qword_27F7E63D0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  swift_getOpaqueTypeMetadata2();
  v32 = sub_255E39588();
  v31 = sub_255DC8544(&qword_27F7E63C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  swift_getOpaqueTypeMetadata2();
  v5 = sub_255E39268();
  v30 = sub_255E38BB8();
  v29 = sub_255DC8544(&qword_27F7E63C0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  v28 = sub_255E39388();
  v27 = sub_255DC8544(&qword_27F7E63B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  swift_getOpaqueTypeMetadata2();
  v26 = sub_255E39268();
  v6 = sub_255E39268();
  v25 = sub_255E38E48();
  v24 = sub_255DC8544(&qword_27F7E63B0, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
  swift_getOpaqueTypeMetadata2();
  v23 = sub_255E39508();
  v22 = sub_255DC8544(&qword_27F7E63A8, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  swift_getOpaqueTypeMetadata2();
  v19 = sub_255E39268();
  v20 = sub_255E38B68();
  v7 = sub_255DC8544(&qword_27F7E63A0, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  swift_getOpaqueTypeMetadata2();
  v8 = sub_255E39268();
  v21 = sub_255E39268();
  v45[3] = v21;
  v41 = v4;
  v42 = v32;
  v43 = v3;
  v44 = v31;
  v40[0] = swift_getOpaqueTypeConformance2();
  v40[1] = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v5, v40);
  v41 = v4;
  v42 = v30;
  v43 = v3;
  v44 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v4;
  v42 = v28;
  v43 = v3;
  v44 = v27;
  v39[0] = OpaqueTypeConformance2;
  v39[1] = swift_getOpaqueTypeConformance2();
  v38[0] = WitnessTable;
  v38[1] = swift_getWitnessTable(v9, v26, v39);
  v12 = swift_getWitnessTable(v9, v6, v38);
  v41 = v4;
  v42 = v25;
  v43 = v3;
  v44 = v24;
  v13 = swift_getOpaqueTypeConformance2();
  v41 = v4;
  v42 = v23;
  v43 = v3;
  v44 = v22;
  v37[0] = v13;
  v37[1] = swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable(v9, v19, v37);
  v41 = v4;
  v42 = v20;
  v43 = v3;
  v44 = v7;
  v36[0] = v14;
  v36[1] = swift_getOpaqueTypeConformance2();
  v35[0] = v12;
  v35[1] = swift_getWitnessTable(v9, v8, v36);
  v15 = swift_getWitnessTable(v9, v21, v35);
  v16 = v45;
  v45[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  return sub_255D3FA00(v33, v34, v4, v3, boxed_opaque_existential_1);
}

uint64_t sub_255DB1DB0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_255DBFA2C(a2, *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    v41 = v11;
    v42 = v10;
    v54 = v9;
    v13 = a1[3];
    v39 = a1[4];
    v40 = __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    v44 = *v5;
    v45 = v14;
    v46 = v15;
    LOBYTE(v47) = v16;
    sub_255D3E5A8(v44, v14, v15, v16);
    v34 = a3;
    v17 = StringResolvable.resolved(with:)(a2);
    v19 = v18;
    v43 = 0;
    v20 = sub_255D38060(v44, v45, v46, v47);
    v35 = v19;
    v38 = &v33;
    v52 = v17;
    v53 = v19;
    v21 = MEMORY[0x28223BE20](v20);
    v37 = v32;
    v32[2] = v5;
    MEMORY[0x28223BE20](v21);
    v36 = v31;
    v31[2] = v5;
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    v24 = sub_255D6EEE8();
    v25 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
    v26 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
    v44 = v13;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v27 = v13;
    v28 = v39;
    v48 = v39;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v30 = v34;
    *(v34 + 24) = OpaqueTypeMetadata2;
    v44 = v27;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v48 = v28;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    v30[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_255E39BA8();
  }
}

uint64_t sub_255DB20F8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 32);
  if (v5 > 0xFD || (v7 = *(v3 + 16), v8 = *(v3 + 24), v17 = *(v3 + 8), v18 = v7, v19 = v8, v20 = v5, v9 = a1, sub_255D91714(v17, v7, v8, v5, sub_255D348B4), sub_255D8F6FC(a2), LOBYTE(a2) = v10, sub_255D9176C(v17, v18, v19, v20, sub_255D34870), a1 = v9, (a2 & 1) != 0))
  {
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_255E38AE8();
    a3[3] = v12;
    v21[0] = v11;
    v21[1] = MEMORY[0x277CDF918];
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v12, v21);
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  else
  {
    v13 = v9[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_255E38AE8();
    a3[3] = v14;
    v16[0] = v13;
    v16[1] = MEMORY[0x277CDF918];
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v14, v16);
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  return sub_255E39C58();
}

uint64_t sub_255DB22F8(uint64_t a1)
{
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v1 = sub_255E386A8();
  __swift_project_value_buffer(v1, qword_27F8152D8);
  v2 = sub_255E38688();
  v3 = sub_255E3A858();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255D2E000, v2, v3, "No modifyView() has been implemented, returning view without modifier applied", v4, 2u);
    MEMORY[0x259C4F9E0](v4, -1, -1);
  }
}

uint64_t sub_255DB2420(uint64_t a1, uint64_t a2)
{
  v13[3] = MEMORY[0x277CE11C8];
  v13[4] = MEMORY[0x277CE11C0];
  v13[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  v8 = sub_255DC84F0();
  (*(v8 + 16))(v14, v13, a2, v4, &type metadata for ToolbarModifier, v8);
  swift_setDeallocating();
  if (v2)
  {
    v9 = v4;
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = View.anyView.getter(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return v9;
}

uint64_t sub_255DB2680(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v17 = MEMORY[0x277CE11C8];
  v18 = MEMORY[0x277CE11C0];
  v16[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  v19[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  sub_255DDF1BC(a2, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  if (v3)
  {

    sub_255D3CE1C(v16, v19);
  }

  else
  {
    sub_255DDF1BC(a2, *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56));
    v14 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v20 = sub_255E38AE8();
    v15[0] = v14;
    v15[1] = MEMORY[0x277CDFC48];
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v20, v15);
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_255E39CD8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v10 = v20;
  v11 = WitnessTable;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v12 = View.anyView.getter(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v12;
}

uint64_t sub_255DB2934(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v6 = MEMORY[0x277CE11C8];
  v7 = MEMORY[0x277CE11C0];
  v38 = MEMORY[0x277CE11C8];
  v39 = MEMORY[0x277CE11C0];
  v37[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v8 = swift_allocObject();
  v9 = qword_27F7E8608;

  v10 = MEMORY[0x277D84F90];
  *(v8 + v9) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v8 + qword_27F7E8610) = 0;
  v40 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v8 + 112);
  *(v8 + v11) = sub_255DC513C(v10);
  *(v8 + *(*v8 + 128)) = 0;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v12 = *(v4 + 64);
  if (v12 > 0xFD)
  {
    goto LABEL_2;
  }

  v14 = *(v4 + 48);
  v15 = *(v4 + 56);
  v40 = *(v4 + 40);
  v41 = v14;
  v42 = v15;
  LOBYTE(v43) = v12;
  sub_255D3E5A8(v40, v14, v15, v12);
  v16 = StringResolvable.resolved(with:)(a2);
  if (v3)
  {

    sub_255D38060(v40, v41, v42, v43);
    v31 = 0;
    v6 = v38;
    v13 = v39;
    goto LABEL_5;
  }

  v24 = v16;
  v25 = v17;
  sub_255D38060(v40, v41, v42, v43);
  v26 = sub_255E0C470(v24, v25);
  v6 = v38;
  v7 = v39;
  if (v26 == 9)
  {
LABEL_2:
    v31 = v3;
    v13 = v7;
LABEL_5:
    v30 = __swift_project_boxed_opaque_existential_1(v37, v6);
    v45 = &v30;
    MEMORY[0x28223BE20](v30);
    sub_255E3A228();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
    v18 = sub_255E38AE8();
    v35 = v18;
    v19 = sub_255D38950(&qword_27F7E6A40, &qword_27F7E6A38, &qword_255E3E560, MEMORY[0x277CE03E8]);
    v33[0] = v13;
    v33[1] = v19;
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v18, v33);
    __swift_allocate_boxed_opaque_existential_1(&v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
    sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
    sub_255E39B88();
    goto LABEL_6;
  }

  v31 = __swift_project_boxed_opaque_existential_1(v37, v38);
  if (v26 <= 3)
  {
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = sub_255E3A248();
      }

      else
      {
        v27 = sub_255E3A208();
      }
    }

    else if (v26)
    {
      v27 = sub_255E3A238();
    }

    else
    {
      v27 = sub_255E3A228();
    }
  }

  else if (v26 <= 5)
  {
    if (v26 == 4)
    {
      v27 = sub_255E3A218();
    }

    else
    {
      v27 = sub_255E3A1C8();
    }
  }

  else if (v26 == 6)
  {
    v27 = sub_255E3A1D8();
  }

  else if (v26 == 7)
  {
    v27 = sub_255E3A1E8();
  }

  else
  {
    v27 = sub_255E3A1F8();
  }

  v30 = v27;
  v45 = &v30;
  MEMORY[0x28223BE20](v27);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
  v28 = sub_255E38AE8();
  v35 = v28;
  v29 = sub_255D38950(&qword_27F7E6A40, &qword_27F7E6A38, &qword_255E3E560, MEMORY[0x277CE03E8]);
  v32[0] = v7;
  v32[1] = v29;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v28, v32);
  __swift_allocate_boxed_opaque_existential_1(&v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
  sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
  sub_255E39B88();
LABEL_6:
  sub_255D34630(&v34, &v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  v20 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1(&v40, v43);
  v22 = View.anyView.getter(v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  return v22;
}

void *sub_255DB2F18(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v16[3] = MEMORY[0x277CE11C8];
  v16[4] = MEMORY[0x277CE11C0];
  v16[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v10 = *(*v7 + 112);
  *(v7 + v10) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v20 = v4;
  v11 = sub_255DC8544(&qword_27F7E6AD0, type metadata accessor for DismissAction, byte_255E3E8D4);
  v12 = &v20;
  (*(v11 + 24))(v17, v16, a2, v6, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (!v3)
  {
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = View.anyView.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return v12;
}

_OWORD *sub_255DB3194(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  *&v18[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4[7];
  v18[6] = v4[6];
  v18[7] = v10;
  v19[0] = v4[8];
  *(v19 + 9) = *(v4 + 137);
  v11 = v4[3];
  v18[2] = v4[2];
  v18[3] = v11;
  v12 = v4[5];
  v18[4] = v4[4];
  v18[5] = v12;
  v13 = v4[1];
  v18[0] = *v4;
  v18[1] = v13;
  v14 = v18;
  sub_255D74EF4(v20, a2, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (!v3)
  {
    v15 = v22;
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = View.anyView.getter(v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v14;
}

void *sub_255DB33C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v31 = a8;
  v27[3] = MEMORY[0x277CE11C8];
  v27[4] = MEMORY[0x277CE11C0];
  v27[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v25[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v17 = *(*v14 + 112);
  *(v14 + v17) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  v18 = swift_deallocClassInstance();
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v26 = a6;
  v19 = a7(v18);
  v20 = v25;
  (*(v19 + 24))(v28, v27, a2, v31, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  if (!v24)
  {
    v21 = v29;
    v22 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v20 = View.anyView.getter(v21, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return v20;
}

uint64_t sub_255DB3614(uint64_t a1, uint64_t a2)
{
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277CE11C0];
  v12[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v8 = sub_255DC823C();
  (*(v8 + 24))(v13, v12, a2, &type metadata for MonospacedDigitModifier, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (!v2)
  {
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v4 = View.anyView.getter(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return v4;
}

void *sub_255DB3828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v31 = a8;
  v27[3] = MEMORY[0x277CE11C8];
  v27[4] = MEMORY[0x277CE11C0];
  v27[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v25[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v17 = *(*v14 + 112);
  *(v14 + v17) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  v18 = swift_deallocClassInstance();
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v26 = a6 & 1;
  v19 = a7(v18);
  v20 = v25;
  (*(v19 + 24))(v28, v27, a2, v31, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  if (!v24)
  {
    v21 = v29;
    v22 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v20 = View.anyView.getter(v21, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return v20;
}

uint64_t sub_255DB3A78(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v33[3] = MEMORY[0x277CE11C8];
  v33[4] = MEMORY[0x277CE11C0];
  v33[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  *&v31[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v6 + 32))(v9 + v12, v8, v5);
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  v14 = v2[16];
  v37 = v2[17];
  v15 = v2[18];
  v32 = v37;

  sub_255D3957C(&v37, v31, &qword_27F7E8170, &qword_255E53920);

  sub_255D3D51C(v14);
  sub_255D3D51C(v15);
  v16 = v32;
  result = sub_255D3CE1C(v33, v31);
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v16 + 32;
    while (v19 < *(v16 + 16))
    {
      sub_255D3CE1C(v20, v28);
      v22 = v29;
      v21 = v30;
      v23 = __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(*(v21 + 8) + 16))(v27, v31, v26, v9, v22);
      if (v3)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        return v23;
      }

      ++v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      result = sub_255D34630(v27, v31);
      v20 += 40;
      if (v18 == v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_255D34630(v31, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v24 = v35;
    v25 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v23 = View.anyView.getter(v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    return v23;
  }

  return result;
}

uint64_t sub_255DB3E10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v21[3] = MEMORY[0x277CE11C8];
  v21[4] = MEMORY[0x277CE11C0];
  v21[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v22[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v21, MEMORY[0x277CE11C8]);
  sub_255DDF1BC(a2, a3, a4, a5, a6 & 1);
  if (v6)
  {
  }

  v16 = sub_255E38AE8();
  v22[3] = v16;
  v20[0] = MEMORY[0x277CE11C0];
  v20[1] = MEMORY[0x277CE0770];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v16, v20);
  v22[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_255E39A08();
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v18 = View.anyView.getter(v16, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v18;
}

uint64_t sub_255DB40C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v21[3] = MEMORY[0x277CE11C8];
  v21[4] = MEMORY[0x277CE11C0];
  v21[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v22[6] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  sub_255DDF1BC(a2, a3, a4, a5, a6 & 1);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v21, MEMORY[0x277CE11C8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E74A0, &unk_255E538A0);
    v16 = sub_255E38AE8();
    v22[3] = v16;
    v17 = sub_255D38950(&qword_27F7E74A8, &qword_27F7E74A0, &unk_255E538A0, MEMORY[0x277CE08A0]);
    v20[0] = MEMORY[0x277CE11C0];
    v20[1] = v17;
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v16, v20);
    v22[4] = WitnessTable;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_255E39C78();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v15 = View.anyView.getter(v16, WitnessTable);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return v15;
}

uint64_t sub_255DB43A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v10 = MEMORY[0x277CE11C8];
  v23[3] = MEMORY[0x277CE11C8];
  v23[4] = MEMORY[0x277CE11C0];
  v11 = a6;
  v23[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v23, v10);
  if (v11 <= 0xFD)
  {
    v24 = a3;
    v25 = a4;
    v26 = a5;
    LOBYTE(v27) = v6;
    sub_255DC65BC(a3, a4, a5, v6);
    sub_255D8F9E4(a2);
    sub_255D9176C(v24, v25, v26, v27, sub_255D34870);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
  v16 = sub_255E38AE8();
  v27 = v16;
  v17 = sub_255D38950(&qword_27F7E7570, &qword_27F7E7568, &qword_255E48DA8, MEMORY[0x277CE0868]);
  v22[0] = MEMORY[0x277CE11C0];
  v22[1] = v17;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v16, v22);
  v28 = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(&v24);
  sub_255E39CF8();
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  v19 = View.anyView.getter(v16, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  return v19;
}

uint64_t sub_255DB46C0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v29 = MEMORY[0x277CE11C8];
  v30 = MEMORY[0x277CE11C0];
  v28[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  v31[10] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = *(v4 + 24);
  v11 = 1.0;
  if (v10 == 255)
  {
    v13 = 1.0;
  }

  else
  {
    sub_255DDEF98(a2, *v4, *(v4 + 8), *(v4 + 16), v10 & 1);
    if (v3)
    {
      goto LABEL_14;
    }

    v13 = v12;
  }

  v14 = *(v4 + 56);
  if (v14 != 255)
  {
    sub_255DDEF98(a2, *(v4 + 32), *(v4 + 40), *(v4 + 48), v14 & 1);
    if (v3)
    {
      goto LABEL_14;
    }

    v11 = v15;
  }

  v16 = *(v4 + 88);
  v17 = 0.5;
  if (v16 == 255)
  {
    v19 = 0.5;
LABEL_12:
    v20 = *(v4 + 120);
    if (v20 != 255)
    {
      sub_255DDEF98(a2, *(v4 + 96), *(v4 + 104), *(v4 + 112), v20 & 1);
      if (v3)
      {
        goto LABEL_14;
      }

      v17 = v21;
    }

    v23 = v29;
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v25 = sub_255E38AE8();
    v31[3] = v25;
    v27[0] = v24;
    v27[1] = MEMORY[0x277CDF690];
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v25, v27);
    v31[4] = WitnessTable;
    __swift_allocate_boxed_opaque_existential_1(v31);
    MEMORY[0x259C4DC60](v23, v24, v13, v11, v19, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v6 = View.anyView.getter(v25, WitnessTable);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return v6;
  }

  sub_255DDEF98(a2, *(v4 + 64), *(v4 + 72), *(v4 + 80), v16 & 1);
  if (!v3)
  {
    v19 = v18;
    goto LABEL_12;
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v6;
}

void *sub_255DB4A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void *__return_ptr, void *, uint64_t))
{
  v27 = a7;
  v23[3] = MEMORY[0x277CE11C8];
  v23[4] = MEMORY[0x277CE11C0];
  v23[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v13 = swift_allocObject();
  v14 = qword_27F7E8608;

  v15 = MEMORY[0x277D84F90];
  *(v13 + v14) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v13 + qword_27F7E8610) = 0;
  v21[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v16 = *(*v13 + 112);
  *(v13 + v16) = sub_255DC513C(v15);
  *(v13 + *(*v13 + 128)) = 0;
  *(v13 + *(*v13 + 120)) = 0;
  *(v13 + *(*v13 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v22 = a6;
  v17 = v21;
  v27(v24, v23, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v7)
  {
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v17 = View.anyView.getter(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  return v17;
}

_OWORD *sub_255DB4C44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v17[3] = MEMORY[0x277CE11C8];
  v17[4] = MEMORY[0x277CE11C0];
  v17[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  *&v16[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4[3];
  v16[2] = v4[2];
  v16[3] = v10;
  v16[4] = v4[4];
  v11 = v4[1];
  v16[0] = *v4;
  v16[1] = v11;
  v12 = v16;
  sub_255D92DAC(v17, a2, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (!v3)
  {
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = View.anyView.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return v12;
}

_OWORD *sub_255DB4E58(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v18[3] = MEMORY[0x277CE11C8];
  v18[4] = MEMORY[0x277CE11C0];
  v18[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  *&v16[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4[3];
  v16[2] = v4[2];
  v16[3] = v10;
  v17[0] = v4[4];
  *(v17 + 10) = *(v4 + 74);
  v11 = v4[1];
  v16[0] = *v4;
  v16[1] = v11;
  v12 = v16;
  sub_255D95D74(v18, a2, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (!v3)
  {
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = View.anyView.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v12;
}

uint64_t sub_255DB5074(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  sub_255DC0C5C(v20, a2, a3, a4, a5, a6 & 1, v21);
  swift_setDeallocating();
  if (v6)
  {
    v16 = v12;
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v17 = v22;
    v18 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v16 = View.anyView.getter(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v16;
}

uint64_t sub_255DB52E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277CE11C8];
  v6 = MEMORY[0x277CE11C0];
  v33[3] = MEMORY[0x277CE11C8];
  v33[4] = MEMORY[0x277CE11C0];
  v33[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  *&v35[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v10 = *(*v7 + 112);
  *(v7 + v10) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v11 = v3[5];
  v30 = v3[4];
  v31 = v11;
  v32[0] = v3[6];
  *(v32 + 9) = *(v3 + 105);
  v12 = v3[1];
  v26 = *v3;
  v27 = v12;
  v13 = v3[3];
  v28 = v3[2];
  v29 = v13;
  __swift_project_boxed_opaque_existential_1(v33, v5);
  sub_255DC85E0(v3, v35);
  v14 = sub_255DAAB58(a2);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v35[4] = v30;
  v35[5] = v31;
  v36[0] = v32[0];
  *(v36 + 9) = *(v32 + 9);
  v35[0] = v26;
  v35[1] = v27;
  v35[2] = v28;
  v35[3] = v29;
  sub_255DAD76C(v35);
  *&v33[5] = v14;
  v33[6] = v16;
  v33[7] = v18;
  v33[8] = v20;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D80, &unk_255E51260);
  v21 = sub_255E38AE8();
  *(&v27 + 1) = v21;
  v25[0] = v6;
  v25[1] = sub_255D38950(&qword_27F7E7D88, &qword_27F7E7D80, &unk_255E51260, MEMORY[0x277CE04A0]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v21, v25);
  *&v28 = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(&v26);
  sub_255E39968();
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  v23 = View.anyView.getter(v21, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  return v23;
}

_OWORD *sub_255DB5614(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t))
{
  v6 = v3;
  v19[0] = a1;
  v19[3] = MEMORY[0x277CE11C8];
  v19[4] = MEMORY[0x277CE11C0];
  type metadata accessor for LocalStateStore(0);
  v8 = swift_allocObject();
  v9 = qword_27F7E8608;

  v10 = MEMORY[0x277D84F90];
  *(v8 + v9) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v8 + qword_27F7E8610) = 0;
  *&v17[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v8 + 112);
  *(v8 + v11) = sub_255DC513C(v10);
  *(v8 + *(*v8 + 128)) = 0;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v12 = v6[1];
  v17[0] = *v6;
  v17[1] = v12;
  v18[0] = v6[2];
  *(v18 + 9) = *(v6 + 41);
  v13 = v17;
  a3(v20, v19, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (!v4)
  {
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = View.anyView.getter(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return v13;
}

_OWORD *sub_255DB583C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v17[3] = MEMORY[0x277CE11C8];
  v17[4] = MEMORY[0x277CE11C0];
  v17[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  *&v15[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4[1];
  v15[0] = *v4;
  v15[1] = v10;
  v16[0] = v4[2];
  *(v16 + 9) = *(v4 + 41);
  v11 = v15;
  sub_255DABBD4(v17, a2, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (!v3)
  {
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = View.anyView.getter(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return v11;
}

uint64_t sub_255DB5A50(uint64_t a1)
{
  v3 = v1;
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277CE11C0];
  v12[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v8 = v3;
  sub_255DAC898(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (!v2)
  {
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = View.anyView.getter(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return v8;
}

uint64_t sub_255DB5C4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = MEMORY[0x277CE11C8];
  v25[3] = MEMORY[0x277CE11C8];
  v25[4] = MEMORY[0x277CE11C0];
  v25[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v25, v11);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  LOBYTE(v29) = a6;
  sub_255D91714(a3, a4, a5, a6, sub_255D348B4);
  sub_255D8F6FC(a2);
  sub_255D9176C(v26, v27, v28, v29, sub_255D34870);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA0, &unk_255E538D0);
  v16 = sub_255E38AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA8, &qword_255E51280);
  v17 = sub_255E38AE8();
  v29 = v17;
  v18 = sub_255D38950(&qword_27F7E7DB0, &qword_27F7E7DA0, &unk_255E538D0, MEMORY[0x277CE04A0]);
  v24[0] = MEMORY[0x277CE11C0];
  v24[1] = v18;
  v19 = MEMORY[0x277CDFAD8];
  v23[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v16, v24);
  v23[1] = sub_255D38950(&qword_27F7E7DB8, &qword_27F7E7DA8, &qword_255E51280, MEMORY[0x277CE0868]);
  WitnessTable = swift_getWitnessTable(v19, v17, v23);
  v30 = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(&v26);
  sub_255E39A58();
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v21 = View.anyView.getter(v17, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  return v21;
}

uint64_t *sub_255DB5FE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v27 = MEMORY[0x277CE11C8];
  v28 = MEMORY[0x277CE11C0];
  v26[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v16 = &v22;
  StringResolvable.resolved(with:)(a2);
  sub_255D38060(v22, v23, v24, v25);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_255E3AB48();

    v17 = v27;
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v22 = v17;
    v23 = v18;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v29[3] = OpaqueTypeMetadata2;
    v22 = v17;
    v23 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29[4] = OpaqueTypeConformance2;
    __swift_allocate_boxed_opaque_existential_1(v29);
    sub_255E39B28();
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v16 = View.anyView.getter(OpaqueTypeMetadata2, OpaqueTypeConformance2);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return v16;
}

uint64_t sub_255DB62F8(uint64_t a1, uint64_t *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v18[3] = MEMORY[0x277CE11C8];
  v18[4] = MEMORY[0x277CE11C0];
  v18[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v10 = swift_allocObject();
  v11 = qword_27F7E8608;

  v12 = MEMORY[0x277D84F90];
  *(v10 + v11) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v10 + qword_27F7E8610) = 0;
  v13 = *(*v10 + 104);
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v10 + v13, v9, v6);
  v14 = *(*v10 + 112);
  *(v10 + v14) = sub_255DC513C(v12);
  *(v10 + *(*v10 + 128)) = 0;
  *(v10 + *(*v10 + 120)) = 0;
  *(v10 + *(*v10 + 128)) = 0;
  sub_255DAEC00(v18, a2, v10, v19);

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (!v3)
  {
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v2 = View.anyView.getter(v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v2;
}

uint64_t sub_255DB6568(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = MEMORY[0x277CE11C0];
  v14[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4;
  sub_255DB0B28(v14, a2, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!v3)
  {
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = View.anyView.getter(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return v10;
}

uint64_t sub_255DB6764(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v24[3] = MEMORY[0x277CE11C8];
  v24[4] = MEMORY[0x277CE11C0];
  v24[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v8 + 32))(v11 + v14, v10, v7);
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  v16 = v4[3];
  v17 = v4[4];
  *(v11 + *(*v11 + 128)) = 0;
  v18 = __swift_project_boxed_opaque_existential_1(v4, v16);
  v19 = a2;
  v20 = v18;
  (*(v17 + 16))(v25, v24, v19, v11, v16, v17);

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  if (!v3)
  {
    v21 = v26;
    v22 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v20 = View.anyView.getter(v21, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  return v20;
}

uint64_t sub_255DB6A08(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = MEMORY[0x277CE11C0];
  v14[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4;
  sub_255DC9910(v14, a2, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!v3)
  {
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = View.anyView.getter(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return v10;
}

uint64_t *sub_255DB6C04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v33 = MEMORY[0x277CE11C8];
  v34 = MEMORY[0x277CE11C0];
  v32[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v26 = a3;
  v27 = a4;
  v28 = a5;
  LOBYTE(v29) = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v16 = &v26;
  v17 = StringResolvable.resolved(with:)(a2);
  if (v6)
  {
    sub_255D38060(v26, v27, v28, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    sub_255D38060(v26, v27, v28, v29);
    v21 = v33;
    v22 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v30 = v19;
    v31 = v20;
    v26 = v21;
    v27 = MEMORY[0x277D837D0];
    v28 = v22;
    v29 = MEMORY[0x277D837E0];
    v23 = sub_255E39FE8();
    v35[3] = v23;
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1148], v23);
    v35[4] = WitnessTable;
    __swift_allocate_boxed_opaque_existential_1(v35);
    sub_255E39B68();

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v16 = View.anyView.getter(v23, WitnessTable);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  return v16;
}

uint64_t sub_255DB6EF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v22[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v23 = a3;
  v24 = a4;
  v25 = a5;
  LOBYTE(v26) = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  StringResolvable.resolved(with:)(a2);
  if (v6)
  {
  }

  sub_255D38060(v23, v24, v25, v26);
  v16 = MEMORY[0x277CE11C8];
  v28 = __swift_project_boxed_opaque_existential_1(v22, MEMORY[0x277CE11C8]);
  v17 = sub_255D6EEE8();
  v23 = v16;
  v24 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277CE11C0];
  v26 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_255E399F8();

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v20 = View.anyView.getter(OpaqueTypeMetadata2, OpaqueTypeConformance2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v23);
  return v20;
}

uint64_t sub_255DB7208(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34[0] = a5;
  v34[1] = a3;
  v45 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  type metadata accessor for LocalStateStore(0);
  v13 = swift_allocObject();
  v14 = qword_27F7E8608;
  v15 = MEMORY[0x277D84F90];
  *(v13 + v14) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v13 + qword_27F7E8610) = 0;
  v16 = *(*v13 + 104);
  v42[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v10 + 32))(v13 + v16, v12, v9);
  v17 = *(*v13 + 112);
  *(v13 + v17) = sub_255DC513C(v15);
  *(v13 + *(*v13 + 128)) = 0;
  *(v13 + *(*v13 + 120)) = 0;
  *(v13 + *(*v13 + 128)) = 0;
  if (sub_255E1AAC0(a2))
  {
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = v15;
    }

    v19 = sub_255D48C6C(v18);

    v40 = MEMORY[0x277CE11C8];
    v41 = MEMORY[0x277CE11C0];
    *&v39 = v45;
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + 32;

      do
      {
        sub_255D3CE1C(v21, v42);
        v22 = v43;
        v23 = v44;
        __swift_project_boxed_opaque_existential_1(v42, v43);
        (*(v23 + 16))(&v35, &v39, a2, v13, v22, v23);
        if (v6)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          sub_255D3CE1C(&v39, v38);
          v6 = 0;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          sub_255D34630(&v35, v38);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        sub_255D34630(v38, &v39);
        v21 += 40;
        --v20;
      }

      while (v20);
      goto LABEL_21;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v34[0])
  {
    v24 = v34[0];
  }

  else
  {
    v24 = v15;
  }

  v25 = sub_255D48C6C(v24);

  v40 = MEMORY[0x277CE11C8];
  v41 = MEMORY[0x277CE11C0];
  *&v39 = v45;
  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_20;
  }

  v27 = v25 + 32;

  do
  {
    sub_255D3CE1C(v27, v42);
    v28 = v43;
    v29 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v29 + 16))(&v35, &v39, a2, v13, v28, v29);
    if (v6)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_255D3CE1C(&v39, v38);
      v6 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      sub_255D34630(&v35, v38);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    sub_255D34630(v38, &v39);
    v27 += 40;
    --v26;
  }

  while (v26);
LABEL_21:

  sub_255D34630(&v39, v42);
  v30 = v43;
  v31 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v32 = View.anyView.getter(v30, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return v32;
}

uint64_t sub_255DB7690(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - v8;
  v51[3] = MEMORY[0x277CE11C8];
  v51[4] = MEMORY[0x277CE11C0];
  v51[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v10 = swift_allocObject();
  v11 = qword_27F7E8608;

  v12 = MEMORY[0x277D84F90];
  *(v10 + v11) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v10 + qword_27F7E8610) = 0;
  v13 = *(*v10 + 104);
  v52[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v10 + v13, v9, v6);
  v14 = *(*v10 + 112);
  *(v10 + v14) = sub_255DC513C(v12);
  *(v10 + *(*v10 + 128)) = 0;
  *(v10 + *(*v10 + 120)) = 0;
  *(v10 + *(*v10 + 128)) = 0;
  sub_255D3CE1C(v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    sub_255D34630(&v45, v48);
    v56 = *v2;
    v15 = v56;
    if (v56)
    {
      v39 = v50;
      v38[1] = __swift_project_boxed_opaque_existential_1(v48, v49);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      v16 = sub_255E38AE8();
      v41 = v38;
      v17 = *(v16 - 8);
      v42 = v3;
      v40 = v17;
      MEMORY[0x28223BE20](v16);
      v19 = v38 - v18;
      v45 = *(v2 + 8);
      v55 = *(v2 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      v21 = *(v2 + 16);
      *(v20 + 24) = *v2;
      *(v20 + 40) = v21;
      *(v20 + 56) = *(v2 + 32);
      *(v20 + 64) = v15;
      *(v20 + 72) = v10;
      sub_255D3957C(&v56, v52, &qword_27F7E8148, &qword_255E53910);
      sub_255D3957C(&v56, v52, &qword_27F7E8148, &qword_255E53910);

      sub_255DC8A90(&v45, v52);
      sub_255DC8A90(&v55, v52);

      v22 = v39;
      sub_255E38E98();

      v23 = sub_255D48A94(v15);
      v24 = *(v22 + 8);
      v25 = sub_255D38950(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908, MEMORY[0x277CE04A0]);
      v43[0] = v24;
      v43[1] = v25;
      WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v16, v43);
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v23, a2, v10, v16, WitnessTable, v52);

      (*(v40 + 8))(v19, v16);
    }

    else
    {
      v27 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      v28 = sub_255E38AE8();
      *(&v46 + 1) = v28;
      v29 = sub_255D38950(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908, MEMORY[0x277CE04A0]);
      v44[0] = v27;
      v44[1] = v29;
      v47 = swift_getWitnessTable(MEMORY[0x277CDFAC0], v28, v44);
      __swift_allocate_boxed_opaque_existential_1(&v45);
      sub_255E38E98();
      v30 = *(&v46 + 1);
      v31 = v47;
      v32 = __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v53 = v30;
      v54 = *(v31 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v32, v30);

      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {

    v47 = 0;
    v46 = 0u;
    v45 = 0u;
    sub_255D395E4(&v45, &qword_27F7E8130, &qword_255E53900);
    sub_255D3CE1C(v51, v52);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  v34 = v53;
  v35 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v36 = View.anyView.getter(v34, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  return v36;
}

uint64_t sub_255DB7D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v52[3] = MEMORY[0x277CE11C8];
  v52[4] = MEMORY[0x277CE11C0];
  v52[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v13 = swift_allocObject();
  v14 = qword_27F7E8608;

  v15 = MEMORY[0x277D84F90];
  *(v13 + v14) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v13 + qword_27F7E8610) = 0;
  v16 = *(*v13 + 104);
  v53[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v10 + 32))(v13 + v16, v12, v9);
  v17 = *(*v13 + 112);
  *(v13 + v17) = sub_255DC513C(v15);
  *(v13 + *(*v13 + 128)) = 0;
  *(v13 + *(*v13 + 120)) = 0;
  *(v13 + *(*v13 + 128)) = 0;
  sub_255D3CE1C(v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    sub_255D34630(&v46, v49);
    if (a3)
    {
      v18 = v51;
      v40 = __swift_project_boxed_opaque_existential_1(v49, v50);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      v19 = sub_255E38AE8();
      v42 = &v40;
      v41 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v21 = &v40 - v20;
      v22 = swift_allocObject();
      v23 = a4;
      v24 = v43;
      v22[2] = v43;
      v22[3] = a3;
      v22[4] = v23;
      v22[5] = a5;
      v22[6] = a3;
      v22[7] = v13;
      swift_bridgeObjectRetain_n();

      sub_255E38EA8();

      v25 = sub_255D48A94(a3);
      v26 = *(v18 + 8);
      v27 = sub_255D38950(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10, MEMORY[0x277CE04A0]);
      v44[0] = v26;
      v44[1] = v27;
      WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v44);
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v25, v24, v13, v19, WitnessTable, v53);

      (*(v41 + 8))(v21, v19);
    }

    else
    {
      v29 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      v30 = sub_255E38AE8();
      *(&v47 + 1) = v30;
      v31 = sub_255D38950(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10, MEMORY[0x277CE04A0]);
      v45[0] = v29;
      v45[1] = v31;
      v48 = swift_getWitnessTable(MEMORY[0x277CDFAC0], v30, v45);
      __swift_allocate_boxed_opaque_existential_1(&v46);
      sub_255E38EA8();
      v32 = *(&v47 + 1);
      v33 = v48;
      v34 = __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      v54 = v32;
      v55 = *(v33 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
      (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v34, v32);

      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_255D395E4(&v46, &qword_27F7E8130, &qword_255E53900);
    sub_255D3CE1C(v52, v53);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v36 = v54;
  v37 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v38 = View.anyView.getter(v36, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  return v38;
}

uint64_t sub_255DB838C(uint64_t a1, uint64_t a2)
{
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277CE11C0];
  v12[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  v8 = sub_255DC8AFC();
  (*(v8 + 16))(v13, v12, a2, v4, &type metadata for GlassEffectModifier, v8);
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (!v2)
  {
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v4 = View.anyView.getter(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return v4;
}

uint64_t sub_255DB85E4(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  type metadata accessor for LocalStateStore(0);
  v10 = swift_allocObject();
  v11 = qword_27F7E8608;
  v12 = MEMORY[0x277D84F90];
  *(v10 + v11) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v10 + qword_27F7E8610) = 0;
  v13 = *(*v10 + 104);
  v32[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v10 + v13, v9, v6);
  v14 = *(*v10 + 112);
  *(v10 + v14) = sub_255DC513C(v12);
  *(v10 + *(*v10 + 128)) = 0;
  *(v10 + *(*v10 + 120)) = 0;
  v15 = *(v2 + 8);
  *(v10 + *(*v10 + 128)) = 0;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v17 = sub_255D48A94(v16);

  v30 = MEMORY[0x277CE11C8];
  v31 = MEMORY[0x277CE11C0];
  *&v29 = v35;
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;

    do
    {
      sub_255D3CE1C(v19, v32);
      v20 = v33;
      v21 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      (*(v21 + 16))(v26, &v29, a2, v10, v20, v21);
      if (v4)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        v27 = 0;
        memset(v26, 0, sizeof(v26));
        sub_255D3CE1C(&v29, v28);
        v4 = 0;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        sub_255D34630(v26, v28);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
      sub_255D34630(v28, &v29);
      v19 += 40;
      --v18;
    }

    while (v18);
  }

  else
  {
  }

  sub_255D34630(&v29, v32);
  v22 = v33;
  v23 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v24 = View.anyView.getter(v22, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v24;
}

uint64_t sub_255DB8930(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277CE11C8];
  v6 = MEMORY[0x277CE11C0];
  v23 = MEMORY[0x277CE11C8];
  v24 = MEMORY[0x277CE11C0];
  v22[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v10 = *(*v7 + 112);
  *(v7 + v10) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v11 = *(v3 + 32);
  if (v11 > 0xFD || (v12 = *(v3 + 16), v13 = *(v3 + 24), v25 = *(v3 + 8), v26 = v12, v27 = v13, LOBYTE(v28) = v11, sub_255D91714(v25, v12, v13, v11, sub_255D348B4), sub_255D8F6FC(a2), v15 = v14, sub_255D9176C(v25, v26, v27, v28, sub_255D34870), v5 = v23, v6 = v24, (v15 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1(v22, v5);
    v28 = sub_255E38AE8();
    v21[0] = v6;
    v21[1] = MEMORY[0x277CDF918];
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v28, v21);
    __swift_allocate_boxed_opaque_existential_1(&v25);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v28 = sub_255E38AE8();
    v20[0] = v6;
    v20[1] = MEMORY[0x277CDF918];
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v28, v20);
    __swift_allocate_boxed_opaque_existential_1(&v25);
  }

  sub_255E39C58();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v16 = v28;
  v17 = WitnessTable;
  __swift_project_boxed_opaque_existential_1(&v25, v28);
  v18 = View.anyView.getter(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  return v18;
}

uint64_t sub_255DB8C88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  v12 = MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v33 = MEMORY[0x277CE11C8];
  v34 = MEMORY[0x277CE11C0];
  v32[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v16 = swift_allocObject();
  v17 = qword_27F7E8608;

  v18 = MEMORY[0x277D84F90];
  *(v16 + v17) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v16 + qword_27F7E8610) = 0;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v16 + 112);
  *(v16 + v19) = sub_255DC513C(v18);
  *(v16 + *(*v16 + 128)) = 0;
  *(v16 + *(*v16 + 120)) = 0;
  *(v16 + *(*v16 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v20 = v35;
  StringResolvable.resolved(with:)(a2);
  sub_255D38060(v28, v29, v30, v31);
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v21 = __swift_project_boxed_opaque_existential_1(v32, v33);
    MEMORY[0x28223BE20](v21);
    (*(v23 + 16))(&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = sub_255E3A038();
    sub_255E39B18();

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_255D3957C(v15, v26, &qword_27F7E80A8, &qword_255E53890);
    sub_255DC83E0();
    a3 = sub_255E3A038();
    sub_255D395E4(v15, &qword_27F7E80A8, &qword_255E53890);
  }

  return a3;
}

uint64_t sub_255DB907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6 & 1;
  v17[3] = MEMORY[0x277CE11C8];
  v17[4] = MEMORY[0x277CE11C0];
  v17[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v8 = swift_allocObject();
  v9 = qword_27F7E8608;

  v10 = MEMORY[0x277D84F90];
  *(v8 + v9) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v8 + qword_27F7E8610) = 0;
  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v8 + 112);
  *(v8 + v11) = sub_255DC513C(v10);
  *(v8 + *(*v8 + 128)) = 0;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  v12 = sub_255DC849C();
  (*(v12 + 16))(v18, v17, a2, v8, &type metadata for AccessibilityHiddenModifier, v12);
  swift_setDeallocating();
  if (v6)
  {
    v13 = v8;
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = View.anyView.getter(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return v13;
}

uint64_t sub_255DB92F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, void (*a7)(uint64_t *, uint64_t, void, uint64_t, unint64_t))
{
  v34 = a7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  v13 = MEMORY[0x28223BE20](v36);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v43 = MEMORY[0x277CE11C8];
  v44 = MEMORY[0x277CE11C0];
  v42[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v17 = swift_allocObject();
  v18 = qword_27F7E8608;

  v19 = MEMORY[0x277D84F90];
  *(v17 + v18) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v17 + qword_27F7E8610) = 0;
  v38 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v20 = *(*v17 + 112);
  *(v17 + v20) = sub_255DC513C(v19);
  *(v17 + *(*v17 + 128)) = 0;
  *(v17 + *(*v17 + 120)) = 0;
  *(v17 + *(*v17 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v21 = v37;
  v22 = StringResolvable.resolved(with:)(a2);
  if (v21)
  {
    sub_255D38060(v38, v39, v40, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    v24 = v22;
    v25 = v23;
    sub_255D38060(v38, v39, v40, v41);
    v26 = __swift_project_boxed_opaque_existential_1(v42, v43);
    MEMORY[0x28223BE20](v26);
    (*(v28 + 16))(&v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = MEMORY[0x277CE11C8];
    v30 = MEMORY[0x277CE11C0];
    v45 = sub_255E3A038();
    v38 = v24;
    v39 = v25;
    v31 = sub_255D6EEE8();
    v34(&v38, v29, MEMORY[0x277D837D0], v30, v31);

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_255D3957C(v16, v35, &qword_27F7E80A8, &qword_255E53890);
    sub_255DC83E0();
    a3 = sub_255E3A038();
    sub_255D395E4(v16, &qword_27F7E80A8, &qword_255E53890);
  }

  return a3;
}

uint64_t sub_255DB96FC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AccessibilityFocusedModifier(0);
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v64[3] = MEMORY[0x277CE11C8];
  v64[4] = MEMORY[0x277CE11C0];
  v64[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v61[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v12 = *(*v9 + 112);
  *(v9 + v12) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v13 = sub_255DBFA2C(a2, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  else
  {
    v42 = v13;
    v45 = v14;
    v16 = MEMORY[0x277CE11C8];
    LODWORD(v41) = v15;
    v40 = __swift_project_boxed_opaque_existential_1(v64, MEMORY[0x277CE11C8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    v43 = 0;
    sub_255E39478();
    v46 = v8;
    v61[0] = v16;
    v17 = MEMORY[0x277CE11C0];
    v61[1] = MEMORY[0x277CE11C0];
    v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v56 = v16;
    v57 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v61);
    sub_255E39AB8();

    v18 = OpaqueTypeMetadata2;
    v19 = OpaqueTypeConformance2;
    v39 = __swift_project_boxed_opaque_existential_1(v61, OpaqueTypeMetadata2);
    sub_255E39458();
    LOBYTE(v49) = v56;
    v20 = v44;
    sub_255DC87A8(v4, v44);
    v40 = *(v66 + 80);
    v21 = (v40 + 33) & ~v40;
    v66 = v21;
    v22 = swift_allocObject();
    v23 = v42;
    v24 = v45;
    *(v22 + 16) = v42;
    *(v22 + 24) = v24;
    HIDWORD(v38) = v41 & 1;
    *(v22 + 32) = v41 & 1;
    sub_255DC880C(v20, v22 + v21);
    v56 = v18;
    v57 = MEMORY[0x277D839B0];
    v25 = MEMORY[0x277D839B0];
    v58 = v19;
    v59 = MEMORY[0x277D839C8];
    v26 = MEMORY[0x277D839C8];
    v41 = MEMORY[0x277CE0E40];
    v59 = swift_getOpaqueTypeMetadata2();
    v52 = v18;
    v53 = v25;
    v54 = v19;
    v55 = v26;
    v60 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v56);

    sub_255E39CA8();

    v28 = v59;
    v27 = v60;
    v39 = __swift_project_boxed_opaque_existential_1(&v56, v59);
    v49 = v23;
    v50 = v24;
    LOBYTE(v20) = BYTE4(v38);
    v51 = BYTE4(v38);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
    MEMORY[0x259C4E3A0](&v48, v29);
    v47 = v48;
    v30 = v4;
    v31 = v44;
    sub_255DC87A8(v30, v44);
    v32 = v66;
    v33 = swift_allocObject();
    *(v33 + 16) = v23;
    *(v33 + 24) = v24;
    *(v33 + 32) = v20;
    sub_255DC880C(v31, v33 + v32);
    v52 = v28;
    v34 = MEMORY[0x277D839B0];
    v53 = MEMORY[0x277D839B0];
    v54 = v27;
    v35 = MEMORY[0x277D839C8];
    v55 = MEMORY[0x277D839C8];
    v66 = swift_getOpaqueTypeMetadata2();
    v65[3] = v66;
    v52 = v28;
    v53 = v34;
    v54 = v27;
    v55 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v65[4] = v36;
    __swift_allocate_boxed_opaque_existential_1(v65);

    sub_255E39CA8();

    __swift_destroy_boxed_opaque_existential_1Tm(&v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v4 = View.anyView.getter(v66, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  return v4;
}

uint64_t *sub_255DB9E2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v32 = MEMORY[0x277CE11C8];
  v33 = MEMORY[0x277CE11C0];
  v31[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v16 = &v27;
  v17 = StringResolvable.resolved(with:)(a2);
  if (v6)
  {
    sub_255D38060(v27, v28, v29, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    sub_255D38060(v27, v28, v29, v30);
    if (sub_255E02250(v19, v20) == 5)
    {
      sub_255D3CE1C(v31, v34);
    }

    else
    {
      v21 = __swift_project_boxed_opaque_existential_1(v31, v32);
      MEMORY[0x28223BE20](v21);
      (*(v23 + 16))(&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v27 = sub_255E3A038();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
      v36 = sub_255DC83E0();
      __swift_allocate_boxed_opaque_existential_1(v34);
      sub_255E39AC8();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v24 = v35;
    v25 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v16 = View.anyView.getter(v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return v16;
}

uint64_t sub_255DBA1D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v28 = a2;
  v27 = a5;
  v10 = a6;
  v38 = sub_255E39568();
  v30 = *(v38 - 8);
  v11 = MEMORY[0x28223BE20](v38);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  *&v33 = MEMORY[0x277CE11C8];
  *(&v33 + 1) = MEMORY[0x277CE11C0];
  v32[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v16 = swift_allocObject();
  v17 = qword_27F7E8608;

  v18 = MEMORY[0x277D84F90];
  *(v16 + v17) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v16 + qword_27F7E8610) = 0;
  *&v34 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v16 + 112);
  *(v16 + v19) = sub_255DC513C(v18);
  *(v16 + *(*v16 + 128)) = 0;
  *(v16 + *(*v16 + 120)) = 0;
  *(v16 + *(*v16 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  if (v10 > 0xFD)
  {
    goto LABEL_4;
  }

  *&v34 = a3;
  *(&v34 + 1) = a4;
  v35 = v27;
  LOBYTE(OpaqueTypeMetadata2) = a6;
  sub_255D94C04(a3, a4, v27, a6);
  v20 = v29;
  StringResolvable.resolved(with:)(v28);
  if (!v20)
  {
    sub_255D38060(v34, *(&v34 + 1), v35, OpaqueTypeMetadata2);
    v26 = sub_255E3AB48();

    if (v26)
    {
      if (v26 == 1)
      {
        v29 = v33;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        sub_255E39548();
      }

      else
      {
        if (v26 != 2)
        {
          goto LABEL_4;
        }

        v29 = v33;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        sub_255E39558();
      }
    }

    else
    {
      v29 = v33;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      sub_255E39538();
    }

    v34 = v29;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v31 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v34);
    sub_255E39AA8();
    goto LABEL_5;
  }

  sub_255D38060(v34, *(&v34 + 1), v35, OpaqueTypeMetadata2);
LABEL_4:
  v21 = v33;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_255E39538();
  v34 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v34);
  sub_255E39AA8();
  v15 = v13;
LABEL_5:
  (*(v30 + 8))(v15, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v22 = OpaqueTypeMetadata2;
  v23 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(&v34, OpaqueTypeMetadata2);
  v24 = View.anyView.getter(v22, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(&v34);
  return v24;
}

uint64_t sub_255DBA688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = MEMORY[0x277CE11C0];
  v14[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v5 = swift_allocObject();
  v6 = qword_27F7E8608;

  v7 = MEMORY[0x277D84F90];
  *(v5 + v6) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v5 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v8 = *(*v5 + 112);
  *(v5 + v8) = sub_255DC513C(v7);
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  v9 = sub_255DC8754();
  (*(v9 + 16))(v15, v14, a2, v5, &type metadata for AccessibilityChildrenModifier, v9);
  swift_setDeallocating();
  if (v3)
  {
    v10 = v5;
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = View.anyView.getter(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return v10;
}

_OWORD *sub_255DBA8F0(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = *(v2 + 16);
  v24[0] = *v2;
  v24[1] = v10;
  v25 = *(v2 + 32);
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v11 + v14, v9, v6);
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  v16 = v24;
  sub_255E001D8(v20, a2, v11, v21);

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (!v3)
  {
    v17 = v22;
    v18 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v16 = View.anyView.getter(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v16;
}

uint64_t sub_255DBAB74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void *, uint64_t, uint64_t, uint64_t))
{
  v16[0] = a1;
  v16[3] = MEMORY[0x277CE11C8];
  v16[4] = MEMORY[0x277CE11C0];
  type metadata accessor for LocalStateStore(0);
  v8 = swift_allocObject();
  v9 = qword_27F7E8608;

  v10 = MEMORY[0x277D84F90];
  *(v8 + v9) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v8 + qword_27F7E8610) = 0;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v8 + 112);
  *(v8 + v11) = sub_255DC513C(v10);
  *(v8 + *(*v8 + 128)) = 0;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  a4(v17, v16, a2, v8, a3);
  swift_setDeallocating();
  if (v4)
  {
    v12 = v8;
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = View.anyView.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return v12;
}

uint64_t sub_255DBADD0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = MEMORY[0x277CE11C0];
  v14[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4;
  sub_255E030A4(v14, a2, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!v3)
  {
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = View.anyView.getter(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return v10;
}

uint64_t sub_255DBAFCC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v28[3] = MEMORY[0x277CE11C8];
  v28[4] = MEMORY[0x277CE11C0];
  v28[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v29[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  sub_255DDEBF8(a2, a3, a4, a5, a6 & 1, v29);
  if (v6)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v16 = sub_255E386A8();
    __swift_project_value_buffer(v16, qword_27F8152D8);
    v17 = sub_255E38688();
    v18 = sub_255E3A868();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_255D2E000, v17, v18, "TagModifier Unable to resolve tag value", v19, 2u);
      MEMORY[0x259C4F9E0](v19, -1, -1);
    }

    sub_255D3CE1C(v28, v29);
  }

  else
  {
    v20 = v29[0];
    v21 = MEMORY[0x277CE11C8];
    __swift_project_boxed_opaque_existential_1(v28, MEMORY[0x277CE11C8]);
    v32 = v20;
    v22 = sub_255D6F180();
    v29[0] = v21;
    v29[1] = &type metadata for DecodableState;
    v23 = MEMORY[0x277CE11C0];
    v29[2] = MEMORY[0x277CE11C0];
    OpaqueTypeMetadata2 = v22;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v29);
    sub_255D37560(&v32, 1, v21, &type metadata for DecodableState, v23);
  }

  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v24 = OpaqueTypeMetadata2;
  v25 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v29, OpaqueTypeMetadata2);
  v26 = View.anyView.getter(v24, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return v26;
}

uint64_t sub_255DBB378(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  *&v35.f64[0] = MEMORY[0x277CE11C8];
  *&v35.f64[1] = MEMORY[0x277CE11C0];
  v11 = a6;
  v34[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  *&v36 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  if (v11 <= 0xFD)
  {
    *&v36 = a3;
    *(&v36 + 1) = a4;
    *&v37 = a5;
    BYTE8(v37) = a6;
    sub_255D94C04(a3, a4, a5, a6);
    v18 = StringResolvable.resolved(with:)(a2);
    if (v6)
    {

      sub_255D38060(v36, *(&v36 + 1), v37, BYTE8(v37));
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = v18;
      v17 = v19;
      sub_255D38060(v36, *(&v36 + 1), v37, BYTE8(v37));
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v17)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v22 = sub_255E04CD8(v20, v21);
  if (v22 == 7)
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    *&v33.f64[0] = sub_255E38E68();
    *&v33.f64[1] = MEMORY[0x277CDDE48];
    __swift_allocate_boxed_opaque_existential_1(v32);
    sub_255E38E58();
    if (*(&v37 + 1))
    {
      sub_255D395E4(&v36, &qword_27F7E8120, &qword_255E538F0);
    }
  }

  else
  {
    sub_255E04704(v22, &v36);
    sub_255D34630(&v36, v32);
  }

  v30.val[0] = v35;
  __swift_project_boxed_opaque_existential_1(v34, *&v35.f64[0]);
  v30.val[1] = v33;
  __swift_project_boxed_opaque_existential_1(v32, *&v33.f64[0]);
  v23 = &v36;
  v39 = v30;
  vst2q_f64(v23, v39);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *(&v37 + 1) = OpaqueTypeMetadata2;
  v25 = &v31;
  v40 = v30;
  vst2q_f64(v25, v40);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_1(&v36);
  sub_255E398F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v27 = View.anyView.getter(OpaqueTypeMetadata2, OpaqueTypeConformance2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  return v27;
}

uint64_t sub_255DBB75C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v24 = MEMORY[0x277CE11C8];
  v25 = MEMORY[0x277CE11C0];
  v23[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v26[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v14 = *(*v11 + 112);
  *(v11 + v14) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  LOBYTE(v27) = a6;
  sub_255D91714(a3, a4, a5, a6, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v15;
  sub_255D9176C(a3, a4, a5, a6, sub_255D34870);
  if (a2)
  {
    sub_255D3CE1C(v23, v26);
  }

  else
  {
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8000, &qword_255E59630);
    v17 = sub_255E38AE8();
    v27 = v17;
    v22[0] = v16;
    v22[1] = sub_255D38950(&qword_27F7E8008, &qword_27F7E8000, &qword_255E59630, MEMORY[0x277CE04A0]);
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v17, v22);
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_255E399A8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  v18 = v27;
  v19 = WitnessTable;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v20 = View.anyView.getter(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v20;
}

uint64_t sub_255DBBA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void *, uint64_t, void))
{
  v33 = a5;
  v34 = a6;
  v32[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  v13 = MEMORY[0x277CE11C8];
  v36[3] = MEMORY[0x277CE11C8];
  v36[4] = MEMORY[0x277CE11C0];
  v36[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  v37[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v10 + 32))(v14 + v17, v12, v9);
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  __swift_project_boxed_opaque_existential_1(v36, v13);
  v19 = sub_255E38AE8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v32 - v21;
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a2;
  v23[4] = v14;

  v24 = v13;
  v25 = MEMORY[0x277CE11C0];
  v34(v33, v23, v24, MEMORY[0x277CE11C0]);

  v26 = sub_255D48A94(a3);
  v35[0] = v25;
  v35[1] = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v35);
  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v26, a2, v14, v19, WitnessTable, v37);

  (*(v20 + 8))(v22, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v28 = v38;
  v29 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v30 = View.anyView.getter(v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  return v30;
}

uint64_t *sub_255DBBE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-1] - v9;
  v26 = a3;
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v22[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v8 + 32))(v11 + v14, v10, v7);
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  v16 = sub_255DC80E4();
  v17 = &v26;
  (*(v16 + 16))(v23, v22, a2, v11, &type metadata for OnTapModifier, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (!v3)
  {
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v17 = View.anyView.getter(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  return v17;
}

uint64_t sub_255DBC0E8(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v52 = MEMORY[0x277CE11C8];
  v53 = MEMORY[0x277CE11C0];
  v51[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v10 = swift_allocObject();
  v11 = qword_27F7E8608;

  v12 = MEMORY[0x277D84F90];
  *(v10 + v11) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v10 + qword_27F7E8610) = 0;
  v13 = *(*v10 + 104);
  v47 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v10 + v13, v9, v6);
  v14 = *(*v10 + 112);
  *(v10 + v14) = sub_255DC513C(v12);
  *(v10 + *(*v10 + 128)) = 0;
  *(v10 + *(*v10 + 120)) = 0;
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  *(v10 + *(*v10 + 128)) = 0;
  sub_255DDEBF8(a2, v15, v16, *(v2 + 24), *(v2 + 32), &v47);
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  else
  {
    v17 = v47;
    v18 = *(v2 + 64);
    v40 = a2;
    if (v18 == 255)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_255DDF1BC(a2, *(v2 + 40), *(v2 + 48), *(v2 + 56), v18 & 1);
    }

    v19 = v52;
    v20 = v53;
    v41 = __swift_project_boxed_opaque_existential_1(v51, v52);
    v21 = sub_255D8AE34();
    v47 = v19;
    v48 = &type metadata for DecodableState;
    v49 = v20;
    v50 = v21;
    v22 = v21;
    v42 = MEMORY[0x277CE0E30];
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v46 = &v37;
    v45 = *(OpaqueTypeMetadata2 - 8);
    MEMORY[0x28223BE20](OpaqueTypeMetadata2);
    v38 = &v37 - v23;
    v39 = v17;
    v57 = v17;
    v24 = swift_allocObject();
    v25 = *(v2 + 112);
    *(v24 + 112) = *(v2 + 96);
    *(v24 + 128) = v25;
    *(v24 + 144) = *(v2 + 128);
    v26 = *(v2 + 48);
    *(v24 + 48) = *(v2 + 32);
    *(v24 + 64) = v26;
    v27 = *(v2 + 80);
    *(v24 + 80) = *(v2 + 64);
    *(v24 + 96) = v27;
    v28 = *(v2 + 16);
    *(v24 + 16) = *v2;
    *(v24 + 32) = v28;
    v29 = v40;
    *(v24 + 152) = v40;
    *(v24 + 160) = v10;
    sub_255DC86F0(v2, &v47);

    sub_255E39C98();

    v30 = sub_255D48A94(*v2);
    v47 = v19;
    v48 = &type metadata for DecodableState;
    v49 = v20;
    v50 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = OpaqueTypeMetadata2;
    v33 = v38;
    View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v30, v29, v10, OpaqueTypeMetadata2, OpaqueTypeConformance2, &v54);

    (*(v45 + 8))(v33, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v34 = v55;
    v35 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v14 = View.anyView.getter(v34, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  }

  return v14;
}

uint64_t sub_255DBC658(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = MEMORY[0x277CE11C8];
  v41[3] = MEMORY[0x277CE11C8];
  v41[4] = MEMORY[0x277CE11C0];
  v41[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v10 = swift_allocObject();
  v11 = qword_27F7E8608;

  v12 = MEMORY[0x277D84F90];
  *(v10 + v11) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v10 + qword_27F7E8610) = 0;
  v13 = *(*v10 + 104);
  *&v40[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v6 + 32))(v10 + v13, v8, v5);
  v14 = *(*v10 + 112);
  *(v10 + v14) = sub_255DC513C(v12);
  *(v10 + *(*v10 + 128)) = 0;
  *(v10 + *(*v10 + 120)) = 0;
  *(v10 + *(*v10 + 128)) = 0;
  v15 = v9;
  v16 = __swift_project_boxed_opaque_existential_1(v41, v9);
  v17 = v43;
  v18 = sub_255DBFA2C(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  if (v17)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    v43 = v19;
    v34 = v18;
    v33 = v20;
    sub_255DC8068(v2, v40);
    v21 = swift_allocObject();
    v22 = v40[3];
    *(v21 + 48) = v40[2];
    *(v21 + 64) = v22;
    *(v21 + 80) = v40[4];
    v23 = v40[1];
    *(v21 + 16) = v40[0];
    *(v21 + 32) = v23;
    *(v21 + 96) = a2;
    *(v21 + 104) = v10;
    sub_255DC8068(v2, &v35);
    v24 = swift_allocObject();
    v32 = v16;
    v25 = v38;
    v24[3] = v37;
    v24[4] = v25;
    v24[5] = v39;
    v26 = v36;
    v24[1] = v35;
    v24[2] = v26;
    *&v35 = v9;
    *(&v35 + 1) = v9;
    v27 = MEMORY[0x277CE11C0];
    *&v36 = MEMORY[0x277CE11C0];
    *(&v36 + 1) = MEMORY[0x277CE11C0];
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v42[3] = OpaqueTypeMetadata2;
    *&v35 = v9;
    *(&v35 + 1) = v9;
    *&v36 = v27;
    *(&v36 + 1) = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42[4] = OpaqueTypeConformance2;
    __swift_allocate_boxed_opaque_existential_1(v42);

    sub_255E39BD8();

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v15 = View.anyView.getter(OpaqueTypeMetadata2, OpaqueTypeConformance2);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  return v15;
}

uint64_t sub_255DBCAE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v24 = MEMORY[0x277CE11C8];
  v25 = MEMORY[0x277CE11C0];
  v23[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v26[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v14 = *(*v11 + 112);
  *(v11 + v14) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  LOBYTE(v27) = a6;
  sub_255D91714(a3, a4, a5, a6, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(v11) = v15;
  sub_255D9176C(a3, a4, a5, a6, sub_255D34870);
  if (v11)
  {
    sub_255D3CE1C(v23, v26);
  }

  else
  {
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
    v17 = sub_255E38AE8();
    v27 = v17;
    v22[0] = v16;
    v22[1] = sub_255D38950(&qword_27F7E7FF8, &qword_27F7E7FF0, &qword_255E5C660, MEMORY[0x277CDF4F0]);
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v17, v22);
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_255E39948();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  v18 = v27;
  v19 = WitnessTable;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v20 = View.anyView.getter(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v20;
}

_OWORD *sub_255DBCE20(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v18[3] = MEMORY[0x277CE11C8];
  v18[4] = MEMORY[0x277CE11C0];
  v18[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  *&v16[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4[3];
  v16[2] = v4[2];
  v16[3] = v10;
  v17[0] = v4[4];
  *(v17 + 9) = *(v4 + 73);
  v11 = v4[1];
  v16[0] = *v4;
  v16[1] = v11;
  v12 = v16;
  sub_255E1E040(v18, a2, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (!v3)
  {
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = View.anyView.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v12;
}

uint64_t sub_255DBD03C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v15[3] = MEMORY[0x277CE11C8];
  v15[4] = MEMORY[0x277CE11C0];
  v15[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = sub_255DC838C();
  v11 = v4;
  (*(v10 + 24))(v16, v15, a2, &type metadata for FormStyleModifier, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (!v3)
  {
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = View.anyView.getter(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return v11;
}

uint64_t sub_255DBD258(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = MEMORY[0x277CE11C0];
  v14[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4;
  sub_255E23CF4(v14, a2, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!v3)
  {
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = View.anyView.getter(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return v10;
}

uint64_t sub_255DBD454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277CE11C8];
  v6 = MEMORY[0x277CE11C0];
  v18[3] = MEMORY[0x277CE11C8];
  v18[4] = MEMORY[0x277CE11C0];
  v18[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v19[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v10 = *(*v7 + 112);
  *(v7 + v10) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v18, v5);
  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v11);
  v19[6] = (*(v12 + 16))(a2, v11, v12);
  sub_255E395E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FC0, &qword_255E53808);
  v13 = sub_255E38AE8();
  v19[3] = v13;
  v17[0] = v6;
  v17[1] = sub_255D38950(&qword_27F7E7FC8, &qword_27F7E7FC0, &qword_255E53808, MEMORY[0x277CE0728]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v17);
  v19[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_255E39868();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v15 = View.anyView.getter(v13, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v15;
}

uint64_t sub_255DBD744(uint64_t a1, uint64_t a2)
{
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277CE11C0];
  v12[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  sub_255E24A04(v12, a2, v13);
  swift_setDeallocating();
  if (v2)
  {
    v8 = v4;
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    LocalStateStore.deinit();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = View.anyView.getter(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return v8;
}

uint64_t sub_255DBD984(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v21[0] = a1;
  v7 = MEMORY[0x277CE11C8];
  v21[3] = MEMORY[0x277CE11C8];
  v8 = MEMORY[0x277CE11C0];
  v21[4] = MEMORY[0x277CE11C0];
  type metadata accessor for LocalStateStore(0);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v22[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v12 = *(*v9 + 112);
  *(v9 + v12) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v21, v7);
  v14 = v5[3];
  v13 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v14);
  v15 = (*(v13 + 16))(a2, v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FD0, &unk_255E53810);
  v16 = sub_255E38AE8();
  v22[3] = v16;
  v20[0] = v8;
  v20[1] = sub_255D38950(&qword_27F7E7FD8, &qword_27F7E7FD0, &unk_255E53810, MEMORY[0x277CE0868]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v16, v20);
  v22[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v22);
  a3(v15, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v18 = View.anyView.getter(v16, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v18;
}

uint64_t sub_255DBDC60(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = MEMORY[0x277CE11C0];
  v14[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = v4;
  sub_255E25AAC(v14, a2, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!v3)
  {
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = View.anyView.getter(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return v10;
}

uint64_t sub_255DBDE5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = MEMORY[0x277CE11C8];
  v26[3] = MEMORY[0x277CE11C8];
  v26[4] = MEMORY[0x277CE11C0];
  v26[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  *&v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v11 + v14, v9, v6);
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  __swift_project_boxed_opaque_existential_1(v26, v10);
  v16 = v3[3];
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v16);
  v18 = v27[6];
  (*(v17 + 48))(&v25, a2, v11, v16, v17);
  if (v18)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v24 = v25;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8040, &qword_255E53880);
    v19 = sub_255E38AE8();
    v27[3] = v19;
    v20 = sub_255D38950(&qword_27F7E8048, &qword_27F7E8040, &qword_255E53880, MEMORY[0x277CDF4F0]);
    v23[0] = MEMORY[0x277CE11C0];
    v23[1] = v20;
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v23);
    v27[4] = WitnessTable;
    __swift_allocate_boxed_opaque_existential_1(v27);
    sub_255D3D6B0();
    sub_255E39CC8();

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v15 = View.anyView.getter(v19, WitnessTable);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return v15;
}

uint64_t sub_255DBE1E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = MEMORY[0x277CE11C8];
  v26[3] = MEMORY[0x277CE11C8];
  v26[4] = MEMORY[0x277CE11C0];
  v26[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  *&v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v11 + v14, v9, v6);
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  __swift_project_boxed_opaque_existential_1(v26, v10);
  v16 = v3[3];
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v16);
  v18 = v27[6];
  (*(v17 + 48))(&v25, a2, v11, v16, v17);
  if (v18)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v24 = v25;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80D0, &qword_255E53898);
    v19 = sub_255E38AE8();
    v27[3] = v19;
    v20 = sub_255D38950(&qword_27F7E80D8, &qword_27F7E80D0, &qword_255E53898, MEMORY[0x277CE0470]);
    v23[0] = MEMORY[0x277CE11C0];
    v23[1] = v20;
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v23);
    v27[4] = WitnessTable;
    __swift_allocate_boxed_opaque_existential_1(v27);
    sub_255D3D6B0();
    sub_255E39938();

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v15 = View.anyView.getter(v19, WitnessTable);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return v15;
}

uint64_t sub_255DBE574(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v49[3] = MEMORY[0x277CE11C8];
  v49[4] = MEMORY[0x277CE11C0];
  v49[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  v39 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v10 = sub_255DBFA2C(a2, *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56));
  if (v3)
  {

    sub_255D3CE1C(v49, v50);
  }

  else
  {
    v37 = v12;
    v38 = v11;
    v53 = v10;
    v13 = MEMORY[0x277CE11C8];
    v36[6] = __swift_project_boxed_opaque_existential_1(v49, MEMORY[0x277CE11C8]);
    v14 = *(v4 + 8);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    v39 = *v4;
    v40 = v14;
    v41 = v15;
    LOBYTE(v42) = v16;
    sub_255D3E5A8(v39, v14, v15, v16);
    v17 = StringResolvable.resolved(with:)(a2);
    v19 = v18;
    v36[1] = 0;
    v20 = sub_255D38060(v39, v40, v41, v42);
    v36[3] = v19;
    v36[5] = v36;
    v47 = v17;
    v48 = v19;
    v21 = MEMORY[0x28223BE20](v20);
    v36[4] = v35;
    v35[2] = v4;
    MEMORY[0x28223BE20](v21);
    v36[2] = v34;
    v34[2] = v4;
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    v24 = sub_255D6EEE8();
    v25 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
    v26 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
    v27 = MEMORY[0x277D837D0];
    v39 = v13;
    v40 = MEMORY[0x277D837D0];
    v41 = v22;
    v42 = v23;
    v28 = v13;
    v29 = MEMORY[0x277CE11C0];
    v43 = MEMORY[0x277CE11C0];
    v44 = v24;
    v45 = v25;
    v46 = v26;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v39 = v28;
    v40 = v27;
    v41 = v22;
    v42 = v23;
    v43 = v29;
    v44 = v24;
    v45 = v25;
    v46 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v50);
    sub_255E39BA8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  v30 = OpaqueTypeMetadata2;
  v31 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v50, OpaqueTypeMetadata2);
  v32 = View.anyView.getter(v30, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return v32;
}

uint64_t sub_255DBEA80(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t))
{
  v6 = v3;
  v16[0] = a1;
  v16[3] = MEMORY[0x277CE11C8];
  v16[4] = MEMORY[0x277CE11C0];
  type metadata accessor for LocalStateStore(0);
  v8 = swift_allocObject();
  v9 = qword_27F7E8608;

  v10 = MEMORY[0x277D84F90];
  *(v8 + v9) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v8 + qword_27F7E8610) = 0;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v8 + 112);
  *(v8 + v11) = sub_255DC513C(v10);
  *(v8 + *(*v8 + 128)) = 0;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v12 = v6;
  a3(v17, v16, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (!v4)
  {
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = View.anyView.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return v12;
}

void *sub_255DBEC90(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v15[3] = MEMORY[0x277CE11C8];
  v15[4] = MEMORY[0x277CE11C0];
  v15[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v6 = swift_allocObject();
  v7 = qword_27F7E8608;

  v8 = MEMORY[0x277D84F90];
  *(v6 + v7) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v6 + qword_27F7E8610) = 0;
  v14[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v6 + 112);
  *(v6 + v9) = sub_255DC513C(v8);
  *(v6 + *(*v6 + 128)) = 0;
  *(v6 + *(*v6 + 120)) = 0;
  *(v6 + *(*v6 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  memcpy(v14, v4, sizeof(v14));
  v10 = v14;
  sub_255E36FAC(v15, a2, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (!v3)
  {
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = View.anyView.getter(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return v10;
}

uint64_t sub_255DBEEA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v24 = a5;
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v11 = ~a6;
  v22[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v23[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v12 + 112);
  *(v12 + v15) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  if (v11)
  {
    sub_255DDF1BC(a2, a3, a4, v24, a6 & 1);
    if (v6)
    {
    }
  }

  __swift_project_boxed_opaque_existential_1(v22, MEMORY[0x277CE11C8]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80F0, &unk_255E538B0);
  v16 = sub_255E38AE8();
  v23[3] = v16;
  v17 = sub_255D38950(&qword_27F7E80F8, &qword_27F7E80F0, &unk_255E538B0, MEMORY[0x277CDF4F0]);
  v21[0] = MEMORY[0x277CE11C0];
  v21[1] = v17;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v16, v21);
  v23[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_255E39C28();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v19 = View.anyView.getter(v16, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v19;
}

uint64_t ContentModifier.modifyView(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v22[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v15 = *(*v12 + 104);
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v9 + 32))(v12 + v15, v11, v8);
  v16 = *(*v12 + 112);
  *(v12 + v16) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  v17 = v21[1];
  (*(a4 + 16))(v23, v22, a2, v12, v21[0], a4);

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (!v17)
  {
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v4 = View.anyView.getter(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  return v4;
}

uint64_t sub_255DBF48C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_255E3A038();
  v8 = sub_255DB22F8(v7);

  if (!v2)
  {
    v10 = MEMORY[0x277CE11C0];
    a2[3] = MEMORY[0x277CE11C8];
    a2[4] = v10;
    *a2 = v8;
  }

  return result;
}

uint64_t ContentModifier.modifyView(_:with:)@<X0>(void *a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255E3A038();
  v10 = (*(a3 + 32))();

  if (!v4)
  {
    v12 = MEMORY[0x277CE11C0];
    a4[3] = MEMORY[0x277CE11C8];
    a4[4] = v12;
    *a4 = v10;
  }

  return result;
}

uint64_t sub_255DBF6FC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    sub_255DDF1BC(a2, v8, v9, v10, v11);
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_255E38AE8();
    a3[3] = v14;
    v15[0] = v13;
    v15[1] = MEMORY[0x277CDFC48];
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v14, v15);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39CD8();
  }
}

uint64_t sub_255DBF87C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
  v4 = sub_255E38AE8();
  a2[3] = v4;
  v6[0] = v3;
  v6[1] = sub_255D38950(&qword_27F7E6510, &qword_27F7E6508, &unk_255E53830, MEMORY[0x277CE0868]);
  a2[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v6);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E398C8();
}

uint64_t sub_255DBFA2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_255E3A078();
    return v21;
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_255D34858(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    if (v19)
    {
      sub_255DC26E0(v18, v19, v20, a1, a4);
      if (!v5)
      {
        sub_255E3A098();
        sub_255DC6C84(v18, v19, v20);
        sub_255D2F870(a4);
        return v18;
      }

      sub_255DC6C84(v18, v19, v20);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v17 = a2;
      *(v17 + 8) = a3;
      *(v17 + 16) = MEMORY[0x277D839B0];
      *(v17 + 32) = 0;
      swift_willThrow();
    }

    return sub_255D2F870(a4);
  }

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8010, &unk_255E53850);
  sub_255E3A068();
  v12 = MEMORY[0x277D839B0];
  sub_255E3A098();
  if (v19)
  {
    return v18;
  }

  sub_255D5C33C();
  swift_allocError();
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = v12;
  *(v16 + 32) = 0;
  swift_willThrow();
}

uint64_t sub_255DBFDEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  if ((a5 & 1) == 0)
  {
    *&v26 = a2;

    sub_255E3A078();
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v17[5] = a2;
    v17[6] = a3;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_255D34858(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    v18 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v19 = v26;
      v20 = v27;
      sub_255DC2CD0(v26, *(&v26 + 1), v27, a1, a4, &v25);
      if (!v6)
      {
        sub_255E3A098();
        if (*(&v26 + 1))
        {
          sub_255DC6C84(v19, v18, v20);
          result = sub_255D2F870(a4);
          v23 = v27;
          *a6 = v26;
          a6[2] = v23;
          return result;
        }

        sub_255DC6C84(v26, 0, v27);
        sub_255D5C33C();
        swift_allocError();
        *v24 = 1;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = 5;
        swift_willThrow();
      }

      sub_255DC6C84(v19, v18, v20);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v22 = a2;
      *(v22 + 8) = a3;
      *(v22 + 16) = &type metadata for DecodableState;
      *(v22 + 32) = 0;
      swift_willThrow();
    }

    return sub_255D2F870(a4);
  }

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  sub_255E3A068();
  sub_255E3A098();
  result = v26;
  v15 = v27;
  if (*(&v26 + 1))
  {
    *a6 = v26;
    a6[2] = v15;
  }

  else
  {
    sub_255DC6C84(v26, 0, v27);
    sub_255D5C33C();
    swift_allocError();
    *v21 = a2;
    *(v21 + 8) = a3;
    *(v21 + 16) = &type metadata for DecodableState;
    *(v21 + 32) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_255DC0534@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9 <= 0xFD)
  {
    sub_255D91714(v6, v7, v8, v9, sub_255D348B4);
    sub_255D8F9E4(a2);
    sub_255D9176C(v6, v7, v8, v9, sub_255D34870);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
  v11 = sub_255E38AE8();
  a3[3] = v11;
  v13[0] = v10;
  v13[1] = sub_255D38950(&qword_27F7E7570, &qword_27F7E7568, &qword_255E48DA8, MEMORY[0x277CE0868]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v11, v13);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39CF8();
}

uint64_t sub_255DC09B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v17 = *v2;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_255E38E88();
  sub_255DC8544(&qword_27F7E7BA8, MEMORY[0x277CDDE68], MEMORY[0x277CDDE58]);
  swift_getOpaqueTypeMetadata2();
  v14 = sub_255E38C98();
  v5 = sub_255DC8544(&qword_27F7E7BA0, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
  swift_getOpaqueTypeMetadata2();
  v6 = sub_255E39268();
  v13 = sub_255E38DB8();
  v7 = sub_255DC8544(&qword_27F7E7B98, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  swift_getOpaqueTypeMetadata2();
  v8 = sub_255E39268();
  a2[3] = v8;
  v20 = v3;
  v21 = v14;
  v22 = v4;
  v23 = v5;
  v19[0] = swift_getOpaqueTypeConformance2();
  v19[1] = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v6, v19);
  v20 = v3;
  v21 = v13;
  v22 = v4;
  v23 = v7;
  v18[0] = WitnessTable;
  v18[1] = swift_getOpaqueTypeConformance2();
  a2[4] = swift_getWitnessTable(v9, v8, v18);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA30DC(v16, v17, v3, v4, boxed_opaque_existential_1);
}

uint64_t sub_255DC0C5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t *a7@<X8>)
{
  sub_255D3CE1C(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8030, &qword_255E53870);
  if (swift_dynamicCast())
  {
    sub_255D34630(v24, v29);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_255DDEF98(a2, a3, a4, a5, a6 & 1);
    if (v7)
    {
    }

    v27 = sub_255E38968();
    WitnessTable = swift_getWitnessTable(MEMORY[0x277CDF778], v27);
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_255E39F78();
    v20 = v27;
    v21 = WitnessTable;
    v22 = __swift_project_boxed_opaque_existential_1(v26, v27);
    a7[3] = v20;
    a7[4] = *(v21 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_255D395E4(v24, &qword_27F7E8038, &qword_255E53878);
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v15 = sub_255E386A8();
    __swift_project_value_buffer(v15, qword_27F8152D8);
    v16 = sub_255E38688();
    v17 = sub_255E3A848();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_255D2E000, v16, v17, "Shape modifier applied to non-shape view", v18, 2u);
      MEMORY[0x259C4F9E0](v18, -1, -1);
    }

    return sub_255D3CE1C(a1, a7);
  }
}

uint64_t sub_255DC0F1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_255E3A038();
  v8 = sub_255DB22F8(v7);

  if (!v2)
  {
    v10 = MEMORY[0x277CE11C0];
    a2[3] = MEMORY[0x277CE11C8];
    a2[4] = v10;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_255DC1058@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = *(v2 + 8);
  v4 = a1[4];
  v15 = v4;
  v17 = *v2;
  v18 = *(v2 + 16);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  v5 = sub_255E38AE8();
  v6 = sub_255E39268();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  v7 = sub_255E39268();
  v8 = sub_255E39268();
  v9 = sub_255E39268();
  a2[3] = v9;
  v24[0] = v4;
  v24[1] = sub_255D38950(&qword_27F7E7D08, &qword_27F7E7D00, &unk_255E4FB00, MEMORY[0x277CE0868]);
  v23[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v5, v24);
  v23[1] = v23[0];
  v10 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v6, v23);
  v12 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
  v22[0] = WitnessTable;
  v22[1] = v12;
  v21[0] = WitnessTable;
  v21[1] = swift_getWitnessTable(v10, v7, v22);
  v20[0] = swift_getWitnessTable(v10, v8, v21);
  v20[1] = v12;
  a2[4] = swift_getWitnessTable(v10, v9, v20);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA8994(v16, v19, v18, v17, v15, boxed_opaque_existential_1);
}

uint64_t sub_255DC129C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[5];
  v30[4] = v3[4];
  v30[5] = v6;
  v31[0] = v3[6];
  *(v31 + 9) = *(v3 + 105);
  v7 = v3[1];
  v30[0] = *v3;
  v30[1] = v7;
  v8 = v3[3];
  v30[2] = v3[2];
  v30[3] = v8;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v3[5];
  v27 = v3[4];
  v28 = v10;
  v29[0] = v3[6];
  *(v29 + 9) = *(v3 + 105);
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v12 = v3[3];
  v25 = v3[2];
  v26 = v12;
  sub_255DAD734(v30, v32);
  v13 = sub_255DAAB58(a2);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v32[4] = v27;
  v32[5] = v28;
  v33[0] = v29[0];
  *(v33 + 9) = *(v29 + 9);
  v32[0] = v23;
  v32[1] = v24;
  v32[2] = v25;
  v32[3] = v26;
  sub_255DAD76C(v32);
  *&v23 = v13;
  *(&v23 + 1) = v15;
  *&v24 = v17;
  *(&v24 + 1) = v19;
  LOBYTE(v25) = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D80, &unk_255E51260);
  v20 = sub_255E38AE8();
  a3[3] = v20;
  v22[0] = v9;
  v22[1] = sub_255D38950(&qword_27F7E7D88, &qword_27F7E7D80, &unk_255E51260, MEMORY[0x277CE04A0]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v20, v22);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39968();
}

uint64_t sub_255DC15FC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = a1[4];
  v10 = *(v3 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v17 = v10;
  sub_255D91714(v6, v7, v8, v10, sub_255D348B4);
  sub_255D8F6FC(a2);
  sub_255D9176C(v6, v7, v8, v10, sub_255D34870);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA0, &unk_255E538D0);
  v11 = sub_255E38AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA8, &qword_255E51280);
  v12 = sub_255E38AE8();
  a3[3] = v12;
  v16[0] = v9;
  v16[1] = sub_255D38950(&qword_27F7E7DB0, &qword_27F7E7DA0, &unk_255E538D0, MEMORY[0x277CE04A0]);
  v13 = MEMORY[0x277CDFAD8];
  v15[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v11, v16);
  v15[1] = sub_255D38950(&qword_27F7E7DB8, &qword_27F7E7DA8, &qword_255E51280, MEMORY[0x277CE0868]);
  a3[4] = swift_getWitnessTable(v13, v12, v15);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A58();
}

uint64_t AnyViewModifier.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v10 = sub_255E3AAE8();
  v11 = __swift_project_value_buffer(v10, qword_27F8152F0);
  if (!*(v9 + 16) || (v12 = sub_255D3CA98(v11), (v13 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v9 + 56) + 32 * v12, &v40);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError(0);
    sub_255DC8544(&qword_27F7E61A0, type metadata accessor for ContentRegistryError, aQ_9);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36 = v5;
  v45 = v6;
  v35 = a2;
  v14 = v39[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v34 = v14;
    v17 = v36;
    v18 = sub_255E3ABD8();
    if (*(v18 + 16))
    {
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v33 = *(v18 + 48);
      v32 = *(v18 + 56);
      swift_bridgeObjectRetain_n();

      v21 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v15;
      v23 = swift_allocObject();
      *(inited + 32) = v23;
      *(v23 + 16) = v19;
      *(v23 + 24) = v20;
      *(v23 + 32) = v33;
      *(v23 + 40) = v32;
      *&v40 = v21;

      sub_255D3CDA0(inited);
      v24 = v19;
      v25 = sub_255E08224(v19, v20, v40);
      v26 = v45;
      v31 = v27;
      v30 = v25;

      v37[0] = v24;
      v37[1] = v20;
      v37[2] = v33;
      v38 = v32;
      sub_255E3AB78();

      v41 = v30;
      v42 = v31;
      __swift_allocate_boxed_opaque_existential_1(&v40);
      sub_255E3A7B8();
      (*(v26 + 8))(v8, v17);

      sub_255D34630(&v40, v43);
      v28 = v43[1];
      v29 = v35;
      *v35 = v43[0];
      v29[1] = v28;
      *(v29 + 4) = v44;
    }

    else
    {

      type metadata accessor for DynamicKeyError(0);
      sub_255DC8544(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v45 + 8))(v8, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AnyViewModifier.modifyView(_:with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t sub_255DC1F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t AnyImageModifierBox.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v10 = sub_255E3AAE8();
  v11 = __swift_project_value_buffer(v10, qword_27F8152F0);
  if (!*(v9 + 16) || (v12 = sub_255D3CA98(v11), (v13 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v9 + 56) + 32 * v12, &v40);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError(0);
    sub_255DC8544(&qword_27F7E61A0, type metadata accessor for ContentRegistryError, aQ_9);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36 = v5;
  v45 = v6;
  v35 = a2;
  v14 = v39[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v34 = v14;
    v17 = v36;
    v18 = sub_255E3ABD8();
    if (*(v18 + 16))
    {
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v33 = *(v18 + 48);
      v32 = *(v18 + 56);
      swift_bridgeObjectRetain_n();

      v21 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v15;
      v23 = swift_allocObject();
      *(inited + 32) = v23;
      *(v23 + 16) = v19;
      *(v23 + 24) = v20;
      *(v23 + 32) = v33;
      *(v23 + 40) = v32;
      *&v40 = v21;

      sub_255D3CDA0(inited);
      v24 = v19;
      v25 = sub_255E0843C(v19, v20, v40);
      v26 = v45;
      v31 = v27;
      v30 = v25;

      v37[0] = v24;
      v37[1] = v20;
      v37[2] = v33;
      v38 = v32;
      sub_255E3AB78();

      v41 = v30;
      v42 = v31;
      __swift_allocate_boxed_opaque_existential_1(&v40);
      sub_255E3A7B8();
      (*(v26 + 8))(v8, v17);

      sub_255D34630(&v40, v43);
      v28 = v43[1];
      v29 = v35;
      *v35 = v43[0];
      v29[1] = v28;
      *(v29 + 4) = v44;
    }

    else
    {

      type metadata accessor for DynamicKeyError(0);
      sub_255DC8544(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v45 + 8))(v8, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Image.applyModifiers(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;

    do
    {
      sub_255D3CE1C(v4, v8);
      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      a2 = (*(v6 + 16))(a2, v5, v6);

      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_255DC26E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    v37 = v5;
    v10 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v34 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v17 = sub_255D8F9E4(a4);
    if (v18)
    {
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v19 = sub_255E386A8();
      __swift_project_value_buffer(v19, qword_27F8152D8);
      v20 = sub_255E38688();
      v21 = sub_255E3A848();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_255D2E000, v20, v21, "SubReference to find binding, unable to resolve index", v22, 2u);
        MEMORY[0x259C4F9E0](v22, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v23 = 2;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 5;
      return swift_willThrow();
    }

    v24 = v17;
    if ((~v10 & 0xF000000000000007) == 0)
    {
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = a1;
      v25[5] = a2;
      v25[6] = a3;
      v25[7] = v24;
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = a1;
      v26[5] = a2;
      v26[6] = a3;
      v26[7] = v24;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8010, &unk_255E53850);
      goto LABEL_13;
    }

    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = a1;
    v29[5] = a2;
    v29[6] = a3;
    v29[7] = v24;
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a1;
    v30[5] = a2;
    v30[6] = a3;
    v30[7] = v24;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_255D34858(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  }

  else
  {
    v10 = *(a5 + 48);
    v34 = *(a5 + 16);
    v35 = *(a5 + 32);
    result = StringResolvable.resolved(with:)(a4);
    if (v5)
    {
      return result;
    }

    v13 = result;
    v14 = v12;
    v37 = 0;
    if ((~v10 & 0xF000000000000007) == 0)
    {
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a1;
      v15[5] = a2;
      v15[6] = a3;
      v15[7] = v13;
      v15[8] = v14;
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = a1;
      v16[5] = a2;
      v16[6] = a3;
      v16[7] = v13;
      v16[8] = v14;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8010, &unk_255E53850);
LABEL_13:
      sub_255E3A068();
      return v36;
    }

    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a1;
    v27[5] = a2;
    v27[6] = a3;
    v27[7] = v13;
    v27[8] = v14;
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a1;
    v28[5] = a2;
    v28[6] = a3;
    v28[7] = v13;
    v28[8] = v14;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_255D34858(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  }

  sub_255E3A068();
  sub_255E3A098();
  if (*(&v34 + 1))
  {
    v31 = sub_255DC26E0(v34, *(&v34 + 1), v35, a4, v10);
    if (!v37)
    {
      v33 = v31;
      sub_255D2F870(v10);
      sub_255DC6C84(v34, *(&v34 + 1), v35);
      return v33;
    }

    sub_255DC6C84(v34, *(&v34 + 1), v35);
    return sub_255D2F870(v10);
  }

  else
  {
    sub_255D5C33C();
    swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 5;
    swift_willThrow();
    return sub_255D2F870(v10);
  }
}

void *sub_255DC2CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    v12 = *(a5 + 48);
    v37 = *(a5 + 16);
    v39 = *(a5 + 32);
    result = StringResolvable.resolved(with:)(a4);
    if (v6)
    {
      return result;
    }

    v15 = result;
    v16 = v14;
    if ((~v12 & 0xF000000000000007) == 0)
    {
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = a1;
      v17[5] = a2;
      v17[6] = a3;
      v17[7] = v15;
      v17[8] = v16;
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = a1;
      v18[5] = a2;
      v18[6] = a3;
      v18[7] = v15;
      v18[8] = v16;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
      return sub_255E3A068();
    }

    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a1;
    v30[5] = a2;
    v30[6] = a3;
    v30[7] = v15;
    v30[8] = v16;
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a1;
    v31[5] = a2;
    v31[6] = a3;
    v31[7] = v15;
    v31[8] = v16;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_255D34858(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    if (*(&v37 + 1))
    {
      sub_255DC2CD0(v37, *(&v37 + 1), v39, a4, v12, a6);
      sub_255DC6C84(v37, *(&v37 + 1), v39);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      *(v35 + 32) = 5;
      swift_willThrow();
    }

    v32 = v12;
    return sub_255D2F870(v32);
  }

  v19 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v38 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v40 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v20 = sub_255D8F9E4(a4);
  if ((v21 & 1) == 0)
  {
    v27 = v20;
    if ((~v19 & 0xF000000000000007) == 0)
    {
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = a1;
      v28[5] = a2;
      v28[6] = a3;
      v28[7] = v27;
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = a1;
      v29[5] = a2;
      v29[6] = a3;
      v29[7] = v27;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
      return sub_255E3A068();
    }

    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = a1;
    v33[5] = a2;
    v33[6] = a3;
    v33[7] = v27;
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = a1;
    v34[5] = a2;
    v34[6] = a3;
    v34[7] = v27;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_255D34858(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    if (*(&v38 + 1))
    {
      sub_255DC2CD0(v38, *(&v38 + 1), v40, a4, v19, a6);
      sub_255DC6C84(v38, *(&v38 + 1), v40);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v36 = 1;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 5;
      swift_willThrow();
    }

    v32 = v19;
    return sub_255D2F870(v32);
  }

  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v22 = sub_255E386A8();
  __swift_project_value_buffer(v22, qword_27F8152D8);
  v23 = sub_255E38688();
  v24 = sub_255E3A848();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_255D2E000, v23, v24, "SubReference to find binding, unable to resolve index", v25, 2u);
    MEMORY[0x259C4F9E0](v25, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v26 = 2;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DC3354@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = *v3;
  v17 = *(v3 + 8);
  v19 = *(v3 + 16);
  v20 = *(v3 + 24);
  sub_255D3E5A8(*v3, v17, v19, v20);
  v8 = StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v16, v17, v19, v20);
  }

  v11 = v8;
  v12 = v9;
  sub_255D38060(v16, v17, v19, v20);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v18 = MEMORY[0x277D837D0];
  v21 = MEMORY[0x277D837E0];
  v15 = sub_255E39FE8();
  a3[3] = v15;
  a3[4] = swift_getWitnessTable(MEMORY[0x277CE1148], v15, v13, v18, v14, v21, v11, v12);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39B68();
}

uint64_t sub_255DC3628(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *(*v2 + 104);
  v9 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v5 + 32))(v2 + v8, v7, v4);
  v10 = *(*v2 + 112);
  *(v2 + v10) = sub_255DC513C(v9);
  *(v2 + *(*v2 + 128)) = 0;
  *(v2 + *(*v2 + 120)) = a1;
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7FA0, &unk_255E537F0);
    sub_255D38950(&qword_27F7E7FA8, &qword_27F7E7FA0, &unk_255E537F0, protocol conformance descriptor for StateDict<A, B>);
    v14 = sub_255E386D8();
    swift_allocObject();
    swift_weakInit();
    sub_255E386F8();
    v11 = sub_255E38758();
  }

  else
  {
    v11 = 0;
  }

  *(v2 + *(*v2 + 128)) = v11;

  return v2;
}

uint64_t sub_255DC38A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *(*v2 + 104);
  v9 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v5 + 32))(v2 + v8, v7, v4);
  v10 = *(*v2 + 112);
  *(v2 + v10) = sub_255DC513C(v9);
  *(v2 + *(*v2 + 128)) = 0;
  *(v2 + *(*v2 + 120)) = a1;
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7FB0, &qword_255E53800);
    sub_255D38950(&qword_27F7E7FB8, &qword_27F7E7FB0, &qword_255E53800, protocol conformance descriptor for StateDict<A, B>);
    v14 = sub_255E386D8();
    swift_allocObject();
    swift_weakInit();
    sub_255E386F8();
    v11 = sub_255E38758();
  }

  else
  {
    v11 = 0;
  }

  *(v2 + *(*v2 + 128)) = v11;

  return v2;
}

uint64_t sub_255DC3E80@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v15 = *v3;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_255D91714(v15, v7, v8, v9, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v10;
  sub_255D9176C(v15, v16, v17, v18, sub_255D34870);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8000, &qword_255E59630);
  v13 = sub_255E38AE8();
  a3[3] = v13;
  v14[0] = v12;
  v14[1] = sub_255D38950(&qword_27F7E8008, &qword_27F7E8000, &qword_255E59630, MEMORY[0x277CE04A0]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v14);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E399A8();
}

uint64_t sub_255DC4034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FE0, &unk_255E53820);
  v4 = sub_255E38AE8();
  a2[3] = v4;
  v6[0] = v3;
  v6[1] = sub_255D38950(&qword_27F7E7FE8, &qword_27F7E7FE0, &unk_255E53820, MEMORY[0x277CE0868]);
  a2[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v6);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39B08();
}

uint64_t sub_255DC425C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v15, v9);
  if (v15[0] >> 61 != 5)
  {

LABEL_7:
    v13 = 0xF000000000000007;
    goto LABEL_8;
  }

  v10 = *((v15[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (!*(v10 + 16) || (v11 = sub_255D3CA20(a4, a5), (v12 & 1) == 0))
  {

    goto LABEL_7;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

LABEL_8:
  *a6 = v13;
  return result;
}

uint64_t sub_255DC433C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X8>)
{
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v11, v7);
  if (v11[0] >> 61 != 4)
  {

LABEL_7:
    v9 = 0xF000000000000007;
    goto LABEL_8;
  }

  v8 = *((v11[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (a4 < 0 || *(v8 + 16) <= a4)
  {

    goto LABEL_7;
  }

  v9 = *(v8 + 8 * a4 + 32);

LABEL_8:
  *a5 = v9;
  return result;
}

uint64_t sub_255DC4420@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v15 = *v3;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_255D91714(v15, v7, v8, v9, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v10;
  sub_255D9176C(v15, v16, v17, v18, sub_255D34870);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
  v13 = sub_255E38AE8();
  a3[3] = v13;
  v14[0] = v12;
  v14[1] = sub_255D38950(&qword_27F7E7FF8, &qword_27F7E7FF0, &qword_255E5C660, MEMORY[0x277CDF4F0]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v14);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39948();
}

uint64_t sub_255DC471C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v11[3] = (*(v8 + 16))(a2, v7, v8);
  sub_255E395E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FC0, &qword_255E53808);
  v9 = sub_255E38AE8();
  a3[3] = v9;
  v11[0] = v6;
  v11[1] = sub_255D38950(&qword_27F7E7FC8, &qword_27F7E7FC0, &qword_255E53808, MEMORY[0x277CE0728]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v11);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39868();
}

uint64_t sub_255DC4938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  v12 = (*(v10 + 16))(a2, v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FD0, &unk_255E53810);
  v13 = sub_255E38AE8();
  a4[3] = v13;
  v15[0] = v9;
  v15[1] = sub_255D38950(&qword_27F7E7FD8, &qword_27F7E7FD0, &unk_255E53810, MEMORY[0x277CE0868]);
  a4[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v15);
  __swift_allocate_boxed_opaque_existential_1(a4);
  a3(v12, v8, v9);
}

uint64_t sub_255DC4B58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
  v4 = sub_255E38AE8();
  a2[3] = v4;
  v6[0] = v3;
  v6[1] = sub_255D38950(&qword_27F7E8060, &qword_27F7E8058, &qword_255E53888, MEMORY[0x277CDFC88]);
  a2[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v6);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39C38();
}

uint64_t sub_255DC4E68@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 24);
  if (v6 != 255)
  {
    v7 = a1;
    sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), v6 & 1);
    if (v4)
    {
    }

    a1 = v7;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80F0, &unk_255E538B0);
  v9 = sub_255E38AE8();
  a3[3] = v9;
  v11[0] = v8;
  v11[1] = sub_255D38950(&qword_27F7E80F8, &qword_27F7E80F0, &unk_255E538B0, MEMORY[0x277CDF4F0]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v11);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39C28();
}

uint64_t sub_255DC4FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_255D38950(a5, a3, a4, protocol conformance descriptor for StateDict<A, B>);
    sub_255E386D8();

    sub_255E386E8();
  }

  return result;
}

uint64_t sub_255DC50A8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if (v8 == 2)
  {
    v9 = 0xF000000000000007;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8 & 1;
    v9 = v10 | 0x6000000000000000;
  }

  return sub_255DF2888(v9, a5, a6);
}

unint64_t sub_255DC513C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
    v3 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255D3CA20(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC52C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_255D3CA20(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC53E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7558, &qword_255E48B48);
    v4 = sub_255E3AB28();

    for (i = (a1 + 72); ; i += 48)
    {
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      sub_255D5C258(v8, v9, v10, v11);
      result = a2(v6, v7);
      if (v13)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v4[6] + 16 * result);
      *v14 = v6;
      v14[1] = v7;
      v15 = v4[7] + 32 * result;
      *v15 = v8;
      *(v15 + 8) = v9;
      *(v15 + 16) = v10;
      *(v15 + 24) = v11;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v4[2] = v18;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_255DC5524(uint64_t a1)
{
  result = sub_255D3CFB8();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of ContentModifier.modifyView(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 24))(a1, a2, a3);
}

{
  return (*(a4 + 40))(a1, a2, a3);
}

uint64_t sub_255DC5620(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CE11C8];
  v3 = MEMORY[0x277CE11C0];
  v51[3] = MEMORY[0x277CE11C8];
  v51[4] = MEMORY[0x277CE11C0];
  v51[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  v52 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v39 = __swift_project_boxed_opaque_existential_1(v51, v2);
  v8 = sub_255E390C8();
  v38 = sub_255DC8544(&qword_27F7E63D0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v52 = v2;
  v53 = v8;
  v54 = v3;
  v55 = v38;
  swift_getOpaqueTypeMetadata2();
  v37 = sub_255E39588();
  v36 = sub_255DC8544(&qword_27F7E63C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v52 = v2;
  v53 = v37;
  v54 = v3;
  v55 = v36;
  swift_getOpaqueTypeMetadata2();
  v9 = sub_255E39268();
  v35 = sub_255E38BB8();
  v34 = sub_255DC8544(&qword_27F7E63C0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v52 = v2;
  v53 = v35;
  v54 = v3;
  v55 = v34;
  swift_getOpaqueTypeMetadata2();
  v33 = sub_255E39388();
  v32 = sub_255DC8544(&qword_27F7E63B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v52 = v2;
  v53 = v33;
  v54 = v3;
  v55 = v32;
  swift_getOpaqueTypeMetadata2();
  v31 = sub_255E39268();
  v10 = sub_255E39268();
  v30 = sub_255E38E48();
  v29 = sub_255DC8544(&qword_27F7E63B0, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
  v52 = v2;
  v53 = v30;
  v54 = v3;
  v55 = v29;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_255E39508();
  v27 = sub_255DC8544(&qword_27F7E63A8, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  v52 = v2;
  v53 = v28;
  v54 = v3;
  v55 = v27;
  swift_getOpaqueTypeMetadata2();
  v24 = sub_255E39268();
  v26 = sub_255E38B68();
  v25 = sub_255DC8544(&qword_27F7E63A0, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  v52 = v2;
  v53 = v26;
  v54 = v3;
  v55 = v25;
  swift_getOpaqueTypeMetadata2();
  v11 = sub_255E39268();
  v12 = v10;
  v13 = sub_255E39268();
  v55 = v13;
  v47 = v2;
  v48 = v37;
  v49 = v3;
  v50 = v36;
  v46[0] = swift_getOpaqueTypeConformance2();
  v46[1] = swift_getOpaqueTypeConformance2();
  v14 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v9, v46);
  v47 = v2;
  v48 = v35;
  v49 = v3;
  v50 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v2;
  v48 = v33;
  v49 = v3;
  v50 = v32;
  v45[0] = OpaqueTypeConformance2;
  v45[1] = swift_getOpaqueTypeConformance2();
  v44[0] = WitnessTable;
  v44[1] = swift_getWitnessTable(v14, v31, v45);
  v17 = swift_getWitnessTable(v14, v12, v44);
  v47 = v2;
  v48 = v30;
  v49 = v3;
  v50 = v29;
  v18 = swift_getOpaqueTypeConformance2();
  v47 = v2;
  v48 = v28;
  v49 = v3;
  v50 = v27;
  v43[0] = v18;
  v43[1] = swift_getOpaqueTypeConformance2();
  v19 = swift_getWitnessTable(v14, v24, v43);
  v47 = v2;
  v48 = v26;
  v49 = v3;
  v50 = v25;
  v42[0] = v19;
  v42[1] = swift_getOpaqueTypeConformance2();
  v41[0] = v17;
  v41[1] = swift_getWitnessTable(v14, v11, v42);
  v20 = swift_getWitnessTable(v14, v13, v41);
  v56 = v20;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v52);
  sub_255D3FA00(v39, a2, v2, v3, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  v22 = View.anyView.getter(v13, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  return v22;
}

uint64_t sub_255DC5CF0(uint64_t a1)
{
  v1 = MEMORY[0x277CE11C8];
  v2 = MEMORY[0x277CE11C0];
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277CE11C0];
  v12[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v3 = swift_allocObject();
  v4 = qword_27F7E8608;

  v5 = MEMORY[0x277D84F90];
  *(v3 + v4) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v3 + qword_27F7E8610) = 0;
  v13[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v6 = *(*v3 + 112);
  *(v3 + v6) = sub_255DC513C(v5);
  *(v3 + *(*v3 + 128)) = 0;
  *(v3 + *(*v3 + 120)) = 0;
  *(v3 + *(*v3 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v12, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
  v7 = sub_255E38AE8();
  v13[3] = v7;
  v11[0] = v2;
  v11[1] = sub_255D38950(&qword_27F7E6510, &qword_27F7E6508, &unk_255E53830, MEMORY[0x277CE0868]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v11);
  v13[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_255E398C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  v9 = View.anyView.getter(v7, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v9;
}

uint64_t sub_255DC5F70(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CE11C8];
  v31[3] = MEMORY[0x277CE11C8];
  v31[4] = MEMORY[0x277CE11C0];
  v3 = MEMORY[0x277CE11C0];
  v31[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  v32 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v23 = __swift_project_boxed_opaque_existential_1(v31, v2);
  v22 = sub_255E38E88();
  v8 = sub_255DC8544(&qword_27F7E7BA8, MEMORY[0x277CDDE68], MEMORY[0x277CDDE58]);
  v32 = v2;
  v33 = v22;
  v34 = v3;
  v35 = v8;
  swift_getOpaqueTypeMetadata2();
  v21 = sub_255E38C98();
  v9 = sub_255DC8544(&qword_27F7E7BA0, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
  v32 = v2;
  v33 = v21;
  v34 = v3;
  v35 = v9;
  swift_getOpaqueTypeMetadata2();
  v10 = sub_255E39268();
  v11 = sub_255E38DB8();
  v12 = sub_255DC8544(&qword_27F7E7B98, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v32 = v2;
  v33 = v11;
  v13 = MEMORY[0x277CE11C0];
  v34 = MEMORY[0x277CE11C0];
  v35 = v12;
  swift_getOpaqueTypeMetadata2();
  v14 = sub_255E39268();
  v35 = v14;
  v27 = v2;
  v28 = v21;
  v29 = v13;
  v30 = v9;
  v26[0] = swift_getOpaqueTypeConformance2();
  v26[1] = swift_getOpaqueTypeConformance2();
  v15 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v10, v26);
  v27 = v2;
  v28 = v11;
  v29 = v13;
  v30 = v12;
  v25[0] = WitnessTable;
  v25[1] = swift_getOpaqueTypeConformance2();
  v17 = swift_getWitnessTable(v15, v14, v25);
  v36 = v17;
  v18 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_255DA30DC(v23, a2, v2, v13, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  v19 = View.anyView.getter(v14, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  return v19;
}

uint64_t sub_255DC6388(uint64_t a1)
{
  v1 = MEMORY[0x277CE11C8];
  v8[3] = MEMORY[0x277CE11C8];
  v8[4] = MEMORY[0x277CE11C0];
  v8[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v2 = swift_allocObject();
  v3 = qword_27F7E8608;

  v4 = MEMORY[0x277D84F90];
  *(v2 + v3) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v2 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v5 = *(*v2 + 112);
  *(v2 + v5) = sub_255DC513C(v4);
  *(v2 + *(*v2 + 128)) = 0;
  *(v2 + *(*v2 + 120)) = 0;
  *(v2 + *(*v2 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v8, v1);

  v6 = sub_255E3A038();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_255DC65BC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 <= 0xFDu)
  {
    return sub_255D91714(result, a2, a3, a4, sub_255D348B4);
  }

  return result;
}

uint64_t sub_255DC65F8(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v32[0] = a1;
  v32[3] = MEMORY[0x277CE11C8];
  v4 = MEMORY[0x277CE11C8];
  v32[4] = MEMORY[0x277CE11C0];
  type metadata accessor for LocalStateStore(0);
  v5 = swift_allocObject();
  v6 = qword_27F7E8608;

  v7 = MEMORY[0x277D84F90];
  *(v5 + v6) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v5 + qword_27F7E8610) = 0;
  v33[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v8 = *(*v5 + 112);
  *(v5 + v8) = sub_255DC513C(v7);
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  v23 = __swift_project_boxed_opaque_existential_1(v32, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  v9 = sub_255E38AE8();
  v10 = sub_255E39268();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  v11 = sub_255E39268();
  v12 = sub_255E39268();
  v13 = sub_255E39268();
  v33[3] = v13;
  v14 = sub_255D38950(&qword_27F7E7D08, &qword_27F7E7D00, &unk_255E4FB00, MEMORY[0x277CE0868]);
  v15 = MEMORY[0x277CE11C0];
  v31[0] = MEMORY[0x277CE11C0];
  v31[1] = v14;
  v30[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v31);
  v30[1] = v30[0];
  v16 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v10, v30);
  v18 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
  v29[0] = WitnessTable;
  v29[1] = v18;
  v28[0] = WitnessTable;
  v28[1] = swift_getWitnessTable(v16, v11, v29);
  v27[0] = swift_getWitnessTable(v16, v12, v28);
  v27[1] = v18;
  v19 = swift_getWitnessTable(v16, v13, v27);
  v33[4] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_255DA8994(v23, a3, a4 & 1, a2, v15, boxed_opaque_existential_1);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v21 = View.anyView.getter(v13, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v21;
}

uint64_t sub_255DC69AC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CE11C8];
  v3 = MEMORY[0x277CE11C0];
  v13[3] = MEMORY[0x277CE11C8];
  v13[4] = MEMORY[0x277CE11C0];
  v13[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v4 = swift_allocObject();
  v5 = qword_27F7E8608;

  v6 = MEMORY[0x277D84F90];
  *(v4 + v5) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v4 + qword_27F7E8610) = 0;
  v14[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v7 = *(*v4 + 112);
  *(v4 + v7) = sub_255DC513C(v6);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  *(v4 + *(*v4 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v13, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FE0, &unk_255E53820);
  v8 = sub_255E38AE8();
  v14[3] = v8;
  v12[0] = v3;
  v12[1] = sub_255D38950(&qword_27F7E7FE8, &qword_27F7E7FE0, &unk_255E53820, MEMORY[0x277CE0868]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v12);
  v14[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_255E39B08();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  v10 = View.anyView.getter(v8, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v10;
}

uint64_t sub_255DC6C3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DCDB98(v1[4], v1[5], v1[6]);
  *a1 = result;
  return result;
}

uint64_t sub_255DC6C84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

uint64_t sub_255DC6CD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DC7DE4(v1[4], v1[5], v1[6], v1[7]);
  *a1 = result;
  return result;
}

uint64_t sub_255DC6D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DC7764(v1[4], v1[5], v1[6], v1[7], v1[8]);
  *a1 = result;
  return result;
}

uint64_t sub_255DC6D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v32 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  type metadata accessor for LocalStateStore(0);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;
  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v15 = *(*v12 + 104);
  *&v39 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v9 + 32))(v12 + v15, v11, v8);
  v16 = *(*v12 + 112);
  *(v12 + v16) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = v14;
  }

  v18 = sub_255D48A94(v17);

  v40 = MEMORY[0x277CE11C8];
  v41 = MEMORY[0x277CE11C0];
  *&v39 = v32;
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;

    do
    {
      sub_255D3CE1C(v20, v36);
      v22 = v37;
      v21 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v21 + 16))(v33, &v39, a2, v12, v22, v21);
      if (v5)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        sub_255D3CE1C(&v39, v35);
        v5 = 0;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        sub_255D34630(v33, v35);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
      sub_255D34630(v35, &v39);
      v20 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
  }

  sub_255D34630(&v39, v36);
  v23 = v37;
  v24 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  if (v42)
  {
    v25 = v42;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v26 = sub_255D48A94(v25);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v26, a2, v12, v23, v24, &v39);

  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, v40);
  v29 = View.anyView.getter(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  return v29;
}

uint64_t sub_255DC7160(uint64_t a1)
{
  v1 = MEMORY[0x277CE11C8];
  v2 = MEMORY[0x277CE11C0];
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277CE11C0];
  v12[0] = a1;
  type metadata accessor for LocalStateStore(0);
  v3 = swift_allocObject();
  v4 = qword_27F7E8608;

  v5 = MEMORY[0x277D84F90];
  *(v3 + v4) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v3 + qword_27F7E8610) = 0;
  v13[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v6 = *(*v3 + 112);
  *(v3 + v6) = sub_255DC513C(v5);
  *(v3 + *(*v3 + 128)) = 0;
  *(v3 + *(*v3 + 120)) = 0;
  *(v3 + *(*v3 + 128)) = 0;
  swift_setDeallocating();
  LocalStateStore.deinit();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v12, v1);
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
  v7 = sub_255E38AE8();
  v13[3] = v7;
  v11[0] = v2;
  v11[1] = sub_255D38950(&qword_27F7E8060, &qword_27F7E8058, &qword_255E53888, MEMORY[0x277CDFC88]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v11);
  v13[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_255E39C38();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  v9 = View.anyView.getter(v7, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v9;
}

unint64_t sub_255DC741C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8100, &unk_255E538C0);
    v3 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255D3CA20(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC7520(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
    v5 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
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
      if (!--v2)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC7634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
    v3 = sub_255E3AB28();
    v4 = a1 + 32;

    while (1)
    {
      sub_255D3957C(v4, &v13, &qword_27F7E8168, &qword_255E53918);
      v5 = v13;
      v6 = v14;
      result = sub_255D3CA20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255D8B0B0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255DC7764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v14, v7);
  if (v14[0] >> 61 == 5)
  {
    v8 = *((v14[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    if (!*(v8 + 16) || (v9 = sub_255D3CA20(a4, a5), (v10 & 1) == 0))
    {

      return 2;
    }

    v11 = *(*(v8 + 56) + 8 * v9);

    if (v11 >> 61 == 3)
    {
      v12 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      return v12;
    }
  }

  return 2;
}

void *sub_255DC785C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a2;
  v38 = a3;
  v39 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v40);
  if (v40 >> 61 != 5)
  {
  }

  v12 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v40 = v12;
  if (a1 == 2)
  {
    sub_255D808F4(a5, a6, &v37);
    sub_255D5C324(v37);
    v13 = v40;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_255D82054(v14 | 0x6000000000000000, a5, a6, isUniquelyReferenced_nonNull_native);
    v13 = v12;
  }

  v37 = a2;
  v38 = a3;
  v39 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v17 = result;
  v18 = 0;
  v19 = 1 << *(v13 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v23 = result + 8;
  if (v21)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v27 = v24 | (v18 << 6);
      v28 = (*(v13 + 48) + 16 * v27);
      v29 = *(*(v13 + 56) + 8 * v27);
      v30 = *v28;
      v31 = v28[1];
      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (v17[6] + 16 * v27);
      *v32 = v30;
      v32[1] = v31;
      *(v17[7] + 8 * v27) = v29;
      v33 = v17[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v17[2] = v35;

      if (!v21)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        v36 = swift_allocObject();

        *(v36 + 16) = v17;
        sub_255E3A058();
      }

      v26 = *(v13 + 64 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_255DC7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v39);
  if (v39 >> 61 != 5)
  {
  }

  v12 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v39 = v12;
  if ((~a1 & 0xF000000000000007) != 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_255D82054(a1, a5, a6, isUniquelyReferenced_nonNull_native);
    v13 = v12;
  }

  else
  {
    sub_255D808F4(a5, a6, &v36);
    sub_255D5C324(v36);
    v13 = v39;
  }

  v36 = a2;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v16 = result;
  v17 = 0;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v13 + 64);
  v21 = (v18 + 63) >> 6;
  v22 = result + 8;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v26 = v23 | (v17 << 6);
      v27 = (*(v13 + 48) + 16 * v26);
      v28 = *(*(v13 + 56) + 8 * v26);
      v29 = *v27;
      v30 = v27[1];
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (v16[6] + 16 * v26);
      *v31 = v29;
      v31[1] = v30;
      *(v16[7] + 8 * v26) = v28;
      v32 = v16[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v16[2] = v34;

      if (!v20)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v21)
      {
        v35 = swift_allocObject();

        *(v35 + 16) = v16;
        sub_255E3A058();
      }

      v25 = *(v13 + 64 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DC7DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v10, v5);
  if (v10[0] >> 61 == 4)
  {
    v6 = *((v10[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    if (a4 < 0 || *(v6 + 16) <= a4)
    {

      return 2;
    }

    v7 = *(v6 + 8 * a4 + 32);

    if (v7 >> 61 == 3)
    {
      v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      return v8;
    }
  }

  return 2;
}

uint64_t sub_255DC7ED0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v13);
  if (v13 >> 61 != 4)
  {
  }

  v10 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (a1 == 2)
  {
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_255DF5ECC(v10);
  v10 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(v10 + 16) <= a5)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *(v10 + 8 * a5 + 32) = v12 | 0x6000000000000000;

  v14 = a2;
  v15 = a3;
  v16 = a4;

  sub_255DCB4C0(v10, &v13);

  sub_255E3A058();
}

unint64_t sub_255DC80E4()
{
  result = qword_27F7E8050;
  if (!qword_27F7E8050)
  {
    result = swift_getWitnessTable(a55, &type metadata for OnTapModifier, v0, v1);
    atomic_store(result, &qword_27F7E8050);
  }

  return result;
}

unint64_t sub_255DC8140()
{
  result = qword_27F7E8068;
  if (!qword_27F7E8068)
  {
    result = swift_getWitnessTable(byte_255E468C0, &type metadata for BoldModifier, v0, v1);
    atomic_store(result, &qword_27F7E8068);
  }

  return result;
}

unint64_t sub_255DC8194()
{
  result = qword_27F7E8070;
  if (!qword_27F7E8070)
  {
    result = swift_getWitnessTable(byte_255E468A4, &type metadata for ItalicModifier, v0, v1);
    atomic_store(result, &qword_27F7E8070);
  }

  return result;
}

unint64_t sub_255DC81E8()
{
  result = qword_27F7E8078;
  if (!qword_27F7E8078)
  {
    result = swift_getWitnessTable(byte_255E46888, &type metadata for MonospacedModifier, v0, v1);
    atomic_store(result, &qword_27F7E8078);
  }

  return result;
}

unint64_t sub_255DC823C()
{
  result = qword_27F7E8080;
  if (!qword_27F7E8080)
  {
    result = swift_getWitnessTable(byte_255E4686C, &type metadata for MonospacedDigitModifier, v0, v1);
    atomic_store(result, &qword_27F7E8080);
  }

  return result;
}

unint64_t sub_255DC8290()
{
  result = qword_27F7E8088;
  if (!qword_27F7E8088)
  {
    result = swift_getWitnessTable(aR_1, &type metadata for KerningModifier, v0, v1);
    atomic_store(result, &qword_27F7E8088);
  }

  return result;
}

unint64_t sub_255DC82E4()
{
  result = qword_27F7E8090;
  if (!qword_27F7E8090)
  {
    result = swift_getWitnessTable(aR_2, &type metadata for TrackingModifier, v0, v1);
    atomic_store(result, &qword_27F7E8090);
  }

  return result;
}

unint64_t sub_255DC8338()
{
  result = qword_27F7E8098;
  if (!qword_27F7E8098)
  {
    result = swift_getWitnessTable(aYr, &type metadata for BaselineOffsetModifier, v0, v1);
    atomic_store(result, &qword_27F7E8098);
  }

  return result;
}

unint64_t sub_255DC838C()
{
  result = qword_27F7E80A0;
  if (!qword_27F7E80A0)
  {
    result = swift_getWitnessTable(byte_255E5D88C, &type metadata for FormStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E80A0);
  }

  return result;
}

unint64_t sub_255DC83E0()
{
  result = qword_27F7E80B0;
  if (!qword_27F7E80B0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80A8, &qword_255E53890);
    v4 = sub_255DC8544(&qword_27F7E80B8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v5[0] = MEMORY[0x277CE11C0];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27F7E80B0);
  }

  return result;
}

unint64_t sub_255DC849C()
{
  result = qword_27F7E80C0;
  if (!qword_27F7E80C0)
  {
    result = swift_getWitnessTable(byte_255E57D78, &type metadata for AccessibilityHiddenModifier, v0, v1);
    atomic_store(result, &qword_27F7E80C0);
  }

  return result;
}

unint64_t sub_255DC84F0()
{
  result = qword_27F7E80C8;
  if (!qword_27F7E80C8)
  {
    result = swift_getWitnessTable(a9_3, &type metadata for ToolbarModifier, v0, v1);
    atomic_store(result, &qword_27F7E80C8);
  }

  return result;
}

uint64_t sub_255DC8544(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_255DC858C()
{
  result = qword_27F7E80E0;
  if (!qword_27F7E80E0)
  {
    result = swift_getWitnessTable(byte_255E3FA80, &type metadata for NavigationBarBackButtonHiddenModifier, v0, v1);
    atomic_store(result, &qword_27F7E80E0);
  }

  return result;
}

uint64_t objectdestroy_67Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_255DC8690()
{
  result = qword_27F7E80E8;
  if (!qword_27F7E80E8)
  {
    result = swift_getWitnessTable(byte_255E5496C, &type metadata for InteractiveDismissDisabledModifier, v0, v1);
    atomic_store(result, &qword_27F7E80E8);
  }

  return result;
}

unint64_t sub_255DC8754()
{
  result = qword_27F7E8108;
  if (!qword_27F7E8108)
  {
    result = swift_getWitnessTable(byte_255E57CEC, &type metadata for AccessibilityChildrenModifier, v0, v1);
    atomic_store(result, &qword_27F7E8108);
  }

  return result;
}

uint64_t sub_255DC87A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityFocusedModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DC880C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityFocusedModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_77Tm_0()
{
  v1 = (type metadata accessor for AccessibilityFocusedModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(*v1 + 64);

  sub_255D34870(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = v0 + v3 + v1[7];
  v6 = sub_255E394E8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255DC8A04(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AccessibilityFocusedModifier(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v2 + 80) + 33) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

unint64_t sub_255DC8AFC()
{
  result = qword_27F7E8160;
  if (!qword_27F7E8160)
  {
    result = swift_getWitnessTable(aEr, &type metadata for GlassEffectModifier, v0, v1);
    atomic_store(result, &qword_27F7E8160);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_39Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_255DC8D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v12);
  if (v12 >> 61 != 4)
  {
  }

  v10 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if ((~a1 & 0xF000000000000007) == 0)
  {
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_255DF5ECC(v10);
  v10 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(v10 + 16) <= a5)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *(v10 + 8 * a5 + 32) = a1;

  v13 = a2;
  v14 = a3;
  v15 = a4;

  sub_255DCB4C0(v10, &v12);

  sub_255E3A058();
}

uint64_t sub_255DC8F34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255DC8F7C(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

uint64_t sub_255DC8FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x8000000255E65900;
  if (v2 == 1)
  {
    v5 = 0x8000000255E65900;
  }

  else
  {
    v3 = 0x74616E6974736564;
    v5 = 0xEB000000006E6F69;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E65736572507369;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000646574;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0x74616E6974736564;
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E65736572507369;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DC90F4()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DC91AC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DC9250(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DC9304@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DCA1E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DC9334(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0x8000000255E65900;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0x74616E6974736564;
    v4 = 0xEB000000006E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65736572507369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_255DC93A8()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65736572507369;
  }
}

unint64_t sub_255DC9418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DCA1E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DC9440(uint64_t a1)
{
  v2 = sub_255DCA04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DC947C(uint64_t a1)
{
  v2 = sub_255DCA04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DC94B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E81A0, &unk_255E53CE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v29 = 0uLL;
  v30 = 0;
  v31 = -1;
  v33 = 0;
  v32 = 0uLL;
  v34 = -2;
  v9 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255DCA04C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    sub_255D34910(0, 0, 0, 255);
    return sub_255D64814(0, 0, 0, 0xFEu);
  }

  else
  {
    v23 = a2;
    LOBYTE(v25) = 0;
    if (sub_255E3ABE8())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
      v36 = 0;
      sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
      sub_255E3ABC8();
      v10 = v6;
      v22 = v5;
      v11 = v25;
      v12 = v26;
      v13 = v27;
      sub_255D34910(0, 0, 0, 255);
      v21 = 0;
      v20 = 0uLL;
      v29 = v11;
      v19 = v12;
      v30 = v12;
      v31 = v13;
    }

    else
    {
      LOBYTE(v25) = 1;
      v10 = v6;
      if (sub_255E3ABE8())
      {
        v36 = 1;
        sub_255D3EA0C();
        sub_255E3ABC8();
        v22 = v5;
        v15 = v25;
        v16 = v26;
        v17 = v27;
        sub_255D64814(0, 0, 0, 0xFEu);
        v19 = 0;
        v20 = v15;
        v32 = v15;
        v21 = v16;
        v33 = v16;
        v34 = v17;
      }

      else
      {
        v22 = v5;
        v21 = 0;
        v20 = 0uLL;
        v19 = 0;
      }
    }

    v36 = 2;
    v27 = &type metadata for ViewContent;
    v28 = sub_255D44794();
    *&v25 = swift_allocObject();
    sub_255D447E8();
    v18 = v22;
    sub_255E3ABC8();
    (*(v10 + 8))(v8, v18);
    sub_255D34630(&v25, &v35);
    sub_255DC9F10(&v29, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    return sub_255DCA0A0(&v29);
  }
}

uint64_t sub_255DC9910@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v35 = v4;
  }

  else
  {
    v7 = a1;
    sub_255DBFA2C(a2, *v3, *(v3 + 8), *(v3 + 16), v6 & 1);
    if (!v4)
    {
      v35 = 0;
      v20 = v7[3];
      v19 = v7[4];
      v25 = __swift_project_boxed_opaque_existential_1(v7, v20);
      v26 = &v25;
      MEMORY[0x28223BE20](v25);
      *&v28 = v20;
      *(&v28 + 1) = MEMORY[0x277CE11C8];
      v21 = MEMORY[0x277CE11C0];
      *&v29 = v19;
      *(&v29 + 1) = MEMORY[0x277CE11C0];
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v23 = v27;
      v27[3] = OpaqueTypeMetadata2;
      *&v28 = v20;
      *(&v28 + 1) = MEMORY[0x277CE11C8];
      *&v29 = v19;
      *(&v29 + 1) = v21;
      v23[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v23);
      sub_255E39AE8();
    }

    v35 = 0;
    a1 = v7;
  }

  v9 = a1[3];
  v8 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255DC9F10(v3, &v28);
  v10 = swift_allocObject();
  v11 = v33;
  *(v10 + 80) = v32;
  *(v10 + 96) = v11;
  v12 = v34;
  v13 = v29;
  *(v10 + 16) = v28;
  *(v10 + 32) = v13;
  v14 = v31;
  *(v10 + 48) = v30;
  *(v10 + 64) = v14;
  *(v10 + 112) = v12;
  *(v10 + 120) = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8190, &qword_255E53CD8);
  v16 = sub_255D6F180();
  v17 = sub_255DC9F54();
  *&v28 = v9;
  *(&v28 + 1) = &type metadata for DecodableState;
  *&v29 = v15;
  *(&v29 + 1) = v8;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v18 = v27;
  v27[3] = swift_getOpaqueTypeMetadata2();
  *&v28 = v9;
  *(&v28 + 1) = &type metadata for DecodableState;
  *&v29 = v15;
  *(&v29 + 1) = v8;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v18[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v18);

  sub_255E39AF8();
}

uint64_t sub_255DC9C20@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a2[11];
  v9 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_255DC53CC(MEMORY[0x277D84F90]);
  v13 = sub_255DC5124(v11);
  swift_allocObject();

  v15 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v14, v12, v13);
  sub_255DA2D14();
  v16 = sub_255E386C8();
  sub_255DC9F10(a2, v23);
  v17 = swift_allocObject();
  v18 = v23[5];
  *(v17 + 80) = v23[4];
  *(v17 + 96) = v18;
  v19 = v24;
  v20 = v23[1];
  *(v17 + 16) = v23[0];
  *(v17 + 32) = v20;
  v21 = v23[3];
  *(v17 + 48) = v23[2];
  *(v17 + 64) = v21;
  *(v17 + 112) = v19;
  *(v17 + 120) = a3;
  *(v17 + 128) = v7;
  *a4 = v10;
  a4[1] = v16;
  a4[2] = v15;
  a4[3] = sub_255DCA040;
  a4[4] = v17;
  a4[5] = 0;
  a4[6] = 0;
}

uint64_t sub_255DC9DB8(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3 <= 0xFD)
  {
    v9 = *(result + 32);
    v10 = *(result + 40);
    v11 = *(result + 48);
    v12 = *(result + 56);
    sub_255D3E5A8(v9, v10, v11, v3);
    v6 = StringResolvable.resolved(with:)(a2);
    v8 = v7;
    sub_255D38060(v9, v10, v11, v12);

    return sub_255DF2888(a3, v6, v8);
  }

  return result;
}

unint64_t sub_255DC9E94(uint64_t a1)
{
  result = sub_255DC9EBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DC9EBC()
{
  result = qword_27F7E8188;
  if (!qword_27F7E8188)
  {
    result = swift_getWitnessTable(aYe, &type metadata for NavigationDestinationModifier, v0, v1);
    atomic_store(result, &qword_27F7E8188);
  }

  return result;
}

unint64_t sub_255DC9F54()
{
  result = qword_27F7E8198;
  if (!qword_27F7E8198)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8190, &qword_255E53CD8);
    v4[0] = sub_255D3849C();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F7E8198);
  }

  return result;
}

uint64_t sub_255DC9FE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[11];
  v5 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255DCA04C()
{
  result = qword_27F7E81A8;
  if (!qword_27F7E81A8)
  {
    result = swift_getWitnessTable(aX_5, &type metadata for NavigationDestinationModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E81A8);
  }

  return result;
}

unint64_t sub_255DCA0E4()
{
  result = qword_27F7E81B0;
  if (!qword_27F7E81B0)
  {
    result = swift_getWitnessTable(byte_255E53DC4, &type metadata for NavigationDestinationModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E81B0);
  }

  return result;
}

unint64_t sub_255DCA13C()
{
  result = qword_27F7E81B8;
  if (!qword_27F7E81B8)
  {
    result = swift_getWitnessTable(byte_255E53CFC, &type metadata for NavigationDestinationModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E81B8);
  }

  return result;
}

unint64_t sub_255DCA194()
{
  result = qword_27F7E81C0[0];
  if (!qword_27F7E81C0[0])
  {
    result = swift_getWitnessTable(byte_255E53D24, &type metadata for NavigationDestinationModifier.CodingKeys, v0, v1);
    atomic_store(result, qword_27F7E81C0);
  }

  return result;
}

unint64_t sub_255DCA1E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t Referenceable<>.resolvedValue(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a1;
  v8 = *(a2 + 16);
  v9 = sub_255E3A8A8();
  v37 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v38 = &v34 - v11;
  v12 = *(v8 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v4, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v12 + 32))(a4, v17, v8);
  }

  v35 = a4;
  v36 = v5;
  v19 = *v17;
  v20 = v17[1];
  v21 = v17[2];
  if ((~v21 & 0xF000000000000007) != 0)
  {

    v26 = v40;
    RemoteStateStore.subscript.getter(v19, v20, &v42);
    v27 = v42;
    if ((~v42 & 0xF000000000000007) != 0)
    {
      sub_255D2F870(v21);

      v42 = v21;
      v41 = v27;
      v33 = type metadata accessor for SubReference(0, v8, *(a2 + 24), v32);
      sub_255E0FBF8(&v41, v26, v33, v39);
      sub_255D5C324(v27);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v28 = v19;
      *(v28 + 8) = v20;
      *(v28 + 16) = v8;
      *(v28 + 32) = 0;
      swift_willThrow();
      sub_255D2F870(v21);
    }

    return sub_255D2F870(v21);
  }

  else
  {
    RemoteStateStore.subscript.getter(v19, v20, &v42);
    v22 = v42;
    if ((~v42 & 0xF000000000000007) != 0)
    {

      sub_255D5C324(v22);
      v41 = v22;
      v29 = v38;
      v30 = v36;
      sub_255D7D8D8(v8, v39);

      if (!v30)
      {
        (*(v12 + 56))(v29, 0, 1, v8);
        v31 = *(v12 + 32);
        v31(v15, v29, v8);
        return (v31)(v35, v15, v8);
      }
    }

    else
    {
      sub_255D5C324(v42);
      v23 = v38;
      (*(v12 + 56))(v38, 1, 1, v8);
      (*(v37 + 8))(v23, v9);
      sub_255D5C33C();
      swift_allocError();
      *v24 = v19;
      *(v24 + 8) = v20;
      *(v24 + 16) = v8;
      *(v24 + 32) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t Referenceable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v40 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v46 = a3;
  v47 = a2;
  v17 = type metadata accessor for Referenceable(0, a2, a3, v16);
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v41 = (&v40 - v21);
  v22 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_255D917C4();
  sub_255E3AE28();
  if (v4)
  {

    (*(v13 + 56))(v11, 1, 1, v12);
    sub_255D395E4(v11, &qword_27F7E76F8, &qword_255E4A740);
LABEL_3:
    v23 = v50;
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    sub_255E3AE08();
    sub_255D4F134(&v48, v49);
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v30 = v45;
    v31 = v47;
    sub_255E3ACB8();
    v33 = v30;
    v34 = v41;
    (*(v40 + 32))(v41, v33, v31);
    v35 = v43;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
LABEL_9:
    v39 = v42;
    goto LABEL_10;
  }

  (*(v13 + 56))(v11, 0, 1, v12);
  (*(v13 + 32))(v15, v11, v12);
  LOBYTE(v49[0]) = 0;
  if (sub_255E3ABE8())
  {
    LOBYTE(v49[0]) = 0;
    v24 = sub_255E3ABB8();
    v26 = v25;
    v27 = v24;
    v29 = type metadata accessor for SubReference(0, v47, v46, v28);
    LOBYTE(v48) = 1;
    swift_getWitnessTable(protocol conformance descriptor for SubReference<A>, v29);
    sub_255E3ABA8();
    (*(v13 + 8))(v15, v12);
    v37 = v49[0];
    v34 = v41;
    *v41 = v27;
    v34[1] = v26;
    v34[2] = v37;
    v35 = v43;
    swift_storeEnumTagMultiPayload();
    v23 = v50;
    goto LABEL_9;
  }

  LOBYTE(v49[0]) = 2;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_3;
  }

  LOBYTE(v49[0]) = 2;
  v32 = sub_255E3ABB8();
  sub_255DFB26C(v32, v36, v47, v46, v20);
  (*(v13 + 8))(v15, v12);

  v34 = v41;
  v39 = v42;
  v35 = v43;
  (*(v42 + 32))(v41, v20, v43);
  v23 = v50;
LABEL_10:
  (*(v39 + 32))(v44, v34, v35);
  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t Referenceable<>.resolvedBinding(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v55 = a3;
  v56 = a1;
  v8 = *(a2 + 16);
  sub_255E3A8A8();
  v9 = sub_255E3A088();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = (&v48 - v11);
  v54 = sub_255E3A088();
  v12 = sub_255E3A8A8();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v50 = &v48 - v17;
  v18 = *(v8 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v5, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v21, v23, v8);
    sub_255E3A078();
    return (*(v18 + 8))(v21, v8);
  }

  v49 = a4;
  v26 = *v23;
  v25 = v23[1];
  v27 = v23[2];
  if ((~v27 & 0xF000000000000007) == 0)
  {
    RemoteStateStore.binding<A>(forKey:)(v26, v25, v8, v55);
    sub_255E3A098();
    v28 = v54;
    v29 = *(v54 - 8);
    if ((*(v29 + 48))(v15, 1, v54) == 1)
    {
      (*(v51 + 8))(v15, v52);
      sub_255D5C33C();
      swift_allocError();
      *v30 = v26;
      *(v30 + 8) = v25;
      *(v30 + 16) = v8;
      *(v30 + 32) = 0;
      return swift_willThrow();
    }

    else
    {

      return (*(v29 + 32))(v49, v15, v28);
    }
  }

  v32 = swift_allocObject();
  v33 = v27;
  v32[2] = 0;
  v32[3] = 0;
  v34 = v56;
  v32[4] = v56;
  v32[5] = v26;
  v32[6] = v25;
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v34;
  v35[5] = v26;
  v35[6] = v25;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_255D34858(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  sub_255E3A068();
  v57 = v59;
  v58 = v60;
  sub_255E3A098();
  v36 = v62;
  if (!v62)
  {
    sub_255D5C33C();
    swift_allocError();
    *v43 = v26;
    *(v43 + 8) = v25;
    *(v43 + 16) = v8;
    *(v43 + 32) = 0;
    swift_willThrow();
    sub_255D2F870(v27);
    return sub_255D2F870(v33);
  }

  v37 = v61;
  v38 = v63;

  *&v59 = v33;
  v61 = v37;
  v62 = v36;
  v63 = v38;
  v40 = type metadata accessor for SubReference(0, v8, *(a2 + 24), v39);
  v41 = v64;
  sub_255E0F590(&v61, v34, v40, v55, v53);
  v42 = v49;
  if (v41)
  {
    sub_255D2F870(v33);
    sub_255DC6C84(v37, v36, v38);
    return sub_255D2F870(v33);
  }

  v44 = v50;
  sub_255E3A098();
  v45 = v54;
  v46 = *(v54 - 8);
  if ((*(v46 + 48))(v44, 1, v54) == 1)
  {
    (*(v51 + 8))(v44, v52);
    sub_255D5C33C();
    swift_allocError();
    *v47 = 1;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 5;
    swift_willThrow();
    sub_255DC6C84(v37, v36, v38);
    sub_255D2F870(v33);
    return sub_255D2F870(v33);
  }

  else
  {
    sub_255D2F870(v33);
    sub_255DC6C84(v37, v36, v38);
    sub_255D2F870(v33);
    return (*(v46 + 32))(v42, v44, v45);
  }
}

void sub_255DCB38C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 24) != 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v11 = -1;
LABEL_8:
    *(a2 + 24) = v11;
    return;
  }

  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v2;
  v8 = v2[1];
  if ((~v2[2] & 0xF000000000000007) != 0)
  {
    v15 = v2[2];
    v13[0] = v5;
    v13[1] = v4;
    v13[2] = v6;
    v14 = v7;

    sub_255E10150(v13, &v16);
    v12 = v16;
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v12;
    v11 = 1;
    goto LABEL_8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = 0xF000000000000007;
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 | 0x8000000000000000;
  *(a2 + 24) = 1;

  sub_255D612A0(v5, v4, v6, v7);
}

uint64_t sub_255DCB4C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_255DE5D00(0, v3, 0);
    v4 = v12;
    v6 = (a1 + 32);
    v7 = *(v12 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v12 + 24);

      if (v7 >= v10 >> 1)
      {
        sub_255DE5D00((v10 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 8 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result | 0x8000000000000000;
  return result;
}

uint64_t sub_255DCB5B4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_255DE5D00(0, v3, 0);
    v4 = v13;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        sub_255DE5D00((v9 > 1), v10 + 1, 1);
        v8 = v11;
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v8 | 0x2000000000000000;
      --v3;
    }

    while (v3);
  }

  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result | 0x8000000000000000;
  return result;
}

uint64_t sub_255DCB6C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7265666552627573;
  v4 = 0xEC00000065636E65;
  if (v2 != 1)
  {
    v3 = 0x6552656E696C6E69;
    v4 = 0xEF65636E65726566;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x636E657265666572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x7265666552627573;
  v8 = 0xEC00000065636E65;
  if (*a2 != 1)
  {
    v7 = 0x6552656E696C6E69;
    v8 = 0xEF65636E65726566;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x636E657265666572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DCB7F0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DCB8AC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DCB954(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DCBA0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DCDB1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DCBA3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEC00000065636E65;
  v5 = 0x7265666552627573;
  if (v2 != 1)
  {
    v5 = 0x6552656E696C6E69;
    v4 = 0xEF65636E65726566;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636E657265666572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DCBAB4()
{
  v1 = 0x7265666552627573;
  if (*v0 != 1)
  {
    v1 = 0x6552656E696C6E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657265666572;
  }
}

unint64_t sub_255DCBB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DCDB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DCBB50(uint64_t a1)
{
  v2 = sub_255D917C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DCBB8C(uint64_t a1)
{
  v2 = sub_255D917C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Referenceable.addingSubReference(subReference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v8;
  v12 = *(v7 + 16);
  v12(v10, v4, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v10;
    v14 = v10[1];
    v16 = v10[2];
    if ((~v16 & 0xF000000000000007) != 0)
    {
      v27[0] = v11;
      v27[1] = v16;
      v25 = type metadata accessor for SubReference(0, *(a2 + 16), *(a2 + 24), v13);
      sub_255E0F398(v27, v25, &v28);
      sub_255D2F870(v16);
      v26 = v28;
      *a3 = v15;
      a3[1] = v14;
      a3[2] = v26;
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      *a3 = v15;
      a3[1] = v14;
      a3[2] = v11;
      swift_storeEnumTagMultiPayload();
      return sub_255D34858(v11);
    }
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v18 = sub_255E386A8();
    __swift_project_value_buffer(v18, qword_27F8152D8);
    v19 = sub_255E38688();
    v20 = sub_255E3A848();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_255D2E000, v19, v20, "Attempting to add a subreference to a value", v21, 2u);
      MEMORY[0x259C4F9E0](v21, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v23 = v22;
    v22[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    v12(boxed_opaque_existential_1, v4, a2);
    *(v23 + 32) = 2;
    swift_willThrow();
    return (*(v7 + 8))(v10, a2);
  }
}

uint64_t Referenceable<>.setValue(store:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v46 = a2;
  v7 = *(a3 + 16);
  v8 = sub_255E3A8A8();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v51 = v7;
  v52 = *(v7 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 16);
  v17(v16, v4, a3);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_255D5C33C();
    swift_allocError();
    v26 = v25;
    v25[3] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    v17(boxed_opaque_existential_1, v4, a3);
    *(v26 + 32) = 2;
    swift_willThrow();
    return (*(v14 + 8))(v16, a3);
  }

  v19 = *v16;
  v18 = v16[1];
  v20 = v16[2];
  RemoteStateStore.subscript.getter(v19, v18, &v55);
  v21 = v55;
  if ((~v55 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v55);
    v22 = v51;
    (*(v52 + 56))(v11, 1, 1, v51);
    (*(v48 + 8))(v11, v8);
    sub_255D5C33C();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = v22;
    *(v23 + 32) = 0;
    swift_willThrow();
    return sub_255D2F870(v20);
  }

  v48 = v19;

  sub_255D5C324(v21);
  v54 = v21;
  v28 = v50;
  v29 = v51;
  v30 = v49;
  sub_255D7D8D8(v51, v50);

  v31 = v52;
  if (v30)
  {
    sub_255D2F870(v20);
  }

  v44 = v20;
  v45 = v18;
  v49 = a1;
  (*(v52 + 56))(v11, 0, 1, v29);
  v32 = v47;
  (*(v31 + 32))(v47, v11, v29);
  v33 = *(v28 + 8);
  v33(&v55, v29, v28);
  if ((v55 >> 61) < 4)
  {

    v33(&v55, v29, v28);
    sub_255DF2888(v55, v48, v45);
    sub_255D2F870(v44);
    return (*(v31 + 8))(v32, v29);
  }

  if (v55 >> 61 != 4)
  {
    v37 = v44;
    if ((~v44 & 0xF000000000000007) != 0)
    {
      v53 = v44;
      v38 = *(a3 + 24);

      sub_255DCC4E0(v39, &v53, v46, v49, v29, v50, v38, &v54);

      v42 = v54;

      sub_255DF2888(v42, v48, v45);
      sub_255D2F870(v37);
      sub_255D5C324(v42);
      (*(v52 + 8))(v47, v29);
    }

    goto LABEL_13;
  }

  v34 = v44;
  if ((~v44 & 0xF000000000000007) == 0)
  {
LABEL_13:
    v33(&v54, v29, v50);
    sub_255DF2888(v54, v48, v45);
    (*(v52 + 8))(v32, v29);
  }

  v53 = v44;
  v35 = *(a3 + 24);

  sub_255DCCD0C(v36, &v53, v46, v49, v29, v50, v35, &v54);

  v40 = v32;
  v41 = v54;

  sub_255DF2888(v41, v48, v45);
  sub_255D2F870(v34);

  (*(v52 + 8))(v40, v29);
}

uint64_t sub_255DCC4E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v16 = *(v9 + 32);
    v17 = *(v9 + 40);
    v18 = *(v9 + 48);
    v82 = *(v9 + 16);
    v83 = v16;
    v84 = v17;

    v19 = StringResolvable.resolved(with:)(a4);
    if (v8)
    {
    }

    v27 = v20;
    v80 = v19;
    if ((~v18 & 0xF000000000000007) == 0)
    {
      v28 = v20;
      (*(a6 + 8))(&v82, a5, a6);
      v29 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = a1;
      sub_255D82054(v29, v80, v28, isUniquelyReferenced_nonNull_native);

      goto LABEL_10;
    }

    v53 = *(a1 + 16);
    v79 = v18;

    if (v53 && (v54 = sub_255D3CA20(v80, v27), (v55 & 1) != 0))
    {
      v56 = *(*(a1 + 56) + 8 * v54);
      if ((v56 >> 61) >= 4)
      {
        if (v56 >> 61 != 4)
        {
          v85 = v18;
          swift_retain_n();

          sub_255DCC4E0(v74, &v85, a3, a4, a5, a6, a7, &v82);

          v77 = v82;

          v78 = swift_isUniquelyReferenced_nonNull_native();
          *&v82 = a1;
          sub_255D82054(v77, v80, v27, v78);
          sub_255D2F870(v18);

          v31 = v82;
          goto LABEL_11;
        }

        v85 = v18;
        swift_retain_n();

        sub_255DCCD0C(v73, &v85, a3, a4, a5, a6, a7, &v82);

        v75 = v82;
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v85 = a1;
        sub_255D82054(v75, v80, v27, v76);
        sub_255D2F870(v18);

LABEL_10:
        v31 = v85;
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        v32 = sub_255E3AB08();
        v33 = v32;
        v34 = 0;
        v35 = 1 << *(v31 + 32);
        v36 = -1;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        v37 = v36 & *(v31 + 64);
        v38 = (v35 + 63) >> 6;
        v39 = v32 + 64;
        if (v37)
        {
          while (1)
          {
            v40 = __clz(__rbit64(v37));
            v37 &= v37 - 1;
LABEL_20:
            v43 = v40 | (v34 << 6);
            v44 = (*(v31 + 48) + 16 * v43);
            v45 = *(*(v31 + 56) + 8 * v43);
            v46 = *v44;
            v47 = v44[1];
            *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
            v48 = (v33[6] + 16 * v43);
            *v48 = v46;
            v48[1] = v47;
            *(v33[7] + 8 * v43) = v45;
            v49 = v33[2];
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              break;
            }

            v33[2] = v51;

            if (!v37)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v41 = v34;
          while (1)
          {
            v34 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v34 >= v38)
            {
              v52 = swift_allocObject();

              *(v52 + 16) = v33;
              *a8 = v52 | 0xA000000000000000;
              return result;
            }

            v42 = *(v31 + 64 + 8 * v34);
            ++v41;
            if (v42)
            {
              v40 = __clz(__rbit64(v42));
              v37 = (v42 - 1) & v42;
              goto LABEL_20;
            }
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_44;
      }

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v57 = sub_255E386A8();
      __swift_project_value_buffer(v57, qword_27F8152D8);
      v58 = sub_255E38688();
      v59 = sub_255E3A868();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_255D2E000, v58, v59, "Referenceable.updatedDict: Have a subreference but next structure is a value", v60, 2u);
        MEMORY[0x259C4F9E0](v60, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v61 = 3;
      *(v61 + 8) = 0;
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      *(v61 + 32) = 5;
      swift_willThrow();
    }

    else
    {
      v62 = v27;

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v63 = sub_255E386A8();
      __swift_project_value_buffer(v63, qword_27F8152D8);

      v64 = sub_255E38688();
      v65 = sub_255E3A868();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v82 = v67;
        *v66 = 136315394;
        v68 = v80;
        *(v66 + 4) = sub_255D378C0(v80, v62, &v82);
        *(v66 + 12) = 2080;
        v69 = sub_255E3A418();
        v71 = sub_255D378C0(v69, v70, &v82);

        *(v66 + 14) = v71;
        _os_log_impl(&dword_255D2E000, v64, v65, "Referenceable.updatedDict: key not found %s dict: %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C4F9E0](v67, -1, -1);
        MEMORY[0x259C4F9E0](v66, -1, -1);
      }

      else
      {

        v68 = v80;
      }

      sub_255D5C33C();
      swift_allocError();
      *v72 = v68;
      *(v72 + 8) = v62;
      *(v72 + 32) = 4;
      swift_willThrow();
    }

    return sub_255D2F870(v79);
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_44:
    swift_once();
  }

  v22 = sub_255E386A8();
  __swift_project_value_buffer(v22, qword_27F8152D8);
  v23 = sub_255E38688();
  v24 = sub_255E3A868();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_255D2E000, v23, v24, "Referenceable.updatedDict: trying to modify a dictionary using an index subreference", v25, 2u);
    MEMORY[0x259C4F9E0](v25, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v26 = 5;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DCCD0C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v10 = sub_255E386A8();
    __swift_project_value_buffer(v10, qword_27F8152D8);
    v11 = sub_255E38688();
    v12 = sub_255E3A868();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_255D2E000, v11, v12, "Referenceable.updatedArray: trying to modify an array using an key subreference", v13, 2u);
      MEMORY[0x259C4F9E0](v13, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v15 = 4;
LABEL_13:
    *v14 = v15;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    v31 = 5;
LABEL_14:
    *(v14 + 32) = v31;
    return swift_willThrow();
  }

  v22 = v9 & 0x7FFFFFFFFFFFFFFFLL;
  v23 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v24 = *(v22 + 40);
  v56 = *(v22 + 48);
  v57 = *(v22 + 16);
  v58 = v23;
  v59 = v24;

  v25 = sub_255D8F9E4(a4);
  if (v26)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v27 = sub_255E386A8();
    __swift_project_value_buffer(v27, qword_27F8152D8);
    v28 = sub_255E38688();
    v29 = sub_255E3A848();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_255D2E000, v28, v29, "SubReference to update array, unable to resolve index", v30, 2u);
      MEMORY[0x259C4F9E0](v30, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v15 = 2;
    goto LABEL_13;
  }

  v33 = v25;
  if (v25 < 0 || v25 >= *(a1 + 2))
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v36 = sub_255E386A8();
    __swift_project_value_buffer(v36, qword_27F8152D8);

    v37 = sub_255E38688();
    v38 = sub_255E3A868();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v57 = v40;
      *v39 = 134218242;
      *(v39 + 4) = v33;
      *(v39 + 12) = 2080;
      v41 = MEMORY[0x259C4E9D0](a1, &type metadata for DecodableState);
      v43 = sub_255D378C0(v41, v42, &v57);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_255D2E000, v37, v38, "Referenceable.updatedArray: index out of range idx: %ld array: %s", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x259C4F9E0](v40, -1, -1);
      MEMORY[0x259C4F9E0](v39, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    *v14 = v33;
    v31 = 3;
    goto LABEL_14;
  }

  v34 = v56;
  if ((~v56 & 0xF000000000000007) == 0)
  {
    (*(a6 + 8))(&v57, a5, a6);
    v35 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    if (v33 < *(a1 + 2))
    {
      *&a1[8 * v33 + 32] = v35;
LABEL_22:

      sub_255DCB4C0(a1, a8);
    }

    __break(1u);
    goto LABEL_47;
  }

  v44 = *&a1[8 * v33 + 32];
  v45 = v44 >> 61 == 4;
  if ((v44 >> 61) >= 4)
  {
    v51 = v44 & 0x1FFFFFFFFFFFFFFFLL;
    if (v45)
    {
      v60 = v56;
      sub_255D34858(v56);

      sub_255DCCD0C(v52, &v60, a3, a4, a5, a6, a7, &v57);
      if (v8)
      {
LABEL_41:

        sub_255D2F870(v56);
      }

      a3 = v51;

      v53 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_255DF5ECC(a1);
      }

      v34 = sub_255D2F870(v56);
      if (v33 < *(a1 + 2))
      {
LABEL_45:
        *&a1[8 * v33 + 32] = v53;

        goto LABEL_22;
      }

      __break(1u);
    }

    v60 = v34;
    sub_255D34858(v34);

    sub_255DCC4E0(v54, &v60, a3, a4, a5, a6, a7, &v57);
    if (v8)
    {
      goto LABEL_41;
    }

    v53 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    result = sub_255D2F870(v56);
    if (v33 >= *(a1 + 2))
    {
      __break(1u);
      return result;
    }

    goto LABEL_45;
  }

  sub_255D34858(v56);

  if (qword_27F7E5E80 != -1)
  {
LABEL_47:
    swift_once();
  }

  v46 = sub_255E386A8();
  __swift_project_value_buffer(v46, qword_27F8152D8);
  v47 = sub_255E38688();
  v48 = sub_255E3A868();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_255D2E000, v47, v48, "Referenceable.updatedArray: Have a subreference but next structure is a value", v49, 2u);
    MEMORY[0x259C4F9E0](v49, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v50 = 3;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 5;
  swift_willThrow();

  return sub_255D2F870(v56);
}
uint64_t sub_24B5BE964@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5BFE14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5BE998(uint64_t a1)
{
  v2 = sub_24B5BED9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BE9D4(uint64_t a1)
{
  v2 = sub_24B5BED9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019870, &qword_24B604C60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5BED9C();
  sub_24B5FFF5C();
  memcpy(v25, v3, 0x111uLL);
  memcpy(v24, v3, sizeof(v24));
  v25[303] = 0;
  sub_24B58FE14(v25, v23);
  sub_24B5BEDF0();
  sub_24B5FFE8C();
  memcpy(v23, v24, 0x111uLL);
  sub_24B58FECC(v23);
  if (!v2)
  {
    v9 = type metadata accessor for FilterState(0);
    LOBYTE(v17) = 1;
    type metadata accessor for FilterLayout(0);
    sub_24B5BFA9C(&qword_27F019888, type metadata accessor for FilterLayout, &protocol conformance descriptor for FilterLayout);
    sub_24B5FFE8C();
    LOBYTE(v17) = 2;
    sub_24B5FEE1C();
    sub_24B5BFA9C(&qword_27F019890, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_24B5FFE8C();
    v10 = &v3[*(v9 + 28)];
    v11 = *(v10 + 1);
    v12 = *(v10 + 2);
    v13 = *(v10 + 3);
    v14 = *(v10 + 4);
    v15 = v10[40];
    v17 = *v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v25[302] = 3;
    sub_24B57BA1C(v17, v11, v12, v13, v14, v15);
    sub_24B57C03C();
    sub_24B5FFE8C();
    sub_24B57BA04(v17, v18, v19, v20, v21, v22);
    LOBYTE(v17) = 4;
    sub_24B5FFE3C();
    LOBYTE(v17) = 5;
    sub_24B5FFE4C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B5BED9C()
{
  result = qword_27F019878;
  if (!qword_27F019878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019878);
  }

  return result;
}

unint64_t sub_24B5BEDF0()
{
  result = qword_27F019880;
  if (!qword_27F019880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019880);
  }

  return result;
}

uint64_t FilterState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_24B5FEE1C();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FilterLayout(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019898, &qword_24B604C68);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for FilterState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B5BED9C();
  v38 = v11;
  v16 = v39;
  sub_24B5FFF4C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v17 = v36;
  v39 = v14;
  v45[303] = 0;
  sub_24B5BF48C();
  sub_24B5FFDDC();
  memcpy(v39, v45, 0x111uLL);
  LOBYTE(v41) = 1;
  sub_24B5BFA9C(&qword_27F0198A8, type metadata accessor for FilterLayout, &protocol conformance descriptor for FilterLayout);
  sub_24B5FFDDC();
  sub_24B5BE82C(v8, &v39[v12[5]]);
  LOBYTE(v41) = 2;
  sub_24B5BFA9C(&qword_27F0198B0, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v18 = v33;
  v19 = v34;
  sub_24B5FFDDC();
  (*(v35 + 32))(&v39[v12[6]], v18, v19);
  v45[302] = 3;
  sub_24B57C4CC();
  sub_24B5FFDDC();
  v20 = v43;
  v21 = v44;
  v22 = &v39[v12[7]];
  v23 = v42;
  *v22 = v41;
  *(v22 + 1) = v23;
  *(v22 + 4) = v20;
  v22[40] = v21;
  LOBYTE(v41) = 4;
  v24 = sub_24B5FFD8C();
  v25 = &v39[v12[8]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v41) = 5;
  v27 = sub_24B5FFD9C();
  (*(v17 + 8))(v38, v37);
  v28 = v27 & 1;
  v29 = v39;
  v39[v12[9]] = v28;
  sub_24B5BF4E0(v29, v32);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_24B5BF544(v29, type metadata accessor for FilterState);
}

unint64_t sub_24B5BF48C()
{
  result = qword_27F0198A0;
  if (!qword_27F0198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0198A0);
  }

  return result;
}

uint64_t sub_24B5BF4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5BF544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FilterState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  memcpy(v12, v1, 0x111uLL);
  FilterLoadState.hash(into:)(a1);
  v4 = type metadata accessor for FilterState(0);
  v5 = &v1[*(v4 + 20)];
  sub_24B5FEEFC();
  sub_24B5BFA9C(&qword_27F0198B8, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B5FFA4C();
  v6 = type metadata accessor for FilterLayout(0);
  MEMORY[0x24C243ED0](v5[*(v6 + 20)]);
  sub_24B5FEE1C();
  sub_24B5BFA9C(&qword_27F0198C0, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_24B5FFA4C();
  v7 = &v2[*(v4 + 28)];
  v8 = *(v7 + 4);
  v9 = v7[40];
  v10 = *(v7 + 1);
  v12[0] = *v7;
  v12[1] = v10;
  *&v12[2] = v8;
  BYTE8(v12[2]) = v9;
  FilterItem.hash(into:)(a1);
  sub_24B5FFB1C();
  return sub_24B5FFF1C();
}

uint64_t FilterState.hashValue.getter()
{
  sub_24B5FFEFC();
  FilterState.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5BF794()
{
  sub_24B5FFEFC();
  FilterState.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5BF7D8(uint64_t a1)
{
  sub_24B5FFEFC();
  FilterState.hash(into:)(v2);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering11FilterStateV2eeoiySbAC_ACtFZ_0(char *__src, char *a2)
{
  memcpy(__dst, __src, 0x111uLL);
  memcpy(__srca, __src, 0x111uLL);
  memcpy(v32, a2, 0x111uLL);
  memcpy(v29, a2, 0x111uLL);
  sub_24B58FE14(__dst, v34);
  sub_24B58FE14(v32, v34);
  StateO2eeoiySbAC_ACtFZ_0 = _s16FitnessFiltering15FilterLoadStateO2eeoiySbAC_ACtFZ_0(__srca, v29);
  memcpy(v33, v29, 0x111uLL);
  sub_24B58FECC(v33);
  memcpy(v34, __srca, 0x111uLL);
  sub_24B58FECC(v34);
  if (StateO2eeoiySbAC_ACtFZ_0 & 1) != 0 && (v5 = type metadata accessor for FilterState(0), v6 = v5[5], v7 = &__src[v6], v8 = &a2[v6], (MEMORY[0x24C242E90](&__src[v6], &a2[v6])) && (v9 = type metadata accessor for FilterLayout(0), v7[*(v9 + 20)] == v8[*(v9 + 20)]) && (MEMORY[0x24C242DD0](&__src[v5[6]], &a2[v5[6]]) & 1) != 0 && (v10 = &__src[v5[7]], v11 = *(v10 + 1), v12 = *(v10 + 2), v13 = *(v10 + 3), v14 = *(v10 + 4), v15 = v10[40], __srca[0] = *v10, __srca[1] = v11, __srca[2] = v12, __srca[3] = v13, __srca[4] = v14, LOBYTE(__srca[5]) = v15, v16 = &a2[v5[7]], v18 = *(v16 + 1), v19 = *(v16 + 2), v20 = *(v16 + 3), v21 = *(v16 + 4), v22 = v16[40], v29[0] = *v16, v17 = v29[0], v29[1] = v18, v29[2] = v19, v29[3] = v20, v29[4] = v21, LOBYTE(v29[5]) = v22, sub_24B57BA1C(__srca[0], v11, v12, v13, v14, v15), sub_24B57BA1C(v17, v18, v19, v20, v21, v22), LOBYTE(v17) = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(__srca, v29), sub_24B57BA04(v29[0], v29[1], v29[2], v29[3], v29[4], v29[5]), sub_24B57BA04(__srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5]), (v17) && ((v23 = v5[8], v24 = *&__src[v23], v25 = *&__src[v23 + 8], v26 = &a2[v23], v24 == *v26) && v25 == *(v26 + 1) || (sub_24B5FFECC()))
  {
    v27 = __src[v5[9]] ^ a2[v5[9]] ^ 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_24B5BFA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B5BFB0C(uint64_t a1)
{
  result = type metadata accessor for FilterLayout(319);
  if (v2 <= 0x3F)
  {
    result = sub_24B5FEE1C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B5BFD10()
{
  result = qword_27F0198D8;
  if (!qword_27F0198D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0198D8);
  }

  return result;
}

unint64_t sub_24B5BFD68()
{
  result = qword_27F0198E0;
  if (!qword_27F0198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0198E0);
  }

  return result;
}

unint64_t sub_24B5BFDC0()
{
  result = qword_27F0198E8;
  if (!qword_27F0198E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0198E8);
  }

  return result;
}

uint64_t sub_24B5BFE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C6946746F6F72 && a2 == 0xEE006D6574497265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746C6946746F6F72 && a2 == 0xEE00656D614E7265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024B60AA10 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

unint64_t sub_24B5C002C()
{
  v1 = *v0;
  v2 = 0x704F7265746C6966;
  v3 = 0x65646F4D74726F73;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6F547265746C6966;
  if (v1 != 3)
  {
    v4 = 0x61646F4D746F6F72;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_24B5C0134@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5C46FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5C015C(uint64_t a1)
{
  v2 = sub_24B5C3D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C0198(uint64_t a1)
{
  v2 = sub_24B5C3D14();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B5C01D4()
{
  v1 = 0x676E69796C707061;
  v2 = 0x646564616F6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 1701602409;
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

uint64_t sub_24B5C0248@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5C4968(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5C0270(uint64_t a1)
{
  v2 = sub_24B5C3A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C02AC(uint64_t a1)
{
  v2 = sub_24B5C3A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5C02E8(uint64_t a1)
{
  v2 = sub_24B5C3CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C0324(uint64_t a1)
{
  v2 = sub_24B5C3CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B5C0360()
{
  v1 = *v0;
  v2 = 0x7265746C6966;
  v3 = 0x65646F4D74726F73;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0x61646F4D746F6F72;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x704F7265746C6966;
  if (v1 != 1)
  {
    v5 = 0x65527265746C6966;
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

uint64_t sub_24B5C045C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5C4AD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5C0484(uint64_t a1)
{
  v2 = sub_24B5C3B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C04C0(uint64_t a1)
{
  v2 = sub_24B5C3B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5C04FC(uint64_t a1)
{
  v2 = sub_24B5C3AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C0538(uint64_t a1)
{
  v2 = sub_24B5C3AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0198F0, &qword_24B604E50);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0198F8, &qword_24B604E58);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  MEMORY[0x28223BE20](v5);
  v57 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019900, &qword_24B604E60);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019908, &qword_24B604E68);
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  MEMORY[0x28223BE20](v11);
  v54 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019910, &qword_24B604E70);
  v62 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C3A94();
  v61 = v16;
  sub_24B5FFF5C();
  memcpy(v69, v60, 0x111uLL);
  v17 = sub_24B58FDFC(v69);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      LOBYTE(v64) = 1;
      sub_24B5C3CC0();
      v35 = v61;
      sub_24B5FFE0C();
      (*(v51 + 8))(v10, v8);
    }

    else
    {
      LOBYTE(v64) = 3;
      sub_24B5C3AE8();
      v35 = v61;
      sub_24B5FFE0C();
      (*(v52 + 8))(v4, v53);
    }

    return (*(v62 + 8))(v35, v14);
  }

  else if (v17)
  {
    nullsub_1();
    v37 = v36;
    v60 = *v36;
    v38 = *(v36 + 2);
    v39 = *(v36 + 24);
    LOBYTE(v64) = 2;
    sub_24B5C3B3C();
    v40 = v57;
    v41 = v61;
    sub_24B5FFE0C();
    v64 = v60;
    *&v65 = v38;
    BYTE8(v65) = v39;
    v70 = 0;
    sub_24B5A4CFC();
    v42 = v58;
    v43 = v63;
    sub_24B5FFE2C();
    if (!v43)
    {
      v44 = v37[3];
      v45 = v37[5];
      v66 = v37[4];
      v67 = v45;
      v68 = *(v37 + 12);
      v64 = v37[2];
      v65 = v44;
      v70 = 1;
      sub_24B5A4C54();
      sub_24B5FFE8C();
      v46 = *(v37 + 120);
      v47 = *(v37 + 152);
      v66 = *(v37 + 136);
      v67 = v47;
      v68 = *(v37 + 21);
      v64 = *(v37 + 104);
      v65 = v46;
      v70 = 2;
      sub_24B5A4A08();
      sub_24B5FFE2C();
      v48 = v37[14];
      v66 = v37[13];
      v67 = v48;
      v68 = *(v37 + 30);
      v49 = v37[12];
      v64 = v37[11];
      v65 = v49;
      v70 = 3;
      sub_24B5C3B90();
      sub_24B5FFE2C();
      *&v64 = *(v37 + 31);
      v70 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019938, &qword_24B604E78);
      sub_24B5C3DBC(&qword_27F019940, sub_24B5C3BE4, MEMORY[0x277D83948]);
      sub_24B5FFE8C();
      *&v64 = *(v37 + 32);
      v70 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019950, &qword_24B604E80);
      sub_24B5C3E88(&qword_27F019958, sub_24B57C0E4, MEMORY[0x277D83948]);
      sub_24B5FFE8C();
      *&v64 = *(v37 + 33);
      v70 = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019960, &qword_24B604E88);
      sub_24B5C3C38(&qword_27F019968, &qword_27F019970, &protocol conformance descriptor for FilterSectionDescriptor, MEMORY[0x277D83948]);
      sub_24B5FFE8C();
    }

    (*(v59 + 8))(v40, v42);
    return (*(v62 + 8))(v41, v14);
  }

  else
  {
    nullsub_1();
    v19 = v18;
    LOBYTE(v64) = 0;
    sub_24B5C3D14();
    v20 = v54;
    v21 = v61;
    sub_24B5FFE0C();
    v64 = *v19;
    v22 = v19[1];
    v23 = v19[2];
    v24 = v19[3];
    v68 = *(v19 + 8);
    v66 = v23;
    v67 = v24;
    v65 = v22;
    v70 = 0;
    sub_24B5A4A08();
    v25 = v55;
    v26 = v63;
    sub_24B5FFE2C();
    if (!v26)
    {
      *&v64 = *(v19 + 9);
      v70 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019938, &qword_24B604E78);
      sub_24B5C3DBC(&qword_27F019940, sub_24B5C3BE4, MEMORY[0x277D83948]);
      sub_24B5FFE8C();
      v27 = v19[8];
      v66 = v19[7];
      v67 = v27;
      v68 = *(v19 + 18);
      v28 = v19[6];
      v64 = v19[5];
      v65 = v28;
      v70 = 2;
      sub_24B5A4C54();
      sub_24B5FFE8C();
      v29 = *(v19 + 160);
      v30 = *(v19 + 21);
      v31 = *(v19 + 176);
      *&v64 = *(v19 + 19);
      BYTE8(v64) = v29;
      *&v65 = v30;
      BYTE8(v65) = v31;
      v70 = 3;
      sub_24B5A4CFC();
      sub_24B5FFE8C();
      v32 = *(v19 + 200);
      v33 = *(v19 + 232);
      v66 = *(v19 + 216);
      v67 = v33;
      v68 = *(v19 + 31);
      v64 = *(v19 + 184);
      v65 = v32;
      v70 = 4;
      sub_24B5C3B90();
      sub_24B5FFE2C();
      *&v64 = *(v19 + 32);
      v70 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019950, &qword_24B604E80);
      sub_24B5C3E88(&qword_27F019958, sub_24B57C0E4, MEMORY[0x277D83948]);
      sub_24B5FFE8C();
      *&v64 = *(v19 + 33);
      v70 = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019960, &qword_24B604E88);
      sub_24B5C3C38(&qword_27F019968, &qword_27F019970, &protocol conformance descriptor for FilterSectionDescriptor, MEMORY[0x277D83948]);
      sub_24B5FFE8C();
    }

    (*(v56 + 8))(v20, v25);
    return (*(v62 + 8))(v21, v14);
  }
}

uint64_t FilterLoadState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019988, &qword_24B604E90);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019990, &qword_24B604E98);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019998, &qword_24B604EA0);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0199A0, &qword_24B604EA8);
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0199A8, &unk_24B604EB0);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B5C3A94();
  v16 = v54;
  sub_24B5FFF4C();
  if (!v16)
  {
    v42 = v9;
    v18 = v51;
    v17 = v52;
    v19 = sub_24B5FFDEC();
    v20 = (2 * *(v19 + 16)) | 1;
    v99 = v19;
    v100 = v19 + 32;
    v101 = 0;
    v102 = v20;
    v21 = sub_24B5A6B20();
    if (v21 == 4 || v101 != v102 >> 1)
    {
      v23 = v14;
      v24 = sub_24B5FFCFC();
      swift_allocError();
      v25 = v12;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460);
      *v27 = &type metadata for FilterLoadState;
      sub_24B5FFD5C();
      sub_24B5FFCEC();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v53 + 8))(v23, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21 > 1u)
      {
        v29 = v50;
        if (v21 == 2)
        {
          v56[0] = 2;
          sub_24B5C3B3C();
          sub_24B5FFD4C();
          v56[0] = 0;
          sub_24B5A6A64();
          sub_24B5FFD7C();
          v54 = v14;
          v46 = v12;
          v31 = v94;
          v32 = v95;
          v52 = v96;
          v33 = v97;
          v88 = 1;
          sub_24B5A6A10();
          sub_24B5FFDDC();
          v44 = v31;
          v45 = v32;
          LODWORD(v48) = v33;
          v85 = v91;
          v86 = v92;
          v87 = v93;
          v83 = v89;
          v84 = v90;
          v77 = 2;
          sub_24B5A6968();
          sub_24B5FFD7C();
          v74 = v80;
          v75 = v81;
          v76 = v82;
          v72 = v78;
          v73 = v79;
          v66 = 3;
          sub_24B5C3D68();
          sub_24B5FFD7C();
          v63 = v69;
          v64 = v70;
          v65 = v71;
          v61 = v67;
          v62 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019938, &qword_24B604E78);
          v56[0] = 4;
          sub_24B5C3DBC(&qword_27F0199B8, sub_24B5C3E34, MEMORY[0x277D83978]);
          sub_24B5FFDDC();
          v37 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019950, &qword_24B604E80);
          v56[0] = 5;
          sub_24B5C3E88(&qword_27F0199C8, sub_24B57C574, MEMORY[0x277D83978]);
          sub_24B5FFDDC();
          v43 = 0;
          v39 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019960, &qword_24B604E88);
          v57 = 6;
          sub_24B5C3C38(&qword_27F0199D0, &qword_27F0199D8, &protocol conformance descriptor for FilterSectionDescriptor, MEMORY[0x277D83978]);
          v40 = v43;
          sub_24B5FFDDC();
          if (v40)
          {
            sub_24B5A0960(v44, v45, v52);
            sub_24B5A0ACC(&v83);
            sub_24B58090C(&v72, &qword_27F018B70, &unk_24B604EC0);
            sub_24B58090C(&v61, &qword_27F018B60, &qword_24B6095B0);

            (*(v47 + 8))(v18, v49);
            (*(v53 + 8))(v54, v46);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v103);
          }

          (*(v47 + 8))(v18, v49);
          (*(v53 + 8))(v54, v46);
          swift_unknownObjectRelease();
          *(&v55[1] + 7) = v84;
          *(&v55[2] + 7) = v85;
          *(&v55[3] + 7) = v86;
          *(&v55[4] + 7) = v87;
          *(v55 + 7) = v83;
          *&v56[120] = v73;
          *&v56[136] = v74;
          *&v56[152] = v75;
          *&v56[168] = v76;
          *&v56[104] = v72;
          *&v56[208] = v63;
          *&v56[224] = v64;
          *&v56[176] = v61;
          *&v56[192] = v62;
          *v56 = v44;
          *&v56[8] = v45;
          *&v56[16] = v52;
          v56[24] = v48;
          *&v56[25] = v55[0];
          *&v56[88] = *(&v55[3] + 15);
          *&v56[73] = v55[3];
          *&v56[57] = v55[2];
          *&v56[41] = v55[1];
          *&v56[240] = v65;
          *&v56[248] = v37;
          *&v56[256] = v39;
          *&v56[264] = v58;
          sub_24B5A09A0(v56);
          memcpy(v98, v56, 0x111uLL);
          v22 = v50;
        }

        else
        {
          v56[0] = 3;
          sub_24B5C3AE8();
          sub_24B5FFD4C();
          v30 = v53;
          (*(v45 + 8))(v17, v46);
          (*(v30 + 8))(v14, v12);
          swift_unknownObjectRelease();
          sub_24B58FE70(v98);
          v22 = v29;
        }
      }

      else
      {
        v22 = v50;
        if (v21)
        {
          v56[0] = 1;
          sub_24B5C3CC0();
          sub_24B5FFD4C();
          (*(v43 + 8))(v8, v44);
          (*(v53 + 8))(v14, v12);
          swift_unknownObjectRelease();
          sub_24B58FDC8(v98);
        }

        else
        {
          v56[0] = 0;
          sub_24B5C3D14();
          sub_24B5FFD4C();
          v54 = v14;
          v88 = 0;
          sub_24B5A6968();
          sub_24B5FFD7C();
          v85 = v91;
          v86 = v92;
          v87 = v93;
          v83 = v89;
          v84 = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019938, &qword_24B604E78);
          v56[0] = 1;
          sub_24B5C3DBC(&qword_27F0199B8, sub_24B5C3E34, MEMORY[0x277D83978]);
          v52 = v11;
          sub_24B5FFDDC();
          v34 = v60;
          v77 = 2;
          sub_24B5A6A10();
          sub_24B5FFDDC();
          v51 = v34;
          v74 = v80;
          v75 = v81;
          v76 = v82;
          v72 = v78;
          v73 = v79;
          v56[0] = 3;
          sub_24B5A6A64();
          sub_24B5FFDDC();
          v46 = v12;
          v35 = v94;
          LOBYTE(v34) = v95;
          v36 = v96;
          LODWORD(v49) = v97;
          v66 = 4;
          sub_24B5C3D68();
          sub_24B5FFD7C();
          v45 = v36;
          v47 = v35;
          v63 = v69;
          v64 = v70;
          v65 = v71;
          v61 = v67;
          v62 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019950, &qword_24B604E80);
          v56[0] = 5;
          sub_24B5C3E88(&qword_27F0199C8, sub_24B57C574, MEMORY[0x277D83978]);
          sub_24B5FFDDC();
          v38 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019960, &qword_24B604E88);
          v57 = 6;
          sub_24B5C3C38(&qword_27F0199D0, &qword_27F0199D8, &protocol conformance descriptor for FilterSectionDescriptor, MEMORY[0x277D83978]);
          sub_24B5FFDDC();
          (*(v48 + 8))(v11, v42);
          (*(v53 + 8))(v54, v46);
          swift_unknownObjectRelease();
          *&v56[32] = v85;
          *&v56[48] = v86;
          *v56 = v83;
          *&v56[16] = v84;
          *&v56[112] = v74;
          *&v56[128] = v75;
          *(&v55[4] + 7) = v65;
          *&v56[80] = v72;
          *&v56[96] = v73;
          *(v55 + 7) = v61;
          *(&v55[1] + 7) = v62;
          *(&v55[2] + 7) = v63;
          *(&v55[3] + 7) = v64;
          *&v56[64] = v87;
          *&v56[72] = v51;
          *&v56[144] = v76;
          *&v56[152] = v47;
          v56[160] = v34;
          *&v56[168] = v45;
          v56[176] = v49;
          *&v56[177] = v55[0];
          *&v56[240] = *(&v55[3] + 15);
          *&v56[225] = v55[3];
          *&v56[209] = v55[2];
          *&v56[193] = v55[1];
          *&v56[256] = v38;
          *&v56[264] = v58;
          sub_24B5A0ECC(v56);
          memcpy(v98, v56, 0x111uLL);
          v22 = v50;
        }
      }

      memcpy(v22, v98, 0x111uLL);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v103);
}

uint64_t FilterLoadState.hash(into:)(__int128 *a1)
{
  memcpy(__dst, v1, 0x111uLL);
  v3 = sub_24B58FDFC(__dst);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    return MEMORY[0x24C243ED0](v9);
  }

  else
  {
    if (v3)
    {
      nullsub_1();
      v11 = v10;
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = *(v10 + 24);
      MEMORY[0x24C243ED0](2);
      if (v12)
      {
        *&v75 = v12;
        BYTE8(v75) = v13 & 1;
        *&v76 = v14;
        BYTE8(v76) = v15;
        sub_24B5FFF1C();

        Filter.hash(into:)(a1);
      }

      else
      {
        sub_24B5FFF1C();
      }

      v26 = v11[5];
      v27 = v11[6];
      v28 = v11[8];
      v29 = v11[9];
      v30 = v11[10];
      v31 = v11[11];
      v32 = v11[12];
      sub_24B57BC0C();
      sub_24B57ADD8(a1, v26);
      sub_24B57AC24(a1, v27);
      sub_24B57BC0C();
      sub_24B57A87C(a1, v28);
      sub_24B57A604(a1, v29);
      sub_24B57A410(a1, v30);
      sub_24B57A1D4(a1, v31);
      sub_24B579FA4(a1, v32);
      v33 = (v11 + 13);
      if (v11[13])
      {
        v60 = *(v11 + 17);
        v64 = *(v11 + 19);
        v68 = v11[21];
        v52 = *v33;
        v56 = *(v11 + 15);
        sub_24B5FFF1C();
        v34 = *(v11 + 19);
        v72 = *(v11 + 17);
        v73 = v34;
        v74 = v11[21];
        v35 = *(v11 + 15);
        v70 = *v33;
        v71 = v35;
        sub_24B5A0B98(&v70, &v75);
        FilterResult.hash(into:)(a1);
        v77 = v60;
        v78 = v64;
        v79 = v68;
        v75 = v52;
        v76 = v56;
        sub_24B5A0B20(&v75);
      }

      else
      {
        sub_24B5FFF1C();
      }

      v39 = (v11 + 22);
      if (v11[22])
      {
        v61 = *(v11 + 13);
        v65 = *(v11 + 14);
        v69 = v11[30];
        v53 = *v39;
        v57 = *(v11 + 12);
        sub_24B5FFF1C();
        v40 = *(v11 + 14);
        v72 = *(v11 + 13);
        v73 = v40;
        v74 = v11[30];
        v41 = *(v11 + 12);
        v70 = *v39;
        v71 = v41;
        sub_24B5A0A70(&v70, &v75);
        Modality.hash(into:)(a1);
        v77 = v61;
        v78 = v65;
        v79 = v69;
        v75 = v53;
        v76 = v57;
        sub_24B5A16A8(&v75);
      }

      else
      {
        sub_24B5FFF1C();
      }

      v42 = v11[31];
      v43 = v11[32];
      v44 = v11[33];
      sub_24B5A8A30(a1, v42);
      sub_24B5A88A0(a1, v43);
      v37 = a1;
      v38 = v44;
    }

    else
    {
      nullsub_1();
      v5 = v4;
      MEMORY[0x24C243ED0](0);
      if (*v5)
      {
        v58 = v5[2];
        v62 = v5[3];
        v66 = *(v5 + 8);
        v50 = *v5;
        v54 = v5[1];
        sub_24B5FFF1C();
        v70 = *v5;
        v6 = v5[1];
        v7 = v5[2];
        v8 = v5[3];
        v74 = *(v5 + 8);
        v72 = v7;
        v73 = v8;
        v71 = v6;
        sub_24B5A0B98(&v70, &v75);
        FilterResult.hash(into:)(a1);
        v77 = v58;
        v78 = v62;
        v79 = v66;
        v75 = v50;
        v76 = v54;
        sub_24B5A0B20(&v75);
      }

      else
      {
        sub_24B5FFF1C();
      }

      v17 = *(v5 + 11);
      v18 = *(v5 + 12);
      v19 = *(v5 + 14);
      v20 = *(v5 + 15);
      v21 = *(v5 + 16);
      v22 = *(v5 + 17);
      v45 = *(v5 + 18);
      v49 = *(v5 + 19);
      v48 = *(v5 + 160);
      v47 = *(v5 + 21);
      v46 = *(v5 + 176);
      sub_24B5A8A30(a1, *(v5 + 9));
      sub_24B57BC0C();
      sub_24B57ADD8(a1, v17);
      sub_24B57AC24(a1, v18);
      sub_24B57BC0C();
      sub_24B57A87C(a1, v19);
      sub_24B57A604(a1, v20);
      sub_24B57A410(a1, v21);
      sub_24B57A1D4(a1, v22);
      sub_24B579FA4(a1, v45);
      *&v75 = v49;
      BYTE8(v75) = v48;
      *&v76 = v47;
      BYTE8(v76) = v46;
      Filter.hash(into:)(a1);
      v23 = (v5 + 184);
      if (*(v5 + 23))
      {
        v59 = *(v5 + 216);
        v63 = *(v5 + 232);
        v67 = *(v5 + 31);
        v51 = *v23;
        v55 = *(v5 + 200);
        sub_24B5FFF1C();
        v24 = *(v5 + 232);
        v72 = *(v5 + 216);
        v73 = v24;
        v74 = *(v5 + 31);
        v25 = *(v5 + 200);
        v70 = *v23;
        v71 = v25;
        sub_24B5A0A70(&v70, &v75);
        Modality.hash(into:)(a1);
        v77 = v59;
        v78 = v63;
        v79 = v67;
        v75 = v51;
        v76 = v55;
        sub_24B5A16A8(&v75);
      }

      else
      {
        sub_24B5FFF1C();
      }

      v36 = *(v5 + 33);
      sub_24B5A88A0(a1, *(v5 + 32));
      v37 = a1;
      v38 = v36;
    }

    return sub_24B5A7BA0(v37, v38);
  }
}

uint64_t FilterLoadState.hashValue.getter()
{
  sub_24B5FFEFC();
  FilterLoadState.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C287C()
{
  sub_24B5FFEFC();
  FilterLoadState.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C28C0(uint64_t a1)
{
  sub_24B5FFEFC();
  FilterLoadState.hash(into:)(v2);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering15FilterLoadStateO2eeoiySbAC_ACtFZ_0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x111uLL);
  memcpy(__srca, a2, 0x111uLL);
  memcpy(v96, __src, 0x111uLL);
  memcpy(v97, a2, sizeof(v97));
  memcpy(v98, __src, 0x111uLL);
  v4 = sub_24B58FDFC(v98);
  if (v4 <= 1)
  {
    if (!v4)
    {
      nullsub_1();
      v6 = v5;
      memcpy(v93, __srca, 0x111uLL);
      if (!sub_24B58FDFC(v93))
      {
        nullsub_1();
        v8 = v7;
        v9 = *v6;
        v10 = *(v6 + 24);
        v82 = *(v6 + 8);
        v83 = v10;
        v11 = *(v6 + 56);
        v84 = *(v6 + 40);
        v85 = v11;
        v12 = *v7;
        v13 = *(v7 + 24);
        v78 = *(v7 + 8);
        v79 = v13;
        v14 = *(v7 + 56);
        v80 = *(v7 + 40);
        v81 = v14;
        if (v9)
        {
          *v86 = v9;
          *&v86[24] = v83;
          *&v86[8] = v82;
          *&v86[40] = v84;
          *&v86[56] = v85;
          *&v77[32] = *&v86[32];
          *&v77[48] = *&v86[48];
          *&v77[64] = *(&v85 + 1);
          *v77 = *v86;
          *&v77[16] = *&v86[16];
          if (v12)
          {
            *&v69[8] = v78;
            *&v69[24] = v79;
            *&v69[40] = v80;
            *&v69[56] = v81;
            *v69 = v12;
            sub_24B58FE14(__srca, v87);
            sub_24B58FE14(__dst, v87);
            sub_24B57BAFC(v6, v87, &qword_27F018B70, &unk_24B604EC0);
            sub_24B57BAFC(v8, v87, &qword_27F018B70, &unk_24B604EC0);
            sub_24B57BAFC(v86, v87, &qword_27F018B70, &unk_24B604EC0);
            v15 = _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(v77, v69);
            *&v70[32] = *&v69[32];
            *&v70[48] = *&v69[48];
            *&v70[64] = *&v69[64];
            *v70 = *v69;
            *&v70[16] = *&v69[16];
            sub_24B5A0B20(v70);
            v73 = *&v77[32];
            v74 = *&v77[48];
            v75 = *&v77[64];
            v71 = *v77;
            v72 = *&v77[16];
            sub_24B5A0B20(&v71);
            *v76 = v9;
            *&v76[8] = v82;
            *&v76[24] = v83;
            *&v76[40] = v84;
            *&v76[56] = v85;
            sub_24B58090C(v76, &qword_27F018B70, &unk_24B604EC0);
            if ((v15 & 1) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_43;
          }

          sub_24B58FE14(__srca, v87);
          sub_24B58FE14(__dst, v87);
          sub_24B57BAFC(v6, v87, &qword_27F018B70, &unk_24B604EC0);
          sub_24B57BAFC(v8, v87, &qword_27F018B70, &unk_24B604EC0);
          sub_24B57BAFC(v86, v87, &qword_27F018B70, &unk_24B604EC0);
          sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
          *&v87[32] = *&v77[32];
          *&v87[48] = *&v77[48];
          *&v87[64] = *&v77[64];
          *v87 = *v77;
          *&v87[16] = *&v77[16];
          sub_24B5A0B20(v87);
        }

        else
        {
          if (!v12)
          {
            *v86 = 0;
            *&v86[8] = v82;
            *&v86[24] = v83;
            *&v86[40] = v84;
            *&v86[56] = v85;
            sub_24B58FE14(__srca, v87);
            sub_24B58FE14(__dst, v87);
            sub_24B57BAFC(v6, v87, &qword_27F018B70, &unk_24B604EC0);
            sub_24B57BAFC(v8, v87, &qword_27F018B70, &unk_24B604EC0);
            sub_24B58090C(v86, &qword_27F018B70, &unk_24B604EC0);
LABEL_43:
            if ((sub_24B5D3A38(*(v6 + 72), *(v8 + 72)) & 1) == 0)
            {
              goto LABEL_22;
            }

            v44 = *(v6 + 128);
            *&v87[32] = *(v6 + 112);
            *&v87[48] = v44;
            *&v87[64] = *(v6 + 144);
            v45 = *(v6 + 96);
            *v87 = *(v6 + 80);
            *&v87[16] = v45;
            v46 = *(v8 + 128);
            *&v86[32] = *(v8 + 112);
            *&v86[48] = v46;
            *&v86[64] = *(v8 + 144);
            v47 = *(v8 + 96);
            *v86 = *(v8 + 80);
            *&v86[16] = v47;
            if ((_s16FitnessFiltering13FilterOptionsV2eeoiySbAC_ACtFZ_0(v87, v86) & 1) == 0)
            {
              goto LABEL_22;
            }

            v48 = *(v6 + 160);
            v49 = *(v6 + 168);
            v50 = *(v6 + 176);
            v51 = *(v8 + 160);
            v52 = *(v8 + 168);
            v53 = *(v8 + 176);
            if ((sub_24B587A08(*(v6 + 152), *(v8 + 152)) & 1) == 0 || ((v48 ^ v51) & 1) != 0 || (sub_24B587A08(v49, v52) & 1) == 0 || (sub_24B5886F8(v50, v53) & 1) == 0)
            {
              goto LABEL_22;
            }

            v54 = v6 + 184;
            v55 = *(v6 + 184);
            v56 = v8 + 184;
            v57 = *(v8 + 184);
            v58 = *(v6 + 208);
            v82 = *(v6 + 192);
            v83 = v58;
            v59 = *(v6 + 240);
            v84 = *(v6 + 224);
            v85 = v59;
            v60 = *(v8 + 208);
            v78 = *(v8 + 192);
            v79 = v60;
            v61 = *(v8 + 240);
            v80 = *(v8 + 224);
            v81 = v61;
            if (v55)
            {
              *v87 = v55;
              *&v87[24] = *(v6 + 208);
              *&v87[8] = *(v6 + 192);
              *&v87[40] = *(v6 + 224);
              *&v87[56] = *(v6 + 240);
              *&v86[32] = *&v87[32];
              *&v86[48] = *&v87[48];
              *&v86[64] = *&v87[64];
              *v86 = *v87;
              *&v86[16] = *&v87[16];
              if (v57)
              {
                *&v70[8] = *(v8 + 192);
                *&v70[24] = *(v8 + 208);
                *&v70[40] = *(v8 + 224);
                *&v70[56] = *(v8 + 240);
                *v70 = v57;
                sub_24B57BAFC(v54, v69, &qword_27F018B60, &qword_24B6095B0);
                sub_24B57BAFC(v8 + 184, v69, &qword_27F018B60, &qword_24B6095B0);
                sub_24B57BAFC(v87, v69, &qword_27F018B60, &qword_24B6095B0);
                v62 = _s16FitnessFiltering8ModalityV2eeoiySbAC_ACtFZ_0(v86, v70);
                v73 = *&v70[32];
                v74 = *&v70[48];
                v75 = *&v70[64];
                v71 = *v70;
                v72 = *&v70[16];
                sub_24B5A16A8(&v71);
                *&v76[32] = *&v86[32];
                *&v76[48] = *&v86[48];
                *&v76[64] = *&v86[64];
                *v76 = *v86;
                *&v76[16] = *&v86[16];
                sub_24B5A16A8(v76);
                *v77 = v55;
                *&v77[8] = v82;
                *&v77[24] = v83;
                *&v77[40] = v84;
                *&v77[56] = v85;
                sub_24B58090C(v77, &qword_27F018B60, &qword_24B6095B0);
                if (v62)
                {
LABEL_67:
                  if (sub_24B5D3C34(*(v6 + 256), *(v8 + 256)))
                  {
                    v26 = sub_24B5D3F3C(*(v6 + 264), *(v8 + 264));
                    sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
                    return v26 & 1;
                  }

                  goto LABEL_22;
                }

                goto LABEL_22;
              }

              goto LABEL_71;
            }

            if (!v57)
            {
              *v87 = 0;
              *&v87[8] = *(v6 + 192);
              *&v87[24] = *(v6 + 208);
              *&v87[40] = *(v6 + 224);
              *&v87[56] = *(v6 + 240);
              sub_24B57BAFC(v54, v86, &qword_27F018B60, &qword_24B6095B0);
              sub_24B57BAFC(v8 + 184, v86, &qword_27F018B60, &qword_24B6095B0);
              sub_24B58090C(v87, &qword_27F018B60, &qword_24B6095B0);
              goto LABEL_67;
            }

LABEL_70:
            sub_24B57BAFC(v54, v87, &qword_27F018B60, &qword_24B6095B0);
            sub_24B57BAFC(v56, v87, &qword_27F018B60, &qword_24B6095B0);
            sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
LABEL_72:
            *&v87[8] = v82;
            *&v87[24] = v83;
            *&v87[40] = v84;
            *&v87[56] = v85;
            *v87 = v55;
            v88 = v57;
            v89 = v78;
            v90 = v79;
            v91 = v80;
            v92 = v81;
            v27 = &unk_27F019A58;
            v28 = &unk_24B605768;
            v29 = v87;
            goto LABEL_23;
          }

          sub_24B58FE14(__srca, v87);
          sub_24B58FE14(__dst, v87);
          sub_24B57BAFC(v6, v87, &qword_27F018B70, &unk_24B604EC0);
          sub_24B57BAFC(v8, v87, &qword_27F018B70, &unk_24B604EC0);
          sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
        }

        *&v87[8] = v82;
        *&v87[24] = v83;
        *&v87[40] = v84;
        *&v87[56] = v85;
        *v87 = v9;
        v88 = v12;
        v89 = v78;
        v90 = v79;
        v91 = v80;
        v92 = v81;
LABEL_35:
        v27 = &unk_27F019A50;
        v28 = &unk_24B605760;
        v29 = v87;
        goto LABEL_23;
      }

LABEL_21:
      sub_24B58FE14(__srca, v93);
      sub_24B58FE14(__dst, v93);
      goto LABEL_22;
    }

    nullsub_1();
    v6 = v16;
    memcpy(v93, __srca, 0x111uLL);
    if (sub_24B58FDFC(v93) != 1)
    {
      goto LABEL_21;
    }

    nullsub_1();
    v8 = v17;
    v19 = *v6;
    v18 = *(v6 + 8);
    v20 = *(v6 + 16);
    v21 = *(v6 + 24);
    v23 = *v17;
    v22 = *(v17 + 8);
    v24 = *(v17 + 16);
    v25 = *(v17 + 24);
    if (*v6)
    {
      if (v23)
      {
        sub_24B58FE14(__srca, v87);
        sub_24B58FE14(__dst, v87);
        sub_24B5A0F9C(v19, v18, v20);
        sub_24B5A0F9C(v23, v22, v24);
        sub_24B5A0F9C(v19, v18, v20);
        if ((sub_24B587A08(v19, v23) & 1) == 0 || ((v18 ^ v22) & 1) != 0 || (sub_24B587A08(v20, v24) & 1) == 0)
        {
          sub_24B5A0960(v23, v22, v24);

          sub_24B5A0960(v19, v18, v20);
          goto LABEL_22;
        }

        v68 = sub_24B5886F8(v21, v25);
        sub_24B5A0960(v23, v22, v24);

        sub_24B5A0960(v19, v18, v20);
        if ((v68 & 1) == 0)
        {
LABEL_22:
          v27 = &qword_27F018B20;
          v28 = &qword_24B600D90;
          v29 = v96;
LABEL_23:
          sub_24B58090C(v29, v27, v28);
LABEL_24:
          v26 = 0;
          return v26 & 1;
        }

LABEL_37:
        v31 = *(v6 + 48);
        v32 = *(v6 + 80);
        *&v87[32] = *(v6 + 64);
        *&v87[48] = v32;
        *&v87[64] = *(v6 + 96);
        *v87 = *(v6 + 32);
        *&v87[16] = v31;
        v33 = *(v8 + 48);
        v34 = *(v8 + 80);
        *&v86[32] = *(v8 + 64);
        *&v86[48] = v34;
        *&v86[64] = *(v8 + 96);
        *v86 = *(v8 + 32);
        *&v86[16] = v33;
        if ((_s16FitnessFiltering13FilterOptionsV2eeoiySbAC_ACtFZ_0(v87, v86) & 1) == 0)
        {
          goto LABEL_22;
        }

        v35 = v6 + 104;
        v36 = *(v6 + 104);
        v37 = v8 + 104;
        v38 = *(v8 + 104);
        v39 = *(v6 + 128);
        v82 = *(v6 + 112);
        v83 = v39;
        v40 = *(v6 + 160);
        v84 = *(v6 + 144);
        v85 = v40;
        v41 = *(v8 + 128);
        v78 = *(v8 + 112);
        v79 = v41;
        v42 = *(v8 + 160);
        v80 = *(v8 + 144);
        v81 = v42;
        if (v36)
        {
          *v87 = v36;
          *&v87[24] = *(v6 + 128);
          *&v87[8] = *(v6 + 112);
          *&v87[40] = *(v6 + 144);
          *&v87[56] = *(v6 + 160);
          *&v86[32] = *&v87[32];
          *&v86[48] = *&v87[48];
          *&v86[64] = *&v87[64];
          *v86 = *v87;
          *&v86[16] = *&v87[16];
          if (v38)
          {
            *&v70[8] = *(v8 + 112);
            *&v70[24] = *(v8 + 128);
            *&v70[40] = *(v8 + 144);
            *&v70[56] = *(v8 + 160);
            *v70 = v38;
            sub_24B57BAFC(v35, v69, &qword_27F018B70, &unk_24B604EC0);
            sub_24B57BAFC(v8 + 104, v69, &qword_27F018B70, &unk_24B604EC0);
            sub_24B57BAFC(v87, v69, &qword_27F018B70, &unk_24B604EC0);
            v43 = _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(v86, v70);
            v73 = *&v70[32];
            v74 = *&v70[48];
            v75 = *&v70[64];
            v71 = *v70;
            v72 = *&v70[16];
            sub_24B5A0B20(&v71);
            *&v76[32] = *&v86[32];
            *&v76[48] = *&v86[48];
            *&v76[64] = *&v86[64];
            *v76 = *v86;
            *&v76[16] = *&v86[16];
            sub_24B5A0B20(v76);
            *v77 = v36;
            *&v77[8] = v82;
            *&v77[24] = v83;
            *&v77[40] = v84;
            *&v77[56] = v85;
            sub_24B58090C(v77, &qword_27F018B70, &unk_24B604EC0);
            if ((v43 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_58:
            v54 = v6 + 176;
            v55 = *(v6 + 176);
            v56 = v8 + 176;
            v57 = *(v8 + 176);
            v63 = *(v6 + 200);
            v82 = *(v6 + 184);
            v83 = v63;
            v64 = *(v6 + 232);
            v84 = *(v6 + 216);
            v85 = v64;
            v65 = *(v8 + 200);
            v78 = *(v8 + 184);
            v79 = v65;
            v66 = *(v8 + 232);
            v80 = *(v8 + 216);
            v81 = v66;
            if (v55)
            {
              *v87 = v55;
              *&v87[24] = *(v6 + 200);
              *&v87[8] = *(v6 + 184);
              *&v87[40] = *(v6 + 216);
              *&v87[56] = *(v6 + 232);
              *&v86[32] = *&v87[32];
              *&v86[48] = *&v87[48];
              *&v86[64] = *&v87[64];
              *v86 = *v87;
              *&v86[16] = *&v87[16];
              if (!v57)
              {
LABEL_71:
                sub_24B57BAFC(v54, v77, &qword_27F018B60, &qword_24B6095B0);
                sub_24B57BAFC(v56, v77, &qword_27F018B60, &qword_24B6095B0);
                sub_24B57BAFC(v87, v77, &qword_27F018B60, &qword_24B6095B0);
                sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
                *&v77[32] = *&v86[32];
                *&v77[48] = *&v86[48];
                *&v77[64] = *&v86[64];
                *v77 = *v86;
                *&v77[16] = *&v86[16];
                sub_24B5A16A8(v77);
                goto LABEL_72;
              }

              *&v70[8] = *(v8 + 184);
              *&v70[24] = *(v8 + 200);
              *&v70[40] = *(v8 + 216);
              *&v70[56] = *(v8 + 232);
              *v70 = v57;
              sub_24B57BAFC(v54, v69, &qword_27F018B60, &qword_24B6095B0);
              sub_24B57BAFC(v8 + 176, v69, &qword_27F018B60, &qword_24B6095B0);
              sub_24B57BAFC(v87, v69, &qword_27F018B60, &qword_24B6095B0);
              v67 = _s16FitnessFiltering8ModalityV2eeoiySbAC_ACtFZ_0(v86, v70);
              v73 = *&v70[32];
              v74 = *&v70[48];
              v75 = *&v70[64];
              v71 = *v70;
              v72 = *&v70[16];
              sub_24B5A16A8(&v71);
              *&v76[32] = *&v86[32];
              *&v76[48] = *&v86[48];
              *&v76[64] = *&v86[64];
              *v76 = *v86;
              *&v76[16] = *&v86[16];
              sub_24B5A16A8(v76);
              *v77 = v55;
              *&v77[8] = v82;
              *&v77[24] = v83;
              *&v77[40] = v84;
              *&v77[56] = v85;
              sub_24B58090C(v77, &qword_27F018B60, &qword_24B6095B0);
              if ((v67 & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v57)
              {
                goto LABEL_70;
              }

              *v87 = 0;
              *&v87[8] = *(v6 + 184);
              *&v87[24] = *(v6 + 200);
              *&v87[40] = *(v6 + 216);
              *&v87[56] = *(v6 + 232);
              sub_24B57BAFC(v54, v86, &qword_27F018B60, &qword_24B6095B0);
              sub_24B57BAFC(v8 + 176, v86, &qword_27F018B60, &qword_24B6095B0);
              sub_24B58090C(v87, &qword_27F018B60, &qword_24B6095B0);
            }

            if (sub_24B5D3A38(*(v6 + 248), *(v8 + 248)))
            {
              goto LABEL_67;
            }

            goto LABEL_22;
          }

          sub_24B57BAFC(v35, v77, &qword_27F018B70, &unk_24B604EC0);
          sub_24B57BAFC(v37, v77, &qword_27F018B70, &unk_24B604EC0);
          sub_24B57BAFC(v87, v77, &qword_27F018B70, &unk_24B604EC0);
          sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
          *&v77[32] = *&v86[32];
          *&v77[48] = *&v86[48];
          *&v77[64] = *&v86[64];
          *v77 = *v86;
          *&v77[16] = *&v86[16];
          sub_24B5A0B20(v77);
        }

        else
        {
          if (!v38)
          {
            *v87 = 0;
            *&v87[8] = *(v6 + 112);
            *&v87[24] = *(v6 + 128);
            *&v87[40] = *(v6 + 144);
            *&v87[56] = *(v6 + 160);
            sub_24B57BAFC(v35, v86, &qword_27F018B70, &unk_24B604EC0);
            sub_24B57BAFC(v8 + 104, v86, &qword_27F018B70, &unk_24B604EC0);
            sub_24B58090C(v87, &qword_27F018B70, &unk_24B604EC0);
            goto LABEL_58;
          }

          sub_24B57BAFC(v35, v87, &qword_27F018B70, &unk_24B604EC0);
          sub_24B57BAFC(v37, v87, &qword_27F018B70, &unk_24B604EC0);
          sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
        }

        *&v87[8] = v82;
        *&v87[24] = v83;
        *&v87[40] = v84;
        *&v87[56] = v85;
        *v87 = v36;
        v88 = v38;
        v89 = v78;
        v90 = v79;
        v91 = v80;
        v92 = v81;
        goto LABEL_35;
      }

      sub_24B58FE14(__srca, v87);
      sub_24B58FE14(__dst, v87);
      sub_24B5A0F9C(v19, v18, v20);
      sub_24B5A0F9C(0, v22, v24);
      sub_24B5A0F9C(v19, v18, v20);
      sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
    }

    else
    {
      if (!v23)
      {
        sub_24B58FE14(__srca, v87);
        sub_24B58FE14(__dst, v87);
        sub_24B5A0F9C(0, v18, v20);
        sub_24B5A0F9C(0, v22, v24);
        sub_24B5A0960(0, v18, v20);
        goto LABEL_37;
      }

      sub_24B58FE14(__srca, v87);
      sub_24B58FE14(__dst, v87);
      sub_24B5A0F9C(0, v18, v20);
      sub_24B5A0F9C(v23, v22, v24);
      sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
    }

    sub_24B5A0960(v19, v18, v20);
    sub_24B5A0960(v23, v22, v24);
    goto LABEL_24;
  }

  if (v4 == 2)
  {
    memcpy(v93, __srca, 0x111uLL);
    if (sub_24B58FDFC(v93) != 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    memcpy(v93, __srca, 0x111uLL);
    if (sub_24B58FDFC(v93) != 3)
    {
      goto LABEL_21;
    }
  }

  sub_24B58090C(v96, &qword_27F018B20, &qword_24B600D90);
  v26 = 1;
  return v26 & 1;
}

unint64_t sub_24B5C3A94()
{
  result = qword_27F019918;
  if (!qword_27F019918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019918);
  }

  return result;
}

unint64_t sub_24B5C3AE8()
{
  result = qword_27F019920;
  if (!qword_27F019920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019920);
  }

  return result;
}

unint64_t sub_24B5C3B3C()
{
  result = qword_27F019928;
  if (!qword_27F019928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019928);
  }

  return result;
}

unint64_t sub_24B5C3B90()
{
  result = qword_27F019930;
  if (!qword_27F019930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019930);
  }

  return result;
}

unint64_t sub_24B5C3BE4()
{
  result = qword_27F019948;
  if (!qword_27F019948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019948);
  }

  return result;
}

uint64_t sub_24B5C3C38(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019960, &qword_24B604E88);
    sub_24B5C3F00(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5C3CC0()
{
  result = qword_27F019978;
  if (!qword_27F019978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019978);
  }

  return result;
}

unint64_t sub_24B5C3D14()
{
  result = qword_27F019980;
  if (!qword_27F019980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019980);
  }

  return result;
}

unint64_t sub_24B5C3D68()
{
  result = qword_27F0199B0;
  if (!qword_27F0199B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0199B0);
  }

  return result;
}

uint64_t sub_24B5C3DBC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019938, &qword_24B604E78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5C3E34()
{
  result = qword_27F0199C0;
  if (!qword_27F0199C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0199C0);
  }

  return result;
}

uint64_t sub_24B5C3E88(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019950, &qword_24B604E80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B5C3F00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FilterSectionDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5C3F48()
{
  result = qword_27F0199E0;
  if (!qword_27F0199E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0199E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16FitnessFiltering15FilterLoadStateO(uint64_t a1)
{
  if ((*(a1 + 272) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 272) & 3;
  }
}

uint64_t sub_24B5C3FC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 273))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 272);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B5C4008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 273) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 273) = 0;
    }

    if (a2)
    {
      *(result + 272) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B5C4094(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 248) = 0u;
    LOBYTE(a2) = 2;
    *(result + 264) = 0;
  }

  *(result + 272) = a2;
  return result;
}

uint64_t sub_24B5C4124(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B5C41B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B5C4288()
{
  result = qword_27F0199E8;
  if (!qword_27F0199E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0199E8);
  }

  return result;
}

unint64_t sub_24B5C42E0()
{
  result = qword_27F0199F0;
  if (!qword_27F0199F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0199F0);
  }

  return result;
}

unint64_t sub_24B5C4338()
{
  result = qword_27F0199F8;
  if (!qword_27F0199F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0199F8);
  }

  return result;
}

unint64_t sub_24B5C4390()
{
  result = qword_27F019A00;
  if (!qword_27F019A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A00);
  }

  return result;
}

unint64_t sub_24B5C43E8()
{
  result = qword_27F019A08;
  if (!qword_27F019A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A08);
  }

  return result;
}

unint64_t sub_24B5C4440()
{
  result = qword_27F019A10;
  if (!qword_27F019A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A10);
  }

  return result;
}

unint64_t sub_24B5C4498()
{
  result = qword_27F019A18;
  if (!qword_27F019A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A18);
  }

  return result;
}

unint64_t sub_24B5C44F0()
{
  result = qword_27F019A20;
  if (!qword_27F019A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A20);
  }

  return result;
}

unint64_t sub_24B5C4548()
{
  result = qword_27F019A28;
  if (!qword_27F019A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A28);
  }

  return result;
}

unint64_t sub_24B5C45A0()
{
  result = qword_27F019A30;
  if (!qword_27F019A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A30);
  }

  return result;
}

unint64_t sub_24B5C45F8()
{
  result = qword_27F019A38;
  if (!qword_27F019A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A38);
  }

  return result;
}

unint64_t sub_24B5C4650()
{
  result = qword_27F019A40;
  if (!qword_27F019A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A40);
  }

  return result;
}

unint64_t sub_24B5C46A8()
{
  result = qword_27F019A48;
  if (!qword_27F019A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A48);
  }

  return result;
}

uint64_t sub_24B5C46FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000024B60AA90 == a2;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024B60AAB0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F547265746C6966 && a2 == 0xED0000796C707041 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61646F4D746F6F72 && a2 == 0xEC0000007974696CLL || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646F4D74726F73 && a2 == 0xE900000000000073 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60AA70 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24B5C4968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69796C707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B60AA30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5C4AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746C6966 && a2 == 0xE600000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65527265746C6966 && a2 == 0xEC000000746C7573 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61646F4D746F6F72 && a2 == 0xEC0000007974696CLL || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B60AA50 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646F4D74726F73 && a2 == 0xE900000000000073 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60AA70 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_24B5C4DA0()
{
  result = qword_27F019A60;
  if (!qword_27F019A60)
  {
    sub_24B5FF2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A60);
  }

  return result;
}

uint64_t sub_24B5C4E0C()
{
  v1 = 0x62617463656C6573;
  if (*v0 != 1)
  {
    v1 = 0x64657463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_24B5C4E6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5C5F04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5C4E94(uint64_t a1)
{
  v2 = sub_24B5C53E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C4ED0(uint64_t a1)
{
  v2 = sub_24B5C53E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5C4F0C(uint64_t a1)
{
  v2 = sub_24B5C54DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C4F48(uint64_t a1)
{
  v2 = sub_24B5C54DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5C4F84(uint64_t a1)
{
  v2 = sub_24B5C5488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C4FC0(uint64_t a1)
{
  v2 = sub_24B5C5488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5C4FFC(uint64_t a1)
{
  v2 = sub_24B5C5434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C5038(uint64_t a1)
{
  v2 = sub_24B5C5434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OptionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019A68, &qword_24B6057C0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019A70, &qword_24B6057C8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019A78, &qword_24B6057D0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019A80, &qword_24B6057D8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C53E0();
  sub_24B5FFF5C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_24B5C5488();
      v9 = v21;
      sub_24B5FFE0C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_24B5C5434();
      v9 = v24;
      sub_24B5FFE0C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_24B5C54DC();
    sub_24B5FFE0C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_24B5C53E0()
{
  result = qword_27F019A88;
  if (!qword_27F019A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A88);
  }

  return result;
}

unint64_t sub_24B5C5434()
{
  result = qword_27F019A90;
  if (!qword_27F019A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A90);
  }

  return result;
}

unint64_t sub_24B5C5488()
{
  result = qword_27F019A98;
  if (!qword_27F019A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019A98);
  }

  return result;
}

unint64_t sub_24B5C54DC()
{
  result = qword_27F019AA0;
  if (!qword_27F019AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AA0);
  }

  return result;
}

uint64_t OptionState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019AA8, &qword_24B6057E0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019AB0, &qword_24B6057E8);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019AB8, &qword_24B6057F0);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019AC0, &unk_24B6057F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B5C53E0();
  v15 = v36;
  sub_24B5FFF4C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_24B5FFDEC();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_24B5A6B54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_24B5FFCFC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460);
      *v24 = &type metadata for OptionState;
      sub_24B5FFD5C();
      sub_24B5FFCEC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_24B5C5488();
          sub_24B5FFD4C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_24B5C5434();
          v26 = v17;
          sub_24B5FFD4C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_24B5C54DC();
        sub_24B5FFD4C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t OptionState.hashValue.getter()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

unint64_t sub_24B5C5B48()
{
  result = qword_27F019AC8;
  if (!qword_27F019AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AC8);
  }

  return result;
}

unint64_t sub_24B5C5BF0()
{
  result = qword_27F019AD0;
  if (!qword_27F019AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AD0);
  }

  return result;
}

unint64_t sub_24B5C5C48()
{
  result = qword_27F019AD8;
  if (!qword_27F019AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AD8);
  }

  return result;
}

unint64_t sub_24B5C5CA0()
{
  result = qword_27F019AE0;
  if (!qword_27F019AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AE0);
  }

  return result;
}

unint64_t sub_24B5C5CF8()
{
  result = qword_27F019AE8;
  if (!qword_27F019AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AE8);
  }

  return result;
}

unint64_t sub_24B5C5D50()
{
  result = qword_27F019AF0;
  if (!qword_27F019AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AF0);
  }

  return result;
}

unint64_t sub_24B5C5DA8()
{
  result = qword_27F019AF8;
  if (!qword_27F019AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019AF8);
  }

  return result;
}

unint64_t sub_24B5C5E00()
{
  result = qword_27F019B00;
  if (!qword_27F019B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B00);
  }

  return result;
}

unint64_t sub_24B5C5E58()
{
  result = qword_27F019B08;
  if (!qword_27F019B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B08);
  }

  return result;
}

unint64_t sub_24B5C5EB0()
{
  result = qword_27F019B10;
  if (!qword_27F019B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B10);
  }

  return result;
}

uint64_t sub_24B5C5F04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x62617463656C6573 && a2 == 0xEA0000000000656CLL || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t Duration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall Duration.init(identifier:seconds:lowerBuffer:upperBuffer:)(FitnessFiltering::Duration *__return_ptr retstr, Swift::String identifier, Swift::Double seconds, Swift::Double lowerBuffer, Swift::Double upperBuffer)
{
  retstr->identifier = identifier;
  retstr->lowerBuffer = lowerBuffer;
  retstr->seconds = seconds;
  retstr->upperBuffer = upperBuffer;
}

uint64_t sub_24B5C6088()
{
  v1 = 0x696669746E656469;
  v2 = 0x73646E6F636573;
  if (*v0 != 2)
  {
    v2 = 0x6675427265707075;
  }

  if (*v0)
  {
    v1 = 0x6675427265776F6CLL;
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

uint64_t sub_24B5C610C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5C6B08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5C6134(uint64_t a1)
{
  v2 = sub_24B5C6894();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C6170(uint64_t a1)
{
  v2 = sub_24B5C6894();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5C61AC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Duration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019B18, &qword_24B605C40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C6894();
  sub_24B5FFF5C();
  v12 = 0;
  v6 = v8;
  sub_24B5FFE3C();
  if (!v6)
  {
    v11 = 1;
    sub_24B5FFE5C();
    v10 = 2;
    sub_24B5FFE5C();
    v9 = 3;
    sub_24B5FFE5C();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t Duration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019B28, &qword_24B605C48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C6894();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20[15] = 0;
  v9 = sub_24B5FFD8C();
  v11 = v10;
  v12 = v9;
  v20[14] = 1;
  sub_24B5FFDAC();
  v14 = v13;
  v20[13] = 2;
  sub_24B5FFDAC();
  v16 = v15;
  v20[12] = 3;
  sub_24B5FFDAC();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Duration.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_24B5FFB1C();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C243EF0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C243EF0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C243EF0](*&v7);
}

uint64_t Duration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  sub_24B5FFEFC();
  Duration.hash(into:)(v4);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C6738()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  sub_24B5FFEFC();
  Duration.hash(into:)(v4);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C6798(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_24B5FFEFC();
  Duration.hash(into:)(v5);
  return sub_24B5FFF3C();
}

BOOL _s16FitnessFiltering8DurationV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 == v7;
  }

  v9 = sub_24B5FFECC();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 == v7;
  }

  return result;
}

unint64_t sub_24B5C6894()
{
  result = qword_27F019B20;
  if (!qword_27F019B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B20);
  }

  return result;
}

unint64_t sub_24B5C68E8()
{
  result = qword_27F019B30;
  if (!qword_27F019B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B30);
  }

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

uint64_t sub_24B5C6950(uint64_t a1, int a2)
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

uint64_t sub_24B5C6998(uint64_t result, int a2, int a3)
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

unint64_t sub_24B5C6A04()
{
  result = qword_27F019B38;
  if (!qword_27F019B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B38);
  }

  return result;
}

unint64_t sub_24B5C6A5C()
{
  result = qword_27F019B40;
  if (!qword_27F019B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B40);
  }

  return result;
}

unint64_t sub_24B5C6AB4()
{
  result = qword_27F019B48;
  if (!qword_27F019B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B48);
  }

  return result;
}

uint64_t sub_24B5C6B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6675427265776F6CLL && a2 == 0xEB00000000726566 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6675427265707075 && a2 == 0xEB00000000726566)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t Theme.iconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Theme.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Theme.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Theme.init(artworks:iconName:identifier:name:sortOrder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_24B5C6D3C()
{
  v1 = *v0;
  v2 = 0x736B726F77747261;
  v3 = 0x696669746E656469;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x6564724F74726F73;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E6E6F6369;
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

uint64_t sub_24B5C6DD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5C7DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5C6E0C(uint64_t a1)
{
  v2 = sub_24B5C7108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C6E48(uint64_t a1)
{
  v2 = sub_24B5C7108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Theme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019B50, &unk_24B605EE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v14[5] = v1[2];
  v14[6] = v8;
  v11 = v1[5];
  v14[3] = v1[4];
  v14[4] = v10;
  v12 = v1[7];
  v14[1] = v1[6];
  v14[2] = v11;
  v14[0] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C7108();

  sub_24B5FFF5C();
  v20 = v9;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5C7530(&qword_27F018710, &qword_27F018718, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B50]);
  sub_24B5FFE8C();

  if (!v2)
  {
    v18 = 1;
    sub_24B5FFE1C();
    v17 = 2;
    sub_24B5FFE3C();
    v16 = 3;
    sub_24B5FFE3C();
    v15 = 4;
    sub_24B5FFE6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B5C7108()
{
  result = qword_27F019B58;
  if (!qword_27F019B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B58);
  }

  return result;
}

uint64_t Theme.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019B60, &qword_24B605EF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C7108();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v29) = 0;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v9 = v33[0];
  LOBYTE(v33[0]) = 1;
  v10 = sub_24B5FFD6C();
  v28 = v11;
  v25 = v10;
  LOBYTE(v33[0]) = 2;
  v24 = sub_24B5FFD8C();
  v27 = v12;
  LOBYTE(v33[0]) = 3;
  v23 = sub_24B5FFD8C();
  v26 = v13;
  v34 = 4;
  v14 = sub_24B5FFDBC();
  (*(v6 + 8))(v8, v5);
  v15 = v25;
  *&v29 = v9;
  *(&v29 + 1) = v25;
  v17 = v27;
  v16 = v28;
  *&v30 = v28;
  *(&v30 + 1) = v24;
  *&v31 = v27;
  *(&v31 + 1) = v23;
  v18 = v26;
  *&v32 = v26;
  *(&v32 + 1) = v14;
  v19 = v30;
  *a2 = v29;
  a2[1] = v19;
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  sub_24B5A1888(&v29, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v9;
  v33[1] = v15;
  v33[2] = v16;
  v33[3] = v24;
  v33[4] = v17;
  v33[5] = v23;
  v33[6] = v18;
  v33[7] = v14;
  return sub_24B5C75FC(v33);
}

uint64_t sub_24B5C7530(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018708, &qword_24B6073B0);
    sub_24B5C75B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B5C75B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Artwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Theme.hash(into:)(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[7];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return MEMORY[0x24C243ED0](v3);
}

uint64_t Theme.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[7];
  sub_24B5FFEFC();
  sub_24B57926C(v5, v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v3);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C77E4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[7];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return MEMORY[0x24C243ED0](v3);
}

uint64_t sub_24B5C7894(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[7];
  sub_24B5FFEFC();
  sub_24B57926C(v6, v2);
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v4);
  return sub_24B5FFF3C();
}

BOOL _s16FitnessFiltering5ThemeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v14 = a1[7];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v13 = a2[7];
  if ((sub_24B584F70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_24B5FFECC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v10 || (sub_24B5FFECC()) && (v15 == v9 && v16 == v11 || (sub_24B5FFECC()))
  {
    return v14 == v13;
  }

  return 0;
}

unint64_t sub_24B5C7A80()
{
  result = qword_27F019B68;
  if (!qword_27F019B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B68);
  }

  return result;
}

uint64_t sub_24B5C7AD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24B5C7B1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Theme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Theme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B5C7CD0()
{
  result = qword_27F019B70;
  if (!qword_27F019B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B70);
  }

  return result;
}

unint64_t sub_24B5C7D28()
{
  result = qword_27F019B78;
  if (!qword_27F019B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B78);
  }

  return result;
}

unint64_t sub_24B5C7D80()
{
  result = qword_27F019B80;
  if (!qword_27F019B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B80);
  }

  return result;
}

uint64_t sub_24B5C7DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

id sub_24B5C7FF8()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F02AD70 = result;
  return result;
}

uint64_t FilterConfiguration.skillLevelTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FilterConfiguration.skillLevelWildcardTitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall FilterConfiguration.init(activityType:orderedSkillLevels:skillLevelTitle:skillLevelTranslations:skillLevelWildcardTitle:)(FitnessFiltering::FilterConfiguration *__return_ptr retstr, Swift::UInt activityType, Swift::OpaquePointer orderedSkillLevels, Swift::String_optional skillLevelTitle, Swift::OpaquePointer skillLevelTranslations, Swift::String_optional skillLevelWildcardTitle)
{
  retstr->activityType = activityType;
  retstr->orderedSkillLevels = orderedSkillLevels;
  retstr->skillLevelTitle = skillLevelTitle;
  retstr->skillLevelWildcardTitle = skillLevelWildcardTitle;
  retstr->skillLevelTranslations = skillLevelTranslations;
}

unint64_t sub_24B5C80DC()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x76654C6C6C696B73;
  v4 = 0xD000000000000017;
  if (v1 == 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_24B5C819C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5C9280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5C81C4(uint64_t a1)
{
  v2 = sub_24B5C84E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C8200(uint64_t a1)
{
  v2 = sub_24B5C84E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019B88, &qword_24B6061F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v10 = v1[5];
  v14 = v1[4];
  v15 = v9;
  v13[1] = v1[6];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C84E8();
  sub_24B5FFF5C();
  LOBYTE(v19) = 0;
  sub_24B5FFE7C();
  if (!v2)
  {
    v11 = v14;
    v19 = v17;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019B98, &qword_24B6061F8);
    sub_24B5C88EC(&qword_27F019BA0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24B5FFE8C();
    LOBYTE(v19) = 2;
    sub_24B5FFE1C();
    v19 = v11;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019BA8, &qword_24B606200);
    sub_24B5C8958(&qword_27F019BB0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24B5FFE8C();
    LOBYTE(v19) = 4;
    sub_24B5FFE1C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B5C84E8()
{
  result = qword_27F019B90;
  if (!qword_27F019B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019B90);
  }

  return result;
}

uint64_t FilterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019BB8, &qword_24B606208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C84E8();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24) = 0;
  v9 = sub_24B5FFDCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019B98, &qword_24B6061F8);
  v23 = 1;
  sub_24B5C88EC(&qword_27F019BC0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24B5FFDDC();
  v22 = v24;
  LOBYTE(v24) = 2;
  v20 = sub_24B5FFD6C();
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019BA8, &qword_24B606200);
  v23 = 3;
  sub_24B5C8958(&qword_27F019BC8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_24B5FFDDC();
  v19 = v24;
  LOBYTE(v24) = 4;
  v11 = sub_24B5FFD6C();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  v14 = v22;
  *a2 = v9;
  a2[1] = v14;
  v16 = v19;
  a2[2] = v20;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v11;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B5C88EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019B98, &qword_24B6061F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B5C8958(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019BA8, &qword_24B606200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B5C89F8(uint64_t result, uint64_t a2)
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

    v20 = sub_24B5EA2D0(v15, v16);
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
      v25 = sub_24B5FFECC();

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

uint64_t FilterConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[6];
  MEMORY[0x24C243ED0](*v1);
  MEMORY[0x24C243ED0](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v3 + 40;
    do
    {

      sub_24B5FFB1C();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5C8DF8(a1, v5);
  if (!v6)
  {
    return sub_24B5FFF1C();
  }

  sub_24B5FFF1C();

  return sub_24B5FFB1C();
}

uint64_t FilterConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  v7 = *(v0 + 40);
  sub_24B5FFEFC();
  FilterConfiguration.hash(into:)(v4);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C8D2C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  v7 = *(v0 + 40);
  sub_24B5FFEFC();
  FilterConfiguration.hash(into:)(v4);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C8D94(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  v8 = *(v1 + 40);
  sub_24B5FFEFC();
  FilterConfiguration.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5C8DF8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C243ED0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_24B5FFB1C();

        sub_24B5FFB1C();

        result = sub_24B5FFF3C();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16FitnessFiltering19FilterConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v7 = a2[3];
  v6 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  v10 = a2[2];
  v11 = a1[2];
  if ((sub_24B5D372C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v11 != v10 || v3 != v7) && (sub_24B5FFECC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (sub_24B5C89F8(v2, v6))
  {
    if (v5)
    {
      if (v8 && (v4 == v9 && v5 == v8 || (sub_24B5FFECC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_24B5C9070()
{
  result = qword_27F019BD0;
  if (!qword_27F019BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019BD0);
  }

  return result;
}

uint64_t sub_24B5C90C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24B5C910C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B5C917C()
{
  result = qword_27F019BD8;
  if (!qword_27F019BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019BD8);
  }

  return result;
}

unint64_t sub_24B5C91D4()
{
  result = qword_27F019BE0;
  if (!qword_27F019BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019BE0);
  }

  return result;
}

unint64_t sub_24B5C922C()
{
  result = qword_27F019BE8;
  if (!qword_27F019BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019BE8);
  }

  return result;
}

uint64_t sub_24B5C9280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60AB20 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEF656C7469546C65 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B60AB40 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B60AB60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t ArtworkVariant.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1954047348;
    v6 = 0x6469576172746C75;
    if (a1 != 8)
    {
      v6 = 1701079415;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74726F6873;
    if (a1 != 5)
    {
      v7 = 1819042164;
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
    v1 = 0x72656E6E6162;
    v2 = 2019912806;
    v3 = 0x657263536C6C7566;
    if (a1 != 3)
    {
      v3 = 0x72616C75676572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7265746E6563;
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

uint64_t sub_24B5C9568(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ArtworkVariant.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ArtworkVariant.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B5FFECC();
  }

  return v8 & 1;
}

unint64_t sub_24B5C95F0@<X0>(Swift::String *a1@<X0>, FitnessFiltering::ArtworkVariant_optional *a2@<X8>)
{
  result = _s16FitnessFiltering14ArtworkVariantO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_24B5C9620@<X0>(uint64_t *a1@<X8>)
{
  result = ArtworkVariant.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B5C970C()
{
  v1 = *v0;
  sub_24B5FFEFC();
  ArtworkVariant.rawValue.getter(v1);
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

uint64_t sub_24B5C9770(uint64_t a1)
{
  ArtworkVariant.rawValue.getter(*v1);
  sub_24B5FFB1C();
}

uint64_t sub_24B5C97C4(uint64_t a1)
{
  v2 = *v1;
  sub_24B5FFEFC();
  ArtworkVariant.rawValue.getter(v2);
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

unint64_t _s16FitnessFiltering14ArtworkVariantO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B5FFD3C();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B5C9874()
{
  result = qword_27F019BF0;
  if (!qword_27F019BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019BF8, &qword_24B6064B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019BF0);
  }

  return result;
}

unint64_t sub_24B5C98DC()
{
  result = qword_27F019C00;
  if (!qword_27F019C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkVariant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B5C9A80()
{
  result = qword_27F019C08;
  if (!qword_27F019C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C08);
  }

  return result;
}

uint64_t MusicGenre.iconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MusicGenre.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MusicGenre.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MusicGenre.init(artworks:iconName:identifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_24B5C9B80(uint64_t a1)
{
  v2 = sub_24B5C9E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5C9BBC(uint64_t a1)
{
  v2 = sub_24B5C9E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicGenre.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019C10, "^q");
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v13[5] = v1[2];
  v13[6] = v8;
  v11 = v1[5];
  v13[3] = v1[4];
  v13[4] = v10;
  v13[1] = v1[6];
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C9E50();

  sub_24B5FFF5C();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5C7530(&qword_27F018710, &qword_27F018718, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B50]);
  sub_24B5FFE8C();

  if (!v2)
  {
    v16 = 1;
    sub_24B5FFE1C();
    v15 = 2;
    sub_24B5FFE3C();
    v14 = 3;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B5C9E50()
{
  result = qword_27F019C18;
  if (!qword_27F019C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C18);
  }

  return result;
}

uint64_t MusicGenre.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019C20, &qword_24B6065B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5C9E50();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  v29 = 0;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v9 = v30;
  v28 = 1;
  v10 = sub_24B5FFD6C();
  v25 = v11;
  v23 = v10;
  v27 = 2;
  v22 = sub_24B5FFD8C();
  v24 = v12;
  v26 = 3;
  v13 = sub_24B5FFD8C();
  v16 = v15;
  v17 = v13;
  (*(v6 + 8))(v8, v5);
  v18 = v22;
  v19 = v23;
  *a2 = v9;
  a2[1] = v19;
  v20 = v24;
  a2[2] = v25;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v17;
  a2[6] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicGenre.hash(into:)(__int128 *a1)
{
  v2 = v1[2];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t MusicGenre.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_24B5FFEFC();
  sub_24B57926C(v4, v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

unint64_t sub_24B5CA388()
{
  result = qword_27F019C28;
  if (!qword_27F019C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C28);
  }

  return result;
}

unint64_t sub_24B5CA400()
{
  result = qword_27F019C30;
  if (!qword_27F019C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C30);
  }

  return result;
}

unint64_t sub_24B5CA458()
{
  result = qword_27F019C38;
  if (!qword_27F019C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C38);
  }

  return result;
}

unint64_t sub_24B5CA4B0()
{
  result = qword_27F019C40;
  if (!qword_27F019C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C40);
  }

  return result;
}

uint64_t sub_24B5CA50C()
{
  sub_24B5FF28C();
  sub_24B5CD35C(&qword_27F019CF8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  return sub_24B5FFF8C();
}

uint64_t FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)@<X0>(void (*a1)(void)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = a10;
  v22[0] = a6;
  v22[1] = a7;
  v22[2] = a8;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v19 = type metadata accessor for FilterStandardSectionView(0, v22);
  a1();

  *(a9 + *(v19 + 100)) = a3;
  v21 = (a9 + *(v19 + 96));
  *v21 = a4;
  v21[1] = a5;
  return result;
}

unint64_t FilterStandardSectionView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v41 = a1[2];
  v53 = v41;
  v54 = v4;
  v43 = v4;
  v44 = v8;
  v46 = v6;
  v47 = v5;
  v55 = v5;
  v56 = v6;
  v45 = v7;
  v57 = v7;
  v58 = v8;
  type metadata accessor for Option(255, &v53);
  swift_getTupleTypeMetadata2();
  v9 = sub_24B5FFBBC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C48, &qword_24B606870);
  WitnessTable = swift_getWitnessTable();
  v53 = v9;
  v54 = MEMORY[0x277D837D0];
  v55 = v10;
  v56 = WitnessTable;
  v57 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v52 = sub_24B5CABE0();
  swift_getWitnessTable();
  sub_24B5FF93C();
  sub_24B5FEFEC();
  v42 = v3;
  swift_getTupleTypeMetadata2();
  v38[2] = sub_24B5FF94C();
  v38[1] = swift_getWitnessTable();
  v12 = sub_24B5FF87C();
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  v15 = sub_24B5FEFEC();
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - v16;
  v18 = sub_24B5FF8DC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_24B5FF8EC();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24B5FFBAC();
  v26 = ceil(vcvtd_n_f64_s64(result, 1uLL));
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v26 < 9.22337204e18)
  {
    v27 = v26;
    *v21 = xmmword_24B606860;
    (*(v19 + 104))(v21, *MEMORY[0x277CDF108], v18);
    sub_24B5FF8FC();
    v28 = sub_24B57D87C(v24, v27);
    v29 = sub_24B5FF1DC();
    MEMORY[0x28223BE20](v29);
    v30 = v42;
    v38[-12] = v41;
    v38[-11] = v30;
    v31 = a1[5];
    v38[-10] = v43;
    v38[-9] = v31;
    v32 = v46;
    v38[-8] = v47;
    v38[-7] = v32;
    v33 = v44;
    v38[-6] = v45;
    v38[-5] = v33;
    v34 = v49;
    v38[-4] = a1[10];
    v38[-3] = v34;
    v38[-2] = v28;
    sub_24B5FF86C();

    v35 = swift_getWitnessTable();
    sub_24B5FF75C();
    (*(v39 + 8))(v14, v12);
    v36 = sub_24B5FF3EC();
    v50 = v35;
    v51 = MEMORY[0x277CDFC48];
    v37 = swift_getWitnessTable();
    sub_24B57FC54(v36, 0x4034000000000000, 0, v15, v37);
    return (*(v40 + 8))(v17, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_24B5CABE0()
{
  result = qword_27F019C50;
  if (!qword_27F019C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C48, &qword_24B606870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C58, &qword_24B606878);
    sub_24B5CACD8();
    swift_getOpaqueTypeConformance2();
    sub_24B5CD35C(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C50);
  }

  return result;
}

unint64_t sub_24B5CACD8()
{
  result = qword_27F019C60;
  if (!qword_27F019C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C58, &qword_24B606878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C68, &unk_24B606880);
    sub_24B58085C(qword_27F019C70, &qword_27F019C68, &unk_24B606880, MEMORY[0x277CDF028]);
    sub_24B57D828();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019C60);
  }

  return result;
}

uint64_t sub_24B5CAE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a8;
  v69 = a2;
  v67 = a1;
  v70 = a9;
  v72 = a12;
  v64 = a11;
  v18 = sub_24B5FF28C();
  MEMORY[0x28223BE20](v18 - 8);
  v68 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a3;
  v87 = a5;
  v52[0] = a3;
  v88 = a7;
  v89 = a8;
  v90 = a10;
  v91 = a11;
  type metadata accessor for Option(255, &v86);
  swift_getTupleTypeMetadata2();
  v20 = sub_24B5FFBBC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C48, &qword_24B606870);
  WitnessTable = swift_getWitnessTable();
  v86 = v20;
  v87 = MEMORY[0x277D837D0];
  v88 = v21;
  v89 = WitnessTable;
  v90 = MEMORY[0x277D837E0];
  v56 = sub_24B5FF8CC();
  v95 = sub_24B5CABE0();
  v55 = swift_getWitnessTable();
  v58 = sub_24B5FF93C();
  v63 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v52 - v23;
  v59 = sub_24B5FEFEC();
  v66 = *(v59 - 8);
  v24 = MEMORY[0x28223BE20](v59);
  v54 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v61 = v52 - v27;
  v28 = a4;
  v62 = *(a4 - 1);
  v29 = MEMORY[0x28223BE20](v26);
  v60 = v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v71 = v52 - v31;
  v86 = a3;
  v87 = a4;
  v53 = a4;
  v88 = a5;
  v89 = a6;
  v32 = a6;
  v33 = a7;
  v34 = v65;
  v90 = a7;
  v91 = v65;
  v92 = a10;
  v35 = v64;
  v36 = v72;
  v93 = v64;
  v94 = v72;
  type metadata accessor for FilterStandardSectionView(0, &v86);
  v37 = v67;
  sub_24B5FC7F0();

  v52[1] = sub_24B5FF12C();
  v73 = v52[0];
  v74 = v28;
  v75 = a5;
  v76 = v32;
  v77 = v33;
  v78 = v34;
  v79 = a10;
  v80 = v35;
  v81 = v36;
  v82 = v37;
  sub_24B5CA50C();
  v38 = v57;
  sub_24B5FF92C();
  v39 = v58;
  v40 = swift_getWitnessTable();
  v41 = v54;
  sub_24B5FF75C();
  (*(v63 + 8))(v38, v39);
  v85[2] = v40;
  v85[3] = MEMORY[0x277CDFC48];
  v42 = v59;
  v43 = swift_getWitnessTable();
  v44 = v61;
  sub_24B5FC7F0();
  v45 = v66;
  v46 = *(v66 + 8);
  v46(v41, v42);
  v47 = v62;
  v48 = v60;
  v49 = v53;
  (*(v62 + 16))(v60, v71, v53);
  v86 = v48;
  (*(v45 + 16))(v41, v44, v42);
  v87 = v41;
  v85[0] = v49;
  v85[1] = v42;
  v83 = v72;
  v84 = v43;
  sub_24B5F7CDC(&v86, 2uLL, v85);
  v46(v44, v42);
  v50 = *(v47 + 8);
  v50(v71, v49);
  v46(v41, v42);
  return (v50)(v48, v49);
}

uint64_t sub_24B5CB56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a5;
  v53 = a9;
  v49 = a1;
  v50 = a3;
  v51 = a11;
  v55 = a2;
  v56 = a3;
  v41 = a2;
  v57 = a4;
  v58 = a5;
  v43 = a4;
  v44 = a10;
  v59 = a6;
  v60 = a7;
  v45 = a6;
  v46 = a7;
  v61 = a8;
  v62 = a10;
  v47 = a8;
  v63 = a11;
  v16 = type metadata accessor for FilterStandardSectionView(0, &v55);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v40 = &v39 - v18;
  v55 = a2;
  v56 = a4;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  v60 = a10;
  v48 = type metadata accessor for Option(255, &v55);
  swift_getTupleTypeMetadata2();
  v19 = sub_24B5FFBBC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C48, &qword_24B606870);
  v42 = v20;
  WitnessTable = swift_getWitnessTable();
  v55 = v19;
  v56 = MEMORY[0x277D837D0];
  v57 = v20;
  v58 = WitnessTable;
  v59 = MEMORY[0x277D837E0];
  v22 = sub_24B5FF8CC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - v27;
  v29 = v40;
  (*(v17 + 16))(v40);
  v30 = (*(v17 + 80) + 88) & ~*(v17 + 80);
  v31 = swift_allocObject();
  v32 = v50;
  *(v31 + 2) = v41;
  *(v31 + 3) = v32;
  v33 = v52;
  *(v31 + 4) = v43;
  *(v31 + 5) = v33;
  v34 = v46;
  *(v31 + 6) = v45;
  *(v31 + 7) = v34;
  v35 = v44;
  *(v31 + 8) = v47;
  *(v31 + 9) = v35;
  *(v31 + 10) = v51;
  (*(v17 + 32))(&v31[v30], v29, v16);
  v36 = sub_24B5CABE0();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF8AC();
  v54 = v36;
  swift_getWitnessTable();
  sub_24B5FC7F0();
  v37 = *(v23 + 8);
  v37(v26, v22);
  sub_24B5FC7F0();
  return (v37)(v28, v22);
}

uint64_t sub_24B5CB97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v120 = a7;
  v95 = a5;
  v115 = a3;
  v116 = a2;
  v117 = a1;
  v110 = a9;
  v112 = a13;
  v111 = sub_24B5FF1BC();
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B5FFA3C();
  v106 = *(v18 - 8);
  v107 = v18;
  MEMORY[0x28223BE20](v18);
  v103 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B5FF9DC();
  MEMORY[0x28223BE20](v20 - 8);
  v102 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B5FF9FC();
  MEMORY[0x28223BE20](v22 - 8);
  v100 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  MEMORY[0x28223BE20](v24 - 8);
  v101 = &v81 - v25;
  v132 = a4;
  v133 = a6;
  v93 = a12;
  v94 = a8;
  v134 = a8;
  v135 = a10;
  v114 = a10;
  v92 = a11;
  v136 = a11;
  v137 = a12;
  v119 = type metadata accessor for Option(0, &v132);
  v91 = *(v119 - 8);
  v26 = *(v91 + 64);
  MEMORY[0x28223BE20](v119);
  v28 = &v81 - v27;
  v89 = &v81 - v27;
  v132 = a4;
  v133 = a5;
  v29 = a6;
  v82 = a6;
  v134 = a6;
  v135 = v120;
  v136 = a8;
  v137 = a10;
  v138 = a11;
  v139 = a12;
  v140 = v112;
  v30 = type metadata accessor for FilterStandardSectionView(0, &v132);
  v87 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v81 - v33;
  v88 = &v81 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019C68, &unk_24B606880);
  v36 = *(v35 - 8);
  v98 = v35;
  v99 = v36;
  MEMORY[0x28223BE20](v35);
  v96 = &v81 - v37;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019C58, &qword_24B606878);
  MEMORY[0x28223BE20](v90);
  v113 = &v81 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019D00, &qword_24B606928);
  v104 = *(v39 - 8);
  v105 = v39;
  MEMORY[0x28223BE20](v39);
  v118 = &v81 - v40;
  v85 = v31;
  (*(v31 + 16))(v34, v115, v30);
  v41 = v91;
  (*(v91 + 16))(v28, v116, v119);
  v42 = (*(v31 + 80) + 88) & ~*(v31 + 80);
  v86 = (v32 + *(v41 + 80) + v42) & ~*(v41 + 80);
  v83 = v42;
  v84 = (v26 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v97 = a4;
  v45 = v94;
  v44 = v95;
  *(v43 + 2) = a4;
  *(v43 + 3) = v44;
  *(v43 + 4) = v29;
  v46 = v120;
  *(v43 + 5) = v120;
  *(v43 + 6) = v45;
  v48 = v92;
  v47 = v93;
  *(v43 + 7) = v114;
  *(v43 + 8) = v48;
  v49 = v112;
  *(v43 + 9) = v47;
  *(v43 + 10) = v49;
  (*(v85 + 32))(&v43[v83], v88, v87);
  (*(v41 + 32))(&v43[v86], v89, v119);
  *&v43[v84] = v117;
  v121 = a4;
  v122 = v44;
  v123 = v82;
  v124 = v46;
  v125 = v45;
  v126 = v114;
  v127 = v48;
  v128 = v47;
  v50 = v116;
  v129 = v49;
  v130 = v116;
  v131 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019D08, &qword_24B606930);
  sub_24B5CD160();
  v51 = v96;
  sub_24B5FF81C();
  sub_24B58085C(qword_27F019C70, &qword_27F019C68, &unk_24B606880, MEMORY[0x277CDF028]);
  sub_24B57D828();
  v52 = v113;
  v53 = v98;
  sub_24B5FF5BC();
  (*(v99 + 8))(v51, v53);
  v54 = v119;
  v55 = *(v119 + 68);
  LOBYTE(v41) = *(v50 + v55) == 0;
  KeyPath = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v41;
  v58 = v90;
  v59 = &v52[*(v90 + 36)];
  *v59 = KeyPath;
  v59[1] = sub_24B58074C;
  v59[2] = v57;
  Option.identifier.getter(v54);
  v60 = v117;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 40) = 0xE400000000000000;
  v62 = (*(v120 + 24))(v97);
  v63 = MEMORY[0x277D837D0];
  *(inited + 48) = v62;
  *(inited + 56) = v64;
  *(inited + 72) = v63;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v63;
  *(inited + 128) = 0x6973736572706D69;
  v65 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v60;
  *(inited + 168) = v65;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v63;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v66 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v66);
  v67 = v101;
  sub_24B5FFA0C();
  v68 = sub_24B5FFA1C();
  v69 = v67;
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v70 = v103;
  sub_24B5FFA2C();
  v71 = sub_24B5CACD8();
  v72 = v113;
  sub_24B5FF55C();
  (*(v106 + 8))(v70, v107);
  sub_24B5808A4(v69);
  sub_24B575AC8(v72);
  if (*(v50 + v55) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v73 = v108;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v132 = v74;
    sub_24B5CD35C(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v75 = v109;
    v76 = v111;
    sub_24B5FFC6C();
    v77 = v73;
  }

  else
  {
    v132 = v66;
    sub_24B5CD35C(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v75 = v109;
    v76 = v111;
    sub_24B5FFC6C();
    v77 = v108;
  }

  v132 = v58;
  v133 = v71;
  swift_getOpaqueTypeConformance2();
  v78 = v105;
  v79 = v118;
  sub_24B5FF68C();
  (*(v77 + 8))(v75, v76);
  return (*(v104 + 8))(v79, v78);
}

uint64_t sub_24B5CC548@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a8;
  v68 = a7;
  v67 = a5;
  v66 = a4;
  v61 = a3;
  v57 = a2;
  v60 = a1;
  v59 = a9;
  v65 = a10;
  v64 = a11;
  v63 = a12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019D20, &qword_24B606938) - 8;
  MEMORY[0x28223BE20](v58);
  v15 = &v57 - v14;
  v62 = a6;
  *&v73 = (*(a6 + 24))(a3, a6);
  *(&v73 + 1) = v16;
  sub_24B58096C();
  v17 = sub_24B5FF53C();
  v19 = v18;
  v21 = v20;
  sub_24B5FF4BC();
  v22 = sub_24B5FF50C();
  v24 = v23;
  v26 = v25;

  sub_24B5809C0(v17, v19, v21 & 1);

  v27 = sub_24B5FF4FC();
  v29 = v28;
  LOBYTE(v19) = v30;
  sub_24B5809C0(v22, v24, v26 & 1);

  *&v73 = sub_24B5809D0(v60, v61, v66, v67, v62, v68, v69, v65, v64);
  v31 = sub_24B5FF4DC();
  v33 = v32;
  LOBYTE(v22) = v34;
  v36 = v35;
  sub_24B5809C0(v27, v29, v19 & 1);

  sub_24B5FF90C();
  sub_24B5FF03C();
  LOBYTE(v22) = v22 & 1;
  v80 = v22;
  sub_24B5FF90C();
  sub_24B5FEF7C();
  v37 = &v15[*(v58 + 44)];
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_24B5FF18C();
  v40 = *(*(v39 - 8) + 104);
  v40(v37, v38, v39);
  v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018960, &qword_24B600BA0) + 36)] = 0;
  *v15 = v31;
  *(v15 + 1) = v33;
  v15[16] = v22;
  *(v15 + 3) = v36;
  v41 = v78;
  *(v15 + 6) = v77;
  *(v15 + 7) = v41;
  v42 = v79;
  v43 = v74;
  *(v15 + 2) = v73;
  *(v15 + 3) = v43;
  v44 = v76;
  *(v15 + 4) = v75;
  *(v15 + 5) = v44;
  v45 = v70;
  v46 = v71;
  *(v15 + 8) = v42;
  *(v15 + 9) = v45;
  v47 = v72;
  *(v15 + 10) = v46;
  *(v15 + 11) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019D08, &qword_24B606930);
  v49 = v59;
  v50 = v59 + *(v48 + 36);
  v40(v50, v38, v39);
  v51 = sub_24B580754(v60, v61, v66, v67, v62, v68, v69, v65, v64);
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0) + 36)) = v51;
  v52 = sub_24B5FF90C();
  v54 = v53;
  v55 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018870, &qword_24B600AA0) + 36));
  *v55 = v52;
  v55[1] = v54;
  return sub_24B5CD3A4(v15, v49);
}

unint64_t sub_24B5CCA5C(uint64_t a1)
{
  v11 = 0;
  v15 = MEMORY[0x277D85048];
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = result;
    result = sub_24B584750();
    if (v4 <= 0x3F)
    {
      v13 = 0;
      v17 = result;
      v5 = *(a1 + 32);
      v8[0] = *(a1 + 16);
      v8[1] = v5;
      v6 = *(a1 + 64);
      v9 = *(a1 + 48);
      v10 = v6;
      type metadata accessor for Option(255, v8);
      result = sub_24B5FFBBC();
      if (v7 <= 0x3F)
      {
        v14 = 0;
        v18 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B5CCB34(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = *(*(*(a3 + 24) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_24B5CCC94(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
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
  v9 = *(*(*(a4 + 24) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 8] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_24B5CCEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v18[0] = v3[2];
  v4 = v18[0];
  v18[1] = v5;
  v18[2] = v6;
  v18[3] = v7;
  v18[4] = v8;
  v18[5] = v9;
  v18[6] = v10;
  v18[7] = v11;
  v18[8] = v12;
  v13 = *(type metadata accessor for FilterStandardSectionView(0, v18) - 8);
  return sub_24B5CB97C(a1, a2, v3 + ((*(v13 + 80) + 88) & ~*(v13 + 80)), v4, v5, v6, v7, v8, a3, v9, v10, v11, v12);
}

uint64_t sub_24B5CCF90()
{
  v2 = *(v0 + 4);
  v17 = *(v0 + 5);
  v18 = *(v0 + 3);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  v16 = *(v0 + 10);
  v19 = *(v0 + 2);
  v1 = v19;
  v20 = v18;
  v21 = v2;
  v22 = v17;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v16;
  v7 = *(type metadata accessor for FilterStandardSectionView(0, &v19) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v19 = v1;
  v20 = v2;
  v10 = (v8 + 88) & ~v8;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v11 = *(type metadata accessor for Option(0, &v19) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *&v0[(*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v1;
  v20 = v18;
  v21 = v2;
  v22 = v17;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v16;
  v14 = type metadata accessor for FilterStandardSectionView(0, &v19);
  return (*&v0[*(v14 + 96) + v10])(&v0[v12], v13);
}

unint64_t sub_24B5CD160()
{
  result = qword_27F019D10;
  if (!qword_27F019D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019D08, &qword_24B606930);
    sub_24B5CD218();
    sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019D10);
  }

  return result;
}

unint64_t sub_24B5CD218()
{
  result = qword_27F019D18;
  if (!qword_27F019D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019D20, &qword_24B606938);
    sub_24B5CD2D0();
    sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019D18);
  }

  return result;
}

unint64_t sub_24B5CD2D0()
{
  result = qword_27F019D28;
  if (!qword_27F019D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019D30, &unk_24B606940);
    sub_24B5B7ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019D28);
  }

  return result;
}

uint64_t sub_24B5CD35C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B5CD3A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019D20, &qword_24B606938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Artwork(uint64_t a1)
{
  result = qword_27F019D90;
  if (!qword_27F019D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Artwork.init(backgroundColor:templateURL:variant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_24B5CD578(a1, a4, &qword_27F018770, &unk_24B6007D0);
  v7 = type metadata accessor for Artwork(0);
  result = sub_24B5CD578(a2, a4 + *(v7 + 24), &qword_27F018768, &unk_24B6080E0);
  *(a4 + *(v7 + 20)) = a3;
  return result;
}

uint64_t sub_24B5CD578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B5CD5E0()
{
  v1 = 0x746E6169726176;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_24B5CD650@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5CF4C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5CD678(uint64_t a1)
{
  v2 = sub_24B5CD99C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CD6B4(uint64_t a1)
{
  v2 = sub_24B5CD99C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Artwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019D38, &qword_24B606980);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5CD99C();
  sub_24B5FFF5C();
  v10[15] = 0;
  sub_24B5FEE8C();
  sub_24B5CF5E8(&qword_27F019D48, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_24B5FFE2C();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for Artwork(0) + 20));
    v10[13] = 1;
    sub_24B5CD9F0();
    sub_24B5FFE8C();
    v10[12] = 2;
    sub_24B5FEDFC();
    sub_24B5CF5E8(&qword_27F019D58, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B5FFE2C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B5CD99C()
{
  result = qword_27F019D40;
  if (!qword_27F019D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019D40);
  }

  return result;
}

unint64_t sub_24B5CD9F0()
{
  result = qword_27F019D50;
  if (!qword_27F019D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019D50);
  }

  return result;
}

uint64_t Artwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  MEMORY[0x28223BE20](v7 - 8);
  v27 = &v23 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019D60, &qword_24B606988);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5CD99C();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v26;
  v15 = v13;
  v24 = v6;
  sub_24B5FEE8C();
  v32 = 0;
  sub_24B5CF5E8(&qword_27F019D68, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v17 = v27;
  v16 = v28;
  sub_24B5FFD7C();
  v18 = v17;
  v19 = v15;
  sub_24B5CD578(v18, v15, &qword_27F018770, &unk_24B6007D0);
  v30 = 1;
  sub_24B5CDE60();
  sub_24B5FFDDC();
  v20 = v11;
  *(v19 + *(v11 + 20)) = v31;
  sub_24B5FEDFC();
  v29 = 2;
  sub_24B5CF5E8(&qword_27F019D78, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v21 = v24;
  sub_24B5FFD7C();
  (*(v14 + 8))(v10, v16);
  sub_24B5CD578(v21, v19 + *(v20 + 24), &qword_27F018768, &unk_24B6080E0);
  sub_24B57BA34(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B57BBAC(v19);
}

unint64_t sub_24B5CDE60()
{
  result = qword_27F019D70;
  if (!qword_27F019D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019D70);
  }

  return result;
}

uint64_t Artwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B5FEDFC();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_24B5FEE8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  sub_24B57BAFC(v2, &v19 - v13, &qword_27F018770, &unk_24B6007D0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_24B5FFF1C();
    sub_24B5CF5E8(&qword_27F018778, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B5FFA4C();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for Artwork(0);
  ArtworkVariant.rawValue.getter(*(v2 + *(v15 + 20)));
  sub_24B5FFB1C();

  sub_24B57BAFC(v2 + *(v15 + 24), v7, &qword_27F018768, &unk_24B6080E0);
  v16 = v20;
  if ((*(v20 + 48))(v7, 1, v3) == 1)
  {
    return sub_24B5FFF1C();
  }

  v18 = v19;
  (*(v16 + 32))(v19, v7, v3);
  sub_24B5FFF1C();
  sub_24B5CF5E8(&qword_27F018780, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B5FFA4C();
  return (*(v16 + 8))(v18, v3);
}

uint64_t Artwork.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B5FEDFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_24B5FEE8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_24B5FFEFC();
  sub_24B57BAFC(v1, v14, &qword_27F018770, &unk_24B6007D0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_24B5FFF1C();
    sub_24B5CF5E8(&qword_27F018778, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B5FFA4C();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for Artwork(0);
  ArtworkVariant.rawValue.getter(*(v1 + *(v15 + 20)));
  sub_24B5FFB1C();

  sub_24B57BAFC(v1 + *(v15 + 24), v7, &qword_27F018768, &unk_24B6080E0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    v16 = v18;
    (*(v3 + 32))(v18, v7, v2);
    sub_24B5FFF1C();
    sub_24B5CF5E8(&qword_27F018780, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B5FFA4C();
    (*(v3 + 8))(v16, v2);
  }

  return sub_24B5FFF3C();
}

uint64_t sub_24B5CE6B4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_24B5FEDFC();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_24B5FEE8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  sub_24B5FFEFC();
  sub_24B57BAFC(v2, v14, &qword_27F018770, &unk_24B6007D0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_24B5FFF1C();
    sub_24B5CF5E8(&qword_27F018778, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B5FFA4C();
    (*(v9 + 8))(v11, v8);
  }

  v15 = v20;
  ArtworkVariant.rawValue.getter(*(v2 + *(v20 + 20)));
  sub_24B5FFB1C();

  sub_24B57BAFC(v2 + *(v15 + 24), v7, &qword_27F018768, &unk_24B6080E0);
  v16 = v21;
  if ((*(v21 + 48))(v7, 1, v3) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    v17 = v19;
    (*(v16 + 32))(v19, v7, v3);
    sub_24B5FFF1C();
    sub_24B5CF5E8(&qword_27F018780, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B5FFA4C();
    (*(v16 + 8))(v17, v3);
  }

  return sub_24B5FFF3C();
}

BOOL _s16FitnessFiltering7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B5FEDFC();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BA0, &unk_24B606BD0);
  MEMORY[0x28223BE20](v52);
  v53 = &v49 - v8;
  v9 = sub_24B5FEE8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BA8, &qword_24B601040);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v20 = *(v17 + 56);
  v56 = a1;
  sub_24B57BAFC(a1, &v49 - v18, &qword_27F018770, &unk_24B6007D0);
  v21 = a2;
  sub_24B57BAFC(a2, &v19[v20], &qword_27F018770, &unk_24B6007D0);
  v22 = *(v10 + 48);
  if (v22(v19, 1, v9) != 1)
  {
    sub_24B57BAFC(v19, v15, &qword_27F018770, &unk_24B6007D0);
    if (v22(&v19[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v19[v20], v9);
      sub_24B5CF5E8(&qword_27F018BB8, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v26 = sub_24B5FFA5C();
      v27 = *(v10 + 8);
      v27(v12, v9);
      v27(v15, v9);
      sub_24B58090C(v19, &qword_27F018770, &unk_24B6007D0);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v23 = &qword_27F018BA8;
    v24 = &qword_24B601040;
    v25 = v19;
LABEL_18:
    sub_24B58090C(v25, v23, v24);
    return 0;
  }

  if (v22(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_24B58090C(v19, &qword_27F018770, &unk_24B6007D0);
LABEL_8:
  v28 = type metadata accessor for Artwork(0);
  v29 = *(v28 + 20);
  v30 = v56;
  v31 = *(a2 + v29);
  v32 = ArtworkVariant.rawValue.getter(*(v56 + v29));
  v34 = v33;
  if (v32 == ArtworkVariant.rawValue.getter(v31) && v34 == v35)
  {
  }

  else
  {
    v36 = sub_24B5FFECC();

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = *(v28 + 24);
  v38 = v53;
  v39 = *(v52 + 48);
  sub_24B57BAFC(v30 + v37, v53, &qword_27F018768, &unk_24B6080E0);
  sub_24B57BAFC(v21 + v37, v38 + v39, &qword_27F018768, &unk_24B6080E0);
  v41 = v54;
  v40 = v55;
  v42 = *(v54 + 48);
  if (v42(v38, 1, v55) == 1)
  {
    if (v42(v38 + v39, 1, v40) == 1)
    {
      sub_24B58090C(v38, &qword_27F018768, &unk_24B6080E0);
      return 1;
    }

    goto LABEL_17;
  }

  v43 = v51;
  sub_24B57BAFC(v38, v51, &qword_27F018768, &unk_24B6080E0);
  if (v42(v38 + v39, 1, v40) == 1)
  {
    (*(v41 + 8))(v43, v40);
LABEL_17:
    v23 = &qword_27F018BA0;
    v24 = &unk_24B606BD0;
    v25 = v38;
    goto LABEL_18;
  }

  v45 = v38 + v39;
  v46 = v50;
  (*(v41 + 32))(v50, v45, v40);
  sub_24B5CF5E8(&qword_27F018BB0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v47 = sub_24B5FFA5C();
  v48 = *(v41 + 8);
  v48(v46, v40);
  v48(v43, v40);
  sub_24B58090C(v38, &qword_27F018768, &unk_24B6080E0);
  return (v47 & 1) != 0;
}

void sub_24B5CF294(uint64_t a1)
{
  sub_24B5CF358(319, &qword_27F019DA0, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_24B5CF358(319, &qword_27F019DA8, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B5CF358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B5FFC3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24B5CF3C0()
{
  result = qword_27F019DB0;
  if (!qword_27F019DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019DB0);
  }

  return result;
}

unint64_t sub_24B5CF418()
{
  result = qword_27F019DB8;
  if (!qword_27F019DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019DB8);
  }

  return result;
}

unint64_t sub_24B5CF470()
{
  result = qword_27F019DC0;
  if (!qword_27F019DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019DC0);
  }

  return result;
}

uint64_t sub_24B5CF4C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5CF5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FilterEnvironment.attributedTitleProvider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FilterEnvironment.dismiss.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FilterEnvironment.existingFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 56);
  return sub_24B5A0F9C(v2, v3, v4);
}

uint64_t FilterEnvironment.filterCatalog.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FilterEnvironment.filterConfigurationProvider.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t FilterEnvironment.makeArchivedSessionsUpdatedStream.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t FilterEnvironment.queryInitialFilter.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t FilterEnvironment.queryFilterOptions.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t FilterEnvironment.refreshCanvas.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t FilterEnvironment.reloadWorkouts.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

__n128 FilterEnvironment.init(attributedTitleProvider:existingFilter:dismiss:filterCatalog:filterConfigurationProvider:makeArchivedSessionsUpdatedStream:queryInitialFilter:queryFilterOptions:refreshCanvas:reloadWorkouts:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15)
{
  result = a14;
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = *a3;
  *(a9 + 48) = v16;
  *(a9 + 56) = v17;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 104) = a11;
  *(a9 + 120) = a12;
  *(a9 + 136) = a13;
  *(a9 + 152) = a14;
  *(a9 + 168) = a15;
  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_24B5CF884(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_24B5CF8CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B5CF958()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_24B5CFA0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5D069C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5CFA34(uint64_t a1)
{
  v2 = sub_24B5D0370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CFA70(uint64_t a1)
{
  v2 = sub_24B5D0370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5CFAAC(uint64_t a1)
{
  v2 = sub_24B5D03C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CFAE8(uint64_t a1)
{
  v2 = sub_24B5D03C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5CFB24(uint64_t a1)
{
  v2 = sub_24B5D0568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CFB60(uint64_t a1)
{
  v2 = sub_24B5D0568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5CFB9C(uint64_t a1)
{
  v2 = sub_24B5D0418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CFBD8(uint64_t a1)
{
  v2 = sub_24B5D0418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5CFC14(uint64_t a1)
{
  v2 = sub_24B5D046C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CFC50(uint64_t a1)
{
  v2 = sub_24B5D046C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5CFC8C(uint64_t a1)
{
  v2 = sub_24B5D04C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CFCC8(uint64_t a1)
{
  v2 = sub_24B5D04C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5CFD04(uint64_t a1)
{
  v2 = sub_24B5D0514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5CFD40(uint64_t a1)
{
  v2 = sub_24B5D0514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterSizeClass.encode(to:)(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019DC8, &qword_24B606CA0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019DD0, &qword_24B606CA8);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019DD8, &qword_24B606CB0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019DE0, &qword_24B606CB8);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019DE8, &qword_24B606CC0);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019DF0, &qword_24B606CC8);
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019DF8, &qword_24B606CD0);
  v18 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D0370();
  sub_24B5FFF5C();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_24B5D046C();
      v24 = v34;
      v25 = v43;
      sub_24B5FFE0C();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_24B5D0418();
      v24 = v37;
      v25 = v43;
      sub_24B5FFE0C();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_24B5D03C4();
      v24 = v40;
      v25 = v43;
      sub_24B5FFE0C();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_24B5D0514();
      v22 = v43;
      sub_24B5FFE0C();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_24B5D04C0();
    v25 = v43;
    sub_24B5FFE0C();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_24B5D0568();
    v25 = v43;
    sub_24B5FFE0C();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

unint64_t sub_24B5D0370()
{
  result = qword_27F019E00;
  if (!qword_27F019E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E00);
  }

  return result;
}

unint64_t sub_24B5D03C4()
{
  result = qword_27F019E08;
  if (!qword_27F019E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E08);
  }

  return result;
}

unint64_t sub_24B5D0418()
{
  result = qword_27F019E10;
  if (!qword_27F019E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E10);
  }

  return result;
}

unint64_t sub_24B5D046C()
{
  result = qword_27F019E18;
  if (!qword_27F019E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E18);
  }

  return result;
}

unint64_t sub_24B5D04C0()
{
  result = qword_27F019E20;
  if (!qword_27F019E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E20);
  }

  return result;
}

unint64_t sub_24B5D0514()
{
  result = qword_27F019E28;
  if (!qword_27F019E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E28);
  }

  return result;
}

unint64_t sub_24B5D0568()
{
  result = qword_27F019E30;
  if (!qword_27F019E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E30);
  }

  return result;
}

uint64_t sub_24B5D05D4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B5D089C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FilterSizeClass.hashValue.getter(unsigned __int8 a1)
{
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](a1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D069C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B5FFECC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B5D089C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019EB8, &qword_24B607360);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019EC0, &qword_24B607368);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x28223BE20](v4);
  v55 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019EC8, &qword_24B607370);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019ED0, &qword_24B607378);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019ED8, &qword_24B607380);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019EE0, &qword_24B607388);
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019EE8, &unk_24B607390);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B5D0370();
  v21 = v56;
  sub_24B5FFF4C();
  if (!v21)
  {
    v22 = v15;
    v39 = v13;
    v40 = v12;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v56 = v17;
    v26 = sub_24B5FFDEC();
    v27 = (2 * *(v26 + 16)) | 1;
    v58 = v26;
    v59 = v26 + 32;
    v60 = 0;
    v61 = v27;
    v28 = sub_24B5A6B88();
    v29 = v19;
    if (v28 != 6 && v60 == v61 >> 1)
    {
      v17 = v28;
      if (v28 > 2u)
      {
        if (v28 != 3)
        {
          v37 = v56;
          if (v28 == 4)
          {
            v62 = 4;
            sub_24B5D0418();
            sub_24B5FFD4C();
            (*(v49 + 8))(v25, v48);
          }

          else
          {
            v62 = 5;
            sub_24B5D03C4();
            v38 = v52;
            sub_24B5FFD4C();
            (*(v50 + 8))(v38, v51);
          }

          (*(v37 + 8))(v29, v16);
          goto LABEL_21;
        }

        v62 = 3;
        sub_24B5D046C();
        sub_24B5FFD4C();
        v30 = v56;
        (*(v47 + 8))(v24, v44);
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v62 = 1;
          sub_24B5D0514();
          v23 = v40;
          sub_24B5FFD4C();
          v30 = v56;
          v32 = v42;
          v31 = v43;
        }

        else
        {
          v62 = 2;
          sub_24B5D04C0();
          sub_24B5FFD4C();
          v30 = v56;
          v32 = v45;
          v31 = v46;
        }

        (*(v32 + 8))(v23, v31);
      }

      else
      {
        v62 = 0;
        sub_24B5D0568();
        sub_24B5FFD4C();
        (*(v41 + 8))(v22, v39);
        v30 = v56;
      }

      (*(v30 + 8))(v19, v16);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v57);
      return v17;
    }

    v33 = sub_24B5FFCFC();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460);
    *v35 = &type metadata for FilterSizeClass;
    sub_24B5FFD5C();
    sub_24B5FFCEC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v56 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v17;
}

unint64_t sub_24B5D1084()
{
  result = qword_27F019E38;
  if (!qword_27F019E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E38);
  }

  return result;
}

unint64_t sub_24B5D115C()
{
  result = qword_27F019E40;
  if (!qword_27F019E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E40);
  }

  return result;
}

unint64_t sub_24B5D11B4()
{
  result = qword_27F019E48;
  if (!qword_27F019E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E48);
  }

  return result;
}

unint64_t sub_24B5D120C()
{
  result = qword_27F019E50;
  if (!qword_27F019E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E50);
  }

  return result;
}

unint64_t sub_24B5D1264()
{
  result = qword_27F019E58;
  if (!qword_27F019E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E58);
  }

  return result;
}

unint64_t sub_24B5D12BC()
{
  result = qword_27F019E60;
  if (!qword_27F019E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E60);
  }

  return result;
}

unint64_t sub_24B5D1314()
{
  result = qword_27F019E68;
  if (!qword_27F019E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E68);
  }

  return result;
}

unint64_t sub_24B5D136C()
{
  result = qword_27F019E70;
  if (!qword_27F019E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E70);
  }

  return result;
}

unint64_t sub_24B5D13C4()
{
  result = qword_27F019E78;
  if (!qword_27F019E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E78);
  }

  return result;
}

unint64_t sub_24B5D141C()
{
  result = qword_27F019E80;
  if (!qword_27F019E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E80);
  }

  return result;
}

unint64_t sub_24B5D1474()
{
  result = qword_27F019E88;
  if (!qword_27F019E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E88);
  }

  return result;
}

unint64_t sub_24B5D14CC()
{
  result = qword_27F019E90;
  if (!qword_27F019E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E90);
  }

  return result;
}

unint64_t sub_24B5D1524()
{
  result = qword_27F019E98;
  if (!qword_27F019E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019E98);
  }

  return result;
}

unint64_t sub_24B5D157C()
{
  result = qword_27F019EA0;
  if (!qword_27F019EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019EA0);
  }

  return result;
}

unint64_t sub_24B5D15D4()
{
  result = qword_27F019EA8;
  if (!qword_27F019EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019EA8);
  }

  return result;
}

unint64_t sub_24B5D162C()
{
  result = qword_27F019EB0;
  if (!qword_27F019EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019EB0);
  }

  return result;
}

uint64_t Modality.iconName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Modality.identifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Modality.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Modality.init(activityTypes:artworks:iconName:identifier:name:supportedFilterKinds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t sub_24B5D1750()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x696669746E656469;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736B726F77747261;
  if (v1 != 1)
  {
    v5 = 0x656D614E6E6F6369;
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

uint64_t sub_24B5D1818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5D2958(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5D1840(uint64_t a1)
{
  v2 = sub_24B5D1C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5D187C(uint64_t a1)
{
  v2 = sub_24B5D1C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5D18B8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t Modality.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019EF0, &qword_24B6073A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v11 = v1[5];
  v19 = v1[4];
  v20 = v10;
  v12 = v1[6];
  v17 = v1[7];
  v18 = v11;
  v15 = v1[8];
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D1C30();

  sub_24B5FFF5C();
  v24 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F00, &qword_24B6073A8);
  sub_24B5D226C(&qword_27F019F08, MEMORY[0x277D83E90], MEMORY[0x277D83948]);
  sub_24B5FFE8C();
  if (v2)
  {
  }

  else
  {

    v24 = v22;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
    sub_24B5C7530(&qword_27F018710, &qword_27F018718, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B50]);
    sub_24B5FFE8C();
    LOBYTE(v24) = 2;
    sub_24B5FFE1C();
    LOBYTE(v24) = 3;
    sub_24B5FFE3C();
    LOBYTE(v24) = 4;
    sub_24B5FFE3C();
    v24 = v15;
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F10, &qword_24B6073B8);
    sub_24B5D1C84(&qword_27F019F18, sub_24B5D1CFC, MEMORY[0x277D83B50]);
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B5D1C30()
{
  result = qword_27F019EF8;
  if (!qword_27F019EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019EF8);
  }

  return result;
}

uint64_t sub_24B5D1C84(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019F10, &qword_24B6073B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5D1CFC()
{
  result = qword_27F019F20;
  if (!qword_27F019F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F20);
  }

  return result;
}

uint64_t Modality.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F28, &qword_24B6073C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D1C30();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F00, &qword_24B6073A8);
  LOBYTE(v30) = 0;
  sub_24B5D226C(&qword_27F019F30, MEMORY[0x277D83EB0], MEMORY[0x277D83978]);
  sub_24B5FFDDC();
  v9 = v35[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v30) = 1;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v29 = v35[0];
  LOBYTE(v35[0]) = 2;
  v10 = sub_24B5FFD6C();
  v28 = v11;
  v25 = v10;
  LOBYTE(v35[0]) = 3;
  v24 = sub_24B5FFD8C();
  v27 = v12;
  LOBYTE(v35[0]) = 4;
  v23 = sub_24B5FFD8C();
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F10, &qword_24B6073B8);
  v36[0] = 5;
  sub_24B5D1C84(&qword_27F019F38, sub_24B5D22D8, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  (*(v6 + 8))(v8, v5);
  v14 = v37;
  v15 = v28;
  v16 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  *&v31 = v25;
  *(&v31 + 1) = v28;
  v17 = v27;
  *&v32 = v24;
  *(&v32 + 1) = v27;
  v18 = v26;
  *&v33 = v23;
  *(&v33 + 1) = v26;
  v34 = v37;
  *(a2 + 64) = v37;
  v19 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v19;
  v20 = v31;
  *a2 = v30;
  *(a2 + 16) = v20;
  sub_24B5A0A70(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v9;
  v35[1] = v16;
  v35[2] = v25;
  v35[3] = v15;
  v35[4] = v24;
  v35[5] = v17;
  v35[6] = v23;
  v35[7] = v18;
  v35[8] = v14;
  return sub_24B5A16A8(v35);
}

uint64_t sub_24B5D226C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019F00, &qword_24B6073A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5D22D8()
{
  result = qword_27F019F40;
  if (!qword_27F019F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F40);
  }

  return result;
}

uint64_t sub_24B5D2360(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t sub_24B5D2390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B5D23D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B5D242C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t Modality.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v7 = v2[8];
  MEMORY[0x24C243ED0](*(*v2 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 32);
    do
    {
      v10 = *v9++;
      MEMORY[0x24C243ED0](v10);
      --v8;
    }

    while (v8);
  }

  sub_24B57926C(a1, v5);
  sub_24B5FFF1C();
  if (v6)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();

  return sub_24B5799FC(a1, v7);
}

uint64_t Modality.hashValue.getter()
{
  sub_24B5FFEFC();
  Modality.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D2588()
{
  sub_24B5FFEFC();
  Modality.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D25CC(uint64_t a1)
{
  sub_24B5FFEFC();
  Modality.hash(into:)(v2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D2610()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24B5D2640()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t _s16FitnessFiltering8ModalityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v18 = a1[6];
  v14 = a1[8];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v16 = a1[7];
  v17 = a2[6];
  v15 = a2[7];
  v13 = a2[8];
  if ((sub_24B5D2B74(*a1, *a2) & 1) == 0 || (sub_24B584F70(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v9 || (v4 != v8 || v3 != v9) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((v5 != v10 || v6 != v11) && (sub_24B5FFECC() & 1) == 0 || (v18 != v17 || v16 != v15) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B58600C(v14, v13);
}

unint64_t sub_24B5D27DC()
{
  result = qword_27F019F48;
  if (!qword_27F019F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F48);
  }

  return result;
}

unint64_t sub_24B5D2854()
{
  result = qword_27F019F50;
  if (!qword_27F019F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F50);
  }

  return result;
}

unint64_t sub_24B5D28AC()
{
  result = qword_27F019F58;
  if (!qword_27F019F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F58);
  }

  return result;
}

unint64_t sub_24B5D2904()
{
  result = qword_27F019F60;
  if (!qword_27F019F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F60);
  }

  return result;
}

uint64_t sub_24B5D2958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED00007365707954;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B726F77747261 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60AB80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5D2B74(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5D2BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v10 = *(a1 + v5 + 48);
      v9 = *(a1 + v5 + 56);
      v11 = *(a1 + v5 + 64);
      v12 = *(a1 + v5 + 72);
      v14 = *(a2 + v5 + 48);
      v13 = *(a2 + v5 + 56);
      v15 = *(a2 + v5 + 64);
      v16 = *(a2 + v5 + 72);
      if (*(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40))
      {
        if (v10 != v14 || v9 != v13 || v11 != v15 || v12 != v16)
        {
          return 0;
        }
      }

      else
      {
        v18 = sub_24B5FFECC();
        result = 0;
        if ((v18 & 1) == 0)
        {
          return result;
        }

        v20 = v10 == v14 && v9 == v13;
        v21 = v20 && v11 == v15;
        if (!v21 || v12 != v16)
        {
          return result;
        }
      }

      v5 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24B5D2CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    v5 = (a1 + 32);
    v6 = (a2 + 32);
    for (i = v4 - 1; ; --i)
    {
      v7 = v5[1];
      v31 = *v5;
      v32 = v7;
      *v33 = v5[2];
      v19 = v6;
      v20 = v5;
      *&v33[9] = *(v5 + 41);
      v8 = v6[1];
      v34[0] = *v6;
      v34[1] = v8;
      *v35 = v6[2];
      *&v35[9] = *(v6 + 41);
      v9 = *(&v31 + 1);
      v10 = v32;
      v11 = *&v33[8];
      v24 = *&v33[16];
      v25 = v31;
      v12 = *(&v34[0] + 1);
      v22 = *&v34[0];
      v23 = *(&v32 + 1);
      v13 = v8;
      v14 = *&v35[8];
      v26 = *v35;
      v27 = *v33;
      v15 = *&v35[16];
      sub_24B57BAFC(&v31, v30, a3, a4);
      sub_24B57BAFC(v34, v30, a3, a4);
      if ((sub_24B584F70(v25, v22) & 1) == 0)
      {
        break;
      }

      if (v10)
      {
        if (!v13 || (v9 != v12 || v10 != v13) && (sub_24B5FFECC() & 1) == 0)
        {
          break;
        }
      }

      else if (v13)
      {
        break;
      }

      if ((v23 != *(&v13 + 1) || v27 != v26) && (sub_24B5FFECC() & 1) == 0 || (v11 != v14 || v24 != v15) && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v16 = v33[24];
      v17 = v35[24];
      sub_24B58090C(v34, a3, a4);
      sub_24B58090C(&v31, a3, a4);
      if (v16 != v17)
      {
        return 0;
      }

      if (!i)
      {
        return 1;
      }

      v5 = v20 + 4;
      v6 = v19 + 4;
    }

    sub_24B58090C(v34, a3, a4);
    sub_24B58090C(&v31, a3, a4);
  }

  return 0;
}

uint64_t sub_24B5D2F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v26 = a2 + 32;
    v27 = *(a1 + 16);
    v25 = a1 + 32;
    while (1)
    {
      v6 = (v4 + 80 * v3);
      v7 = v6[3];
      v38 = v6[2];
      *v39 = v7;
      *&v39[9] = *(v6 + 57);
      v8 = v6[1];
      v36 = *v6;
      v37 = v8;
      v9 = (v5 + 80 * v3);
      *&v43[9] = *(v9 + 57);
      v10 = v9[3];
      v42 = v9[2];
      *v43 = v10;
      v11 = v9[1];
      v40 = *v9;
      v41 = v11;
      v12 = *(v36 + 16);
      if (v12 != *(v40 + 16))
      {
        break;
      }

      v13 = v37;
      v14 = v38;
      v15 = *(&v41 + 1);
      v16 = v42;
      if (v12 && v36 != v40)
      {
        v17 = (v36 + 32);
        v18 = (v40 + 32);
        while (*v17 == *v18)
        {
          ++v17;
          ++v18;
          if (!--v12)
          {
            goto LABEL_11;
          }
        }

        return 0;
      }

LABEL_11:
      v33 = *(&v40 + 1);
      v34 = *(&v36 + 1);
      v19 = v41;
      v20 = *(&v37 + 1);
      v28 = v3;
      v29 = *&v39[16];
      v31 = *v39;
      v32 = *v43;
      v21 = *&v39[8];
      v30 = *&v43[16];
      sub_24B57BAFC(&v36, v35, &qword_27F018BF8, &unk_24B601080);
      sub_24B57BAFC(&v40, v35, &qword_27F018BF8, &unk_24B601080);
      if ((sub_24B584F70(v34, v33) & 1) == 0)
      {
        goto LABEL_28;
      }

      if (v20)
      {
        if (!v15 || (v13 != v19 || v20 != v15) && (sub_24B5FFECC() & 1) == 0)
        {
LABEL_28:
          sub_24B58090C(&v40, &qword_27F018BF8, &unk_24B601080);
          sub_24B58090C(&v36, &qword_27F018BF8, &unk_24B601080);
          return 0;
        }
      }

      else if (v15)
      {
        goto LABEL_28;
      }

      if (v14 != v16 && (sub_24B5FFECC() & 1) == 0 || __PAIR128__(v21, v31) != v32 && (sub_24B5FFECC() & 1) == 0 || (sub_24B58600C(v29, v30) & 1) == 0)
      {
        goto LABEL_28;
      }

      v22 = v39[24];
      v23 = v43[24];
      sub_24B58090C(&v40, &qword_27F018BF8, &unk_24B601080);
      sub_24B58090C(&v36, &qword_27F018BF8, &unk_24B601080);
      if (v22 != v23)
      {
        return 0;
      }

      v3 = v28 + 1;
      if (v28 + 1 == v27)
      {
        return 1;
      }

      v4 = v25;
      v5 = v26;
    }
  }

  return 0;
}

uint64_t sub_24B5D321C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v7 = v5[3];
    v29 = v5[2];
    v30 = v7;
    v31 = *(v5 + 64);
    v8 = v5[1];
    v19 = v6;
    v20 = v5;
    v27 = *v5;
    v28 = v8;
    v9 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v9;
    v35 = *(v6 + 64);
    v10 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v10;
    v11 = *(&v27 + 1);
    v12 = v28;
    v25 = v27;
    v13 = v29;
    v23 = v30;
    v24 = *(&v29 + 1);
    *v14 = v32[0];
    *&v14[16] = v10;
    *&v14[32] = v33;
    v22 = *(&v30 + 1);
    v15 = v9;
    sub_24B57BAFC(&v27, v26, &qword_27F018BE0, &qword_24B602300);
    sub_24B57BAFC(v32, v26, &qword_27F018BE0, &qword_24B602300);
    if ((sub_24B584F70(v25, *v14) & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v12)
    {
      if (!*&v14[16] || __PAIR128__(v12, v11) != *&v14[8] && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*&v14[16])
    {
      goto LABEL_23;
    }

    if (__PAIR128__(v13, *(&v12 + 1)) != *&v14[24] && (sub_24B5FFECC() & 1) == 0 || (v24 != *&v14[40] || v23 != v15) && (sub_24B5FFECC() & 1) == 0 || v22 != *(&v15 + 1))
    {
LABEL_23:
      sub_24B58090C(v32, &qword_27F018BE0, &qword_24B602300);
      sub_24B58090C(&v27, &qword_27F018BE0, &qword_24B602300);
      return 0;
    }

    v16 = v31;
    v17 = v35;
    sub_24B58090C(v32, &qword_27F018BE0, &qword_24B602300);
    sub_24B58090C(&v27, &qword_27F018BE0, &qword_24B602300);
    if (v16 != v17)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = v19 + 72;
    v5 = (v20 + 72);
  }

  return 1;
}

uint64_t sub_24B5D349C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    v5 = (a1 + 32);
    v6 = (a2 + 32);
    for (i = v4 - 1; ; --i)
    {
      v7 = v5[3];
      v33 = v5[2];
      *v34 = v7;
      *&v34[9] = *(v5 + 57);
      v8 = v5[1];
      v21 = v6;
      v22 = v5;
      v31 = *v5;
      v32 = v8;
      v9 = v6[3];
      v36 = v6[2];
      *v37 = v9;
      *&v37[9] = *(v6 + 57);
      v10 = v6[1];
      v35[0] = *v6;
      v35[1] = v10;
      v11 = *(&v31 + 1);
      *v12 = v32;
      *&v12[16] = v33;
      v25 = *v34;
      v13 = *&v34[16];
      v24 = *&v34[8];
      v14 = *(&v35[0] + 1);
      v26 = *&v35[0];
      v27 = v31;
      *v15 = v10;
      *&v15[16] = v36;
      v16 = *v37;
      v17 = *&v37[16];
      sub_24B57BAFC(&v31, v30, a3, a4);
      sub_24B57BAFC(v35, v30, a3, a4);
      if ((sub_24B584F70(v27, v26) & 1) == 0)
      {
        break;
      }

      if (*v12)
      {
        if (!*v15 || (v11 != v14 || *v12 != *v15) && (sub_24B5FFECC() & 1) == 0)
        {
          break;
        }
      }

      else if (*v15)
      {
        break;
      }

      if (*&v12[8] != *&v15[8] && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      if (v25)
      {
        if (!v16 || (*&v12[24] != *&v15[24] || v25 != v16) && (sub_24B5FFECC() & 1) == 0)
        {
          break;
        }
      }

      else if (v16)
      {
        break;
      }

      if ((v24 != *(&v16 + 1) || v13 != v17) && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v18 = v34[24];
      v19 = v37[24];
      sub_24B58090C(v35, a3, a4);
      sub_24B58090C(&v31, a3, a4);
      if (v18 != v19)
      {
        return 0;
      }

      if (!i)
      {
        return 1;
      }

      v6 = v21 + 5;
      v5 = v22 + 5;
    }

    sub_24B58090C(v35, a3, a4);
    sub_24B58090C(&v31, a3, a4);
  }

  return 0;
}

uint64_t sub_24B5D372C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B5D37BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v19 = v2;
  v20 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    *v17 = *v5;
    *&v17[16] = v8;
    v9 = v5[3];
    *&v17[32] = v5[2];
    *&v17[48] = v9;
    v10 = *v17;
    v11 = v6[1];
    *v18 = *v6;
    *&v18[16] = v11;
    v12 = v6[3];
    *&v18[32] = v6[2];
    *&v18[48] = v12;
    v13 = *v18;
    sub_24B5A1888(v17, v16);
    sub_24B5A1888(v18, v16);
    if ((sub_24B584F70(v10, v13) & 1) == 0)
    {
LABEL_22:
      sub_24B5C75FC(v18);
      sub_24B5C75FC(v17);
      return 0;
    }

    if (*&v17[16])
    {
      if (!*&v18[16] || *&v17[8] != *&v18[8] && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*&v18[16])
    {
      goto LABEL_22;
    }

    if (*&v17[24] != *&v18[24] && (sub_24B5FFECC() & 1) == 0)
    {
      goto LABEL_22;
    }

    if (*&v17[40] == *&v18[40])
    {
      sub_24B5C75FC(v18);
      sub_24B5C75FC(v17);
    }

    else
    {
      v14 = sub_24B5FFECC();
      sub_24B5C75FC(v18);
      sub_24B5C75FC(v17);
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    if (*&v17[56] != *&v18[56])
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_24B5D3968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B5D3A38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v44 = v2;
  v45 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v7 = v5[1];
    v38[0] = *v5;
    v38[1] = v7;
    v8 = v5[3];
    v23 = v6;
    v24 = v5;
    v39 = v5[2];
    v40 = v8;
    v9 = *(&v7 + 1);
    v26 = *(&v7 + 1);
    v27 = v39;
    v11 = *(&v38[0] + 1);
    v10 = v7;
    v12 = *&v38[0];
    v13 = *v6;
    v14 = v6[1];
    v15 = v6[3];
    v16 = BYTE8(v39);
    v42 = v6[2];
    v43 = v15;
    v41[0] = v13;
    v41[1] = v14;
    v17 = v13;
    v18 = v14;
    v19 = v42;
    v20 = BYTE8(v42);
    v33 = v38[0];
    v34 = v10;
    v35 = v9;
    v36 = v39;
    v37 = BYTE8(v39);
    v29 = v13;
    v30 = v14;
    v31 = v42;
    v32 = BYTE8(v42);
    sub_24B5A208C(v38, v28);
    sub_24B5A208C(v41, v28);
    sub_24B57BA1C(v12, v11, v10, v26, v27, v16);
    sub_24B57BA1C(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20);
    LOBYTE(v19) = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v33, &v29);
    sub_24B57BA04(v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32);
    sub_24B57BA04(v33, *(&v33 + 1), v34, v35, v36, v37);
    if ((v19 & 1) == 0)
    {
      sub_24B5A20C4(v41);
      sub_24B5A20C4(v38);
      return 0;
    }

    if (v40 == v43)
    {
      sub_24B5A20C4(v41);
      sub_24B5A20C4(v38);
    }

    else
    {
      v21 = sub_24B5FFECC();
      sub_24B5A20C4(v41);
      sub_24B5A20C4(v38);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 = v23 + 4;
    v5 = v24 + 4;
  }

  return 1;
}

uint64_t sub_24B5D3C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (*v3 > 5u)
        {
          if (v6 == 6)
          {
            v7 = 0x4E72656E69617274;
          }

          else
          {
            v7 = 0x6D614E656D656874;
          }

          if (v6 == 6)
          {
            v8 = 0xEB00000000656D61;
          }

          else
          {
            v8 = 0xE900000000000065;
          }
        }

        else if (v6 == 4)
        {
          v7 = 0x6E6547636973756DLL;
          v8 = 0xEE00656D614E6572;
        }

        else
        {
          v8 = 0xE400000000000000;
          v7 = 1701736302;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v8 = 0xE800000000000000;
          v7 = 0x6E6F697461727564;
        }

        else
        {
          v7 = 0x7974696C61646F6DLL;
          v8 = 0xEC000000656D614ELL;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0x656C655265746164;
        }

        else
        {
          v7 = 0xD000000000000013;
        }

        if (*v3)
        {
          v8 = 0xEC00000064657361;
        }

        else
        {
          v8 = 0x800000024B609D90;
        }
      }

      v9 = *v4;
      if (v9 > 3)
      {
        if (*v4 > 5u)
        {
          if (v9 == 6)
          {
            v11 = 0xEB00000000656D61;
            if (v7 != 0x4E72656E69617274)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0xE900000000000065;
            if (v7 != 0x6D614E656D656874)
            {
LABEL_5:
              v5 = sub_24B5FFECC();

              if ((v5 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_6;
            }
          }
        }

        else if (v9 == 4)
        {
          v11 = 0xEE00656D614E6572;
          if (v7 != 0x6E6547636973756DLL)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE400000000000000;
          if (v7 != 1701736302)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        if (*v4 > 1u)
        {
          if (v9 == 2)
          {
            v11 = 0xE800000000000000;
            if (v7 != 0x6E6F697461727564)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }

          v10 = 0x7974696C61646F6DLL;
          v11 = 0xEC000000656D614ELL;
        }

        else
        {
          v10 = 0x656C655265746164;
          v11 = 0xEC00000064657361;
          if (!*v4)
          {
            v11 = 0x800000024B609D90;
            if (v7 != 0xD000000000000013)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }
        }

        if (v7 != v10)
        {
          goto LABEL_5;
        }
      }

LABEL_47:
      if (v8 != v11)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}
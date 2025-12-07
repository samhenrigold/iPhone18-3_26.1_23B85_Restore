uint64_t sub_24B5D3F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B5FEDEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v60 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019FC8, &unk_24B609D00);
  MEMORY[0x28223BE20](v72);
  v11 = &v60 - v10;
  v73 = type metadata accessor for FilterSectionDescriptor(0);
  v12 = MEMORY[0x28223BE20](v73);
  v74 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v60 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v67 = v4;
  v68 = a2 + v19;
  v65 = v17;
  v66 = (v5 + 48);
  v61 = (v5 + 32);
  v62 = v7;
  v63 = (v5 + 8);
  v69 = *(v14 + 72);
  v70 = a1 + v19;
  while (1)
  {
    v20 = v69 * v18;
    result = sub_24B5D5A20(v70 + v69 * v18, v16);
    if (v18 == v17)
    {
      break;
    }

    v22 = v68 + v20;
    v23 = v74;
    sub_24B5D5A20(v22, v74);
    v24 = *v16 == *v23 && v16[1] == v23[1];
    if (!v24 && (sub_24B5FFECC() & 1) == 0)
    {
      goto LABEL_69;
    }

    v25 = *(v73 + 20);
    v26 = *(v72 + 48);
    sub_24B57BAFC(v16 + v25, v11, &qword_27F018BD0, &unk_24B6022F0);
    sub_24B57BAFC(v74 + v25, &v11[v26], &qword_27F018BD0, &unk_24B6022F0);
    v27 = v67;
    v28 = *v66;
    if ((*v66)(v11, 1, v67) == 1)
    {
      if (v28(&v11[v26], 1, v27) != 1)
      {
        goto LABEL_68;
      }

      sub_24B58090C(v11, &qword_27F018BD0, &unk_24B6022F0);
    }

    else
    {
      v29 = v71;
      sub_24B57BAFC(v11, v71, &qword_27F018BD0, &unk_24B6022F0);
      if (v28(&v11[v26], 1, v27) == 1)
      {
        (*v63)(v29, v27);
LABEL_68:
        sub_24B58090C(v11, &qword_27F019FC8, &unk_24B609D00);
LABEL_69:
        sub_24B5D5A84(v74);
        sub_24B5D5A84(v16);
        return 0;
      }

      v30 = v62;
      (*v61)(v62, &v11[v26], v27);
      sub_24B5D5AE0(&qword_27F019FD0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
      v64 = sub_24B5FFA5C();
      v31 = *v63;
      (*v63)(v30, v27);
      v31(v29, v27);
      sub_24B58090C(v11, &qword_27F018BD0, &unk_24B6022F0);
      if ((v64 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v32 = *(v73 + 24);
    v33 = *(v16 + v32);
    v34 = *(v16 + v32 + 8);
    v35 = v74 + v32;
    v36 = *v35;
    v37 = v35[8];
    if (v34 > 3)
    {
      if (v34 <= 5)
      {
        if (v34 == 4)
        {
          if (v37 != 4)
          {
            goto LABEL_69;
          }

          v38 = v33;
          v39 = v36;
          v40 = &qword_27F018BF0;
          v41 = &qword_24B603600;
          goto LABEL_5;
        }

        if (v37 != 5)
        {
          goto LABEL_69;
        }

        v56 = v33;
        v57 = v36;
        v58 = &qword_27F018BE8;
        v59 = &unk_24B601070;
        goto LABEL_64;
      }

      if (v34 != 6)
      {
        if (v37 != 7)
        {
          goto LABEL_69;
        }

        v56 = v33;
        v57 = v36;
        v58 = &qword_27F018BD8;
        v59 = &unk_24B601060;
LABEL_64:
        if ((sub_24B5D349C(v56, v57, v58, v59) & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }

      if (v37 != 6 || (sub_24B5D321C(v33, v36) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (v34 > 1)
    {
      if (v34 == 2)
      {
        if (v37 != 2)
        {
          goto LABEL_69;
        }

        v38 = v33;
        v39 = v36;
        v40 = &qword_27F018C00;
        v41 = &qword_24B603620;
        goto LABEL_5;
      }

      if (v37 != 3 || (sub_24B5D2F30(v33, v36) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (!v34)
      {
        if (v37)
        {
          goto LABEL_69;
        }

        v38 = v33;
        v39 = v36;
        v40 = &qword_27F018C08;
        v41 = &qword_24B601090;
LABEL_5:
        if ((sub_24B5D2CFC(v38, v39, v40, v41) & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }

      if (v37 != 1)
      {
        goto LABEL_69;
      }

      v42 = *(v33 + 16);
      if (v42 != *(v36 + 16))
      {
        goto LABEL_69;
      }

      if (v42 && v33 != v36)
      {
        v43 = 0;
        do
        {
          v45 = *(v33 + v43 + 48);
          v44 = *(v33 + v43 + 56);
          v46 = *(v33 + v43 + 64);
          v47 = *(v33 + v43 + 72);
          v49 = *(v36 + v43 + 48);
          v48 = *(v36 + v43 + 56);
          v50 = *(v36 + v43 + 64);
          v51 = *(v36 + v43 + 72);
          v52 = *(v33 + v43 + 32) == *(v36 + v43 + 32) && *(v33 + v43 + 40) == *(v36 + v43 + 40);
          if (!v52 && (sub_24B5FFECC() & 1) == 0)
          {
            goto LABEL_69;
          }

          v53 = v45 == v49 && v44 == v48;
          v54 = v53 && v46 == v50;
          if (!v54 || v47 != v51)
          {
            goto LABEL_69;
          }

          v43 += 48;
        }

        while (--v42);
      }
    }

LABEL_6:
    ++v18;
    sub_24B5D5A84(v74);
    sub_24B5D5A84(v16);
    v17 = v65;
    if (v18 == v65)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t ThemeCategory.iconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ThemeCategory.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ThemeCategory.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ThemeCategory.init(artworks:iconName:identifier:name:sortOrder:themes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
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

uint64_t sub_24B5D46B0()
{
  v1 = *v0;
  v2 = 0x736B726F77747261;
  v3 = 1701667182;
  v4 = 0x6564724F74726F73;
  if (v1 != 4)
  {
    v4 = 0x73656D656874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E6E6F6369;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_24B5D4768@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5D5818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5D4790(uint64_t a1)
{
  v2 = sub_24B5D4B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5D47CC(uint64_t a1)
{
  v2 = sub_24B5D4B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThemeCategory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F68, &unk_24B607690);
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
  v12 = v1[7];
  v17 = v1[6];
  v18 = v11;
  v15 = v1[8];
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D4B20();

  sub_24B5FFF5C();
  v24 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5D50C4(&qword_27F018710, &qword_27F018718, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B50]);
  sub_24B5FFE8C();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v24) = 1;
    sub_24B5FFE1C();
    LOBYTE(v24) = 2;
    sub_24B5FFE3C();
    LOBYTE(v24) = 3;
    sub_24B5FFE3C();
    LOBYTE(v24) = 4;
    sub_24B5FFE6C();
    v24 = v15;
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F78, &qword_24B6076A0);
    sub_24B5D4B74(&qword_27F019F80, sub_24B5D4BEC, MEMORY[0x277D83948]);
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B5D4B20()
{
  result = qword_27F019F70;
  if (!qword_27F019F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F70);
  }

  return result;
}

uint64_t sub_24B5D4B74(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019F78, &qword_24B6076A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5D4BEC()
{
  result = qword_27F019F88;
  if (!qword_27F019F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F88);
  }

  return result;
}

uint64_t ThemeCategory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F90, &qword_24B6076A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D4B20();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v30) = 0;
  sub_24B5D50C4(&qword_27F018728, &qword_27F018730, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v9 = v35[0];
  LOBYTE(v35[0]) = 1;
  v27 = sub_24B5FFD6C();
  v29 = v10;
  LOBYTE(v35[0]) = 2;
  v11 = sub_24B5FFD8C();
  v28 = v12;
  v25 = v11;
  LOBYTE(v35[0]) = 3;
  v24 = sub_24B5FFD8C();
  v26 = v13;
  LOBYTE(v35[0]) = 4;
  v23 = sub_24B5FFDBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F78, &qword_24B6076A0);
  v36[0] = 5;
  sub_24B5D4B74(&qword_27F019F98, sub_24B5D5160, MEMORY[0x277D83978]);
  sub_24B5FFDDC();
  (*(v6 + 8))(v8, v5);
  v14 = v37;
  v15 = v27;
  *&v30 = v9;
  *(&v30 + 1) = v27;
  v17 = v28;
  v16 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v25;
  *&v32 = v28;
  *(&v32 + 1) = v24;
  v18 = v26;
  *&v33 = v26;
  *(&v33 + 1) = v23;
  v34 = v37;
  *(a2 + 64) = v37;
  v19 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v19;
  v20 = v31;
  *a2 = v30;
  *(a2 + 16) = v20;
  sub_24B5A16FC(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v9;
  v35[1] = v15;
  v35[2] = v16;
  v35[3] = v25;
  v35[4] = v17;
  v35[5] = v24;
  v35[6] = v18;
  v35[7] = v23;
  v35[8] = v14;
  return sub_24B5A1758(v35);
}

uint64_t sub_24B5D50C4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018708, &qword_24B6073B0);
    sub_24B5D5AE0(a2, type metadata accessor for Artwork, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5D5160()
{
  result = qword_27F019FA0;
  if (!qword_27F019FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FA0);
  }

  return result;
}

uint64_t ThemeCategory.hash(into:)(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[7];
  v5 = v1[8];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v4);

  return sub_24B5A8CFC(a1, v5);
}

uint64_t ThemeCategory.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[7];
  v4 = v0[8];
  sub_24B5FFEFC();
  sub_24B57926C(v6, v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v3);
  sub_24B5A8CFC(v6, v4);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D5398(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[7];
  v5 = v1[8];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v4);

  return sub_24B5A8CFC(a1, v5);
}

uint64_t sub_24B5D5464(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[7];
  v5 = v1[8];
  sub_24B5FFEFC();
  sub_24B57926C(v7, v2);
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v4);
  sub_24B5A8CFC(v7, v5);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering13ThemeCategoryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v16 = a1[7];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v14 = a1[8];
  v15 = a2[7];
  v13 = a2[8];
  if ((sub_24B584F70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v7 || (v2 != v6 || v3 != v7) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if ((v4 != v8 || v5 != v10) && (sub_24B5FFECC() & 1) == 0 || (v17 != v9 || v18 != v11) && (sub_24B5FFECC() & 1) == 0 || v16 != v15)
  {
    return 0;
  }

  return sub_24B5D37BC(v14, v13);
}

unint64_t sub_24B5D569C()
{
  result = qword_27F019FA8;
  if (!qword_27F019FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FA8);
  }

  return result;
}

unint64_t sub_24B5D5714()
{
  result = qword_27F019FB0;
  if (!qword_27F019FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FB0);
  }

  return result;
}

unint64_t sub_24B5D576C()
{
  result = qword_27F019FB8;
  if (!qword_27F019FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FB8);
  }

  return result;
}

unint64_t sub_24B5D57C4()
{
  result = qword_27F019FC0;
  if (!qword_27F019FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FC0);
  }

  return result;
}

uint64_t sub_24B5D5818(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656D656874 && a2 == 0xE600000000000000)
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

uint64_t sub_24B5D5A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5D5A84(uint64_t a1)
{
  v2 = type metadata accessor for FilterSectionDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B5D5AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ResultPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResultPlaceholder.referenceType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

FitnessFiltering::ResultPlaceholder __swiftcall ResultPlaceholder.init(identifier:referenceType:)(Swift::String identifier, Swift::String referenceType)
{
  *v2 = identifier;
  v2[1] = referenceType;
  result.referenceType = referenceType;
  result.identifier = identifier;
  return result;
}

uint64_t sub_24B5D5B9C()
{
  if (*v0)
  {
    return 0x636E657265666572;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B5D5BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24B5FFECC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B5FFECC();

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

uint64_t sub_24B5D5CD4(uint64_t a1)
{
  v2 = sub_24B5D5EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5D5D10(uint64_t a1)
{
  v2 = sub_24B5D5EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019FD8, &qword_24B607980);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D5EE0();
  sub_24B5FFF5C();
  v12 = 0;
  v8 = v10[3];
  sub_24B5FFE3C();
  if (!v8)
  {
    v11 = 1;
    sub_24B5FFE3C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B5D5EE0()
{
  result = qword_27F019FE0;
  if (!qword_27F019FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FE0);
  }

  return result;
}

uint64_t ResultPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019FE8, &qword_24B607988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D5EE0();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24B5FFD8C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24B5FFD8C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static ResultPlaceholder.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24B5FFECC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24B5FFECC();
    }
  }

  return result;
}

uint64_t ResultPlaceholder.hash(into:)(uint64_t a1)
{
  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t ResultPlaceholder.hashValue.getter()
{
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D62C0()
{
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D6328(uint64_t a1)
{
  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t sub_24B5D6378(uint64_t a1)
{
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

unint64_t sub_24B5D63E0()
{
  result = qword_27F019FF0;
  if (!qword_27F019FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FF0);
  }

  return result;
}

uint64_t sub_24B5D6434(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24B5FFECC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24B5FFECC();
    }
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

uint64_t sub_24B5D64E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B5D652C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24B5D6590()
{
  result = qword_27F019FF8;
  if (!qword_27F019FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FF8);
  }

  return result;
}

unint64_t sub_24B5D65E8()
{
  result = qword_27F01A000;
  if (!qword_27F01A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A000);
  }

  return result;
}

unint64_t sub_24B5D6640()
{
  result = qword_27F01A008;
  if (!qword_27F01A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A008);
  }

  return result;
}

uint64_t EditorialTrait.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7053747369747261;
  v2 = 0x576D6172676F7270;
  if (a1 != 6)
  {
    v2 = 0x6967736B6E616874;
  }

  v3 = 0x7261655977656ELL;
  if (a1 != 4)
  {
    v3 = 0x6564697270;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x796164696C6F68;
  if (a1 != 2)
  {
    v4 = 0x77654E72616E756CLL;
  }

  if (a1)
  {
    v1 = 0x6565776F6C6C6168;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B5D67CC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF746867696C746FLL;
  v3 = 0x7053747369747261;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x576D6172676F7270;
  v7 = 0xEE0074756F6B726FLL;
  if (v4 != 6)
  {
    v6 = 0x6967736B6E616874;
    v7 = 0xEC000000676E6976;
  }

  v8 = 0xE700000000000000;
  v9 = 0x7261655977656ELL;
  if (v4 != 4)
  {
    v9 = 0x6564697270;
    v8 = 0xE500000000000000;
  }

  if (*a1 <= 5u)
  {
    v6 = v9;
    v7 = v8;
  }

  v10 = 0xE700000000000000;
  v11 = 0x796164696C6F68;
  if (v4 != 2)
  {
    v11 = 0x77654E72616E756CLL;
    v10 = 0xEC00000072616559;
  }

  v12 = 0x6565776F6C6C6168;
  v13 = 0xE90000000000006ELL;
  if (!*a1)
  {
    v12 = 0x7053747369747261;
    v13 = 0xEF746867696C746FLL;
  }

  if (*a1 <= 1u)
  {
    v11 = v12;
    v10 = v13;
  }

  if (*a1 <= 3u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 3)
  {
    v15 = v10;
  }

  else
  {
    v15 = v7;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      if (v5 == 6)
      {
        v2 = 0xEE0074756F6B726FLL;
        if (v14 != 0x576D6172676F7270)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEC000000676E6976;
        if (v14 != 0x6967736B6E616874)
        {
          goto LABEL_41;
        }
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xE700000000000000;
      if (v14 != 0x7261655977656ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v14 != 0x6564697270)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (*a2 > 1u)
    {
      if (v5 == 2)
      {
        v2 = 0xE700000000000000;
        if (v14 != 0x796164696C6F68)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x77654E72616E756CLL;
      v2 = 0xEC00000072616559;
    }

    else if (*a2)
    {
      v2 = 0xE90000000000006ELL;
      if (v14 != 0x6565776F6C6C6168)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v14 != v3)
    {
LABEL_41:
      v16 = sub_24B5FFECC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v15 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

unint64_t sub_24B5D6A74@<X0>(Swift::String *a1@<X0>, FitnessFiltering::EditorialTrait_optional *a2@<X8>)
{
  result = _s16FitnessFiltering14EditorialTraitO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_24B5D6AA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746867696C746FLL;
  v4 = 0x7053747369747261;
  v5 = 0xEE0074756F6B726FLL;
  v6 = 0x576D6172676F7270;
  if (v2 != 6)
  {
    v6 = 0x6967736B6E616874;
    v5 = 0xEC000000676E6976;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7261655977656ELL;
  if (v2 != 4)
  {
    v8 = 0x6564697270;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x796164696C6F68;
  if (v2 != 2)
  {
    v10 = 0x77654E72616E756CLL;
    v9 = 0xEC00000072616559;
  }

  if (*v1)
  {
    v4 = 0x6565776F6C6C6168;
    v3 = 0xE90000000000006ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_24B5D6C8C()
{
  sub_24B5FFEFC();
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

uint64_t sub_24B5D6DF8(uint64_t a1)
{
  sub_24B5FFB1C();
}

uint64_t sub_24B5D6F50(uint64_t a1)
{
  sub_24B5FFEFC();
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

unint64_t _s16FitnessFiltering14EditorialTraitO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B5FFD3C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B5D7108()
{
  result = qword_27F01A010;
  if (!qword_27F01A010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A018, &qword_24B607C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A010);
  }

  return result;
}

unint64_t sub_24B5D7170()
{
  result = qword_27F01A020;
  if (!qword_27F01A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A020);
  }

  return result;
}

unint64_t sub_24B5D71D4()
{
  result = qword_27F01A028;
  if (!qword_27F01A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A028);
  }

  return result;
}

uint64_t Trainer.iconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Trainer.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Trainer.informalName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Trainer.name.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Trainer.init(artworks:iconName:identifier:informalName:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
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

uint64_t sub_24B5D730C()
{
  v1 = *v0;
  v2 = 0x736B726F77747261;
  v3 = 0x696669746E656469;
  v4 = 0x6C616D726F666E69;
  if (v1 != 3)
  {
    v4 = 1701667182;
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

uint64_t sub_24B5D73AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5D81CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5D73D4(uint64_t a1)
{
  v2 = sub_24B5D76D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5D7410(uint64_t a1)
{
  v2 = sub_24B5D76D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Trainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A030, &unk_24B607D40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15[7] = v1[2];
  v15[8] = v8;
  v11 = v1[5];
  v15[5] = v1[4];
  v15[6] = v10;
  v12 = v1[7];
  v15[3] = v1[6];
  v15[4] = v11;
  v13 = v1[8];
  v15[1] = v12;
  v15[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D76D4();

  sub_24B5FFF5C();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5C7530(&qword_27F018710, &qword_27F018718, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B50]);
  sub_24B5FFE8C();

  if (!v2)
  {
    v19 = 1;
    sub_24B5FFE1C();
    v18 = 2;
    sub_24B5FFE3C();
    v17 = 3;
    sub_24B5FFE1C();
    v16 = 4;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B5D76D4()
{
  result = qword_27F01A038;
  if (!qword_27F01A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A038);
  }

  return result;
}

uint64_t Trainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A040, &qword_24B607D50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D76D4();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v31) = 0;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v9 = v36[0];
  LOBYTE(v36[0]) = 1;
  v10 = sub_24B5FFD6C();
  v30 = v11;
  v27 = v10;
  LOBYTE(v36[0]) = 2;
  v26 = sub_24B5FFD8C();
  v29 = v12;
  LOBYTE(v36[0]) = 3;
  v25 = sub_24B5FFD6C();
  v28 = v13;
  v37 = 4;
  v14 = sub_24B5FFD8C();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v8, v5);
  v18 = v27;
  *&v31 = v9;
  *(&v31 + 1) = v27;
  v19 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v26;
  v20 = v28;
  *&v33 = v29;
  *(&v33 + 1) = v25;
  *&v34 = v28;
  *(&v34 + 1) = v17;
  v35 = v16;
  *(a2 + 64) = v16;
  v21 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v21;
  v22 = v32;
  *a2 = v31;
  *(a2 + 16) = v22;
  sub_24B5A1548(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v9;
  v36[1] = v18;
  v36[2] = v19;
  v36[3] = v26;
  v36[4] = v29;
  v36[5] = v25;
  v36[6] = v20;
  v36[7] = v17;
  v36[8] = v16;
  return sub_24B5A15A4(v36);
}

uint64_t sub_24B5D7B5C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t sub_24B5D7B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B5D7BD4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B5D7C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t Trainer.hash(into:)(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[6];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  return sub_24B5FFB1C();
}

uint64_t Trainer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[6];
  sub_24B5FFEFC();
  sub_24B57926C(v5, v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D7E24()
{
  sub_24B5FFEFC();
  Trainer.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D7E68(uint64_t a1)
{
  sub_24B5FFEFC();
  Trainer.hash(into:)(v2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D7EA4()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t _s16FitnessFiltering7TrainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  v17 = a1[8];
  v18 = a1[7];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v13 = a2[5];
  v14 = a1[5];
  v11 = a2[6];
  v15 = a2[8];
  v16 = a2[7];
  if ((sub_24B584F70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v9 || (v2 != v7 || v3 != v9) && (sub_24B5FFECC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v4 != v8 || v5 != v10) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_24B5FFECC() & 1) != 0))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v11)
  {
    return 0;
  }

LABEL_17:
  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_24B5FFECC();
}

unint64_t sub_24B5D8050()
{
  result = qword_27F01A048;
  if (!qword_27F01A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A048);
  }

  return result;
}

unint64_t sub_24B5D80C8()
{
  result = qword_27F01A050;
  if (!qword_27F01A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A050);
  }

  return result;
}

unint64_t sub_24B5D8120()
{
  result = qword_27F01A058;
  if (!qword_27F01A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A058);
  }

  return result;
}

unint64_t sub_24B5D8178()
{
  result = qword_27F01A060;
  if (!qword_27F01A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A060);
  }

  return result;
}

uint64_t sub_24B5D81CC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6C616D726F666E69 && a2 == 0xEC000000656D614ELL || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_24B5D83A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A200, qword_24B608100);
  v5 = sub_24B58085C(&qword_2810F6680, &qword_27F01A200, qword_24B608100, MEMORY[0x277D04410]);

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_24B5D8444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  return sub_24B5FEE5C();
}

uint64_t sub_24B5D84EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  sub_24B5FEE7C();
  sub_24B5FEE6C();
  return v2;
}

uint64_t FilterView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_24B5D864C;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  type metadata accessor for FilterView(0, a5, a6, v15);
  return sub_24B5D8444(a3, a4, a5);
}

uint64_t FilterView.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v26 = v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v3 = sub_24B5C3D68();
  v4 = sub_24B5C3B90();
  v5 = sub_24B5D9BC8();
  v6 = sub_24B5D9C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  sub_24B5D9C70();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v1;
  v29 = &type metadata for Modality;
  v30 = v25;
  v31 = v2;
  v32 = &protocol witness table for Modality;
  v33 = &protocol witness table for Modality;
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = OpaqueTypeConformance2;
  type metadata accessor for FilterModalitySectionView(255, &v28);
  sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v8 = sub_24B5D9DB4();
  v9 = sub_24B5D9E08();
  v10 = sub_24B5D9E5C();
  v11 = sub_24B5D9EB0();
  v28 = v1;
  v29 = &type metadata for Trainer;
  v30 = v25;
  v31 = v26;
  v32 = &protocol witness table for Trainer;
  v33 = &protocol witness table for Trainer;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView(255, &v28);
  sub_24B5FF21C();
  sub_24B5FF21C();
  v12 = sub_24B5FF21C();
  v13 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  v30 = v12;
  v31 = v13;
  v32 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  sub_24B5D9F04();
  sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5D9FE8();
  sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  v14 = sub_24B5FEF2C();
  WitnessTable = swift_getWitnessTable();
  v28 = v14;
  v29 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = v14;
  v29 = WitnessTable;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = OpaqueTypeMetadata2;
  v29 = v17;
  swift_getOpaqueTypeMetadata2();
  v28 = OpaqueTypeMetadata2;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  sub_24B5FF21C();
  v18 = sub_24B5FEFEC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A168, &qword_24B608080);
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
  swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = sub_24B58085C(qword_27F01A178, &qword_27F01A168, &qword_24B608080, MEMORY[0x277CDDF68]);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v28 = v22;
  v29 = v23;
  swift_getOpaqueTypeMetadata2();
  v28 = v22;
  v29 = v23;
  swift_getOpaqueTypeConformance2();
  return sub_24B5FEFFC();
}

uint64_t sub_24B5D8D78()
{
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(__dst, __src, 0x111uLL);
  v0 = sub_24B58FDFC(__dst);
  if ((v0 - 2) < 2)
  {
    return 0;
  }

  if (v0)
  {
    nullsub_1();
    v29 = v11[1];
    v30 = *v11;
    v28 = v11[2];
    v2 = v11 + 13;
    v12 = v11[22];
    v13 = v11[23];
    v14 = v11[24];
    v15 = v11[25];
    v16 = v11[26];
    v26 = v11[27];
    v17 = v11[29];
    v25 = v11[28];
    v18 = v11[30];

    sub_24B5DCA50(v12, v13, v14, v15, v16, v26, v25, v17, v18);

    sub_24B5A0960(v30, v29, v28);
  }

  else
  {
    nullsub_1();
    v2 = v1;
    v3 = v1[23];
    v4 = v1[24];
    v5 = v1[25];
    v6 = v1[26];
    v7 = v1[27];
    v27 = v1[28];
    v8 = v1[29];
    v9 = v1[30];
    v10 = v1[31];

    sub_24B5DCA50(v3, v4, v5, v6, v7, v27, v8, v9, v10);
  }

  v32[0] = *v2;
  v19 = *(v2 + 1);
  v20 = *(v2 + 2);
  v21 = *(v2 + 3);
  v35 = v2[8];
  v33 = v20;
  v34 = v21;
  v32[1] = v19;
  if (!*&v32[0])
  {
    return 0;
  }

  v22 = *(&v33 + 1);

  sub_24B58090C(v32, &qword_27F018B70, &unk_24B604EC0);
  v23 = *(v22 + 16);

  return v23;
}

uint64_t sub_24B5D907C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a1;
  v104 = a4;
  v6 = sub_24B5FF11C();
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x28223BE20](v6);
  v101 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v10 = type metadata accessor for FilterView(0, a2, a3, v9);
  v11 = *(v10 - 8);
  v98 = v10;
  v99 = v11;
  v100 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v97 = &v82 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v92 = v13;
  v14 = sub_24B5C3D68();
  v15 = sub_24B5C3B90();
  v16 = sub_24B5D9BC8();
  v17 = sub_24B5D9C1C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v19 = sub_24B5D9C70();
  v136 = v18;
  v137 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v8;
  v106 = a2;
  v136 = a2;
  v137 = &type metadata for Modality;
  v138 = v13;
  v139 = v8;
  v21 = v8;
  v140 = &protocol witness table for Modality;
  v141 = &protocol witness table for Modality;
  v142 = v14;
  v143 = v15;
  v144 = v16;
  v145 = v17;
  v146 = OpaqueTypeConformance2;
  v94 = type metadata accessor for FilterModalitySectionView(255, &v136);
  v95 = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v22 = sub_24B5D9DB4();
  v23 = sub_24B5D9E08();
  v24 = sub_24B5D9E5C();
  v25 = sub_24B5D9EB0();
  v136 = a2;
  v137 = &type metadata for Trainer;
  v138 = v92;
  v139 = v21;
  v140 = &protocol witness table for Trainer;
  v141 = &protocol witness table for Trainer;
  v142 = v22;
  v143 = v23;
  v144 = v24;
  v145 = v25;
  v146 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView(255, &v136);
  sub_24B5FF21C();
  sub_24B5FF21C();
  v26 = sub_24B5FF21C();
  v27 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
  v136 = v96;
  v137 = MEMORY[0x277D837D0];
  v138 = v26;
  v139 = v27;
  v140 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v28 = sub_24B5D9F04();
  v29 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
  WitnessTable = swift_getWitnessTable();
  v134 = v29;
  v135 = WitnessTable;
  v31 = swift_getWitnessTable();
  v132 = v28;
  v133 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_24B5D9FE8();
  v34 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  v35 = swift_getWitnessTable();
  v130 = v34;
  v131 = v35;
  v36 = swift_getWitnessTable();
  v128 = v33;
  v129 = v36;
  v37 = swift_getWitnessTable();
  v126 = v32;
  v127 = v37;
  v125 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  v38 = sub_24B5FEF2C();
  v39 = swift_getWitnessTable();
  v136 = v38;
  v137 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v136 = v38;
  v137 = v39;
  v41 = swift_getOpaqueTypeConformance2();
  v136 = OpaqueTypeMetadata2;
  v137 = v41;
  swift_getOpaqueTypeMetadata2();
  v136 = OpaqueTypeMetadata2;
  v137 = v41;
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  v84 = sub_24B5FF21C();
  v42 = sub_24B5FEFEC();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A168, &qword_24B608080);
  v44 = swift_getWitnessTable();
  v45 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
  v123 = v44;
  v124 = v45;
  v89 = swift_getWitnessTable();
  v121 = v89;
  v122 = MEMORY[0x277CE0790];
  v46 = swift_getWitnessTable();
  v47 = sub_24B58085C(qword_27F01A178, &qword_27F01A168, &qword_24B608080, MEMORY[0x277CDDF68]);
  v136 = v42;
  v137 = v43;
  v82 = v42;
  v87 = v46;
  v88 = v43;
  v138 = v46;
  v139 = v47;
  v48 = v47;
  v86 = v47;
  v49 = swift_getOpaqueTypeMetadata2();
  v92 = v49;
  v96 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v85 = &v82 - v50;
  v136 = v42;
  v137 = v43;
  v138 = v46;
  v139 = v48;
  v91 = swift_getOpaqueTypeConformance2();
  v136 = v49;
  v137 = v91;
  v93 = MEMORY[0x277CDED18];
  v51 = swift_getOpaqueTypeMetadata2();
  v52 = *(v51 - 8);
  v94 = v51;
  v95 = v52;
  v53 = MEMORY[0x28223BE20](v51);
  v83 = &v82 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v90 = &v82 - v55;
  v56 = v98;
  v57 = v107;
  sub_24B5DA2D4(v98, &v111);
  v59 = v111;
  v58 = v112;
  LOBYTE(v22) = v113;
  v118 = v111;
  v119 = v112;
  v120 = v113;
  v60 = v99;
  v61 = v97;
  (*(v99 + 16))(v97, v57, v56);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v63 = swift_allocObject();
  v64 = v105;
  *(v63 + 16) = v106;
  *(v63 + 24) = v64;
  (*(v60 + 32))(v63 + v62, v61, v56);
  swift_checkMetadataState();
  sub_24B5FF72C();

  sub_24B5DB830(v59, v58, v22);
  v65 = v136;
  v66 = v137;
  LOBYTE(v22) = v138;
  v67 = v139;
  v68 = v140;
  v70 = v141;
  v69 = v142;
  v111 = v136;
  v112 = v137;
  v113 = v138;
  v114 = v139;
  v115 = v140;
  v116 = v141;
  v117 = v142;
  v108 = v106;
  v109 = v105;
  v110 = v107;
  swift_checkMetadataState();
  v71 = v85;
  sub_24B5FF6FC();
  sub_24B5DB830(v65, v66, v22);
  sub_24B5DBCA4(v67, v68);
  sub_24B5DBCA4(v70, v69);
  v73 = v101;
  v72 = v102;
  v74 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x277CDDDC0], v103);
  v75 = v83;
  v77 = v91;
  v76 = v92;
  sub_24B5FEDE8(v73, v92, v91);
  (*(v72 + 8))(v73, v74);
  (*(v96 + 8))(v71, v76);
  v136 = v76;
  v137 = v77;
  swift_getOpaqueTypeConformance2();
  v78 = v90;
  v79 = v94;
  sub_24B5FC7F0();
  v80 = *(v95 + 8);
  v80(v75, v79);
  sub_24B5FC7F0();
  return (v80)(v78, v79);
}

unint64_t sub_24B5D9BC8()
{
  result = qword_27F01A088;
  if (!qword_27F01A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A088);
  }

  return result;
}

unint64_t sub_24B5D9C1C()
{
  result = qword_27F01A090;
  if (!qword_27F01A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A090);
  }

  return result;
}

unint64_t sub_24B5D9C70()
{
  result = qword_27F01A0A0;
  if (!qword_27F01A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
    sub_24B5D9CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0A0);
  }

  return result;
}

unint64_t sub_24B5D9CFC()
{
  result = qword_27F01A0A8;
  if (!qword_27F01A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0B0, &qword_24B608038);
    sub_24B58085C(&qword_27F01A0B8, &qword_27F01A0C0, &qword_24B608040, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0A8);
  }

  return result;
}

unint64_t sub_24B5D9DB4()
{
  result = qword_27F01A0D8;
  if (!qword_27F01A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0D8);
  }

  return result;
}

unint64_t sub_24B5D9E08()
{
  result = qword_27F01A0E0;
  if (!qword_27F01A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0E0);
  }

  return result;
}

unint64_t sub_24B5D9E5C()
{
  result = qword_27F01A0E8;
  if (!qword_27F01A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0E8);
  }

  return result;
}

unint64_t sub_24B5D9EB0()
{
  result = qword_27F01A0F0;
  if (!qword_27F01A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0F0);
  }

  return result;
}

unint64_t sub_24B5D9F04()
{
  result = qword_27F01A100;
  if (!qword_27F01A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
    sub_24B58085C(&qword_27F01A108, &qword_27F01A110, &qword_24B608058, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
    sub_24B58085C(&qword_27F01A118, &qword_27F01A120, &qword_24B608060, &protocol conformance descriptor for FilterDurationSectionView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A100);
  }

  return result;
}

unint64_t sub_24B5D9FE8()
{
  result = qword_27F01A130;
  if (!qword_27F01A130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
    sub_24B58085C(&qword_27F01A138, &qword_27F01A140, &qword_24B608068, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
    sub_24B58085C(&qword_27F01A148, &qword_27F01A150, &unk_24B608070, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A130);
  }

  return result;
}

void sub_24B5DA114(uint64_t a1)
{
  sub_24B5DA230(319);
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
    swift_getFunctionTypeMetadata3();
    sub_24B5FEE7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B5DA230(uint64_t a1)
{
  if (!qword_2810F6688[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A200, qword_24B608100);
    sub_24B58085C(&qword_2810F6680, &qword_27F01A200, qword_24B608100, MEMORY[0x277D04410]);
    v1 = sub_24B5FEF5C();
    if (!v2)
    {
      atomic_store(v1, qword_2810F6688);
    }
  }
}

uint64_t sub_24B5DA2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(v179, v178, 0x111uLL);
  v6 = sub_24B58FDFC(v179);
  v163 = a1;
  if ((v6 - 2) >= 2)
  {
    v161 = v2;
    if (v6)
    {
      nullsub_1();
      v45 = v44;
      v46 = *v44;
      v159 = v44[1];
      *&v160 = v46;
      v47 = v44[2];
      v48 = v44[5];
      v157 = v44[4];
      v158 = v47;
      v49 = v44[7];
      v155 = v44[6];
      v156 = v48;
      v154 = v49;
      v50 = v44[8];
      v151 = v44[9];
      v152 = v50;
      v51 = v44[10];
      v149 = v44[11];
      v150 = v51;
      v52 = v44[12];
      v53 = v44[13];
      v54 = v44[14];
      v147 = v44[15];
      v148 = v52;
      v55 = v44[16];
      v56 = v44[17];
      v57 = v44[19];
      v145 = v44[18];
      v146 = v55;
      v58 = v44[21];
      v143 = v44[20];
      v144 = v57;
      v59 = v44[22];
      v60 = v45[23];
      v61 = v45[24];
      v62 = v45[25];
      v63 = v45[26];
      v64 = v45[27];
      v65 = v45[28];
      v66 = v45[29];
      v67 = v45[30];
      LODWORD(v153) = *(v45 + 24);
      sub_24B5DCA50(v59, v60, v61, v62, v63, v64, v65, v66, v67);

      sub_24B5DCAD0(v53, v54, v147, v146, v56, v145, v144, v143, v58);

      v43 = v45[33];
      sub_24B5A0960(v160, v159, v158);
    }

    else
    {
      nullsub_1();
      v34 = v33;
      v35 = *v33;
      v159 = v33[1];
      *&v160 = v35;
      v36 = v33[2];
      v157 = v33[3];
      v158 = v36;
      v37 = v33[4];
      v155 = v33[5];
      v156 = v37;
      v38 = v33[6];
      v153 = v33[7];
      v154 = v38;
      v39 = v33[8];
      v40 = v33[11];
      v151 = v33[10];
      v152 = v39;
      v41 = v33[12];
      v146 = v33[13];
      v147 = v41;
      v145 = v33[14];
      v42 = v33[19];
      v149 = v40;
      v150 = v42;
      v148 = v33[21];
      sub_24B5DCA50(v33[23], v34[24], v34[25], v34[26], v34[27], v34[28], v34[29], v34[30], v34[31]);
      v144 = v34[32];

      v43 = v34[33];
      sub_24B5DCAD0(v160, v159, v158, v157, v156, v155, v154, v153, v152);
    }

    v68 = v163;
    (*(v4 + 16))(&v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v161, v163);
    v69 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v70 = swift_allocObject();
    v161 = v70;
    v72 = *(v68 + 16);
    v71 = *(v68 + 24);
    v157 = v72;
    v158 = v71;
    *(v70 + 2) = v72;
    *(v70 + 3) = v71;
    v73 = v72;
    *(v70 + 4) = v43;
    (*(v4 + 32))(&v70[v69], &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v68);
    *&v160 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
    v156 = v74;
    v75 = sub_24B5C3D68();
    v76 = sub_24B5C3B90();
    v77 = sub_24B5D9BC8();
    v78 = sub_24B5D9C1C();
    v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
    v80 = sub_24B5D9C70();
    *&v178[0] = v79;
    *(&v178[0] + 1) = v80;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v178[0] = v73;
    *(&v178[0] + 1) = &type metadata for Modality;
    *&v178[1] = v74;
    v82 = v158;
    *(&v178[1] + 1) = v158;
    *&v178[2] = &protocol witness table for Modality;
    *(&v178[2] + 1) = &protocol witness table for Modality;
    *&v178[3] = v75;
    *(&v178[3] + 1) = v76;
    *&v178[4] = v77;
    *(&v178[4] + 1) = v78;
    *&v178[5] = OpaqueTypeConformance2;
    type metadata accessor for FilterModalitySectionView(255, v178);
    v159 = sub_24B5FF21C();
    sub_24B5FF21C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
    v83 = sub_24B5D9DB4();
    v84 = sub_24B5D9E08();
    v85 = sub_24B5D9E5C();
    v86 = sub_24B5D9EB0();
    *&v178[0] = v157;
    *(&v178[0] + 1) = &type metadata for Trainer;
    *&v178[1] = v156;
    *(&v178[1] + 1) = v82;
    *&v178[2] = &protocol witness table for Trainer;
    *(&v178[2] + 1) = &protocol witness table for Trainer;
    *&v178[3] = v83;
    *(&v178[3] + 1) = v84;
    *&v178[4] = v85;
    *(&v178[4] + 1) = v86;
    *&v178[5] = OpaqueTypeConformance2;
    type metadata accessor for FilterTrainerSectionView(255, v178);
    sub_24B5FF21C();
    sub_24B5FF21C();
    v87 = sub_24B5FF21C();
    v88 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
    *&v178[0] = v160;
    *(&v178[0] + 1) = MEMORY[0x277D837D0];
    *&v178[1] = v87;
    *(&v178[1] + 1) = v88;
    *&v178[2] = MEMORY[0x277D837E0];
    sub_24B5FF8CC();
    v89 = sub_24B5D9F04();
    v90 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
    WitnessTable = swift_getWitnessTable();
    v164[13] = v90;
    v164[14] = WitnessTable;
    v92 = swift_getWitnessTable();
    v164[11] = v89;
    v164[12] = v92;
    v93 = swift_getWitnessTable();
    v94 = sub_24B5D9FE8();
    v95 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
    v96 = swift_getWitnessTable();
    v164[9] = v95;
    v164[10] = v96;
    v97 = swift_getWitnessTable();
    v164[7] = v94;
    v164[8] = v97;
    v98 = swift_getWitnessTable();
    v164[5] = v93;
    v164[6] = v98;
    v164[4] = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_24B5FF87C();
    swift_getWitnessTable();
    v99 = sub_24B5FEF2C();
    v100 = swift_getWitnessTable();
    *&v178[0] = v99;
    *(&v178[0] + 1) = v100;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    *&v178[0] = v99;
    *(&v178[0] + 1) = v100;
    v102 = swift_getOpaqueTypeConformance2();
    *&v178[0] = OpaqueTypeMetadata2;
    *(&v178[0] + 1) = v102;
    swift_getOpaqueTypeMetadata2();
    *&v178[0] = OpaqueTypeMetadata2;
    *(&v178[0] + 1) = v102;
    swift_getOpaqueTypeConformance2();
    *&v178[0] = sub_24B5FEFAC();
    *(&v178[0] + 1) = v103;
    v104 = sub_24B5FEFBC();
    v105 = swift_getWitnessTable();
    sub_24B5FC7F0();

    v178[0] = v165;
    sub_24B5FC7F0();
    v164[0] = v164[2];
    v164[1] = v164[3];
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A160, &qword_24B609500);
    v107 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
    sub_24B5F7EAC(v164, v104, v106, v105, v107);
  }

  else
  {
    v161 = sub_24B5FF78C();
    *&v165 = v161;
    WORD4(v165) = 256;
    *&v160 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
    v158 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
    v159 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
    v157 = *(a1 + 16);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
    v156 = *(a1 + 24);
    v8 = sub_24B5C3D68();
    v9 = sub_24B5C3B90();
    v10 = sub_24B5D9BC8();
    v11 = sub_24B5D9C1C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
    v13 = sub_24B5D9C70();
    *&v178[0] = v12;
    *(&v178[0] + 1) = v13;
    v14 = swift_getOpaqueTypeConformance2();
    *&v178[0] = v157;
    *(&v178[0] + 1) = &type metadata for Modality;
    *&v178[1] = v7;
    v15 = v7;
    *(&v178[1] + 1) = v156;
    *&v178[2] = &protocol witness table for Modality;
    *(&v178[2] + 1) = &protocol witness table for Modality;
    *&v178[3] = v8;
    *(&v178[3] + 1) = v9;
    *&v178[4] = v10;
    *(&v178[4] + 1) = v11;
    *&v178[5] = v14;
    type metadata accessor for FilterModalitySectionView(255, v178);
    v159 = sub_24B5FF21C();
    sub_24B5FF21C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
    v16 = sub_24B5D9DB4();
    v17 = sub_24B5D9E08();
    v18 = sub_24B5D9E5C();
    v19 = sub_24B5D9EB0();
    *&v178[0] = v157;
    *(&v178[0] + 1) = &type metadata for Trainer;
    *&v178[1] = v15;
    *(&v178[1] + 1) = v156;
    *&v178[2] = &protocol witness table for Trainer;
    *(&v178[2] + 1) = &protocol witness table for Trainer;
    *&v178[3] = v16;
    *(&v178[3] + 1) = v17;
    *&v178[4] = v18;
    *(&v178[4] + 1) = v19;
    *&v178[5] = v14;
    type metadata accessor for FilterTrainerSectionView(255, v178);
    sub_24B5FF21C();
    sub_24B5FF21C();
    v20 = sub_24B5FF21C();
    v21 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
    *&v178[0] = v160;
    *(&v178[0] + 1) = MEMORY[0x277D837D0];
    *&v178[1] = v20;
    *(&v178[1] + 1) = v21;
    *&v178[2] = MEMORY[0x277D837E0];
    sub_24B5FF8CC();
    v22 = sub_24B5D9F04();
    v176 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
    v177 = swift_getWitnessTable();
    v174 = v22;
    v175 = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    v24 = sub_24B5D9FE8();
    v172 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
    v173 = swift_getWitnessTable();
    v170 = v24;
    v171 = swift_getWitnessTable();
    v168 = v23;
    v169 = swift_getWitnessTable();
    v167 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_24B5FF87C();
    swift_getWitnessTable();
    v25 = sub_24B5FEF2C();
    v26 = swift_getWitnessTable();
    *&v178[0] = v25;
    *(&v178[0] + 1) = v26;
    v27 = swift_getOpaqueTypeMetadata2();
    *&v178[0] = v25;
    *(&v178[0] + 1) = v26;
    v28 = swift_getOpaqueTypeConformance2();
    *&v178[0] = v27;
    *(&v178[0] + 1) = v28;
    swift_getOpaqueTypeMetadata2();
    *&v178[0] = v27;
    *(&v178[0] + 1) = v28;
    swift_getOpaqueTypeConformance2();
    v29 = sub_24B5FEFBC();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A160, &qword_24B609500);
    v31 = swift_getWitnessTable();
    v32 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
    sub_24B5F7FA4(&v165, v29, v30, v31, v32);
  }

  v160 = v178[0];
  LODWORD(v161) = LOBYTE(v178[1]);
  v165 = v178[0];
  v166 = v178[1];
  v159 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v158 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v108 = v163;
  v157 = *(v163 + 16);
  v109 = v157;
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v156 = *(v108 + 24);
  v111 = v156;
  v112 = sub_24B5C3D68();
  v113 = sub_24B5C3B90();
  v114 = sub_24B5D9BC8();
  v115 = sub_24B5D9C1C();
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v117 = sub_24B5D9C70();
  *&v178[0] = v116;
  *(&v178[0] + 1) = v117;
  v118 = swift_getOpaqueTypeConformance2();
  *&v178[0] = v109;
  *(&v178[0] + 1) = &type metadata for Modality;
  *&v178[1] = v110;
  *(&v178[1] + 1) = v111;
  *&v178[2] = &protocol witness table for Modality;
  *(&v178[2] + 1) = &protocol witness table for Modality;
  *&v178[3] = v112;
  *(&v178[3] + 1) = v113;
  *&v178[4] = v114;
  *(&v178[4] + 1) = v115;
  *&v178[5] = v118;
  type metadata accessor for FilterModalitySectionView(255, v178);
  v163 = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v119 = sub_24B5D9DB4();
  v120 = sub_24B5D9E08();
  v121 = sub_24B5D9E5C();
  v122 = sub_24B5D9EB0();
  *&v178[0] = v157;
  *(&v178[0] + 1) = &type metadata for Trainer;
  *&v178[1] = v110;
  *(&v178[1] + 1) = v156;
  *&v178[2] = &protocol witness table for Trainer;
  *(&v178[2] + 1) = &protocol witness table for Trainer;
  *&v178[3] = v119;
  *(&v178[3] + 1) = v120;
  *&v178[4] = v121;
  *(&v178[4] + 1) = v122;
  *&v178[5] = v118;
  type metadata accessor for FilterTrainerSectionView(255, v178);
  sub_24B5FF21C();
  sub_24B5FF21C();
  v123 = sub_24B5FF21C();
  v124 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
  *&v178[0] = v159;
  *(&v178[0] + 1) = MEMORY[0x277D837D0];
  *&v178[1] = v123;
  *(&v178[1] + 1) = v124;
  *&v178[2] = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v125 = sub_24B5D9F04();
  v126 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
  v127 = swift_getWitnessTable();
  v164[26] = v126;
  v164[27] = v127;
  v128 = swift_getWitnessTable();
  v164[24] = v125;
  v164[25] = v128;
  v129 = swift_getWitnessTable();
  v130 = sub_24B5D9FE8();
  v131 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  v132 = swift_getWitnessTable();
  v164[22] = v131;
  v164[23] = v132;
  v133 = swift_getWitnessTable();
  v164[20] = v130;
  v164[21] = v133;
  v134 = swift_getWitnessTable();
  v164[18] = v129;
  v164[19] = v134;
  v164[17] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  v135 = sub_24B5FEF2C();
  v136 = swift_getWitnessTable();
  *&v178[0] = v135;
  *(&v178[0] + 1) = v136;
  v137 = swift_getOpaqueTypeMetadata2();
  *&v178[0] = v135;
  *(&v178[0] + 1) = v136;
  v138 = swift_getOpaqueTypeConformance2();
  *&v178[0] = v137;
  *(&v178[0] + 1) = v138;
  swift_getOpaqueTypeMetadata2();
  *&v178[0] = v137;
  *(&v178[0] + 1) = v138;
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  sub_24B5FF21C();
  v139 = swift_getWitnessTable();
  v140 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
  v164[15] = v139;
  v164[16] = v140;
  swift_getWitnessTable();
  sub_24B5FC7F0();
  return sub_24B5DB830(v160, *(&v160 + 1), v161);
}

uint64_t sub_24B5DB83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A208, &qword_24B608118);
  MEMORY[0x28223BE20](v31);
  v34 = &v28 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A210, &qword_24B608120);
  v33 = *(v35 - 8);
  v8 = MEMORY[0x28223BE20](v35);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = sub_24B5FF27C();
  MEMORY[0x28223BE20](v12 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A218, &qword_24B608128);
  v37 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v28 - v13;
  sub_24B5FF26C();
  v44 = a2;
  v45 = a3;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A220, &qword_24B608130);
  sub_24B58085C(&qword_27F01A228, &qword_27F01A220, &qword_24B608130, MEMORY[0x277CE1198]);
  v29 = v14;
  sub_24B5FEF6C();
  sub_24B5FF24C();
  v41 = a2;
  v42 = a3;
  v15 = a1;
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A230, &qword_24B608138);
  swift_getOpaqueTypeConformance2();
  v16 = v11;
  sub_24B5FEF6C();
  sub_24B5FF25C();
  v38 = a2;
  v39 = a3;
  v40 = v15;
  v17 = v32;
  sub_24B5FEF6C();
  v18 = *(v31 + 48);
  v19 = *(v31 + 64);
  v20 = v34;
  v21 = v30;
  (*(v37 + 16))(v34, v14, v30);
  v22 = v33;
  v23 = *(v33 + 16);
  v24 = &v20[v18];
  v25 = v35;
  v23(v24, v16, v35);
  v23(&v20[v19], v17, v25);
  sub_24B5FF1EC();
  v26 = *(v22 + 8);
  v26(v17, v25);
  v26(v16, v25);
  return (*(v37 + 8))(v29, v21);
}

uint64_t sub_24B5DBCA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_24B5DBCB4@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_24B5FF1CC();
  sub_24B5DBD60(a2, a3, v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a4 + 33) = *&v9[16];
  result = *&v9[32];
  *(a4 + 49) = *&v9[32];
  *(a4 + 65) = *&v9[48];
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 80) = *&v9[63];
  *(a4 + 17) = *v9;
  return result;
}

uint64_t sub_24B5DBD60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v5 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24B5FFABC();
  MEMORY[0x28223BE20](v9 - 8);
  sub_24B5FFAAC();
  sub_24B5FFA9C();
  type metadata accessor for FilterView(0, a1, a2, v10);
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FFA8C();

  sub_24B5FFA9C();
  sub_24B5FFACC();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v11 = qword_27F02AD70;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v48 = sub_24B5FFAFC();
  v49 = v12;
  v41[2] = sub_24B58096C();
  v13 = sub_24B5FF53C();
  v15 = v14;
  v41[1] = v7;
  v17 = v16;
  sub_24B5FF45C();
  sub_24B5FF46C();

  v18 = sub_24B5FF50C();
  v44 = v19;
  v45 = v18;
  v43 = v20;
  v42 = v21;

  sub_24B5809C0(v13, v15, v17 & 1);

  sub_24B5FFAAC();
  sub_24B5FFA9C();
  v48 = sub_24B5D8D78();
  sub_24B5FFA7C();
  sub_24B5FFA9C();
  sub_24B5FFACC();
  v22 = qword_27F02AD70;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v48 = sub_24B5FFAFC();
  v49 = v23;
  v24 = sub_24B5FF53C();
  v26 = v25;
  LOBYTE(v15) = v27;
  sub_24B5FF4BC();
  v28 = sub_24B5FF50C();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_24B5809C0(v24, v26, v15 & 1);

  v35 = v42 & 1;
  v47 = v42 & 1;
  LOBYTE(v48) = v42 & 1;
  v50 = v32 & 1;
  v37 = v45;
  v36 = v46;
  v39 = v43;
  v38 = v44;
  *v46 = v45;
  v36[1] = v39;
  *(v36 + 16) = v35;
  v36[3] = v38;
  v36[4] = v28;
  v36[5] = v30;
  *(v36 + 48) = v32 & 1;
  v36[7] = v34;
  sub_24B580A5C(v37, v39, v35);

  sub_24B580A5C(v28, v30, v32 & 1);

  sub_24B5809C0(v28, v30, v32 & 1);

  sub_24B5809C0(v37, v39, v47);
}

uint64_t sub_24B5DC248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F02AD70;
  type metadata accessor for FilterView(0, a2, a3, v7);
  v9 = v8;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FFAFC();
  sub_24B58096C();
  return sub_24B5FF53C();
}

uint64_t sub_24B5DC3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a6;
  v27 = a7;
  v23[0] = a3;
  v23[1] = a5;
  v25 = a8;
  v11 = type metadata accessor for FilterView(0, a2, a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v24 = sub_24B5FEF0C();
  v15 = *(v24 - 8);
  v16 = MEMORY[0x28223BE20](v24);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v16);
  (*(v12 + 16))(v14, a1, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v21 = v23[0];
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v12 + 32))(v20 + v19, v14, v11);
  v28 = a2;
  v29 = v21;
  v30 = a1;
  sub_24B5FEE9C();

  return (*(v15 + 8))(v18, v24);
}

uint64_t sub_24B5DC5F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilterView(0, a2, a3, v10);
  sub_24B5D83A4();
  *v9 = a4;
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5E3948(v9, type metadata accessor for FilterAction);
}

uint64_t sub_24B5DC6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F02AD70;
  type metadata accessor for FilterView(0, a2, a3, v7);
  v9 = v8;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FFAFC();
  sub_24B58096C();
  v10 = sub_24B5FF53C();
  v12 = v11;
  v14 = v13;
  v15 = sub_24B5FF4FC();
  sub_24B5809C0(v10, v12, v14 & 1);

  return v15;
}

uint64_t sub_24B5DC9C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for FilterView(0, v6, v7, a4) - 8);
  return sub_24B5DC5F0(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

uint64_t sub_24B5DCA50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B5DCAD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B5DCB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v66 = a3;
  v64 = a2;
  v65 = a1;
  v72 = a6;
  v71 = sub_24B5FF23C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24B5FF2AC();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v59 = v9;
  v10 = sub_24B5C3D68();
  v11 = sub_24B5C3B90();
  v12 = sub_24B5D9BC8();
  v13 = sub_24B5D9C1C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v15 = sub_24B5D9C70();
  v91 = v14;
  v92 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = a4;
  v91 = a4;
  v92 = &type metadata for Modality;
  v93 = v9;
  v17 = v73;
  v94 = v73;
  v95 = &protocol witness table for Modality;
  v96 = &protocol witness table for Modality;
  v97 = v10;
  v98 = v11;
  v99 = v12;
  v100 = v13;
  v101 = OpaqueTypeConformance2;
  type metadata accessor for FilterModalitySectionView(255, &v91);
  v60 = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v18 = sub_24B5D9DB4();
  v19 = sub_24B5D9E08();
  v20 = sub_24B5D9E5C();
  v21 = sub_24B5D9EB0();
  v91 = a4;
  v92 = &type metadata for Trainer;
  v93 = v59;
  v94 = v17;
  v95 = &protocol witness table for Trainer;
  v96 = &protocol witness table for Trainer;
  v97 = v18;
  v98 = v19;
  v99 = v20;
  v100 = v21;
  v101 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView(255, &v91);
  sub_24B5FF21C();
  sub_24B5FF21C();
  v22 = sub_24B5FF21C();
  v23 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
  v91 = v61;
  v92 = MEMORY[0x277D837D0];
  v93 = v22;
  v94 = v23;
  v95 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v24 = sub_24B5D9F04();
  v25 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
  WitnessTable = swift_getWitnessTable();
  v89 = v25;
  v90 = WitnessTable;
  v27 = swift_getWitnessTable();
  v87 = v24;
  v88 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24B5D9FE8();
  v30 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  v31 = swift_getWitnessTable();
  v85 = v30;
  v86 = v31;
  v32 = swift_getWitnessTable();
  v83 = v29;
  v84 = v32;
  v33 = swift_getWitnessTable();
  v81 = v28;
  v82 = v33;
  v80 = swift_getWitnessTable();
  swift_getWitnessTable();
  v34 = sub_24B5FF87C();
  v35 = swift_getWitnessTable();
  v36 = sub_24B5FEF2C();
  v58 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v58 - v37;
  v39 = swift_getWitnessTable();
  v91 = v36;
  v92 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &v58 - v41;
  v91 = v36;
  v92 = v39;
  v43 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  v92 = v43;
  v59 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v60 = *(v44 - 8);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v58 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v58 - v48;
  v75 = v62;
  v76 = v73;
  v77 = v64;
  v78 = v66;
  v79 = v65;
  v50 = sub_24B5FF3DC();
  sub_24B5EB7C0(v50, sub_24B5E2914, v74, v34, v35);
  v51 = sub_24B5FF41C();
  v52 = v63;
  sub_24B5FF29C();
  MEMORY[0x24C2435C0](v51, 0x4034000000000000, 0, v52, v36, v39);
  (*(v67 + 8))(v52, v68);
  v53 = v36;
  v54 = v69;
  (*(v58 + 8))(v38, v53);
  sub_24B5FF22C();
  LOBYTE(v51) = sub_24B5FF3DC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v51)
  {
    sub_24B5FF3CC();
  }

  v55 = v59;
  sub_24B5FF66C();
  (*(v70 + 8))(v54, v71);
  (*(v61 + 8))(v42, OpaqueTypeMetadata2);
  v91 = OpaqueTypeMetadata2;
  v92 = v55;
  swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0();
  v56 = *(v60 + 8);
  v56(v47, v44);
  sub_24B5FC7F0();
  return (v56)(v49, v44);
}

uint64_t sub_24B5DD550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(type metadata accessor for FilterView(0, v6, v7, a2) - 8);
  v9 = v3[4];
  v10 = v3 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_24B5DCB7C(a1, v9, v10, v6, v7, a3);
}

uint64_t sub_24B5DD5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a3;
  v37 = a2;
  v36 = a1;
  v39 = a6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v32[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v8 = sub_24B5C3D68();
  v9 = sub_24B5C3B90();
  v10 = sub_24B5D9BC8();
  v11 = sub_24B5D9C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  sub_24B5D9C70();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = a4;
  v57 = &type metadata for Modality;
  v35 = a4;
  v58 = v32[0];
  v59 = a5;
  v13 = a5;
  v34 = a5;
  v60 = &protocol witness table for Modality;
  v61 = &protocol witness table for Modality;
  v62 = v8;
  v63 = v9;
  v64 = v10;
  v65 = v11;
  v66 = OpaqueTypeConformance2;
  type metadata accessor for FilterModalitySectionView(255, &v56);
  v32[2] = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v14 = sub_24B5D9DB4();
  v15 = sub_24B5D9E08();
  v16 = sub_24B5D9E5C();
  v17 = sub_24B5D9EB0();
  v56 = a4;
  v57 = &type metadata for Trainer;
  v58 = v32[0];
  v59 = v13;
  v60 = &protocol witness table for Trainer;
  v61 = &protocol witness table for Trainer;
  v62 = v14;
  v63 = v15;
  v64 = v16;
  v65 = v17;
  v66 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView(255, &v56);
  sub_24B5FF21C();
  sub_24B5FF21C();
  v18 = sub_24B5FF21C();
  v19 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
  v56 = v33;
  v57 = MEMORY[0x277D837D0];
  v58 = v18;
  v59 = v19;
  v60 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v20 = sub_24B5D9F04();
  v54 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
  WitnessTable = swift_getWitnessTable();
  v52 = v20;
  v53 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = sub_24B5D9FE8();
  v50 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  v51 = swift_getWitnessTable();
  v48 = v22;
  v49 = swift_getWitnessTable();
  v46 = v21;
  v47 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  swift_getWitnessTable();
  v23 = sub_24B5FF87C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v32 - v28;
  sub_24B5FF1DC();
  v40 = v35;
  v41 = v34;
  v42 = v36;
  v43 = v37;
  v44 = v38;
  sub_24B5FF86C();
  swift_getWitnessTable();
  sub_24B5FC7F0();
  v30 = *(v24 + 8);
  v30(v27, v23);
  sub_24B5FC7F0();
  return (v30)(v29, v23);
}

uint64_t sub_24B5DDBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a3;
  v75 = a2;
  v78 = a1;
  v79 = a6;
  v74 = sub_24B5FEF9C();
  v73 = *(v74 - 8);
  v76 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for FilterView(0, a4, a5, v9);
  v67 = *(v70 - 8);
  v71 = *(v67 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v55 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v12 = sub_24B5C3D68();
  v13 = sub_24B5C3B90();
  v14 = sub_24B5D9BC8();
  v15 = sub_24B5D9C1C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v17 = sub_24B5D9C70();
  v91 = v16;
  v92 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = a4;
  v91 = a4;
  v92 = &type metadata for Modality;
  v93 = v11;
  v94 = a5;
  v56 = a5;
  v95 = &protocol witness table for Modality;
  v96 = &protocol witness table for Modality;
  v97 = v12;
  v98 = v13;
  v99 = v14;
  v100 = v15;
  v101 = OpaqueTypeConformance2;
  v64 = type metadata accessor for FilterModalitySectionView(255, &v91);
  v66 = sub_24B5FF21C();
  v58 = sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v19 = sub_24B5D9DB4();
  v20 = sub_24B5D9E08();
  v21 = sub_24B5D9E5C();
  v22 = sub_24B5D9EB0();
  v91 = a4;
  v92 = &type metadata for Trainer;
  v93 = v11;
  v94 = a5;
  v95 = &protocol witness table for Trainer;
  v96 = &protocol witness table for Trainer;
  v97 = v19;
  v98 = v20;
  v99 = v21;
  v100 = v22;
  v101 = OpaqueTypeConformance2;
  v59 = type metadata accessor for FilterTrainerSectionView(255, &v91);
  v62 = sub_24B5FF21C();
  v63 = sub_24B5FF21C();
  v23 = sub_24B5FF21C();
  v60 = v23;
  v24 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
  v91 = v69;
  v92 = MEMORY[0x277D837D0];
  v93 = v23;
  v94 = v24;
  v95 = MEMORY[0x277D837E0];
  v25 = sub_24B5FF8CC();
  v69 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v61 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v65 = &v55 - v28;
  v29 = v67;
  v30 = v68;
  v31 = v70;
  (*(v67 + 16))(v68, v75, v70);
  v32 = v73;
  v33 = v72;
  v34 = v74;
  (*(v73 + 16))(v72, v77, v74);
  v35 = v29;
  v36 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v37 = (v71 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = swift_allocObject();
  v39 = v56;
  *(v38 + 16) = v57;
  *(v38 + 24) = v39;
  (*(v35 + 32))(v38 + v36, v30, v31);
  (*(v32 + 32))(v38 + v37, v33, v34);
  type metadata accessor for FilterSectionDescriptor(0);
  v40 = sub_24B5D9F04();
  v41 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);

  WitnessTable = swift_getWitnessTable();
  v89 = v41;
  v90 = WitnessTable;
  v43 = swift_getWitnessTable();
  v87 = v40;
  v88 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_24B5D9FE8();
  v46 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  v47 = swift_getWitnessTable();
  v85 = v46;
  v86 = v47;
  v48 = swift_getWitnessTable();
  v83 = v45;
  v84 = v48;
  v49 = swift_getWitnessTable();
  v81 = v44;
  v82 = v49;
  v50 = swift_getWitnessTable();
  sub_24B5C3F00(&qword_27F01A238, &protocol conformance descriptor for FilterSectionDescriptor);
  sub_24B5C3F00(&qword_27F01A240, &protocol conformance descriptor for FilterSectionDescriptor);
  v51 = v61;
  sub_24B5FF8AC();
  v80 = v50;
  swift_getWitnessTable();
  v52 = v65;
  sub_24B5FC7F0();
  v53 = *(v69 + 8);
  v53(v51, v25);
  sub_24B5FC7F0();
  return (v53)(v52, v25);
}

uint64_t sub_24B5DE450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a4;
  v100 = a3;
  v98 = a2;
  v94 = a1;
  v95 = a7;
  v9 = type metadata accessor for FilterSectionDescriptor(0);
  v88 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = v10;
  v97 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FilterView(0, a5, a6, v11);
  v91 = *(v92 - 8);
  v12 = MEMORY[0x28223BE20](v92);
  v90 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v13;
  MEMORY[0x28223BE20](v12);
  v96 = v71 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v16 = sub_24B5C3D68();
  v17 = sub_24B5C3B90();
  v18 = sub_24B5D9BC8();
  v19 = sub_24B5D9C1C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v21 = sub_24B5D9C70();
  v111 = v20;
  v112 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = a5;
  v112 = &type metadata for Modality;
  v113 = v15;
  v114 = a6;
  v115 = &protocol witness table for Modality;
  v116 = &protocol witness table for Modality;
  v117 = v16;
  v118 = v17;
  v119 = v18;
  v120 = v19;
  v121 = OpaqueTypeConformance2;
  v81 = type metadata accessor for FilterModalitySectionView(255, &v111);
  v82 = sub_24B5FF21C();
  v23 = sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v24 = sub_24B5D9DB4();
  v25 = sub_24B5D9E08();
  v26 = sub_24B5D9E5C();
  v27 = sub_24B5D9EB0();
  v93 = a5;
  v111 = a5;
  v112 = &type metadata for Trainer;
  v89 = v15;
  v113 = v15;
  v114 = a6;
  v99 = a6;
  v115 = &protocol witness table for Trainer;
  v116 = &protocol witness table for Trainer;
  v117 = v24;
  v118 = v25;
  v119 = v26;
  v120 = v27;
  v78 = OpaqueTypeConformance2;
  v121 = OpaqueTypeConformance2;
  v74 = type metadata accessor for FilterTrainerSectionView(255, &v111);
  v75 = sub_24B5FF21C();
  v28 = sub_24B5FF21C();
  v83 = v23;
  v77 = v28;
  v85 = sub_24B5FF21C();
  v84 = *(v85 - 8);
  v29 = MEMORY[0x28223BE20](v85);
  v76 = v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v79 = v71 - v31;
  v32 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v32 - 8);
  v33 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v33 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v34 = qword_27F02AD70;
  v35 = v92;
  v36 = v100;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v73 = sub_24B5FFAFC();
  v72 = v37;
  sub_24B5FEF8C();
  v39 = v38;
  v40 = v91;
  v86 = *(v91 + 16);
  v41 = v35;
  v86(v96, v36, v35);
  sub_24B5D5A20(v98, v97);
  v42 = *(v40 + 80);
  v43 = (v42 + 32) & ~v42;
  v80 += v43;
  v71[1] = v42 | 7;
  v44 = (v80 + *(v88 + 80)) & ~*(v88 + 80);
  v45 = (v87 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = v93;
  v48 = v99;
  *(v46 + 16) = v93;
  *(v46 + 24) = v48;
  v91 = *(v40 + 32);
  (v91)(v46 + v43, v96, v41);
  sub_24B5E2A78(v97, v46 + v44);
  v49 = v94;
  *(v46 + v45) = v94;
  v50 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
  v51 = v72;
  *v50 = v73;
  v50[1] = v51;
  v52 = v90;
  v86(v90, v100, v41);
  v53 = (v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v99;
  *(v54 + 16) = v47;
  *(v54 + 24) = v55;
  (v91)(v54 + v43, v52, v41);
  *(v54 + v53) = v49;
  v56 = v76;
  sub_24B5DF96C(v98, sub_24B5E2ADC, v46, sub_24B5E2C08, v54, v41, v89, v78, v76, v39);

  v57 = sub_24B5D9F04();
  v58 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
  WitnessTable = swift_getWitnessTable();
  v109 = v58;
  v110 = WitnessTable;
  v60 = swift_getWitnessTable();
  v107 = v57;
  v108 = v60;
  v61 = swift_getWitnessTable();
  v62 = sub_24B5D9FE8();
  v63 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  v64 = swift_getWitnessTable();
  v105 = v63;
  v106 = v64;
  v65 = swift_getWitnessTable();
  v103 = v62;
  v104 = v65;
  v66 = swift_getWitnessTable();
  v101 = v61;
  v102 = v66;
  v67 = v85;
  swift_getWitnessTable();
  v68 = v79;
  sub_24B5FC7F0();
  v69 = *(v84 + 8);
  v69(v56, v67);
  sub_24B5FC7F0();
  return (v69)(v68, v67);
}

uint64_t sub_24B5DEE40@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a7;
  v60 = a6;
  v58 = a5;
  v57 = a4;
  v64 = a1;
  v67 = a8;
  v69 = sub_24B5FFA3C();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B5FF9DC();
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B5FEDEC();
  v59 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v53 - v16;
  v17 = sub_24B5FF9FC();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  MEMORY[0x28223BE20](v20 - 8);
  v62 = &v53 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v56 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v53 - v25;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A098, &qword_24B608030);
  MEMORY[0x28223BE20](v61);
  v28 = &v53 - v27;
  v29 = *(type metadata accessor for FilterSectionDescriptor(0) + 20);
  sub_24B57BAFC(a2 + v29, v26, &qword_27F018BD0, &unk_24B6022F0);
  if (a3)
  {
    v31 = 0;
  }

  else
  {
    v31 = v57;
  }

  if (a3)
  {
    v32 = 0;
  }

  else
  {
    v32 = v58;
  }

  v33 = type metadata accessor for FilterView(0, v60, v63, v30);
  v63 = v28;
  v34 = v32;
  v35 = v59;
  sub_24B5DF598(v26, v31, v34, v33, v28);
  sub_24B58090C(v26, &qword_27F018BD0, &unk_24B6022F0);

  v64 = v19;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v37 = a2 + v29;
  v38 = v56;
  sub_24B57BAFC(v37, v56, &qword_27F018BD0, &unk_24B6022F0);
  v39 = (*(v35 + 48))(v38, 1, v13);
  v40 = MEMORY[0x277D837D0];
  if (v39 == 1)
  {
    v41 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
LABEL_11:
    *v41 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_12;
  }

  v42 = v55;
  (*(v35 + 32))(v55, v38, v13);
  (*(v35 + 16))(v54, v42, v13);
  v43 = sub_24B5FFB0C();
  v45 = v44;
  (*(v35 + 8))(v42, v13);
  v41 = (inited + 48);
  *(inited + 72) = v40;
  if (!v45)
  {
    goto LABEL_11;
  }

  *v41 = v43;
LABEL_12:
  *(inited + 56) = v45;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v40;
  *(inited + 128) = 0x6973736572706D69;
  v46 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = a3;
  *(inited + 168) = v46;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v40;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v47 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v47);
  v48 = v62;
  sub_24B5FFA0C();
  v49 = sub_24B5FFA1C();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  v50 = v66;
  sub_24B5FFA2C();
  sub_24B5D9C70();
  v51 = v63;
  sub_24B5FF55C();
  (*(v68 + 8))(v50, v69);
  sub_24B58090C(v48, &qword_27F018910, &qword_24B606920);
  return sub_24B58090C(v51, &qword_27F01A098, &qword_24B608030);
}

uint64_t sub_24B5DF598@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A0C0, &qword_24B608040);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A0B0, &qword_24B608038);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  *v14 = sub_24B5FF12C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A2E8, &qword_24B6081D0);
  sub_24B5E3F30(a1, a2, a3, v6, *(a4 + 16), *(a4 + 24), &v14[*(v19 + 44)]);
  sub_24B5FF90C();
  sub_24B5FF03C();
  sub_24B5CD578(v14, v18, &qword_27F01A0C0, &qword_24B608040);
  v20 = &v18[*(v16 + 44)];
  v21 = v36[5];
  *(v20 + 4) = v36[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v36[6];
  v22 = v36[1];
  *v20 = v36[0];
  *(v20 + 1) = v22;
  v23 = v36[3];
  *(v20 + 2) = v36[2];
  *(v20 + 3) = v23;
  v24 = sub_24B5FF41C();
  v25 = sub_24B5FF43C();
  sub_24B5FF43C();
  if (sub_24B5FF43C() != v24)
  {
    v25 = sub_24B5FF43C();
  }

  sub_24B5FEF1C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_24B5CD578(v18, a5, &qword_27F01A0B0, &qword_24B608038);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A098, &qword_24B608030);
  v35 = a5 + *(result + 36);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_24B5DF808(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a7;
  v22 = a4;
  v24 = a3;
  v25 = a5;
  v23 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v23);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *a2;
  LOBYTE(a2) = *(a1 + 40);
  type metadata accessor for FilterView(0, a6, v21, v18);
  sub_24B5D83A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0);
  *v11 = v13;
  *(v11 + 1) = v12;
  *(v11 + 2) = v14;
  *(v11 + 3) = v15;
  *(v11 + 4) = v16;
  v11[40] = a2;
  v11[41] = v17;
  sub_24B57BA1C(v13, v12, v14, v15, v16, a2);
  MEMORY[0x24C242E00](v24, v25);
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5E3948(v11, type metadata accessor for FilterAction);
}

uint64_t sub_24B5DF96C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v478 = a5;
  v477 = a4;
  v489 = a3;
  v479 = a2;
  v474 = a1;
  v486 = a9;
  v473 = a6;
  v13 = *(a6 + 16);
  v14 = *(a6 + 24);
  v15 = sub_24B5D9DB4();
  v16 = sub_24B5D9E08();
  v17 = sub_24B5D9E5C();
  v618 = v13;
  v619 = &type metadata for Trainer;
  *&v620 = a7;
  *(&v620 + 1) = v14;
  v621 = &protocol witness table for Trainer;
  v622 = &protocol witness table for Trainer;
  v437 = v16;
  v438 = v15;
  v623 = v15;
  v624 = v16;
  v435 = sub_24B5D9EB0();
  v436 = v17;
  v625 = v17;
  v626 = v435;
  v627 = a8;
  v18 = type metadata accessor for FilterTrainerSectionView(0, &v618);
  v468 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v459 = &v408 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v458 = &v408 - v21;
  v22 = sub_24B5D5160();
  v23 = sub_24B5D4BEC();
  v24 = sub_24B5E2CD8();
  v25 = sub_24B5E2D2C();
  v618 = &type metadata for Theme;
  v619 = a7;
  *&v620 = &protocol witness table for Theme;
  *(&v620 + 1) = &protocol witness table for Theme;
  v433 = v23;
  v434 = v22;
  v621 = v22;
  v622 = v23;
  v431 = v25;
  v432 = v24;
  v623 = v24;
  v624 = v25;
  v625 = a8;
  v496 = type metadata accessor for FilterThemeSectionView(255, &v618);
  v498 = v18;
  v26 = sub_24B5FF21C();
  v461 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v460 = &v408 - v27;
  v428 = type metadata accessor for FilterLayout(0);
  MEMORY[0x28223BE20](v428);
  v425 = &v408 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24B5E2D80();
  v30 = sub_24B5E2DD4();
  v31 = sub_24B5E2E28();
  v32 = sub_24B5E2E7C();
  v618 = &type metadata for SkillLevel;
  v619 = a7;
  *&v620 = &protocol witness table for SkillLevel;
  *(&v620 + 1) = &protocol witness table for SkillLevel;
  v429 = v30;
  v430 = v29;
  v621 = v29;
  v622 = v30;
  v426 = v32;
  v427 = v31;
  v623 = v31;
  v624 = v32;
  v625 = a8;
  v33 = type metadata accessor for FilterStandardSectionView(0, &v618);
  v467 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v455 = (&v408 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v454 = &v408 - v36;
  v37 = sub_24B5E2ED0();
  v38 = sub_24B5E2F24();
  v39 = sub_24B5E2F78();
  v40 = sub_24B5E2FCC();
  v618 = &type metadata for MusicGenre;
  v619 = a7;
  *&v620 = &protocol witness table for MusicGenre;
  *(&v620 + 1) = &protocol witness table for MusicGenre;
  v423 = v38;
  v424 = v37;
  v621 = v37;
  v622 = v38;
  v421 = v40;
  v422 = v39;
  v623 = v39;
  v624 = v40;
  v625 = a8;
  v41 = type metadata accessor for FilterStandardSectionView(255, &v618);
  v501 = v33;
  v42 = sub_24B5FF21C();
  v457 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v456 = &v408 - v43;
  v495 = v44;
  v497 = v26;
  v45 = sub_24B5FF21C();
  v470 = *(v45 - 8);
  v46 = MEMORY[0x28223BE20](v45);
  v471 = &v408 - v47;
  v499 = v41;
  v466 = *(v41 - 8);
  v48 = MEMORY[0x28223BE20](v46);
  v453 = (&v408 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v48);
  v452 = &v408 - v50;
  v51 = sub_24B5C3D68();
  v52 = sub_24B5C3B90();
  v53 = sub_24B5D9BC8();
  v54 = sub_24B5D9C1C();
  *&v490 = v13;
  v618 = v13;
  v619 = &type metadata for Modality;
  *&v620 = a7;
  *(&v620 + 1) = v14;
  v476 = v14;
  v621 = &protocol witness table for Modality;
  v622 = &protocol witness table for Modality;
  v419 = v52;
  v420 = v51;
  v623 = v51;
  v624 = v52;
  v417 = v54;
  v418 = v53;
  v625 = v53;
  v626 = v54;
  v627 = a8;
  v55 = type metadata accessor for FilterModalitySectionView(0, &v618);
  v465 = *(v55 - 8);
  v56 = MEMORY[0x28223BE20](v55);
  v449 = &v408 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v448 = &v408 - v58;
  v59 = sub_24B5E3020();
  v60 = sub_24B5E3074();
  v61 = sub_24B5E30C8();
  v62 = sub_24B5E311C();
  v618 = &type metadata for Equipment;
  v619 = a7;
  *&v620 = &protocol witness table for Equipment;
  *(&v620 + 1) = &protocol witness table for Equipment;
  v415 = v60;
  v416 = v59;
  v621 = v59;
  v622 = v60;
  v413 = v62;
  v414 = v61;
  v623 = v61;
  v624 = v62;
  v625 = a8;
  v63 = type metadata accessor for FilterStandardSectionView(255, &v618);
  v494 = v55;
  v64 = sub_24B5FF21C();
  v451 = *(v64 - 8);
  v65 = MEMORY[0x28223BE20](v64);
  v450 = &v408 - v66;
  v500 = v63;
  v464 = *(v63 - 8);
  v67 = MEMORY[0x28223BE20](v65);
  v447 = (&v408 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67);
  v446 = &v408 - v69;
  v70 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v70 - 8);
  v441 = &v408 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24B5AE4A8();
  v73 = sub_24B5AE3AC();
  v74 = sub_24B5E3170();
  v75 = sub_24B5E31C4();
  v618 = &type metadata for Duration;
  v619 = a7;
  *&v620 = &protocol witness table for Duration;
  *(&v620 + 1) = &protocol witness table for Duration;
  v411 = v73;
  v412 = v72;
  v621 = v72;
  v622 = v73;
  v409 = v75;
  v410 = v74;
  v623 = v74;
  v624 = v75;
  v625 = a8;
  v76 = type metadata accessor for FilterDurationSectionView(0, &v618);
  v463 = *(v76 - 8);
  v77 = MEMORY[0x28223BE20](v76);
  v443 = &v408 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v442 = &v408 - v79;
  v80 = sub_24B5E3218();
  v81 = sub_24B5E326C();
  v82 = sub_24B5E32C0();
  v83 = sub_24B5E3314();
  v618 = &type metadata for BodyFocus;
  v619 = a7;
  v488 = a7;
  *&v620 = &protocol witness table for BodyFocus;
  *(&v620 + 1) = &protocol witness table for BodyFocus;
  v408 = v80;
  v621 = v80;
  v622 = v81;
  v623 = v82;
  v624 = v83;
  v625 = a8;
  v84 = type metadata accessor for FilterStandardSectionView(255, &v618);
  v492 = v76;
  v85 = sub_24B5FF21C();
  v445 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v444 = &v408 - v86;
  v493 = v87;
  v484 = v64;
  v88 = sub_24B5FF21C();
  v469 = *(v88 - 8);
  v89 = MEMORY[0x28223BE20](v88);
  v472 = &v408 - v90;
  v91 = v473;
  v92 = *(v473 - 8);
  v93 = *(v92 + 64);
  v94 = MEMORY[0x28223BE20](v89);
  v487 = &v408 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = v84;
  v462 = *(v84 - 8);
  v95 = MEMORY[0x28223BE20](v94);
  v440 = (&v408 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v95);
  v439 = &v408 - v97;
  v480 = v98;
  v485 = v45;
  v483 = sub_24B5FF21C();
  v482 = *(v483 - 8);
  MEMORY[0x28223BE20](v483);
  v100 = &v408 - v99;
  v101 = v474 + *(type metadata accessor for FilterSectionDescriptor(0) + 24);
  v102 = *v101;
  v103 = *(v101 + 8);
  v481 = v100;
  if (v103 > 3)
  {
    if (v103 > 5)
    {
      if (v103 == 6)
      {

        v202 = v91;
        v203 = v475;
        sub_24B5D83A4();
        swift_getKeyPath();
        v204 = v425;
        sub_24B5FF9AC();

        LODWORD(v472) = *(v204 + *(v428 + 20));
        sub_24B5E3948(v204, type metadata accessor for FilterLayout);
        v205 = v487;
        (*(v92 + 16))(v487, v203, v202);
        v206 = (*(v92 + 80) + 48) & ~*(v92 + 80);
        v207 = (v93 + v206 + 7) & 0xFFFFFFFFFFFFFFF8;
        v208 = swift_allocObject();
        v209 = v102;
        v210 = v488;
        *(v208 + 2) = v490;
        *(v208 + 3) = v210;
        *(v208 + 4) = v476;
        *(v208 + 5) = a8;
        (*(v92 + 32))(&v208[v206], v205, v202);
        v211 = &v208[v207];
        v212 = v478;
        *v211 = v477;
        v211[1] = v212;
        FilterThemeSectionView.init(sizeClass:headerViewBuilder:options:onOptionSelected:)(v472, v479, v489, v209, sub_24B5E39A8, v208, v589);
        v586[0] = v589[0];
        v587[0] = *v590;
        v587[1] = *&v590[16];
        v588 = v591;
        v213 = v496;
        WitnessTable = swift_getWitnessTable();
        sub_24B5FC7F0();

        v586[0] = v618;
        *&v587[0] = v619;
        v490 = v620;
        *(v587 + 8) = v620;
        *(&v587[1] + 1) = v621;
        v588 = v622;
        sub_24B5FC7F0();

        v586[0] = v589[0];
        *&v587[0] = *v590;
        *(v587 + 8) = *&v590[8];
        *(&v587[1] + 1) = *&v590[24];
        v588 = v591;

        v215 = v498;
        v216 = swift_getWitnessTable();
        v217 = v460;
        sub_24B5F7EAC(v586, v213, v215, WitnessTable, v216);

        v218 = swift_getWitnessTable();
        v219 = swift_getWitnessTable();
        v584 = v218;
        v585 = v219;
        v220 = v495;
        v221 = swift_getWitnessTable();
        v582 = WitnessTable;
        v583 = v216;
        v222 = v497;
        v223 = swift_getWitnessTable();
        v224 = v471;
        sub_24B5F7FA4(v217, v220, v222, v221, v223);
        (*(v461 + 8))(v217, v222);
        v225 = swift_getWitnessTable();
        v226 = swift_getWitnessTable();
        v580 = v225;
        v581 = v226;
        v227 = swift_getWitnessTable();
        v228 = swift_getWitnessTable();
        v229 = swift_getWitnessTable();
        v578 = v228;
        v579 = v229;
        v230 = swift_getWitnessTable();
        v576 = v227;
        v577 = v230;
        v231 = v480;
        v232 = swift_getWitnessTable();
        v574 = v221;
        v575 = v223;
        v233 = v485;
        v234 = swift_getWitnessTable();
        v134 = v481;
        sub_24B5F7FA4(v224, v231, v233, v232, v234);
        (*(v470 + 8))(v224, v233);
      }

      else
      {
        v474 = v102;

        v334 = v91;
        v335 = v475;
        v472 = sub_24B5D84EC(v91);
        v469 = v336;
        v337 = v487;
        (*(v92 + 16))(v487, v335, v91);
        v338 = (*(v92 + 80) + 48) & ~*(v92 + 80);
        v339 = (v93 + v338 + 7) & 0xFFFFFFFFFFFFFFF8;
        v340 = swift_allocObject();
        v341 = v488;
        *(v340 + 2) = v490;
        *(v340 + 3) = v341;
        v342 = v476;
        *(v340 + 4) = v476;
        *(v340 + 5) = a8;
        (*(v92 + 32))(&v340[v338], v337, v334);
        v343 = &v340[v339];
        v344 = v478;
        *v343 = v477;
        v343[1] = v344;

        *(&v404 + 1) = v436;
        *&v404 = v437;
        *(&v397 + 1) = v438;
        *&v397 = &protocol witness table for Trainer;
        *&v390 = v342;
        *(&v390 + 1) = &protocol witness table for Trainer;
        *(&v387 + 1) = v341;
        *&v387 = &type metadata for Trainer;
        v345 = v459;
        FilterTrainerSectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)(v472, v469, v479, v474, sub_24B5E3930, v340, v490, v459, a10, v387, v390, v397, v404, v435, a8);
        v346 = v498;
        v347 = swift_getWitnessTable();
        sub_24B5FC7F0();
        v348 = *(v468 + 8);
        v468 += 8;
        *&v490 = v348;
        v348(v345, v346);
        sub_24B5FC7F0();
        v349 = v496;
        v350 = swift_getWitnessTable();
        v351 = v460;
        sub_24B5F7FA4(v345, v349, v346, v350, v347);
        v352 = swift_getWitnessTable();
        v353 = swift_getWitnessTable();
        v616 = v352;
        v617 = v353;
        v354 = v495;
        v355 = swift_getWitnessTable();
        v614 = v350;
        v615 = v347;
        v356 = v497;
        v357 = swift_getWitnessTable();
        sub_24B5F7FA4(v351, v354, v356, v355, v357);
        (*(v461 + 8))(v351, v356);
        v358 = swift_getWitnessTable();
        v359 = swift_getWitnessTable();
        v612 = v358;
        v613 = v359;
        v360 = swift_getWitnessTable();
        v361 = swift_getWitnessTable();
        v362 = swift_getWitnessTable();
        v610 = v361;
        v611 = v362;
        v363 = swift_getWitnessTable();
        v608 = v360;
        v609 = v363;
        v364 = v480;
        v365 = swift_getWitnessTable();
        v606 = v355;
        v607 = v357;
        v366 = v485;
        v367 = swift_getWitnessTable();
        v134 = v481;
        v368 = v471;
        sub_24B5F7FA4(v471, v364, v366, v365, v367);
        (*(v470 + 8))(v368, v366);
        v369 = v490;
        (v490)(v459, v346);
        v369(v458, v346);
      }
    }

    else
    {
      v138 = v487;
      if (v103 == 4)
      {
        (*(v92 + 16))(v487, v475, v91);
        v139 = (*(v92 + 80) + 48) & ~*(v92 + 80);
        v140 = (v93 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
        v141 = swift_allocObject();
        v142 = v488;
        *(v141 + 2) = v490;
        *(v141 + 3) = v142;
        *(v141 + 4) = v476;
        *(v141 + 5) = a8;
        (*(v92 + 32))(&v141[v139], v138, v91);
        v143 = &v141[v140];
        v144 = v478;
        *v143 = v477;
        v143[1] = v144;
        sub_24B5E3B80(v102, 4u);

        *(&v399 + 1) = v422;
        *&v399 = v423;
        *(&v392 + 1) = v424;
        *&v392 = &protocol witness table for MusicGenre;
        v145 = v453;
        FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v479, v102, sub_24B5E3B94, v141, &type metadata for MusicGenre, v142, &protocol witness table for MusicGenre, v453, a10, v392, v399, v421, a8);
        v146 = v499;
        v147 = swift_getWitnessTable();
        sub_24B5FC7F0();
        v148 = *(v466 + 8);
        v466 += 8;
        *&v490 = v148;
        v148(v145, v146);
        sub_24B5FC7F0();
        v149 = v501;
        v150 = swift_getWitnessTable();
        v151 = v456;
        sub_24B5F7EAC(v145, v146, v149, v147, v150);
        v560 = v147;
        v561 = v150;
        v152 = v495;
        v153 = swift_getWitnessTable();
        v489 = v153;
        v154 = swift_getWitnessTable();
        v155 = swift_getWitnessTable();
        v558 = v154;
        v559 = v155;
        v156 = v497;
        v157 = swift_getWitnessTable();
        v158 = v471;
        sub_24B5F7EAC(v151, v152, v156, v153, v157);
        (*(v457 + 8))(v151, v152);
        v159 = swift_getWitnessTable();
        v160 = swift_getWitnessTable();
        v556 = v159;
        v557 = v160;
        v161 = swift_getWitnessTable();
        v162 = swift_getWitnessTable();
        v163 = swift_getWitnessTable();
        v554 = v162;
        v555 = v163;
        v164 = swift_getWitnessTable();
        v552 = v161;
        v553 = v164;
        v165 = v480;
        v166 = swift_getWitnessTable();
        v550 = v489;
        v551 = v157;
        v167 = v485;
        v168 = swift_getWitnessTable();
        v134 = v481;
        sub_24B5F7FA4(v158, v165, v167, v166, v168);
        (*(v470 + 8))(v158, v167);
        v169 = v499;
        v170 = v490;
        (v490)(v453, v499);
        v170(v452, v169);
      }

      else
      {
        (*(v92 + 16))(v487, v475, v91);
        v268 = (*(v92 + 80) + 48) & ~*(v92 + 80);
        v269 = (v93 + v268 + 7) & 0xFFFFFFFFFFFFFFF8;
        v270 = swift_allocObject();
        v271 = v488;
        *(v270 + 2) = v490;
        *(v270 + 3) = v271;
        *(v270 + 4) = v476;
        *(v270 + 5) = a8;
        (*(v92 + 32))(&v270[v268], v138, v91);
        v272 = &v270[v269];
        v273 = v478;
        *v272 = v477;
        v272[1] = v273;
        sub_24B5E3B80(v102, 5u);

        *(&v402 + 1) = v427;
        *&v402 = v429;
        *(&v395 + 1) = v430;
        *&v395 = &protocol witness table for SkillLevel;
        v274 = v455;
        FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v479, v102, sub_24B5E3A84, v270, &type metadata for SkillLevel, v271, &protocol witness table for SkillLevel, v455, a10, v395, v402, v426, a8);
        v275 = v501;
        v276 = swift_getWitnessTable();
        sub_24B5FC7F0();
        *&v490 = *(v467 + 8);
        v467 += 8;
        (v490)(v274, v275);
        sub_24B5FC7F0();
        v277 = v499;
        v278 = swift_getWitnessTable();
        v279 = v456;
        sub_24B5F7FA4(v274, v277, v275, v278, v276);
        v572 = v278;
        v573 = v276;
        v280 = v495;
        v281 = swift_getWitnessTable();
        v489 = v281;
        v282 = swift_getWitnessTable();
        v283 = swift_getWitnessTable();
        v570 = v282;
        v571 = v283;
        v284 = v497;
        v285 = swift_getWitnessTable();
        v286 = v471;
        sub_24B5F7EAC(v279, v280, v284, v281, v285);
        (*(v457 + 8))(v279, v280);
        v287 = swift_getWitnessTable();
        v288 = swift_getWitnessTable();
        v568 = v287;
        v569 = v288;
        v289 = swift_getWitnessTable();
        v290 = swift_getWitnessTable();
        v291 = swift_getWitnessTable();
        v566 = v290;
        v567 = v291;
        v292 = swift_getWitnessTable();
        v564 = v289;
        v293 = v501;
        v565 = v292;
        v294 = v480;
        v295 = swift_getWitnessTable();
        v562 = v489;
        v563 = v285;
        v296 = v485;
        v297 = swift_getWitnessTable();
        v134 = v481;
        sub_24B5F7FA4(v286, v294, v296, v295, v297);
        (*(v470 + 8))(v286, v296);
        v298 = v490;
        (v490)(v455, v293);
        v298(v454, v293);
      }
    }
  }

  else
  {
    if (v103 > 1)
    {
      if (v103 == 2)
      {
        v171 = v487;
        (*(v92 + 16))(v487, v475, v91);
        v172 = (*(v92 + 80) + 48) & ~*(v92 + 80);
        v173 = (v93 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
        v174 = swift_allocObject();
        v175 = v488;
        *(v174 + 2) = v490;
        *(v174 + 3) = v175;
        *(v174 + 4) = v476;
        *(v174 + 5) = a8;
        (*(v92 + 32))(&v174[v172], v171, v91);
        v176 = &v174[v173];
        v177 = v478;
        *v176 = v477;
        v176[1] = v177;
        sub_24B5E3B80(v102, 2u);

        v406 = a8;
        *(&v400 + 1) = v414;
        *&v400 = v415;
        *(&v393 + 1) = v416;
        *&v393 = &protocol witness table for Equipment;
        v178 = v447;
        FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v479, v102, sub_24B5E3BC4, v174, &type metadata for Equipment, v175, &protocol witness table for Equipment, v447, a10, v393, v400, v413, v406);
        v179 = v500;
        v180 = swift_getWitnessTable();
        sub_24B5FC7F0();
        v181 = *(v464 + 8);
        v464 += 8;
        *&v490 = v181;
        v181(v178, v179);
        sub_24B5FC7F0();
        v182 = v494;
        v183 = swift_getWitnessTable();
        v184 = v450;
        sub_24B5F7EAC(v178, v179, v182, v180, v183);
        v185 = swift_getWitnessTable();
        v186 = swift_getWitnessTable();
        v536 = v185;
        v537 = v186;
        v187 = v493;
        v188 = swift_getWitnessTable();
        v534 = v180;
        v535 = v183;
        v189 = v484;
        v190 = swift_getWitnessTable();
        v191 = v472;
        sub_24B5F7FA4(v184, v187, v189, v188, v190);
        (*(v451 + 8))(v184, v189);
        v532 = v188;
        v533 = v190;
        v192 = v480;
        v193 = swift_getWitnessTable();
        v194 = swift_getWitnessTable();
        v195 = swift_getWitnessTable();
        v530 = v194;
        v531 = v195;
        v196 = swift_getWitnessTable();
        v197 = swift_getWitnessTable();
        v198 = swift_getWitnessTable();
        v528 = v197;
        v529 = v198;
        v199 = swift_getWitnessTable();
        v526 = v196;
        v527 = v199;
        v200 = v485;
        v201 = swift_getWitnessTable();
        v134 = v481;
        sub_24B5F7EAC(v191, v192, v200, v193, v201);
        (*(v469 + 8))(v191, v192);
        v112 = v500;
        v136 = v490;
        (v490)(v447, v500);
        v137 = v446;
      }

      else
      {
        v474 = v102;

        v299 = v91;
        v300 = v475;
        v301 = sub_24B5D84EC(v91);
        v470 = v302;
        v471 = v301;
        v303 = v487;
        (*(v92 + 16))(v487, v300, v91);
        v304 = (*(v92 + 80) + 48) & ~*(v92 + 80);
        v305 = (v93 + v304 + 7) & 0xFFFFFFFFFFFFFFF8;
        v306 = swift_allocObject();
        v307 = v488;
        *(v306 + 2) = v490;
        *(v306 + 3) = v307;
        v308 = v476;
        *(v306 + 4) = v476;
        *(v306 + 5) = a8;
        (*(v92 + 32))(&v306[v304], v303, v299);
        v309 = &v306[v305];
        v310 = v478;
        *v309 = v477;
        v309[1] = v310;

        v407 = a8;
        *(&v403 + 1) = v418;
        *&v403 = v419;
        *(&v396 + 1) = v420;
        *&v396 = &protocol witness table for Modality;
        *&v389 = v308;
        *(&v389 + 1) = &protocol witness table for Modality;
        *(&v386 + 1) = v307;
        *&v386 = &type metadata for Modality;
        v311 = v449;
        FilterModalitySectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)(v471, v470, v479, v474, sub_24B5E3BAC, v306, v490, v449, a10, v386, v389, v396, v403, v417, v407);
        v112 = v494;
        v312 = swift_getWitnessTable();
        sub_24B5FC7F0();
        v313 = *(v465 + 8);
        v465 += 8;
        *&v490 = v313;
        v313(v311, v112);
        sub_24B5FC7F0();
        v314 = v500;
        v315 = swift_getWitnessTable();
        v316 = v450;
        sub_24B5F7FA4(v311, v314, v112, v315, v312);
        v317 = swift_getWitnessTable();
        v318 = swift_getWitnessTable();
        v548 = v317;
        v549 = v318;
        v319 = v493;
        v320 = swift_getWitnessTable();
        v546 = v315;
        v547 = v312;
        v321 = v484;
        v322 = swift_getWitnessTable();
        sub_24B5F7FA4(v316, v319, v321, v320, v322);
        (*(v451 + 8))(v316, v321);
        v544 = v320;
        v545 = v322;
        v323 = v480;
        v324 = swift_getWitnessTable();
        v325 = swift_getWitnessTable();
        v326 = swift_getWitnessTable();
        v542 = v325;
        v543 = v326;
        v327 = swift_getWitnessTable();
        v328 = swift_getWitnessTable();
        v329 = swift_getWitnessTable();
        v540 = v328;
        v541 = v329;
        v330 = swift_getWitnessTable();
        v538 = v327;
        v539 = v330;
        v331 = v485;
        v332 = swift_getWitnessTable();
        v134 = v481;
        v333 = v472;
        sub_24B5F7EAC(v472, v323, v331, v324, v332);
        (*(v469 + 8))(v333, v323);
        v136 = v490;
        (v490)(v449, v112);
        v137 = v448;
      }

      goto LABEL_15;
    }

    v474 = v102;
    if (!v103)
    {
      (*(v92 + 16))(v487, v475, v91);
      v104 = (*(v92 + 80) + 48) & ~*(v92 + 80);
      v105 = (v93 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
      v106 = swift_allocObject();
      v107 = v488;
      *(v106 + 2) = v490;
      *(v106 + 3) = v107;
      *(v106 + 4) = v476;
      *(v106 + 5) = a8;
      (*(v92 + 32))(&v106[v104], v487, v91);
      v108 = &v106[v105];
      v109 = v478;
      *v108 = v477;
      v108[1] = v109;
      v110 = v474;
      sub_24B5E3B80(v474, 0);

      v405 = a8;
      *&v398 = v81;
      *(&v398 + 1) = v82;
      *(&v391 + 1) = v408;
      *&v391 = &protocol witness table for BodyFocus;
      v111 = v440;
      FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v479, v110, sub_24B5E3F18, v106, &type metadata for BodyFocus, v488, &protocol witness table for BodyFocus, v440, a10, v391, v398, v83, v405);
      v112 = v491;
      v113 = swift_getWitnessTable();
      sub_24B5FC7F0();
      v114 = *(v462 + 8);
      v462 += 8;
      *&v490 = v114;
      v114(v111, v112);
      sub_24B5FC7F0();
      v115 = v492;
      v116 = swift_getWitnessTable();
      v117 = v444;
      sub_24B5F7EAC(v111, v112, v115, v113, v116);
      v512 = v113;
      v513 = v116;
      v118 = v493;
      v119 = swift_getWitnessTable();
      v120 = swift_getWitnessTable();
      v121 = swift_getWitnessTable();
      v510 = v120;
      v511 = v121;
      v122 = v484;
      v123 = swift_getWitnessTable();
      sub_24B5F7EAC(v117, v118, v122, v119, v123);
      (*(v445 + 8))(v117, v118);
      v508 = v119;
      v509 = v123;
      v124 = v480;
      v125 = swift_getWitnessTable();
      v126 = swift_getWitnessTable();
      v127 = swift_getWitnessTable();
      v506 = v126;
      v507 = v127;
      v128 = swift_getWitnessTable();
      v129 = swift_getWitnessTable();
      v130 = swift_getWitnessTable();
      v504 = v129;
      v505 = v130;
      v131 = swift_getWitnessTable();
      v502 = v128;
      v503 = v131;
      v132 = v485;
      v133 = swift_getWitnessTable();
      v134 = v481;
      v135 = v472;
      sub_24B5F7EAC(v472, v124, v132, v125, v133);
      (*(v469 + 8))(v135, v124);
      v136 = v490;
      (v490)(v440, v112);
      v137 = v439;
LABEL_15:
      v136(v137, v112);
      goto LABEL_17;
    }

    sub_24B5E3B80(v102, 1u);

    v235 = v91;
    v236 = v475;
    sub_24B5D83A4();
    swift_getKeyPath();
    sub_24B5FF9AC();

    v237 = v487;
    (*(v92 + 16))(v487, v236, v91);
    v238 = (*(v92 + 80) + 48) & ~*(v92 + 80);
    v239 = swift_allocObject();
    v240 = v488;
    *(v239 + 2) = v490;
    *(v239 + 3) = v240;
    *(v239 + 4) = v476;
    *(v239 + 5) = a8;
    (*(v92 + 32))(&v239[v238], v237, v235);
    v241 = &v239[(v93 + v238 + 7) & 0xFFFFFFFFFFFFFFF8];
    v242 = v478;
    *v241 = v477;
    v241[1] = v242;

    *(&v401 + 1) = v409;
    *&v401 = v410;
    *(&v394 + 1) = v411;
    *&v394 = v412;
    *(&v388 + 1) = &protocol witness table for Duration;
    *&v388 = &protocol witness table for Duration;
    v243 = v443;
    FilterDurationSectionView.init(headerViewBuilder:locale:options:onOptionSelected:)(v479, v441, v474, sub_24B5E3CC0, v239, &type metadata for Duration, v240, v443, v388, v394, v401, a8);
    v244 = v492;
    v245 = swift_getWitnessTable();
    sub_24B5FC7F0();
    v246 = *(v463 + 8);
    v463 += 8;
    *&v490 = v246;
    v246(v243, v244);
    sub_24B5FC7F0();
    v247 = v491;
    v248 = swift_getWitnessTable();
    v249 = v444;
    sub_24B5F7FA4(v243, v247, v244, v248, v245);
    v524 = v248;
    v525 = v245;
    v250 = v493;
    v251 = swift_getWitnessTable();
    v252 = swift_getWitnessTable();
    v253 = swift_getWitnessTable();
    v522 = v252;
    v523 = v253;
    v254 = v484;
    v255 = swift_getWitnessTable();
    sub_24B5F7EAC(v249, v250, v254, v251, v255);
    (*(v445 + 8))(v249, v250);
    v520 = v251;
    v521 = v255;
    v256 = v480;
    v257 = swift_getWitnessTable();
    v258 = swift_getWitnessTable();
    v259 = swift_getWitnessTable();
    v518 = v258;
    v519 = v259;
    v260 = swift_getWitnessTable();
    v261 = swift_getWitnessTable();
    v262 = swift_getWitnessTable();
    v516 = v261;
    v517 = v262;
    v263 = swift_getWitnessTable();
    v514 = v260;
    v515 = v263;
    v264 = v485;
    v265 = swift_getWitnessTable();
    v134 = v481;
    v266 = v472;
    sub_24B5F7EAC(v472, v256, v264, v257, v265);
    (*(v469 + 8))(v266, v256);
    v267 = v490;
    (v490)(v443, v244);
    v267(v442, v244);
  }

LABEL_17:
  v370 = swift_getWitnessTable();
  v371 = swift_getWitnessTable();
  v604 = v370;
  v605 = v371;
  v372 = swift_getWitnessTable();
  v373 = swift_getWitnessTable();
  v374 = swift_getWitnessTable();
  v602 = v373;
  v603 = v374;
  v375 = swift_getWitnessTable();
  v600 = v372;
  v601 = v375;
  v376 = swift_getWitnessTable();
  v377 = swift_getWitnessTable();
  v378 = swift_getWitnessTable();
  v598 = v377;
  v599 = v378;
  v379 = swift_getWitnessTable();
  v380 = swift_getWitnessTable();
  v381 = swift_getWitnessTable();
  v596 = v380;
  v597 = v381;
  v382 = swift_getWitnessTable();
  v594 = v379;
  v595 = v382;
  v383 = swift_getWitnessTable();
  v592 = v376;
  v593 = v383;
  v384 = v483;
  swift_getWitnessTable();
  sub_24B5FC7F0();
  return (*(v482 + 8))(v134, v384);
}

uint64_t sub_24B5E295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for FilterView(0, v8, v9, a3) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_24B5FEF9C() - 8);
  v14 = (v4 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)));

  return sub_24B5DE450(a1, a2, v4 + v11, v14, v8, v9, a4);
}

uint64_t sub_24B5E2A64(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
  }

  return v2;
}

uint64_t sub_24B5E2A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterSectionDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5E2ADC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for FilterView(0, v4, v5, a1) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for FilterSectionDescriptor(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + v11);
  v13 = (v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_24B5DEE40((v2 + v7), (v2 + v10), v12, v14, v15, v4, v5, a2);
}

uint64_t sub_24B5E2C08(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for FilterView(0, v8, v9, a4) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24B5DF808(a1, a2, a3, v4 + v11, v12, v8, v9);
}

unint64_t sub_24B5E2CD8()
{
  result = qword_27F01A248;
  if (!qword_27F01A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A248);
  }

  return result;
}

unint64_t sub_24B5E2D2C()
{
  result = qword_27F01A250;
  if (!qword_27F01A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A250);
  }

  return result;
}

unint64_t sub_24B5E2D80()
{
  result = qword_27F01A258;
  if (!qword_27F01A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A258);
  }

  return result;
}

unint64_t sub_24B5E2DD4()
{
  result = qword_27F01A260;
  if (!qword_27F01A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A260);
  }

  return result;
}

unint64_t sub_24B5E2E28()
{
  result = qword_27F01A268;
  if (!qword_27F01A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A268);
  }

  return result;
}

unint64_t sub_24B5E2E7C()
{
  result = qword_27F01A270;
  if (!qword_27F01A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A270);
  }

  return result;
}

unint64_t sub_24B5E2ED0()
{
  result = qword_27F01A278;
  if (!qword_27F01A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A278);
  }

  return result;
}

unint64_t sub_24B5E2F24()
{
  result = qword_27F01A280;
  if (!qword_27F01A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A280);
  }

  return result;
}

unint64_t sub_24B5E2F78()
{
  result = qword_27F01A288;
  if (!qword_27F01A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A288);
  }

  return result;
}

unint64_t sub_24B5E2FCC()
{
  result = qword_27F01A290;
  if (!qword_27F01A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A290);
  }

  return result;
}

unint64_t sub_24B5E3020()
{
  result = qword_27F01A298;
  if (!qword_27F01A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A298);
  }

  return result;
}

unint64_t sub_24B5E3074()
{
  result = qword_27F01A2A0;
  if (!qword_27F01A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2A0);
  }

  return result;
}

unint64_t sub_24B5E30C8()
{
  result = qword_27F01A2A8;
  if (!qword_27F01A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2A8);
  }

  return result;
}

unint64_t sub_24B5E311C()
{
  result = qword_27F01A2B0;
  if (!qword_27F01A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2B0);
  }

  return result;
}

unint64_t sub_24B5E3170()
{
  result = qword_27F01A2B8;
  if (!qword_27F01A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2B8);
  }

  return result;
}

unint64_t sub_24B5E31C4()
{
  result = qword_27F01A2C0;
  if (!qword_27F01A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2C0);
  }

  return result;
}

unint64_t sub_24B5E3218()
{
  result = qword_27F01A2C8;
  if (!qword_27F01A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2C8);
  }

  return result;
}

unint64_t sub_24B5E326C()
{
  result = qword_27F01A2D0;
  if (!qword_27F01A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2D0);
  }

  return result;
}

unint64_t sub_24B5E32C0()
{
  result = qword_27F01A2D8;
  if (!qword_27F01A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2D8);
  }

  return result;
}

unint64_t sub_24B5E3314()
{
  result = qword_27F01A2E0;
  if (!qword_27F01A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2E0);
  }

  return result;
}

uint64_t sub_24B5E3368(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v14 = sub_24B5E3218();
  v15 = sub_24B5E326C();
  v16 = sub_24B5E32C0();
  v17 = sub_24B5E3314();
  *&v19 = v14;
  *(&v19 + 1) = v15;
  return sub_24B5E4AF8(v20, a2, a4, a5, a6, &type metadata for BodyFocus, a8, &protocol witness table for BodyFocus, v19, v16, v17);
}

uint64_t sub_24B5E3420(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 8);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v22[0] = *a1;
  v22[1] = v13;
  v23 = *(a1 + 16);
  v24 = v14;
  v25 = v15;
  v16 = sub_24B5AE4A8();
  v17 = sub_24B5AE3AC();
  v18 = sub_24B5E3170();
  v19 = sub_24B5E31C4();
  *&v21 = v16;
  *(&v21 + 1) = v17;
  return sub_24B5E4AF8(v22, a2, a4, a5, a6, &type metadata for Duration, a8, &protocol witness table for Duration, v21, v18, v19);
}

uint64_t sub_24B5E34E0(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v14 = sub_24B5E3020();
  v15 = sub_24B5E3074();
  v16 = sub_24B5E30C8();
  v17 = sub_24B5E311C();
  *&v19 = v14;
  *(&v19 + 1) = v15;
  return sub_24B5E4AF8(v20, a2, a4, a5, a6, &type metadata for Equipment, a8, &protocol witness table for Equipment, v19, v16, v17);
}

uint64_t sub_24B5E3598(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[3];
  v21[2] = a1[2];
  v22[0] = v13;
  *(v22 + 9) = *(a1 + 57);
  v14 = a1[1];
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5C3D68();
  v16 = sub_24B5C3B90();
  v17 = sub_24B5D9BC8();
  v18 = sub_24B5D9C1C();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for Modality, a8, &protocol witness table for Modality, v20, v17, v18);
}

uint64_t sub_24B5E3650(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v14 = sub_24B5E2ED0();
  v15 = sub_24B5E2F24();
  v16 = sub_24B5E2F78();
  v17 = sub_24B5E2FCC();
  *&v19 = v14;
  *(&v19 + 1) = v15;
  return sub_24B5E4AF8(v20, a2, a4, a5, a6, &type metadata for MusicGenre, a8, &protocol witness table for MusicGenre, v19, v16, v17);
}

uint64_t sub_24B5E3708(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[3];
  v21[2] = a1[2];
  v22[0] = v13;
  *(v22 + 9) = *(a1 + 57);
  v14 = a1[1];
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5E2D80();
  v16 = sub_24B5E2DD4();
  v17 = sub_24B5E2E28();
  v18 = sub_24B5E2E7C();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for SkillLevel, a8, &protocol witness table for SkillLevel, v20, v17, v18);
}

uint64_t sub_24B5E37C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v13;
  v22 = *(a1 + 64);
  v14 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5D5160();
  v16 = sub_24B5D4BEC();
  v17 = sub_24B5E2CD8();
  v18 = sub_24B5E2D2C();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for Theme, a8, &protocol witness table for Theme, v20, v17, v18);
}

uint64_t sub_24B5E3878(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[3];
  v21[2] = a1[2];
  v22[0] = v13;
  *(v22 + 9) = *(a1 + 57);
  v14 = a1[1];
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5D9DB4();
  v16 = sub_24B5D9E08();
  v17 = sub_24B5D9E5C();
  v18 = sub_24B5D9EB0();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for Trainer, a8, &protocol witness table for Trainer, v20, v17, v18);
}

uint64_t sub_24B5E3948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B5E39A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(type metadata accessor for FilterView(0, v7, v9, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24B5E37C0(a1, a2, v4 + v11, *v12, *(v12 + 1), v7, v8, v9);
}

uint64_t sub_24B5E3A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, void, void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v8 = *(v4 + 2);
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *(v4 + 5);
  v12 = *(type metadata accessor for FilterView(0, v8, v10, a4) - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = &v4[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a3(a1, a2, &v4[v13], *v14, *(v14 + 1), v8, v9, v10, v11);
}

uint64_t sub_24B5E3B80(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
  }

  return v2;
}

uint64_t sub_24B5E3BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, void, void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v8 = *(v4 + 2);
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *(v4 + 5);
  v12 = *(type metadata accessor for FilterView(0, v8, v10, a4) - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = &v4[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a3(a1, a2, &v4[v13], *v14, *(v14 + 1), v8, v9, v10, v11);
}

uint64_t sub_24B5E3CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(type metadata accessor for FilterView(0, v7, v9, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24B5E3420(a1, a2, v4 + v11, *v12, *(v12 + 1), v7, v8, v9);
}

uint64_t objectdestroy_34Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 32), a4) - 8);
  v6 = (v4 + ((*(*v5 + 80) + 48) & ~*(*v5 + 80)));
  sub_24B5DB820(*v6, v6[1]);
  v7 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v8 = sub_24B5FEE7C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B5E3F30@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v78 = a4;
  v88 = a3;
  v84 = a2;
  v92 = a7;
  v82 = a5;
  v83 = a6;
  v81 = type metadata accessor for FilterView(0, a5, a6, a4);
  v79 = *(v81 - 8);
  v76 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v68 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A2F0, &qword_24B6081D8);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v80 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A2F8, &qword_24B6081E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v68 - v14;
  v75 = sub_24B5FF1BC();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A300, &qword_24B6081E8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v68 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A308, &qword_24B6081F0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v69 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - v19;
  v21 = sub_24B5FEDEC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A310, &qword_24B6081F8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v87 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v68 - v31;
  sub_24B57BAFC(a1, v20, &qword_27F018BD0, &unk_24B6022F0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_24B58090C(v20, &qword_27F018BD0, &unk_24B6022F0);
    (*(v85 + 56))(v32, 1, 1, v86);
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    (*(v22 + 16))(v25, v27, v21);
    v33 = sub_24B5FF52C();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    KeyPath = swift_getKeyPath();
    v41 = sub_24B5FF4AC();
    v68 = v13;
    v42 = v41;
    v43 = swift_getKeyPath();
    v99 = v37 & 1;
    v98 = 0;
    *&v93 = v33;
    *(&v93 + 1) = v35;
    LOBYTE(v94) = v37 & 1;
    *(&v94 + 1) = v39;
    *&v95 = KeyPath;
    *(&v95 + 1) = 1;
    LOBYTE(v96) = 0;
    *(&v96 + 1) = v43;
    v97 = v42;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A320, &qword_24B608268);
    v45 = sub_24B5E4DE4();
    v46 = v70;
    sub_24B5FF6BC();
    v100[2] = v95;
    v100[3] = v96;
    v101 = v97;
    v100[0] = v93;
    v100[1] = v94;
    sub_24B58090C(v100, &qword_27F01A320, &qword_24B608268);
    v47 = v73;
    sub_24B5FF1AC();
    *&v93 = v44;
    *(&v93 + 1) = v45;
    v13 = v68;
    swift_getOpaqueTypeConformance2();
    v48 = v69;
    v49 = v72;
    sub_24B5FF68C();
    (*(v74 + 8))(v47, v75);
    (*(v71 + 8))(v46, v49);
    (*(v22 + 8))(v27, v21);
    sub_24B5CD578(v48, v32, &qword_27F01A308, &qword_24B6081F0);
    (*(v85 + 56))(v32, 0, 1, v86);
  }

  v50 = v91;
  v51 = v88;
  if (v88)
  {
    v52 = v79;
    v53 = v77;
    v54 = v81;
    (*(v79 + 16))(v77, v78, v81);
    v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v56 = swift_allocObject();
    v57 = v83;
    *(v56 + 16) = v82;
    *(v56 + 24) = v57;
    v58 = (*(v52 + 32))(v56 + v55, v53, v54);
    MEMORY[0x28223BE20](v58);
    *(&v68 - 2) = v84;
    *(&v68 - 1) = v51;
    v59 = v80;
    sub_24B5FF81C();
    v60 = v89;
    v61 = v90;
    (*(v89 + 32))(v50, v59, v90);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v61 = v90;
    v60 = v89;
  }

  (*(v60 + 56))(v50, v62, 1, v61);
  v63 = v87;
  sub_24B576E78(v32, v87);
  sub_24B57BAFC(v50, v13, &qword_27F01A2F8, &qword_24B6081E0);
  v64 = v92;
  sub_24B576E78(v63, v92);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A318, &qword_24B608200);
  v66 = v64 + *(v65 + 48);
  *v66 = 0x4014000000000000;
  *(v66 + 8) = 0;
  sub_24B57BAFC(v13, v64 + *(v65 + 64), &qword_27F01A2F8, &qword_24B6081E0);
  sub_24B58090C(v50, &qword_27F01A2F8, &qword_24B6081E0);
  sub_24B58090C(v32, &qword_27F01A310, &qword_24B6081F8);
  sub_24B58090C(v13, &qword_27F01A2F8, &qword_24B6081E0);
  return sub_24B58090C(v63, &qword_27F01A310, &qword_24B6081F8);
}

uint64_t sub_24B5E4950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilterView(0, a2, a3, v9);
  sub_24B5D83A4();
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5E3948(v8, type metadata accessor for FilterAction);
}

uint64_t sub_24B5E4A34@<X0>(uint64_t a3@<X8>)
{
  sub_24B58096C();

  result = sub_24B5FF53C();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_24B5E4AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5FF0BC();
  *a1 = result;
  return result;
}

uint64_t sub_24B5E4AF8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *&v23 = a6;
  *(&v23 + 1) = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  result = type metadata accessor for Option(0, &v23);
  v17 = *(result + 68);
  if (*(a1 + v17) - 1 <= 1)
  {
    (*(a8 + 8))(&v23, a6, a8);
    v19 = v23;
    v20 = v24;
    v21 = v25;
    v22 = v26;
    v18 = *(a1 + v17);
    a3(&v19, &v18, a2);
    return sub_24B57BA04(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22);
  }

  return result;
}

uint64_t objectdestroy_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  sub_24B5DB820(*(v4 + v6), *(v4 + v6 + 8));
  v7 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v8 = sub_24B5FEE7C();
  (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B5E4D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for FilterView(0, v6, v7, a4) - 8);
  return sub_24B5E4950(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

unint64_t sub_24B5E4DE4()
{
  result = qword_27F01A328;
  if (!qword_27F01A328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A320, &qword_24B608268);
    sub_24B5E4E9C();
    sub_24B58085C(&qword_27F019390, &qword_27F019398, &unk_24B608280, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A328);
  }

  return result;
}

unint64_t sub_24B5E4E9C()
{
  result = qword_27F01A330;
  if (!qword_27F01A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A338, &qword_24B608270);
    sub_24B58085C(&qword_27F01A340, &qword_27F01A348, &qword_24B608278, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A330);
  }

  return result;
}

uint64_t sub_24B5E4FB0@<X0>(uint64_t a3@<X8>)
{
  sub_24B5FF7BC();
  v4 = sub_24B5FF54C();
  v6 = v5;
  v8 = v7;
  v9 = sub_24B5FF4EC();
  v43 = v10;
  v44 = v9;
  v12 = v11;
  sub_24B5809C0(v4, v6, v8 & 1);

  sub_24B58096C();

  v13 = sub_24B5FF53C();
  v15 = v14;
  v17 = v16;
  v18 = sub_24B5FF4EC();
  v45 = v19;
  v46 = v18;
  LOBYTE(v6) = v20;
  sub_24B5809C0(v13, v15, v17 & 1);

  sub_24B5809C0(v44, v43, v12 & 1);

  sub_24B5FF4BC();
  sub_24B5FF46C();

  v21 = sub_24B5FF50C();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_24B5809C0(v46, v45, v6 & 1);

  KeyPath = swift_getKeyPath();
  v29 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A380, &qword_24B608368) + 36));
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A390, &qword_24B608370) + 28);
  v31 = *MEMORY[0x277CE1048];
  v32 = sub_24B5FF7EC();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25 & 1;
  *(a3 + 24) = v27;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  LOBYTE(v27) = sub_24B5FF3FC();
  v33 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A370, &qword_24B608360) + 36);
  *v33 = v27;
  *(v33 + 8) = xmmword_24B608290;
  *(v33 + 24) = xmmword_24B6082A0;
  *(v33 + 40) = 0;
  v34 = sub_24B5FF90C();
  v36 = v35;
  v37 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A358, &qword_24B608358) + 36);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_24B5FF18C();
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3C0, &qword_24B6083E8);
  *(v37 + *(v40 + 52)) = 2;
  *(v37 + *(v40 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3A0, &qword_24B608378);
  v42 = (v37 + *(result + 36));
  *v42 = v34;
  v42[1] = v36;
  return result;
}

uint64_t sub_24B5E5334@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B5FF02C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A350, &qword_24B608350);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-v9];
  v11 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v17 = v11;
  v18 = v12;
  v19 = v14;
  v20 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A358, &qword_24B608358);
  sub_24B5E5598();
  sub_24B5FF81C();
  sub_24B5FF01C();
  sub_24B58085C(&qword_27F01A3A8, &qword_27F01A350, &qword_24B608350, MEMORY[0x277CDF028]);
  sub_24B5E5794();
  sub_24B5FF5AC();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  LODWORD(v13) = sub_24B5FF2BC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3B8, &qword_24B608380);
  *(a1 + *(result + 36)) = v13;
  return result;
}

unint64_t sub_24B5E5598()
{
  result = qword_27F01A360;
  if (!qword_27F01A360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A358, &qword_24B608358);
    sub_24B5E5650();
    sub_24B58085C(&qword_27F01A398, &qword_27F01A3A0, &qword_24B608378, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A360);
  }

  return result;
}

unint64_t sub_24B5E5650()
{
  result = qword_27F01A368;
  if (!qword_27F01A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A370, &qword_24B608360);
    sub_24B5E56DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A368);
  }

  return result;
}

unint64_t sub_24B5E56DC()
{
  result = qword_27F01A378;
  if (!qword_27F01A378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A380, &qword_24B608368);
    sub_24B5E4E9C();
    sub_24B58085C(&qword_27F01A388, &qword_27F01A390, &qword_24B608370, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A378);
  }

  return result;
}

unint64_t sub_24B5E5794()
{
  result = qword_27F01A3B0;
  if (!qword_27F01A3B0)
  {
    sub_24B5FF02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3B0);
  }

  return result;
}

uint64_t sub_24B5E57EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B5FF0FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B5E5850(uint64_t a1)
{
  v2 = sub_24B5FF7EC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B5FF06C();
}

unint64_t sub_24B5E5918()
{
  result = qword_27F01A3C8;
  if (!qword_27F01A3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3B8, &qword_24B608380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A350, &qword_24B608350);
    sub_24B5FF02C();
    sub_24B58085C(&qword_27F01A3A8, &qword_27F01A350, &qword_24B608350, MEMORY[0x277CDF028]);
    sub_24B5E5794();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F0193A8, &qword_27F0193B0, &qword_24B603570, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3C8);
  }

  return result;
}

uint64_t FilterOptions.init(bodyFocuses:categories:durations:equipment:filterConfigurations:modalities:musicGenres:skillLevels:trainers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
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

unint64_t sub_24B5E5AD0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v6 = 0x6E656D7069757165;
    }

    if (a1)
    {
      v5 = 0x69726F6765746163;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6547636973756DLL;
    v2 = 0x76654C6C6C696B73;
    if (a1 != 7)
    {
      v2 = 0x7372656E69617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x6974696C61646F6DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B5E5C08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5E7940(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5E5C30(uint64_t a1)
{
  v2 = sub_24B5E6C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5E5C6C(uint64_t a1)
{
  v2 = sub_24B5E6C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3D0, &qword_24B6083F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v26 = v1[2];
  v27 = v8;
  v11 = v1[5];
  v24 = v1[4];
  v25 = v10;
  v12 = v1[7];
  v22 = v1[6];
  v23 = v11;
  v21 = v12;
  v13 = v1[8];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_24B5E6C9C();

  sub_24B5FFF5C();
  v29 = v9;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3E0, &qword_24B6083F8);
  sub_24B5E6CF0();
  sub_24B5FFE8C();
  if (v2)
  {
  }

  else
  {
    v19 = v25;
    v18 = v26;

    v29 = v27;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3F0, &qword_24B608400);
    sub_24B5E6D74();
    sub_24B5FFE8C();
    v29 = v18;
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A408, &qword_24B608408);
    sub_24B5E6E4C();
    sub_24B5FFE8C();
    v29 = v19;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A418, &qword_24B608410);
    sub_24B5E6ED0();
    sub_24B5FFE8C();
    v29 = v24;
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A428, &qword_24B608418);
    sub_24B5E6F54();
    sub_24B5FFE8C();
    v29 = v23;
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A440, &qword_24B608420);
    sub_24B5E702C();
    sub_24B5FFE8C();
    v29 = v22;
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A450, &qword_24B608428);
    sub_24B5E70B0();
    sub_24B5FFE8C();
    v29 = v21;
    v28 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A460, &qword_24B608430);
    sub_24B5E7134();
    sub_24B5FFE8C();
    v29 = v13;
    v28 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A470, &qword_24B608438);
    sub_24B5E71B8();
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v7, v17);
}

uint64_t FilterOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A480, &qword_24B608440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5E6C9C();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3E0, &qword_24B6083F8);
  LOBYTE(v26) = 0;
  sub_24B5E723C();
  sub_24B5FFDDC();
  v9 = a2;
  v10 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3F0, &qword_24B608400);
  LOBYTE(v26) = 1;
  sub_24B5E72C0();
  sub_24B5FFDDC();
  v24 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A408, &qword_24B608408);
  LOBYTE(v26) = 2;
  sub_24B5E7398();
  sub_24B5FFDDC();
  v23 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A418, &qword_24B608410);
  LOBYTE(v26) = 3;
  sub_24B5E741C();
  sub_24B5FFDDC();
  v25 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A428, &qword_24B608418);
  LOBYTE(v26) = 4;
  sub_24B5E74A0();
  sub_24B5FFDDC();
  v11 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A440, &qword_24B608420);
  LOBYTE(v26) = 5;
  sub_24B5E7578();
  sub_24B5FFDDC();
  v22 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A450, &qword_24B608428);
  LOBYTE(v26) = 6;
  sub_24B5E75FC();
  v21 = 0;
  sub_24B5FFDDC();
  *&v20 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A460, &qword_24B608430);
  LOBYTE(v26) = 7;
  sub_24B5E7680();
  sub_24B5FFDDC();
  *(&v20 + 1) = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A470, &qword_24B608438);
  v34[0] = 8;
  sub_24B5E7704();
  sub_24B5FFDDC();
  (*(v6 + 8))(v8, v5);
  v12 = v35;
  v13 = v24;
  v14 = v25;
  *&v26 = v10;
  *(&v26 + 1) = v24;
  v15 = v23;
  *&v27 = v23;
  *(&v27 + 1) = v25;
  *&v28 = v11;
  *(&v28 + 1) = v22;
  v29 = v20;
  v30 = v35;
  *(v9 + 64) = v35;
  v16 = v29;
  *(v9 + 32) = v28;
  *(v9 + 48) = v16;
  v17 = v27;
  *v9 = v26;
  *(v9 + 16) = v17;
  sub_24B5E7788(&v26, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v10;
  v31[1] = v13;
  v31[2] = v15;
  v31[3] = v14;
  v31[4] = v11;
  v31[5] = v22;
  v32 = v20;
  v33 = v12;
  return sub_24B5A0ACC(v31);
}

uint64_t FilterOptions.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  sub_24B57BC0C();
  sub_24B57ADD8(a1, v3);
  sub_24B57AC24(a1, v4);
  sub_24B57BC0C();
  sub_24B57A87C(a1, v5);
  sub_24B57A604(a1, v6);
  sub_24B57A410(a1, v7);
  sub_24B57A1D4(a1, v8);

  return sub_24B579FA4(a1, v9);
}

uint64_t FilterOptions.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_24B5FFEFC();
  sub_24B57BC0C();
  sub_24B57ADD8(v9, v1);
  sub_24B57AC24(v9, v2);
  sub_24B57BC0C();
  sub_24B57A87C(v9, v3);
  sub_24B57A604(v9, v4);
  sub_24B57A410(v9, v5);
  sub_24B57A1D4(v9, v6);
  sub_24B579FA4(v9, v7);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E69D0(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  sub_24B57BC0C();
  sub_24B57ADD8(a1, v3);
  sub_24B57AC24(a1, v4);
  sub_24B57BC0C();
  sub_24B57A87C(a1, v5);
  sub_24B57A604(a1, v6);
  sub_24B57A410(a1, v7);
  sub_24B57A1D4(a1, v8);

  return sub_24B579FA4(a1, v9);
}

uint64_t sub_24B5E6A94(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  sub_24B5FFEFC();
  sub_24B57BC0C();
  sub_24B57ADD8(v10, v2);
  sub_24B57AC24(v10, v3);
  sub_24B57BC0C();
  sub_24B57A87C(v10, v4);
  sub_24B57A604(v10, v5);
  sub_24B57A410(v10, v6);
  sub_24B57A1D4(v10, v7);
  sub_24B579FA4(v10, v8);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering13FilterOptionsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[4];
  v4 = a1[5];
  v12 = a1[8];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[4];
  v8 = a2[5];
  v14 = a1[7];
  v13 = a2[7];
  v11 = a2[8];
  if ((sub_24B5A19B0() & 1) == 0 || (sub_24B58617C(v2, v6) & 1) == 0 || (sub_24B5864EC(v3, v7) & 1) == 0 || (sub_24B574498() & 1) == 0 || (sub_24B5866FC(v5, v9) & 1) == 0 || (sub_24B586D40(v4, v8) & 1) == 0 || (sub_24B5A19B0() & 1) == 0 || (sub_24B5875DC(v14, v13) & 1) == 0)
  {
    return 0;
  }

  return sub_24B587608(v12, v11);
}

unint64_t sub_24B5E6C9C()
{
  result = qword_27F01A3D8;
  if (!qword_27F01A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3D8);
  }

  return result;
}

unint64_t sub_24B5E6CF0()
{
  result = qword_27F01A3E8;
  if (!qword_27F01A3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3E0, &qword_24B6083F8);
    sub_24B5E326C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3E8);
  }

  return result;
}

unint64_t sub_24B5E6D74()
{
  result = qword_27F01A3F8;
  if (!qword_27F01A3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3F0, &qword_24B608400);
    sub_24B5E6DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3F8);
  }

  return result;
}

unint64_t sub_24B5E6DF8()
{
  result = qword_27F01A400;
  if (!qword_27F01A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A400);
  }

  return result;
}

unint64_t sub_24B5E6E4C()
{
  result = qword_27F01A410;
  if (!qword_27F01A410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A408, &qword_24B608408);
    sub_24B5AE3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A410);
  }

  return result;
}

unint64_t sub_24B5E6ED0()
{
  result = qword_27F01A420;
  if (!qword_27F01A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A418, &qword_24B608410);
    sub_24B5E3074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A420);
  }

  return result;
}

unint64_t sub_24B5E6F54()
{
  result = qword_27F01A430;
  if (!qword_27F01A430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A428, &qword_24B608418);
    sub_24B5E6FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A430);
  }

  return result;
}

unint64_t sub_24B5E6FD8()
{
  result = qword_27F01A438;
  if (!qword_27F01A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A438);
  }

  return result;
}

unint64_t sub_24B5E702C()
{
  result = qword_27F01A448;
  if (!qword_27F01A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A440, &qword_24B608420);
    sub_24B5C3B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A448);
  }

  return result;
}

unint64_t sub_24B5E70B0()
{
  result = qword_27F01A458;
  if (!qword_27F01A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A450, &qword_24B608428);
    sub_24B5E2F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A458);
  }

  return result;
}

unint64_t sub_24B5E7134()
{
  result = qword_27F01A468;
  if (!qword_27F01A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A460, &qword_24B608430);
    sub_24B5E2DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A468);
  }

  return result;
}

unint64_t sub_24B5E71B8()
{
  result = qword_27F01A478;
  if (!qword_27F01A478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A470, &qword_24B608438);
    sub_24B5D9E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A478);
  }

  return result;
}

unint64_t sub_24B5E723C()
{
  result = qword_27F01A488;
  if (!qword_27F01A488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3E0, &qword_24B6083F8);
    sub_24B5E3218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A488);
  }

  return result;
}

unint64_t sub_24B5E72C0()
{
  result = qword_27F01A490;
  if (!qword_27F01A490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3F0, &qword_24B608400);
    sub_24B5E7344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A490);
  }

  return result;
}

unint64_t sub_24B5E7344()
{
  result = qword_27F01A498;
  if (!qword_27F01A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A498);
  }

  return result;
}

unint64_t sub_24B5E7398()
{
  result = qword_27F01A4A0;
  if (!qword_27F01A4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A408, &qword_24B608408);
    sub_24B5AE4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4A0);
  }

  return result;
}

unint64_t sub_24B5E741C()
{
  result = qword_27F01A4A8;
  if (!qword_27F01A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A418, &qword_24B608410);
    sub_24B5E3020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4A8);
  }

  return result;
}

unint64_t sub_24B5E74A0()
{
  result = qword_27F01A4B0;
  if (!qword_27F01A4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A428, &qword_24B608418);
    sub_24B5E7524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4B0);
  }

  return result;
}

unint64_t sub_24B5E7524()
{
  result = qword_27F01A4B8;
  if (!qword_27F01A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4B8);
  }

  return result;
}

unint64_t sub_24B5E7578()
{
  result = qword_27F01A4C0;
  if (!qword_27F01A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A440, &qword_24B608420);
    sub_24B5C3D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4C0);
  }

  return result;
}

unint64_t sub_24B5E75FC()
{
  result = qword_27F01A4C8;
  if (!qword_27F01A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A450, &qword_24B608428);
    sub_24B5E2ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4C8);
  }

  return result;
}

unint64_t sub_24B5E7680()
{
  result = qword_27F01A4D0;
  if (!qword_27F01A4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A460, &qword_24B608430);
    sub_24B5E2D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4D0);
  }

  return result;
}

unint64_t sub_24B5E7704()
{
  result = qword_27F01A4D8;
  if (!qword_27F01A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A470, &qword_24B608438);
    sub_24B5D9DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4D8);
  }

  return result;
}

unint64_t sub_24B5E77C4()
{
  result = qword_27F01A4E0;
  if (!qword_27F01A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4E0);
  }

  return result;
}

unint64_t sub_24B5E783C()
{
  result = qword_27F01A4E8;
  if (!qword_27F01A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4E8);
  }

  return result;
}

unint64_t sub_24B5E7894()
{
  result = qword_27F01A4F0;
  if (!qword_27F01A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4F0);
  }

  return result;
}

unint64_t sub_24B5E78EC()
{
  result = qword_27F01A4F8;
  if (!qword_27F01A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4F8);
  }

  return result;
}

uint64_t sub_24B5E7940(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x75636F4679646F62 && a2 == 0xEB00000000736573 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60AC60 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEB00000000736572 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEB00000000736C65 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_24B5FFECC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24B5E7C4C(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_24B5FEE1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v8 - 8);
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        sub_24B5FFA6C();
        if (qword_27F0186F0 == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_24B5FFA6C();
        if (qword_27F0186F0 == -1)
        {
          goto LABEL_23;
        }
      }
    }

    else if (a2)
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  if (a2 == 6)
  {
    sub_24B5FFA6C();
    if (qword_27F0186F0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
LABEL_24:
    swift_once();
  }

LABEL_23:
  v9 = qword_27F02AD70;
  (*(v5 + 16))(v7, a1, v4);
  v10 = v9;
  return sub_24B5FFAEC();
}

uint64_t sub_24B5E82A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B5E83A0(char a1)
{
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](a1 & 1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E83E8(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_24B5E8468(uint64_t a1)
{
  sub_24B5FFEFC();
  sub_24B5E8378(v3, *v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E84D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5E82A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5E8508@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24B5E928C();
  *a2 = result;
  return result;
}

uint64_t sub_24B5E8540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B5E8594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B5E861C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Option.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Option.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 56);
  v15 = *(a2 + 16);
  v17 = v15;
  v18 = v4;
  v13 = *(a2 + 40);
  v19 = v13;
  v20 = v5;
  type metadata accessor for Option.CodingKeys(255, &v17);
  swift_getWitnessTable();
  v6 = sub_24B5FFE9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v14;
  sub_24B5FFF5C();
  LOBYTE(v17) = 0;
  v11 = v16;
  sub_24B5FFE8C();
  if (!v11)
  {
    LOBYTE(v17) = *(v10 + *(a2 + 68));
    v21 = 1;
    sub_24B5A4B04();
    sub_24B5FFE8C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Option.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v38 = a8;
  v40 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  type metadata accessor for Option.CodingKeys(255, &v47);
  swift_getWitnessTable();
  v44 = sub_24B5FFDFC();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v22 = &v35 - v21;
  v42 = a2;
  v43 = a4;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = v45;
  v23 = type metadata accessor for Option(0, &v47);
  v37 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v22;
  v26 = v46;
  sub_24B5FFF4C();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v23;
  v27 = v39;
  v28 = v40;
  v46 = a1;
  LOBYTE(v47) = 0;
  v30 = v41;
  v29 = v42;
  v31 = v44;
  sub_24B5FFDDC();
  (*(v28 + 32))(v25, v30, v29);
  v53 = 1;
  sub_24B5A69BC();
  sub_24B5FFDDC();
  (*(v27 + 8))(v45, v31);
  v32 = v36;
  v33 = v37;
  v25[*(v36 + 68)] = v47;
  (*(v33 + 16))(v38, v25, v32);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return (*(v33 + 8))(v25, v32);
}

BOOL static Option.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_24B5FFA5C() & 1) == 0)
  {
    return 0;
  }

  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v16 = type metadata accessor for Option(0, v18);
  return *(a1 + *(v16 + 68)) == *(a2 + *(v16 + 68));
}

uint64_t Option.hashValue.getter(uint64_t a1)
{
  sub_24B5FFEFC();
  sub_24B5FFA4C();
  MEMORY[0x24C243ED0](*(v1 + *(a1 + 68)));
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E8DAC(uint64_t a1, uint64_t a2)
{
  sub_24B5FFEFC();
  Option.hash(into:)(v4, a2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E8E28(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B5E8EA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_24B5E9008(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t FilterSortMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C655265746164;
  v2 = 0x4E72656E69617274;
  if (a1 != 6)
  {
    v2 = 0x6D614E656D656874;
  }

  v3 = 0x6E6547636973756DLL;
  if (a1 != 4)
  {
    v3 = 1701736302;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6E6F697461727564;
  if (a1 != 2)
  {
    v4 = 0x7974696C61646F6DLL;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B5E93C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FilterSortMode.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FilterSortMode.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B5FFECC();
  }

  return v8 & 1;
}

unint64_t sub_24B5E944C@<X0>(Swift::String *a1@<X0>, FitnessFiltering::FilterSortMode_optional *a2@<X8>)
{
  result = _s16FitnessFiltering14FilterSortModeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_24B5E947C@<X0>(unint64_t *a1@<X8>)
{
  result = FilterSortMode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B5E9568()
{
  v1 = *v0;
  sub_24B5FFEFC();
  FilterSortMode.rawValue.getter(v1);
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

uint64_t sub_24B5E95CC(uint64_t a1)
{
  FilterSortMode.rawValue.getter(*v1);
  sub_24B5FFB1C();
}

uint64_t sub_24B5E9620(uint64_t a1)
{
  v2 = *v1;
  sub_24B5FFEFC();
  FilterSortMode.rawValue.getter(v2);
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

unint64_t _s16FitnessFiltering14FilterSortModeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B5FFD3C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B5E96D0()
{
  result = qword_27F01A600;
  if (!qword_27F01A600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019950, &qword_24B604E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A600);
  }

  return result;
}

unint64_t sub_24B5E9738()
{
  result = qword_27F01A608;
  if (!qword_27F01A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A608);
  }

  return result;
}

unint64_t sub_24B5E979C()
{
  result = qword_27F01A610;
  if (!qword_27F01A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A610);
  }

  return result;
}

uint64_t Equipment.iconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Equipment.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Equipment.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Equipment.init(artworks:iconName:identifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
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

uint64_t sub_24B5E989C(uint64_t a1)
{
  v2 = sub_24B5E9B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5E98D8(uint64_t a1)
{
  v2 = sub_24B5E9B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Equipment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A618, &unk_24B608A60);
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
  sub_24B5E9B6C();

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

unint64_t sub_24B5E9B6C()
{
  result = qword_27F01A620;
  if (!qword_27F01A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A620);
  }

  return result;
}

uint64_t Equipment.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A628, &qword_24B608A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5E9B6C();
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

uint64_t Equipment.hash(into:)(__int128 *a1)
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

uint64_t Equipment.hashValue.getter()
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

unint64_t sub_24B5EA0A0()
{
  result = qword_27F01A630;
  if (!qword_27F01A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A630);
  }

  return result;
}

unint64_t sub_24B5EA118()
{
  result = qword_27F01A638;
  if (!qword_27F01A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A638);
  }

  return result;
}

unint64_t sub_24B5EA170()
{
  result = qword_27F01A640;
  if (!qword_27F01A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A640);
  }

  return result;
}

unint64_t sub_24B5EA1C8()
{
  result = qword_27F01A648;
  if (!qword_27F01A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A648);
  }

  return result;
}

uint64_t HKWorkoutActivityType.activityTypeSystemName.getter(uint64_t a1)
{
  v2 = 0x726568746FLL;
  v3 = sub_24B5EA6E4(qword_285E881B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A650, &qword_24B608D20);
  swift_arrayDestroy();
  if (v3[2])
  {
    v4 = sub_24B5EA348(a1);
    if (v5)
    {
      v2 = *(v3[7] + 16 * v4);
    }
  }

  return v2;
}

unint64_t sub_24B5EA2D0(uint64_t a1, uint64_t a2)
{
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  v4 = sub_24B5FFF3C();

  return sub_24B5EA3B4(a1, a2, v4);
}

unint64_t sub_24B5EA348(uint64_t a1)
{
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](a1);
  v2 = sub_24B5FFF3C();

  return sub_24B5EA46C(a1, v2);
}

unint64_t sub_24B5EA3B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24B5FFECC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24B5EA46C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24B5EA4D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A658, &qword_24B608D30);
    v3 = sub_24B5FFD2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B5EA7F8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24B5EA2D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24B5EA868(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24B5EA5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CB0, &qword_24B601138);
    v3 = sub_24B5FFD2C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24B5EA2D0(v5, v6);
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

void *sub_24B5EA6E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A660, &qword_24B608D38);
  v3 = sub_24B5FFD2C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_24B5EA348(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_24B5EA348(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5EA7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24B5EA868(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void TimedFilterContent.minutes.getter(uint64_t a1, uint64_t a2)
{
  v2 = round((*(a2 + 8))(a1) / 60.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t SkillLevel.iconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SkillLevel.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SkillLevel.kind.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SkillLevel.name.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SkillLevel.init(artworks:iconName:identifier:kind:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
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

uint64_t sub_24B5EA9F0()
{
  v1 = *v0;
  v2 = 0x736B726F77747261;
  v3 = 0x696669746E656469;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 1701667182;
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

uint64_t sub_24B5EAA80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5EB600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5EAAA8(uint64_t a1)
{
  v2 = sub_24B5EADA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5EAAE4(uint64_t a1)
{
  v2 = sub_24B5EADA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SkillLevel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A668, &unk_24B608D80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15[7] = v1[2];
  v15[8] = v8;
  v11 = v1[5];
  v15[5] = v1[4];
  v15[6] = v10;
  v12 = v1[7];
  v15[3] = v1[6];
  v15[4] = v11;
  v13 = v1[8];
  v15[1] = v12;
  v15[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5EADA8();

  sub_24B5FFF5C();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5C7530(&qword_27F018710, &qword_27F018718, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B50]);
  sub_24B5FFE8C();

  if (!v2)
  {
    v19 = 1;
    sub_24B5FFE1C();
    v18 = 2;
    sub_24B5FFE3C();
    v17 = 3;
    sub_24B5FFE1C();
    v16 = 4;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B5EADA8()
{
  result = qword_27F01A670;
  if (!qword_27F01A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A670);
  }

  return result;
}

uint64_t SkillLevel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A678, &qword_24B608D90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5EADA8();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v31) = 0;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v9 = v36[0];
  LOBYTE(v36[0]) = 1;
  v10 = sub_24B5FFD6C();
  v30 = v11;
  v27 = v10;
  LOBYTE(v36[0]) = 2;
  v26 = sub_24B5FFD8C();
  v29 = v12;
  LOBYTE(v36[0]) = 3;
  v25 = sub_24B5FFD6C();
  v28 = v13;
  v37 = 4;
  v14 = sub_24B5FFD8C();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v8, v5);
  v18 = v27;
  *&v31 = v9;
  *(&v31 + 1) = v27;
  v19 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v26;
  v20 = v28;
  *&v33 = v29;
  *(&v33 + 1) = v25;
  *&v34 = v28;
  *(&v34 + 1) = v17;
  v35 = v16;
  *(a2 + 64) = v16;
  v21 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v21;
  v22 = v32;
  *a2 = v31;
  *(a2 + 16) = v22;
  sub_24B5A15F8(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v9;
  v36[1] = v18;
  v36[2] = v19;
  v36[3] = v26;
  v36[4] = v29;
  v36[5] = v25;
  v36[6] = v20;
  v36[7] = v17;
  v36[8] = v16;
  return sub_24B5A1654(v36);
}

uint64_t SkillLevel.hash(into:)(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[6];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  return sub_24B5FFB1C();
}

uint64_t SkillLevel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[6];
  sub_24B5FFEFC();
  sub_24B57926C(v5, v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5EB404()
{
  sub_24B5FFEFC();
  SkillLevel.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5EB448(uint64_t a1)
{
  sub_24B5FFEFC();
  SkillLevel.hash(into:)(v2);
  return sub_24B5FFF3C();
}

unint64_t sub_24B5EB484()
{
  result = qword_27F01A680;
  if (!qword_27F01A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A680);
  }

  return result;
}

unint64_t sub_24B5EB4FC()
{
  result = qword_27F01A688;
  if (!qword_27F01A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A688);
  }

  return result;
}

unint64_t sub_24B5EB554()
{
  result = qword_27F01A690;
  if (!qword_27F01A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A690);
  }

  return result;
}

unint64_t sub_24B5EB5AC()
{
  result = qword_27F01A698;
  if (!qword_27F01A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A698);
  }

  return result;
}

uint64_t sub_24B5EB600(uint64_t a1, uint64_t a2)
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

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t FilterDurationSectionView.init(headerViewBuilder:locale:options:onOptionSelected:)@<X0>(void (*a1)(void)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  a1();

  v25[0] = a7;
  v25[1] = a8;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v20 = type metadata accessor for FilterDurationSectionView(0, v25);
  v21 = v20[23];
  v22 = sub_24B5FEE1C();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a3, v22);
  *(a9 + v20[25]) = a4;
  v24 = (a9 + v20[24]);
  *v24 = a5;
  v24[1] = a6;
  return result;
}

uint64_t FilterDurationSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v30 = *(a1 + 48);
  v34 = *(a1 + 56);
  v33 = *(a1 + 64);
  v32 = *(a1 + 72);
  v52 = v34;
  v53 = v33;
  v54 = v32;
  v31 = (a1 + 40);
  v37 = *(a1 + 16);
  v3 = *(a1 + 32);
  v49 = v37;
  v50 = v3;
  v51 = v30;
  type metadata accessor for Option(255, &v49);
  swift_getTupleTypeMetadata2();
  v4 = sub_24B5FFBBC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6A0, &qword_24B609070);
  WitnessTable = swift_getWitnessTable();
  v49 = v4;
  v50 = MEMORY[0x277D837D0];
  v51 = v5;
  v52 = WitnessTable;
  v53 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v48 = sub_24B5EBEAC();
  swift_getWitnessTable();
  v7 = sub_24B5FF84C();
  v8 = swift_getWitnessTable();
  v49 = v7;
  v50 = v8;
  swift_getOpaqueTypeMetadata2();
  v49 = v7;
  v50 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_24B5FEF2C();
  v10 = swift_getWitnessTable();
  v49 = v9;
  v50 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = v9;
  v50 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = OpaqueTypeMetadata2;
  v50 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v14 = sub_24B5FF3AC();
  v49 = OpaqueTypeMetadata2;
  v50 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = MEMORY[0x277CDE478];
  swift_getOpaqueTypeMetadata2();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  v16 = sub_24B5FF87C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = sub_24B5FEFEC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v29 - v22;
  sub_24B5FF1DC();
  *&v24 = v3;
  *(&v24 + 1) = *v31;
  v38 = v37;
  v39 = v24;
  v40 = v30;
  v41 = v34;
  v42 = v33;
  v43 = v32;
  v44 = *(a1 + 80);
  v45 = v35;
  sub_24B5FF86C();
  v25 = swift_getWitnessTable();
  sub_24B5FF75C();
  (*(v17 + 8))(v19, v16);
  v26 = sub_24B5FF3EC();
  v46 = v25;
  v47 = MEMORY[0x277CDFC48];
  v27 = swift_getWitnessTable();
  sub_24B57FC54(v26, 0x4034000000000000, 0, v20, v27);
  return (*(v21 + 8))(v23, v20);
}

unint64_t sub_24B5EBEAC()
{
  result = qword_27F01A6A8;
  if (!qword_27F01A6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6A0, &qword_24B609070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6B0, &qword_24B609078);
    sub_24B5EBFA4();
    swift_getOpaqueTypeConformance2();
    sub_24B580814(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A6A8);
  }

  return result;
}

unint64_t sub_24B5EBFA4()
{
  result = qword_27F01A6B8;
  if (!qword_27F01A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6B0, &qword_24B609078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6C0, &unk_24B609080);
    sub_24B58085C(qword_27F01A6C8, &qword_27F01A6C0, &unk_24B609080, MEMORY[0x277CDF028]);
    sub_24B57D828();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A6B8);
  }

  return result;
}

uint64_t sub_24B5EC0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v94 = a7;
  v95 = a8;
  v93 = a6;
  v116 = a5;
  v91 = a4;
  v124 = a9;
  v125 = a2;
  v112 = a1;
  v128 = a11;
  v92 = a10;
  v17 = sub_24B5FF38C();
  MEMORY[0x28223BE20](v17 - 8);
  v121 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B5FF3AC();
  v122 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v120 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B5FF33C();
  v118 = *(v21 - 8);
  v119 = v21;
  MEMORY[0x28223BE20](v21);
  v117 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B5FF23C();
  v114 = *(v23 - 8);
  v115 = v23;
  MEMORY[0x28223BE20](v23);
  v96 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a2;
  v144 = a4;
  v145 = a6;
  v146 = a7;
  v147 = a8;
  v148 = a10;
  type metadata accessor for Option(255, &v143);
  swift_getTupleTypeMetadata2();
  v25 = sub_24B5FFBBC();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6A0, &qword_24B609070);
  WitnessTable = swift_getWitnessTable();
  v143 = v25;
  v144 = MEMORY[0x277D837D0];
  v145 = v26;
  v146 = WitnessTable;
  v147 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v142 = sub_24B5EBEAC();
  swift_getWitnessTable();
  v28 = sub_24B5FF84C();
  v29 = swift_getWitnessTable();
  v143 = v28;
  v144 = v29;
  v89[1] = swift_getOpaqueTypeMetadata2();
  v143 = v28;
  v144 = v29;
  v89[0] = swift_getOpaqueTypeConformance2();
  v30 = sub_24B5FEF2C();
  v90 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = v89 - v31;
  v33 = swift_getWitnessTable();
  v143 = v30;
  v144 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v106 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v126 = v89 - v35;
  v143 = v30;
  v144 = v33;
  v89[2] = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = OpaqueTypeMetadata2;
  v144 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeMetadata2();
  v104 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v101 = v89 - v38;
  v143 = OpaqueTypeMetadata2;
  v144 = OpaqueTypeConformance2;
  v97 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v143 = v37;
  v144 = v19;
  v123 = v19;
  v99 = v39;
  v145 = v39;
  v146 = MEMORY[0x277CDE478];
  v40 = swift_getOpaqueTypeMetadata2();
  v100 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = v89 - v41;
  v102 = v43;
  v44 = sub_24B5FEFEC();
  v107 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = v89 - v45;
  v98 = v47;
  v108 = sub_24B5FEFEC();
  v110 = *(v108 - 8);
  v48 = MEMORY[0x28223BE20](v108);
  v113 = v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v103 = v89 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v109 = v89 - v53;
  v54 = a3;
  v111 = *(a3 - 8);
  v55 = MEMORY[0x28223BE20](v52);
  v105 = v89 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v127 = v89 - v57;
  v58 = v112;
  v59 = v128;
  sub_24B5FC7F0();
  sub_24B5FF3BC();
  v60 = v125;
  v125 = v54;
  v129 = v60;
  v130 = v54;
  v131 = v91;
  v132 = v116;
  v133 = v93;
  v134 = v94;
  v61 = v96;
  v135 = v95;
  v136 = v92;
  v137 = v59;
  v138 = v58;
  sub_24B5FEF3C();
  sub_24B5FF22C();
  LOBYTE(v58) = sub_24B5FF3BC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v58)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF66C();
  (*(v114 + 8))(v61, v115);
  (*(v90 + 8))(v32, v30);
  v62 = v117;
  sub_24B5FF31C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A20;
  v64 = sub_24B5FF3DC();
  *(inited + 32) = v64;
  v65 = sub_24B5FF3BC();
  *(inited + 33) = v65;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v64)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v65)
  {
    sub_24B5FF3CC();
  }

  v66 = v101;
  v67 = v126;
  sub_24B5FF62C();
  (*(v118 + 8))(v62, v119);
  (*(v106 + 8))(v67, OpaqueTypeMetadata2);
  sub_24B5FF37C();
  v68 = v120;
  sub_24B5FF39C();
  v69 = v123;
  v70 = v99;
  v71 = MEMORY[0x277CDE478];
  sub_24B5FF67C();
  (*(v122 + 8))(v68, v69);
  (*(v104 + 8))(v66, v37);
  v143 = v37;
  v144 = v69;
  v145 = v70;
  v146 = v71;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v46;
  v74 = v102;
  sub_24B5FF75C();
  (*(v100 + 8))(v42, v74);
  sub_24B5FF90C();
  v141[4] = v72;
  v141[5] = MEMORY[0x277CDFC48];
  v87 = v98;
  v88 = swift_getWitnessTable();
  v75 = v103;
  sub_24B5FF6DC();
  (*(v107 + 8))(v73, v87);
  v141[2] = v88;
  v141[3] = MEMORY[0x277CDFC60];
  v76 = v108;
  v77 = swift_getWitnessTable();
  v78 = v109;
  sub_24B5FC7F0();
  v79 = v110;
  v126 = *(v110 + 8);
  (v126)(v75, v76);
  v80 = v111;
  v81 = v105;
  v82 = v125;
  (*(v111 + 16))(v105, v127, v125);
  v143 = v81;
  v83 = v113;
  (*(v79 + 16))(v113, v78, v76);
  v144 = v83;
  v141[0] = v82;
  v141[1] = v76;
  v139 = v128;
  v140 = v77;
  sub_24B5F7CDC(&v143, 2uLL, v141);
  v84 = v126;
  (v126)(v78, v76);
  v85 = *(v80 + 8);
  v85(v127, v82);
  v84(v83, v76);
  return (v85)(v81, v82);
}

uint64_t sub_24B5ECE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a8;
  v33 = a7;
  v32 = a6;
  v37 = a5;
  v30 = a4;
  v35 = a3;
  v29 = a2;
  v38 = a1;
  v39 = a9;
  v36 = a11;
  v31 = a10;
  v51 = a2;
  v52 = a4;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  v56 = a10;
  type metadata accessor for Option(255, &v51);
  swift_getTupleTypeMetadata2();
  v11 = sub_24B5FFBBC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6A0, &qword_24B609070);
  WitnessTable = swift_getWitnessTable();
  v51 = v11;
  v52 = MEMORY[0x277D837D0];
  v53 = v12;
  v54 = WitnessTable;
  v55 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v50 = sub_24B5EBEAC();
  v28 = swift_getWitnessTable();
  v14 = sub_24B5FF84C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = swift_getWitnessTable();
  v51 = v14;
  v52 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v28 - v24;
  v40 = v29;
  v41 = v35;
  v42 = v30;
  v43 = v37;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  v47 = v31;
  v48 = v36;
  v49 = v38;
  sub_24B5FF12C();
  sub_24B5FF83C();
  sub_24B5FF63C();
  (*(v15 + 8))(v17, v14);
  v51 = v14;
  v52 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0();
  v26 = *(v20 + 8);
  v26(v23, OpaqueTypeMetadata2);
  sub_24B5FC7F0();
  return (v26)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_24B5ED244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
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
  v16 = type metadata accessor for FilterDurationSectionView(0, &v55);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6A0, &qword_24B609070);
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
  v36 = sub_24B5EBEAC();

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

uint64_t sub_24B5ED654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v114 = a7;
  v115 = a3;
  v95 = a5;
  v116 = a2;
  v117 = a1;
  v110 = a9;
  v113 = a13;
  v111 = sub_24B5FF1BC();
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B5FFA3C();
  v106 = *(v18 - 8);
  v107 = v18;
  MEMORY[0x28223BE20](v18);
  v103 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B5FF9DC();
  MEMORY[0x28223BE20](v20 - 8);
  v102 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B5FF9FC();
  MEMORY[0x28223BE20](v22 - 8);
  v100 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  MEMORY[0x28223BE20](v24 - 8);
  v101 = &v80 - v25;
  v112 = a4;
  v132 = a4;
  v133 = a6;
  v93 = a6;
  v94 = a8;
  v134 = a8;
  v135 = a10;
  v92 = a11;
  v136 = a11;
  v137 = a12;
  v119 = type metadata accessor for Option(0, &v132);
  v91 = *(v119 - 8);
  v26 = *(v91 + 64);
  MEMORY[0x28223BE20](v119);
  v28 = &v80 - v27;
  v89 = &v80 - v27;
  v132 = a4;
  v133 = a5;
  v134 = a6;
  v135 = v114;
  v136 = a8;
  v137 = a10;
  v81 = a10;
  v82 = a12;
  v138 = a11;
  v139 = a12;
  v140 = v113;
  v29 = type metadata accessor for FilterDurationSectionView(0, &v132);
  v87 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v80 - v32;
  v88 = &v80 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A6C0, &unk_24B609080);
  v35 = *(v34 - 8);
  v98 = v34;
  v99 = v35;
  MEMORY[0x28223BE20](v34);
  v96 = &v80 - v36;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A6B0, &qword_24B609078);
  MEMORY[0x28223BE20](v90 - 8);
  v97 = &v80 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A750, &qword_24B609120);
  v104 = *(v38 - 8);
  v105 = v38;
  MEMORY[0x28223BE20](v38);
  v118 = &v80 - v39;
  v85 = v30;
  (*(v30 + 16))(v33, v115, v29);
  v40 = v91;
  (*(v91 + 16))(v28, v116, v119);
  v41 = (*(v30 + 80) + 88) & ~*(v30 + 80);
  v86 = (v31 + *(v40 + 80) + v41) & ~*(v40 + 80);
  v83 = v41;
  v84 = (v26 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v112;
  v45 = v94;
  v44 = v95;
  *(v42 + 2) = v112;
  *(v42 + 3) = v44;
  v46 = v93;
  v47 = v114;
  *(v42 + 4) = v93;
  *(v42 + 5) = v47;
  *(v42 + 6) = v45;
  *(v42 + 7) = a10;
  v48 = v92;
  *(v42 + 8) = v92;
  *(v42 + 9) = a12;
  v49 = v113;
  *(v42 + 10) = v113;
  (*(v85 + 32))(&v42[v83], v88, v87);
  (*(v40 + 32))(&v42[v86], v89, v119);
  *&v42[v84] = v117;
  v120 = v43;
  v121 = v44;
  v122 = v46;
  v123 = v47;
  v124 = v45;
  v125 = v81;
  v126 = v48;
  v127 = v82;
  v128 = v49;
  v129 = v115;
  v50 = v116;
  v130 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A758, &qword_24B609128);
  sub_24B5F010C();
  v51 = v96;
  sub_24B5FF81C();
  sub_24B58085C(qword_27F01A6C8, &qword_27F01A6C0, &unk_24B609080, MEMORY[0x277CDF028]);
  sub_24B57D828();
  v53 = v97;
  v52 = v98;
  sub_24B5FF5BC();
  (*(v99 + 8))(v51, v52);
  v54 = v119;
  v115 = *(v119 + 68);
  LOBYTE(v46) = *(v50 + v115) == 0;
  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v46;
  v57 = v90;
  v58 = (v53 + *(v90 + 36));
  *v58 = KeyPath;
  v58[1] = sub_24B5F0324;
  v58[2] = v56;
  Option.identifier.getter(v54);
  v59 = v117;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  TimedFilterContent.minutes.getter(v112, v47);
  v131 = v61;
  v62 = MEMORY[0x277D83B88];
  v132 = sub_24B5FFEBC();
  v133 = v63;
  MEMORY[0x24C243B10](1313426720, 0xE400000000000000);
  v64 = v133;
  v65 = MEMORY[0x277D837D0];
  *(inited + 48) = v132;
  *(inited + 56) = v64;
  *(inited + 72) = v65;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v65;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v59;
  *(inited + 168) = v62;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v65;
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
  v71 = sub_24B5EBFA4();
  sub_24B5FF55C();
  (*(v106 + 8))(v70, v107);
  sub_24B58090C(v69, &qword_27F018910, &qword_24B606920);
  sub_24B5777B8(v53);
  if (*(v50 + v115) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v72 = v108;
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v132 = v73;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v74 = v109;
    v75 = v111;
    sub_24B5FFC6C();
    v76 = v72;
  }

  else
  {
    v132 = v66;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v74 = v109;
    v75 = v111;
    sub_24B5FFC6C();
    v76 = v108;
  }

  v132 = v57;
  v133 = v71;
  swift_getOpaqueTypeConformance2();
  v77 = v105;
  v78 = v118;
  sub_24B5FF68C();
  (*(v76 + 8))(v74, v75);
  return (*(v104 + 8))(v78, v77);
}

uint64_t sub_24B5EE250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v34 = a9;
  v29 = a10;
  v15 = sub_24B5FF35C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A768, &qword_24B609130);
  MEMORY[0x28223BE20](v19);
  v21 = (&v29 - v20);
  *v21 = sub_24B5FF90C();
  v21[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A798, &qword_24B609180);
  sub_24B5EE4B0(a1, a2, a3, a4, v30, v31, v32, v33, (v21 + *(v23 + 44)), v29, *(&v29 + 1), a11);
  sub_24B5FF90C();
  sub_24B5FEF7C();
  v24 = (v21 + *(v19 + 36));
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  v24[2] = v37;
  sub_24B5FF34C();
  sub_24B5F0200();
  v26 = v34;
  sub_24B5FF65C();
  (*(v16 + 8))(v18, v15);
  sub_24B58090C(v21, &qword_27F01A768, &qword_24B609130);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A758, &qword_24B609128) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A790, &qword_24B609140);
  result = sub_24B5FF04C();
  *v27 = 0;
  return result;
}

uint64_t sub_24B5EE4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v88 = a6;
  v71 = a2;
  v80 = a1;
  v78 = a9;
  *&v101 = a3;
  *(&v101 + 1) = a5;
  *v102 = a7;
  *&v102[8] = a8;
  *&v102[16] = a10;
  *&v102[24] = a11;
  v70 = type metadata accessor for Option(0, &v101);
  v67 = *(v70 - 8);
  v66 = *(v67 + 64);
  MEMORY[0x28223BE20](v70);
  v73 = v62 - v18;
  *&v101 = a3;
  *(&v101 + 1) = a4;
  *v102 = a5;
  *&v102[8] = a6;
  *&v102[16] = a7;
  *&v102[24] = a8;
  *&v102[32] = a10;
  *&v102[40] = a11;
  *&v102[48] = a12;
  v19 = type metadata accessor for FilterDurationSectionView(0, &v101);
  v64 = *(v19 - 8);
  v65 = v19;
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v19);
  v72 = v62 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A7A0, &qword_24B609188);
  v74 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A7A8, &qword_24B609190);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v77 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v89 = v62 - v25;
  v82 = a12;
  v83 = a11;
  v26 = v71;
  v84 = a3;
  v85 = a8;
  v86 = a4;
  v87 = a5;
  v27 = a5;
  v28 = a7;
  v79 = a10;
  v76 = sub_24B580754(v71, a3, a4, v27, v88, a7, a8, a10, a11);
  KeyPath = swift_getKeyPath();
  v29 = v70;
  v30 = 1;
  if (*(v26 + *(v70 + 68)) - 1 <= 1)
  {
    v101 = xmmword_24B609050;
    v62[1] = swift_getKeyPath();
    v31 = v64;
    v32 = v65;
    (*(v64 + 16))(v72, v80, v65);
    v33 = v67;
    (*(v67 + 16))(v73, v26, v29);
    v34 = *(v31 + 80);
    v69 = v28;
    v35 = (v34 + 88) & ~v34;
    v36 = (v63 + *(v33 + 80) + v35) & ~*(v33 + 80);
    v37 = swift_allocObject();
    v38 = v86;
    v39 = v87;
    *(v37 + 2) = v84;
    *(v37 + 3) = v38;
    v40 = v88;
    *(v37 + 4) = v39;
    *(v37 + 5) = v40;
    v41 = v85;
    *(v37 + 6) = v69;
    *(v37 + 7) = v41;
    v42 = v82;
    v43 = v83;
    *(v37 + 8) = v79;
    *(v37 + 9) = v43;
    *(v37 + 10) = v42;
    (*(v31 + 32))(&v37[v35], v72, v32);
    (*(v33 + 32))(&v37[v36], v73, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A7C8, &qword_24B609200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A7D0, &qword_24B609208);
    sub_24B5F05AC();
    sub_24B5F068C();
    v44 = v68;
    v28 = v69;
    sub_24B5FF8BC();
    sub_24B5FF3FC();
    sub_24B5FEF1C();
    v103 = v45;
    v104 = v46;
    v105 = v47;
    v106 = v48;
    v107 = 0;
    sub_24B5FF2DC();
    sub_24B5CD578(v44, v89, &qword_27F01A7A0, &qword_24B609188);
    v30 = 0;
  }

  v49 = v89;
  (*(v74 + 56))(v89, v30, 1, v81);
  v81 = sub_24B5FF1CC();
  v91 = 1;
  sub_24B5EF168(v26, v84, v86, v87, v88, v28, v85, &v101, v80, v79, v83, v82);
  v95 = *&v102[32];
  v96 = *&v102[48];
  v93 = *v102;
  v94 = *&v102[16];
  v92 = v101;
  v97[2] = *&v102[16];
  v97[3] = *&v102[32];
  v98 = *&v102[48];
  v97[0] = v101;
  v97[1] = *v102;
  sub_24B57BAFC(&v92, &v99, &qword_27F01A7B0, &qword_24B6091C8);
  sub_24B58090C(v97, &qword_27F01A7B0, &qword_24B6091C8);
  *(&v90[1] + 7) = v93;
  *(&v90[2] + 7) = v94;
  *(&v90[3] + 7) = v95;
  *(&v90[4] + 7) = v96;
  *(v90 + 7) = v92;
  v50 = v91;
  v51 = v77;
  sub_24B57BAFC(v49, v77, &qword_27F01A7A8, &qword_24B609190);
  v52 = v78;
  v53 = v76;
  *v78 = KeyPath;
  v52[1] = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A7B8, &qword_24B6091D0);
  sub_24B57BAFC(v51, v52 + *(v54 + 48), &qword_27F01A7A8, &qword_24B609190);
  v55 = (v52 + *(v54 + 64));
  v56 = v81;
  v99 = v81;
  LOBYTE(v100[0]) = v50;
  *(v100 + 1) = v90[0];
  *(&v100[1] + 1) = v90[1];
  *(&v100[2] + 1) = v90[2];
  *(&v100[3] + 1) = v90[3];
  v100[4] = *(&v90[3] + 15);
  v57 = v100[0];
  *v55 = v81;
  v55[1] = v57;
  v58 = v100[1];
  v59 = v100[2];
  v60 = v100[4];
  v55[4] = v100[3];
  v55[5] = v60;
  v55[2] = v58;
  v55[3] = v59;

  sub_24B57BAFC(&v99, &v101, &qword_27F01A7C0, &unk_24B6091D8);
  sub_24B58090C(v89, &qword_27F01A7A8, &qword_24B609190);
  v101 = v56;
  v102[0] = v50;
  *&v102[17] = v90[1];
  *&v102[33] = v90[2];
  *&v102[49] = v90[3];
  *&v102[64] = *(&v90[3] + 15);
  *&v102[1] = v90[0];
  sub_24B58090C(&v101, &qword_27F01A7C0, &unk_24B6091D8);
  sub_24B58090C(v51, &qword_27F01A7A8, &qword_24B609190);
}

uint64_t sub_24B5EEC4C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a1;
  *a9 = sub_24B5FF1CC();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A800, &unk_24B609218);
  sub_24B5EED7C(a3, v19, a4, a5, a6, a7, a8, a9 + *(v20 + 44), a10, a11, a12, a13);
  sub_24B5FF96C();
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A7D0, &qword_24B609208);
  v26 = a9 + *(result + 36);
  *v26 = v19 * 22.5 * 0.0174532925;
  *(v26 + 8) = v22;
  *(v26 + 16) = v24;
  return result;
}

uint64_t sub_24B5EED7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a6;
  v49 = a7;
  v41 = a5;
  v47 = a4;
  v46 = a3;
  v50 = a2;
  v53 = a8;
  v42 = a11;
  v44 = a12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A808, &qword_24B609228);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v43 = &v41 - v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A810, &qword_24B609230) - 8;
  v21 = MEMORY[0x28223BE20](v51);
  v52 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  MEMORY[0x28223BE20](v23);
  v45 = &v41 - v26;
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24B5FF18C();
  (*(*(v28 - 8) + 104))(v17, v27, v28);
  v29 = v46;
  v30 = a5;
  v31 = v49;
  *&v17[*(v15 + 44)] = sub_24B5809D0(a1, v46, v47, v30, v48, v49, a9, a10, a11);
  sub_24B5FF90C();
  sub_24B5FEF7C();
  v32 = v43;
  sub_24B5CD578(v17, v43, &qword_27F018968, &qword_24B600CF0);
  v33 = (v32 + *(v19 + 44));
  v34 = v56;
  *v33 = v55;
  v33[1] = v34;
  v33[2] = v57;
  v54[0] = v29;
  v54[1] = v41;
  v54[2] = v31;
  v54[3] = a9;
  v54[4] = a10;
  v54[5] = v42;
  if (*(a1 + *(type metadata accessor for Option(0, v54) + 68)) == 2)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.4;
  }

  sub_24B5CD578(v32, v25, &qword_27F01A808, &qword_24B609228);
  *&v25[*(v51 + 44)] = v35;
  v36 = v45;
  sub_24B5CD578(v25, v45, &qword_27F01A810, &qword_24B609230);
  v37 = v52;
  sub_24B57BAFC(v36, v52, &qword_27F01A810, &qword_24B609230);
  v38 = v53;
  sub_24B57BAFC(v37, v53, &qword_27F01A810, &qword_24B609230);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A818, &qword_24B609238) + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_24B58090C(v36, &qword_27F01A810, &qword_24B609230);
  return sub_24B58090C(v37, &qword_27F01A810, &qword_24B609230);
}

double sub_24B5EF168@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t x1_0@<X1>, uint64_t a9, uint64_t a10, uint64_t a12)
{
  sub_24B5EF224(x1_0, a2, a3, a4, a5, a6, a7, v24, a9, a10, a12);
  v20 = sub_24B5809D0(a1, a2, a3, a4, a5, a6, a7, a9, a10);
  v21 = v24[1];
  *a8 = v24[0];
  *(a8 + 16) = v21;
  result = *&v25;
  v23 = v26;
  *(a8 + 32) = v25;
  *(a8 + 48) = v23;
  *(a8 + 64) = v20;
  return result;
}

uint64_t sub_24B5EF224@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a6;
  v67 = a7;
  v63 = a4;
  v61 = a3;
  v70 = a1;
  v62 = a11;
  v60 = a10;
  v58 = a9;
  v69 = sub_24B5FEE1C();
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v15 - 8);
  v54 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019368, &unk_24B609240);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v52[-v18];
  v20 = sub_24B5FF16C();
  MEMORY[0x28223BE20](v20 - 8);
  sub_24B5FF15C();
  sub_24B5FF14C();
  v59 = a2;
  v64 = a5;
  TimedFilterContent.minutes.getter(a2, a5);
  v72 = v21;
  sub_24B5FF13C();
  sub_24B5FF14C();
  sub_24B5FF17C();
  v22 = sub_24B5FF51C();
  v24 = v23;
  v26 = v25;
  sub_24B5FF48C();
  v27 = sub_24B5FF47C();
  v28 = *(*(v27 - 8) + 56);
  v28(v19, 1, 1, v27);
  sub_24B5FF49C();
  sub_24B58090C(v19, &qword_27F019368, &unk_24B609240);
  v56 = sub_24B5FF50C();
  v55 = v29;
  v53 = v30;
  v57 = v31;

  sub_24B5809C0(v22, v24, v26 & 1);

  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v32 = qword_27F02AD70;
  v72 = v59;
  v73 = v61;
  v74 = v63;
  v75 = v64;
  v76 = v66;
  v77 = v67;
  v78 = v58;
  v79 = v60;
  v80 = v62;
  v33 = type metadata accessor for FilterDurationSectionView(0, &v72);
  (*(v65 + 16))(v68, v70 + *(v33 + 92), v69);
  v34 = v32;
  v72 = sub_24B5FFAFC();
  v73 = v35;
  sub_24B58096C();
  v36 = sub_24B5FF53C();
  v38 = v37;
  v40 = v39;
  sub_24B5FF48C();
  v28(v19, 1, 1, v27);
  sub_24B5FF49C();
  sub_24B58090C(v19, &qword_27F019368, &unk_24B609240);
  v41 = sub_24B5FF50C();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_24B5809C0(v36, v38, v40 & 1);

  v48 = v53 & 1;
  v71 = v53 & 1;
  LOBYTE(v72) = v53 & 1;
  v81 = v45 & 1;
  v49 = v56;
  v50 = v55;
  *a8 = v56;
  *(a8 + 8) = v50;
  *(a8 + 16) = v48;
  *(a8 + 24) = v57;
  *(a8 + 32) = v41;
  *(a8 + 40) = v43;
  *(a8 + 48) = v45 & 1;
  *(a8 + 56) = v47;
  sub_24B580A5C(v49, v50, v48);

  sub_24B580A5C(v41, v43, v45 & 1);

  sub_24B5809C0(v41, v43, v45 & 1);

  sub_24B5809C0(v49, v50, v71);
}

unint64_t sub_24B5EF800(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = result;
    result = sub_24B5FEE1C();
    if (v4 <= 0x3F)
    {
      v13 = 0;
      v17 = result;
      result = sub_24B584750();
      if (v5 <= 0x3F)
      {
        v14 = 0;
        v18 = result;
        v6 = *(a1 + 32);
        v9[0] = *(a1 + 16);
        v9[1] = v6;
        v7 = *(a1 + 64);
        v10 = *(a1 + 48);
        v11 = v7;
        type metadata accessor for Option(255, v9);
        result = sub_24B5FFBBC();
        if (v8 <= 0x3F)
        {
          v15 = 0;
          v19 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24B5EF8E0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_24B5FEE1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}
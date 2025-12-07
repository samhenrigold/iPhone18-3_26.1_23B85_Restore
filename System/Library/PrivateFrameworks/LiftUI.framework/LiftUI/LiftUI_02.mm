unint64_t sub_255D5E6D8()
{
  result = qword_27F7E6BC8;
  if (!qword_27F7E6BC8)
  {
    result = swift_getWitnessTable(asc_255E3F4EC, &type metadata for SectionView, v0, v1);
    atomic_store(result, &qword_27F7E6BC8);
  }

  return result;
}

uint64_t sub_255D5E72C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255D5E780@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D5E7D8(uint64_t a1)
{
  v2 = sub_255D5EF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D5E814(uint64_t a1)
{
  v2 = sub_255D5EF88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D5E850@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_255E3A0C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255E3A0B8();
  (*(v3 + 16))(v6, v8, v2);
  sub_255D5EF40(&qword_27F7E6710, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
  v9 = sub_255E3A038();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

double sub_255D5E9AC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_255D5EC74(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_255D5EA3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D5EAAC()
{
  result = qword_27F7E6BD0;
  if (!qword_27F7E6BD0)
  {
    result = swift_getWitnessTable(byte_255E3F4D0, &type metadata for DividerView, v0, v1);
    atomic_store(result, &qword_27F7E6BD0);
  }

  return result;
}

unint64_t sub_255D5EB00(uint64_t a1)
{
  result = sub_255D5EB28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D5EB28()
{
  result = qword_27F7E6BD8;
  if (!qword_27F7E6BD8)
  {
    result = swift_getWitnessTable(aT, &type metadata for DividerView, v0, v1);
    atomic_store(result, &qword_27F7E6BD8);
  }

  return result;
}

unint64_t sub_255D5EB7C(uint64_t a1)
{
  result = sub_255D5EBA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D5EBA4()
{
  result = qword_27F7E6BE0;
  if (!qword_27F7E6BE0)
  {
    result = swift_getWitnessTable(aQ, &type metadata for SectionView, v0, v1);
    atomic_store(result, &qword_27F7E6BE0);
  }

  return result;
}

unint64_t sub_255D5EBF8(uint64_t a1)
{
  result = sub_255D5EC20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D5EC20()
{
  result = qword_27F7E6BE8;
  if (!qword_27F7E6BE8)
  {
    result = swift_getWitnessTable(byte_255E3F2F4, &type metadata for ListView, v0, v1);
    atomic_store(result, &qword_27F7E6BE8);
  }

  return result;
}

uint64_t sub_255D5EC74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v4 = sub_255E385D8();
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  MEMORY[0x28223BE20](v4);
  v30 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6BF0, &qword_255E3F528);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for RemoteStateStore(0);
  sub_255D5EF40(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v10 = sub_255E38CC8();
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5EF88();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v25 = v10;
    v13 = v30;
    v14 = v29;
    v15 = sub_255E3AB88();
    if (v16)
    {
      v23 = v15;
      v24 = v16;
    }

    else
    {
      sub_255E385C8();
      v23 = sub_255E385B8();
      v24 = v18;
      (*(v27 + 8))(v13, v26);
    }

    (*(v14 + 8))(v9, v7);
    v19 = v28;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v20 = v24;
    *v19 = v23;
    v19[1] = v20;
    v21 = v25;
    v19[2] = MEMORY[0x277D84F90];
    v19[3] = v21;
    v19[4] = v12;
  }

  return result;
}

uint64_t sub_255D5EF40(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_255D5EF88()
{
  result = qword_27F7E6BF8;
  if (!qword_27F7E6BF8)
  {
    result = swift_getWitnessTable(aE, &type metadata for DividerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6BF8);
  }

  return result;
}

unint64_t sub_255D5EFE4()
{
  result = qword_27F7E6C08;
  if (!qword_27F7E6C08)
  {
    result = swift_getWitnessTable(byte_255E3F894, &type metadata for SectionView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C08);
  }

  return result;
}

unint64_t sub_255D5F038()
{
  result = qword_27F7E6C18;
  if (!qword_27F7E6C18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6C10, &qword_255E57E50);
    v4[0] = sub_255D447E8();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F7E6C18);
  }

  return result;
}

uint64_t sub_255D5F0EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v29 = sub_255E385D8();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C28, &qword_255E3F560);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  type metadata accessor for RemoteStateStore(0);
  sub_255D5EF40(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v8 = sub_255E38CC8();
  v10 = v9;
  v11 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_255D5F460();
  v12 = v33;
  sub_255E3AE28();
  if (v12)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    v28 = v10;
    v33 = v8;
    v14 = v30;
    v13 = v31;
    v15 = v32;
    v37 = 0;
    v16 = sub_255E3AB88();
    v18 = v5;
    if (v17)
    {
      v27 = v16;
      v19 = v17;
    }

    else
    {
      v20 = v4;
      sub_255E385C8();
      v27 = sub_255E385B8();
      v19 = v21;
      (*(v13 + 8))(v20, v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v36 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    v22 = v33;
    if (v35)
    {
      v24 = v35;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v25 = sub_255D48968(v24);

    (*(v14 + 8))(v7, v18);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
    *v15 = v27;
    v15[1] = v19;
    v15[2] = v25;
    v15[3] = MEMORY[0x277D84F90];
    v15[4] = v22;
    v15[5] = v28;
  }

  return result;
}

unint64_t sub_255D5F460()
{
  result = qword_27F7E6C30;
  if (!qword_27F7E6C30)
  {
    result = swift_getWitnessTable(byte_255E3F844, &type metadata for ListView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C30);
  }

  return result;
}

unint64_t sub_255D5F4E8()
{
  result = qword_27F7E6C38;
  if (!qword_27F7E6C38)
  {
    result = swift_getWitnessTable(byte_255E3F63C, &type metadata for DividerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C38);
  }

  return result;
}

unint64_t sub_255D5F540()
{
  result = qword_27F7E6C40;
  if (!qword_27F7E6C40)
  {
    result = swift_getWitnessTable(byte_255E3F72C, &type metadata for SectionView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C40);
  }

  return result;
}

unint64_t sub_255D5F598()
{
  result = qword_27F7E6C48;
  if (!qword_27F7E6C48)
  {
    result = swift_getWitnessTable(byte_255E3F81C, &type metadata for ListView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C48);
  }

  return result;
}

unint64_t sub_255D5F5F0()
{
  result = qword_27F7E6C50;
  if (!qword_27F7E6C50)
  {
    result = swift_getWitnessTable(aM, &type metadata for ListView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C50);
  }

  return result;
}

unint64_t sub_255D5F648()
{
  result = qword_27F7E6C58;
  if (!qword_27F7E6C58)
  {
    result = swift_getWitnessTable(asc_255E3F77C, &type metadata for ListView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C58);
  }

  return result;
}

unint64_t sub_255D5F6A0()
{
  result = qword_27F7E6C60;
  if (!qword_27F7E6C60)
  {
    result = swift_getWitnessTable(asc_255E3F664, &type metadata for SectionView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C60);
  }

  return result;
}

unint64_t sub_255D5F6F8()
{
  result = qword_27F7E6C68;
  if (!qword_27F7E6C68)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for SectionView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C68);
  }

  return result;
}

unint64_t sub_255D5F750()
{
  result = qword_27F7E6C70;
  if (!qword_27F7E6C70)
  {
    result = swift_getWitnessTable(asc_255E3F574, &type metadata for DividerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C70);
  }

  return result;
}

unint64_t sub_255D5F7A8()
{
  result = qword_27F7E6C78;
  if (!qword_27F7E6C78)
  {
    result = swift_getWitnessTable(asc_255E3F59C, &type metadata for DividerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6C78);
  }

  return result;
}

unint64_t sub_255D5F7FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_255D5F84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_255D5F894(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_255D5F8EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D45734();
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D5F9F8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = swift_getOpaqueTypeMetadata2();
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39B48();
  }

  return result;
}

unint64_t sub_255D5FAF8(uint64_t a1)
{
  result = sub_255D5FB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D5FB20()
{
  result = qword_27F7E6C80;
  if (!qword_27F7E6C80)
  {
    result = swift_getWitnessTable(byte_255E3FA58, &type metadata for NavigationBarBackButtonHiddenModifier, v0, v1);
    atomic_store(result, &qword_27F7E6C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementColorName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElementColorName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D5FCC4(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x7972616974726574;
      break;
    case 3:
      result = 0x616E726574617571;
      break;
    case 4:
      result = 0x69466D6574737973;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6C6F686563616C70;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0x6F74617261706573;
      break;
    case 16:
      result = 0x655365757161706FLL;
      break;
    case 17:
      result = 1802398060;
      break;
    case 18:
      result = 0x747865546B726164;
      break;
    case 19:
      result = 0x786554746867696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255D5FF50(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_255D5FCC4(*a1);
  v5 = v4;
  if (v3 == sub_255D5FCC4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D5FFD8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D5FCC4(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6003C(uint64_t a1)
{
  sub_255D5FCC4(*v1);
  sub_255E3A578();
}

uint64_t sub_255D60090(uint64_t a1)
{
  v2 = *v1;
  sub_255E3AD98();
  sub_255D5FCC4(v2);
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D600F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D60300(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255D60120@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255D5FCC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_255D60200()
{
  result = qword_27F7E6C88;
  if (!qword_27F7E6C88)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for ElementColorName, v0, v1);
    atomic_store(result, &qword_27F7E6C88);
  }

  return result;
}

id sub_255D60254(char a1)
{
  v1 = [objc_opt_self() *off_279812190[a1]];

  return v1;
}

unint64_t sub_255D602AC()
{
  result = qword_27F7E6C90;
  if (!qword_27F7E6C90)
  {
    result = swift_getWitnessTable(byte_255E3FAEC, &type metadata for ElementColorName, v0, v1);
    atomic_store(result, &qword_27F7E6C90);
  }

  return result;
}

unint64_t sub_255D60300(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AD18();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI16DoubleResolvableOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D603A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 89))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 56);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D603F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

double sub_255D60484(unint64_t a1)
{
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v24 = *(v1 + 80);
  v30 = *(v1 + 88);
  if (v5 <= 0xFD)
  {
    v25 = *v1;
    v26 = *(v1 + 8);
    v27 = *(v1 + 16);
    v29 = *(v1 + 24);
    sub_255D3E5A8(*v1, v26, v27, v5);
    v12 = StringResolvable.resolved(with:)(a1);
    if (!v2)
    {
      v21 = v12;
      v22 = v13;
      sub_255D38060(v25, v26, v27, v29);
      sub_255D6067C(v21, v22);
      v3 = v23;

      return v3;
    }

    sub_255D38060(v25, v26, v27, v29);
  }

  if (v9 <= 0xFD)
  {
    v28 = v8;
    sub_255D612A0(v6, v7, v8, v9);
    sub_255D8F6FC(a1);
    v15 = v14;
    v17 = v16;
    sub_255D4CB98(v6, v7, v28, v9);
    if ((v17 & 1) == 0 && v30 <= 0xFD)
    {
      sub_255D612A0(v10, v11, v24, v30);
      sub_255D8F6FC(a1);
      v19 = v18;
      sub_255D4CB98(v10, v11, v24, v30);
      if ((v19 & 1) == 0)
      {
        return v15;
      }
    }
  }

  sub_255D6124C();
  swift_allocError();
  swift_willThrow();
  return v3;
}

uint64_t sub_255D6067C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v2 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F38]();
  }

  if (a1 == 0x696461654C706F74 && a2 == 0xEA0000000000676ELL || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F08]();
  }

  if (a1 == 0x6C69617254706F74 && a2 == 0xEB00000000676E69 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F10]();
  }

  if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_255E3AC68() & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F68]();
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F70]();
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F50]();
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xED0000676E696461 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F18]();
  }

  else if (a1 == 0x72546D6F74746F62 && a2 == 0xEE00676E696C6961 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F20]();
  }

  else
  {
    if ((a1 != 1869768058 || a2 != 0xE400000000000000) && (sub_255E3AC68() & 1) == 0)
    {
LABEL_24:

      return MEMORY[0x282133F60]();
    }

    return MEMORY[0x282133F48]();
  }
}

uint64_t sub_255D60A14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 121;
  if (v2 != 1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 120;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 121;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 120;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
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

uint64_t sub_255D60AE8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D60B6C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D60BDC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D60C5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D64EBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D60C8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 121;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 120;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D60CCC()
{
  v1 = 121;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 120;
  }
}

unint64_t sub_255D60D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D64EBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D60D30(uint64_t a1)
{
  v2 = sub_255D646F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D60D6C(uint64_t a1)
{
  v2 = sub_255D646F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D60DA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6CA0, &qword_255E40210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D646F0();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -2;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -2;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v49 = -2;
  }

  else
  {
    LOBYTE(v38) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v33) = 2;
      sub_255D3EA0C();
      sub_255E3ABC8();
      (*(v6 + 8))(v8, v5);
      v31 = a2;
      v10 = v39;
      v27 = v38;
      v29 = v40;
      v28 = v41;
      v30 = 254;
      sub_255D64814(0, 0, 0, 0xFEu);
      v11 = 0;
      v12 = 0;
      v32 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = -2;
    }

    else
    {
      LOBYTE(v33) = 0;
      sub_255D64774();
      sub_255E3ABC8();
      v31 = a2;
      v15 = v38;
      v14 = v39;
      v50 = v40;
      v16 = v41;
      sub_255D647C8(0, 0, 0, 254);
      LOBYTE(v33) = 1;
      sub_255E3ABC8();
      (*(v6 + 8))(v8, v5);
      v12 = v39;
      v32 = v38;
      v11 = v40;
      v30 = v41;
      v28 = 254;
      sub_255D647C8(0, 0, 0, 254);
      v29 = 0;
      v10 = 0;
      v27 = 0;
      v13 = v50;
    }

    v50 = v13;
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v17 = v27;
    *&v33 = v27;
    *(&v33 + 1) = v10;
    v18 = v29;
    *&v34 = v29;
    BYTE8(v34) = v28;
    *&v35 = v15;
    *(&v35 + 1) = v14;
    *&v36 = v13;
    BYTE8(v36) = v16;
    *v37 = v32;
    *&v37[8] = v12;
    *&v37[16] = v11;
    v19 = v28;
    v20 = v30;
    v37[24] = v30;
    v21 = v36;
    v22 = v31;
    v31[2] = v35;
    v22[3] = v21;
    v22[4] = *v37;
    *(v22 + 73) = *&v37[9];
    v23 = v34;
    *v22 = v33;
    v22[1] = v23;
    sub_255D647DC(&v33, &v38);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v38 = v17;
    v39 = v26;
    v40 = v18;
    v41 = v19;
    v42 = v15;
    v43 = v14;
    v44 = v50;
    v45 = v16;
    v46 = v32;
    v47 = v24;
    v48 = v25;
    v49 = v20;
  }

  return sub_255D64744(&v38);
}

unint64_t sub_255D6124C()
{
  result = qword_27F7E6C98;
  if (!qword_27F7E6C98)
  {
    result = swift_getWitnessTable(byte_255E403F4, &type metadata for UnitPointResolvableError, v0, v1);
    atomic_store(result, &qword_27F7E6C98);
  }

  return result;
}

void sub_255D612A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    v5 = a4 & 1;

    sub_255D348B4(a1, a2, a3, v5);
  }
}

uint64_t sub_255D612F4(unint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 16))(a1, v3, v4);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v21 = *(v1 + 40);
  v22 = v5;
  v23 = v6;
  v24 = v7;
  sub_255D612A0(v21, v5, v6, v7);
  sub_255D8F6FC(a1);
  v9 = v8;
  sub_255D4CB98(v21, v22, v23, v24);
  if ((v9 & 1) == 0)
  {
    return sub_255E3A108();
  }

  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);

  v11 = sub_255E38688();
  v12 = sub_255E3A848();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_255D378C0(0xD000000000000071, 0x8000000255E65D10, &v21);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_255D378C0(0xD000000000000013, 0x8000000255E65D90, &v21);
    *(v13 + 22) = 2080;

    v15 = sub_255E39D28();
    v17 = v16;

    v18 = sub_255D378C0(v15, v17, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&dword_255D2E000, v11, v12, "%s %s Unable to resolve location for gradient stop with color %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  sub_255D6529C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
}

uint64_t sub_255D615A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v3 = 0x726F6C6F63;
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
    v5 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v5 = 0x726F6C6F63;
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
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D61644()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D616C4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D61730(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D617B8(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F63;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D617F4()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_255D61838(uint64_t a1)
{
  v2 = sub_255D65FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D61874(uint64_t a1)
{
  v2 = sub_255D65FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D618B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6DC8, &qword_255E42958);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D65FA8();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v10) = 0;
  sub_255D65E28();
  sub_255E3ABC8();
  sub_255D3CE1C(v13, v14);
  v18 = 1;
  sub_255D64774();
  sub_255E3ABC8();
  sub_255D65FFC(v13);
  (*(v6 + 8))(v8, v5);
  v15 = v10;
  v16 = v11;
  v17 = v12;
  sub_255D652F0(v14, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D65328(v14);
}

uint64_t sub_255D61AE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      v32 = MEMORY[0x277D84F90];
      sub_255DE6030(0, v6, 0);
      v7 = v32;
      for (i = a2 + 32; ; i += 72)
      {
        sub_255D652F0(i, v29);
        v9 = sub_255D612F4(a1);
        if (v3)
        {
          break;
        }

        v11 = v9;
        v12 = v10;
        sub_255D65328(v29);
        v32 = v7;
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_255DE6030((v13 > 1), v14 + 1, 1);
          v7 = v32;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        if (!--v6)
        {
          return sub_255E3A118();
        }
      }

      sub_255D65328(v29);
    }

    else
    {
      return sub_255E3A118();
    }
  }

  else if (a3)
  {
    v17 = *(a3 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v32 = MEMORY[0x277D84F90];
      sub_255E3AA58();
      v20 = a3 + 32;
      do
      {
        sub_255D3CE1C(v20, v29);
        v21 = v30;
        v22 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v22 + 16))(a1, v21, v22);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        sub_255E3AA28();
        sub_255E3AA68();
        sub_255E3AA78();
        sub_255E3AA38();
        v20 += 40;
        --v17;
      }

      while (v17);
      v18 = v32;
    }

    return MEMORY[0x259C4E480](v18);
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v23 = sub_255E386A8();
    __swift_project_value_buffer(v23, qword_27F8152D8);
    v24 = sub_255E38688();
    v25 = sub_255E3A848();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_255D378C0(0xD000000000000071, 0x8000000255E65D10, v29);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_255D378C0(0x746E656964617267, 0xEF293A6874697728, v29);
      _os_log_impl(&dword_255D2E000, v24, v25, "%s %s Unable to resolve any stops or colors.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C4F9E0](v27, -1, -1);
      MEMORY[0x259C4F9E0](v26, -1, -1);
    }

    sub_255D6529C();
    swift_allocError();
    *v28 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_255D61E64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73726F6C6F63;
  }

  else
  {
    v3 = 0x73706F7473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x73726F6C6F63;
  }

  else
  {
    v5 = 0x73706F7473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D61F04()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D61F80(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D61FE8(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6206C@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_255D620C8(uint64_t *a1@<X8>)
{
  v2 = 0x73706F7473;
  if (*v1)
  {
    v2 = 0x73726F6C6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D62100()
{
  if (*v0)
  {
    return 0x73726F6C6F63;
  }

  else
  {
    return 0x73706F7473;
  }
}

uint64_t sub_255D62140@<X0>(char *a4@<X8>)
{
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_255D621A0(uint64_t a1)
{
  v2 = sub_255D65DD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D621DC(uint64_t a1)
{
  v2 = sub_255D65DD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D62218@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255D649A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_255D62244@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 64);
  v28[2] = *(v2 + 48);
  v28[3] = v8;
  v29[0] = *(v2 + 80);
  *(v29 + 9) = *(v2 + 89);
  v9 = *(v2 + 32);
  v28[0] = *(v2 + 16);
  v28[1] = v9;
  v10 = *(v2 + 128);
  v30 = *(v2 + 112);
  v31 = v10;
  v11 = *(v2 + 144);
  v12 = *(v2 + 160);
  v13 = *(v2 + 176);
  *(v34 + 9) = *(v2 + 185);
  v33 = v12;
  v34[0] = v13;
  v32 = v11;
  result = sub_255D61AE8(a1, v6, v7);
  if (!v3)
  {
    sub_255D647DC(v28, v26);
    sub_255D60484(a1);
    v15 = *(v2 + 64);
    v26[2] = *(v2 + 48);
    v26[3] = v15;
    *v27 = *(v2 + 80);
    *(&v27[1] + 1) = *(v2 + 89);
    v16 = *(v2 + 32);
    v26[0] = *(v2 + 16);
    v26[1] = v16;
    sub_255D64744(v26);
    v23 = v32;
    v24 = v33;
    v25[0] = v34[0];
    *(v25 + 9) = *(v34 + 9);
    v21 = v30;
    v22 = v31;
    sub_255D647DC(&v30, v19);
    sub_255D60484(a1);
    v19[2] = v23;
    v19[3] = v24;
    v20[0] = v25[0];
    *(v20 + 9) = *(v25 + 9);
    v19[0] = v21;
    v19[1] = v22;
    sub_255D64744(v19);
    sub_255E389C8();
    v17 = MEMORY[0x277CDF828];
    a2[3] = MEMORY[0x277CDF838];
    a2[4] = v17;
    result = swift_allocObject();
    *a2 = result;
    v18 = *&v27[7];
    *(result + 16) = *&v27[5];
    *(result + 32) = v18;
    *(result + 48) = v27[9];
  }

  return result;
}

uint64_t sub_255D62494(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696F507472617473;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x746E696F50646E65;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E656964617267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x696F507472617473;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x746E696F50646E65;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E656964617267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_255D625A0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D62648(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D626DC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D62780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D65CF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D627B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x696F507472617473;
  if (v2 != 1)
  {
    v5 = 0x746E696F50646E65;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E656964617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D62814()
{
  v1 = 0x696F507472617473;
  if (*v0 != 1)
  {
    v1 = 0x746E696F50646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656964617267;
  }
}

unint64_t sub_255D62874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D65CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D6289C(uint64_t a1)
{
  v2 = sub_255D655DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D628D8(uint64_t a1)
{
  v2 = sub_255D655DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D62914(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D28, &qword_255E42220);
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D655DC();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v21 = v5;
    v39 = 1;
    sub_255D653AC();
    v8 = v51;
    sub_255E3ABC8();
    v48 = v42;
    v49 = v43;
    v50[0] = v44[0];
    *(v50 + 9) = *(v44 + 9);
    v46 = v40;
    v47 = v41;
    v33 = 2;
    sub_255E3ABC8();
    *(&v45[2] + 7) = v36;
    *(&v45[3] + 7) = v37;
    *(&v45[4] + 7) = *v38;
    v45[5] = *&v38[9];
    *(v45 + 7) = v34;
    *(&v45[1] + 7) = v35;
    v31 = 0;
    sub_255D65464();
    sub_255E3ABC8();
    (*(v21 + 8))(v7, v8);
    v9 = v32;
    v22[0] = v32;
    v24 = v48;
    v25 = v49;
    v26[0] = v50[0];
    *(v26 + 9) = *(v50 + 9);
    v22[1] = v46;
    v23 = v47;
    *(&v26[2] + 9) = v45[1];
    *(&v26[1] + 9) = v45[0];
    *(&v26[6] + 9) = v45[5];
    *(&v26[5] + 9) = v45[4];
    *(&v26[4] + 9) = v45[3];
    *(&v26[3] + 9) = v45[2];
    v10 = MEMORY[0x277D84F90];
    v27 = MEMORY[0x277D84F90];
    v11 = v46;
    *a2 = v32;
    *(a2 + 16) = v11;
    v12 = v23;
    v13 = v24;
    v14 = v26[0];
    *(a2 + 64) = v25;
    *(a2 + 80) = v14;
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    v15 = v26[1];
    v16 = v26[2];
    v17 = v26[4];
    *(a2 + 128) = v26[3];
    *(a2 + 144) = v17;
    *(a2 + 96) = v15;
    *(a2 + 112) = v16;
    v18 = v26[5];
    v19 = v26[6];
    v20 = v26[7];
    *(a2 + 208) = v10;
    *(a2 + 176) = v19;
    *(a2 + 192) = v20;
    *(a2 + 160) = v18;
    sub_255D65630(v22, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v28[0] = v9;
    v28[3] = v48;
    v28[4] = v49;
    v29[0] = v50[0];
    *(v29 + 9) = *(v50 + 9);
    v28[1] = v46;
    v28[2] = v47;
    *(&v29[2] + 9) = v45[1];
    *(&v29[1] + 9) = v45[0];
    *(&v29[6] + 9) = v45[5];
    *(&v29[5] + 9) = v45[4];
    *(&v29[4] + 9) = v45[3];
    *(&v29[3] + 9) = v45[2];
    v30 = v10;
    sub_255D65668(v28);
  }
}

void sub_255D62D8C(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 8);
  v40 = *v2;
  v28 = v5;
  v6 = *(v2 + 64);
  v38[2] = *(v2 + 48);
  v38[3] = v6;
  v39[0] = *(v2 + 80);
  *(v39 + 9) = *(v2 + 89);
  v7 = *(v2 + 32);
  v38[0] = *(v2 + 16);
  v38[1] = v7;
  v23 = *(v2 + 120);
  v24 = *(v2 + 112);
  v22 = *(v2 + 128);
  v30 = *(v2 + 136);
  v26 = *(v2 + 152);
  v27 = *(v2 + 144);
  v25 = *(v2 + 160);
  v8 = *(v2 + 168);
  v9 = *(v2 + 176);
  v10 = *(v2 + 184);
  v11 = *(v2 + 192);
  v12 = *(v2 + 200);
  sub_255D647DC(v38, &v31);
  sub_255D60484(a1);
  if (v3)
  {
    v13 = *(v2 + 64);
    v33 = *(v2 + 48);
    v34 = v13;
    v35[0] = *(v2 + 80);
    *(v35 + 9) = *(v2 + 89);
    v14 = *(v2 + 32);
    v31 = *(v2 + 16);
    v32 = v14;
    sub_255D64744(&v31);
  }

  else
  {
    v15 = *(v2 + 64);
    v33 = *(v2 + 48);
    v34 = v15;
    v35[0] = *(v2 + 80);
    *(v35 + 9) = *(v2 + 89);
    v16 = *(v2 + 32);
    v31 = *(v2 + 16);
    v32 = v16;
    sub_255D64744(&v31);
    if (v30 == 255)
    {
      if (v8 != 255)
      {
        sub_255DDEF98(a1, v27, v26, v25, v8 & 1);
      }

      v18 = v40;
      if (v12 != 255)
      {
        sub_255DDEF98(a1, v9, v10, v11, v12 & 1);
      }

      sub_255D61AE8(a1, v18, v28);
      v17 = v37;
      sub_255E38A28();
    }

    else
    {
      sub_255DDEF98(a1, v24, v23, v22, v30 & 1);
      sub_255D61AE8(a1, v40, v28);
      v17 = v36;
      sub_255E38A88();
    }

    v19 = MEMORY[0x277CDF930];
    a2[3] = MEMORY[0x277CDF940];
    a2[4] = v19;
    v20 = swift_allocObject();
    *a2 = v20;
    v21 = *(v17 + 1);
    *(v20 + 16) = *v17;
    *(v20 + 32) = v21;
    *(v20 + 48) = v17[4];
  }
}

uint64_t sub_255D63068()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D63148(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D63214(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D632F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D65D3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D63320(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x746E656964617267;
  v5 = 0xE500000000000000;
  v6 = 0x656C676E61;
  v7 = 0xEA0000000000656CLL;
  v8 = 0x676E417472617473;
  if (v2 != 3)
  {
    v8 = 0x656C676E41646E65;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
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

uint64_t sub_255D633BC()
{
  v1 = *v0;
  v2 = 0x746E656964617267;
  v3 = 0x656C676E61;
  v4 = 0x676E417472617473;
  if (v1 != 3)
  {
    v4 = 0x656C676E41646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

unint64_t sub_255D63454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D65D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D6347C(uint64_t a1)
{
  v2 = sub_255D65520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D634B8(uint64_t a1)
{
  v2 = sub_255D65520();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D634F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D18, &qword_255E42218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255D65520();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
  }

  else
  {
    v36 = v6;
    v68 = 1;
    sub_255D653AC();
    sub_255E3ABC8();
    v76 = v71;
    v77 = v72;
    v78[0] = v73[0];
    *(v78 + 9) = *(v73 + 9);
    v74 = v69;
    v75 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v37) = 2;
    sub_255D65400();
    sub_255E3ABA8();
    v30 = v50;
    v31 = v51;
    v32 = BYTE8(v51);
    LOBYTE(v37) = 3;
    sub_255E3ABA8();
    v28 = v50;
    v29 = v51;
    v27 = BYTE8(v51);
    LOBYTE(v37) = 4;
    sub_255E3ABA8();
    v26 = 0;
    v35 = *(&v50 + 1);
    v10 = v50;
    v11 = v51;
    v12 = BYTE8(v51);
    v66 = 0;
    sub_255D65464();
    sub_255E3ABC8();
    v34 = v10;
    (*(v36 + 8))(v8, v5);
    v36 = *(&v67 + 1);
    v33 = v67;
    v37 = v67;
    v40 = v76;
    v41 = v77;
    v42[0] = v78[0];
    *(v42 + 9) = *(v78 + 9);
    v38 = v74;
    v39 = v75;
    v13 = v30;
    v43 = v30;
    *&v44 = v31;
    BYTE8(v44) = v32;
    v45 = v28;
    *&v46 = v29;
    v14 = v27;
    BYTE8(v46) = v27;
    *&v47 = v10;
    v15 = v35;
    *(&v47 + 1) = v35;
    *&v48 = v11;
    BYTE8(v48) = v12;
    v16 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
    v17 = v42[0];
    *(a2 + 64) = v77;
    *(a2 + 80) = v17;
    v18 = v40;
    *(a2 + 32) = v39;
    *(a2 + 48) = v18;
    v19 = v38;
    *a2 = v37;
    *(a2 + 16) = v19;
    v20 = v42[1];
    v21 = v43;
    v22 = v45;
    *(a2 + 128) = v44;
    *(a2 + 144) = v22;
    *(a2 + 96) = v20;
    *(a2 + 112) = v21;
    v23 = v46;
    v24 = v47;
    v25 = v48;
    *(a2 + 208) = v16;
    *(a2 + 176) = v24;
    *(a2 + 192) = v25;
    *(a2 + 160) = v23;
    sub_255D65574(&v37, &v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    *&v50 = v33;
    *(&v50 + 1) = v36;
    v53 = v76;
    v54 = v77;
    v55[0] = v78[0];
    *(v55 + 9) = *(v78 + 9);
    v51 = v74;
    v52 = v75;
    v55[2] = __PAIR128__(*(&v30 + 1), v13);
    v56 = v31;
    v57 = v32;
    v58 = v28;
    v59 = v29;
    v60 = v14;
    v61 = v34;
    v62 = v15;
    v63 = v11;
    v64 = v12;
    v65 = MEMORY[0x277D84F90];
    sub_255D655AC(&v50);
  }
}

void sub_255D63B10(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = *v2;
  v32 = *(v2 + 8);
  v5 = *(v2 + 64);
  v30[2] = *(v2 + 48);
  v30[3] = v5;
  v31[0] = *(v2 + 80);
  *(v31 + 9) = *(v2 + 89);
  v6 = *(v2 + 32);
  v30[0] = *(v2 + 16);
  v30[1] = v6;
  v20 = *(v2 + 120);
  v21 = *(v2 + 112);
  v7 = *(v2 + 128);
  v24 = *(v2 + 136);
  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 160);
  v11 = *(v2 + 168);
  sub_255D647DC(v30, &v25);
  sub_255D60484(a1);
  if (v3)
  {
    v12 = *(v2 + 64);
    v27 = *(v2 + 48);
    v28 = v12;
    *v29 = *(v2 + 80);
    *(&v29[1] + 1) = *(v2 + 89);
    v13 = *(v2 + 32);
    v25 = *(v2 + 16);
    v26 = v13;
    sub_255D64744(&v25);
  }

  else
  {
    v14 = *(v2 + 64);
    v27 = *(v2 + 48);
    v28 = v14;
    *v29 = *(v2 + 80);
    *(&v29[1] + 1) = *(v2 + 89);
    v15 = *(v2 + 32);
    v25 = *(v2 + 16);
    v26 = v15;
    sub_255D64744(&v25);
    if (v24 != 255)
    {
      sub_255DDEF98(a1, v21, v20, v7, v24 & 1);
    }

    v16 = v32;
    if (v11 != 255)
    {
      sub_255DDEF98(a1, v9, v8, v10, v11 & 1);
    }

    sub_255D61AE8(a1, v22, v16);
    sub_255E38A28();
    v17 = MEMORY[0x277CDF878];
    a2[3] = MEMORY[0x277CDF888];
    a2[4] = v17;
    v18 = swift_allocObject();
    *a2 = v18;
    v19 = *&v29[7];
    *(v18 + 16) = *&v29[5];
    *(v18 + 32) = v19;
    *(v18 + 48) = v29[9];
  }
}

uint64_t sub_255D63D74()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D63E40(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D63EF8(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D63FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D65D88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D63FF0(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746E656964617267;
  v4 = 0xEB00000000737569;
  v5 = 0x6461527472617473;
  if (*v1 != 2)
  {
    v5 = 0x7569646152646E65;
    v4 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 0x7265746E6563;
    v2 = 0xE600000000000000;
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

uint64_t sub_255D64078()
{
  v1 = 0x746E656964617267;
  v2 = 0x6461527472617473;
  if (*v0 != 2)
  {
    v2 = 0x7569646152646E65;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

unint64_t sub_255D640FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D65D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D64124(uint64_t a1)
{
  v2 = sub_255D65358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D64160(uint64_t a1)
{
  v2 = sub_255D65358();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D6419C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6CF8, &unk_255E42208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255D65358();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
  }

  else
  {
    v28 = v6;
    v58 = 1;
    sub_255D653AC();
    sub_255E3ABC8();
    v66 = v61;
    v67 = v62;
    v68[0] = v63[0];
    *(v68 + 9) = *(v63 + 9);
    v64 = v59;
    v65 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v29) = 2;
    sub_255D65400();
    sub_255E3ABC8();
    v24 = v41;
    v25 = v42;
    v26 = v40;
    v27 = BYTE8(v42);
    LOBYTE(v29) = 3;
    sub_255E3ABC8();
    v21 = v40;
    v23 = v41;
    v10 = v42;
    v11 = BYTE8(v42);
    v56 = 0;
    sub_255D65464();
    sub_255E3ABC8();
    (*(v28 + 8))(v8, v5);
    v28 = *(&v57 + 1);
    v22 = v57;
    v29 = v57;
    v32 = v66;
    v33 = v67;
    v34[0] = v68[0];
    *(v34 + 9) = *(v68 + 9);
    v30 = v64;
    v31 = v65;
    v12 = v25;
    v13 = v24;
    *&v35 = v26;
    *(&v35 + 1) = v24;
    *&v36 = v25;
    BYTE8(v36) = v27;
    *&v37 = v21;
    *(&v37 + 1) = v23;
    v14 = v10;
    *&v38 = v10;
    LOBYTE(v10) = v11;
    BYTE8(v38) = v11;
    v15 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
    *(a2 + 176) = MEMORY[0x277D84F90];
    v16 = v34[0];
    *(a2 + 64) = v33;
    *(a2 + 80) = v16;
    v17 = v35;
    *(a2 + 96) = v34[1];
    *(a2 + 112) = v17;
    v18 = v30;
    *a2 = v29;
    *(a2 + 16) = v18;
    v19 = v32;
    *(a2 + 32) = v31;
    *(a2 + 48) = v19;
    v20 = v37;
    *(a2 + 128) = v36;
    *(a2 + 144) = v20;
    *(a2 + 160) = v38;
    sub_255D654B8(&v29, &v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    v40 = v22;
    v41 = v28;
    v44 = v66;
    v45 = v67;
    v46[0] = v68[0];
    *(v46 + 9) = *(v68 + 9);
    v42 = v64;
    v43 = v65;
    v47 = v26;
    v48 = v13;
    v49 = v12;
    v50 = v27;
    v51 = v21;
    v52 = v23;
    v53 = v14;
    v54 = v10;
    v55 = v15;
    sub_255D654F0(&v40);
  }
}

uint64_t sub_255D646AC(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

unint64_t sub_255D646F0()
{
  result = qword_27F7E6CA8;
  if (!qword_27F7E6CA8)
  {
    result = swift_getWitnessTable(byte_255E403A4, &type metadata for UnitPointResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6CA8);
  }

  return result;
}

unint64_t sub_255D64774()
{
  result = qword_27F7E6CB0;
  if (!qword_27F7E6CB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoubleResolvable, &type metadata for DoubleResolvable, v0, v1);
    atomic_store(result, &qword_27F7E6CB0);
  }

  return result;
}

void sub_255D647C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 <= 0xFDu)
  {
    sub_255D4CB98(a1, a2, a3, a4);
  }
}

uint64_t sub_255D64814(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return sub_255D38060(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_255D6484C()
{
  result = qword_27F7E6CB8;
  if (!qword_27F7E6CB8)
  {
    result = swift_getWitnessTable(asc_255E4028C, &type metadata for UnitPointResolvableError, v0, v1);
    atomic_store(result, &qword_27F7E6CB8);
  }

  return result;
}

unint64_t sub_255D648A4()
{
  result = qword_27F7E6CC0;
  if (!qword_27F7E6CC0)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for UnitPointResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6CC0);
  }

  return result;
}

unint64_t sub_255D648FC()
{
  result = qword_27F7E6CC8;
  if (!qword_27F7E6CC8)
  {
    result = swift_getWitnessTable(byte_255E402B4, &type metadata for UnitPointResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6CC8);
  }

  return result;
}

unint64_t sub_255D64954()
{
  result = qword_27F7E6CD0;
  if (!qword_27F7E6CD0)
  {
    result = swift_getWitnessTable(byte_255E402DC, &type metadata for UnitPointResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6CD0);
  }

  return result;
}

uint64_t sub_255D649A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D88, &qword_255E42940);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D65DD4();
  sub_255E3AE28();
  if (!v1)
  {
    LOBYTE(v23[0]) = 0;
    if (sub_255E3ABE8())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6DB0, &qword_255E42950);
      LOBYTE(v22[0]) = 0;
      sub_255D65ED8(&qword_27F7E6DB8, &qword_27F7E6DB0, &qword_255E42950, sub_255D65F54);
      sub_255E3ABC8();
      (*(v4 + 8))(v6, v3);
      v3 = *&v23[0];
    }

    else
    {
      LOBYTE(v23[0]) = 1;
      if (sub_255E3ABE8())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D98, &qword_255E42948);
        LOBYTE(v23[0]) = 1;
        sub_255D65ED8(&qword_27F7E6DA0, &qword_27F7E6D98, &qword_255E42948, sub_255D65E28);
        sub_255E3ABC8();
        v8 = v25;
        v9 = *(v25 + 16);
        if (v9)
        {
          v21 = v4;
          v24 = MEMORY[0x277D84F90];
          sub_255DE5FB0(0, v9, 0);
          v10 = v24;
          v20[1] = v8;
          v11 = v8 + 32;
          do
          {
            sub_255D65E7C(v11, v22);
            sub_255D34630(v22, v23);
            v24 = v10;
            v13 = *(v10 + 16);
            v12 = *(v10 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_255DE5FB0((v12 > 1), v13 + 1, 1);
              v10 = v24;
            }

            *(v10 + 16) = v13 + 1;
            sub_255D34630(v23, v10 + 40 * v13 + 32);
            v11 += 40;
            --v9;
          }

          while (v9);
          (*(v21 + 8))(v6, v3);
        }

        else
        {

          (*(v4 + 8))(v6, v3);
        }

        v3 = 0;
      }

      else
      {
        if (qword_27F7E5E80 != -1)
        {
          swift_once();
        }

        v14 = sub_255E386A8();
        __swift_project_value_buffer(v14, qword_27F8152D8);
        v15 = sub_255E38688();
        v16 = sub_255E3A848();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v23[0] = v18;
          *v17 = 136315394;
          *(v17 + 4) = sub_255D378C0(0xD000000000000071, 0x8000000255E65D10, v23);
          *(v17 + 12) = 2080;
          *(v17 + 14) = sub_255D378C0(0x6F72662874696E69, 0xEB00000000293A6DLL, v23);
          _os_log_impl(&dword_255D2E000, v15, v16, "%s %s Unable to decode any stops or colors.", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C4F9E0](v18, -1, -1);
          MEMORY[0x259C4F9E0](v17, -1, -1);
        }

        sub_255D6529C();
        swift_allocError();
        *v19 = 1;
        swift_willThrow();
        (*(v4 + 8))(v6, v3);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

unint64_t sub_255D64EBC(uint64_t a1, uint64_t a2)
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

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_255D64F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D64F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_255D6505C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D650A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_255D65128(uint64_t a1)
{
  result = sub_255D65150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D65150()
{
  result = qword_27F7E6CD8;
  if (!qword_27F7E6CD8)
  {
    result = swift_getWitnessTable(asc_255E4218C, &type metadata for RadialGradientShapeStyle, v0, v1);
    atomic_store(result, &qword_27F7E6CD8);
  }

  return result;
}

unint64_t sub_255D651A4(uint64_t a1)
{
  result = sub_255D651CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D651CC()
{
  result = qword_27F7E6CE0;
  if (!qword_27F7E6CE0)
  {
    result = swift_getWitnessTable(byte_255E42164, &type metadata for AngularGradientShapeStyle, v0, v1);
    atomic_store(result, &qword_27F7E6CE0);
  }

  return result;
}

unint64_t sub_255D65220(uint64_t a1)
{
  result = sub_255D65248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D65248()
{
  result = qword_27F7E6CE8;
  if (!qword_27F7E6CE8)
  {
    result = swift_getWitnessTable(asc_255E4213C, &type metadata for LinearGradientShapeStyle, v0, v1);
    atomic_store(result, &qword_27F7E6CE8);
  }

  return result;
}

unint64_t sub_255D6529C()
{
  result = qword_27F7E6CF0;
  if (!qword_27F7E6CF0)
  {
    result = swift_getWitnessTable(byte_255E428FC, &type metadata for GradientResolvableError, v0, v1);
    atomic_store(result, &qword_27F7E6CF0);
  }

  return result;
}

unint64_t sub_255D65358()
{
  result = qword_27F7E6D00;
  if (!qword_27F7E6D00)
  {
    result = swift_getWitnessTable(asc_255E428AC, &type metadata for RadialGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D00);
  }

  return result;
}

unint64_t sub_255D653AC()
{
  result = qword_27F7E6D08;
  if (!qword_27F7E6D08)
  {
    result = swift_getWitnessTable(asc_255E401E4, &type metadata for UnitPointResolvable, v0, v1);
    atomic_store(result, &qword_27F7E6D08);
  }

  return result;
}

unint64_t sub_255D65400()
{
  result = qword_27F7E62E8;
  if (!qword_27F7E62E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E62E0, &qword_255E3C940);
    result = swift_getWitnessTable(protocol conformance descriptor for Referenceable<A>, v3, v0, v1);
    atomic_store(result, &qword_27F7E62E8);
  }

  return result;
}

unint64_t sub_255D65464()
{
  result = qword_27F7E6D10;
  if (!qword_27F7E6D10)
  {
    result = swift_getWitnessTable(byte_255E42884, &type metadata for GradientResolvable, v0, v1);
    atomic_store(result, &qword_27F7E6D10);
  }

  return result;
}

unint64_t sub_255D65520()
{
  result = qword_27F7E6D20;
  if (!qword_27F7E6D20)
  {
    result = swift_getWitnessTable(byte_255E42834, &type metadata for AngularGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D20);
  }

  return result;
}

unint64_t sub_255D655DC()
{
  result = qword_27F7E6D30;
  if (!qword_27F7E6D30)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for LinearGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MathOperation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MathOperation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_255D65808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_255D65850(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_255D658C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_255D65920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_255D65984()
{
  result = qword_27F7E6D38;
  if (!qword_27F7E6D38)
  {
    result = swift_getWitnessTable(byte_255E424C4, &type metadata for GradientResolvableError, v0, v1);
    atomic_store(result, &qword_27F7E6D38);
  }

  return result;
}

unint64_t sub_255D659DC()
{
  result = qword_27F7E6D40;
  if (!qword_27F7E6D40)
  {
    result = swift_getWitnessTable(byte_255E425DC, &type metadata for RadialGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D40);
  }

  return result;
}

unint64_t sub_255D65A34()
{
  result = qword_27F7E6D48;
  if (!qword_27F7E6D48)
  {
    result = swift_getWitnessTable(byte_255E426CC, &type metadata for AngularGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D48);
  }

  return result;
}

unint64_t sub_255D65A8C()
{
  result = qword_27F7E6D50;
  if (!qword_27F7E6D50)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for LinearGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D50);
  }

  return result;
}

unint64_t sub_255D65AE4()
{
  result = qword_27F7E6D58;
  if (!qword_27F7E6D58)
  {
    result = swift_getWitnessTable(byte_255E426F4, &type metadata for LinearGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D58);
  }

  return result;
}

unint64_t sub_255D65B3C()
{
  result = qword_27F7E6D60;
  if (!qword_27F7E6D60)
  {
    result = swift_getWitnessTable(byte_255E4271C, &type metadata for LinearGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D60);
  }

  return result;
}

unint64_t sub_255D65B94()
{
  result = qword_27F7E6D68;
  if (!qword_27F7E6D68)
  {
    result = swift_getWitnessTable(byte_255E42604, &type metadata for AngularGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D68);
  }

  return result;
}

unint64_t sub_255D65BEC()
{
  result = qword_27F7E6D70;
  if (!qword_27F7E6D70)
  {
    result = swift_getWitnessTable(byte_255E4262C, &type metadata for AngularGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D70);
  }

  return result;
}

unint64_t sub_255D65C44()
{
  result = qword_27F7E6D78;
  if (!qword_27F7E6D78)
  {
    result = swift_getWitnessTable(byte_255E42514, &type metadata for RadialGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D78);
  }

  return result;
}

unint64_t sub_255D65C9C()
{
  result = qword_27F7E6D80;
  if (!qword_27F7E6D80)
  {
    result = swift_getWitnessTable(byte_255E4253C, &type metadata for RadialGradientShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D80);
  }

  return result;
}

unint64_t sub_255D65CF0(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D65D3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D65D88(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D65DD4()
{
  result = qword_27F7E6D90;
  if (!qword_27F7E6D90)
  {
    result = swift_getWitnessTable(byte_255E42B90, &type metadata for GradientResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6D90);
  }

  return result;
}

unint64_t sub_255D65E28()
{
  result = qword_27F7E6DA8;
  if (!qword_27F7E6DA8)
  {
    result = swift_getWitnessTable(aQ_0, &type metadata for AnyCodableColor, v0, v1);
    atomic_store(result, &qword_27F7E6DA8);
  }

  return result;
}

uint64_t sub_255D65ED8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255D65F54()
{
  result = qword_27F7E6DC0;
  if (!qword_27F7E6DC0)
  {
    result = swift_getWitnessTable(byte_255E424EC, &type metadata for GradientStopResolvable, v0, v1);
    atomic_store(result, &qword_27F7E6DC0);
  }

  return result;
}

unint64_t sub_255D65FA8()
{
  result = qword_27F7E6DD0;
  if (!qword_27F7E6DD0)
  {
    result = swift_getWitnessTable(byte_255E42B40, &type metadata for GradientStopResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6DD0);
  }

  return result;
}

unint64_t sub_255D66074()
{
  result = qword_27F7E6DD8;
  if (!qword_27F7E6DD8)
  {
    result = swift_getWitnessTable(byte_255E42A28, &type metadata for GradientResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6DD8);
  }

  return result;
}

unint64_t sub_255D660CC()
{
  result = qword_27F7E6DE0;
  if (!qword_27F7E6DE0)
  {
    result = swift_getWitnessTable(byte_255E42B18, &type metadata for GradientStopResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6DE0);
  }

  return result;
}

unint64_t sub_255D66124()
{
  result = qword_27F7E6DE8;
  if (!qword_27F7E6DE8)
  {
    result = swift_getWitnessTable(aQ_1, &type metadata for GradientStopResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6DE8);
  }

  return result;
}

unint64_t sub_255D6617C()
{
  result = qword_27F7E6DF0;
  if (!qword_27F7E6DF0)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for GradientStopResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6DF0);
  }

  return result;
}

unint64_t sub_255D661D4()
{
  result = qword_27F7E6DF8;
  if (!qword_27F7E6DF8)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for GradientResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6DF8);
  }

  return result;
}

unint64_t sub_255D6622C()
{
  result = qword_27F7E6E00;
  if (!qword_27F7E6E00)
  {
    result = swift_getWitnessTable(aQ_2, &type metadata for GradientResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6E00);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D66308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_255D66350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_255D663E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_255D66428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_255D664B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_255D66500(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_255D66588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_255D665D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for LinkView(uint64_t a1)
{
  result = qword_27F7E6E08;
  if (!qword_27F7E6E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255D666A8(uint64_t a1)
{
  sub_255D6676C(319);
  if (v1 <= 0x3F)
  {
    sub_255D667C4();
    if (v2 <= 0x3F)
    {
      sub_255D66828();
      if (v3 <= 0x3F)
      {
        sub_255D66878(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255D6676C(uint64_t a1)
{
  if (!qword_27F7E6E18)
  {
    sub_255E38588();
    v1 = sub_255E3A8A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7E6E18);
    }
  }
}

unint64_t sub_255D667C4()
{
  result = qword_27F7E6E20;
  if (!qword_27F7E6E20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F7E6E20);
  }

  return result;
}

void sub_255D66828()
{
  if (!qword_27F7E6E28)
  {
    v0 = sub_255E3A6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E6E28);
    }
  }
}

void sub_255D66878(uint64_t a1)
{
  if (!qword_27F7E6E30)
  {
    type metadata accessor for RemoteStateStore(255);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    v1 = sub_255E38CD8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7E6E30);
    }
  }
}

uint64_t sub_255D66948@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_255E384B8();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255E384C8();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255E384E8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F00, &qword_255E43F98);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_255E38508();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = *(v1 + 48);
  v62 = a1;
  v61 = v23;
  v60 = v20;
  if ((v23 & 0x20) != 0)
  {
    v51 = v19;
    v52 = &v51 - v18;
    v53 = v3;
    v28 = v23 & 0xDF;
    *&v66 = v20;
    *(&v66 + 1) = v21;
    *&v67 = v22;
    BYTE8(v67) = v23 & 0xDF;
    if (v24)
    {
      v54 = v21;
      v55 = v22;
      sub_255D6EEE0(v20, v21, v22, v23);

      StringResolvable.resolved(with:)(v29);

      v40 = sub_255E38588();
      (*(*(v40 - 8) + 56))(v11, 1, 1, v40);
      (*(v56 + 104))(v7, *MEMORY[0x277CC8BB0], v57);
      (*(v59 + 104))(v58, *MEMORY[0x277CC8B98], v53);

      sub_255E384D8();
      sub_255E384F8();

      (*(v16 + 56))(v14, 0, 1, v15);
      v41 = v52;
      (*(v16 + 32))(v52, v14, v15);
      (*(v16 + 16))(v51, v41, v15);
      *&v63 = sub_255E397F8();
      *(&v63 + 1) = v42;
      *&v64 = v43 & 1;
      *(&v64 + 1) = v44;
      LOBYTE(v65) = 0;
      sub_255E39258();
      (*(v16 + 8))(v41, v15);
      v63 = v66;
      v64 = v67;
      LOBYTE(v65) = v68;
      HIBYTE(v65) = 1;
      v45 = v66;
      v46 = v67;
      sub_255D6EF3C(v66, *(&v66 + 1), v67, *(&v67 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65F0, &qword_255E43FA0);
      sub_255D4C8D4(&qword_27F7E65E8, &qword_27F7E65F0, &qword_255E43FA0, MEMORY[0x277CE0BC8]);
      sub_255E39258();
      sub_255D4CA30(v60, v54, v55, v61);
      result = sub_255D4C9A0(v45, *(&v45 + 1), v46, *(&v46 + 1));
      goto LABEL_6;
    }
  }

  else
  {
    *&v66 = v20;
    *(&v66 + 1) = v21;
    *&v67 = v22;
    BYTE8(v67) = v23;
    if (v24)
    {
      v25 = v21;
      v26 = v22;
      sub_255D6EEE0(v20, v21, v22, v23);

      v30 = StringResolvable.resolved(with:)(v27);
      v32 = v31;

      *&v66 = v30;
      *(&v66 + 1) = v32;
      sub_255D6EEE8();
      v33 = sub_255E39808();
      v35 = v34;
      *&v63 = v33;
      *(&v63 + 1) = v34;
      v37 = v36 & 1;
      *&v64 = v36 & 1;
      *(&v64 + 1) = v38;
      v65 = 0;
      sub_255D6EF78(v33, v34, v36 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65F0, &qword_255E43FA0);
      sub_255D4C8D4(&qword_27F7E65E8, &qword_27F7E65F0, &qword_255E43FA0, MEMORY[0x277CE0BC8]);
      sub_255E39258();
      sub_255D4CA30(v60, v25, v26, v61);
      sub_255D4C990(v33, v35, v37);

LABEL_6:
      v47 = v67;
      v48 = v68;
      v49 = v69;
      v50 = v62;
      *v62 = v66;
      v50[1] = v47;
      *(v50 + 32) = v48;
      *(v50 + 33) = v49;
      return result;
    }

    v28 = v23;
  }

  sub_255D3E5A8(v20, v21, v22, v28);
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D6715C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  if (v2 != 1)
  {
    v4 = 0x6E776F646B72616DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (*a2 != 1)
  {
    v8 = 0x6E776F646B72616DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
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

uint64_t sub_255D67250()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D672E4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D67364(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D673F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D712E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D67424(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E69727473;
  if (v2 != 1)
  {
    v5 = 0x6E776F646B72616DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D67474()
{
  v1 = 0x676E69727473;
  if (*v0 != 1)
  {
    v1 = 0x6E776F646B72616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_255D674C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D712E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D674E8(uint64_t a1)
{
  v2 = sub_255D703F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D67524(uint64_t a1)
{
  v2 = sub_255D703F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D67560@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_255E385D8();
  *&v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7028, &unk_255E44120);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v49 = sub_255E38CC8();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D703F8();
  v11 = v34;
  sub_255E3AE28();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v12 = v33;
    v34 = a1;
    v13 = v32;
    v30 = v10;
    LOBYTE(v40) = 0;
    v14 = sub_255E3AB88();
    if (v15)
    {
      *&v29 = v14;
      *(&v29 + 1) = v15;
    }

    else
    {
      sub_255E385C8();
      *&v29 = sub_255E385B8();
      *(&v29 + 1) = v17;
      (*(v12 + 8))(v5, v3);
    }

    LOBYTE(v35) = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    v18 = BYTE8(v41);
    if (BYTE8(v41) < 0xFEu)
    {
      v20 = v41;
      v33 = v40;
      (*(v13 + 8))(v8, v6);
      v21 = v18 | 0x20;
      v19 = v34;
    }

    else
    {
      LOBYTE(v35) = 1;
      sub_255E3ABC8();
      v19 = v34;
      (*(v13 + 8))(v8, v6);
      v33 = v40;
      v20 = v41;
      v21 = BYTE8(v41);
    }

    LODWORD(v34) = v21;
    v22 = v29;
    v35 = v29;
    v36 = v33;
    *&v37 = v20;
    BYTE8(v37) = v21;
    *(&v37 + 9) = v48[0];
    HIDWORD(v37) = *(v48 + 3);
    v23 = v49;
    v24 = v30;
    *&v38 = v49;
    *(&v38 + 1) = v30;
    v39 = MEMORY[0x277D84F90];
    v25 = v31;
    *(v31 + 64) = MEMORY[0x277D84F90];
    v26 = v38;
    v25[2] = v37;
    v25[3] = v26;
    v27 = v36;
    *v25 = v35;
    v25[1] = v27;
    sub_255D4CA38(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v40 = v22;
    v41 = v33;
    v42 = v20;
    v43 = v34;
    *v44 = v48[0];
    *&v44[3] = *(v48 + 3);
    v45 = v23;
    v46 = v24;
    v47 = MEMORY[0x277D84F90];
    return sub_255D7044C(&v40);
  }
}

uint64_t sub_255D67A20@<X0>(uint64_t *a1@<X8>)
{
  sub_255D66948(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65D8, &unk_255E3E100);
  sub_255D4C82C();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

unint64_t sub_255D67AFC()
{
  result = qword_27F7E6E38;
  if (!qword_27F7E6E38)
  {
    result = swift_getWitnessTable(byte_255E43F78, &type metadata for TextView, v0, v1);
    atomic_store(result, &qword_27F7E6E38);
  }

  return result;
}

void *sub_255D67B50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3 > 0xFD)
  {
    goto LABEL_4;
  }

  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v9 = v5;
  v10 = v4;
  if (v7)
  {

    sub_255D6EF88(v5, v4, v6, v3);
    sub_255D8F6FC(v7);

    sub_255D4CB98(v5, v4, v6, v3);
LABEL_4:
    result = sub_255E39258();
    *a1 = v9;
    *(a1 + 8) = v10;
    return result;
  }

  sub_255D612A0(v5, v4, v6, v3);
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D67CC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74676E654C6E696DLL;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE900000000000068;
  }

  if (*a2)
  {
    v5 = 0x74676E654C6E696DLL;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE900000000000068;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D67D68()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D67DE4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D67E4C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D67ED0(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x74676E654C6E696DLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000068;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D67F08()
{
  if (*v0)
  {
    return 0x74676E654C6E696DLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D67F48(uint64_t a1)
{
  v2 = sub_255D70320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D67F84(uint64_t a1)
{
  v2 = sub_255D70320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D67FC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = sub_255E385D8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7008, &unk_255E44100);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v53 = sub_255E38CC8();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D70320();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D647C8(0, 0, 0, 254);
  }

  else
  {
    v11 = v34;
    v31 = v10;
    v12 = v35;
    LOBYTE(v41[0]) = 0;
    v13 = sub_255E3AB88();
    if (v14)
    {
      *&v30 = v13;
      *(&v30 + 1) = v14;
    }

    else
    {
      sub_255E385C8();
      *&v30 = sub_255E385B8();
      *(&v30 + 1) = v16;
      (*(v33 + 8))(v5, v32);
    }

    v17 = v12;
    v18 = a1;
    v47 = 1;
    sub_255D64774();
    sub_255E3ABA8();
    (*(v11 + 8))(v8, v6);
    v20 = v48;
    v19 = v49;
    v35 = v48;
    v21 = v50;
    v34 = v50;
    v22 = v51;
    sub_255D647C8(0, 0, 0, 254);
    v23 = v30;
    v36 = v30;
    v24 = *(&v30 + 1);
    *&v37 = v20;
    *(&v37 + 1) = v19;
    *&v38 = v21;
    BYTE8(v38) = v22;
    *(&v38 + 9) = v52[0];
    HIDWORD(v38) = *(v52 + 3);
    v25 = v53;
    *&v39 = MEMORY[0x277D84F90];
    *(&v39 + 1) = v53;
    v26 = v31;
    v40 = v31;
    *(v17 + 64) = v31;
    v27 = v37;
    *v17 = v36;
    *(v17 + 16) = v27;
    v28 = v39;
    *(v17 + 32) = v38;
    *(v17 + 48) = v28;
    sub_255D4D808(&v36, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v41[0] = v23;
    v41[1] = v24;
    v41[2] = v35;
    v41[3] = v19;
    v41[4] = v34;
    v42 = v22;
    *v43 = v52[0];
    *&v43[3] = *(v52 + 3);
    v44 = MEMORY[0x277D84F90];
    v45 = v25;
    v46 = v26;
    return sub_255D70374(v41);
  }
}

uint64_t sub_255D6841C@<X0>(uint64_t *a1@<X8>)
{
  sub_255D67B50(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6788, &qword_255E3E1D0);
  sub_255D4C8D4(&qword_27F7E6790, &qword_27F7E6788, &qword_255E3E1D0, MEMORY[0x277CE1170]);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

void *sub_255D684D8@<X0>(void *a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F10, &qword_255E43FA8);
  MEMORY[0x28223BE20](v35);
  v3 = &v33 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67C0, &unk_255E3E1E0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_255E38588();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for LinkView(0);
  sub_255D3957C(v1 + *(v16 + 20), v8, &qword_27F7E6B28, &unk_255E48060);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_255D395E4(v8, &qword_27F7E6B28, &unk_255E48060);
    sub_255E38EF8();
    v17 = sub_255E397E8();
    v19 = v18;
    v21 = v20;
    sub_255E39D48();
    v22 = sub_255E397D8();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    sub_255D4C990(v17, v19, v21 & 1);

    *v3 = v22;
    *(v3 + 1) = v24;
    v3[16] = v26 & 1;
    *(v3 + 3) = v28;
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E67B8, &qword_27F7E67C0, &unk_255E3E1E0, MEMORY[0x277CDE598]);
    return sub_255E39258();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v30 = (*(v10 + 16))(v13, v15, v9);
    MEMORY[0x28223BE20](v30);
    sub_255E397B8();
    v31 = v34;
    v32 = v36;
    (*(v34 + 16))(v3, v5, v36);
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E67B8, &qword_27F7E67C0, &unk_255E3E1E0, MEMORY[0x277CDE598]);
    sub_255E39258();
    (*(v31 + 8))(v5, v32);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_255D689B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LinkView(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 24))(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_255D68A30()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D68AF8(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D68BAC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D68C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D71334(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D68CA0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (*v1 != 2)
  {
    v5 = 0x5365746176697270;
    v4 = 0xED0000616D656863;
  }

  if (*v1)
  {
    v3 = 0x74616E6974736564;
    v2 = 0xEB000000006E6F69;
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

uint64_t sub_255D68D24()
{
  v1 = 25705;
  v2 = 0x6C6562616CLL;
  if (*v0 != 2)
  {
    v2 = 0x5365746176697270;
  }

  if (*v0)
  {
    v1 = 0x74616E6974736564;
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

unint64_t sub_255D68DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D71334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D68DCC(uint64_t a1)
{
  v2 = sub_255D7019C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D68E08(uint64_t a1)
{
  v2 = sub_255D7019C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D68E44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v25 - v5;
  v6 = sub_255E385D8();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FF8, &unk_255E440F0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for LinkView(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v14 + *(v12 + 28)) = MEMORY[0x277D84F90];
  v15 = (v14 + *(v12 + 32));
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v33 = sub_255E38CC8();
  *v15 = v33;
  v15[1] = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D7019C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v18 = v30;
    v17 = v31;
    v26 = a1;
    LOBYTE(v34) = 0;
    v19 = sub_255E3AB88();
    if (!v20)
    {
      sub_255E385C8();
      v25 = sub_255E385B8();
      v23 = v22;
      (*(v27 + 8))(v18, v28);
      v20 = v23;
      v19 = v25;
    }

    *v14 = v19;
    v14[1] = v20;
    LOBYTE(v34) = 1;
    sub_255E3ABB8();
    v24 = v29;
    sub_255E38578();

    sub_255D701F0(v24, v14 + *(v11 + 20));
    v37 = 2;
    v35 = &type metadata for ViewContent;
    v36 = sub_255D44794();
    *&v34 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v32 + 8))(v10, v8);
    sub_255D34630(&v34, v14 + *(v11 + 24));
    sub_255D70260(v14, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return sub_255D702C4(v14);
  }
}

uint64_t sub_255D69300@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67A8, &qword_255E3E1D8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_255D684D8((&v10 - v6));
  sub_255D3957C(v7, v5, &qword_27F7E67A8, &qword_255E3E1D8);
  sub_255D4D914();
  v8 = sub_255E3A038();
  result = sub_255D395E4(v7, &qword_27F7E67A8, &qword_255E3E1D8);
  *a1 = v8;
  return result;
}

uint64_t sub_255D6942C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D69484(uint64_t a1)
{
  v2 = sub_255D703A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D694C0(uint64_t a1)
{
  v2 = sub_255D703A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D694FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F08, &qword_255E3B9A0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255E388C8();
  (*(v3 + 16))(v6, v8, v2);
  sub_255D38950(&qword_27F7E5FC8, &qword_27F7E5F08, &qword_255E3B9A0, MEMORY[0x277CDD7F8]);
  v9 = sub_255E3A038();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

uint64_t sub_255D696F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D69764()
{
  result = qword_27F7E6E40;
  if (!qword_27F7E6E40)
  {
    result = swift_getWitnessTable(asc_255E43F5C, &type metadata for ProgressView, v0, v1);
    atomic_store(result, &qword_27F7E6E40);
  }

  return result;
}

unint64_t sub_255D69800()
{
  result = qword_27F7E6E48;
  if (!qword_27F7E6E48)
  {
    result = swift_getWitnessTable(asc_255E43F40, &type metadata for SpacerView, v0, v1);
    atomic_store(result, &qword_27F7E6E48);
  }

  return result;
}

uint64_t sub_255D69870(uint64_t a1, uint64_t a2)
{
  sub_255D6ED24(&qword_27F7E6E50, type metadata accessor for LinkView, aE_30);
  sub_255D6ED24(&qword_27F7E67C8, type metadata accessor for LinkView, asc_255E4388C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255D69928(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F6C6F63;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F6C6F63;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D699C0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D69A34(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D69A94(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D69B10(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x726F6C6F63;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D69B40()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D69B78(uint64_t a1)
{
  v2 = sub_255D70118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D69BB4(uint64_t a1)
{
  v2 = sub_255D70118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D69BF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_255E385D8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FE8, &unk_255E440E0);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v33 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v25 = sub_255E38CC8();
  v34 = v25;
  v35 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D70118();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v21 = v4;
    v12 = v23;
    v11 = v24;
    LOBYTE(v26) = 0;
    v13 = sub_255E3AB88();
    v16 = v14;
    if (!v14)
    {
      v17 = v6;
      sub_255E385C8();
      v18 = sub_255E385B8();
      v16 = v19;
      (*(v22 + 8))(v17, v21);
      v13 = v18;
    }

    v29[0] = v13;
    v29[1] = v16;
    v36 = 1;
    sub_255D65E28();
    sub_255E3ABC8();
    (*(v12 + 8))(v9, v7);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_255D4DA74(v29, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D7016C(v29);
  }
}

uint64_t sub_255D69F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4D9CC();
  (*(v4 + 24))(&v6, a1, v4);
  result = sub_255E3A038();
  *a2 = result;
  return result;
}

uint64_t sub_255D69F98@<X0>(uint64_t *a1@<X8>)
{
  sub_255D65E7C(v1 + 16, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (*(v1 + 64))
  {
    v5 = *(v4 + 16);

    v7 = v5(v6, v3, v4);

    result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a1 = v7;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

unint64_t sub_255D6A0FC()
{
  result = qword_27F7E6E58;
  if (!qword_27F7E6E58)
  {
    result = swift_getWitnessTable(aA_3, &type metadata for ColorView, v0, v1);
    atomic_store(result, &qword_27F7E6E58);
  }

  return result;
}

uint64_t sub_255D6A150(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C61636974726576;
  if (v2 != 1)
  {
    v4 = 7105633;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C61636974726576;
  if (*a2 != 1)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
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

uint64_t sub_255D6A244()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6A2E4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D6A370(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D6A40C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D71380(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D6A43C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C61;
  v4 = 0xE800000000000000;
  v5 = 0x6C61636974726576;
  if (v2 != 1)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E6F7A69726F68;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D6A554()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6A604(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D6A6A0(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D6A74C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D713CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D6A77C(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEF73726F74616369;
  v5 = 0x646E4973776F6873;
  if (*v1 != 2)
  {
    v5 = 2003134838;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1936029793;
    v2 = 0xE400000000000000;
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

uint64_t sub_255D6A7E8()
{
  v1 = 25705;
  v2 = 0x646E4973776F6873;
  if (*v0 != 2)
  {
    v2 = 2003134838;
  }

  if (*v0)
  {
    v1 = 1936029793;
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

unint64_t sub_255D6A850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D713CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D6A878(uint64_t a1)
{
  v2 = sub_255D6FE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6A8B4(uint64_t a1)
{
  v2 = sub_255D6FE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6A8F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_255E385D8();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FB0, &unk_255E440B0);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v38[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v31 = sub_255E38CC8();
  v38[6] = v31;
  v38[7] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D6FE78();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = a1;
  v12 = v28;
  v11 = v29;
  v13 = v30;
  LOBYTE(v32) = 0;
  v14 = sub_255E3AB88();
  v17 = v15;
  v26 = v7;
  if (!v15)
  {
    v18 = v6;
    sub_255E385C8();
    v19 = sub_255E385B8();
    v21 = v20;
    (*(v11 + 8))(v18, v4);
    v17 = v21;
    v14 = v19;
  }

  v35[0] = v14;
  v35[1] = v17;
  v39 = 1;
  sub_255D6FECC();
  sub_255E3ABA8();
  if (v32 > 1u)
  {
    if (v32 == 2)
    {
      sub_255E395A8();
      sub_255E395C8();
      sub_255E395B8();
      v22 = sub_255E395B8();
      goto LABEL_12;
    }

LABEL_11:
    v22 = sub_255E395C8();
    goto LABEL_12;
  }

  if (v32)
  {
    goto LABEL_11;
  }

  v22 = sub_255E395A8();
LABEL_12:
  v36 = v22;
  LOBYTE(v32) = 2;
  v23 = v26;
  v24 = sub_255E3AB98();
  v37 = (v24 == 2) | v24 & 1;
  v39 = 3;
  v33 = &type metadata for ViewContent;
  v34 = sub_255D44794();
  *&v32 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  (*(v12 + 8))(v9, v23);
  sub_255D34630(&v32, v38);
  sub_255D4E190(v35, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return sub_255D6FF20(v35);
}

uint64_t sub_255D6AD5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68A8, &qword_255E3E228);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_255D4E0E8();
  (*(v11 + 24))(a1, v11);
  (*(v5 + 16))(v8, v10, v4);
  sub_255D38950(&qword_27F7E68B0, &qword_27F7E68A8, &qword_255E3E228, MEMORY[0x277CDD6E0]);
  v12 = sub_255E3A038();
  result = (*(v5 + 8))(v10, v4);
  *a2 = v12;
  return result;
}

uint64_t sub_255D6AF58()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 88);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);

    v6 = sub_255DBFA2C(v5, v4, v3, v2, v1);

    MEMORY[0x28223BE20](v6);
    return sub_255E3A028();
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D6B0E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v4 = 1850700649;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (*a2 != 1)
  {
    v8 = 1850700649;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
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

uint64_t sub_255D6B1C8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6B254(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D6B2CC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D6B354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D71418(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D6B384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 1850700649;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D6B3CC()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 1850700649;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_255D6B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D71418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D6B438(uint64_t a1)
{
  v2 = sub_255D70094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6B474(uint64_t a1)
{
  v2 = sub_255D70094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6B4B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_255E385D8();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FD8, &unk_255E440D0);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v31[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v24 = sub_255E38CC8();
  v35 = v24;
  v36 = v10;
  v11 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_255D70094();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v12 = v21;
    v13 = v22;
    LOBYTE(v26) = 0;
    v14 = sub_255E3AB88();
    v17 = v15;
    if (!v15)
    {
      sub_255E385C8();
      v18 = sub_255E385B8();
      v17 = v19;
      (*(v12 + 8))(v6, v4);
      v14 = v18;
    }

    v30[0] = v14;
    v30[1] = v17;
    v25 = 1;
    v28 = &type metadata for ViewContent;
    v29 = sub_255D44794();
    *&v26 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v26, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    v25 = 2;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    (*(v23 + 8))(v9, v7);
    v32 = v26;
    v33 = v27;
    v34 = v28;
    sub_255D4DF88(v30, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    return sub_255D700E8(v30);
  }
}

uint64_t sub_255D6B924@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6868, &qword_255E3E218);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D6AF58();
  (*(v3 + 16))(v6, v8, v2);
  sub_255D38950(&qword_27F7E6870, &qword_27F7E6868, &qword_255E3E218, MEMORY[0x277CDF068]);
  v9 = sub_255E3A038();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

unint64_t sub_255D6BAF0()
{
  result = qword_27F7E6E60;
  if (!qword_27F7E6E60)
  {
    result = swift_getWitnessTable(asc_255E43EEC, &type metadata for ToggleView, v0, v1);
    atomic_store(result, &qword_27F7E6E60);
  }

  return result;
}

uint64_t sub_255D6BB44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  if (v2 != 1)
  {
    v4 = 1852793705;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (*a2 != 1)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
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

uint64_t sub_255D6BC28()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6BCB4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D6BD2C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D6BDB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D71464(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D6BDE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656C746974;
  if (v2 != 1)
  {
    v5 = 1852793705;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D6BE2C()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 1852793705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_255D6BE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D71464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D6BE98(uint64_t a1)
{
  v2 = sub_255D70010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6BED4(uint64_t a1)
{
  v2 = sub_255D70010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6BF10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_255E385D8();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FC8, &unk_255E440C0);
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v31[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v24 = sub_255E38CC8();
  v31[6] = v24;
  v31[7] = v10;
  v11 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_255D70010();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v12 = v23;
    v13 = v22;
    LOBYTE(v26) = 0;
    v14 = sub_255E3AB88();
    v17 = v15;
    if (!v15)
    {
      sub_255E385C8();
      v18 = sub_255E385B8();
      v17 = v19;
      (*(v12 + 8))(v6, v4);
      v14 = v18;
    }

    v29[0] = v14;
    v29[1] = v17;
    v25 = 1;
    v27 = &type metadata for ViewContent;
    v20 = sub_255D44794();
    v28 = v20;
    *&v26 = swift_allocObject();
    v23 = sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v26, &v30);
    v25 = 2;
    v27 = &type metadata for ViewContent;
    v28 = v20;
    *&v26 = swift_allocObject();
    sub_255E3ABC8();
    (*(v13 + 8))(v9, v7);
    sub_255D34630(&v26, v31);
    sub_255D4E08C(v29, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    return sub_255D70064(v29);
  }
}

uint64_t sub_255D6C340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6888, &qword_255E3E220);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_255D4DFE4();
  (*(v11 + 24))(a1, v11);
  (*(v5 + 16))(v8, v10, v4);
  sub_255D38950(&qword_27F7E6890, &qword_27F7E6888, &qword_255E3E220, MEMORY[0x277CDEFF0]);
  v12 = sub_255E3A038();
  result = (*(v5 + 8))(v10, v4);
  *a2 = v12;
  return result;
}

unint64_t sub_255D6C5A0()
{
  result = qword_27F7E6E68;
  if (!qword_27F7E6E68)
  {
    result = swift_getWitnessTable(byte_255E43ED0, &type metadata for LabelView, v0, v1);
    atomic_store(result, &qword_27F7E6E68);
  }

  return result;
}

unint64_t sub_255D6C63C()
{
  result = qword_27F7E6E70;
  if (!qword_27F7E6E70)
  {
    result = swift_getWitnessTable(byte_255E43EB4, &type metadata for ScrollingView, v0, v1);
    atomic_store(result, &qword_27F7E6E70);
  }

  return result;
}

uint64_t sub_255D6C6A8(uint64_t a1)
{
  v2 = sub_255D6FDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6C6E4(uint64_t a1)
{
  v2 = sub_255D6FDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6C720@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68C8, &unk_255E3E230);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = v2[3];
  v15 = *v2;
  v16 = *(v2 + 1);
  v17 = v11;
  v18 = *(v2 + 2);
  v12 = sub_255D4E1EC();
  (*(v12 + 24))(a1, v12);
  sub_255D3957C(v10, v8, &qword_27F7E68C8, &unk_255E3E230);
  sub_255D4E240();
  v13 = sub_255E3A038();
  result = sub_255D395E4(v10, &qword_27F7E68C8, &unk_255E3E230);
  *a2 = v13;
  return result;
}

uint64_t sub_255D6C86C()
{
  v5 = *(v0 + 16);
  KeyPath = swift_getKeyPath();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v3 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v5, KeyPath, sub_255D5F848, 0, v2, MEMORY[0x277CE11C8], v3, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

unint64_t sub_255D6C9CC()
{
  result = qword_27F7E6E78;
  if (!qword_27F7E6E78)
  {
    result = swift_getWitnessTable(asc_255E43E98, &type metadata for GroupView, v0, v1);
    atomic_store(result, &qword_27F7E6E78);
  }

  return result;
}

uint64_t sub_255D6CA20@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6910, &qword_255E3E248);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v38 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F18, &unk_255E43FB0);
  MEMORY[0x28223BE20](v39);
  v6 = &v38 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6900, &qword_255E3E240);
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v38 - v8;
  if (*(v1 + 112))
  {
    v10 = *(v1 + 80);
    v12 = *(v1 + 64);
    v11 = *(v1 + 72);
    v13 = *(v1 + 56);

    v15 = sub_255DDF3A4(v14, v13, v12, v11, v10);

    v16 = sub_255D6EFA8(v15);

    v44[0] = v16;
    KeyPath = swift_getKeyPath();
    sub_255D4E744(v2, v43);
    v18 = swift_allocObject();
    v19 = v43[5];
    v18[5] = v43[4];
    v18[6] = v19;
    v20 = v43[7];
    v18[7] = v43[6];
    v18[8] = v20;
    v21 = v43[1];
    v18[1] = v43[0];
    v18[2] = v21;
    v22 = v43[3];
    v18[3] = v43[2];
    v18[4] = v22;
    v23 = swift_allocObject();
    if (v10)
    {
      *(v23 + 16) = sub_255D6F148;
      *(v23 + 24) = v18;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F20, &unk_255E43FE0);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6920, &unk_255E3E250);
      v26 = sub_255D38950(&qword_27F7E6F28, &qword_27F7E6F20, &unk_255E43FE0, MEMORY[0x277D83980]);
      v27 = sub_255D6F180();
      v28 = sub_255D4E608();
      sub_255E3A0E8(v44, KeyPath, sub_255D6F150, v23, v24, v25, v26, v27, v28);
      v29 = v38;
      v30 = v42;
      (*(v38 + 16))(v6, v4, v42);
      swift_storeEnumTagMultiPayload();
      sub_255D4E500();
      sub_255D4E584();
      sub_255E39258();
      return (*(v29 + 8))(v4, v30);
    }

    else
    {
      *(v23 + 16) = sub_255D6F23C;
      *(v23 + 24) = v18;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F20, &unk_255E43FE0);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
      v34 = sub_255D38950(&qword_27F7E6F28, &qword_27F7E6F20, &unk_255E43FE0, MEMORY[0x277D83980]);
      v35 = sub_255D6F180();
      v36 = sub_255D3849C();
      sub_255E3A0E8(v44, KeyPath, sub_255D6F150, v23, v32, v33, v34, v35, v36);
      v37 = v40;
      (*(v7 + 16))(v6, v9, v40);
      swift_storeEnumTagMultiPayload();
      sub_255D4E500();
      sub_255D4E584();
      sub_255E39258();
      return (*(v7 + 8))(v9, v37);
    }
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D6D010@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[5];
  v7 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = a2[14];
  if (v9)
  {
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;
    v12 = a2[11];
    v13 = a2[12];
    *(inited + 32) = v12;
    *(inited + 40) = v13;
    *(inited + 48) = v5;

    v14 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v15 = sub_255DC5124(MEMORY[0x277D84F90]);
    type metadata accessor for RemoteStateStore(0);
    swift_allocObject();
    v16 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v9, v14, v15);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E386C8();
    *a3 = v10;
    a3[1] = result;
    a3[2] = v16;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

void *sub_255D6D200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v8 = *(a3 + 56);
  v7 = *(a3 + 64);
  v9 = *(a3 + 72);
  v10 = *(a3 + 80);
  v42 = v8;
  v43 = v7;
  v44 = v9;
  v45 = v10;
  v40[1] = 0;
  v40[2] = 0;
  v40[0] = a1;
  v41 = 0;
  sub_255D6FBC4(v8, v7, v9, v10);
  sub_255DCB38C(v40, &v46);
  sub_255D380E0(v42, v43, v44, v45);
  v11 = v46;
  v12 = v47;
  v13 = v48;
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  __swift_project_boxed_opaque_existential_1((a3 + 16), v14);
  v16 = (*(v15 + 24))(v14, v15);
  v17 = *(a3 + 112);
  if (v13 == 255)
  {
    if (v17)
    {
      v30 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      v32 = *(a3 + 96);
      *(inited + 32) = *(a3 + 88);
      *(inited + 40) = v32;
      *(inited + 48) = v6;

      v33 = sub_255DC53CC(inited);
      swift_setDeallocating();
      sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
      v34 = sub_255DC5124(MEMORY[0x277D84F90]);
      type metadata accessor for RemoteStateStore(0);
      swift_allocObject();
      v35 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v17, v33, v34);
      sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
      v36 = sub_255E386C8();
      v42 = v30;
      v43 = v36;
      v44 = v35;
      v45 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
      sub_255D3849C();
      result = sub_255E39258();
      v27 = v46;
      v28 = v47;
      v29 = v48;
      goto LABEL_6;
    }
  }

  else
  {
    v37 = v12;
    v38 = v16;
    v39 = a4;
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_255E3BBC0;
      v19 = *(a3 + 88);
      v20 = *(a3 + 96);
      *(v18 + 32) = v19;
      *(v18 + 40) = v20;
      *(v18 + 48) = v6;

      swift_bridgeObjectRetain_n();

      v21 = sub_255DC53CC(v18);
      swift_setDeallocating();
      sub_255D395E4(v18 + 32, &qword_27F7E6F40, &unk_255E559F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F48, &qword_255E44010);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_255E3BBC0;
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      *(v22 + 48) = v11;
      *(v22 + 64) = v37;
      *(v22 + 72) = v13 & 1;
      sub_255D5C240(v11, *(&v11 + 1), v37, v13);
      v23 = sub_255DC5124(v22);
      swift_setDeallocating();
      sub_255D395E4(v22 + 32, &qword_27F7E6F50, &qword_255E44018);
      type metadata accessor for RemoteStateStore(0);
      swift_allocObject();
      v24 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v17, v21, v23);
      sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
      v25 = sub_255E386C8();
      v42 = v38;
      v43 = v25;
      v44 = v24;
      v45 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
      sub_255D3849C();
      sub_255E39258();
      sub_255D5C2F4(v11, *(&v11 + 1), v37, v13);

      v27 = v46;
      v28 = v47;
      v29 = v48;
      a4 = v39;
LABEL_6:
      *a4 = v27;
      *(a4 + 16) = v28;
      *(a4 + 24) = v29;
      return result;
    }
  }

  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D6D6FC()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6D7A8(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D6D840(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D6D8E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D714B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D6D918(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x736D657469;
  if (*v1 != 2)
  {
    v5 = 0x656D614E6D657469;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 2003134838;
    v2 = 0xE400000000000000;
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

uint64_t sub_255D6D980()
{
  v1 = 25705;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0x656D614E6D657469;
  }

  if (*v0)
  {
    v1 = 2003134838;
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

unint64_t sub_255D6D9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D714B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D6DA0C(uint64_t a1)
{
  v2 = sub_255D6FD40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6DA48(uint64_t a1)
{
  v2 = sub_255D6FD40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6DA84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_255E385D8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F80, &qword_255E44088);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v35 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v38 = sub_255E38CC8();
  v36 = v38;
  v37 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D6FD40();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = v22;
    LOBYTE(v25) = 0;
    v12 = sub_255E3AB88();
    v15 = v13;
    if (!v13)
    {
      sub_255E385C8();
      v16 = sub_255E385B8();
      v15 = v17;
      (*(v11 + 8))(v6, v4);
      v12 = v16;
    }

    v29[0] = v12;
    v29[1] = v15;
    v24 = 1;
    v27 = &type metadata for ViewContent;
    v28 = sub_255D44794();
    *&v25 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v25, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F90, &unk_255E44090);
    v24 = 2;
    sub_255D38950(&qword_27F7E6F98, &qword_27F7E6F90, &unk_255E44090, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    *&v30[40] = v25;
    v31 = v26;
    v32 = v27;
    LOBYTE(v25) = 3;
    v18 = sub_255E3ABB8();
    v20 = v19;
    (*(v23 + 8))(v9, v7);
    v33 = v18;
    v34 = v20;
    sub_255D4E744(v29, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D6FD94(v29);
  }
}

uint64_t sub_255D6DF74@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68E8, &qword_255E44080);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_255D6CA20((&v10 - v6));
  sub_255D3957C(v7, v5, &qword_27F7E68E8, &qword_255E44080);
  sub_255D4E474();
  v8 = sub_255E3A038();
  result = sub_255D395E4(v7, &qword_27F7E68E8, &qword_255E44080);
  *a1 = v8;
  return result;
}

unint64_t sub_255D6E134()
{
  result = qword_27F7E6E88;
  if (!qword_27F7E6E88)
  {
    result = swift_getWitnessTable(a0, &type metadata for ForEachView, v0, v1);
    atomic_store(result, &qword_27F7E6E88);
  }

  return result;
}

uint64_t sub_255D6E188(uint64_t a1)
{
  v5 = *(a1 + 16);
  KeyPath = swift_getKeyPath();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v3 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v5, KeyPath, sub_255D5F848, 0, v2, MEMORY[0x277CE11C8], v3, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255D6E28C(uint64_t a1)
{
  v2 = sub_255D6FCEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6E2C8(uint64_t a1)
{
  v2 = sub_255D6FCEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6E304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6938, &unk_255E44030);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = v2[3];
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = v12;
  v19 = *(v2 + 2);
  v13 = sub_255D4E7A0();
  (*(v13 + 24))(a1, v13);
  (*(v6 + 16))(v9, v11, v5);
  sub_255D38950(&qword_27F7E6940, &qword_27F7E6938, &unk_255E44030, MEMORY[0x277CDE580]);
  v14 = sub_255E3A038();
  result = (*(v6 + 8))(v11, v5);
  *a2 = v14;
  return result;
}

uint64_t sub_255D6E4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  return sub_255E397A8();
}

double sub_255D6E56C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_255D6E5FC()
{
  result = qword_27F7E6E90;
  if (!qword_27F7E6E90)
  {
    result = swift_getWitnessTable(asc_255E43E60, &type metadata for FormView, v0, v1);
    atomic_store(result, &qword_27F7E6E90);
  }

  return result;
}

uint64_t sub_255D6E65C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D6E6AC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D6E704(uint64_t a1)
{
  v2 = sub_255D6FC14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6E740(uint64_t a1)
{
  v2 = sub_255D6FC14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6E77C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_255E3A038();
  *a2 = result;
  return result;
}

double sub_255D6E7F8@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_255D6F244(a1, a2, a3, a4, v10);
  if (!v6)
  {
    result = *v10;
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    *(a6 + 32) = v11;
  }

  return result;
}

unint64_t sub_255D6E898()
{
  result = qword_27F7E6E98;
  if (!qword_27F7E6E98)
  {
    result = swift_getWitnessTable(asc_255E43E44, &type metadata for EmptyViewView, v0, v1);
    atomic_store(result, &qword_27F7E6E98);
  }

  return result;
}

unint64_t sub_255D6E8EC(uint64_t a1)
{
  result = sub_255D6E914();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6E914()
{
  result = qword_27F7E6EA0;
  if (!qword_27F7E6EA0)
  {
    result = swift_getWitnessTable(aYdL, &type metadata for EmptyViewView, v0, v1);
    atomic_store(result, &qword_27F7E6EA0);
  }

  return result;
}

unint64_t sub_255D6E968(uint64_t a1)
{
  result = sub_255D6E990();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6E990()
{
  result = qword_27F7E6EA8;
  if (!qword_27F7E6EA8)
  {
    result = swift_getWitnessTable(byte_255E43D0C, &type metadata for FormView, v0, v1);
    atomic_store(result, &qword_27F7E6EA8);
  }

  return result;
}

unint64_t sub_255D6E9E4(uint64_t a1)
{
  result = sub_255D6EA0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EA0C()
{
  result = qword_27F7E6EB0;
  if (!qword_27F7E6EB0)
  {
    result = swift_getWitnessTable(byte_255E43C20, &type metadata for ForEachView, v0, v1);
    atomic_store(result, &qword_27F7E6EB0);
  }

  return result;
}

unint64_t sub_255D6EA60(uint64_t a1)
{
  result = sub_255D6EA88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EA88()
{
  result = qword_27F7E6EB8;
  if (!qword_27F7E6EB8)
  {
    result = swift_getWitnessTable(byte_255E43B7C, &type metadata for GroupView, v0, v1);
    atomic_store(result, &qword_27F7E6EB8);
  }

  return result;
}

unint64_t sub_255D6EADC(uint64_t a1)
{
  result = sub_255D6EB04();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EB04()
{
  result = qword_27F7E6EC0;
  if (!qword_27F7E6EC0)
  {
    result = swift_getWitnessTable(a1g, &type metadata for ScrollingView, v0, v1);
    atomic_store(result, &qword_27F7E6EC0);
  }

  return result;
}

unint64_t sub_255D6EB58(uint64_t a1)
{
  result = sub_255D6EB80();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EB80()
{
  result = qword_27F7E6EC8;
  if (!qword_27F7E6EC8)
  {
    result = swift_getWitnessTable(byte_255E43A34, &type metadata for LabelView, v0, v1);
    atomic_store(result, &qword_27F7E6EC8);
  }

  return result;
}

unint64_t sub_255D6EBD4(uint64_t a1)
{
  result = sub_255D6EBFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EBFC()
{
  result = qword_27F7E6ED0;
  if (!qword_27F7E6ED0)
  {
    result = swift_getWitnessTable(aYh, &type metadata for ToggleView, v0, v1);
    atomic_store(result, &qword_27F7E6ED0);
  }

  return result;
}

unint64_t sub_255D6EC50(uint64_t a1)
{
  result = sub_255D6EC78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EC78()
{
  result = qword_27F7E6ED8;
  if (!qword_27F7E6ED8)
  {
    result = swift_getWitnessTable(byte_255E438EC, &type metadata for ColorView, v0, v1);
    atomic_store(result, &qword_27F7E6ED8);
  }

  return result;
}

uint64_t sub_255D6ECCC(uint64_t a1)
{
  result = sub_255D6ED24(&qword_27F7E6EE0, type metadata accessor for LinkView, byte_255E43848);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255D6ED24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_255D6ED6C(uint64_t a1)
{
  result = sub_255D6ED94();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6ED94()
{
  result = qword_27F7E6EE8;
  if (!qword_27F7E6EE8)
  {
    result = swift_getWitnessTable(aEj, &type metadata for SpacerView, v0, v1);
    atomic_store(result, &qword_27F7E6EE8);
  }

  return result;
}

unint64_t sub_255D6EDE8(uint64_t a1)
{
  result = sub_255D6EE10();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EE10()
{
  result = qword_27F7E6EF0;
  if (!qword_27F7E6EF0)
  {
    result = swift_getWitnessTable(aK, &type metadata for ProgressView, v0, v1);
    atomic_store(result, &qword_27F7E6EF0);
  }

  return result;
}

unint64_t sub_255D6EE64(uint64_t a1)
{
  result = sub_255D6EE8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EE8C()
{
  result = qword_27F7E6EF8;
  if (!qword_27F7E6EF8)
  {
    result = swift_getWitnessTable(byte_255E4365C, &type metadata for TextView, v0, v1);
    atomic_store(result, &qword_27F7E6EF8);
  }

  return result;
}

unint64_t sub_255D6EEE8()
{
  result = qword_27F7E6F08;
  if (!qword_27F7E6F08)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27F7E6F08);
  }

  return result;
}

uint64_t sub_255D6EF3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_255D6EF78(a1, a2, a3 & 1);
}

uint64_t sub_255D6EF78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_255D6EF88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 <= 0xFDu)
  {
    sub_255D612A0(a1, a2, a3, a4);
  }
}

char *sub_255D6EFA8(char *result)
{
  v1 = *(result + 2);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = v6[v3];
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F58, &qword_255E44020);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 < v2 || v16 >= &v19[16 * v17] || v12 != v2)
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = 0;
LABEL_25:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_31;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

unint64_t sub_255D6F180()
{
  result = qword_27F7E6F30;
  if (!qword_27F7E6F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodableState, &type metadata for DecodableState, v0, v1);
    atomic_store(result, &qword_27F7E6F30);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_255D380E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D6F244@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v29 = a6;
  v28 = sub_255E385D8();
  v32 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v26 - v11;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v13 = sub_255E38CC8();
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v16 = v34;
  sub_255E3AE28();
  if (v16)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = sub_255E3AB88();
    if (v21)
    {
      v34 = v21;
      v27 = v20;
    }

    else
    {
      sub_255E385C8();
      v27 = sub_255E385B8();
      v34 = v23;
      (*(v19 + 8))(v18, v28);
    }

    (*(v17 + 8))(v12, v33);
    v24 = v29;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v25 = v34;
    *v24 = v27;
    v24[1] = v25;
    v24[2] = MEMORY[0x277D84F90];
    v24[3] = v13;
    v24[4] = v15;
  }

  return result;
}

uint64_t sub_255D6F4FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v29 = sub_255E385D8();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F70, &unk_255E44070);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v8 = sub_255E38CC8();
  v10 = v9;
  v11 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_255D6FCEC();
  v12 = v33;
  sub_255E3AE28();
  if (v12)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    v28 = v10;
    v33 = v8;
    v14 = v30;
    v13 = v31;
    v15 = v32;
    v37 = 0;
    v16 = sub_255E3AB88();
    v18 = v5;
    if (v17)
    {
      v27 = v16;
      v19 = v17;
    }

    else
    {
      v20 = v4;
      sub_255E385C8();
      v27 = sub_255E385B8();
      v19 = v21;
      (*(v13 + 8))(v20, v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v36 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    v22 = v33;
    if (v35)
    {
      v24 = v35;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v25 = sub_255D48968(v24);

    (*(v14 + 8))(v7, v18);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
    *v15 = v27;
    v15[1] = v19;
    v15[2] = v25;
    v15[3] = MEMORY[0x277D84F90];
    v15[4] = v22;
    v15[5] = v28;
  }

  return result;
}

uint64_t sub_255D6F870@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_255E385D8();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FA0, &unk_255E440A0);
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v9 = sub_255E38CC8();
  v11 = v10;
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_255D6FDC4();
  v13 = v33;
  sub_255E3AE28();
  if (v13)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    v14 = v5;
    v33 = v11;
    v15 = v9;
    v17 = v31;
    v16 = v32;
    v37 = 0;
    v18 = sub_255E3AB88();
    v20 = v6;
    if (v19)
    {
      v28 = v18;
      v21 = v19;
    }

    else
    {
      sub_255E385C8();
      v28 = sub_255E385B8();
      v21 = v22;
      (*(v29 + 8))(v14, v30);
    }

    v23 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v36 = 1;
    sub_255D5F038();
    sub_255E3ABC8();
    v24 = sub_255D48968(v35);

    (*(v17 + 8))(v8, v20);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
    *v23 = v28;
    v23[1] = v21;
    v26 = MEMORY[0x277D84F90];
    v23[2] = v24;
    v23[3] = v26;
    v27 = v33;
    v23[4] = v15;
    v23[5] = v27;
  }

  return result;
}

uint64_t sub_255D6FBC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D34858(a3);
  }

  else
  {
  }
}

unint64_t sub_255D6FC14()
{
  result = qword_27F7E6F68;
  if (!qword_27F7E6F68)
  {
    result = swift_getWitnessTable(byte_255E4557C, &type metadata for EmptyViewView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6F68);
  }

  return result;
}

unint64_t sub_255D6FC70()
{
  result = qword_27F7E66F8;
  if (!qword_27F7E66F8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    v4[0] = MEMORY[0x277CE11C0];
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27F7E66F8);
  }

  return result;
}

unint64_t sub_255D6FCEC()
{
  result = qword_27F7E6F78;
  if (!qword_27F7E6F78)
  {
    result = swift_getWitnessTable(byte_255E4552C, &type metadata for FormView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6F78);
  }

  return result;
}

unint64_t sub_255D6FD40()
{
  result = qword_27F7E6F88;
  if (!qword_27F7E6F88)
  {
    result = swift_getWitnessTable(aMa, &type metadata for ForEachView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6F88);
  }

  return result;
}

unint64_t sub_255D6FDC4()
{
  result = qword_27F7E6FA8;
  if (!qword_27F7E6FA8)
  {
    result = swift_getWitnessTable(byte_255E4548C, &type metadata for GroupView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6FA8);
  }

  return result;
}

uint64_t sub_255D6FE18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255D6FE78()
{
  result = qword_27F7E6FB8;
  if (!qword_27F7E6FB8)
  {
    result = swift_getWitnessTable(byte_255E4543C, &type metadata for ScrollingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6FB8);
  }

  return result;
}

unint64_t sub_255D6FECC()
{
  result = qword_27F7E6FC0;
  if (!qword_27F7E6FC0)
  {
    result = swift_getWitnessTable(byte_255E45414, &type metadata for AxesName, v0, v1);
    atomic_store(result, &qword_27F7E6FC0);
  }

  return result;
}

uint64_t sub_255D6FF50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_255D6FFB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[10];
  v5 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255D70010()
{
  result = qword_27F7E6FD0;
  if (!qword_27F7E6FD0)
  {
    result = swift_getWitnessTable(aEbT, &type metadata for LabelView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6FD0);
  }

  return result;
}

unint64_t sub_255D70094()
{
  result = qword_27F7E6FE0;
  if (!qword_27F7E6FE0)
  {
    result = swift_getWitnessTable(byte_255E45374, &type metadata for ToggleView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6FE0);
  }

  return result;
}

unint64_t sub_255D70118()
{
  result = qword_27F7E6FF0;
  if (!qword_27F7E6FF0)
  {
    result = swift_getWitnessTable(byte_255E45324, &type metadata for ColorView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6FF0);
  }

  return result;
}

unint64_t sub_255D7019C()
{
  result = qword_27F7E7000;
  if (!qword_27F7E7000)
  {
    result = swift_getWitnessTable(aUc, &type metadata for LinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7000);
  }

  return result;
}

uint64_t sub_255D701F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D70260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D702C4(uint64_t a1)
{
  v2 = type metadata accessor for LinkView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D70320()
{
  result = qword_27F7E7010;
  if (!qword_27F7E7010)
  {
    result = swift_getWitnessTable(byte_255E45284, &type metadata for SpacerView.SpacerViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7010);
  }

  return result;
}

unint64_t sub_255D703A4()
{
  result = qword_27F7E7020;
  if (!qword_27F7E7020)
  {
    result = swift_getWitnessTable(byte_255E45234, &type metadata for ProgressView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7020);
  }

  return result;
}

unint64_t sub_255D703F8()
{
  result = qword_27F7E7030;
  if (!qword_27F7E7030)
  {
    result = swift_getWitnessTable(aEd, &type metadata for TextView.TextViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7030);
  }

  return result;
}

uint64_t sub_255D7054C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 25))
  {
    return (*a1 + 31);
  }

  v3 = (*(a1 + 24) & 0x1E | (*(a1 + 24) >> 5) & 1) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D7059C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * ((((-a2 >> 1) & 0xF) - 16 * a2) & 0x1F);
    }
  }

  return result;
}

unint64_t sub_255D70634()
{
  result = qword_27F7E7038;
  if (!qword_27F7E7038)
  {
    result = swift_getWitnessTable(aZD, &type metadata for EmptyViewView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7038);
  }

  return result;
}

unint64_t sub_255D7068C()
{
  result = qword_27F7E7040;
  if (!qword_27F7E7040)
  {
    result = swift_getWitnessTable(a5yP, &type metadata for FormView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7040);
  }

  return result;
}

unint64_t sub_255D706E4()
{
  result = qword_27F7E7048;
  if (!qword_27F7E7048)
  {
    result = swift_getWitnessTable(aEx, &type metadata for ForEachView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7048);
  }

  return result;
}

unint64_t sub_255D7073C()
{
  result = qword_27F7E7050;
  if (!qword_27F7E7050)
  {
    result = swift_getWitnessTable(aUw, &type metadata for GroupView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7050);
  }

  return result;
}

unint64_t sub_255D70794()
{
  result = qword_27F7E7058;
  if (!qword_27F7E7058)
  {
    result = swift_getWitnessTable(aEv, &type metadata for ScrollingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7058);
  }

  return result;
}

unint64_t sub_255D707EC()
{
  result = qword_27F7E7060;
  if (!qword_27F7E7060)
  {
    result = swift_getWitnessTable(byte_255E44B2C, &type metadata for AxesName, v0, v1);
    atomic_store(result, &qword_27F7E7060);
  }

  return result;
}

unint64_t sub_255D70844()
{
  result = qword_27F7E7068;
  if (!qword_27F7E7068)
  {
    result = swift_getWitnessTable(byte_255E44C1C, &type metadata for LabelView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7068);
  }

  return result;
}

unint64_t sub_255D7089C()
{
  result = qword_27F7E7070;
  if (!qword_27F7E7070)
  {
    result = swift_getWitnessTable(byte_255E44D0C, &type metadata for ToggleView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7070);
  }

  return result;
}

unint64_t sub_255D708F4()
{
  result = qword_27F7E7078;
  if (!qword_27F7E7078)
  {
    result = swift_getWitnessTable(byte_255E44DFC, &type metadata for ColorView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7078);
  }

  return result;
}

unint64_t sub_255D7094C()
{
  result = qword_27F7E7080;
  if (!qword_27F7E7080)
  {
    result = swift_getWitnessTable(byte_255E44EEC, &type metadata for LinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7080);
  }

  return result;
}

unint64_t sub_255D709A4()
{
  result = qword_27F7E7088;
  if (!qword_27F7E7088)
  {
    result = swift_getWitnessTable(byte_255E44FDC, &type metadata for SpacerView.SpacerViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7088);
  }

  return result;
}

unint64_t sub_255D709FC()
{
  result = qword_27F7E7090;
  if (!qword_27F7E7090)
  {
    result = swift_getWitnessTable(byte_255E450CC, &type metadata for ProgressView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7090);
  }

  return result;
}

unint64_t sub_255D70A54()
{
  result = qword_27F7E7098;
  if (!qword_27F7E7098)
  {
    result = swift_getWitnessTable(aO, &type metadata for TextView.TextViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7098);
  }

  return result;
}

unint64_t sub_255D70AAC()
{
  result = qword_27F7E70A0;
  if (!qword_27F7E70A0)
  {
    result = swift_getWitnessTable(byte_255E450F4, &type metadata for TextView.TextViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70A0);
  }

  return result;
}

unint64_t sub_255D70B04()
{
  result = qword_27F7E70A8;
  if (!qword_27F7E70A8)
  {
    result = swift_getWitnessTable(byte_255E4511C, &type metadata for TextView.TextViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70A8);
  }

  return result;
}

unint64_t sub_255D70B5C()
{
  result = qword_27F7E70B0;
  if (!qword_27F7E70B0)
  {
    result = swift_getWitnessTable(byte_255E45004, &type metadata for ProgressView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70B0);
  }

  return result;
}

unint64_t sub_255D70BB4()
{
  result = qword_27F7E70B8;
  if (!qword_27F7E70B8)
  {
    result = swift_getWitnessTable(byte_255E4502C, &type metadata for ProgressView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70B8);
  }

  return result;
}

unint64_t sub_255D70C0C()
{
  result = qword_27F7E70C0;
  if (!qword_27F7E70C0)
  {
    result = swift_getWitnessTable(byte_255E44F14, &type metadata for SpacerView.SpacerViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70C0);
  }

  return result;
}

unint64_t sub_255D70C64()
{
  result = qword_27F7E70C8;
  if (!qword_27F7E70C8)
  {
    result = swift_getWitnessTable(byte_255E44F3C, &type metadata for SpacerView.SpacerViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70C8);
  }

  return result;
}

unint64_t sub_255D70CBC()
{
  result = qword_27F7E70D0;
  if (!qword_27F7E70D0)
  {
    result = swift_getWitnessTable(aA_4, &type metadata for LinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70D0);
  }

  return result;
}

unint64_t sub_255D70D14()
{
  result = qword_27F7E70D8;
  if (!qword_27F7E70D8)
  {
    result = swift_getWitnessTable(byte_255E44E4C, &type metadata for LinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70D8);
  }

  return result;
}

unint64_t sub_255D70D6C()
{
  result = qword_27F7E70E0;
  if (!qword_27F7E70E0)
  {
    result = swift_getWitnessTable(aMb, &type metadata for ColorView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70E0);
  }

  return result;
}

unint64_t sub_255D70DC4()
{
  result = qword_27F7E70E8;
  if (!qword_27F7E70E8)
  {
    result = swift_getWitnessTable(asc_255E44D5C, &type metadata for ColorView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70E8);
  }

  return result;
}

unint64_t sub_255D70E1C()
{
  result = qword_27F7E70F0;
  if (!qword_27F7E70F0)
  {
    result = swift_getWitnessTable(aCN, &type metadata for ToggleView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70F0);
  }

  return result;
}

unint64_t sub_255D70E74()
{
  result = qword_27F7E70F8;
  if (!qword_27F7E70F8)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for ToggleView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E70F8);
  }

  return result;
}

unint64_t sub_255D70ECC()
{
  result = qword_27F7E7100;
  if (!qword_27F7E7100)
  {
    result = swift_getWitnessTable(aMd, &type metadata for LabelView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7100);
  }

  return result;
}

unint64_t sub_255D70F24()
{
  result = qword_27F7E7108;
  if (!qword_27F7E7108)
  {
    result = swift_getWitnessTable(asc_255E44B7C, &type metadata for LabelView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7108);
  }

  return result;
}

unint64_t sub_255D70F7C()
{
  result = qword_27F7E7110;
  if (!qword_27F7E7110)
  {
    result = swift_getWitnessTable(byte_255E4499C, &type metadata for ScrollingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7110);
  }

  return result;
}

unint64_t sub_255D70FD4()
{
  result = qword_27F7E7118;
  if (!qword_27F7E7118)
  {
    result = swift_getWitnessTable(byte_255E449C4, &type metadata for ScrollingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7118);
  }

  return result;
}

unint64_t sub_255D7102C()
{
  result = qword_27F7E7120;
  if (!qword_27F7E7120)
  {
    result = swift_getWitnessTable(byte_255E448AC, &type metadata for GroupView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7120);
  }

  return result;
}

unint64_t sub_255D71084()
{
  result = qword_27F7E7128;
  if (!qword_27F7E7128)
  {
    result = swift_getWitnessTable(byte_255E448D4, &type metadata for GroupView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7128);
  }

  return result;
}

unint64_t sub_255D710DC()
{
  result = qword_27F7E7130;
  if (!qword_27F7E7130)
  {
    result = swift_getWitnessTable(byte_255E447BC, &type metadata for ForEachView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7130);
  }

  return result;
}

unint64_t sub_255D71134()
{
  result = qword_27F7E7138;
  if (!qword_27F7E7138)
  {
    result = swift_getWitnessTable(byte_255E447E4, &type metadata for ForEachView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7138);
  }

  return result;
}

unint64_t sub_255D7118C()
{
  result = qword_27F7E7140;
  if (!qword_27F7E7140)
  {
    result = swift_getWitnessTable(byte_255E446CC, &type metadata for FormView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7140);
  }

  return result;
}

unint64_t sub_255D711E4()
{
  result = qword_27F7E7148;
  if (!qword_27F7E7148)
  {
    result = swift_getWitnessTable(byte_255E446F4, &type metadata for FormView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7148);
  }

  return result;
}

unint64_t sub_255D7123C()
{
  result = qword_27F7E7150;
  if (!qword_27F7E7150)
  {
    result = swift_getWitnessTable(byte_255E445DC, &type metadata for EmptyViewView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7150);
  }

  return result;
}

unint64_t sub_255D71294()
{
  result = qword_27F7E7158;
  if (!qword_27F7E7158)
  {
    result = swift_getWitnessTable(byte_255E44604, &type metadata for EmptyViewView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7158);
  }

  return result;
}

unint64_t sub_255D712E8(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D71334(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D71380(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D713CC(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D71418(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D71464(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D714B0(uint64_t a1, uint64_t a2)
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

unint64_t sub_255D714FC()
{
  result = qword_27F7E7160;
  if (!qword_27F7E7160)
  {
    result = swift_getWitnessTable(byte_255E44AB4, &type metadata for AxesName, v0, v1);
    atomic_store(result, &qword_27F7E7160);
  }

  return result;
}

void *sub_255D715C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 112))
  {

    v5 = sub_255E1AAC0(v4);

    if (v5)
    {
      sub_255D4FB3C(v2 + 24, &v10);
      v6 = v12;
      if (v12)
      {
LABEL_4:
        v7 = v13;
        __swift_project_boxed_opaque_existential_1(&v10, v12);
        (*(v7 + 24))(v6, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(&v10);
LABEL_7:
        result = sub_255E39258();
        v9 = v11;
        *a1 = v10;
        *(a1 + 8) = v9;
        return result;
      }
    }

    else
    {
      sub_255D4FB3C(v2 + 64, &v10);
      v6 = v12;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    sub_255D395E4(&v10, &qword_27F7E6558, &qword_255E3DD80);
    sub_255E3A038();
    goto LABEL_7;
  }

  type metadata accessor for RemoteStateStore(0);
  sub_255D723B8(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D717D8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D71884(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D7191C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D719C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D72548(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D719F4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1702063205;
  if (*v1 != 2)
  {
    v5 = 0x6F697469646E6F63;
    v4 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v3 = 1852139636;
    v2 = 0xE400000000000000;
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

uint64_t sub_255D71A5C()
{
  v1 = 25705;
  v2 = 1702063205;
  if (*v0 != 2)
  {
    v2 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    v1 = 1852139636;
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

unint64_t sub_255D71AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D72548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D71AE8(uint64_t a1)
{
  v2 = sub_255D72364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D71B24(uint64_t a1)
{
  v2 = sub_255D72364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D71B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_255E385D8();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7178, &qword_255E45728);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v53[2] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D723B8(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v41 = sub_255E38CC8();
  v53[14] = v41;
  v53[15] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D72364();
  v10 = v54;
  sub_255E3AE28();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = v39;
    LOBYTE(v43) = 0;
    v12 = sub_255E3AB88();
    v54 = v8;
    if (!v13)
    {
      v15 = v5;
      sub_255E385C8();
      v16 = sub_255E385B8();
      v18 = v17;
      (*(v11 + 8))(v15, v3);
      v13 = v18;
      v12 = v16;
    }

    v53[0] = v12;
    v53[1] = v13;
    v39 = v13;
    v42 = 1;
    sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v43 + 1))
    {
      v19 = sub_255D44794();
      v20 = swift_allocObject();
      v21 = v50;
      *(v20 + 112) = v49;
      *(v20 + 128) = v21;
      *(v20 + 144) = v51;
      *(v20 + 160) = v52;
      v22 = v46;
      *(v20 + 48) = v45;
      *(v20 + 64) = v22;
      v23 = v48;
      *(v20 + 80) = v47;
      *(v20 + 96) = v23;
      v24 = v44;
      *(v20 + 16) = v43;
      *(v20 + 32) = v24;
      v25 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v43, &qword_27F7E6C20, &qword_255E58D80);
      v20 = 0;
      v25 = 0;
      v19 = 0;
    }

    v53[3] = v20;
    v53[4] = 0;
    v53[5] = 0;
    v53[6] = v25;
    v53[7] = v19;
    v42 = 2;
    sub_255E3ABA8();
    v37 = 0;
    v26 = a1;
    if (*(&v43 + 1))
    {
      v27 = sub_255D44794();
      v28 = swift_allocObject();
      v29 = v50;
      *(v28 + 112) = v49;
      *(v28 + 128) = v29;
      *(v28 + 144) = v51;
      *(v28 + 160) = v52;
      v30 = v46;
      *(v28 + 48) = v45;
      *(v28 + 64) = v30;
      v31 = v48;
      *(v28 + 80) = v47;
      *(v28 + 96) = v31;
      v32 = v44;
      *(v28 + 16) = v43;
      *(v28 + 32) = v32;
      v33 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v43, &qword_27F7E6C20, &qword_255E58D80);
      v27 = 0;
      v33 = 0;
      v28 = 0;
    }

    v34 = v38;
    v35 = v40;
    v53[8] = v28;
    v53[9] = 0;
    v53[10] = 0;
    v53[11] = v33;
    v53[12] = v27;
    type metadata accessor for Condition();
    v42 = 3;
    sub_255D723B8(&qword_27F7E7188, type metadata accessor for Condition, byte_255E5C04C);
    v36 = v54;
    sub_255E3ABC8();
    (*(v35 + 8))(v36, v6);
    v53[13] = v43;
    sub_255D4E418(v53, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return sub_255D72400(v53);
  }
}

uint64_t sub_255D72114@<X0>(uint64_t *a1@<X8>)
{
  sub_255D715C0(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
  sub_255D722E8();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D721BC(uint64_t a1, uint64_t a2)
{
  sub_255D72218();
  sub_255D4E344();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D72218()
{
  result = qword_27F7E7168;
  if (!qword_27F7E7168)
  {
    result = swift_getWitnessTable(asc_255E4570C, &type metadata for IfView, v0, v1);
    atomic_store(result, &qword_27F7E7168);
  }

  return result;
}

unint64_t sub_255D7226C(uint64_t a1)
{
  result = sub_255D72294();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D72294()
{
  result = qword_27F7E7170;
  if (!qword_27F7E7170)
  {
    result = swift_getWitnessTable(byte_255E45678, &type metadata for IfView, v0, v1);
    atomic_store(result, &qword_27F7E7170);
  }

  return result;
}

unint64_t sub_255D722E8()
{
  result = qword_27F7E6588;
  if (!qword_27F7E6588)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6580, &qword_255E3DDA0);
    v4[0] = MEMORY[0x277CE11C0];
    v4[1] = MEMORY[0x277CE11C0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6588);
  }

  return result;
}

unint64_t sub_255D72364()
{
  result = qword_27F7E7180;
  if (!qword_27F7E7180)
  {
    result = swift_getWitnessTable(byte_255E4582C, &type metadata for IfView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7180);
  }

  return result;
}

uint64_t sub_255D723B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_255D72444()
{
  result = qword_27F7E7190;
  if (!qword_27F7E7190)
  {
    result = swift_getWitnessTable(byte_255E45804, &type metadata for IfView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7190);
  }

  return result;
}

unint64_t sub_255D7249C()
{
  result = qword_27F7E7198;
  if (!qword_27F7E7198)
  {
    result = swift_getWitnessTable(aEx_0, &type metadata for IfView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7198);
  }

  return result;
}

unint64_t sub_255D724F4()
{
  result = qword_27F7E71A0;
  if (!qword_27F7E71A0)
  {
    result = swift_getWitnessTable(aUt, &type metadata for IfView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E71A0);
  }

  return result;
}

unint64_t sub_255D72548(uint64_t a1, uint64_t a2)
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

uint64_t sub_255D725AC(uint64_t a1)
{
  sub_255E3A578();
}

unint64_t sub_255D726B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D73434(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D726E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xEA00000000006C61;
  v6 = 0x746E6F7A69726F68;
  v7 = 0xE800000000000000;
  if (v2 != 5)
  {
    v6 = 0x6C61636974726576;
    v5 = 0xE800000000000000;
  }

  v8 = 0x676E696C69617274;
  if (v2 != 3)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x676E696461656CLL;
  if (v2 != 1)
  {
    v10 = 0x6D6F74746F62;
    v9 = 0xE600000000000000;
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

uint64_t sub_255D7285C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65746F6F466E6970;
  }

  else
  {
    v2 = 0x65646165486E6970;
  }

  if (*a2)
  {
    v3 = 0x65746F6F466E6970;
  }

  else
  {
    v3 = 0x65646165486E6970;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_255E3AC68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_255D728F0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D72970(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D729D4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D72A50@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255D72AB0(uint64_t *a1@<X8>)
{
  v2 = 0x65646165486E6970;
  if (*v1)
  {
    v2 = 0x65746F6F466E6970;
  }

  *a1 = v2;
  a1[1] = 0xE900000000000072;
}

uint64_t sub_255D72AEC()
{
  if (*v0)
  {
    return 0x65746F6F466E6970;
  }

  else
  {
    return 0x65646165486E6970;
  }
}

uint64_t sub_255D72B24@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D72B88(uint64_t a1)
{
  v2 = sub_255D73660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D72BC4(uint64_t a1)
{
  v2 = sub_255D73660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D72C00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_255E393D8();
  v25 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v24 = &v22 - v8;
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v28 = *(v2 + 40);
  v29 = v13;
  v27 = *(v2 + 48);
  v14 = *(v2 + 56);
  v30 = 0;
  sub_255D73480(&qword_27F7E71A8, MEMORY[0x277CE0448]);
  v26 = a2;
  result = sub_255E3AE98();
  if (v12 != 255)
  {
    result = sub_255DDF1BC(a1, v9, v10, v11, v12 & 1);
    if (result)
    {
      v16 = v23;
      sub_255E393C8();
      v17 = v24;
      sub_255D72E58(v24, v16);
      v18 = *(v25 + 8);
      v18(v16, v5);
      result = (v18)(v17, v5);
    }
  }

  if (v14 != 255)
  {
    result = sub_255DDF1BC(a1, v29, v28, v27, v14 & 1);
    if (result)
    {
      v19 = v23;
      sub_255E393B8();
      v20 = v24;
      sub_255D72E58(v24, v19);
      v21 = *(v25 + 8);
      v21(v19, v5);
      return (v21)(v20, v5);
    }
  }

  return result;
}

uint64_t sub_255D72E58(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E71B0, &qword_255E45880);
  v5 = MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_255E393D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v10 + 16);
  v25 = v2;
  v16(v13, v2, v9);
  v23 = sub_255D73480(&qword_27F7E71B8, MEMORY[0x277CE0440]);
  sub_255E3A8E8();
  sub_255D73480(&qword_27F7E71C0, MEMORY[0x277CE0438]);
  v24 = a2;
  v17 = sub_255E3A4B8();
  v27 = v4;
  v18 = *(v4 + 48);
  *v8 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v10 + 32))(&v8[v18], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v19 = v24;
    v16(&v8[v18], v24, v9);
    v16(v13, v19, v9);
    sub_255E3A908();
  }

  v20 = v26;
  sub_255D734C4(v8, v26);
  v21 = *v20;
  (*(v10 + 32))(v28, &v20[*(v27 + 48)], v9);
  return v21;
}

uint64_t sub_255D73130@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E71D0, &unk_255E45BC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D73660();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
  LOBYTE(v21) = 0;
  sub_255D45734();
  sub_255E3ABA8();
  v19 = v24;
  v20 = v25;
  v34 = v26;
  v35 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v18 = v31;
  v10 = v32;
  v17 = *(&v31 + 1);
  v11 = v33;
  v12 = v19;
  v21 = v19;
  v13 = v20;
  *&v22 = v20;
  v14 = v34;
  BYTE8(v22) = v34;
  *v23 = v31;
  *&v23[16] = v32;
  v23[24] = v33;
  v15 = v22;
  *v9 = v19;
  v9[1] = v15;
  v9[2] = *v23;
  *(v9 + 41) = *&v23[9];
  sub_255D736B4(&v21, &v24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v18;
  v28 = v17;
  v29 = v10;
  v30 = v11;
  return sub_255D736EC(&v24);
}

unint64_t sub_255D73434(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D73480(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_255E393D8();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255D734C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E71B0, &qword_255E45880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySbGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D73558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D735A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

unint64_t sub_255D7360C()
{
  result = qword_27F7E71C8;
  if (!qword_27F7E71C8)
  {
    result = swift_getWitnessTable(aYe8, &type metadata for EdgeSetString, v0, v1);
    atomic_store(result, &qword_27F7E71C8);
  }

  return result;
}

unint64_t sub_255D73660()
{
  result = qword_27F7E71D8;
  if (!qword_27F7E71D8)
  {
    result = swift_getWitnessTable(aUy, &type metadata for PinnedScrollableViewsOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E71D8);
  }

  return result;
}

unint64_t sub_255D7371C()
{
  result = qword_27F7E71E0;
  if (!qword_27F7E71E0)
  {
    result = swift_getWitnessTable(byte_255E45AD8, &type metadata for EdgeSetString, v0, v1);
    atomic_store(result, &qword_27F7E71E0);
  }

  return result;
}

unint64_t sub_255D73784()
{
  result = qword_27F7E71E8;
  if (!qword_27F7E71E8)
  {
    result = swift_getWitnessTable(byte_255E45CAC, &type metadata for PinnedScrollableViewsOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E71E8);
  }

  return result;
}

unint64_t sub_255D737DC()
{
  result = qword_27F7E71F0;
  if (!qword_27F7E71F0)
  {
    result = swift_getWitnessTable(byte_255E45BE4, &type metadata for PinnedScrollableViewsOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E71F0);
  }

  return result;
}

unint64_t sub_255D73834()
{
  result = qword_27F7E71F8;
  if (!qword_27F7E71F8)
  {
    result = swift_getWitnessTable(byte_255E45C0C, &type metadata for PinnedScrollableViewsOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E71F8);
  }

  return result;
}

uint64_t sub_255D738E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D73934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}
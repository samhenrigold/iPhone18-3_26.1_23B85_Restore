unsigned int *sub_1E5AC8978(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
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
      result = ((result + v8 + 17) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = (result + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v20 + 16) = 0;
          *v20 = a2 - 0x7FFFFFFF;
          *(v20 + 8) = 0;
        }

        else
        {
          *(v20 + 8) = a2;
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

  if (((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

void sub_1E5AC8B68(uint64_t a1)
{
  if (!qword_1EE2FCA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027BA0, qword_1E5AD7930);
    sub_1E5A8CEF0(&qword_1EE2FCA18, &qword_1ED027BA0, qword_1E5AD7930, MEMORY[0x1E6999B78]);
    v1 = sub_1E5ACF108();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2FCA68);
    }
  }
}

uint64_t sub_1E5AC8C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BA8, &qword_1E5AD79C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5A9B464(a1, &v5 - v3, &qword_1ED027BA8, &qword_1E5AD79C8);
  return sub_1E5ACF208();
}

unint64_t sub_1E5AC8CB4()
{
  result = qword_1ED026C40;
  if (!qword_1ED026C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED026C40);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SignOutView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80)));
  sub_1E5A9A6F8(*v7, v7[1]);
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_1E5AC8E5C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SignOutView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_1E5AC8F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1E5AC8F74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5AC8F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5AC8FD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED027C00, qword_1E5AD7AD0);
  v5 = sub_1E5AC9870();

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

double AnotherNavigationSplitView.init(store:sidebarViewBuilder:detailViewBuilder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a9 = sub_1E5ABFAA4;
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  type metadata accessor for AnotherNavigationSplitView(0, v22);

  v19 = a3(v18);
  a5(v19);

  return result;
}

uint64_t AnotherNavigationSplitView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BF8, &qword_1E5AD7A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v24 = a1[2];
  v5 = v24;
  v25 = MEMORY[0x1E6981E70];
  v26 = v6;
  v27 = v8;
  v28 = MEMORY[0x1E6981E60];
  v29 = v7;
  v9 = sub_1E5ACF2A8();
  v17[0] = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  sub_1E5AC8FD4();
  sub_1E5ACF418();
  sub_1E5ACF828();
  v19 = v5;
  v20 = v6;
  v21 = v8;
  v22 = v7;
  v23 = v2;
  v17[4] = v5;
  v17[5] = v6;
  v17[6] = v8;
  v17[7] = v7;
  v18 = v2;
  sub_1E5ACF298();
  swift_getWitnessTable();
  sub_1E5A9AA54();
  v15 = *(v17[0] + 8);
  v15(v12, v9);
  sub_1E5A9AA54();
  return (v15)(v14, v9);
}

uint64_t sub_1E5AC93DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1E5ACFA48();

  if (v3 == 1)
  {
    return sub_1E5ACF408();
  }

  else
  {
    return sub_1E5ACF3F8();
  }
}

uint64_t sub_1E5AC9450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5ACF418();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E5AC94BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for AnotherNavigationSplitView(0, v11);
  sub_1E5A9AA54();
  sub_1E5A9AA54();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1E5AC95DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for AnotherNavigationSplitView(0, v12);
  sub_1E5A9AA54();
  sub_1E5A9AA54();
  return (*(v4 + 8))(v6, a3);
}

void sub_1E5AC975C(uint64_t a1)
{
  sub_1E5AC9800(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5AC9800(uint64_t a1)
{
  if (!qword_1EE2FCA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED027C00, qword_1E5AD7AD0);
    sub_1E5AC9870();
    v1 = sub_1E5ACF108();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2FCA58);
    }
  }
}

unint64_t sub_1E5AC9870()
{
  result = qword_1EE2FCA08;
  if (!qword_1EE2FCA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED027C00, qword_1E5AD7AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FCA08);
  }

  return result;
}

uint64_t SidebarModalitiesState.selectedItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E5ACFFD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SidebarModalitiesState.selectedItem.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1E5ACFFD8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SidebarModalitiesState.init(locale:modalities:selectedItem:isSidebarVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v14 = type metadata accessor for SidebarModalitiesState(0, a5, a6, a4);
  v15 = v14[10];
  (*(*(a5 - 8) + 56))(a7 + v15, 1, 1, a5);
  v16 = sub_1E5ACEEE8();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = v14[9];
  type metadata accessor for SidebarModality(255, a5, a6, v18);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v19 = sub_1E5ACF958();
  (*(*(v19 - 8) + 32))(a7 + v17, a2, v19);
  v20 = sub_1E5ACFFD8();
  result = (*(*(v20 - 8) + 40))(a7 + v15, a3, v20);
  *(a7 + v14[11]) = v9;
  return result;
}

uint64_t sub_1E5AC9C1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEC0000006D657449 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5ADFDE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

unint64_t sub_1E5AC9D90(unsigned __int8 a1)
{
  v1 = 0x656C61636F6CLL;
  v2 = 0x64657463656C6573;
  if (a1 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0x6974696C61646F6DLL;
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

uint64_t sub_1E5AC9E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AC9C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AC9E54@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5ACB0C8();
  *a2 = result;
  return result;
}

uint64_t sub_1E5AC9E80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AC9ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarModalitiesState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v5 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = v5;
  type metadata accessor for SidebarModalitiesState.CodingKeys(255, v5, v16, a4);
  swift_getWitnessTable();
  v6 = sub_1E5AD0318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AD03E8();
  v25 = 0;
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED026768, MEMORY[0x1E6969778]);
  v10 = v19;
  sub_1E5AD0308();
  if (!v10)
  {
    v19 = v7;
    v25 = 1;
    type metadata accessor for SidebarModality(255, v17, v16, v11);
    sub_1E5ACFD08();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E5ACF958();
    v23 = swift_getWitnessTable();
    v13 = swift_getWitnessTable();
    v22 = swift_getWitnessTable();
    v14 = swift_getWitnessTable();
    v20 = v13;
    v21 = v14;
    swift_getWitnessTable();
    sub_1E5AD0308();
    v25 = 2;
    sub_1E5AD02C8();
    v7 = v19;
    v25 = 3;
    sub_1E5AD02E8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SidebarModalitiesState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v56 = sub_1E5ACFFD8();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v41 = v38 - v7;
  v9 = type metadata accessor for SidebarModality(255, a2, a3, v8);
  v10 = sub_1E5ACFD08();
  v48 = v9;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v47 = v10;
  v46 = sub_1E5ACF958();
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v38 - v11;
  v49 = sub_1E5ACEEE8();
  v43 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarModalitiesState.CodingKeys(255, a2, a3, v13);
  swift_getWitnessTable();
  v51 = sub_1E5AD02A8();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v15 = v38 - v14;
  v40 = a3;
  v17 = type metadata accessor for SidebarModalitiesState(0, a2, a3, v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v38 - v20;
  v22 = *(*(a2 - 8) + 56);
  v57 = *(v19 + 40);
  v58 = v21;
  v22(&v21[v57], 1, 1, a2);
  v23 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v52 = v15;
  v24 = v53;
  sub_1E5AD03D8();
  if (v24)
  {
    v29 = v56;
    v30 = v58;
    __swift_destroy_boxed_opaque_existential_1(v55);
    return (*(v54 + 8))(&v30[v57], v29);
  }

  else
  {
    v38[1] = a2;
    v38[0] = v18;
    v26 = v44;
    v25 = v45;
    v53 = v17;
    v27 = v46;
    v63 = 0;
    sub_1E5A83C6C(qword_1ED026770, MEMORY[0x1E6969790]);
    v28 = v49;
    sub_1E5AD0288();
    (*(v43 + 32))(v58, v50, v28);
    v63 = 1;
    v62 = swift_getWitnessTable();
    v31 = swift_getWitnessTable();
    v61 = swift_getWitnessTable();
    v32 = swift_getWitnessTable();
    v59 = v31;
    v60 = v32;
    swift_getWitnessTable();
    sub_1E5AD0288();
    (*(v42 + 32))(&v58[*(v53 + 36)], v25, v27);
    v63 = 2;
    v33 = v41;
    sub_1E5AD0248();
    (*(v54 + 40))(&v58[v57], v33, v56);
    v63 = 3;
    LOBYTE(v31) = sub_1E5AD0268();
    (*(v26 + 8))(v52, v51);
    v34 = v53;
    v35 = v58;
    v58[*(v53 + 44)] = v31 & 1;
    v36 = v38[0];
    (*(v38[0] + 16))(v39, v35, v34);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return (*(v36 + 8))(v35, v34);
  }
}

uint64_t static SidebarModalitiesState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5ACFFD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v33 - v15;
  if ((MEMORY[0x1E69335A0](a1, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v37 = v13;
  v38 = v11;
  v39 = v8;
  v18 = a1;
  v19 = type metadata accessor for SidebarModalitiesState(0, a3, a4, v17);
  v36 = a4;
  type metadata accessor for SidebarModality(255, a3, a4, v20);
  sub_1E5ACFD08();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  if ((sub_1E5ACF938() & 1) == 0)
  {
    goto LABEL_9;
  }

  v34 = v19;
  v21 = *(v19 + 40);
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = a2;
  v24 = *(v38 + 16);
  v24(v16, v18 + v21, v10);
  v35 = v23;
  v24(&v16[v22], v23 + v21, v10);
  v25 = *(v39 + 48);
  if (v25(v16, 1, a3) == 1)
  {
    if (v25(&v16[v22], 1, a3) == 1)
    {
      (*(v38 + 8))(v16, v10);
LABEL_12:
      v27 = *(v18 + *(v34 + 44)) ^ *(v35 + *(v34 + 44)) ^ 1;
      return v27 & 1;
    }

    goto LABEL_8;
  }

  v33 = v18;
  v26 = v37;
  v24(v37, v16, v10);
  if (v25(&v16[v22], 1, a3) == 1)
  {
    (*(v39 + 8))(v26, a3);
LABEL_8:
    (*(v41 + 8))(v16, TupleTypeMetadata2);
    goto LABEL_9;
  }

  v29 = v39;
  v30 = v40;
  (*(v39 + 32))(v40, &v16[v22], a3);
  v31 = sub_1E5ACFB78();
  v32 = *(v29 + 8);
  v32(v30, a3);
  v32(v26, a3);
  (*(v38 + 8))(v16, v10);
  v18 = v33;
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_9:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1E5ACAF30(uint64_t a1)
{
  result = sub_1E5ACEEE8();
  if (v4 <= 0x3F)
  {
    type metadata accessor for SidebarModality(255, *(a1 + 16), *(a1 + 24), v3);
    sub_1E5ACFD08();
    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_1E5ACF958();
    if (v5 <= 0x3F)
    {
      result = sub_1E5ACFFD8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5ACB0F8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v72 = a4;
  v74 = a2;
  v8 = sub_1E5ACFFD8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v58 - v10;
  v69 = *(v8 - 8);
  v12 = v69;
  v13 = MEMORY[0x1EEE9AC00](v9);
  v68 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v58 - v19;
  v21 = *(a5 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v58[0] = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v58 - v24;
  v27 = type metadata accessor for SidebarAction(0, a5, a6, v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v58 - v28;
  (*(v30 + 16))(v58 - v28, v72);
  v31 = *(v21 + 32);
  v65 = v21 + 32;
  v66 = v31;
  v31(v25, v29, a5);
  v58[1] = a6;
  v33 = type metadata accessor for SidebarState(0, a5, a6, v32);
  v34 = v74;
  *(v74 + *(v33 + 44)) = 0;
  v59 = v33;
  v63 = *(v33 + 40);
  v64 = v12;
  v35 = *(v12 + 16);
  v35(v20, v34 + v63, v8);
  v36 = *(v21 + 16);
  v70 = v25;
  v36(v17, v25, a5);
  v61 = *(v21 + 56);
  v62 = v21 + 56;
  v61(v17, 0, 1, a5);
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = v11;
  v67 = v20;
  v35(v11, v20, v8);
  v71 = v8;
  v35(&v11[v37], v17, v8);
  v39 = *(v21 + 48);
  v72 = v38;
  if (v39(v38, 1, a5) == 1)
  {
    v40 = *(v69 + 8);
    v41 = v17;
    v42 = v71;
    v40(v41, v71);
    v40(v67, v42);
    v43 = v72;
    v44 = v39(&v72[v37], 1, a5) == 1;
    v45 = v43;
    v46 = v42;
    if (!v44)
    {
      goto LABEL_7;
    }

    v40(v43, v42);
    result = (*(v21 + 8))(v70, a5);
  }

  else
  {
    v48 = v72;
    v35(v68, v72, v71);
    v49 = v39(&v48[v37], 1, a5);
    v50 = (v21 + 8);
    if (v49 == 1)
    {
      v40 = *(v69 + 8);
      v46 = v71;
      v40(v17, v71);
      v40(v67, v46);
      (*v50)(v68, a5);
      v45 = v72;
LABEL_7:
      (*(v60 + 8))(v45, TupleTypeMetadata2);
LABEL_8:
      v51 = v63;
      v52 = v74;
      v40((v74 + v63), v46);
      v66(v52 + v51, v70, a5);
      return (v61)(v52 + v51, 0, 1, a5);
    }

    v53 = v72;
    v54 = v58[0];
    v66(v58[0], &v72[v37], a5);
    v55 = v68;
    LODWORD(TupleTypeMetadata2) = sub_1E5ACFB78();
    v56 = *v50;
    (*v50)(v54, a5);
    v40 = *(v69 + 8);
    v57 = v71;
    v40(v17, v71);
    v40(v67, v57);
    v56(v55, a5);
    v40(v53, v57);
    v46 = v57;
    if ((TupleTypeMetadata2 & 1) == 0)
    {
      goto LABEL_8;
    }

    result = (v56)(v70, a5);
  }

  *(v74 + *(v59 + 48)) = 1;
  return result;
}

uint64_t sub_1E5ACB7C8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6874676E65727473;
    v7 = 0x6C696D6461657274;
    if (a1 != 10)
    {
      v7 = 1634168697;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x697461746964656DLL;
    v9 = 0x736574616C6970;
    if (a1 != 7)
    {
      v9 = 0x676E69776F72;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E776F646C6F6F63;
    v2 = 0x65636E6164;
    v3 = 1953065320;
    if (a1 != 4)
    {
      v3 = 0x69786F626B63696BLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1701998435;
    if (a1 != 1)
    {
      v4 = 0x676E696C637963;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E5ACB938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5ACEA50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5ACB96C(uint64_t a1)
{
  v2 = sub_1E5ACCB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACB9A8(uint64_t a1)
{
  v2 = sub_1E5ACCB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACB9E4(uint64_t a1)
{
  v2 = sub_1E5ACCF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBA20(uint64_t a1)
{
  v2 = sub_1E5ACCF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBA5C(uint64_t a1)
{
  v2 = sub_1E5ACCED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBA98(uint64_t a1)
{
  v2 = sub_1E5ACCED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBAD4(uint64_t a1)
{
  v2 = sub_1E5ACCE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBB10(uint64_t a1)
{
  v2 = sub_1E5ACCE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBB4C(uint64_t a1)
{
  v2 = sub_1E5ACCE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBB88(uint64_t a1)
{
  v2 = sub_1E5ACCE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBBC4(uint64_t a1)
{
  v2 = sub_1E5ACCDDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBC00(uint64_t a1)
{
  v2 = sub_1E5ACCDDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBC3C(uint64_t a1)
{
  v2 = sub_1E5ACCD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBC78(uint64_t a1)
{
  v2 = sub_1E5ACCD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBCB4(uint64_t a1)
{
  v2 = sub_1E5ACCD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBCF0(uint64_t a1)
{
  v2 = sub_1E5ACCD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBD2C(uint64_t a1)
{
  v2 = sub_1E5ACCCE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBD68(uint64_t a1)
{
  v2 = sub_1E5ACCCE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBDA4(uint64_t a1)
{
  v2 = sub_1E5ACCC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBDE0(uint64_t a1)
{
  v2 = sub_1E5ACCC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBE1C(uint64_t a1)
{
  v2 = sub_1E5ACCC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBE58(uint64_t a1)
{
  v2 = sub_1E5ACCC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBE94(uint64_t a1)
{
  v2 = sub_1E5ACCBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBED0(uint64_t a1)
{
  v2 = sub_1E5ACCBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBF0C(uint64_t a1)
{
  v2 = sub_1E5ACCB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBF48(uint64_t a1)
{
  v2 = sub_1E5ACCB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SidebarModalityKind.hashValue.getter()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

uint64_t SidebarModalityKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D08, &qword_1E5AD7DB0);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D10, &qword_1E5AD7DB8);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D18, &qword_1E5AD7DC0);
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D20, &qword_1E5AD7DC8);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D28, &qword_1E5AD7DD0);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D30, &qword_1E5AD7DD8);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v41 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D38, &qword_1E5AD7DE0);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v41 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D40, &qword_1E5AD7DE8);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v41 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D48, &qword_1E5AD7DF0);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v41 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D50, &qword_1E5AD7DF8);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v41 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D58, &qword_1E5AD7E00);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D60, &qword_1E5AD7E08);
  v41 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D68, &qword_1E5AD7E10);
  v24 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v26 = &v41 - v25;
  v27 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ACCB3C();
  v74 = v26;
  sub_1E5AD03E8();
  v28 = (v24 + 8);
  if (v27 > 5)
  {
    if (v27 > 8)
    {
      if (v27 == 9)
      {
        v85 = 9;
        sub_1E5ACCC38();
        v32 = v65;
        v34 = v74;
        v33 = v75;
        sub_1E5AD02B8();
        v36 = v66;
        v35 = v67;
      }

      else if (v27 == 10)
      {
        v86 = 10;
        sub_1E5ACCBE4();
        v32 = v68;
        v34 = v74;
        v33 = v75;
        sub_1E5AD02B8();
        v36 = v69;
        v35 = v70;
      }

      else
      {
        v87 = 11;
        sub_1E5ACCB90();
        v32 = v71;
        v34 = v74;
        v33 = v75;
        sub_1E5AD02B8();
        v36 = v72;
        v35 = v73;
      }
    }

    else if (v27 == 6)
    {
      v82 = 6;
      sub_1E5ACCD34();
      v32 = v56;
      v34 = v74;
      v33 = v75;
      sub_1E5AD02B8();
      v36 = v57;
      v35 = v58;
    }

    else if (v27 == 7)
    {
      v83 = 7;
      sub_1E5ACCCE0();
      v32 = v59;
      v34 = v74;
      v33 = v75;
      sub_1E5AD02B8();
      v36 = v60;
      v35 = v61;
    }

    else
    {
      v84 = 8;
      sub_1E5ACCC8C();
      v32 = v62;
      v34 = v74;
      v33 = v75;
      sub_1E5AD02B8();
      v36 = v63;
      v35 = v64;
    }

    (*(v36 + 8))(v32, v35);
  }

  else if (v27 > 2)
  {
    if (v27 == 3)
    {
      v79 = 3;
      sub_1E5ACCE30();
      v38 = v47;
      v34 = v74;
      v33 = v75;
      sub_1E5AD02B8();
      (*(v48 + 8))(v38, v49);
    }

    else if (v27 == 4)
    {
      v80 = 4;
      sub_1E5ACCDDC();
      v37 = v50;
      v34 = v74;
      v33 = v75;
      sub_1E5AD02B8();
      (*(v51 + 8))(v37, v52);
    }

    else
    {
      v81 = 5;
      sub_1E5ACCD88();
      v40 = v53;
      v34 = v74;
      v33 = v75;
      sub_1E5AD02B8();
      (*(v54 + 8))(v40, v55);
    }
  }

  else if (v27)
  {
    if (v27 == 1)
    {
      v77 = 1;
      sub_1E5ACCED8();
      v29 = v74;
      v30 = v75;
      sub_1E5AD02B8();
      (*(v42 + 8))(v20, v43);
      return (*v28)(v29, v30);
    }

    v78 = 2;
    sub_1E5ACCE84();
    v39 = v44;
    v34 = v74;
    v33 = v75;
    sub_1E5AD02B8();
    (*(v45 + 8))(v39, v46);
  }

  else
  {
    v76 = 0;
    sub_1E5ACCF2C();
    v34 = v74;
    v33 = v75;
    sub_1E5AD02B8();
    (*(v41 + 8))(v23, v21);
  }

  return (*v28)(v34, v33);
}

unint64_t sub_1E5ACCB3C()
{
  result = qword_1ED027D70;
  if (!qword_1ED027D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D70);
  }

  return result;
}

unint64_t sub_1E5ACCB90()
{
  result = qword_1ED027D78;
  if (!qword_1ED027D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D78);
  }

  return result;
}

unint64_t sub_1E5ACCBE4()
{
  result = qword_1ED027D80;
  if (!qword_1ED027D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D80);
  }

  return result;
}

unint64_t sub_1E5ACCC38()
{
  result = qword_1ED027D88;
  if (!qword_1ED027D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D88);
  }

  return result;
}

unint64_t sub_1E5ACCC8C()
{
  result = qword_1ED027D90;
  if (!qword_1ED027D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D90);
  }

  return result;
}

unint64_t sub_1E5ACCCE0()
{
  result = qword_1ED027D98;
  if (!qword_1ED027D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D98);
  }

  return result;
}

unint64_t sub_1E5ACCD34()
{
  result = qword_1ED027DA0;
  if (!qword_1ED027DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DA0);
  }

  return result;
}

unint64_t sub_1E5ACCD88()
{
  result = qword_1ED027DA8;
  if (!qword_1ED027DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DA8);
  }

  return result;
}

unint64_t sub_1E5ACCDDC()
{
  result = qword_1ED027DB0;
  if (!qword_1ED027DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DB0);
  }

  return result;
}

unint64_t sub_1E5ACCE30()
{
  result = qword_1ED027DB8;
  if (!qword_1ED027DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DB8);
  }

  return result;
}

unint64_t sub_1E5ACCE84()
{
  result = qword_1ED027DC0;
  if (!qword_1ED027DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DC0);
  }

  return result;
}

unint64_t sub_1E5ACCED8()
{
  result = qword_1ED027DC8;
  if (!qword_1ED027DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DC8);
  }

  return result;
}

unint64_t sub_1E5ACCF2C()
{
  result = qword_1ED027DD0;
  if (!qword_1ED027DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DD0);
  }

  return result;
}

uint64_t SidebarModalityKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DD8, &qword_1E5AD7E18);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DE0, &qword_1E5AD7E20);
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v55 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DE8, &qword_1E5AD7E28);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v84 = &v55 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DF0, &qword_1E5AD7E30);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v86 = &v55 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DF8, &qword_1E5AD7E38);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v85 = &v55 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E00, &qword_1E5AD7E40);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v92 = &v55 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E08, &qword_1E5AD7E48);
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v91 = &v55 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E10, &qword_1E5AD7E50);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v90 = &v55 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E18, &qword_1E5AD7E58);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v89 = &v55 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E20, &qword_1E5AD7E60);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v83 = &v55 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E28, &qword_1E5AD7E68);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E30, &qword_1E5AD7E70);
  v60 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E38, &unk_1E5AD7E78);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E5ACCB3C();
  v25 = v94;
  sub_1E5AD03D8();
  if (!v25)
  {
    v57 = v19;
    v56 = v17;
    v58 = v16;
    v26 = v89;
    v27 = v90;
    v29 = v91;
    v28 = v92;
    v94 = v21;
    v30 = v93;
    v59 = v20;
    v31 = sub_1E5AD0298();
    v32 = (2 * *(v31 + 16)) | 1;
    v96 = v31;
    v97 = v31 + 32;
    v98 = 0;
    v99 = v32;
    v33 = sub_1E5A8204C();
    if (v33 != 12 && v98 == v99 >> 1)
    {
      v100 = v33;
      if (v33 > 5u)
      {
        if (v33 > 8u)
        {
          v42 = v59;
          if (v33 != 9)
          {
            v45 = v94;
            if (v33 == 10)
            {
              v101 = 10;
              sub_1E5ACCBE4();
              v46 = v87;
              sub_1E5AD0228();
              (*(v79 + 8))(v46, v80);
            }

            else
            {
              v101 = 11;
              sub_1E5ACCB90();
              v54 = v88;
              sub_1E5AD0228();
              (*(v81 + 8))(v54, v82);
            }

            (*(v45 + 8))(v23, v42);
            goto LABEL_33;
          }

          v101 = 9;
          sub_1E5ACCC38();
          v51 = v84;
          sub_1E5AD0228();
          v48 = v94;
          (*(v77 + 8))(v51, v78);
        }

        else
        {
          v42 = v59;
          if (v33 != 6)
          {
            v43 = v94;
            if (v33 == 7)
            {
              v101 = 7;
              sub_1E5ACCCE0();
              v44 = v85;
              sub_1E5AD0228();
              (*(v73 + 8))(v44, v74);
            }

            else
            {
              v101 = 8;
              sub_1E5ACCC8C();
              v53 = v86;
              sub_1E5AD0228();
              (*(v75 + 8))(v53, v76);
            }

            goto LABEL_31;
          }

          v101 = 6;
          sub_1E5ACCD34();
          sub_1E5AD0228();
          v48 = v94;
          (*(v71 + 8))(v28, v72);
        }

        (*(v48 + 8))(v23, v42);
      }

      else
      {
        if (v33 <= 2u)
        {
          if (v33)
          {
            if (v33 == 1)
            {
              v101 = 1;
              sub_1E5ACCED8();
              v34 = v58;
              v35 = v59;
              sub_1E5AD0228();
              (*(v61 + 8))(v34, v62);
            }

            else
            {
              v101 = 2;
              sub_1E5ACCE84();
              v52 = v83;
              v35 = v59;
              sub_1E5AD0228();
              (*(v63 + 8))(v52, v64);
            }
          }

          else
          {
            v101 = 0;
            sub_1E5ACCF2C();
            v47 = v57;
            v35 = v59;
            sub_1E5AD0228();
            (*(v60 + 8))(v47, v56);
          }

          (*(v94 + 8))(v23, v35);
          goto LABEL_33;
        }

        if (v33 != 3)
        {
          v43 = v94;
          v42 = v59;
          if (v33 == 4)
          {
            v101 = 4;
            sub_1E5ACCDDC();
            sub_1E5AD0228();
            (*(v68 + 8))(v27, v67);
          }

          else
          {
            v101 = 5;
            sub_1E5ACCD88();
            sub_1E5AD0228();
            (*(v70 + 8))(v29, v69);
          }

LABEL_31:
          (*(v43 + 8))(v23, v42);
          goto LABEL_33;
        }

        v101 = 3;
        sub_1E5ACCE30();
        v49 = v59;
        sub_1E5AD0228();
        v50 = v94;
        (*(v65 + 8))(v26, v66);
        (*(v50 + 8))(v23, v49);
      }

LABEL_33:
      swift_unknownObjectRelease();
      *v30 = v100;
      return __swift_destroy_boxed_opaque_existential_1(v95);
    }

    v36 = sub_1E5AD00F8();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
    *v38 = &type metadata for SidebarModalityKind;
    v39 = v23;
    v40 = v59;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v94 + 8))(v39, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v95);
}

unint64_t sub_1E5ACDE64()
{
  result = qword_1ED027E40;
  if (!qword_1ED027E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E40);
  }

  return result;
}

uint64_t sub_1E5ACDEF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5ACDF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5ACE10C()
{
  result = qword_1ED027E48;
  if (!qword_1ED027E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E48);
  }

  return result;
}

unint64_t sub_1E5ACE164()
{
  result = qword_1ED027E50;
  if (!qword_1ED027E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E50);
  }

  return result;
}

unint64_t sub_1E5ACE1BC()
{
  result = qword_1ED027E58;
  if (!qword_1ED027E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E58);
  }

  return result;
}

unint64_t sub_1E5ACE214()
{
  result = qword_1ED027E60;
  if (!qword_1ED027E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E60);
  }

  return result;
}

unint64_t sub_1E5ACE26C()
{
  result = qword_1ED027E68;
  if (!qword_1ED027E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E68);
  }

  return result;
}

unint64_t sub_1E5ACE2C4()
{
  result = qword_1ED027E70;
  if (!qword_1ED027E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E70);
  }

  return result;
}

unint64_t sub_1E5ACE31C()
{
  result = qword_1ED027E78;
  if (!qword_1ED027E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E78);
  }

  return result;
}

unint64_t sub_1E5ACE374()
{
  result = qword_1ED027E80;
  if (!qword_1ED027E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E80);
  }

  return result;
}

unint64_t sub_1E5ACE3CC()
{
  result = qword_1ED027E88;
  if (!qword_1ED027E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E88);
  }

  return result;
}

unint64_t sub_1E5ACE424()
{
  result = qword_1ED027E90;
  if (!qword_1ED027E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E90);
  }

  return result;
}

unint64_t sub_1E5ACE47C()
{
  result = qword_1ED027E98;
  if (!qword_1ED027E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E98);
  }

  return result;
}

unint64_t sub_1E5ACE4D4()
{
  result = qword_1ED027EA0;
  if (!qword_1ED027EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EA0);
  }

  return result;
}

unint64_t sub_1E5ACE52C()
{
  result = qword_1ED027EA8;
  if (!qword_1ED027EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EA8);
  }

  return result;
}

unint64_t sub_1E5ACE584()
{
  result = qword_1ED027EB0;
  if (!qword_1ED027EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EB0);
  }

  return result;
}

unint64_t sub_1E5ACE5DC()
{
  result = qword_1ED027EB8;
  if (!qword_1ED027EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EB8);
  }

  return result;
}

unint64_t sub_1E5ACE634()
{
  result = qword_1ED027EC0;
  if (!qword_1ED027EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EC0);
  }

  return result;
}

unint64_t sub_1E5ACE68C()
{
  result = qword_1ED027EC8;
  if (!qword_1ED027EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EC8);
  }

  return result;
}

unint64_t sub_1E5ACE6E4()
{
  result = qword_1ED027ED0;
  if (!qword_1ED027ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027ED0);
  }

  return result;
}

unint64_t sub_1E5ACE73C()
{
  result = qword_1ED027ED8;
  if (!qword_1ED027ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027ED8);
  }

  return result;
}

unint64_t sub_1E5ACE794()
{
  result = qword_1ED027EE0;
  if (!qword_1ED027EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EE0);
  }

  return result;
}

unint64_t sub_1E5ACE7EC()
{
  result = qword_1ED027EE8;
  if (!qword_1ED027EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EE8);
  }

  return result;
}

unint64_t sub_1E5ACE844()
{
  result = qword_1ED027EF0;
  if (!qword_1ED027EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EF0);
  }

  return result;
}

unint64_t sub_1E5ACE89C()
{
  result = qword_1ED027EF8;
  if (!qword_1ED027EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EF8);
  }

  return result;
}

unint64_t sub_1E5ACE8F4()
{
  result = qword_1ED027F00;
  if (!qword_1ED027F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F00);
  }

  return result;
}

unint64_t sub_1E5ACE94C()
{
  result = qword_1ED027F08;
  if (!qword_1ED027F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F08);
  }

  return result;
}

unint64_t sub_1E5ACE9A4()
{
  result = qword_1ED027F10;
  if (!qword_1ED027F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F10);
  }

  return result;
}

unint64_t sub_1E5ACE9FC()
{
  result = qword_1ED027F18;
  if (!qword_1ED027F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F18);
  }

  return result;
}

uint64_t sub_1E5ACEA50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F646C6F6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701998435 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C637963 && a2 == 0xE700000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6164 && a2 == 0xE500000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953065320 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69786F626B63696BLL && a2 == 0xEA0000000000676ELL || (sub_1E5AD0348() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_1E5AD0348() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736574616C6970 && a2 == 0xE700000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x676E69776F72 && a2 == 0xE600000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6874676E65727473 && a2 == 0xE800000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C696D6461657274 && a2 == 0xE90000000000006CLL || (sub_1E5AD0348() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1634168697 && a2 == 0xE400000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}
void sub_1E5AE8828(uint64_t a1)
{
  sub_1E5AE88E4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LibraryCanvasContentLoadState(319);
    if (v2 <= 0x3F)
    {
      sub_1E5B3CB44();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5AE88E4(uint64_t a1)
{
  if (!qword_1EE2C23E8)
  {
    sub_1E5AE89A8();
    v1 = sub_1E5B3DB44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C23E8);
    }
  }
}

uint64_t type metadata accessor for LibraryCanvasContentState(uint64_t a1)
{
  result = qword_1EE2C2B68;
  if (!qword_1EE2C2B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5AE89A8()
{
  result = qword_1EE2C2738[0];
  if (!qword_1EE2C2738[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentRating, &type metadata for ContentRating, v0, v1);
    atomic_store(result, qword_1EE2C2738);
  }

  return result;
}

unint64_t sub_1E5AE8A00()
{
  result = qword_1EE2C2730;
  if (!qword_1EE2C2730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentRating, &type metadata for ContentRating, v0, v1);
    atomic_store(result, &qword_1EE2C2730);
  }

  return result;
}

uint64_t type metadata accessor for LibraryCanvasContentLoadState(uint64_t a1)
{
  result = qword_1EE2C2A20;
  if (!qword_1EE2C2A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryState.init(focusedLibraryPage:libraryLayout:locale:isSidebarVisible:accountState:)@<X0>(char a1@<W0>, __int16 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for LibraryState(0);
  v13 = v12[7];
  v14 = v12[8];
  *a6 = a1;
  *&a6[v12[6]] = v11;
  v15 = v12[5];
  v16 = sub_1E5B3CB44();
  result = (*(*(v16 - 8) + 32))(&a6[v15], a3, v16);
  a6[v13] = a4;
  a6[v14] = a5;
  return result;
}

uint64_t type metadata accessor for LibraryState(uint64_t a1)
{
  result = qword_1EE2C28E0;
  if (!qword_1EE2C28E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5AE8B98(uint64_t a1)
{
  if (!qword_1EE2C23F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B3CB44();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C23F0);
    }
  }
}

void sub_1E5AE8C20(uint64_t a1)
{
  sub_1E5AE8B98(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

unint64_t sub_1E5AE8C94()
{
  result = qword_1EE2C2978;
  if (!qword_1EE2C2978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPage, &type metadata for LibraryPage, v0, v1);
    atomic_store(result, &qword_1EE2C2978);
  }

  return result;
}

uint64_t sub_1E5AE8CE8(uint64_t a1)
{
  result = sub_1E5B3CB44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5AE8DA0(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v15 = *(a1 + 16);
  v16 = v15;
  v14 = v1;
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v6 = type metadata accessor for GalleryFeature(255, &v16);
  swift_getWitnessTable(protocol conformance descriptor for GalleryFeature<A, B>, v6);
  v7 = sub_1E5B3D934();
  swift_getWitnessTable(MEMORY[0x1E6999B78], v7);
  result = sub_1E5B3CE54();
  if (v9 <= 0x3F)
  {
    v22 = 0;
    v27 = result;
    v16 = v15;
    v17 = v14;
    v18 = v2;
    v19 = v3;
    v20 = v4;
    v21 = v5;
    *&v16 = type metadata accessor for LibraryDataItem(255, &v16);
    swift_getExtendedExistentialTypeMetadata();
    result = sub_1E5B3D6A4();
    if (v10 <= 0x3F)
    {
      v23 = 0;
      v28 = result;
      swift_getFunctionTypeMetadata1();
      result = sub_1E5B3CB74();
      if (v11 <= 0x3F)
      {
        v24 = 0;
        v29 = result;
        swift_getFunctionTypeMetadata1();
        result = sub_1E5B3CB74();
        if (v12 <= 0x3F)
        {
          v25 = 0;
          v30 = result;
          result = swift_checkMetadataState();
          if (v13 <= 0x3F)
          {
            v26 = 0;
            v31 = result;
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5AE8F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5AE9000(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1E5B3CB14();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = sub_1E5B3CC14();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5AE90EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v8 = *(a1 + 16);
  v9 = v1;
  v2 = type metadata accessor for DynamicSizeClassFeature(255, &v8);
  swift_getWitnessTable(protocol conformance descriptor for DynamicSizeClassFeature<A, B>, v2);
  v3 = sub_1E5B3D934();
  swift_getWitnessTable(MEMORY[0x1E6999B78], v3);
  result = sub_1E5B3CE54();
  if (v5 <= 0x3F)
  {
    v10 = 0;
    *&v8 = result;
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v11 = 0;
      *(&v8 + 1) = result;
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v12 = 0;
        *&v9 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t DynamicSizeClassView.init(store:listViewBuilder:gridViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a10;
  v18[5] = a11;
  v18[6] = a12;
  v18[7] = a13;
  v18[8] = a14;
  v18[9] = a15;
  v18[10] = a1;
  v18[11] = a2;

  v29 = a7;
  v30 = a8;
  v31 = a12;
  v32 = a13;
  v19 = type metadata accessor for DynamicSizeClassFeature(255, &v29);
  swift_getWitnessTable(protocol conformance descriptor for DynamicSizeClassFeature<A, B>, v19);
  v20 = sub_1E5B3D934();
  swift_getWitnessTable(MEMORY[0x1E6999B78], v20);
  *a9 = sub_1E5B3CE34();
  *(a9 + 8) = v21;
  *(a9 + 16) = v22 & 1;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  type metadata accessor for DynamicSizeClassView(0, &v29);
  v23 = a3();
  a5(v23);
}

uint64_t sub_1E5AE93D0()
{

  return swift_deallocObject();
}

uint64_t LibraryPage.title(locale:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1E5B3CB44();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5B3D9E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5B3D984();
  if (qword_1EE2C23D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2C4020;
  (*(v4 + 16))(v6, a1, v3);
  v9 = v8;
  return sub_1E5B3DA04();
}

id sub_1E5AE9678()
{
  type metadata accessor for LibraryLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2C4020 = result;
  return result;
}

uint64_t sub_1E5AE96F0(uint64_t a1, int a2)
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

uint64_t sub_1E5AE9710(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5AE9748()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AE9788(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_1E5B3CF34();
  v5 = type metadata accessor for HorizontalGeometryReader.SizeKey(255, v2, v1, v4);
  swift_getWitnessTable(byte_1E5B3E718, v5);
  v6 = sub_1E5B3D224();
  v7 = sub_1E5B3CF34();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6980758], v6);
  v19[0] = MEMORY[0x1E6981580];
  v19[1] = WitnessTable;
  v9 = MEMORY[0x1E697E858];
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v19);
  v10 = sub_1E5B3CF14();
  swift_getWitnessTable(MEMORY[0x1E697E378], v10);
  v11 = sub_1E5B3D134();
  v12 = sub_1E5B3CF34();
  sub_1E5AEF8CC();
  v13 = sub_1E5B3D214();
  v14 = sub_1E5B3CF34();
  v18[0] = v1;
  v18[1] = MEMORY[0x1E697EBF8];
  v17[0] = swift_getWitnessTable(v9, v3, v18);
  v17[1] = swift_getWitnessTable(MEMORY[0x1E697F940], v11);
  v16[0] = swift_getWitnessTable(v9, v12, v17);
  v16[1] = swift_getWitnessTable(MEMORY[0x1E6980620], v13);
  return swift_getWitnessTable(v9, v14, v16);
}

uint64_t sub_1E5AE999C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AE99D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for LibraryGalleryView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  sub_1E5AF0DEC(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_1E5AE9AC8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  v1 = sub_1E5B3D834();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v1);
  v2 = sub_1E5B3D724();
  swift_getWitnessTable(MEMORY[0x1E6981880], v2);
  v3 = sub_1E5B3D704();
  swift_getWitnessTable(MEMORY[0x1E6981870], v3);
  v4 = sub_1E5B3CDF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A8, &qword_1E5B3E778);
  v5 = sub_1E5B3CF34();
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697BE60], v4);
  v7[1] = sub_1E5AF13EC(&qword_1ED0317B0, &qword_1ED0317A8, &qword_1E5B3E778, MEMORY[0x1E697F598]);
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5AF0494();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AE9D28()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AE9D60(uint64_t a1)
{
  v2 = sub_1E5B3D164();
  v4 = *(a1 + 48);
  return swift_getWitnessTable(MEMORY[0x1E697F968], v2, &v4);
}

uint64_t sub_1E5AE9DBC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AE9DF8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  v1 = sub_1E5B3D834();
  v2 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v1);
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  v3 = sub_1E5B3D834();
  swift_getWitnessTable(v2, v3);
  v4 = sub_1E5B3D724();
  swift_getWitnessTable(MEMORY[0x1E6981880], v4);
  v5 = sub_1E5B3CDF4();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697BE60], v5);
  swift_getOpaqueTypeMetadata2();
  v7 = sub_1E5B3CF34();
  v8 = sub_1E5B3CF34();
  v14[2] = v5;
  v14[3] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = MEMORY[0x1E69805D0];
  v14[0] = OpaqueTypeConformance2;
  v14[1] = MEMORY[0x1E69805D0];
  v11 = MEMORY[0x1E697E858];
  v13[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v14);
  v13[1] = v10;
  return swift_getWitnessTable(v11, v8, v13);
}

uint64_t sub_1E5AEA004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5B3CB44();
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E5AEA0D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5B3CB44();
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
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E5AEA190()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEA1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = *(v5 - 8);
    v7 = *(a3 + 52);
LABEL_5:
    v10 = *(v6 + 48);

    return v10(a1 + v7, a2, v5);
  }

  v8 = a2;
  swift_getFunctionTypeMetadata1();
  v9 = sub_1E5B3CB74();
  if (*(*(v9 - 8) + 84) == v8)
  {
    a2 = v8;
    v5 = v9;
    v6 = *(v9 - 8);
    v7 = *(a3 + 56);
    goto LABEL_5;
  }

  v12 = *(a1 + *(a3 + 60) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  v13 = v12 - 1;
  if (v13 < 0)
  {
    v13 = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1E5AEA2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = *(v7 - 8);
    v9 = *(a4 + 52);
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    result = sub_1E5B3CB74();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + *(a4 + 60) + 8) = a2;
      return result;
    }

    v7 = result;
    v8 = *(result - 8);
    v9 = *(a4 + 56);
  }

  v12 = *(v8 + 56);

  return v12(a1 + v9, a2, a2, v7);
}

uint64_t sub_1E5AEA414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = sub_1E5B3CF34();
  v30 = v1;
  v31 = v2;
  v32 = v3;
  v33 = v4;
  v6 = type metadata accessor for TVLibraryView.FocusedView(255, &v30);
  v7 = sub_1E5B3DB94();
  v29[0] = v3;
  v29[1] = MEMORY[0x1E697E040];
  v8 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v29);
  v28 = swift_getWitnessTable(byte_1E5B3FF58, v6);
  v10 = swift_getWitnessTable(MEMORY[0x1E69E7C78], v7, &v28);
  v30 = v5;
  v31 = v7;
  v32 = WitnessTable;
  v33 = v10;
  swift_getOpaqueTypeMetadata2();
  v11 = sub_1E5B3CF34();
  v27[0] = v4;
  v27[1] = MEMORY[0x1E697EBF8];
  v12 = swift_getWitnessTable(v8, v11, v27);
  v30 = v11;
  v31 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = v11;
  v31 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = OpaqueTypeMetadata2;
  v31 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v30 = OpaqueTypeMetadata2;
  v31 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v30 = v15;
  v31 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v30 = v15;
  v31 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v30 = v17;
  v31 = v7;
  v32 = v18;
  v33 = v10;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v19 = sub_1E5B3D834();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v19);
  v20 = sub_1E5B3D6E4();
  v21 = swift_getWitnessTable(MEMORY[0x1E69817F8], v20);
  v30 = v20;
  v31 = v7;
  v32 = v21;
  v33 = v10;
  swift_getOpaqueTypeMetadata2();
  v22 = sub_1E5B3CF34();
  v23 = sub_1E5B3CF34();
  v30 = v20;
  v31 = v7;
  v32 = v21;
  v33 = v10;
  v26[0] = swift_getOpaqueTypeConformance2();
  v26[1] = MEMORY[0x1E697E5D8];
  v25[0] = swift_getWitnessTable(v8, v22, v26);
  v25[1] = MEMORY[0x1E6980A30];
  return swift_getWitnessTable(v8, v23, v25);
}

uint64_t sub_1E5AEA79C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEA7D8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEA824()
{
  if (*v0)
  {
    return 0x6361667265746E69;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_1E5AEA868()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEA8A4(uint64_t *a1)
{
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD0, &qword_1E5B40C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD8, &qword_1E5B40C78);
  v2 = sub_1E5B3D164();
  v3 = sub_1E5B3D164();
  v4 = sub_1E5B3D774();
  v5 = sub_1E5B3CF34();
  v6 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
  v7 = sub_1E5B02F64();
  v18[0] = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78, MEMORY[0x1E6981870]);
  v18[1] = v1;
  v8 = MEMORY[0x1E697F968];
  v17[0] = v7;
  v17[1] = swift_getWitnessTable(MEMORY[0x1E697F968], v2, v18);
  WitnessTable = swift_getWitnessTable(v8, v3, v17);
  v16[0] = MEMORY[0x1E6981E60];
  v16[1] = WitnessTable;
  v16[2] = MEMORY[0x1E6981E60];
  v10 = swift_getWitnessTable(MEMORY[0x1E697D6F0], v4, v16);
  v11 = MEMORY[0x1E69805D0];
  v15[0] = v10;
  v15[1] = MEMORY[0x1E69805D0];
  v12 = MEMORY[0x1E697E858];
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  v14[1] = v11;
  swift_getWitnessTable(v12, v6, v14);
  sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80, MEMORY[0x1E69E6500]);
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CB44();
  swift_getOpaqueTypeConformance2();
  sub_1E5B03044();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEAB4C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    State = type metadata accessor for LibraryCanvasContentLoadState(0);
    v9 = *(State - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = State;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E5AEAC70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for LibraryCanvasContentLoadState(0);
    v9 = *(State - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = State;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E5AEAD94@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E5AEADCC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  v1 = sub_1E5B3D834();
  v2 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v1);
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  v3 = sub_1E5B3D834();
  swift_getWitnessTable(v2, v3);
  v4 = sub_1E5B3D724();
  swift_getWitnessTable(MEMORY[0x1E6981880], v4);
  v6 = sub_1E5B3CDF4();
  swift_getWitnessTable(MEMORY[0x1E697BE60], v6);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEAF38()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEAF78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320A8, &qword_1E5B42248);
  sub_1E5B0DED8();
  sub_1E5B06FFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEAFFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032128, "^q");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5AEB0B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032128, "^q");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5AEB160(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LibraryPageCountLayout(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E5AEB284(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LibraryPageCountLayout(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E5AEB3D4()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEB460()
{
  v1 = sub_1E5B3CF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  sub_1E5AF0DEC(*(v0 + 16), *(v0 + 24));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5AEB548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323A8, &qword_1E5B43388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AEB5B8()
{
  v1 = sub_1E5B3CF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 97) & ~*(v2 + 80);
  sub_1E5AF0DEC(*(v0 + 16), *(v0 + 24));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5AEB6A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D054();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AEB71C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEB758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032448, &qword_1E5B43530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5AEB7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5AEB874(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5AEB920()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032448, &qword_1E5B43530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B1C5DC();
  sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80, MEMORY[0x1E69E6500]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEB9E4()
{
  v1 = (type metadata accessor for LibraryPageCountView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  sub_1E5AF0DEC(*v2, v2[1]);
  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5AEBAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324F0, &qword_1E5B43668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AEBB78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5B3D034();
  *a1 = result;
  return result;
}

uint64_t sub_1E5AEBBD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5B3D084();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5AEBC34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D004();
  *a1 = result;
  return result;
}

uint64_t sub_1E5AEBC94()
{
  v1 = 0x74756F79616CLL;
  if (*v0 != 1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_1E5AEBCF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B20E40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5AEBD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3CC74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5AEBD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3CC74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5AEBDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5B3CB44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1E5B3CC74();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = *(a3 + 84);
    }

    else
    {
      v14 = sub_1E5B3CBC4();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a3 + 32);
        v23[0] = *(a3 + 16);
        v23[1] = v16;
        v17 = *(a3 + 64);
        v23[2] = *(a3 + 48);
        v23[3] = v17;
        v18 = type metadata accessor for LibraryDataItem(255, v23);
        swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v18);
        v19 = sub_1E5B3CCF4();
        v20 = sub_1E5B3DA74();
        WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v19);
        swift_getWitnessTable(MEMORY[0x1E69E6320], v20, &WitnessTable);
        v21 = sub_1E5B3D8C4();
        return (*(*(v21 - 8) + 48))(a1 + *(a3 + 92), a2, v21);
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = *(a3 + 88);
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E5AEC030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5B3CB44();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1E5B3CC74();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = *(a4 + 84);
    }

    else
    {
      v16 = sub_1E5B3CBC4();
      if (*(*(v16 - 8) + 84) != a3)
      {
        v18 = *(a4 + 32);
        v25[0] = *(a4 + 16);
        v25[1] = v18;
        v19 = *(a4 + 64);
        v25[2] = *(a4 + 48);
        v25[3] = v19;
        v20 = type metadata accessor for LibraryDataItem(255, v25);
        swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v20);
        v21 = sub_1E5B3CCF4();
        v22 = sub_1E5B3DA74();
        WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v21);
        swift_getWitnessTable(MEMORY[0x1E69E6320], v22, &WitnessTable);
        v23 = sub_1E5B3D8C4();
        return (*(*(v23 - 8) + 56))(a1 + *(a4 + 92), a2, a2, v23);
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = *(a4 + 88);
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5AEC278()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AEC2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = *(a3 + 16);
    swift_getFunctionTypeMetadata1();
    v9 = sub_1E5B3CB74();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 136);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = *(a3 + 24);
      v18[0] = v8;
      v18[1] = v14;
      v15 = *(a3 + 72);
      v19 = *(a3 + 56);
      v20 = v15;
      v21 = *(a3 + 88);
      type metadata accessor for LibraryDataItem(255, v18);
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a2)
      {
        return (*(v17 + 48))(a1 + *(a3 + 140), a2, v16);
      }

      else
      {
        return (*(*(*(a3 + 40) - 8) + 48))(a1 + *(a3 + 144), a2);
      }
    }
  }
}

uint64_t sub_1E5AEC48C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 16);
    swift_getFunctionTypeMetadata1();
    v9 = sub_1E5B3CB74();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v5 + *(a4 + 136);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = *(a4 + 24);
      v18[0] = v8;
      v18[1] = v14;
      v15 = *(a4 + 72);
      v19 = *(a4 + 56);
      v20 = v15;
      v21 = *(a4 + 88);
      type metadata accessor for LibraryDataItem(255, v18);
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a3)
      {
        return (*(v17 + 56))(v5 + *(a4 + 140), a2, a2, v16);
      }

      else
      {
        return (*(*(*(a4 + 40) - 8) + 56))(v5 + *(a4 + 144), a2, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1E5AEC66C(__int128 *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 12);
  v4 = *(a1 + 13);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v6 = sub_1E5B260B8();
  *&v40 = v5;
  *(&v40 + 1) = MEMORY[0x1E6981148];
  *&v41 = v2;
  *(&v41 + 1) = v6;
  *&v42 = MEMORY[0x1E6981138];
  *(&v42 + 1) = v3;
  v32 = sub_1E5B3D1B4();
  v7 = *(a1 + 40);
  v40 = *a1;
  v41 = v7;
  v8 = *(a1 + 72);
  v42 = *(a1 + 56);
  v43 = v8;
  v9 = type metadata accessor for LibraryDataItem(255, &v40);
  sub_1E5B3CCA4();
  v10 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v11 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v9);
  v39[0] = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v39[1] = v4;
  v13 = MEMORY[0x1E697E858];
  v38[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v39);
  v38[1] = sub_1E5B2611C();
  v31 = MEMORY[0x1E697F968];
  v14 = swift_getWitnessTable(MEMORY[0x1E697F968], v11, v38);
  *&v40 = v9;
  *(&v40 + 1) = v11;
  *&v41 = WitnessTable;
  *(&v41 + 1) = v14;
  v15 = sub_1E5B3CC34();
  v16 = sub_1E5B3CD44();
  v17 = swift_getWitnessTable(MEMORY[0x1E699D928], v15);
  v18 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8], MEMORY[0x1E699DAD0]);
  *&v40 = v15;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  *&v40 = v15;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1E5B3D824();
  swift_getWitnessTable(MEMORY[0x1E697D7B8], v19);
  v20 = sub_1E5B3CDF4();
  v21 = swift_getWitnessTable(MEMORY[0x1E697BE60], v20);
  *&v40 = v20;
  *(&v40 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  v22 = sub_1E5B3CF34();
  v23 = sub_1E5B3CF34();
  v24 = sub_1E5B3D164();
  v25 = sub_1E5B3D164();
  v26 = sub_1E5B3D624();
  v27 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v32);
  *&v40 = v20;
  *(&v40 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x1E697E5D8];
  v37[0] = OpaqueTypeConformance2;
  v37[1] = MEMORY[0x1E697E5D8];
  v36[0] = swift_getWitnessTable(v13, v22, v37);
  v36[1] = v29;
  v35[0] = v27;
  v35[1] = swift_getWitnessTable(v13, v23, v36);
  v34[0] = v27;
  v34[1] = swift_getWitnessTable(v31, v24, v35);
  v33 = swift_getWitnessTable(v31, v25, v34);
  return swift_getWitnessTable(MEMORY[0x1E6981600], v26, &v33);
}

uint64_t sub_1E5AECAA0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AECAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = *(a3 + 16);
    swift_getFunctionTypeMetadata1();
    v9 = sub_1E5B3CB74();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 136);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = *(a3 + 24);
      v18[0] = v8;
      v18[1] = v14;
      v15 = *(a3 + 72);
      v19 = *(a3 + 56);
      v20 = v15;
      v21 = *(a3 + 88);
      type metadata accessor for LibraryDataItem(255, v18);
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a2)
      {
        return (*(v17 + 48))(a1 + *(a3 + 140), a2, v16);
      }

      else
      {
        return (*(*(*(a3 + 40) - 8) + 48))(a1 + *(a3 + 144), a2);
      }
    }
  }
}

uint64_t sub_1E5AECCB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 16);
    swift_getFunctionTypeMetadata1();
    v9 = sub_1E5B3CB74();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v5 + *(a4 + 136);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = *(a4 + 24);
      v18[0] = v8;
      v18[1] = v14;
      v15 = *(a4 + 72);
      v19 = *(a4 + 56);
      v20 = v15;
      v21 = *(a4 + 88);
      type metadata accessor for LibraryDataItem(255, v18);
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a3)
      {
        return (*(v17 + 56))(v5 + *(a4 + 140), a2, a2, v16);
      }

      else
      {
        return (*(*(*(a4 + 40) - 8) + 56))(v5 + *(a4 + 144), a2, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1E5AECE94(__int128 *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 12);
  v4 = *(a1 + 13);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v6 = sub_1E5B260B8();
  *&v40 = v5;
  *(&v40 + 1) = MEMORY[0x1E6981148];
  *&v41 = v2;
  *(&v41 + 1) = v6;
  *&v42 = MEMORY[0x1E6981138];
  *(&v42 + 1) = v3;
  v32 = sub_1E5B3D1B4();
  v7 = *(a1 + 40);
  v40 = *a1;
  v41 = v7;
  v8 = *(a1 + 72);
  v42 = *(a1 + 56);
  v43 = v8;
  v9 = type metadata accessor for LibraryDataItem(255, &v40);
  sub_1E5B3CCA4();
  v10 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v11 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v9);
  v39[0] = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v39[1] = v4;
  v13 = MEMORY[0x1E697E858];
  v38[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v39);
  v38[1] = sub_1E5B2611C();
  v31 = MEMORY[0x1E697F968];
  v14 = swift_getWitnessTable(MEMORY[0x1E697F968], v11, v38);
  *&v40 = v9;
  *(&v40 + 1) = v11;
  *&v41 = WitnessTable;
  *(&v41 + 1) = v14;
  v15 = sub_1E5B3CC34();
  v16 = sub_1E5B3CD34();
  v17 = swift_getWitnessTable(MEMORY[0x1E699D928], v15);
  v18 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68], MEMORY[0x1E699DA60]);
  *&v40 = v15;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  *&v40 = v15;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1E5B3CDE4();
  swift_getWitnessTable(MEMORY[0x1E697DA90], v19);
  v20 = sub_1E5B3CDF4();
  v21 = swift_getWitnessTable(MEMORY[0x1E697BE60], v20);
  *&v40 = v20;
  *(&v40 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  v22 = sub_1E5B3CF34();
  v23 = sub_1E5B3CF34();
  v24 = sub_1E5B3D164();
  v25 = sub_1E5B3D164();
  v26 = sub_1E5B3D624();
  v27 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v32);
  *&v40 = v20;
  *(&v40 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x1E697E5D8];
  v37[0] = OpaqueTypeConformance2;
  v37[1] = MEMORY[0x1E697E5D8];
  v36[0] = swift_getWitnessTable(v13, v22, v37);
  v36[1] = v29;
  v35[0] = v27;
  v35[1] = swift_getWitnessTable(v13, v23, v36);
  v34[0] = v27;
  v34[1] = swift_getWitnessTable(v31, v24, v35);
  v33 = swift_getWitnessTable(v31, v25, v34);
  return swift_getWitnessTable(MEMORY[0x1E6981600], v26, &v33);
}

uint64_t sub_1E5AED2C8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5AED384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5B3CB44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5AED440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5B3CB44();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5AED4F8()
{
  v1 = *(type metadata accessor for TVLibraryItemCell(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E5B3CB44();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E5AED5E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D054();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED63C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D074();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D024();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED6C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3CFF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED6F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3CFC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED724()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032B40, &qword_1E5B449C8);
  type metadata accessor for LibrarySidebarButtonStyle(255);
  sub_1E5AF13EC(&qword_1ED032B60, &qword_1ED032B40, &qword_1E5B449C8, MEMORY[0x1E697D680]);
  sub_1E5B2FDE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AED8C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5AED8F8()
{
  v1 = *(v0 + 24);
  v8[0] = *(v0 + 16);
  v2 = v8[0];
  v8[1] = v1;
  v3 = *(v0 + 48);
  v9 = *(v0 + 32);
  v7 = v9;
  v10 = v3;
  v4 = (type metadata accessor for LibraryDispatcherView(0, v8) - 8);
  v5 = (v0 + ((*(*v4 + 80) + 64) & ~*(*v4 + 80)));
  sub_1E5AF0DEC(*v5, v5[1]);
  (*(*(v2 - 8) + 8))(v5 + v4[19], v2);
  (*(*(v1 - 8) + 8))(v5 + v4[20], v1);
  (*(*(v7 - 8) + 8))(v5 + v4[21]);
  return swift_deallocObject();
}

uint64_t sub_1E5AEDA64(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_1E5B3D164();
  v4 = sub_1E5B3D164();
  v5 = sub_1E5B3D774();
  v11 = *(a1 + 24);
  v6 = MEMORY[0x1E697F968];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697F968], v3, &v11);
  v10[1] = v2;
  WitnessTable = swift_getWitnessTable(v6, v4, v10);
  v9[0] = MEMORY[0x1E6981E60];
  v9[1] = WitnessTable;
  v9[2] = MEMORY[0x1E6981E60];
  swift_getWitnessTable(MEMORY[0x1E697D6F0], v5, v9);
  sub_1E5AF0494();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEDBAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0329F0, &qword_1E5B44520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5AEDC14()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v9[0] = *(v0 + 1);
  v9[1] = v1;
  v3 = *(v0 + 5);
  v9[2] = v2;
  v9[3] = v3;
  v4 = type metadata accessor for LibraryDataItem(255, v9);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v4);
  v5 = sub_1E5B3CCF4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 128) & ~*(v6 + 80);

  (*(v6 + 8))(&v0[v7], v5);
  return swift_deallocObject();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5AEDDB0(uint64_t a1, int a2)
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

uint64_t sub_1E5AEDDD0(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5AEDE10()
{
  v0 = sub_1E5B3CD84();
  __swift_allocate_value_buffer(v0, qword_1ED032ED8);
  __swift_project_value_buffer(v0, qword_1ED032ED8);
  return sub_1E5B3CD74();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1E5AEDF58(uint64_t a1, unint64_t *a2, uint64_t a3)
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

_BYTE *LibraryLayout.init(interface:dynamicTypeSize:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E5AEDFD0()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](v1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AEE018(uint64_t a1)
{
  v2 = *v1;
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](v2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AEE05C()
{
  if (*v0)
  {
    return 0x5463696D616E7964;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

uint64_t sub_1E5AEE0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6361667265746E69 && a2 == 0xE900000000000065;
  if (v6 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5AEE1A0(uint64_t a1)
{
  v2 = sub_1E5AEE440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AEE1DC(uint64_t a1)
{
  v2 = sub_1E5AEE440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031638, &qword_1E5B3E3C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AEE440();
  sub_1E5B3DE14();
  v15 = v8;
  v14 = 0;
  sub_1E5AEE494();
  sub_1E5B3DD74();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1E5AEE4E8();
    sub_1E5B3DD74();
  }

  return (*(v5 + 8))(v7, v4);
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

unint64_t sub_1E5AEE440()
{
  result = qword_1ED031640;
  if (!qword_1ED031640)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for LibraryLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031640);
  }

  return result;
}

unint64_t sub_1E5AEE494()
{
  result = qword_1ED031648;
  if (!qword_1ED031648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryInterface, &type metadata for LibraryInterface, v0, v1);
    atomic_store(result, &qword_1ED031648);
  }

  return result;
}

unint64_t sub_1E5AEE4E8()
{
  result = qword_1ED031650;
  if (!qword_1ED031650)
  {
    result = swift_getWitnessTable(MEMORY[0x1E699D968], MEMORY[0x1E699D960], v0, v1);
    atomic_store(result, &qword_1ED031650);
  }

  return result;
}

uint64_t LibraryLayout.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031658, &qword_1E5B3E3D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AEE440();
  sub_1E5B3DE04();
  if (!v2)
  {
    v15 = 0;
    sub_1E5AEE75C();
    sub_1E5B3DCF4();
    v9 = v16;
    v13 = 1;
    sub_1E5AEE7B0();
    sub_1E5B3DCF4();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

unint64_t sub_1E5AEE75C()
{
  result = qword_1ED031660;
  if (!qword_1ED031660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryInterface, &type metadata for LibraryInterface, v0, v1);
    atomic_store(result, &qword_1ED031660);
  }

  return result;
}

unint64_t sub_1E5AEE7B0()
{
  result = qword_1ED031668;
  if (!qword_1ED031668)
  {
    result = swift_getWitnessTable(MEMORY[0x1E699D970], MEMORY[0x1E699D960], v0, v1);
    atomic_store(result, &qword_1ED031668);
  }

  return result;
}

uint64_t static LibraryLayout.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1E5B3CCB4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5AEE858(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1E5B3CCB4();
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for LibraryLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for LibraryLayout(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LibraryLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5AEEB40()
{
  result = qword_1ED031670;
  if (!qword_1ED031670)
  {
    result = swift_getWitnessTable(asc_1E5B3E528, &type metadata for LibraryLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031670);
  }

  return result;
}

unint64_t sub_1E5AEEB98()
{
  result = qword_1ED031678;
  if (!qword_1ED031678)
  {
    result = swift_getWitnessTable(aY_0, &type metadata for LibraryLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031678);
  }

  return result;
}

unint64_t sub_1E5AEEBF0()
{
  result = qword_1ED031680;
  if (!qword_1ED031680)
  {
    result = swift_getWitnessTable(aQ_0, &type metadata for LibraryLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031680);
  }

  return result;
}

unint64_t sub_1E5AEECAC()
{
  result = qword_1ED031688[0];
  if (!qword_1ED031688[0])
  {
    result = swift_getWitnessTable(MEMORY[0x1E6999AD0], MEMORY[0x1E6999AC8], v0, v1);
    atomic_store(result, qword_1ED031688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitnessPlusFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FitnessPlusFeatures(_WORD *result, int a2, int a3)
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

uint64_t sub_1E5AEEDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5AEEE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E5AEEE70(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1E5AEEF14@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7@<D0>)
{
  v70 = a2;
  v71 = a3;
  v49 = a1;
  v69 = a6;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E5B3CF34();
  v68 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v56 = &v48 - v14;
  v16 = type metadata accessor for HorizontalGeometryReader.SizeKey(255, a4, a5, v15);
  WitnessTable = swift_getWitnessTable(byte_1E5B3E718, v16);
  v59 = v16;
  v61 = WitnessTable;
  v18 = sub_1E5B3D224();
  v19 = sub_1E5B3CF34();
  v20 = swift_getWitnessTable(MEMORY[0x1E6980758], v18);
  v77[0] = MEMORY[0x1E6981580];
  v77[1] = v20;
  v57 = MEMORY[0x1E697E858];
  v52 = swift_getWitnessTable(MEMORY[0x1E697E858], v19, v77);
  v53 = sub_1E5B3CF14();
  v55 = swift_getWitnessTable(MEMORY[0x1E697E378], v53);
  v62 = sub_1E5B3D134();
  v58 = sub_1E5B3CF34();
  v67 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v48 - v21;
  v60 = sub_1E5AEF8CC();
  v65 = sub_1E5B3D214();
  v64 = sub_1E5B3CF34();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v54 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v48 - v24;
  v75 = a7;
  v76 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED031718, &qword_1E5B3E6F8);
  v25 = sub_1E5B3D684();
  v70(v25, *&v74[2]);
  sub_1E5B3D7F4();
  v26 = v56;
  sub_1E5B3D514();
  (*(v11 + 8))(v13, a4);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  v28 = a5;
  v75 = sub_1E5B3CF04();
  v76 = v29;
  sub_1E5B3D7E4();
  v74[0] = a5;
  v74[1] = MEMORY[0x1E697EBF8];
  v30 = v57;
  v31 = v51;
  v32 = swift_getWitnessTable(v57, v51, v74);
  v33 = v50;
  sub_1E5B3D404();

  (*(v68 + 8))(v26, v31);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = v28;
  *(v34 + 32) = *&a7;
  v35 = v70;
  v36 = v71;
  *(v34 + 40) = v49;
  *(v34 + 48) = v35;
  *(v34 + 56) = v36;

  v37 = swift_getWitnessTable(MEMORY[0x1E697F940], v62);
  v73[0] = v32;
  v73[1] = v37;
  v38 = v30;
  v39 = v30;
  v40 = v58;
  v41 = swift_getWitnessTable(v39, v58, v73);
  v42 = v54;
  sub_1E5B3D4A4();

  (*(v67 + 8))(v33, v40);
  v43 = swift_getWitnessTable(MEMORY[0x1E6980620], v65);
  v72[0] = v41;
  v72[1] = v43;
  v44 = v64;
  swift_getWitnessTable(v38, v64, v72);
  v45 = v63;
  sub_1E5AF144C();
  v46 = *(v66 + 8);
  v46(v42, v44);
  sub_1E5AF144C();
  return (v46)(v45, v44);
}

uint64_t sub_1E5AEF620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_1E5B3D5C4();
  v6 = type metadata accessor for HorizontalGeometryReader.SizeKey(0, a2, a3, v5);
  sub_1E5B3CEB4();
  swift_getWitnessTable(byte_1E5B3E718, v6);
  v7 = MEMORY[0x1E6981580];
  sub_1E5B3D424();

  v11[2] = v12;
  v11[3] = v13;
  v8 = sub_1E5B3D224();
  v9 = sub_1E5B3CF34();
  v11[0] = v7;
  v11[1] = swift_getWitnessTable(MEMORY[0x1E6980758], v8);
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
  sub_1E5AF144C();

  v12 = v14;
  v13 = v15;
  sub_1E5AF144C();
}

void sub_1E5AEF7B8(double *a1, double (*a2)(void))
{
  v3 = *a1;
  v4 = a2();
  if (v3 > v4)
  {
    v4 = v3;
  }

  *a1 = v4;
}

unint64_t sub_1E5AEF8CC()
{
  result = qword_1ED031710;
  if (!qword_1ED031710)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7E10], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &qword_1ED031710);
  }

  return result;
}

uint64_t sub_1E5AEFA2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031858, qword_1E5B3E818);
  sub_1E5AF13EC(&qword_1ED031860, &qword_1ED031858, qword_1E5B3E818, MEMORY[0x1E6999B78]);

  return sub_1E5B3CE44();
}

uint64_t LibraryGalleryView.init(store:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a7 = sub_1E5AEFB94;
  *(a7 + 8) = v13;
  *(a7 + 16) = 0;
  type metadata accessor for LibraryGalleryView(0, a5, a6, v14);

  a3(v15);
}

uint64_t LibraryGalleryView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v2 = a1 - 8;
  v62 = *(a1 - 8);
  v63 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v60 = v3;
  v61 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E5B3D184();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v5 = *(v2 + 24);
  swift_getTupleTypeMetadata2();
  v6 = sub_1E5B3D834();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v6);
  v7 = sub_1E5B3D724();
  swift_getWitnessTable(MEMORY[0x1E6981880], v7);
  v8 = sub_1E5B3D704();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981870], v8);
  v9 = sub_1E5B3CDF4();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A8, &qword_1E5B3E778);
  v12 = sub_1E5B3CF34();
  v53 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v16 = swift_getWitnessTable(MEMORY[0x1E697BE60], v9, v13);
  v44 = v16;
  v17 = sub_1E5AF13EC(&qword_1ED0317B0, &qword_1ED0317A8, &qword_1E5B3E778, MEMORY[0x1E697F598]);
  v74[0] = v16;
  v74[1] = v17;
  v18 = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v74);
  v70 = v12;
  v71 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v52 = &v44 - v20;
  v70 = v12;
  v71 = v18;
  v46 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1E5AF0494();
  v55 = OpaqueTypeMetadata2;
  v70 = OpaqueTypeMetadata2;
  v71 = &type metadata for LibraryLayout;
  v51 = OpaqueTypeConformance2;
  v72 = OpaqueTypeConformance2;
  v73 = v22;
  v50 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v48 = &v44 - v28;
  sub_1E5B3D284();
  v29 = *(v2 + 32);
  v59 = v5;
  v66 = v5;
  v67 = v29;
  v45 = v29;
  v68 = v65;
  sub_1E5B3CE04();
  sub_1E5B3D114();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317C0, &qword_1E5B3E780);
  sub_1E5AF0D10();
  v30 = v56;
  sub_1E5B3D474();
  (*(v49 + 8))(v11, v9);
  sub_1E5B3D174();
  LOBYTE(v9) = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v9)
  {
    sub_1E5B3D274();
  }

  v31 = v52;
  sub_1E5B3D4E4();
  (*(v57 + 8))(v30, v58);
  (*(v53 + 8))(v15, v12);
  v32 = v63;
  v33 = v65;
  sub_1E5AEFA2C();
  swift_getKeyPath();
  sub_1E5B3D904();

  v69 = v70;
  v35 = v61;
  v34 = v62;
  (*(v62 + 16))(v61, v33, v32);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v38 = v45;
  *(v37 + 16) = v59;
  *(v37 + 24) = v38;
  (*(v34 + 32))(v37 + v36, v35, v32);
  v39 = v55;
  sub_1E5B3D564();

  (*(v54 + 8))(v31, v39);
  v40 = *(v24 + 16);
  v41 = v48;
  v40(v48, v26, v23);
  v42 = *(v24 + 8);
  v42(v26, v23);
  v40(v64, v41, v23);
  return (v42)(v41, v23);
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

unint64_t sub_1E5AF0494()
{
  result = qword_1ED0317B8;
  if (!qword_1ED0317B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryLayout, &type metadata for LibraryLayout, v0, v1);
    atomic_store(result, &qword_1ED0317B8);
  }

  return result;
}

uint64_t sub_1E5AF04E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  v8 = sub_1E5B3D834();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v8);
  v9 = sub_1E5B3D724();
  swift_getWitnessTable(MEMORY[0x1E6981880], v9);
  v10 = sub_1E5B3D704();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-v15];
  v21 = a2;
  v22 = a3;
  v23 = a1;
  sub_1E5B3D114();
  sub_1E5B3D6F4();
  swift_getWitnessTable(MEMORY[0x1E6981870], v10);
  v17 = *(v11 + 16);
  v17(v16, v13, v10);
  v18 = *(v11 + 8);
  v18(v13, v10);
  v17(a4, v16, v10);
  return (v18)(v16, v10);
}

uint64_t sub_1E5AF0730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  v8 = sub_1E5B3D834();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v8);
  v9 = sub_1E5B3D724();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19[-v14];
  sub_1E5B3D7D4();
  v20 = a2;
  v21 = a3;
  v22 = a1;
  sub_1E5B3D714();
  swift_getWitnessTable(MEMORY[0x1E6981880], v9);
  v16 = *(v10 + 16);
  v16(v15, v12, v9);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v16(a4, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_1E5AF0934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v35 = 0;
  LOBYTE(v36) = 1;
  v17 = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v17)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D7E4();
  sub_1E5B3D4F4();
  v27 = v16;
  v18 = v30;
  v20 = type metadata accessor for LibraryGalleryView(0, a2, v30, v19);
  v21 = *(v5 + 16);
  v21(v9, v28 + *(v20 + 36), a2);
  (*(v11 + 16))(v13, v16, v10);
  v35 = v13;
  v22 = v29;
  v21(v29, v9, a2);
  v36 = v22;
  v34[0] = v10;
  v34[1] = a2;
  OpaqueTypeConformance2 = MEMORY[0x1E6981840];
  v33 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v18;
  sub_1E5B073C8(&v35, 2uLL, v34);
  v23 = *(v5 + 8);
  v23(v9, a2);
  v24 = *(v11 + 8);
  v24(v27, v10);
  v23(v22, a2);
  return (v24)(v13, v10);
}

double sub_1E5AF0C84@<D0>(uint64_t a1@<X8>)
{
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_1E5AF0D10()
{
  result = qword_1ED0317C8[0];
  if (!qword_1ED0317C8[0])
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317C0, &qword_1E5B3E780);
    v4[0] = MEMORY[0x1E6981838];
    v4[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, qword_1ED0317C8);
  }

  return result;
}

uint64_t sub_1E5AF0D94(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LibraryGalleryView(0, a4, a5, a4);
  sub_1E5AEFA2C();
  sub_1E5B3D914();
}

uint64_t sub_1E5AF0DF4(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for LibraryGalleryView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1E5AF0D94(a1, a2, v10, v7, v8);
}

void sub_1E5AF0EE0(uint64_t a1)
{
  sub_1E5AF1348(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5AF0F68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
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

void sub_1E5AF10EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5AF1348(uint64_t a1)
{
  if (!qword_1ED031850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031858, qword_1E5B3E818);
    sub_1E5AF13EC(&qword_1ED031860, &qword_1ED031858, qword_1E5B3E818, MEMORY[0x1E6999B78]);
    v1 = sub_1E5B3CE54();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED031850);
    }
  }
}

uint64_t sub_1E5AF13EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5AF1450()
{
  v1 = *v0;
  v2 = 0x74756F6B726F77;
  v3 = 0x6D6172676F7270;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697461746964656DLL;
  if (v1 != 1)
  {
    v5 = 0x6B63617473;
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

uint64_t sub_1E5AF1510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5AF25D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5AF1544(uint64_t a1)
{
  v2 = sub_1E5AF21C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1580(uint64_t a1)
{
  v2 = sub_1E5AF21C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF15E0(uint64_t a1)
{
  v2 = sub_1E5AF221C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF161C(uint64_t a1)
{
  v2 = sub_1E5AF221C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF1658(uint64_t a1)
{
  v2 = sub_1E5AF2270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1694(uint64_t a1)
{
  v2 = sub_1E5AF2270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF16D0(uint64_t a1)
{
  v2 = sub_1E5AF236C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF170C(uint64_t a1)
{
  v2 = sub_1E5AF236C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF1748(uint64_t a1)
{
  v2 = sub_1E5AF22C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1784(uint64_t a1)
{
  v2 = sub_1E5AF22C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF17C0(uint64_t a1)
{
  v2 = sub_1E5AF2318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF17FC(uint64_t a1)
{
  v2 = sub_1E5AF2318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF1838()
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](0);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF187C(uint64_t a1)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](0);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF18BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AF194C(uint64_t a1)
{
  v2 = sub_1E5AF23C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1988(uint64_t a1)
{
  v2 = sub_1E5AF23C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t LibraryItem.id.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = 0x697461746964656DLL;
      }

      else
      {
        v3 = 0x2D6B63617473;
      }
    }

    else
    {
      v3 = 0x2D74756F6B726F77;
    }

    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v3 = 0x2D6D6172676F7270;
LABEL_12:
    v7 = v3;
    goto LABEL_13;
  }

  if (a3 != 4)
  {
    v3 = 0x64616F6C6E776F64;
    goto LABEL_12;
  }

  v4 = a1;
  v5 = a2;
  sub_1E5B3DBE4();

  v7 = 0xD000000000000015;
  a1 = v4;
  a2 = v5;
LABEL_13:
  MEMORY[0x1E6936190](a1, a2);
  return v7;
}

unint64_t sub_1E5AF1AF4@<X0>(unint64_t *a1@<X8>)
{
  result = LibraryItem.id.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LibraryItem.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v46 = a3;
  v48 = a4;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031868, &qword_1E5B3E830);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031870, &qword_1E5B3E838);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031878, &qword_1E5B3E840);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031880, &qword_1E5B3E848);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031888, &qword_1E5B3E850);
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031890, &qword_1E5B3E858);
  v31 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031898, &qword_1E5B3E860);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v21 = &v30 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AF21C8();
  sub_1E5B3DE14();
  if (v48 > 2u)
  {
    if (v48 == 3)
    {
      v52 = 3;
      sub_1E5AF22C4();
      v23 = v35;
      v22 = v47;
      sub_1E5B3DD24();
      v24 = v37;
      sub_1E5B3DD44();
      v25 = v36;
    }

    else
    {
      v22 = v47;
      if (v48 == 4)
      {
        v53 = 4;
        sub_1E5AF2270();
        v23 = v38;
        sub_1E5B3DD24();
        v24 = v40;
        sub_1E5B3DD44();
        v25 = v39;
      }

      else
      {
        v54 = 5;
        sub_1E5AF221C();
        v23 = v41;
        sub_1E5B3DD24();
        v24 = v43;
        sub_1E5B3DD44();
        v25 = v42;
      }
    }

    v28 = *(v25 + 8);
    v29 = v23;
    goto LABEL_13;
  }

  if (!v48)
  {
    v49 = 0;
    sub_1E5AF23C0();
    v26 = v47;
    sub_1E5B3DD24();
    sub_1E5B3DD44();
    (*(v31 + 8))(v19, v17);
    return (*(v44 + 8))(v21, v26);
  }

  if (v48 != 1)
  {
    v51 = 2;
    sub_1E5AF2318();
    v22 = v47;
    sub_1E5B3DD24();
    v24 = v34;
    sub_1E5B3DD44();
    v28 = *(v33 + 8);
    v29 = v13;
LABEL_13:
    v28(v29, v24);
    return (*(v44 + 8))(v21, v22);
  }

  v50 = 1;
  sub_1E5AF236C();
  v22 = v47;
  sub_1E5B3DD24();
  sub_1E5B3DD44();
  (*(v32 + 8))(v16, v14);
  return (*(v44 + 8))(v21, v22);
}

unint64_t sub_1E5AF21C8()
{
  result = qword_1ED0318A0;
  if (!qword_1ED0318A0)
  {
    result = swift_getWitnessTable(byte_1E5B3F1EC, &type metadata for LibraryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318A0);
  }

  return result;
}

unint64_t sub_1E5AF221C()
{
  result = qword_1ED0318A8;
  if (!qword_1ED0318A8)
  {
    result = swift_getWitnessTable(byte_1E5B3F19C, &type metadata for LibraryItem.DownloadCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318A8);
  }

  return result;
}

unint64_t sub_1E5AF2270()
{
  result = qword_1ED0318B0;
  if (!qword_1ED0318B0)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for LibraryItem.EditorialCollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318B0);
  }

  return result;
}

unint64_t sub_1E5AF22C4()
{
  result = qword_1ED0318B8;
  if (!qword_1ED0318B8)
  {
    result = swift_getWitnessTable(byte_1E5B3F0FC, &type metadata for LibraryItem.ProgramCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318B8);
  }

  return result;
}

unint64_t sub_1E5AF2318()
{
  result = qword_1ED0318C0;
  if (!qword_1ED0318C0)
  {
    result = swift_getWitnessTable(asc_1E5B3F0AC, &type metadata for LibraryItem.StackCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318C0);
  }

  return result;
}

unint64_t sub_1E5AF236C()
{
  result = qword_1ED0318C8;
  if (!qword_1ED0318C8)
  {
    result = swift_getWitnessTable(asc_1E5B3F05C, &type metadata for LibraryItem.MeditationCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318C8);
  }

  return result;
}

unint64_t sub_1E5AF23C0()
{
  result = qword_1ED0318D0;
  if (!qword_1ED0318D0)
  {
    result = swift_getWitnessTable(byte_1E5B3F00C, &type metadata for LibraryItem.WorkoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318D0);
  }

  return result;
}

void *LibraryItem.init(from:)(void *a1)
{
  result = sub_1E5AF27DC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_1E5AF2438@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5AF27DC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t LibraryItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x1E6936540](a4);

  return sub_1E5B3DA14();
}

uint64_t LibraryItem.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a3);
  sub_1E5B3DA14();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF2560(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1E5B3DDC4();
  LibraryItem.hash(into:)(v6, v2, v3, v4);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF25D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6172676F7270 && a2 == 0xE700000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5B45C10 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

void *sub_1E5AF27DC(void *a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031988, &qword_1E5B3F240);
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v38 - v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031990, &qword_1E5B3F248);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v54 = &v38 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031998, &qword_1E5B3F250);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v53 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319A0, &qword_1E5B3F258);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319A8, &qword_1E5B3F260);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319B0, &qword_1E5B3F268);
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319B8, &qword_1E5B3F270);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = a1[3];
  v56 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E5AF21C8();
  v19 = v55;
  sub_1E5B3DE04();
  if (!v19)
  {
    v20 = v12;
    v39 = v10;
    v55 = v9;
    v22 = v52;
    v21 = v53;
    v23 = v54;
    v24 = sub_1E5B3DD04();
    v25 = (2 * *(v24 + 16)) | 1;
    v57 = v24;
    v58 = v24 + 32;
    v59 = 0;
    v60 = v25;
    v26 = sub_1E5B00354();
    if (v26 == 6 || v59 != v60 >> 1)
    {
      v28 = sub_1E5B3DC04();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
      *v30 = &type metadata for LibraryItem;
      v18 = v16;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = v26;
      if (v26 > 2u)
      {
        if (v26 != 3)
        {
          if (v26 == 4)
          {
            v62 = 4;
            sub_1E5AF2270();
            sub_1E5B3DC94();
            v40 = v14;
            v32 = v47;
            v18 = sub_1E5B3DCC4();
            (*(v49 + 8))(v23, v32);
          }

          else
          {
            v62 = 5;
            sub_1E5AF221C();
            v35 = v51;
            sub_1E5B3DC94();
            v40 = v14;
            v36 = v48;
            v18 = sub_1E5B3DCC4();
            (*(v50 + 8))(v35, v36);
          }

          goto LABEL_18;
        }

        v62 = 3;
        sub_1E5AF22C4();
        sub_1E5B3DC94();
        v40 = v14;
        v27 = v43;
        v18 = sub_1E5B3DCC4();
        v37 = v46;
        goto LABEL_17;
      }

      if (v26)
      {
        if (v26 != 1)
        {
          v62 = 2;
          sub_1E5AF2318();
          sub_1E5B3DC94();
          v40 = v14;
          v34 = v45;
          v18 = sub_1E5B3DCC4();
          (*(v44 + 8))(v22, v34);
LABEL_18:
          (*(v40 + 8))(v16, v13);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        v62 = 1;
        sub_1E5AF236C();
        v21 = v55;
        sub_1E5B3DC94();
        v40 = v14;
        v27 = v42;
        v18 = sub_1E5B3DCC4();
        v37 = v41;
LABEL_17:
        (*(v37 + 8))(v21, v27);
        goto LABEL_18;
      }

      v62 = 0;
      sub_1E5AF23C0();
      sub_1E5B3DC94();
      v33 = v39;
      v18 = sub_1E5B3DCC4();
      (*(v40 + 8))(v20, v33);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
    }
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v56);
  return v18;
}

uint64_t _s14FitnessLibrary0B4ItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        goto LABEL_13;
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        goto LABEL_13;
      }
    }

    else if (a6 == 5)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_13:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E5B3DDA4();
  }
}

unint64_t sub_1E5AF31E8()
{
  result = qword_1ED0318D8;
  if (!qword_1ED0318D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryItem, &type metadata for LibraryItem, v0, v1);
    atomic_store(result, &qword_1ED0318D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5AF325C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5AF32A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LibraryItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5AF34BC()
{
  result = qword_1ED0318E0;
  if (!qword_1ED0318E0)
  {
    result = swift_getWitnessTable(byte_1E5B3EB94, &type metadata for LibraryItem.DownloadCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318E0);
  }

  return result;
}

unint64_t sub_1E5AF3514()
{
  result = qword_1ED0318E8;
  if (!qword_1ED0318E8)
  {
    result = swift_getWitnessTable(byte_1E5B3EC4C, &type metadata for LibraryItem.EditorialCollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318E8);
  }

  return result;
}

unint64_t sub_1E5AF356C()
{
  result = qword_1ED0318F0;
  if (!qword_1ED0318F0)
  {
    result = swift_getWitnessTable(aE, &type metadata for LibraryItem.ProgramCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318F0);
  }

  return result;
}

unint64_t sub_1E5AF35C4()
{
  result = qword_1ED0318F8;
  if (!qword_1ED0318F8)
  {
    result = swift_getWitnessTable(byte_1E5B3EDBC, &type metadata for LibraryItem.StackCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0318F8);
  }

  return result;
}

unint64_t sub_1E5AF361C()
{
  result = qword_1ED031900;
  if (!qword_1ED031900)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for LibraryItem.MeditationCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031900);
  }

  return result;
}

unint64_t sub_1E5AF3674()
{
  result = qword_1ED031908;
  if (!qword_1ED031908)
  {
    result = swift_getWitnessTable(byte_1E5B3EF2C, &type metadata for LibraryItem.WorkoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031908);
  }

  return result;
}

unint64_t sub_1E5AF36CC()
{
  result = qword_1ED031910;
  if (!qword_1ED031910)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for LibraryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031910);
  }

  return result;
}

unint64_t sub_1E5AF3724()
{
  result = qword_1ED031918;
  if (!qword_1ED031918)
  {
    result = swift_getWitnessTable(aU, &type metadata for LibraryItem.WorkoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031918);
  }

  return result;
}

unint64_t sub_1E5AF377C()
{
  result = qword_1ED031920;
  if (!qword_1ED031920)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for LibraryItem.WorkoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031920);
  }

  return result;
}

unint64_t sub_1E5AF37D4()
{
  result = qword_1ED031928;
  if (!qword_1ED031928)
  {
    result = swift_getWitnessTable(asc_1E5B3EDE4, &type metadata for LibraryItem.MeditationCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031928);
  }

  return result;
}

unint64_t sub_1E5AF382C()
{
  result = qword_1ED031930;
  if (!qword_1ED031930)
  {
    result = swift_getWitnessTable(asc_1E5B3EE0C, &type metadata for LibraryItem.MeditationCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031930);
  }

  return result;
}

unint64_t sub_1E5AF3884()
{
  result = qword_1ED031938;
  if (!qword_1ED031938)
  {
    result = swift_getWitnessTable("ŭ5\tPw", &type metadata for LibraryItem.StackCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031938);
  }

  return result;
}

unint64_t sub_1E5AF38DC()
{
  result = qword_1ED031940;
  if (!qword_1ED031940)
  {
    result = swift_getWitnessTable("ݩ5\t(w", &type metadata for LibraryItem.StackCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031940);
  }

  return result;
}

unint64_t sub_1E5AF3934()
{
  result = qword_1ED031948;
  if (!qword_1ED031948)
  {
    result = swift_getWitnessTable(asc_1E5B3EC74, &type metadata for LibraryItem.ProgramCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031948);
  }

  return result;
}

unint64_t sub_1E5AF398C()
{
  result = qword_1ED031950;
  if (!qword_1ED031950)
  {
    result = swift_getWitnessTable(byte_1E5B3EC9C, &type metadata for LibraryItem.ProgramCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031950);
  }

  return result;
}

unint64_t sub_1E5AF39E4()
{
  result = qword_1ED031958;
  if (!qword_1ED031958)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for LibraryItem.EditorialCollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031958);
  }

  return result;
}

unint64_t sub_1E5AF3A3C()
{
  result = qword_1ED031960;
  if (!qword_1ED031960)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for LibraryItem.EditorialCollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031960);
  }

  return result;
}

unint64_t sub_1E5AF3A94()
{
  result = qword_1ED031968;
  if (!qword_1ED031968)
  {
    result = swift_getWitnessTable(byte_1E5B3EB04, &type metadata for LibraryItem.DownloadCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031968);
  }

  return result;
}

unint64_t sub_1E5AF3AEC()
{
  result = qword_1ED031970;
  if (!qword_1ED031970)
  {
    result = swift_getWitnessTable(byte_1E5B3EB2C, &type metadata for LibraryItem.DownloadCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031970);
  }

  return result;
}

unint64_t sub_1E5AF3B44()
{
  result = qword_1ED031978;
  if (!qword_1ED031978)
  {
    result = swift_getWitnessTable(byte_1E5B3EF54, &type metadata for LibraryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031978);
  }

  return result;
}

unint64_t sub_1E5AF3B9C()
{
  result = qword_1ED031980;
  if (!qword_1ED031980)
  {
    result = swift_getWitnessTable(byte_1E5B3EF7C, &type metadata for LibraryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031980);
  }

  return result;
}

uint64_t LibraryPage.iconName.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0x6B636F6C63;
    if (a1 != 6)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000015;
    if (a1 == 4)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x722E657275676966;
    v2 = 0x2E7373656E746966;
    if (a1 != 2)
    {
      v2 = 0xD000000000000014;
    }

    if (a1)
    {
      v1 = 0x656D2E656C707061;
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

uint64_t LibraryPage.emptyTitle(locale:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E5B3CB44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5B3D9E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (a2 > 6u)
  {
    sub_1E5B3D984();
    if (qword_1EE2C23D8 != -1)
    {
      swift_once();
    }

    qword_1EE2C4020;
    sub_1E5B3CB34();
  }

  else
  {
    sub_1E5B3D984();
    if (qword_1EE2C23D8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EE2C4020;
    (*(v5 + 16))(v7, a1, v4);
    v10 = v9;
  }

  return sub_1E5B3DA04();
}

id LibraryPage.emptyDescription(locale:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E5B3D9C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5B3CB44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5B3D9E4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (a2 <= 6u)
  {
    sub_1E5B3D984();
    if (qword_1EE2C23D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE2C4020;
    (*(v6 + 16))(v8, a1, v5);
    v11 = v10;
    return sub_1E5B3DA04();
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v13 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_1E5B3D984();
      if (qword_1EE2C23D8 == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E5B3D984();
      if (qword_1EE2C23D8 == -1)
      {
LABEL_11:
        v15 = qword_1EE2C4020;
        (*(v6 + 16))(v8, a1, v5);
        v16 = v15;
        sub_1E5B3DA04();
        sub_1E5B3D9B4();
        sub_1E5B3D9A4();
        sub_1E5B3D994();

        sub_1E5B3D9A4();
        sub_1E5B3D9D4();
        if (qword_1EE2C23D8 != -1)
        {
          swift_once();
        }

        qword_1EE2C4020;
        sub_1E5B3CB34();
        return sub_1E5B3DA04();
      }
    }

    swift_once();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t LibraryPage.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7374756F6B726F77;
  v2 = 0x796C746E65636572;
  if (a1 != 6)
  {
    v2 = 0x656E696C66666FLL;
  }

  v3 = 0xD000000000000014;
  if (a1 != 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x736B63617473;
  if (a1 != 2)
  {
    v4 = 0x736D6172676F7270;
  }

  if (a1)
  {
    v1 = 0x697461746964656DLL;
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

uint64_t sub_1E5AF4614(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = LibraryPage.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == LibraryPage.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5B3DDA4();
  }

  return v8 & 1;
}

unint64_t sub_1E5AF469C@<X0>(Swift::String *a1@<X0>, FitnessLibrary::LibraryPage_optional *a2@<X8>)
{
  result = _s14FitnessLibrary0B4PageO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1E5AF46CC@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryPage.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LibraryPage.contains<A>(id:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (swift_dynamicCast())
  {
    v7 = 0x7374756F6B726F77;
    if (v27 > 3u)
    {
      if (v27 > 5u)
      {
        if (v27 == 6)
        {
          v12 = 0x796C746E65636572;
          v13 = 0xED00006465646441;
        }

        else
        {
          v13 = 0xE700000000000000;
          v12 = 0x656E696C66666FLL;
        }
      }

      else if (v27 == 4)
      {
        v12 = 0xD000000000000014;
        v13 = 0x80000001E5B45B90;
      }

      else
      {
        v12 = 0x64616F6C6E776F64;
        v13 = 0xEA00000000006465;
      }
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0xE600000000000000;
      v10 = 0x736B63617473;
      if (v27 != 2)
      {
        v10 = 0x736D6172676F7270;
        v9 = 0xE800000000000000;
      }

      v11 = 0x697461746964656DLL;
      if (v27)
      {
        v8 = 0xEB00000000736E6FLL;
      }

      else
      {
        v11 = 0x7374756F6B726F77;
      }

      if (v27 <= 1u)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if (v27 <= 1u)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }
    }

    if (a2 > 3u)
    {
      v20 = 0x796C746E65636572;
      v21 = 0xED00006465646441;
      if (a2 != 6)
      {
        v20 = 0x656E696C66666FLL;
        v21 = 0xE700000000000000;
      }

      v22 = 0xD000000000000014;
      v23 = 0x80000001E5B45B90;
      if (a2 != 4)
      {
        v22 = 0x64616F6C6E776F64;
        v23 = 0xEA00000000006465;
      }

      if (a2 <= 5u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (a2 <= 5u)
      {
        v18 = v23;
      }

      else
      {
        v18 = v21;
      }

      if (v12 != v24)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      v15 = 0xE600000000000000;
      v16 = 0x736B63617473;
      if (a2 != 2)
      {
        v16 = 0x736D6172676F7270;
        v15 = 0xE800000000000000;
      }

      if (a2)
      {
        v7 = 0x697461746964656DLL;
        v14 = 0xEB00000000736E6FLL;
      }

      if (a2 <= 1u)
      {
        v17 = v7;
      }

      else
      {
        v17 = v16;
      }

      if (a2 <= 1u)
      {
        v18 = v14;
      }

      else
      {
        v18 = v15;
      }

      if (v12 != v17)
      {
        goto LABEL_44;
      }
    }

    if (v13 != v18)
    {
LABEL_44:
      v19 = sub_1E5B3DDA4();

      return v19 & 1;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t LibraryPage.apply<A>(as:operation:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_1E5B3DB94();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-v10];
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[15] = a4;
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a5);
    (*(v12 + 32))(v15, v11, a5);
    a2(v15);
    return (*(v12 + 8))(v15, a5);
  }

  else
  {
    v17(v11, 1, 1, a5);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1E5AF4D3C()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  LibraryPage.rawValue.getter(v1);
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF4DA0(uint64_t a1)
{
  LibraryPage.rawValue.getter(*v1);
  sub_1E5B3DA14();
}

uint64_t sub_1E5AF4DF4(uint64_t a1)
{
  v2 = *v1;
  sub_1E5B3DDC4();
  LibraryPage.rawValue.getter(v2);
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

unint64_t _s14FitnessLibrary0B4PageO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5B3DC74();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E5AF4EA4()
{
  result = qword_1ED0319C8;
  if (!qword_1ED0319C8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1ED0319C8);
  }

  return result;
}

unint64_t sub_1E5AF4F0C()
{
  result = qword_1EE2C2980[0];
  if (!qword_1EE2C2980[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPage, &type metadata for LibraryPage, v0, v1);
    atomic_store(result, qword_1EE2C2980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryPage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5AF50A0()
{
  result = qword_1ED0319D8;
  if (!qword_1ED0319D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPage, &type metadata for LibraryPage, v0, v1);
    atomic_store(result, &qword_1ED0319D8);
  }

  return result;
}

uint64_t sub_1E5AF50F4(uint64_t a1)
{
  v2 = *v1;
  if ((v2 & 0xFF00) == 0x300)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 >> 8;
    MEMORY[0x1E6936540](0);
    sub_1E5B3DA14();
  }

  return MEMORY[0x1E6936540](v3);
}

uint64_t sub_1E5AF5274()
{
  v2[39] = *v0;
  sub_1E5B3DDC4();
  sub_1E5AF50F4(v2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF52C4(uint64_t a1)
{
  v3[39] = *v1;
  sub_1E5B3DDC4();
  sub_1E5AF50F4(v3);
  return sub_1E5B3DDF4();
}

BOOL sub_1E5AF530C(unsigned __int16 *a1, _WORD *a2)
{
  v2 = *a1;
  result = (*a2 & 0xFF00) == 0x300 && (v2 & 0xFF00) == 768;
  if ((v2 & 0xFF00) != 0x300 && (*a2 & 0xFF00) != 0x300)
  {
    v4 = *a2;
    return (sub_1E5AFEB1C(v2, *a2) & 1) != 0 && (v4 ^ v2) < 0x100;
  }

  return result;
}

__n128 LibraryFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void LibraryFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, uint64_t *a3, unsigned __int16 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E0, &qword_1E5B3F440);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = *a4;
  v19 = *a4;
  if (*(a4 + 2) > 1u)
  {
    if (*(a4 + 2) == 2)
    {
      if (v18 > 0xFF || v19 != 6)
      {
        return;
      }

      if (*a2 > 3u && *a2 > 5u && *a2 == 6)
      {
LABEL_32:

        return;
      }

      v26 = sub_1E5B3DDA4();

      if (v26)
      {
        return;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319F8, &qword_1E5B3F460);
      v28 = v27[24];
      v29 = v27[28];
      v30 = &v17[v27[32]];
      v51 = 6;
      sub_1E5AF5CC0();
      sub_1E5B3DBC4();
      *(v17 + 5) = 0x3FE0000000000000;
      v17[48] = 0;
      sub_1E5B3DAC4();
      v31 = *MEMORY[0x1E6999B60];
      v32 = sub_1E5B3D8E4();
      (*(*(v32 - 8) + 104))(&v17[v28], v31, v32);
      v33 = *MEMORY[0x1E6999B40];
      v34 = sub_1E5B3D8D4();
      (*(*(v34 - 8) + 104))(&v17[v29], v33, v34);
      *v30 = &unk_1E5B3F468;
      *(v30 + 1) = 0;
      (*(v9 + 104))(v17, *MEMORY[0x1E6999AE0], v8);
      v23 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1E5AF682C(0, v23[2] + 1, 1, v23, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v36 = v23[2];
      v35 = v23[3];
      if (v36 >= v35 >> 1)
      {
        v23 = sub_1E5AF682C((v35 > 1), v36 + 1, 1, v23, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v23[2] = v36 + 1;
      (*(v9 + 32))(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36, v17, v8);
    }

    else
    {
      if (v18 > 0xFF || v19 != 6)
      {
        return;
      }

      v52 = 6;
      sub_1E5AF5CC0();
      sub_1E5B3DBC4();
      (*(v9 + 104))(v14, *MEMORY[0x1E6999AE8], v8);
      v23 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1E5AF682C(0, v23[2] + 1, 1, v23, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1E5AF682C((v24 > 1), v25 + 1, 1, v23, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v23[2] = v25 + 1;
      (*(v9 + 32))(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v14, v8);
    }

    *a3 = v23;
    return;
  }

  if (!*(a4 + 2))
  {
    *a2 = v19;
    return;
  }

  if (!*a4)
  {
    v21 = *v4;
    v20 = v4[1];
    v22 = *a2;
    if (v22 <= 3 || v22 != 6)
    {
      v37 = sub_1E5B3DDA4();

      if ((v37 & 1) == 0)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v39 = v38[16];
        v50 = v21;
        v40 = v38[20];
        v41 = &v11[v38[24]];
        v53 = 768;
        sub_1E5AF5CC0();
        sub_1E5B3DBC4();
        sub_1E5B3DAC4();
        v42 = *MEMORY[0x1E6999B50];
        v43 = sub_1E5B3D8E4();
        (*(*(v43 - 8) + 104))(&v11[v39], v42, v43);
        v44 = *MEMORY[0x1E6999B40];
        v45 = sub_1E5B3D8D4();
        (*(*(v45 - 8) + 104))(&v11[v40], v44, v45);
        v46 = swift_allocObject();
        *(v46 + 16) = v50;
        *(v46 + 24) = v20;
        *(v46 + 32) = v22;
        *v41 = &unk_1E5B3F458;
        *(v41 + 1) = v46;
        (*(v9 + 104))(v11, *MEMORY[0x1E6999AD8], v8);
        v47 = *a3;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1E5AF682C(0, v47[2] + 1, 1, v47, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
        }

        v49 = v47[2];
        v48 = v47[3];
        if (v49 >= v48 >> 1)
        {
          v47 = sub_1E5AF682C((v48 > 1), v49 + 1, 1, v47, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
        }

        v47[2] = v49 + 1;
        (*(v9 + 32))(v47 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v49, v11, v8);
        *a3 = v47;
      }

      return;
    }

    goto LABEL_32;
  }
}

unint64_t sub_1E5AF5CC0()
{
  result = qword_1ED0319F0;
  if (!qword_1ED0319F0)
  {
    result = swift_getWitnessTable(byte_1E5B3F548, &type metadata for LibraryFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED0319F0);
  }

  return result;
}

uint64_t sub_1E5AF5D14()
{
  *(v0 + 16) = sub_1E5B3DAB4();
  *(v0 + 24) = sub_1E5B3DAA4();
  *(v0 + 40) = 6;
  *(v0 + 42) = 0;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A38, &qword_1E5B3F5A0);
  *v1 = v0;
  v1[1] = sub_1E5AF5DFC;

  return MEMORY[0x1EEE01A40](v0 + 40, v2);
}

uint64_t sub_1E5AF5DFC()
{

  v1 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5AF6A18, v1, v0);
}

uint64_t sub_1E5AF5F38(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5B3DAB4();
  v4[3] = sub_1E5B3DAA4();
  v9 = a2 + *a2;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1E5AF6058;

  return (v9)(a4, 0);
}

uint64_t sub_1E5AF6058()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E5B3DA84();
  if (v0)
  {
    v4 = sub_1E5AF6218;
  }

  else
  {
    v4 = sub_1E5AF61B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5AF61B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5AF6218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5AF627C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5AF632C;

  return sub_1E5AF5F38(a1, v4, v5, v6);
}

uint64_t sub_1E5AF632C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1E5AF642C()
{
  result = qword_1EE2C2840;
  if (!qword_1EE2C2840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryAction, &type metadata for LibraryAction, v0, v1);
    atomic_store(result, &qword_1EE2C2840);
  }

  return result;
}

unint64_t sub_1E5AF6484()
{
  result = qword_1EE2C2848[0];
  if (!qword_1EE2C2848[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryAction, &type metadata for LibraryAction, v0, v1);
    atomic_store(result, qword_1EE2C2848);
  }

  return result;
}

unint64_t sub_1E5AF64DC()
{
  result = qword_1EE2C28F0[0];
  if (!qword_1EE2C28F0[0])
  {
    v3 = type metadata accessor for LibraryState(255);
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryState, v3, v0, v1);
    atomic_store(result, qword_1EE2C28F0);
  }

  return result;
}

uint64_t sub_1E5AF6534(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E5AF657C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryFeature.TaskIdentifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65283;
  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65283;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65283;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65283;
    }
  }

LABEL_20:
  v7 = *(a1 + 1);
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E5AF6720(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5AF6734(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 2;
  }

  return result;
}

unint64_t sub_1E5AF676C()
{
  result = qword_1ED031A00;
  if (!qword_1ED031A00)
  {
    result = swift_getWitnessTable(asc_1E5B3F520, &type metadata for LibraryFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED031A00);
  }

  return result;
}

void *sub_1E5AF682C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1E5AF6A1C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v5[0] = *(a1 + 16);
  v5[1] = v1;
  v2 = type metadata accessor for DynamicSizeClassFeature(255, v5);
  swift_getWitnessTable(protocol conformance descriptor for DynamicSizeClassFeature<A, B>, v2);
  v3 = sub_1E5B3D934();
  swift_getWitnessTable(MEMORY[0x1E6999B78], v3);
  return sub_1E5B3CE44();
}

uint64_t DynamicSizeClassView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = a1[5];
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - v7;
  v9 = *(v8 + 32);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v36 - v12;
  v14 = *(v13 + 24);
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = *(v17 + 16);
  *(&v18 + 1) = v14;
  v42 = v18;
  v51 = *(v17 + 48);
  v58 = v18;
  v59 = v51;
  v19 = sub_1E5B3CBF4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - v21;
  v46 = sub_1E5B3D164();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v36 - v23;
  v47 = v2;
  sub_1E5AF6A1C(a1);
  v48 = v9;
  v49 = v4;
  *&v24 = v9;
  *(&v24 + 1) = v4;
  v53 = v24;
  v52 = v42;
  v54 = v51;
  v25 = a1[8];
  v26 = a1[9];
  v55 = v25;
  v56 = v26;
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CBE4();
  (*(v20 + 8))(v22, v19);
  v27 = sub_1E5B3CB84();
  (*(v43 + 8))(v16, v14);
  if (v27)
  {
    v28 = v48;
    v29 = v36;
    sub_1E5AF144C();
    v30 = v37;
    sub_1E5AF144C();
    v31 = v44;
    sub_1E5AF7058(v30, v28, v49, v25, v26);
    v32 = &v60;
  }

  else
  {
    v29 = v39;
    v28 = v49;
    sub_1E5AF144C();
    v30 = v40;
    sub_1E5AF144C();
    v31 = v44;
    sub_1E5AF7150(v30, v48, v28, v25, v26);
    v32 = &v61;
  }

  v33 = *(*(v32 - 32) + 8);
  v33(v30, v28);
  v33(v29, v28);
  v57[0] = v25;
  v57[1] = v26;
  v34 = v46;
  swift_getWitnessTable(MEMORY[0x1E697F968], v46, v57);
  sub_1E5AF144C();
  return (*(v45 + 8))(v31, v34);
}

uint64_t sub_1E5AF7058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5B3D144();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E5B3D154();
}

uint64_t sub_1E5AF7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5B3D144();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E5B3D154();
}

uint64_t sub_1E5AF7298(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5AF74BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(a4 + 40);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

uint64_t FitnessPlusFeatures.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1E5B3DC74();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_1E5AF7878()
{
  result = qword_1ED031A48;
  if (!qword_1ED031A48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FitnessPlusFeatures, &type metadata for FitnessPlusFeatures, v0, v1);
    atomic_store(result, &qword_1ED031A48);
  }

  return result;
}

uint64_t sub_1E5AF78CC()
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF7950(uint64_t a1)
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF79AC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1E5B3DC74();

  *a2 = v3 != 0;
  return result;
}

uint64_t ContentRating.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E61656C63;
  }

  if (a1 == 1)
  {
    return 0x746963696C707865;
  }

  return 0x6669636570736E75;
}

uint64_t sub_1E5AF7ACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x746963696C707865;
  if (v2 != 1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E61656C63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746963696C707865;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E61656C63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E5B3DDA4();
  }

  return v11 & 1;
}

unint64_t sub_1E5AF7BDC@<X0>(Swift::String *a1@<X0>, FitnessLibrary::ContentRating_optional *a2@<X8>)
{
  result = _s14FitnessLibrary13ContentRatingO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1E5AF7C0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x746963696C707865;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E61656C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E5AF7D30()
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF7DD8(uint64_t a1)
{
  sub_1E5B3DA14();
}

uint64_t sub_1E5AF7E6C(uint64_t a1)
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

unint64_t _s14FitnessLibrary13ContentRatingO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5B3DC74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E5AF7F60()
{
  result = qword_1ED031A50;
  if (!qword_1ED031A50)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031A58, &qword_1E5B3F7B8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1ED031A50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentRating(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentRating(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5AF8114()
{
  result = qword_1ED031A60;
  if (!qword_1ED031A60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentRating, &type metadata for ContentRating, v0, v1);
    atomic_store(result, &qword_1ED031A60);
  }

  return result;
}

uint64_t sub_1E5AF8168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF9F18();

  return sub_1E5B3CE44();
}

uint64_t CompactLibraryView.init(store:canvasViewBuilder:pageCountViewBuilder:isTablet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *a9 = sub_1E5AEFB94;
  *(a9 + 8) = v18;
  *(a9 + 16) = 0;
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v19 = type metadata accessor for CompactLibraryView(0, &v23);

  v21 = a3(v20);
  a5(v21);

  *(a9 + *(v19 + 60)) = a7;
  return result;
}

uint64_t CompactLibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v60 = a1;
  v3 = a1 - 8;
  v72 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v75 = v4;
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E5B3D184();
  v61 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v76 = *(v3 + 24);
  swift_getTupleTypeMetadata2();
  v8 = sub_1E5B3D834();
  v9 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v8);
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  v10 = sub_1E5B3D834();
  swift_getWitnessTable(v9, v10);
  v11 = sub_1E5B3D724();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v11);
  v13 = sub_1E5B3CDF4();
  v59 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = swift_getWitnessTable(MEMORY[0x1E697BE60], v13, v14);
  v58 = v13;
  v83 = v13;
  v84 = v17;
  v18 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v54 - v20;
  v63 = v22;
  v23 = sub_1E5B3CF34();
  v68 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v54 - v24;
  v69 = v25;
  v71 = sub_1E5B3CF34();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v67 = &v54 - v28;
  v29 = sub_1E5B3D284();
  v30 = *(v3 + 40);
  v78 = v76;
  v79 = v30;
  v74 = v30;
  v80 = v2;
  sub_1E5AF0C6C(v29, sub_1E5AF8DE0, v77, v11, WitnessTable);
  sub_1E5B3D174();
  LOBYTE(v13) = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v13)
  {
    sub_1E5B3D274();
  }

  v57 = v21;
  v31 = v58;
  sub_1E5B3D4E4();
  (*(v61 + 8))(v7, v64);
  (*(v59 + 8))(v16, v31);
  v32 = v72;
  v64 = *(v72 + 16);
  v56 = v2;
  v33 = v60;
  v64(v5, v2, v60);
  v55 = v5;
  v34 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v36 = v74;
  *(v35 + 16) = v76;
  *(v35 + 32) = v36;
  v72 = *(v32 + 32);
  (v72)(v35 + v34, v5, v33);
  v83 = v31;
  v84 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v66;
  v39 = v63;
  v40 = v57;
  sub_1E5B3D554();

  (*(v62 + 8))(v40, v39);
  v41 = v55;
  v64(v55, v56, v33);
  v42 = swift_allocObject();
  v43 = v74;
  *(v42 + 16) = v76;
  *(v42 + 32) = v43;
  (v72)(v42 + v34, v41, v33);
  v44 = MEMORY[0x1E69805D0];
  v82[0] = OpaqueTypeConformance2;
  v82[1] = MEMORY[0x1E69805D0];
  v45 = MEMORY[0x1E697E858];
  v46 = v69;
  v47 = swift_getWitnessTable(MEMORY[0x1E697E858], v69, v82);
  v48 = v65;
  sub_1E5B3D454();

  (*(v68 + 8))(v38, v46);
  v81[0] = v47;
  v81[1] = v44;
  v49 = v45;
  v50 = v71;
  swift_getWitnessTable(v49, v71, v81);
  v51 = v67;
  sub_1E5AF144C();
  v52 = *(v70 + 8);
  v52(v48, v50);
  sub_1E5AF144C();
  return (v52)(v51, v50);
}

uint64_t sub_1E5AF8B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a5;
  v22[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  v10 = sub_1E5B3D834();
  v11 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v10);
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  v12 = sub_1E5B3D834();
  swift_getWitnessTable(v11, v12);
  v13 = sub_1E5B3D724();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v22 - v18;
  sub_1E5B3D7D4();
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  v22[7] = v22[0];
  v22[8] = a1;
  sub_1E5B3D714();
  swift_getWitnessTable(MEMORY[0x1E6981880], v13);
  sub_1E5AF144C();
  v20 = *(v14 + 8);
  v20(v16, v13);
  sub_1E5AF144C();
  return (v20)(v19, v13);
}

uint64_t sub_1E5AF8DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v51 = a6;
  swift_getTupleTypeMetadata2();
  v41 = sub_1E5B3D834();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v41);
  v10 = sub_1E5B3D704();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &WitnessTable - v11;
  v13 = sub_1E5B3CF34();
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &WitnessTable - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &WitnessTable - v16;
  MEMORY[0x1EEE9AC00](v17);
  v49 = &WitnessTable - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v48 = &WitnessTable - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &WitnessTable - v22;
  v57 = 0;
  LOBYTE(v58) = 1;
  v24 = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v24)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D7E4();
  v25 = sub_1E5B3D4F4();
  MEMORY[0x1EEE9AC00](v25);
  *(&WitnessTable - 6) = a2;
  *(&WitnessTable - 5) = a3;
  v52 = v23;
  v26 = a3;
  v27 = v46;
  *(&WitnessTable - 4) = v46;
  *(&WitnessTable - 3) = a5;
  *(&WitnessTable - 2) = a1;
  sub_1E5B3D114();
  sub_1E5B3D6F4();
  sub_1E5B3D2B4();
  v57 = a2;
  v58 = v26;
  v59 = v27;
  v60 = a5;
  type metadata accessor for CompactLibraryView(0, &v57);
  v28 = swift_getWitnessTable(MEMORY[0x1E6981870], v10, WitnessTable, v41);
  v29 = v42;
  sub_1E5B3D534();
  (*(v43 + 8))(v12, v10);
  v56[0] = v28;
  v56[1] = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v56);
  v31 = v49;
  sub_1E5AF144C();
  v32 = v47;
  v33 = *(v47 + 8);
  v33(v29, v13);
  v35 = v44;
  v34 = v45;
  v36 = v48;
  (*(v44 + 16))(v48, v52, v45);
  v57 = v36;
  v37 = v50;
  (*(v32 + 16))(v50, v31, v13);
  v58 = v37;
  v55[0] = v34;
  v55[1] = v13;
  OpaqueTypeConformance2 = MEMORY[0x1E6981840];
  v54 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v30;
  sub_1E5B073C8(&v57, 2uLL, v55);
  v33(v31, v13);
  v38 = *(v35 + 8);
  v38(v52, v34);
  v33(v37, v13);
  return (v38)(v36, v34);
}

uint64_t sub_1E5AF9388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  type metadata accessor for CompactLibraryView(0, &v39);
  sub_1E5AF144C();
  v26 = a4;
  sub_1E5AF144C();
  (*(v15 + 16))(v18, v21, a3);
  v39 = v18;
  v27 = v33;
  v28 = v35;
  (*(v33 + 16))(v35, v13, a2);
  v40 = v28;
  v38[0] = a3;
  v38[1] = a2;
  v36 = a5;
  v37 = v26;
  sub_1E5B073C8(&v39, 2uLL, v38);
  v29 = *(v27 + 8);
  v29(v13, a2);
  v30 = *(v15 + 8);
  v30(v21, a3);
  v29(v35, a2);
  return (v30)(v18, a3);
}

uint64_t sub_1E5AF9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for CompactLibraryView(0, v8);
  sub_1E5AF8168();
  LOWORD(v8[0]) = 6;
  BYTE2(v8[0]) = a6;
  sub_1E5B3D914();
}

uint64_t objectdestroy_2Tm()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for CompactLibraryView(0, &v7) - 8);
  v4 = (v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80)));
  sub_1E5AF0DEC(*v4, v4[1]);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_1E5AF97CC(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for CompactLibraryView(0, v9) - 8);
  return sub_1E5AF9620(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

void sub_1E5AF98BC(uint64_t a1)
{
  sub_1E5AF9EA8(319);
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

uint64_t sub_1E5AF9968(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = *(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5AF9B90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + 1;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (*(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v7 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5AF9EA8(uint64_t a1)
{
  if (!qword_1EE2C2418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031A68, qword_1E5B3F918);
    sub_1E5AF9F18();
    v1 = sub_1E5B3CE54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C2418);
    }
  }
}

unint64_t sub_1E5AF9F18()
{
  result = qword_1EE2C23F8;
  if (!qword_1EE2C23F8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031A68, qword_1E5B3F918);
    result = swift_getWitnessTable(MEMORY[0x1E6999B78], v3, v0, v1);
    atomic_store(result, &qword_1EE2C23F8);
  }

  return result;
}

uint64_t LibraryRemoteParticipant.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E5AFA00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AFA094(uint64_t a1)
{
  v2 = sub_1E5AFA248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFA0D0(uint64_t a1)
{
  v2 = sub_1E5AFA248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryRemoteParticipant.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A70, &qword_1E5B3F930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFA248();
  sub_1E5B3DE14();
  sub_1E5B3DD34();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E5AFA248()
{
  result = qword_1ED031A78;
  if (!qword_1ED031A78)
  {
    result = swift_getWitnessTable(byte_1E5B3FAFC, &type metadata for LibraryRemoteParticipant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031A78);
  }

  return result;
}

uint64_t LibraryRemoteParticipant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A80, &qword_1E5B3F938);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFA248();
  sub_1E5B3DE04();
  if (!v2)
  {
    v9 = sub_1E5B3DCB4();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5AFA428(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A70, &qword_1E5B3F930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFA248();
  sub_1E5B3DE14();
  sub_1E5B3DD34();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static LibraryRemoteParticipant.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1E5B3DDA4() & 1) != 0)
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

uint64_t LibraryRemoteParticipant.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_1E5B3DDE4();
  }

  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t LibraryRemoteParticipant.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1E5B3DDC4();
  sub_1E5B3DDE4();
  if (v1)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFA6A8()
{
  v1 = *(v0 + 8);
  sub_1E5B3DDC4();
  sub_1E5B3DDE4();
  if (v1)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFA718(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_1E5B3DDE4();
  }

  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t sub_1E5AFA790(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E5B3DDC4();
  sub_1E5B3DDE4();
  if (v2)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

unint64_t sub_1E5AFA800()
{
  result = qword_1ED031A88;
  if (!qword_1ED031A88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryRemoteParticipant, &type metadata for LibraryRemoteParticipant, v0, v1);
    atomic_store(result, &qword_1ED031A88);
  }

  return result;
}

uint64_t sub_1E5AFA854(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1E5B3DDA4() & 1) != 0)
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

uint64_t sub_1E5AFA8B0(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E5AFA90C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1E5AFA980()
{
  result = qword_1ED031A90;
  if (!qword_1ED031A90)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for LibraryRemoteParticipant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031A90);
  }

  return result;
}

unint64_t sub_1E5AFA9D8()
{
  result = qword_1ED031A98;
  if (!qword_1ED031A98)
  {
    result = swift_getWitnessTable(byte_1E5B3FA44, &type metadata for LibraryRemoteParticipant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031A98);
  }

  return result;
}

unint64_t sub_1E5AFAA30()
{
  result = qword_1ED031AA0;
  if (!qword_1ED031AA0)
  {
    result = swift_getWitnessTable(aS5_0, &type metadata for LibraryRemoteParticipant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031AA0);
  }

  return result;
}

unint64_t LibraryCanvasPlaceholderReferenceType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D6172676F7270;
  v2 = 0x74756F6B726F77;
  if (a1 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (a1)
  {
    v1 = 0x6B63617473;
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

uint64_t sub_1E5AFAB04(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6D6172676F7270;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x74756F6B726F77;
  v7 = 0x80000001E5B45C10;
  if (v3 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = 0x80000001E5B45C10;
  }

  v8 = 0x6B63617473;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x6D6172676F7270;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  v12 = 0x74756F6B726F77;
  if (*a2 == 2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xD000000000000013;
  }

  if (*a2)
  {
    v2 = 0x6B63617473;
    v11 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E5B3DDA4();
  }

  return v15 & 1;
}

unint64_t sub_1E5AFAC38@<X0>(Swift::String *a1@<X0>, FitnessLibrary::LibraryCanvasPlaceholderReferenceType_optional *a2@<X8>)
{
  result = _s14FitnessLibrary0B30CanvasPlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1E5AFAC68(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6D6172676F7270;
  v4 = 0xE700000000000000;
  v5 = 0x74756F6B726F77;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001E5B45C10;
  }

  if (*v1)
  {
    v3 = 0x6B63617473;
    v2 = 0xE500000000000000;
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

uint64_t sub_1E5AFAD98()
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFAE5C(uint64_t a1)
{
  sub_1E5B3DA14();
}

uint64_t sub_1E5AFAF0C(uint64_t a1)
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

unint64_t _s14FitnessLibrary0B30CanvasPlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5B3DC74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E5AFB01C()
{
  result = qword_1ED031AA8;
  if (!qword_1ED031AA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasPlaceholderReferenceType, &type metadata for LibraryCanvasPlaceholderReferenceType, v0, v1);
    atomic_store(result, &qword_1ED031AA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryCanvasPlaceholderReferenceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryCanvasPlaceholderReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5AFB1C0()
{
  result = qword_1ED031AB0;
  if (!qword_1ED031AB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasPlaceholderReferenceType, &type metadata for LibraryCanvasPlaceholderReferenceType, v0, v1);
    atomic_store(result, &qword_1ED031AB0);
  }

  return result;
}

uint64_t LibraryState.layout.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for LibraryState(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LibraryState.isSidebarVisible.setter(char a1)
{
  result = type metadata accessor for LibraryState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t LibraryState.accountState.setter(char a1)
{
  result = type metadata accessor for LibraryState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

unint64_t sub_1E5AFB3B0()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x74756F79616CLL;
  v4 = 0x53746E756F636361;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_1E5AFB450@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5AFC4E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5AFB484(uint64_t a1)
{
  v2 = sub_1E5AFBA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFB4C0(uint64_t a1)
{
  v2 = sub_1E5AFBA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryState.withLayout(_:)@<X0>(__int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = type metadata accessor for LibraryState(0);
  v7 = v6[5];
  v8 = sub_1E5B3CB44();
  result = (*(*(v8 - 8) + 16))(&a2[v7], &v2[v7], v8);
  v10 = v6[7];
  v11 = v6[8];
  v12 = v2[v10];
  v13 = v2[v11];
  *a2 = v5;
  *&a2[v6[6]] = v4;
  a2[v10] = v12;
  a2[v11] = v13;
  return result;
}

uint64_t LibraryState.withLocale(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for LibraryState(0);
  v7 = v6[5];
  v8 = *&v2[v6[6]];
  v9 = sub_1E5B3CB44();
  result = (*(*(v9 - 8) + 16))(&a2[v7], a1, v9);
  v11 = v6[7];
  v12 = v6[8];
  v13 = v2[v11];
  v14 = v2[v12];
  *a2 = v5;
  *&a2[v6[6]] = v8;
  a2[v11] = v13;
  a2[v12] = v14;
  return result;
}

uint64_t LibraryState.withSidebarVisible(_:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for LibraryState(0);
  v7 = v6[5];
  v8 = *&v2[v6[6]];
  v9 = sub_1E5B3CB44();
  result = (*(*(v9 - 8) + 16))(&a2[v7], &v2[v7], v9);
  v12 = v6[7];
  v11 = v6[8];
  v13 = v2[v11];
  *a2 = v5;
  *&a2[v6[6]] = v8;
  a2[v12] = a1;
  a2[v11] = v13;
  return result;
}

uint64_t LibraryState.withAccountState(_:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for LibraryState(0);
  v7 = v6[5];
  v8 = *&v2[v6[6]];
  v9 = sub_1E5B3CB44();
  result = (*(*(v9 - 8) + 16))(&a2[v7], &v2[v7], v9);
  v11 = v6[7];
  v12 = v6[8];
  v13 = v2[v11];
  *a2 = v5;
  *&a2[v6[6]] = v8;
  a2[v11] = v13;
  a2[v12] = a1;
  return result;
}

uint64_t LibraryState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031AB8, &qword_1E5B3FC78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFBA1C();
  sub_1E5B3DE14();
  v15 = *v3;
  v14 = 0;
  sub_1E5AFBA70();
  sub_1E5B3DD74();
  if (!v2)
  {
    v9 = type metadata accessor for LibraryState(0);
    v13 = 1;
    sub_1E5B3CB44();
    sub_1E5AFBFCC(&qword_1ED031AD0, MEMORY[0x1E6969778]);
    sub_1E5B3DD74();
    v12 = *&v3[*(v9 + 24)];
    v11[10] = 2;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    v11[9] = 3;
    sub_1E5B3DD54();
    v11[8] = v3[*(v9 + 32)];
    v11[7] = 4;
    sub_1E5AFBB18();
    sub_1E5B3DD74();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5AFBA1C()
{
  result = qword_1ED031AC0;
  if (!qword_1ED031AC0)
  {
    result = swift_getWitnessTable("ţ5\tti", &type metadata for LibraryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031AC0);
  }

  return result;
}

unint64_t sub_1E5AFBA70()
{
  result = qword_1ED031AC8;
  if (!qword_1ED031AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPage, &type metadata for LibraryPage, v0, v1);
    atomic_store(result, &qword_1ED031AC8);
  }

  return result;
}

unint64_t sub_1E5AFBAC4()
{
  result = qword_1ED031AD8;
  if (!qword_1ED031AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryLayout, &type metadata for LibraryLayout, v0, v1);
    atomic_store(result, &qword_1ED031AD8);
  }

  return result;
}

unint64_t sub_1E5AFBB18()
{
  result = qword_1ED031AE0;
  if (!qword_1ED031AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryAccountState, &type metadata for LibraryAccountState, v0, v1);
    atomic_store(result, &qword_1ED031AE0);
  }

  return result;
}

uint64_t LibraryState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E5B3CB44();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031AE8, &qword_1E5B3FC80);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v19 - v6;
  v8 = type metadata accessor for LibraryState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFBA1C();
  v23 = v7;
  v11 = v25;
  sub_1E5B3DE04();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v12 = v21;
  v13 = v22;
  v32 = 0;
  sub_1E5AFBF78();
  sub_1E5B3DCF4();
  v14 = v10;
  *v10 = v33;
  v31 = 1;
  sub_1E5AFBFCC(&qword_1ED031AF8, MEMORY[0x1E6969790]);
  sub_1E5B3DCF4();
  (*(v13 + 32))(&v10[v8[5]], v5, v3);
  v29 = 2;
  sub_1E5AFC010();
  sub_1E5B3DCF4();
  *&v10[v8[6]] = v30;
  v28 = 3;
  v15 = sub_1E5B3DCD4();
  v16 = v25;
  *(v14 + v8[7]) = v15 & 1;
  v26 = 4;
  sub_1E5AFC064();
  sub_1E5B3DCF4();
  v17 = v8[8];
  (*(v12 + 8))(v23, v24);
  *(v14 + v17) = v27;
  sub_1E5AFC0B8(v14, v20);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_1E5AFC11C(v14);
}

unint64_t sub_1E5AFBF78()
{
  result = qword_1ED031AF0;
  if (!qword_1ED031AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPage, &type metadata for LibraryPage, v0, v1);
    atomic_store(result, &qword_1ED031AF0);
  }

  return result;
}

uint64_t sub_1E5AFBFCC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1E5B3CB44();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5AFC010()
{
  result = qword_1ED031B00;
  if (!qword_1ED031B00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryLayout, &type metadata for LibraryLayout, v0, v1);
    atomic_store(result, &qword_1ED031B00);
  }

  return result;
}

unint64_t sub_1E5AFC064()
{
  result = qword_1ED031B08;
  if (!qword_1ED031B08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryAccountState, &type metadata for LibraryAccountState, v0, v1);
    atomic_store(result, &qword_1ED031B08);
  }

  return result;
}

uint64_t sub_1E5AFC0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AFC11C(uint64_t a1)
{
  v2 = type metadata accessor for LibraryState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s14FitnessLibrary0B5StateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (sub_1E5AFEB1C(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for LibraryState(0), (MEMORY[0x1E6935290](&a1[v4[5]], &a2[v4[5]])) && a1[v4[6]] == a2[v4[6]] && (sub_1E5B3CCB4() & 1) != 0 && a1[v4[7]] == a2[v4[7]])
  {
    return a1[v4[8]] == a2[v4[8]];
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for LibraryState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LibraryState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5AFC3E4()
{
  result = qword_1ED031B10;
  if (!qword_1ED031B10)
  {
    result = swift_getWitnessTable(asc_1E5B3FDCC, &type metadata for LibraryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B10);
  }

  return result;
}

unint64_t sub_1E5AFC43C()
{
  result = qword_1ED031B18;
  if (!qword_1ED031B18)
  {
    result = swift_getWitnessTable(byte_1E5B3FD3C, &type metadata for LibraryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B18);
  }

  return result;
}

unint64_t sub_1E5AFC494()
{
  result = qword_1ED031B20;
  if (!qword_1ED031B20)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for LibraryState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED031B20);
  }

  return result;
}

uint64_t sub_1E5AFC4E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E5B45FC0 == a2;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5B45FE0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEC00000065746174)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5AFC6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5B3CB54();
}

uint64_t (*sub_1E5AFC758(uint64_t a1))(char a1)
{
  v2 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  sub_1E5B3CB74();
  sub_1E5B3CB64();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v2;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v5;
  return sub_1E5AFE304;
}

uint64_t sub_1E5AFC838(char a1)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a1 & 1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFC880(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v2) = v2[16];
  v11 = v3;
  v12 = v4;
  v13 = v2;
  v5 = *(a1 + 32);
  v10[0] = *(a1 + 16);
  v10[1] = v5;
  v6 = type metadata accessor for TVLibraryView.FocusedView(255, v10);
  v7 = sub_1E5B3DB94();
  WitnessTable = swift_getWitnessTable(byte_1E5B3FF58, v6);
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v7, &WitnessTable);
  sub_1E5B3CDC4();
  sub_1E5B3CDA4();
  return *&v10[0];
}

uint64_t sub_1E5AFC990(uint64_t a1)
{
  sub_1E5B3DDC4();
  sub_1E5AFC810(v3, *v1);
  return sub_1E5B3DDF4();
}

uint64_t TVLibraryView.init(store:libraryPickerViewBuilder:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  v15 = type metadata accessor for TVLibraryView(0, &v28);
  v16 = a9 + *(v15 + 60);
  v28 = a7;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  v17 = type metadata accessor for TVLibraryView.FocusedView(0, &v28);
  swift_getWitnessTable(byte_1E5B3FF58, v17);
  sub_1E5B3CDB4();
  v18 = v29;
  v19 = v30;
  *v16 = v28;
  *(v16 + 8) = v18;
  *(v16 + 16) = v19;
  v20 = (a9 + *(v15 + 64));
  *v20 = xmmword_1E5B3FE50;
  v20[1] = xmmword_1E5B3FE60;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *a9 = sub_1E5AEFB94;
  *(a9 + 8) = v21;
  *(a9 + 16) = 0;

  a3(v22);
  sub_1E5AFC6A4(a5, a6, a7, a8, a10, a11);
}

uint64_t TVLibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v74 = sub_1E5B3D244();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a1 + 16);
  v4 = v71;
  v5 = sub_1E5B3CF34();
  v6 = *(a1 + 40);
  v7.i64[0] = v4;
  v76 = *(a1 + 24);
  *&v8 = vdupq_laneq_s64(v76, 1).u64[0];
  *(&v8 + 1) = v6;
  v69 = v6;
  v87 = vzip1q_s64(v7, v76);
  v88 = v8;
  v9 = type metadata accessor for TVLibraryView.FocusedView(255, &v87);
  v10 = sub_1E5B3DB94();
  v86[0] = v76.i64[1];
  v86[1] = MEMORY[0x1E697E040];
  v11 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v86);
  v85 = swift_getWitnessTable(byte_1E5B3FF58, v9);
  v13 = swift_getWitnessTable(MEMORY[0x1E69E7C78], v10, &v85);
  v87.i64[0] = v5;
  v87.i64[1] = v10;
  *&v88 = WitnessTable;
  *(&v88 + 1) = v13;
  v14 = v13;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1E5B3CF34();
  v84[0] = v6;
  v84[1] = MEMORY[0x1E697EBF8];
  v16 = swift_getWitnessTable(v11, v15, v84);
  v87.i64[0] = v15;
  v87.i64[1] = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87.i64[0] = v15;
  v87.i64[1] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87.i64[0] = OpaqueTypeMetadata2;
  v87.i64[1] = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v87.i64[0] = OpaqueTypeMetadata2;
  v87.i64[1] = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v87.i64[0] = v19;
  v87.i64[1] = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v87.i64[0] = v19;
  v87.i64[1] = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v87.i64[0] = v21;
  v87.i64[1] = v10;
  *&v88 = v22;
  *(&v88 + 1) = v14;
  v58 = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v23 = sub_1E5B3D834();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v23);
  v24 = sub_1E5B3D6E4();
  v63 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v54 - v26;
  v57 = swift_getWitnessTable(MEMORY[0x1E69817F8], v24, v25);
  v87.i64[0] = v24;
  v87.i64[1] = v10;
  *&v88 = v57;
  *(&v88 + 1) = v14;
  v60 = MEMORY[0x1E697CE68];
  v59 = swift_getOpaqueTypeMetadata2();
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v54 - v28;
  v29 = sub_1E5B3CF34();
  v66 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v56 = &v54 - v30;
  v67 = v31;
  v61 = sub_1E5B3CF34();
  v68 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v65 = &v54 - v34;
  sub_1E5B3D0A4();
  v77 = v71;
  v78 = v76;
  v79 = v69;
  v80 = v70;
  sub_1E5B3D6D4();
  v87.i64[0] = sub_1E5AFC880(a1);
  v87.i64[1] = v35;
  LOBYTE(v88) = v36;
  v83 = 1;
  v37 = v72;
  sub_1E5B3D234();
  v38 = swift_checkMetadataState();
  v39 = v57;
  v40 = v58;
  MEMORY[0x1E6935BD0](&v87, &v83, v37, v24, v38, v57, v58);
  (*(v73 + 8))(v37, v74);

  v41 = v27;
  v42 = v56;
  (*(v63 + 8))(v41, v24);
  sub_1E5B3D2D4();
  v87.i64[0] = v24;
  v87.i64[1] = v38;
  *&v88 = v39;
  *(&v88 + 1) = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v59;
  v45 = v55;
  sub_1E5B3D534();
  (*(v62 + 8))(v45, v44);
  LOBYTE(v19) = sub_1E5B3D2D4();
  sub_1E5B3D2E4();
  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v19)
  {
    sub_1E5B3D2E4();
  }

  sub_1E5B3CF44();
  v82[0] = v43;
  v82[1] = MEMORY[0x1E697E5D8];
  v46 = MEMORY[0x1E697E858];
  v47 = v67;
  v48 = swift_getWitnessTable(MEMORY[0x1E697E858], v67, v82);
  v49 = v64;
  sub_1E5B3D494();
  (*(v66 + 8))(v42, v47);
  v81[0] = v48;
  v81[1] = MEMORY[0x1E6980A30];
  v50 = v61;
  swift_getWitnessTable(v46, v61, v81);
  v51 = v65;
  sub_1E5AF144C();
  v52 = *(v68 + 8);
  v52(v49, v50);
  sub_1E5AF144C();
  return (v52)(v51, v50);
}

uint64_t sub_1E5AFD4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a4;
  v93 = a1;
  v115 = a6;
  v114 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v111 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9;
  v117 = v9;
  v11 = sub_1E5B3CF34();
  v113 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v110 = &v84 - v13;
  v131[0] = a5;
  v131[1] = MEMORY[0x1E697EBF8];
  v14 = a5;
  v121 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v11, v131, v12);
  v127 = v11;
  v128 = WitnessTable;
  v107 = v11;
  v16 = WitnessTable;
  v108 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v105 = &v84 - v18;
  v127 = v11;
  v128 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = OpaqueTypeMetadata2;
  v127 = OpaqueTypeMetadata2;
  v128 = OpaqueTypeConformance2;
  v20 = OpaqueTypeConformance2;
  v103 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v109 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v104 = &v84 - v22;
  v127 = OpaqueTypeMetadata2;
  v128 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v127 = v21;
  v128 = v23;
  v24 = v21;
  v97 = v21;
  v25 = v23;
  v98 = v23;
  v26 = swift_getOpaqueTypeMetadata2();
  v96 = v26;
  v106 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v84 - v27;
  v127 = a2;
  v128 = v10;
  v28 = a2;
  v29 = v91;
  v129 = v91;
  v130 = v14;
  v87 = v14;
  v30 = type metadata accessor for TVLibraryView.FocusedView(255, &v127);
  v31 = sub_1E5B3DB94();
  v127 = v24;
  v128 = v25;
  v32 = swift_getOpaqueTypeConformance2();
  v95 = v32;
  v126 = swift_getWitnessTable(byte_1E5B3FF58, v30);
  v33 = swift_getWitnessTable(MEMORY[0x1E69E7C78], v31, &v126);
  v127 = v26;
  v128 = v31;
  v34 = v31;
  v86 = v31;
  v129 = v32;
  v130 = v33;
  v35 = v33;
  v118 = v33;
  v120 = MEMORY[0x1E697D568];
  v100 = swift_getOpaqueTypeMetadata2();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v92 = &v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v94 = &v84 - v38;
  v39 = sub_1E5B3CF34();
  v90 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v84 - v41;
  v125[0] = v29;
  v125[1] = MEMORY[0x1E697E040];
  v89 = swift_getWitnessTable(v121, v39, v125, v40);
  v127 = v39;
  v128 = v34;
  v129 = v89;
  v130 = v35;
  v116 = swift_getOpaqueTypeMetadata2();
  v121 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v44 = &v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v119 = &v84 - v46;
  v127 = v28;
  v128 = v117;
  v129 = v29;
  v130 = v14;
  v47 = type metadata accessor for TVLibraryView(0, &v127);
  v85 = v47;
  sub_1E5B3D7E4();
  sub_1E5B3D504();
  v127 = sub_1E5AFC880(v47);
  v128 = v48;
  LOBYTE(v129) = v49;
  LOBYTE(v124[0]) = 0;
  v50 = swift_checkMetadataState();
  v51 = v89;
  v52 = v118;
  sub_1E5B3D524();

  (*(v90 + 8))(v42, v39);
  v127 = v39;
  v128 = v50;
  v129 = v51;
  v130 = v52;
  v89 = swift_getOpaqueTypeConformance2();
  v88 = v44;
  v53 = v116;
  sub_1E5AF144C();
  v90 = *(v121 + 1);
  v91 = v121 + 8;
  (v90)(v44, v53);
  v54 = v85;
  sub_1E5AFC758(v85);
  v56 = v55;
  sub_1E5AF8168();
  swift_getKeyPath();
  sub_1E5B3D904();

  v57 = *(v56 + 48);
  LOBYTE(v127) = v124[0];
  v58 = v111;
  v57(&v127);

  sub_1E5B3D7E4();
  v59 = v117;
  v60 = v110;
  sub_1E5B3D514();
  (*(v114 + 8))(v58, v59);
  sub_1E5B3D284();
  sub_1E5B3D7E4();
  v61 = v105;
  v62 = v107;
  sub_1E5B3D4F4();
  (*(v113 + 8))(v60, v62);
  v63 = v104;
  v64 = v102;
  sub_1E5B3D3B4();
  (*(v112 + 8))(v61, v64);
  v65 = v101;
  v66 = v97;
  sub_1E5B3D4B4();
  (*(v109 + 8))(v63, v66);
  v127 = sub_1E5AFC880(v54);
  v128 = v67;
  LOBYTE(v129) = v68;
  LOBYTE(v124[0]) = 1;
  v69 = v92;
  v70 = v96;
  v71 = v95;
  v72 = v118;
  sub_1E5B3D524();

  (*(v106 + 8))(v65, v70);
  v127 = v70;
  v128 = v50;
  v129 = v71;
  v130 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v94;
  v75 = v100;
  sub_1E5AF144C();
  v76 = v99;
  v77 = *(v99 + 8);
  v78 = v69;
  v77(v69, v75);
  v79 = v88;
  v80 = v119;
  v81 = v116;
  (*(v121 + 2))(v88, v119, v116);
  v127 = v79;
  (*(v76 + 16))(v78, v74, v75);
  v128 = v78;
  v124[0] = v81;
  v124[1] = v75;
  v122 = v89;
  v123 = v73;
  sub_1E5B073C8(&v127, 2uLL, v124);
  v77(v74, v75);
  v82 = v90;
  (v90)(v80, v81);
  v77(v78, v75);
  return v82(v79, v81);
}

void sub_1E5AFE150(uint64_t a1)
{
  sub_1E5AF9EA8(319);
  if (v3 <= 0x3F)
  {
    v17 = 0;
    v21 = v2;
    v4 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v18 = 0;
      v6 = v4;
      v22 = v4;
      v7 = *(a1 + 24);
      swift_getFunctionTypeMetadata1();
      v8 = sub_1E5B3CB74();
      if (v9 <= 0x3F)
      {
        v19 = 0;
        v23 = v8;
        v15[0] = v6;
        v15[1] = v7;
        v16 = *(a1 + 32);
        v10 = type metadata accessor for TVLibraryView.FocusedView(255, v15);
        v11 = sub_1E5B3DB94();
        WitnessTable = swift_getWitnessTable(byte_1E5B3FF58, v10);
        swift_getWitnessTable(MEMORY[0x1E69E7C78], v11, &WitnessTable);
        v12 = sub_1E5B3CDC4();
        if (v13 <= 0x3F)
        {
          v20 = 0;
          v24 = v12;
          v25 = &type metadata for Layout;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5AFE304(char a1)
{
  v2 = *(v1 + 48);
  v4 = a1;
  return v2(&v4);
}

__n128 LibraryGalleryFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void LibraryGalleryFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A30, &unk_1E5B3FFC0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  if (*a4 == 1)
  {
    v13 = *v4;
    v12 = v4[1];
    if (*(a2 + 2) == 6)
    {
    }

    else
    {
      v14 = sub_1E5B3DDA4();

      if ((v14 & 1) == 0)
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v16 = v15[16];
        v17 = v15[20];
        v18 = &v11[v15[24]];
        sub_1E5AFE784();
        sub_1E5B3DBC4();
        sub_1E5B3DAC4();
        v19 = *MEMORY[0x1E6999B50];
        v20 = sub_1E5B3D8E4();
        (*(*(v20 - 8) + 104))(&v11[v16], v19, v20);
        v21 = *MEMORY[0x1E6999B40];
        v22 = sub_1E5B3D8D4();
        (*(*(v22 - 8) + 104))(&v11[v17], v21, v22);
        v23 = swift_allocObject();
        *(v23 + 16) = v13;
        *(v23 + 24) = v12;
        *v18 = &unk_1E5B3FFD8;
        *(v18 + 1) = v23;
        (*(v9 + 104))(v11, *MEMORY[0x1E6999AD8], v8);
        v24 = *a3;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1E5AF67C0(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_1E5AF67C0((v25 > 1), v26 + 1, 1, v24);
        }

        v24[2] = v26 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v11, v8);
        *a3 = v24;
      }
    }
  }
}
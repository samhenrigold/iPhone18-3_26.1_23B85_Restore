unint64_t sub_1E5B17130()
{
  result = qword_1ED032258;
  if (!qword_1ED032258)
  {
    result = swift_getWitnessTable(byte_1E5B42ECC, &type metadata for LibraryPageCountAction.ViewDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032258);
  }

  return result;
}

unint64_t sub_1E5B17184()
{
  result = qword_1ED032260;
  if (!qword_1ED032260)
  {
    result = swift_getWitnessTable(aS5, &type metadata for LibraryPageCountAction.ViewAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032260);
  }

  return result;
}

unint64_t sub_1E5B171D8()
{
  result = qword_1ED032268;
  if (!qword_1ED032268)
  {
    result = swift_getWitnessTable(byte_1E5B42E2C, &type metadata for LibraryPageCountAction.BookmarkCountsUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032268);
  }

  return result;
}

unint64_t sub_1E5B17244@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B174A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1E5B1728C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001E5B460B0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6173694477656976 && a2 == 0xEF64657261657070 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5B460D0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4368736572666572 && a2 == 0xEC000000746E756FLL || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5B460F0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

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

unint64_t sub_1E5B174A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0322F8, &qword_1E5B43060);
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v47 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032300, &qword_1E5B43068);
  v57 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v63 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032308, &qword_1E5B43070);
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032310, &qword_1E5B43078);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032318, &qword_1E5B43080);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032320, &qword_1E5B43088);
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032328, &unk_1E5B43090);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = a1[3];
  v65 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E5B16FE0();
  v23 = v64;
  sub_1E5B3DE04();
  if (!v23)
  {
    v24 = v16;
    v47 = v14;
    v48 = v13;
    v26 = v61;
    v25 = v62;
    v27 = v63;
    v64 = v17;
    v28 = sub_1E5B3DD04();
    v29 = (2 * *(v28 + 16)) | 1;
    v66 = v28;
    v67 = v28 + 32;
    v68 = 0;
    v69 = v29;
    v30 = sub_1E5B00354();
    if (v30 == 6 || v68 != v69 >> 1)
    {
      v34 = sub_1E5B3DC04();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
      *v36 = &type metadata for LibraryPageCountAction;
      v22 = v20;
      v37 = v64;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v22, v37);
      swift_unknownObjectRelease();
    }

    else if (v30 > 2u)
    {
      if (v30 == 3)
      {
        v71 = 3;
        sub_1E5B170DC();
        v41 = v25;
        v42 = v64;
        sub_1E5B3DC94();
        sub_1E5AFBF78();
        v43 = v55;
        sub_1E5B3DCF4();
        (*(v56 + 8))(v41, v43);
        (*(v18 + 8))(v20, v42);
        swift_unknownObjectRelease();
        v22 = v71;
      }

      else
      {
        v39 = v64;
        if (v30 == 4)
        {
          v71 = 4;
          sub_1E5B17088();
          sub_1E5B3DC94();
          (*(v57 + 8))(v27, v52);
          (*(v18 + 8))(v20, v39);
          swift_unknownObjectRelease();
          v22 = 0x8000000000000003;
        }

        else
        {
          v71 = 5;
          sub_1E5B17034();
          v44 = v60;
          sub_1E5B3DC94();
          v70 = 0;
          sub_1E5AFBF78();
          v45 = v58;
          sub_1E5B3DCF4();
          v46 = v71;
          v70 = 1;
          sub_1E5B3DCE4();
          (*(v59 + 8))(v44, v45);
          (*(v18 + 8))(v20, v39);
          swift_unknownObjectRelease();
          v22 = v46 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v31 = v18;
      if (v30)
      {
        v32 = v64;
        if (v30 == 1)
        {
          v71 = 1;
          sub_1E5B17184();
          v33 = v48;
          sub_1E5B3DC94();
          (*(v50 + 8))(v33, v51);
          (*(v18 + 8))(v20, v32);
          swift_unknownObjectRelease();
          v22 = 0x8000000000000001;
        }

        else
        {
          v71 = 2;
          sub_1E5B17130();
          sub_1E5B3DC94();
          (*(v53 + 8))(v26, v54);
          (*(v18 + 8))(v20, v32);
          swift_unknownObjectRelease();
          v22 = 0x8000000000000002;
        }
      }

      else
      {
        v71 = 0;
        sub_1E5B171D8();
        v40 = v64;
        sub_1E5B3DC94();
        (*(v49 + 8))(v24, v47);
        (*(v31 + 8))(v20, v40);
        swift_unknownObjectRelease();
        v22 = 0x8000000000000000;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v65);
  return v22;
}

uint64_t getEnumTagSinglePayload for LibraryPageCountAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryPageCountAction(uint64_t result, int a2, int a3)
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
      *result = 8 * -a2;
      *(result + 8) = 0;
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

uint64_t sub_1E5B17F74(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 7 | (8 * *(a1 + 8))) + 2;
  }
}

void *sub_1E5B17FA4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 7 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 3;
  }

  return result;
}

unint64_t sub_1E5B18058()
{
  result = qword_1ED032270;
  if (!qword_1ED032270)
  {
    result = swift_getWitnessTable(byte_1E5B42B54, &type metadata for LibraryPageCountAction.UpdateLibraryPageCountCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032270);
  }

  return result;
}

unint64_t sub_1E5B180B0()
{
  result = qword_1ED032278;
  if (!qword_1ED032278)
  {
    result = swift_getWitnessTable(byte_1E5B42C5C, &type metadata for LibraryPageCountAction.NavigateToLibraryPageCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032278);
  }

  return result;
}

unint64_t sub_1E5B18108()
{
  result = qword_1ED032280;
  if (!qword_1ED032280)
  {
    result = swift_getWitnessTable(aE5, &type metadata for LibraryPageCountAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032280);
  }

  return result;
}

unint64_t sub_1E5B18160()
{
  result = qword_1ED032288;
  if (!qword_1ED032288)
  {
    result = swift_getWitnessTable(byte_1E5B42D24, &type metadata for LibraryPageCountAction.BookmarkCountsUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032288);
  }

  return result;
}

unint64_t sub_1E5B181B8()
{
  result = qword_1ED032290;
  if (!qword_1ED032290)
  {
    result = swift_getWitnessTable(byte_1E5B42D4C, &type metadata for LibraryPageCountAction.BookmarkCountsUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032290);
  }

  return result;
}

unint64_t sub_1E5B18210()
{
  result = qword_1ED032298;
  if (!qword_1ED032298)
  {
    result = swift_getWitnessTable(byte_1E5B42CD4, &type metadata for LibraryPageCountAction.ViewAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032298);
  }

  return result;
}

unint64_t sub_1E5B18268()
{
  result = qword_1ED0322A0;
  if (!qword_1ED0322A0)
  {
    result = swift_getWitnessTable("5j5\tLC", &type metadata for LibraryPageCountAction.ViewAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322A0);
  }

  return result;
}

unint64_t sub_1E5B182C0()
{
  result = qword_1ED0322A8;
  if (!qword_1ED0322A8)
  {
    result = swift_getWitnessTable(aMn5, &type metadata for LibraryPageCountAction.ViewDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322A8);
  }

  return result;
}

unint64_t sub_1E5B18318()
{
  result = qword_1ED0322B0;
  if (!qword_1ED0322B0)
  {
    result = swift_getWitnessTable(byte_1E5B42CAC, &type metadata for LibraryPageCountAction.ViewDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322B0);
  }

  return result;
}

unint64_t sub_1E5B18370()
{
  result = qword_1ED0322B8;
  if (!qword_1ED0322B8)
  {
    result = swift_getWitnessTable(aO5, &type metadata for LibraryPageCountAction.NavigateToLibraryPageCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322B8);
  }

  return result;
}

unint64_t sub_1E5B183C8()
{
  result = qword_1ED0322C0;
  if (!qword_1ED0322C0)
  {
    result = swift_getWitnessTable(aK5, &type metadata for LibraryPageCountAction.NavigateToLibraryPageCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322C0);
  }

  return result;
}

unint64_t sub_1E5B18420()
{
  result = qword_1ED0322C8;
  if (!qword_1ED0322C8)
  {
    result = swift_getWitnessTable("uo5\t8E", &type metadata for LibraryPageCountAction.RefreshCountCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322C8);
  }

  return result;
}

unint64_t sub_1E5B18478()
{
  result = qword_1ED0322D0;
  if (!qword_1ED0322D0)
  {
    result = swift_getWitnessTable(byte_1E5B42BA4, &type metadata for LibraryPageCountAction.RefreshCountCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322D0);
  }

  return result;
}

unint64_t sub_1E5B184D0()
{
  result = qword_1ED0322D8;
  if (!qword_1ED0322D8)
  {
    result = swift_getWitnessTable(aP5, &type metadata for LibraryPageCountAction.UpdateLibraryPageCountCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322D8);
  }

  return result;
}

unint64_t sub_1E5B18528()
{
  result = qword_1ED0322E0;
  if (!qword_1ED0322E0)
  {
    result = swift_getWitnessTable(aEl5, &type metadata for LibraryPageCountAction.UpdateLibraryPageCountCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322E0);
  }

  return result;
}

unint64_t sub_1E5B18580()
{
  result = qword_1ED0322E8;
  if (!qword_1ED0322E8)
  {
    result = swift_getWitnessTable(aM5, &type metadata for LibraryPageCountAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322E8);
  }

  return result;
}

unint64_t sub_1E5B185D8()
{
  result = qword_1ED0322F0;
  if (!qword_1ED0322F0)
  {
    result = swift_getWitnessTable(byte_1E5B42D9C, &type metadata for LibraryPageCountAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0322F0);
  }

  return result;
}

__n128 LibraryCanvasContentEnvironment.init(fetchSectionDescriptors:makeArchivedSessionsUpdatedStream:makeCatalogUpdatedStream:makeItemsUpdatedStream:publishPageEnter:refreshCanvas:refreshCatalog:reloadWorkouts:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
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

uint64_t sub_1E5B1867C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1E5B186C4(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LibraryPickerView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5B3D594();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032330, &qword_1E5B43190);
  sub_1E5B3D674();
  *(a3 + 24) = v14;
  (*(v7 + 104))(v9, *MEMORY[0x1E69814D8], v6);
  v10 = sub_1E5B3D5F4();
  v11 = sub_1E5B3D5D4();
  *(a3 + 40) = xmmword_1E5B43170;
  *(a3 + 56) = 0x3FD0000000000000;
  *(a3 + 64) = v10;
  *(a3 + 72) = v11;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5AEFB94;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

double LibraryPickerView.body.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v12[3] = v1[3];
  v12[4] = v4;
  v5 = *v1;
  v12[1] = v1[1];
  v12[2] = v3;
  v12[0] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v6[5] = v1[4];
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v11[10] = 0x4024000000000000;
  sub_1E5B18AC4(v12, v11);
  sub_1E5B3D674();
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_1E5B18ABC;
  a1[3] = v6;
  return result;
}

uint64_t sub_1E5B18974@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>, double a3@<D0>)
{
  v6 = swift_allocObject();
  v7 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v7;
  *(v6 + 80) = a1[4];
  v8 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 96) = a3;
  sub_1E5B18AC4(a1, v19);
  v9 = sub_1E5B3D7E4();
  v11 = v10;
  v12 = swift_allocObject();
  v13 = a1[3];
  *(v12 + 3) = a1[2];
  *(v12 + 4) = v13;
  *(v12 + 5) = a1[4];
  v14 = a1[1];
  *(v12 + 1) = *a1;
  *(v12 + 2) = v14;
  v15 = swift_allocObject();
  v16 = a1[3];
  *(v15 + 3) = a1[2];
  *(v15 + 4) = v16;
  *(v15 + 5) = a1[4];
  v17 = a1[1];
  *(v15 + 1) = *a1;
  *(v15 + 2) = v17;
  *a2 = sub_1E5B1ABD8;
  a2[1] = v6;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = sub_1E5B1ABE4;
  a2[5] = v12;
  a2[6] = sub_1E5B1AC54;
  a2[7] = v15;
  sub_1E5B18AC4(a1, v19);
  return sub_1E5B18AC4(a1, v19);
}

uint64_t sub_1E5B18B18(uint64_t a1, uint64_t a2, double a3)
{
  sub_1E5B3D264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032368, &qword_1E5B43360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032370, &qword_1E5B43368);
  sub_1E5B1AC68();
  swift_getOpaqueTypeConformance2();
  return sub_1E5B3CE04();
}

uint64_t sub_1E5B18BF4(_OWORD *a1, uint64_t a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032398, &qword_1E5B43378);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032388, &qword_1E5B43370);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032370, &qword_1E5B43368);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  *v7 = sub_1E5B3D0B4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323A0, &qword_1E5B43380);
  sub_1E5B18EE8(a1, a2, &v7[*(v14 + 44)]);
  sub_1E5B3D7E4();
  sub_1E5B3CF94();
  sub_1E5B1ADAC(v7, v10, &qword_1ED032398, &qword_1E5B43378);
  v15 = &v10[*(v8 + 36)];
  v16 = v35;
  *(v15 + 4) = v34;
  *(v15 + 5) = v16;
  *(v15 + 6) = v36;
  v17 = v31;
  *v15 = v30;
  *(v15 + 1) = v17;
  v18 = v33;
  *(v15 + 2) = v32;
  *(v15 + 3) = v18;
  LOBYTE(v7) = sub_1E5B3D294();
  sub_1E5B3CD94();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1E5B1ADAC(v10, v13, &qword_1ED032388, &qword_1E5B43370);
  v27 = &v13[*(v11 + 36)];
  *v27 = v7;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_1E5B1AC68();
  sub_1E5B3D4C4();
  return sub_1E5B04304(v13, &qword_1ED032370, &qword_1E5B43368);
}

uint64_t sub_1E5B18EE8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v5 = sub_1E5B3CF64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323A8, &qword_1E5B43388);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  *v14 = sub_1E5B3D0B4();
  *(v14 + 1) = 0x4034000000000000;
  v14[16] = 0;
  v34[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323B0, &unk_1E5B43390) + 44);
  v41 = &unk_1F5F6D9C0;
  (*(v6 + 16))(v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v15 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = a1[3];
  *(v16 + 3) = a1[2];
  *(v16 + 4) = v17;
  *(v16 + 5) = a1[4];
  v18 = a1[1];
  *(v16 + 1) = *a1;
  *(v16 + 2) = v18;
  (*(v6 + 32))(&v16[v15], v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1E5B18AC4(a1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323B8, &qword_1E5B433A0);
  sub_1E5AF13EC(&qword_1ED0320C0, &qword_1ED0319D0, &qword_1E5B3F2D8, MEMORY[0x1E69E6338]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0323C0, &qword_1E5B433A8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0323C8, &qword_1E5B433B0);
  v21 = sub_1E5B1AEAC();
  v36 = v20;
  v37 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v19;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E5B1AF64();
  sub_1E5B3D754();
  sub_1E5B3D294();
  sub_1E5B3CD94();
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323F0, &qword_1E5B433C0);
  sub_1E5B3D1D4();
  v27 = sub_1E5B3D6B4();
  v28 = &v14[*(v9 + 44)];
  *v28 = v27;
  v28[1] = sub_1E5B19964;
  v28[2] = 0;
  sub_1E5AEB548(v14, v11);
  v29 = v35;
  *v35 = 0;
  *(v29 + 8) = 1;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323F8, &qword_1E5B433C8);
  sub_1E5AEB548(v11, v30 + *(v31 + 48));
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_1E5B04304(v14, &qword_1ED0323A8, &qword_1E5B43388);
  return sub_1E5B04304(v11, &qword_1ED0323A8, &qword_1E5B43388);
}

uint64_t sub_1E5B19300@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v6 = sub_1E5B3CF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323E0, &qword_1E5B433B8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323C8, &qword_1E5B433B0);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v44 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323C0, &qword_1E5B433A8);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v44 - v15;
  v16 = v3[3];
  v57 = v3[2];
  v58 = v16;
  v59 = v3[4];
  v17 = v3[1];
  v55 = *v3;
  v56 = v17;
  (*(v7 + 16))(&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v18 = (*(v7 + 80) + 97) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v58;
  *(v19 + 48) = v57;
  *(v19 + 64) = v20;
  *(v19 + 80) = v59;
  v21 = v56;
  *(v19 + 16) = v55;
  *(v19 + 32) = v21;
  *(v19 + 96) = a1;
  (*(v7 + 32))(v19 + v18, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v50[16] = a1;
  v51 = &v55;
  sub_1E5B18AC4(&v55, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032400, &qword_1E5B433D0);
  sub_1E5B1B02C();
  sub_1E5B3D6C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  LOBYTE(a2) = sub_1E5AFEB1C(v53, a1);
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = a2 & 1;
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032430, &qword_1E5B43440) + 36)];
  *v24 = KeyPath;
  v24[1] = sub_1E5B1B110;
  v24[2] = v23;
  v12[*(v10 + 60)] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032438, &qword_1E5B43448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5B43180;
  LOBYTE(v8) = sub_1E5B3D2B4();
  *(inited + 32) = v8;
  v26 = sub_1E5B3D2C4();
  *(inited + 33) = v26;
  v27 = sub_1E5B3D2E4();
  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v8)
  {
    v27 = sub_1E5B3D2E4();
  }

  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v26)
  {
    v27 = sub_1E5B3D2E4();
  }

  sub_1E5B3CD94();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1E5B1B128(v12, v14);
  v36 = v46;
  v37 = &v14[*(v46 + 36)];
  *v37 = v27;
  *(v37 + 1) = v29;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  *(v37 + 4) = v35;
  v37[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032120, &qword_1E5B43450);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1E5B42210;
  v53 = 0;
  v54 = 0xE000000000000000;
  v52 = a1;
  sub_1E5B3DC24();
  v39 = v54;
  *(v38 + 32) = v53;
  *(v38 + 40) = v39;
  v40 = sub_1E5B1AEAC();
  v41 = v45;
  sub_1E5B3D3C4();

  sub_1E5B04304(v14, &qword_1ED0323C8, &qword_1E5B433B0);
  v53 = v36;
  v54 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v48;
  sub_1E5B3D3A4();
  return (*(v47 + 8))(v41, v42);
}

uint64_t sub_1E5B1996C(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032348, &qword_1E5B43340);
  return sub_1E5B3D694();
}

uint64_t sub_1E5B199C8(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  sub_1E5B3D914();

  sub_1E5B3D804();
  sub_1E5B3CEF4();
}

uint64_t sub_1E5B19AD8(uint64_t a1, char a2)
{
  sub_1E5B3D854();
  sub_1E5AF4F0C();
  return sub_1E5B3CF54();
}

__n128 sub_1E5B19B44@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = sub_1E5B3D7E4();
  v8 = v7;
  sub_1E5B19C48(v4, a2, &v19);
  v15 = v21;
  v16 = v22;
  v13 = v19;
  v14 = v20;
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v18[1] = v20;
  v17 = v23;
  v18[0] = v19;
  sub_1E5B0429C(&v13, v12, &qword_1ED032440, &qword_1E5B43458);
  sub_1E5B04304(v18, &qword_1ED032440, &qword_1E5B43458);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v19 = v13;
  v20 = v14;
  KeyPath = swift_getKeyPath();
  *a3 = v6;
  *(a3 + 8) = v8;
  v10 = v22;
  *(a3 + 48) = v21;
  *(a3 + 64) = v10;
  *(a3 + 80) = v23;
  result = v20;
  *(a3 + 16) = v19;
  *(a3 + 32) = result;
  *(a3 + 96) = KeyPath;
  *(a3 + 104) = 1;
  *(a3 + 112) = 0;
  return result;
}

uint64_t sub_1E5B19C48@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1;
  v67 = a1;
  v61 = a3;
  v68 = sub_1E5B3CB44();
  v5 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v63 = a2[1];
  v64 = v8;
  v62 = *(a2 + 16);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  v65 = sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v9 = LibraryPage.title(locale:)(v7, v4);
  v11 = v10;
  v12 = *(v5 + 8);
  v55[1] = v5 + 8;
  v56 = v12;
  v12(v7, v68);
  v72 = v9;
  v73 = v11;
  v55[0] = sub_1E5B04428();
  v13 = sub_1E5B3D394();
  v15 = v14;
  v17 = v16;
  sub_1E5B3D344();
  v18 = sub_1E5B3D364();
  v20 = v19;
  v22 = v21;
  sub_1E5B1B198(v13, v15, v17 & 1);

  v23 = a2[8];
  v74 = a2[9];
  v72 = v74;

  v60 = sub_1E5B3D374();
  v58 = v24;
  v57 = v25;
  v59 = v26;
  sub_1E5B1B198(v18, v20, v22 & 1);

  sub_1E5B1B1A8(&v74);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v27 = v67;
  if (sub_1E5AFEB1C(v72, v67))
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v29 = LibraryPage.title(locale:)(v7, v27);
  v31 = v30;
  v56(v7, v68);
  v72 = v29;
  v73 = v31;
  v32 = sub_1E5B3D394();
  v34 = v33;
  v36 = v35;
  sub_1E5B3D334();
  v37 = sub_1E5B3D364();
  v39 = v38;
  v41 = v40;
  sub_1E5B1B198(v32, v34, v36 & 1);

  v72 = v23;
  *v71 = v23;

  v42 = sub_1E5B3D374();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1E5B1B198(v37, v39, v41 & 1);

  sub_1E5B1B1A8(&v72);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (sub_1E5AFEB1C(v71[0], v67))
  {
    v49 = 0.0;
  }

  else
  {
    v49 = 1.0;
  }

  v50 = v57 & 1;
  v71[0] = v57 & 1;
  v70 = v57 & 1;
  v69 = v46 & 1;
  v51 = v61;
  v52 = v60;
  v53 = v58;
  *v61 = v60;
  v51[1] = v53;
  *(v51 + 16) = v50;
  v51[3] = v59;
  *(v51 + 4) = v28;
  v51[5] = v42;
  v51[6] = v44;
  *(v51 + 56) = v46 & 1;
  v51[8] = v48;
  *(v51 + 9) = v49;
  sub_1E5B1B1FC(v52, v53, v50);

  sub_1E5B1B1FC(v42, v44, v46 & 1);

  sub_1E5B1B198(v42, v44, v46 & 1);

  sub_1E5B1B198(v52, v53, v71[0]);
}

void *sub_1E5B1A1D0()
{
  v2.origin = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032348, &qword_1E5B43340);
  result = sub_1E5B3D684();
  if (v3)
  {
    type metadata accessor for CGRect(0);
    sub_1E5B3CEC4();
    CGRectGetMinX(v2);
  }

  return result;
}

void *sub_1E5B1A2B0()
{
  v2.origin = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032348, &qword_1E5B43340);
  result = sub_1E5B3D684();
  if (v3)
  {
    sub_1E5B3CEB4();
    type metadata accessor for CGRect(0);
    sub_1E5B3CEC4();
    CGRectGetMaxX(v2);
  }

  return result;
}

double sub_1E5B1A39C@<D0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1E5B3D0B4();
  v28 = 0;
  sub_1E5B1A534(a2, &v15);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v41[8] = v23;
  v41[9] = v24;
  v41[10] = v25;
  v41[11] = v26;
  v41[4] = v19;
  v41[5] = v20;
  v41[6] = v21;
  v41[7] = v22;
  v41[0] = v15;
  v41[1] = v16;
  v41[2] = v17;
  v41[3] = v18;
  sub_1E5B0429C(&v29, &v14, &qword_1ED032350, &qword_1E5B43348);
  sub_1E5B04304(v41, &qword_1ED032350, &qword_1E5B43348);
  *&v27[135] = v37;
  *&v27[151] = v38;
  *&v27[167] = v39;
  *&v27[183] = v40;
  *&v27[71] = v33;
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[7] = v29;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  v6 = *&v27[128];
  *(a3 + 161) = *&v27[144];
  v7 = *&v27[176];
  *(a3 + 177) = *&v27[160];
  *(a3 + 193) = v7;
  v8 = *&v27[64];
  *(a3 + 97) = *&v27[80];
  v9 = *&v27[112];
  *(a3 + 113) = *&v27[96];
  *(a3 + 129) = v9;
  *(a3 + 145) = v6;
  v10 = *v27;
  *(a3 + 33) = *&v27[16];
  result = *&v27[32];
  v12 = *&v27[48];
  *(a3 + 49) = *&v27[32];
  *(a3 + 65) = v12;
  *(a3 + 81) = v8;
  v13 = v28;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v13;
  *(a3 + 208) = *&v27[191];
  *(a3 + 17) = v10;
  return result;
}

uint64_t sub_1E5B1A534@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032358, &qword_1E5B43350);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E5B43180;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  sub_1E5B3D604();
  v7 = a1[3];
  v40 = a1[2];
  v41 = v7;
  v42 = a1[4];
  v8 = a1[1];
  v38 = *a1;
  v39 = v8;
  sub_1E5B1A1D0();
  v9 = sub_1E5B3D5E4();

  *(v4 + 32) = v9;
  v10 = [v5 systemBackgroundColor];
  *(v4 + 40) = sub_1E5B3D604();
  MEMORY[0x1E6935EF0](v4);
  sub_1E5B3D864();
  sub_1E5B3D874();
  sub_1E5B3CF24();
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  v11 = sub_1E5B3D5B4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E5B43180;
  v13 = [v5 systemBackgroundColor];
  *(v12 + 32) = sub_1E5B3D604();
  v14 = [v5 systemBackgroundColor];
  sub_1E5B3D604();
  v15 = a1[3];
  v40 = a1[2];
  v41 = v15;
  v42 = a1[4];
  v16 = a1[1];
  v38 = *a1;
  v39 = v16;
  sub_1E5B1A2B0();
  v17 = sub_1E5B3D5E4();

  *(v12 + 40) = v17;
  MEMORY[0x1E6935EF0](v12);
  sub_1E5B3D864();
  sub_1E5B3D874();
  sub_1E5B3CF24();
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  v32[2] = v28;
  v32[3] = v29;
  v32[4] = v30;
  v32[0] = v26;
  v32[1] = v27;
  v34[2] = v22;
  v34[3] = v23;
  v34[4] = v24;
  v34[0] = v20;
  v34[1] = v21;
  *&v19[22] = v21;
  *&v19[6] = v20;
  *&v19[86] = v25;
  *&v19[70] = v24;
  *&v19[54] = v23;
  *&v19[38] = v22;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  *(a2 + 64) = v30;
  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 114) = *&v19[16];
  *(a2 + 98) = *v19;
  *(a2 + 176) = *&v19[78];
  *(a2 + 162) = *&v19[64];
  *(a2 + 146) = *&v19[48];
  v33 = v31;
  v35 = v25;
  *(a2 + 80) = v31;
  *(a2 + 88) = v11;
  *(a2 + 96) = 256;
  *(a2 + 130) = *&v19[32];
  v36[0] = v20;
  v36[1] = v21;
  v37 = v25;
  v36[3] = v23;
  v36[4] = v24;
  v36[2] = v22;
  sub_1E5B0429C(v32, &v38, &qword_1ED032360, &qword_1E5B43358);

  sub_1E5B0429C(v34, &v38, &qword_1ED032360, &qword_1E5B43358);
  sub_1E5B04304(v36, &qword_1ED032360, &qword_1E5B43358);

  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v38 = v26;
  v39 = v27;
  return sub_1E5B04304(&v38, &qword_1ED032360, &qword_1E5B43358);
}

double sub_1E5B1A928@<D0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v12[3] = v1[3];
  v12[4] = v4;
  v5 = *v1;
  v12[1] = v1[1];
  v12[2] = v3;
  v12[0] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v6[5] = v1[4];
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v11[10] = 0x4024000000000000;
  sub_1E5B18AC4(v12, v11);
  sub_1E5B3D674();
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_1E5B1B22C;
  a1[3] = v6;
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

uint64_t sub_1E5B1AA0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5B1AA54(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5B1AACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E5B1AB14(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *sub_1E5B1AB84(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t objectdestroy_2Tm_2(uint64_t a1)
{
  sub_1E5AF0DEC(*(v1 + 16), *(v1 + 24));

  return swift_deallocObject();
}

unint64_t sub_1E5B1AC68()
{
  result = qword_1ED032378;
  if (!qword_1ED032378)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032370, &qword_1E5B43368);
    v4[0] = sub_1E5B1ACF4();
    v4[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032378);
  }

  return result;
}

unint64_t sub_1E5B1ACF4()
{
  result = qword_1ED032380;
  if (!qword_1ED032380)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032388, &qword_1E5B43370);
    v4[0] = sub_1E5AF13EC(&qword_1ED032390, &qword_1ED032398, &qword_1E5B43378, MEMORY[0x1E69817F8]);
    v4[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032380);
  }

  return result;
}

uint64_t sub_1E5B1ADAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5B1AEAC()
{
  result = qword_1ED0323D0;
  if (!qword_1ED0323D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0323C8, &qword_1E5B433B0);
    v4[0] = sub_1E5AF13EC(&qword_1ED0323D8, &qword_1ED0323E0, &qword_1E5B433B8, MEMORY[0x1E6981810]);
    v4[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED0323D0);
  }

  return result;
}

unint64_t sub_1E5B1AF64()
{
  result = qword_1ED0323E8;
  if (!qword_1ED0323E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryPage, &type metadata for LibraryPage, v0, v1);
    atomic_store(result, &qword_1ED0323E8);
  }

  return result;
}

uint64_t sub_1E5B1AFB8()
{
  v1 = *(sub_1E5B3CF64() - 8);
  v2 = *(v0 + 96);
  v3 = v0 + ((*(v1 + 80) + 97) & ~*(v1 + 80));

  return sub_1E5B199C8((v0 + 16), v2, v3);
}

unint64_t sub_1E5B1B02C()
{
  result = qword_1ED032408;
  if (!qword_1ED032408)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032400, &qword_1E5B433D0);
    v4[0] = sub_1E5AF13EC(&qword_1ED032410, &qword_1ED032418, &qword_1E5B433D8, MEMORY[0x1E6981880]);
    v4[1] = sub_1E5AF13EC(&qword_1ED032420, &qword_1ED032428, &unk_1E5B433E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032408);
  }

  return result;
}

uint64_t sub_1E5B1B128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323E0, &qword_1E5B433B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B1B198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5B1B1FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t LibraryEnvironment.init(navigateToLibraryGalleryPage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t LibraryPageCountView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LibraryPageCountView(0);
  sub_1E5B1B32C();
  sub_1E5B3CE74();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5AEFB94;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for LibraryPageCountView(uint64_t a1)
{
  result = qword_1EE2C2D00;
  if (!qword_1EE2C2D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5B1B32C()
{
  result = qword_1EE2C2D90;
  if (!qword_1EE2C2D90)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7DF0], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &qword_1EE2C2D90);
  }

  return result;
}

uint64_t LibraryPageCountView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17[2] = a1;
  v2 = type metadata accessor for LibraryPageCountView(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v17[3] = v4;
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032448, &qword_1E5B43530);
  MEMORY[0x1EEE9AC00](v19);
  v7 = v17 - v6;
  *v7 = sub_1E5B3D114();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v17[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032450, &qword_1E5B43538) + 44);
  v21 = &unk_1F5F6D998;
  sub_1E5B1BCE8(v1, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1E5B1BD4C(v5, v9 + v8);
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032460, &qword_1E5B43550);
  sub_1E5AF13EC(&qword_1ED0320C0, &qword_1ED0319D0, &qword_1E5B3F2D8, MEMORY[0x1E69E6338]);
  sub_1E5AF13EC(&qword_1ED032468, &qword_1ED032460, &qword_1E5B43550, MEMORY[0x1E6981F48]);
  sub_1E5B1AF64();
  sub_1E5B3D754();
  v10 = v18;
  sub_1E5B1BCE8(v18, v5);
  v11 = swift_allocObject();
  sub_1E5B1BD4C(v5, v11 + v8);
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032470, &qword_1E5B43558) + 36)];
  *v12 = sub_1E5B1C3A0;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  sub_1E5B1BCE8(v10, v5);
  v13 = swift_allocObject();
  sub_1E5B1BD4C(v5, v13 + v8);
  v14 = &v7[*(v19 + 36)];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = sub_1E5B1C468;
  *(v14 + 3) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v20 = v21;
  sub_1E5B1BCE8(v18, v5);
  v15 = swift_allocObject();
  sub_1E5B1BD4C(v5, v15 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B1C5DC();
  sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80, MEMORY[0x1E69E6500]);
  sub_1E5B3D574();

  return sub_1E5AEB758(v7);
}

uint64_t sub_1E5B1B820@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v5 = type metadata accessor for LibraryPageCountLayout(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324A0, "vu") - 8;
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324A8, &qword_1E5B43610);
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v44 - v15;
  sub_1E5B1BE30(*a1, &v44 - v15);
  sub_1E5B3D734();
  v47 = sub_1E5B3D2D4();
  v46 = *a2;
  v45 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC54();
  v16 = sub_1E5B3CC74();
  v17 = *(*(v16 - 8) + 8);
  v17(v7, v16);
  type metadata accessor for LibraryPageCountView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  sub_1E5B3CE84();
  sub_1E5B3CD94();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324B0, &qword_1E5B43638) + 36)];
  *v26 = v47;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  LOBYTE(a2) = sub_1E5B3D2F4();
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC64();
  v17(v7, v16);
  sub_1E5B3CD94();
  v27 = v51;
  v28 = *(v52 + 44);
  v29 = v11;
  v44 = v11;
  v30 = &v11[v28];
  *v30 = a2;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = v49;
  v36 = v50;
  v37 = *(v50 + 16);
  v38 = v48;
  v37(v49, v48, v27);
  v39 = v53;
  sub_1E5B0429C(v29, v53, &qword_1ED0324A0, "vu");
  v40 = v54;
  v37(v54, v35, v27);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324B8, &qword_1E5B43640);
  sub_1E5B0429C(v39, &v40[*(v41 + 48)], &qword_1ED0324A0, "vu");
  sub_1E5B04304(v44, &qword_1ED0324A0, "vu");
  v42 = *(v36 + 8);
  v42(v38, v27);
  sub_1E5B04304(v39, &qword_1ED0324A0, "vu");
  return (v42)(v35, v27);
}

uint64_t sub_1E5B1BCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPageCountView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B1BD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPageCountView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B1BDB0@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for LibraryPageCountView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1E5B1B820(a1, v6, a2);
}

uint64_t sub_1E5B1BE30@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v43 = a2;
  v37 = sub_1E5B3D594();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LibraryPageCountView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324C0, &qword_1E5B43648);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v34[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324C8, &qword_1E5B43650);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324D0, &qword_1E5B43658);
  v18 = *(v17 - 8);
  v41 = v17;
  v42 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34[-v19];
  sub_1E5B1BCE8(v2, v10);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = v21 + v9;
  v23 = swift_allocObject();
  sub_1E5B1BD4C(v10, v23 + v21);
  v24 = v35;
  *(v23 + v22) = v35;
  v44 = v3;
  v45 = v24;
  LOBYTE(v22) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324D8, &qword_1E5B43660);
  sub_1E5B1DDA4();
  sub_1E5B3D6C4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v37);
  v46 = sub_1E5B3D5F4();
  v25 = sub_1E5AF13EC(&qword_1ED032548, &qword_1ED0324C0, &qword_1E5B43648, MEMORY[0x1E697D680]);
  v26 = sub_1E5B1E0B8();
  v27 = v36;
  sub_1E5B3D444();

  (*(v38 + 8))(v12, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032120, &qword_1E5B43450);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E5B42210;
  v46 = 0;
  v47 = 0xE000000000000000;
  v50[0] = v22;
  sub_1E5B3DC24();
  v29 = v47;
  *(v28 + 32) = v46;
  *(v28 + 40) = v29;
  v46 = v27;
  v47 = &type metadata for PageCountButtonStyle;
  v48 = v25;
  v49 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v39;
  sub_1E5B3D3C4();

  (*(v40 + 8))(v16, v31);
  v46 = v31;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  sub_1E5B3D3A4();
  return (*(v42 + 8))(v20, v32);
}

uint64_t sub_1E5B1C3AC(uint64_t *a1, __n128 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = (type metadata accessor for LibraryPageCountView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  sub_1E5AF0DEC(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

unint64_t sub_1E5B1C5DC()
{
  result = qword_1ED032480;
  if (!qword_1ED032480)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032448, &qword_1E5B43530);
    v4[0] = sub_1E5B1C668();
    v4[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032480);
  }

  return result;
}

unint64_t sub_1E5B1C668()
{
  result = qword_1ED032488;
  if (!qword_1ED032488)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032470, &qword_1E5B43558);
    v4[0] = sub_1E5AF13EC(&qword_1ED032490, &qword_1ED032498, &qword_1E5B43590, MEMORY[0x1E6981870]);
    v4[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032488);
  }

  return result;
}

uint64_t sub_1E5B1C73C(uint64_t *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

__n128 sub_1E5B1C800@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = type metadata accessor for LibraryPageCountLayout(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324F0, &qword_1E5B43668);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v50[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  v52 = sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v10 = v55;
  if (*(v55 + 16) && (v11 = sub_1E5B1E10C(a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  *v9 = sub_1E5B3D0B4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032558, &qword_1E5B436C0);
  sub_1E5B1CC9C(a2, a1, v13, &v9[*(v14 + 44)]);
  v51 = sub_1E5B3D2D4();
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC54();
  v15 = sub_1E5B3CC74();
  v16 = *(*(v15 - 8) + 8);
  v16(v7, v15);
  sub_1E5B3CD94();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032520, &qword_1E5B43680) + 36)];
  *v25 = v51;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v51 = sub_1E5B3D2F4();
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC64();
  v16(v7, v15);
  sub_1E5B3CD94();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032510, &qword_1E5B43678) + 36)];
  *v34 = v51;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_1E5B3D304();
  sub_1E5B3CD94();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032500, &qword_1E5B43670) + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v9[*(v53 + 36)] = 0;
  sub_1E5B3D7E4();
  sub_1E5B3CF94();
  v45 = v54;
  sub_1E5AEBAE0(v9, v54);
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324D8, &qword_1E5B43660) + 36);
  v47 = v60;
  *(v46 + 64) = v59;
  *(v46 + 80) = v47;
  *(v46 + 96) = v61;
  v48 = v56;
  *v46 = v55;
  *(v46 + 16) = v48;
  result = v58;
  *(v46 + 32) = v57;
  *(v46 + 48) = result;
  return result;
}

uint64_t sub_1E5B1CC9C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v103 = a4;
  v108 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032560, &qword_1E5B436C8);
  v115 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v114 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v94 - v7;
  v8 = sub_1E5B3D0F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5B3CB44();
  v106 = *(v10 - 8);
  v107 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E5B3D594();
  v116 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032568, &qword_1E5B436D0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v94 - v14);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032570, &qword_1E5B436D8);
  MEMORY[0x1EEE9AC00](v96);
  v17 = &v94 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032578, &qword_1E5B436E0);
  MEMORY[0x1EEE9AC00](v95);
  v19 = &v94 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032580, &qword_1E5B436E8);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v94 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032588, &qword_1E5B436F0);
  MEMORY[0x1EEE9AC00](v99);
  v112 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v94 - v26;
  LODWORD(v109) = a1;
  v27 = sub_1E5B3D644();
  v28 = (v15 + *(v13 + 36));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032590, &qword_1E5B436F8) + 28);
  v30 = *MEMORY[0x1E69816E0];
  v31 = sub_1E5B3D654();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v15 = v27;
  v32 = *(v116 + 104);
  LODWORD(v98) = *MEMORY[0x1E69814D8];
  v116 += 104;
  v33 = v32;
  v32(v110);
  v34 = sub_1E5B3D5F4();
  sub_1E5B1ADAC(v15, v17, &qword_1ED032568, &qword_1E5B436D0);
  *&v17[*(v96 + 36)] = v34;
  v35 = sub_1E5B3D314();
  KeyPath = swift_getKeyPath();
  sub_1E5B1ADAC(v17, v19, &qword_1ED032570, &qword_1E5B436D8);
  v37 = &v19[*(v95 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  type metadata accessor for LibraryPageCountView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  sub_1E5B3CE84();
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  v38 = v100;
  sub_1E5B1ADAC(v19, v100, &qword_1ED032578, &qword_1E5B436E0);
  v39 = (v38 + *(v97 + 36));
  v40 = v148;
  *v39 = v147;
  v39[1] = v40;
  v39[2] = v149;
  LOBYTE(v19) = sub_1E5B3D2F4();
  v41 = sub_1E5B3D2E4();
  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v19)
  {
    v41 = sub_1E5B3D2E4();
  }

  sub_1E5B3CD94();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1E5B1ADAC(v38, v24, &qword_1ED032580, &qword_1E5B436E8);
  v50 = &v24[*(v99 + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  sub_1E5B1ADAC(v24, v117, &qword_1ED032588, &qword_1E5B436F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560, MEMORY[0x1E6999B78]);
  sub_1E5B3CE44();
  swift_getKeyPath();
  v51 = v105;
  sub_1E5B3D904();

  v52 = LibraryPage.title(locale:)(v51, v109);
  v54 = v53;
  (*(v106 + 8))(v51, v107);
  v123 = v52;
  v124 = v54;
  sub_1E5B04428();
  v55 = sub_1E5B3D394();
  v107 = v56;
  v108 = v55;
  LOBYTE(v52) = v57;
  v109 = v58;
  v106 = swift_getKeyPath();
  v33(v110, v98, v111);
  v116 = sub_1E5B3D5F4();
  v146 = v52 & 1;
  v144 = 0;
  v111 = swift_getKeyPath();
  LODWORD(v105) = v146;
  LODWORD(v110) = v144;
  sub_1E5B3D7F4();
  sub_1E5B3CF94();
  *&v142[53] = v150[3];
  *&v142[69] = v150[4];
  *&v142[85] = v150[5];
  *&v142[101] = v150[6];
  *&v142[5] = v150[0];
  *&v142[21] = v150[1];
  *&v142[37] = v150[2];
  sub_1E5B3D0E4();
  sub_1E5B3D0D4();
  v123 = v102;
  sub_1E5B3D0C4();
  sub_1E5B3D0D4();
  sub_1E5B3D104();
  v59 = sub_1E5B3D384();
  v61 = v60;
  v63 = v62;
  v123 = sub_1E5B3D5A4();
  v64 = sub_1E5B3D374();
  v99 = v65;
  v100 = v64;
  LODWORD(v101) = v66;
  v102 = v67;
  sub_1E5B1B198(v59, v61, v63 & 1);

  v68 = sub_1E5B3D634();
  v69 = sub_1E5B3D5A4();
  LODWORD(v59) = sub_1E5B3D1C4();
  v70 = sub_1E5B3D354();
  v71 = swift_getKeyPath();
  v123 = v68;
  v124 = v69;
  LODWORD(v125) = v59;
  v126 = v71;
  v127 = v70;
  sub_1E5B3D324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032598, &qword_1E5B437E0);
  sub_1E5B1E688();
  v72 = v113;
  sub_1E5B3D414();

  v73 = v112;
  sub_1E5B0429C(v117, v112, &qword_1ED032588, &qword_1E5B436F0);
  v98 = *(v115 + 16);
  v74 = v104;
  v98(v114, v72, v104);
  v75 = v103;
  sub_1E5B0429C(v73, v103, &qword_1ED032588, &qword_1E5B436F0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325D8, &qword_1E5B43800);
  v77 = (v75 + v76[12]);
  *&v118 = v108;
  *(&v118 + 1) = v107;
  LOBYTE(v119) = v105;
  *(&v119 + 1) = *v145;
  DWORD1(v119) = *&v145[3];
  *(&v119 + 1) = v109;
  *&v120 = v106;
  *(&v120 + 1) = 2;
  LOBYTE(v121) = v110;
  *(&v121 + 1) = *v143;
  DWORD1(v121) = *&v143[3];
  *(&v121 + 1) = v116;
  *&v122[0] = v111;
  WORD4(v122[0]) = 0;
  BYTE10(v122[0]) = 1;
  *(v122 + 11) = *v142;
  *(&v122[3] + 11) = *&v142[48];
  *(&v122[2] + 11) = *&v142[32];
  *(&v122[1] + 11) = *&v142[16];
  *(&v122[7] + 1) = *&v142[109];
  *(&v122[6] + 11) = *&v142[96];
  *(&v122[5] + 11) = *&v142[80];
  *(&v122[4] + 11) = *&v142[64];
  v78 = v118;
  v79 = v119;
  v80 = v121;
  v77[2] = v120;
  v77[3] = v80;
  *v77 = v78;
  v77[1] = v79;
  v81 = v122[0];
  v82 = v122[1];
  v83 = v122[3];
  v77[6] = v122[2];
  v77[7] = v83;
  v77[4] = v81;
  v77[5] = v82;
  v84 = v122[4];
  v85 = v122[5];
  v86 = v122[7];
  v77[10] = v122[6];
  v77[11] = v86;
  v77[8] = v84;
  v77[9] = v85;
  v87 = v75 + v76[16];
  *v87 = 0x4014000000000000;
  *(v87 + 8) = 0;
  v88 = v75 + v76[20];
  v90 = v99;
  v89 = v100;
  *v88 = v100;
  *(v88 + 8) = v90;
  LOBYTE(v70) = v101 & 1;
  *(v88 + 16) = v101 & 1;
  *(v88 + 24) = v102;
  v91 = v114;
  v98((v75 + v76[24]), v114, v74);
  sub_1E5B0429C(&v118, &v123, &qword_1ED0325E0, &qword_1E5B43808);
  sub_1E5B1B1FC(v89, v90, v70);
  v92 = *(v115 + 8);

  v92(v113, v74);
  sub_1E5B04304(v117, &qword_1ED032588, &qword_1E5B436F0);
  v92(v91, v74);
  sub_1E5B1B198(v89, v90, v70);

  v139 = *&v142[64];
  v140 = *&v142[80];
  *v141 = *&v142[96];
  v135 = *v142;
  v136 = *&v142[16];
  v137 = *&v142[32];
  v123 = v108;
  v124 = v107;
  LOBYTE(v125) = v105;
  *(&v125 + 1) = *v145;
  HIDWORD(v125) = *&v145[3];
  v126 = v109;
  v127 = v106;
  v128 = 2;
  v129 = v110;
  *v130 = *v143;
  *&v130[3] = *&v143[3];
  v131 = v116;
  v132 = v111;
  v133 = 0;
  v134 = 1;
  *&v141[13] = *&v142[109];
  v138 = *&v142[48];
  sub_1E5B04304(&v123, &qword_1ED0325E0, &qword_1E5B43808);
  return sub_1E5B04304(v112, &qword_1ED032588, &qword_1E5B436F0);
}

void sub_1E5B1DB94(uint64_t a1)
{
  sub_1E5B1DC18(319);
  if (v1 <= 0x3F)
  {
    sub_1E5B1DCBC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B1DC18(uint64_t a1)
{
  if (!qword_1EE2C2428[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032478, &qword_1E5B43560);
    sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560, MEMORY[0x1E6999B78]);
    v1 = sub_1E5B3CE54();
    if (!v2)
    {
      atomic_store(v1, qword_1EE2C2428);
    }
  }
}

void sub_1E5B1DCBC(uint64_t a1)
{
  if (!qword_1EE2C2410)
  {
    sub_1E5B1B32C();
    v1 = sub_1E5B3CE94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C2410);
    }
  }
}

uint64_t sub_1E5B1DD18()
{
  v1 = *(type metadata accessor for LibraryPageCountView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = *(v2 + *(v1 + 64));

  return sub_1E5B1C73C(v2, v3);
}

unint64_t sub_1E5B1DDA4()
{
  result = qword_1ED0324E0;
  if (!qword_1ED0324E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0324D8, &qword_1E5B43660);
    v4[0] = sub_1E5B1DE30();
    v4[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED0324E0);
  }

  return result;
}

unint64_t sub_1E5B1DE30()
{
  result = qword_1ED0324E8;
  if (!qword_1ED0324E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0324F0, &qword_1E5B43668);
    v4[0] = sub_1E5B1DEE8();
    v4[1] = sub_1E5AF13EC(&qword_1ED032538, &qword_1ED032540, &unk_1E5B43690, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED0324E8);
  }

  return result;
}

unint64_t sub_1E5B1DEE8()
{
  result = qword_1ED0324F8;
  if (!qword_1ED0324F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032500, &qword_1E5B43670);
    v4[0] = sub_1E5B1DF74();
    v4[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED0324F8);
  }

  return result;
}

unint64_t sub_1E5B1DF74()
{
  result = qword_1ED032508;
  if (!qword_1ED032508)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032510, &qword_1E5B43678);
    v4[0] = sub_1E5B1E000();
    v4[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032508);
  }

  return result;
}

unint64_t sub_1E5B1E000()
{
  result = qword_1ED032518;
  if (!qword_1ED032518)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032520, &qword_1E5B43680);
    v4[0] = sub_1E5AF13EC(&qword_1ED032528, &qword_1ED032530, &qword_1E5B43688, MEMORY[0x1E69817F8]);
    v4[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032518);
  }

  return result;
}

unint64_t sub_1E5B1E0B8()
{
  result = qword_1ED032550;
  if (!qword_1ED032550)
  {
    result = swift_getWitnessTable(aE3, &type metadata for PageCountButtonStyle, v0, v1);
    atomic_store(result, &qword_1ED032550);
  }

  return result;
}

unint64_t sub_1E5B1E10C(uint64_t a1)
{
  v1 = a1;
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  v2 = sub_1E5B3DDF4();

  return sub_1E5B1E290(v1, v2);
}

unint64_t sub_1E5B1E290(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xE800000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
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

        else
        {
          if (v7 == 4)
          {
            v12 = 0xD000000000000014;
          }

          else
          {
            v12 = 0x64616F6C6E776F64;
          }

          if (v7 == 4)
          {
            v13 = 0x80000001E5B45B90;
          }

          else
          {
            v13 = 0xEA00000000006465;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x736B63617473;
        }

        else
        {
          v8 = 0x736D6172676F7270;
        }

        if (v7 == 2)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x697461746964656DLL;
        }

        else
        {
          v10 = 0x7374756F6B726F77;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xEB00000000736E6FLL;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 0x796C746E65636572;
      if (v6 != 6)
      {
        v14 = 0x656E696C66666FLL;
      }

      v15 = 0xED00006465646441;
      if (v6 != 6)
      {
        v15 = 0xE700000000000000;
      }

      v16 = 0xD000000000000014;
      if (v6 != 4)
      {
        v16 = 0x64616F6C6E776F64;
      }

      v17 = 0xEA00000000006465;
      if (v6 == 4)
      {
        v17 = 0x80000001E5B45B90;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x736B63617473;
      }

      else
      {
        v18 = 0x736D6172676F7270;
      }

      if (v6 == 2)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      if (v6)
      {
        v20 = 0x697461746964656DLL;
      }

      else
      {
        v20 = 0x7374756F6B726F77;
      }

      if (v6)
      {
        v5 = 0xEB00000000736E6FLL;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_1E5B3DDA4();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xE800000000000000;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1E5B1E55C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5B3D084();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5B1E5C0(uint64_t a1)
{
  v2 = sub_1E5B3D654();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E5B3CFB4();
}

unint64_t sub_1E5B1E688()
{
  result = qword_1ED0325A0;
  if (!qword_1ED0325A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032598, &qword_1E5B437E0);
    v4[0] = sub_1E5B1E740();
    v4[1] = sub_1E5AF13EC(&qword_1ED0325C8, &qword_1ED0325D0, &qword_1E5B437F8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED0325A0);
  }

  return result;
}

unint64_t sub_1E5B1E740()
{
  result = qword_1ED0325A8;
  if (!qword_1ED0325A8)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0325B0, &qword_1E5B437E8);
    v4 = sub_1E5AF13EC(&qword_1ED0325B8, &qword_1ED0325C0, &qword_1E5B437F0, MEMORY[0x1E6980600]);
    v5[0] = MEMORY[0x1E6981710];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
    atomic_store(result, &qword_1ED0325A8);
  }

  return result;
}

uint64_t sub_1E5B1E7FC()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x6968736572666572;
  }

  if (*v0)
  {
    v1 = 0x676E696863746566;
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

uint64_t sub_1E5B1E874@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B20CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B1E89C(uint64_t a1)
{
  v2 = sub_1E5B204F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1E8D8(uint64_t a1)
{
  v2 = sub_1E5B204F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1E914(uint64_t a1)
{
  v2 = sub_1E5B205F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1E950(uint64_t a1)
{
  v2 = sub_1E5B205F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1E98C(uint64_t a1)
{
  v2 = sub_1E5B20648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1E9C8(uint64_t a1)
{
  v2 = sub_1E5B20648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1EA04(uint64_t a1)
{
  v2 = sub_1E5B2069C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1EA40(uint64_t a1)
{
  v2 = sub_1E5B2069C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1EA7C(uint64_t a1)
{
  v2 = sub_1E5B2054C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1EAB8(uint64_t a1)
{
  v2 = sub_1E5B2054C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasContentLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325E8, &qword_1E5B43810);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325F0, &qword_1E5B43818);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - v5;
  v6 = sub_1E5B3CB44();
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325F8, &qword_1E5B43820);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032600, &qword_1E5B43828);
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032608, &unk_1E5B43830);
  v21 = *(v20 - 8);
  v67 = v20;
  v68 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B204F8();
  v70 = v23;
  sub_1E5B3DE14();
  sub_1E5B0E5E0(v66, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v72) = 0;
      sub_1E5B2069C();
      v35 = v67;
      v36 = v70;
      sub_1E5B3DD24();
      (*(v53 + 8))(v16, v14);
    }

    else
    {
      LOBYTE(v72) = 1;
      sub_1E5B20648();
      v35 = v67;
      v36 = v70;
      sub_1E5B3DD24();
      (*(v54 + 8))(v13, v55);
    }

    return (*(v68 + 8))(v36, v35);
  }

  else if (EnumCaseMultiPayload)
  {
    v37 = *v19;
    LODWORD(v62) = v19[8];
    LODWORD(v58) = v19[9];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
    v39 = v64;
    v40 = v65;
    v41 = v63;
    (*(v65 + 32))(v63, &v19[*(v38 + 64)], v64);
    LOBYTE(v72) = 3;
    sub_1E5B2054C();
    v42 = v59;
    v43 = v67;
    v44 = v70;
    sub_1E5B3DD24();
    v66 = v37;
    v72 = v37;
    v71 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B206F0(&qword_1ED032628, sub_1E5B205A0, MEMORY[0x1E69E6300]);
    v45 = v61;
    v46 = v69;
    sub_1E5B3DD74();
    if (v46)
    {
      (*(v60 + 8))(v42, v45);
      (*(v40 + 8))(v41, v39);
      (*(v68 + 8))(v44, v43);
    }

    v49 = v39;

    LOBYTE(v72) = v62;
    BYTE1(v72) = v58;
    v71 = 1;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    LOBYTE(v72) = 2;
    sub_1E5AFBFCC(&qword_1ED031AD0, MEMORY[0x1E6969778]);
    v51 = v63;
    sub_1E5B3DD74();
    (*(v60 + 8))(v42, v45);
    (*(v40 + 8))(v51, v49);
    return (*(v68 + 8))(v44, v43);
  }

  else
  {
    v25 = *v19;
    LODWORD(v63) = v19[8];
    LODWORD(v61) = v19[9];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
    v27 = v64;
    v28 = v65;
    v29 = v62;
    (*(v65 + 32))(v62, &v19[*(v26 + 64)], v64);
    LOBYTE(v72) = 2;
    sub_1E5B205F4();
    v30 = v56;
    v31 = v67;
    v32 = v70;
    sub_1E5B3DD24();
    v66 = v25;
    v72 = v25;
    v71 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B206F0(&qword_1ED032628, sub_1E5B205A0, MEMORY[0x1E69E6300]);
    v33 = v58;
    v34 = v69;
    sub_1E5B3DD74();
    if (v34)
    {
      (*(v57 + 8))(v30, v33);
      (*(v28 + 8))(v29, v27);
      (*(v68 + 8))(v32, v31);
    }

    v48 = v27;

    LOBYTE(v72) = v63;
    BYTE1(v72) = v61;
    v71 = 1;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    LOBYTE(v72) = 2;
    sub_1E5AFBFCC(&qword_1ED031AD0, MEMORY[0x1E6969778]);
    v50 = v62;
    sub_1E5B3DD74();
    (*(v57 + 8))(v30, v33);
    (*(v28 + 8))(v50, v48);
    return (*(v68 + 8))(v70, v31);
  }
}

uint64_t LibraryCanvasContentLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032650, &qword_1E5B43848);
  v55 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032658, &qword_1E5B43850);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032660, &qword_1E5B43858);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032668, &qword_1E5B43860);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032670, &unk_1E5B43868);
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v24 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E5B204F8();
  v25 = v63;
  sub_1E5B3DE04();
  if (!v25)
  {
    v63 = v11;
    v26 = v60;
    v46 = v20;
    v47 = v17;
    v48 = State;
    v27 = v58;
    v28 = v59;
    v29 = v61;
    v30 = v62;
    v31 = sub_1E5B3DD04();
    v32 = (2 * *(v31 + 16)) | 1;
    v65 = v31;
    v66 = v31 + 32;
    v67 = 0;
    v68 = v32;
    v33 = sub_1E5B00350();
    v34 = v14;
    if (v33 == 4 || v67 != v68 >> 1)
    {
      v36 = sub_1E5B3DC04();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
      *v38 = v48;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v27 + 8))(v14, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33 > 1u)
      {
        v40 = v27;
        if (v33 == 2)
        {
          v69 = 2;
          sub_1E5B205F4();
          sub_1E5B3DC94();
          v63 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
          v69 = 0;
          sub_1E5B206F0(&qword_1ED032678, sub_1E5B20768, MEMORY[0x1E69E6330]);
          v41 = v46;
          v42 = v53;
          sub_1E5B3DCF4();
          v69 = 1;
          sub_1E5AFC010();
          sub_1E5B3DCF4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
          sub_1E5B3CB44();
          v69 = 2;
          sub_1E5AFBFCC(&qword_1ED031AF8, MEMORY[0x1E6969790]);
          v44 = v56;
          sub_1E5B3DCF4();
          (*(v54 + 8))(v44, v42);
          (*(v27 + 8))(v63, v28);
        }

        else
        {
          v69 = 3;
          sub_1E5B2054C();
          sub_1E5B3DC94();
          v63 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
          v69 = 0;
          sub_1E5B206F0(&qword_1ED032678, sub_1E5B20768, MEMORY[0x1E69E6330]);
          v43 = v47;
          sub_1E5B3DCF4();
          v69 = 1;
          sub_1E5AFC010();
          sub_1E5B3DCF4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
          sub_1E5B3CB44();
          v41 = v43;
          v69 = 2;
          sub_1E5AFBFCC(&qword_1ED031AF8, MEMORY[0x1E6969790]);
          v45 = v57;
          sub_1E5B3DCF4();
          (*(v55 + 8))(v45, v29);
          (*(v40 + 8))(v63, v28);
        }

        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        sub_1E5B04A10(v41, v23);
      }

      else
      {
        if (v33)
        {
          v69 = 1;
          sub_1E5B20648();
          sub_1E5B3DC94();
          (*(v51 + 8))(v26, v52);
        }

        else
        {
          v69 = 0;
          sub_1E5B2069C();
          v35 = v63;
          sub_1E5B3DC94();
          (*(v49 + 8))(v35, v50);
        }

        (*(v27 + 8))(v14, v28);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
      }

      sub_1E5B04A10(v23, v30);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t _s14FitnessLibrary0B22CanvasContentLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3CB44();
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F0, &unk_1E5B43DE0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v53 - v23;
  v26 = v53 + *(v25 + 56) - v23;
  sub_1E5B0E5E0(a1, v53 - v23);
  sub_1E5B0E5E0(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_20;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_20;
    }

    sub_1E5B20FBC(v24);
    v37 = 1;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1E5B0E5E0(v24, v18);
    v39 = *v18;
    v40 = v18[8];
    v41 = v18[9];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
    v31 = &v18[v42];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v56 = v40;
      v43 = *v26;
      v44 = v26[8];
      v54 = v41;
      v55 = v44;
      v53[2] = v26[9];
      v45 = v59;
      v46 = *(v59 + 32);
      v35 = v58;
      v46(v57, &v18[v42], v58);
      v46(v7, &v26[v42], v35);
      v47 = sub_1E5B0E8D0(v39, v43);

      if (v47)
      {
        if (v56 == v55 && (sub_1E5B3CCB4() & 1) != 0)
        {
          v48 = v57;
          v37 = MEMORY[0x1E6935290](v57, v7);
          v49 = *(v59 + 8);
          v49(v7, v35);
          v49(v48, v35);
          goto LABEL_16;
        }

        v45 = v59;
      }

      v50 = *(v45 + 8);
      v50(v7, v35);
      v51 = v57;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  sub_1E5B0E5E0(v24, v21);
  v28 = *v21;
  LODWORD(v57) = v21[8];
  v29 = v21[9];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
  v31 = &v21[v30];
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_17:
    (*(v59 + 8))(v31, v58);

LABEL_20:
    sub_1E5B20F54(v24);
LABEL_25:
    v37 = 0;
    return v37 & 1;
  }

  v55 = v29;
  v32 = *v26;
  v56 = v26[8];
  v54 = v26[9];
  v33 = *(v59 + 32);
  v34 = v31;
  v35 = v58;
  v33(v15, v34, v58);
  v33(v12, &v26[v30], v35);
  v36 = sub_1E5B0E8D0(v28, v32);

  if ((v36 & 1) == 0 || v57 != v56 || (sub_1E5B3CCB4() & 1) == 0)
  {
    v50 = *(v59 + 8);
    v50(v12, v35);
    v51 = v15;
LABEL_24:
    v50(v51, v35);
    sub_1E5B20FBC(v24);
    goto LABEL_25;
  }

  v37 = MEMORY[0x1E6935290](v15, v12);
  v38 = *(v59 + 8);
  v38(v12, v35);
  v38(v15, v35);
LABEL_16:
  sub_1E5B20FBC(v24);
  return v37 & 1;
}

unint64_t sub_1E5B204F8()
{
  result = qword_1ED032610;
  if (!qword_1ED032610)
  {
    result = swift_getWitnessTable(aD5, &type metadata for LibraryCanvasContentLoadState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032610);
  }

  return result;
}

unint64_t sub_1E5B2054C()
{
  result = qword_1ED032618;
  if (!qword_1ED032618)
  {
    result = swift_getWitnessTable(aYd5, &type metadata for LibraryCanvasContentLoadState.RefreshingCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032618);
  }

  return result;
}

unint64_t sub_1E5B205A0()
{
  result = qword_1ED032630;
  if (!qword_1ED032630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasSectionDescriptor, &type metadata for LibraryCanvasSectionDescriptor, v0, v1);
    atomic_store(result, &qword_1ED032630);
  }

  return result;
}

unint64_t sub_1E5B205F4()
{
  result = qword_1ED032638;
  if (!qword_1ED032638)
  {
    result = swift_getWitnessTable(byte_1E5B43CF0, &type metadata for LibraryCanvasContentLoadState.FetchedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032638);
  }

  return result;
}

unint64_t sub_1E5B20648()
{
  result = qword_1ED032640;
  if (!qword_1ED032640)
  {
    result = swift_getWitnessTable(byte_1E5B43CA0, &type metadata for LibraryCanvasContentLoadState.FetchingCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032640);
  }

  return result;
}

unint64_t sub_1E5B2069C()
{
  result = qword_1ED032648;
  if (!qword_1ED032648)
  {
    result = swift_getWitnessTable(aIe5_0, &type metadata for LibraryCanvasContentLoadState.IdleCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032648);
  }

  return result;
}

uint64_t sub_1E5B206F0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032620, &qword_1E5B43840);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B20768()
{
  result = qword_1ED032680;
  if (!qword_1ED032680)
  {
    result = swift_getWitnessTable("aD5\t /", &type metadata for LibraryCanvasSectionDescriptor, v0, v1);
    atomic_store(result, &qword_1ED032680);
  }

  return result;
}

unint64_t sub_1E5B20860()
{
  result = qword_1ED032688;
  if (!qword_1ED032688)
  {
    result = swift_getWitnessTable(a1t5, &type metadata for LibraryCanvasContentLoadState.RefreshingCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032688);
  }

  return result;
}

unint64_t sub_1E5B208B8()
{
  result = qword_1ED032690;
  if (!qword_1ED032690)
  {
    result = swift_getWitnessTable(aYs5, &type metadata for LibraryCanvasContentLoadState.FetchedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032690);
  }

  return result;
}

unint64_t sub_1E5B20910()
{
  result = qword_1ED032698;
  if (!qword_1ED032698)
  {
    result = swift_getWitnessTable(aR5, &type metadata for LibraryCanvasContentLoadState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032698);
  }

  return result;
}

unint64_t sub_1E5B20968()
{
  result = qword_1ED0326A0;
  if (!qword_1ED0326A0)
  {
    result = swift_getWitnessTable(byte_1E5B43B48, &type metadata for LibraryCanvasContentLoadState.IdleCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326A0);
  }

  return result;
}

unint64_t sub_1E5B209C0()
{
  result = qword_1ED0326A8;
  if (!qword_1ED0326A8)
  {
    result = swift_getWitnessTable(byte_1E5B43B70, &type metadata for LibraryCanvasContentLoadState.IdleCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326A8);
  }

  return result;
}

unint64_t sub_1E5B20A18()
{
  result = qword_1ED0326B0;
  if (!qword_1ED0326B0)
  {
    result = swift_getWitnessTable(byte_1E5B43AF8, &type metadata for LibraryCanvasContentLoadState.FetchingCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326B0);
  }

  return result;
}

unint64_t sub_1E5B20A70()
{
  result = qword_1ED0326B8;
  if (!qword_1ED0326B8)
  {
    result = swift_getWitnessTable(byte_1E5B43B20, &type metadata for LibraryCanvasContentLoadState.FetchingCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326B8);
  }

  return result;
}

unint64_t sub_1E5B20AC8()
{
  result = qword_1ED0326C0;
  if (!qword_1ED0326C0)
  {
    result = swift_getWitnessTable(byte_1E5B43A40, &type metadata for LibraryCanvasContentLoadState.FetchedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326C0);
  }

  return result;
}

unint64_t sub_1E5B20B20()
{
  result = qword_1ED0326C8;
  if (!qword_1ED0326C8)
  {
    result = swift_getWitnessTable(byte_1E5B43A68, &type metadata for LibraryCanvasContentLoadState.FetchedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326C8);
  }

  return result;
}

unint64_t sub_1E5B20B78()
{
  result = qword_1ED0326D0;
  if (!qword_1ED0326D0)
  {
    result = swift_getWitnessTable("ia5\t@9", &type metadata for LibraryCanvasContentLoadState.RefreshingCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326D0);
  }

  return result;
}

unint64_t sub_1E5B20BD0()
{
  result = qword_1ED0326D8;
  if (!qword_1ED0326D8)
  {
    result = swift_getWitnessTable(byte_1E5B439B0, &type metadata for LibraryCanvasContentLoadState.RefreshingCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326D8);
  }

  return result;
}

unint64_t sub_1E5B20C28()
{
  result = qword_1ED0326E0;
  if (!qword_1ED0326E0)
  {
    result = swift_getWitnessTable(aY5, &type metadata for LibraryCanvasContentLoadState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326E0);
  }

  return result;
}

unint64_t sub_1E5B20C80()
{
  result = qword_1ED0326E8;
  if (!qword_1ED0326E8)
  {
    result = swift_getWitnessTable("q[5\tx6", &type metadata for LibraryCanvasContentLoadState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED0326E8);
  }

  return result;
}

uint64_t sub_1E5B20CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6968736572666572 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B20E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B20F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F0, &unk_1E5B43DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B20FBC(uint64_t a1)
{
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t LibraryPageCountLayout.init(contentMargins:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5B3CC74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t LibraryPageCountLayout.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5B3CC74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E5B21120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
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

uint64_t sub_1E5B211B0(uint64_t a1)
{
  v2 = sub_1E5B2138C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B211EC(uint64_t a1)
{
  v2 = sub_1E5B2138C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryPageCountLayout.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F8, &qword_1E5B43DF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B2138C();
  sub_1E5B3DE14();
  sub_1E5B3CC74();
  sub_1E5B21698(&qword_1ED032708, MEMORY[0x1E699D938]);
  sub_1E5B3DD74();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E5B2138C()
{
  result = qword_1ED032700;
  if (!qword_1ED032700)
  {
    result = swift_getWitnessTable(aB5, &type metadata for LibraryPageCountLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032700);
  }

  return result;
}

uint64_t LibraryPageCountLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1E5B3CC74();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032710, &qword_1E5B43DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LibraryPageCountLayout(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B2138C();
  v12 = v19;
  sub_1E5B3DE04();
  if (!v12)
  {
    v13 = v17;
    sub_1E5B21698(&qword_1ED032718, MEMORY[0x1E699D948]);
    sub_1E5B3DCF4();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1E5B10060(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for LibraryPageCountLayout(uint64_t a1)
{
  result = qword_1ED032720;
  if (!qword_1ED032720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B21698(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1E5B3CC74();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B216F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F8, &qword_1E5B43DF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B2138C();
  sub_1E5B3DE14();
  sub_1E5B3CC74();
  sub_1E5B21698(&qword_1ED032708, MEMORY[0x1E699D938]);
  sub_1E5B3DD74();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E5B21884(uint64_t a1)
{
  result = sub_1E5B3CC74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5B21904()
{
  result = qword_1ED032730;
  if (!qword_1ED032730)
  {
    result = swift_getWitnessTable(byte_1E5B43F34, &type metadata for LibraryPageCountLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032730);
  }

  return result;
}

unint64_t sub_1E5B2195C()
{
  result = qword_1ED032738;
  if (!qword_1ED032738)
  {
    result = swift_getWitnessTable("M\\5\tp4", &type metadata for LibraryPageCountLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032738);
  }

  return result;
}

unint64_t sub_1E5B219B4()
{
  result = qword_1ED032740;
  if (!qword_1ED032740)
  {
    result = swift_getWitnessTable("eX5\tH4", &type metadata for LibraryPageCountLayout.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032740);
  }

  return result;
}

uint64_t GalleryState.init(activeLocale:contentMargins:densityFactor:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = sub_1E5B3CB44();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v20 = type metadata accessor for GalleryState(0, &v36);
  v21 = v20[21];
  v22 = sub_1E5B3CC74();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = v20[22];
  v24 = sub_1E5B3CBC4();
  (*(*(v24 - 8) + 32))(a9 + v23, a3, v24);
  v25 = v20[23];
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v26 = type metadata accessor for LibraryDataItem(255, &v36);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v26);
  v27 = sub_1E5B3CCF4();
  v28 = sub_1E5B3DA74();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v27);
  swift_getWitnessTable(MEMORY[0x1E69E6320], v28, &WitnessTable);
  v29 = sub_1E5B3D8C4();
  return (*(*(v29 - 8) + 32))(a9 + v25, a4, v29);
}

uint64_t static GalleryState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (MEMORY[0x1E6935290]() & 1) != 0 && (v25 = a3, v26 = a4, v27 = a5, v28 = a6, v29 = a7, v30 = a8, v31 = a9, v32 = a10, v18 = type metadata accessor for GalleryState(0, &v25), (MEMORY[0x1E69353B0](a1 + *(v18 + 84), a2 + *(v18 + 84))) && (sub_1E5B3CBA4())
  {
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v31 = a9;
    v32 = a10;
    v19 = type metadata accessor for LibraryDataItem(255, &v25);
    swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v19);
    v20 = sub_1E5B3CCF4();
    v21 = sub_1E5B3DA74();
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v20);
    swift_getWitnessTable(MEMORY[0x1E69E6320], v21, &WitnessTable);
    v22 = sub_1E5B3D8A4();
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1E5B21DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C657669746361 && a2 == 0xEC000000656C6163;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B21F84(unsigned __int8 a1)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B21FCC(unsigned __int8 a1)
{
  v1 = 0x6F4C657669746361;
  v2 = 0x46797469736E6564;
  if (a1 != 2)
  {
    v2 = 0x736D657469;
  }

  if (a1)
  {
    v1 = 0x4D746E65746E6F63;
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

uint64_t sub_1E5B22118(uint64_t a1)
{
  sub_1E5B3DDC4();
  sub_1E5B21F5C(v3, *v1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B221A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B21DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B221F0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5B2376C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B2222C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aQ5, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B22280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aQ5, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GalleryState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v36 = *(a2 + 16);
  v44 = v36;
  v45 = v4;
  v33 = v4;
  v32 = v5;
  v46 = v5;
  v47 = v6;
  v31 = v6;
  v30 = v7;
  v48 = v7;
  v49 = v8;
  v34 = v8;
  v35 = v9;
  v50 = v9;
  v51 = v10;
  v29 = v10;
  v11 = type metadata accessor for GalleryState.CodingKeys(255, &v44);
  swift_getWitnessTable(aQ5, v11);
  v12 = sub_1E5B3DD84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B3DE14();
  LOBYTE(v44) = 0;
  sub_1E5B3CB44();
  sub_1E5B234E4(&qword_1ED031AD0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
  v16 = v37;
  sub_1E5B3DD74();
  if (!v16)
  {
    v17 = v36;
    LOBYTE(v44) = 1;
    sub_1E5B3CC74();
    sub_1E5B234E4(&qword_1ED032708, MEMORY[0x1E699D930], MEMORY[0x1E699D938]);
    sub_1E5B3DD74();
    LOBYTE(v44) = 2;
    sub_1E5B3CBC4();
    sub_1E5B234E4(&qword_1ED032748, MEMORY[0x1E699D880], MEMORY[0x1E699D888]);
    sub_1E5B3DD74();
    v28[1] = *(a2 + 92);
    v52 = 3;
    v44 = v17;
    v45 = v33;
    v46 = v32;
    v47 = v31;
    v19 = v34;
    v48 = v30;
    v49 = v34;
    v50 = v35;
    v51 = v29;
    v20 = type metadata accessor for LibraryDataItem(255, &v44);
    swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v20);
    v21 = sub_1E5B3CCF4();
    v37 = v15;
    v22 = v21;
    v23 = sub_1E5B3DA74();
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v22);
    swift_getWitnessTable(MEMORY[0x1E69E6320], v23, &WitnessTable);
    v24 = sub_1E5B3D8C4();
    v42 = v19;
    v41 = swift_getWitnessTable(MEMORY[0x1E699D9F0], v22, &v42);
    v25 = swift_getWitnessTable(MEMORY[0x1E69E6330], v23, &v41);
    v40 = v35;
    v26 = v22;
    v15 = v37;
    v39 = swift_getWitnessTable(MEMORY[0x1E699D9D8], v26, &v40);
    v27 = swift_getWitnessTable(MEMORY[0x1E69E6300], v23, &v39);
    v38[0] = v25;
    v38[1] = v27;
    swift_getWitnessTable(MEMORY[0x1E6999B20], v24, v38);
    sub_1E5B3DD74();
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t GalleryState.hash(into:)(uint64_t a1, _OWORD *a2)
{
  sub_1E5B3CB44();
  sub_1E5B234E4(&qword_1ED032750, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5B3D964();
  sub_1E5B3CC74();
  sub_1E5B234E4(&qword_1ED032758, MEMORY[0x1E699D930], MEMORY[0x1E699D940]);
  sub_1E5B3D964();
  sub_1E5B3CBC4();
  sub_1E5B234E4(&qword_1ED032760, MEMORY[0x1E699D880], MEMORY[0x1E699D890]);
  sub_1E5B3D964();
  v3 = a2[2];
  v11[0] = a2[1];
  v11[1] = v3;
  v4 = a2[4];
  v11[2] = a2[3];
  v11[3] = v4;
  v5 = type metadata accessor for LibraryDataItem(255, v11);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v5);
  v6 = sub_1E5B3CCF4();
  v7 = sub_1E5B3DA74();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v6);
  swift_getWitnessTable(MEMORY[0x1E69E6320], v7, &WitnessTable);
  sub_1E5B3D8C4();
  v9 = swift_getWitnessTable(MEMORY[0x1E699D9E0], v6);
  swift_getWitnessTable(MEMORY[0x1E69E6308], v7, &v9);
  return sub_1E5B3D8B4();
}

uint64_t GalleryState.hashValue.getter(_OWORD *a1)
{
  sub_1E5B3DDC4();
  GalleryState.hash(into:)(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t GalleryState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v76 = a7;
  v78 = a1;
  v57 = a9;
  v74 = a10;
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v88 = a6;
  v89 = a7;
  v90 = a8;
  v91 = a10;
  v77 = a8;
  v16 = type metadata accessor for LibraryDataItem(255, &v84);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v16);
  v17 = sub_1E5B3CCF4();
  v18 = sub_1E5B3DA74();
  v58 = v17;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v17);
  swift_getWitnessTable(MEMORY[0x1E69E6320], v18, &WitnessTable);
  v59 = v18;
  v61 = sub_1E5B3D8C4();
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v56 - v19;
  v68 = sub_1E5B3CBC4();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E5B3CC74();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E5B3CB44();
  v64 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a2;
  v85 = a3;
  v23 = a3;
  v24 = a4;
  v86 = a4;
  v87 = a5;
  v25 = a5;
  v26 = a6;
  v27 = v76;
  v88 = a6;
  v89 = v76;
  v90 = a8;
  v28 = v74;
  v91 = v74;
  v29 = type metadata accessor for GalleryState.CodingKeys(255, &v84);
  v73 = swift_getWitnessTable(aQ5, v29);
  v70 = sub_1E5B3DD14();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v31 = &v56 - v30;
  v84 = a2;
  v85 = v23;
  v86 = v24;
  v87 = v25;
  v88 = v26;
  v89 = v27;
  v32 = v78;
  v90 = v77;
  v91 = v28;
  v33 = type metadata accessor for GalleryState(0, &v84);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v56 - v35;
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v74 = v31;
  v37 = v75;
  sub_1E5B3DE04();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v38 = v65;
  v39 = v66;
  v73 = v34;
  v75 = v36;
  v40 = v67;
  v41 = v68;
  LOBYTE(v84) = 0;
  sub_1E5B234E4(&qword_1ED031AF8, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v42 = v71;
  v43 = v70;
  sub_1E5B3DCF4();
  (*(v64 + 32))(v75, v72, v42);
  LOBYTE(v84) = 1;
  sub_1E5B234E4(&qword_1ED032718, MEMORY[0x1E699D930], MEMORY[0x1E699D948]);
  v44 = v38;
  v45 = v63;
  sub_1E5B3DCF4();
  v72 = v33;
  (*(v62 + 32))(&v75[*(v33 + 84)], v44, v45);
  LOBYTE(v84) = 2;
  sub_1E5B234E4(qword_1ED032768, MEMORY[0x1E699D880], MEMORY[0x1E699D898]);
  sub_1E5B3DCF4();
  (*(v40 + 32))(&v75[*(v72 + 22)], v39, v41);
  LOBYTE(v84) = 3;
  v83 = v76;
  v46 = v58;
  v82 = swift_getWitnessTable(MEMORY[0x1E699D9F0], v58, &v83);
  v47 = v59;
  v48 = swift_getWitnessTable(MEMORY[0x1E69E6330], v59, &v82);
  v81 = v77;
  v80 = swift_getWitnessTable(MEMORY[0x1E699D9D8], v46, &v81);
  v49 = swift_getWitnessTable(MEMORY[0x1E69E6300], v47, &v80);
  v79[0] = v48;
  v79[1] = v49;
  v50 = v61;
  swift_getWitnessTable(MEMORY[0x1E6999B30], v61, v79);
  v51 = v60;
  sub_1E5B3DCF4();
  (*(v69 + 8))(v74, v43);
  v52 = v72;
  v53 = v75;
  (*(v56 + 32))(&v75[*(v72 + 23)], v51, v50);
  v54 = v73;
  (*(v73 + 16))(v57, v53, v52);
  __swift_destroy_boxed_opaque_existential_1(v78);
  return (*(v54 + 8))(v53, v52);
}

uint64_t sub_1E5B234A0(uint64_t a1, _OWORD *a2)
{
  sub_1E5B3DDC4();
  GalleryState.hash(into:)(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B234E4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1E5B23584(_OWORD *a1)
{
  result = sub_1E5B3CB44();
  if (v3 <= 0x3F)
  {
    v14 = 0;
    v18 = result;
    result = sub_1E5B3CC74();
    if (v4 <= 0x3F)
    {
      v15 = 0;
      v19 = result;
      result = sub_1E5B3CBC4();
      if (v5 <= 0x3F)
      {
        v16 = 0;
        v20 = result;
        v6 = a1[2];
        v13[0] = a1[1];
        v13[1] = v6;
        v7 = a1[4];
        v13[2] = a1[3];
        v13[3] = v7;
        v8 = type metadata accessor for LibraryDataItem(255, v13);
        swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v8);
        v9 = sub_1E5B3CCF4();
        v10 = sub_1E5B3DA74();
        WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9E8], v9);
        swift_getWitnessTable(MEMORY[0x1E69E6320], v10, &WitnessTable);
        result = sub_1E5B3D8C4();
        if (v11 <= 0x3F)
        {
          v17 = 0;
          v21 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t static GalleryAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v9 = type metadata accessor for GalleryAction(255, v20);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v13 = v20 - v12;
  v15 = *(v14 + 56);
  v16 = *(*(v9 - 8) + 16);
  v16(v20 - v12, a1, v9, v11);
  (v16)(&v13[v15], a2, v9);
  v17 = sub_1E5B3D974();
  v18 = *(*(a3 - 8) + 8);
  v18(&v13[v15], a3);
  v18(v13, a3);
  return v17 & 1;
}

uint64_t sub_1E5B238F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5B3DDA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5B23978(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5B3DDA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5B23A34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aQ5_0, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B23A88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aQ5_0, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5B23AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E5B23B34@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5B23B74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1E5B444B8, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B23BC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1E5B444B8, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GalleryAction.encode(to:)(void *a1, void *a2)
{
  v28 = a1;
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v31 = a2[2];
  v32 = v3;
  v6 = v31;
  v21 = v31;
  v33 = v4;
  v34 = v5;
  v7 = v4;
  v23 = v4;
  v26 = type metadata accessor for GalleryAction.ItemTappedCodingKeys(255, &v31);
  WitnessTable = swift_getWitnessTable(byte_1E5B444B8, v26);
  v24 = sub_1E5B3DD84();
  v30 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v22 = &v21 - v8;
  v9 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v32 = v3;
  v33 = v7;
  v34 = v5;
  v13 = type metadata accessor for GalleryAction.CodingKeys(255, &v31);
  swift_getWitnessTable(aQ5_0, v13);
  v14 = sub_1E5B3DD84();
  v25 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v17 = v21;
  v18 = v22;
  v19 = v24;
  sub_1E5B3DE14();
  (*(v9 + 16))(v12, v29, a2);
  sub_1E5B3DD24();
  sub_1E5B3DD74();
  (*(*(v17 - 8) + 8))(v12, v17);
  (*(v30 + 8))(v18, v19);
  return (*(v25 + 8))(v16, v14);
}

uint64_t GalleryAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, a2, v4);
  MEMORY[0x1E6936540](0);
  v8 = *(a2 + 16);
  sub_1E5B3D964();
  return (*(*(v8 - 8) + 8))(v6, v8);
}

uint64_t GalleryAction.hashValue.getter(uint64_t a1)
{
  sub_1E5B3DDC4();
  GalleryAction.hash(into:)(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t GalleryAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a6;
  *&v57 = a2;
  *(&v57 + 1) = a3;
  *&v58 = a4;
  *(&v58 + 1) = a5;
  v54 = type metadata accessor for GalleryAction(0, &v57);
  v45 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v40 - v11;
  *&v57 = a2;
  *(&v57 + 1) = a3;
  *&v58 = a4;
  *(&v58 + 1) = a5;
  v12 = type metadata accessor for GalleryAction.ItemTappedCodingKeys(255, &v57);
  WitnessTable = swift_getWitnessTable(byte_1E5B444B8, v12);
  v13 = sub_1E5B3DD14();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v40 - v14;
  *&v57 = a2;
  *(&v57 + 1) = a3;
  v49 = a3;
  *&v58 = a4;
  *(&v58 + 1) = a5;
  v15 = type metadata accessor for GalleryAction.CodingKeys(255, &v57);
  swift_getWitnessTable(aQ5_0, v15);
  v52 = sub_1E5B3DD14();
  v16 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v18 = &v40 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v59;
  sub_1E5B3DE04();
  if (v19)
  {
    goto LABEL_9;
  }

  v42 = v12;
  v41 = a2;
  v43 = 0;
  v44 = v16;
  v20 = v53;
  v21 = v54;
  v59 = a1;
  v22 = v52;
  v23 = v18;
  *&v55 = sub_1E5B3DD04();
  v24 = sub_1E5B3DA74();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v24);
  *&v57 = sub_1E5B3DBB4();
  *(&v57 + 1) = v25;
  *&v58 = v26;
  *(&v58 + 1) = v27;
  v28 = sub_1E5B3DBA4();
  swift_getWitnessTable(MEMORY[0x1E69E6978], v28);
  sub_1E5B3DB54();
  if ((v55 & 1) != 0 || (v40 = v57, v55 = v57, v56 = v58, (sub_1E5B3DB64() & 1) == 0))
  {
    v32 = sub_1E5B3DC04();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
    *v34 = v21;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v44 + 8))(v18, v22);
    goto LABEL_8;
  }

  v29 = v51;
  v30 = v23;
  v31 = v43;
  sub_1E5B3DC94();
  if (v31)
  {
    (*(v44 + 8))(v23, v22);
LABEL_8:
    swift_unknownObjectRelease();
    a1 = v59;
LABEL_9:
    v39 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v35 = v20;
  v36 = v48;
  sub_1E5B3DCF4();
  v37 = v44;
  (*(v47 + 8))(v29, v36);
  (*(v37 + 8))(v30, v22);
  swift_unknownObjectRelease();
  (*(v45 + 32))(v46, v35, v21);
  v39 = v59;
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1E5B246C8(uint64_t a1, uint64_t a2)
{
  sub_1E5B3DDC4();
  GalleryAction.hash(into:)(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B24738(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1E5B248E4(_OWORD *a1)
{
  v1 = *(a1 + 56);
  v6[0] = a1[1];
  v6[1] = v1;
  v2 = *(a1 + 88);
  v6[2] = *(a1 + 72);
  v6[3] = v2;
  v3 = type metadata accessor for GalleryFeature(255, v6);
  swift_getWitnessTable(protocol conformance descriptor for GalleryFeature<A, B>, v3);
  v4 = sub_1E5B3D934();
  swift_getWitnessTable(MEMORY[0x1E6999B78], v4);
  return sub_1E5B3CE44();
}

uint64_t sub_1E5B249A4(void *a1, uint64_t a2, uint64_t a3, void x3_0, void x4_0, void x5_0, uint64_t a4, uint64_t a5, __int128 a7, uint64_t a8, uint64_t a9)
{
  sub_1E5B29D84(a1, v19);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v15[0] = type metadata accessor for LibraryDataItem(255, v15);
  swift_getExtendedExistentialTypeMetadata();
  sub_1E5B3D674();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_1E5B24A6C(_OWORD *a1)
{
  v2 = *(a1 + 56);
  v5[0] = a1[1];
  v5[1] = v2;
  v3 = *(a1 + 88);
  v5[2] = *(a1 + 72);
  v5[3] = v3;
  *&v5[0] = type metadata accessor for LibraryDataItem(255, v5);
  swift_getExtendedExistentialTypeMetadata();
  sub_1E5B3D6A4();
  return sub_1E5B3D684();
}

uint64_t sub_1E5B24AF0(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5B3CB74();
  sub_1E5B3CB64();
  return v2;
}

uint64_t sub_1E5B24B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v16 = a1;
  v17 = a2;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a8;
  v13 = a9;
  v14 = a10;
  v15 = a11;
  type metadata accessor for LibraryDataItem(255, v12);
  swift_getFunctionTypeMetadata1();
  return sub_1E5B3CB54();
}

uint64_t sub_1E5B24BC4(_OWORD *a1)
{
  v1 = *(a1 + 56);
  v4[0] = a1[1];
  v4[1] = v1;
  v2 = *(a1 + 88);
  v4[2] = *(a1 + 72);
  v4[3] = v2;
  type metadata accessor for LibraryDataItem(255, v4);
  swift_getFunctionTypeMetadata1();
  sub_1E5B3CB74();
  sub_1E5B3CB64();
  return *&v4[0];
}

uint64_t GalleryGridView.init(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v34[0] = a11;
  v34[1] = a12;
  v34[2] = a16;
  v34[3] = a17;
  v35 = a18;
  v36 = a20;
  v37 = a21;
  v24 = type metadata accessor for LibraryDataItem(255, v34);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v24);
  v25 = sub_1E5B3CCD4();

  v34[0] = sub_1E5B3CCC4();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9A8], v25);
  GalleryGridView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)(a1, a2, v34, a5, a6, a7, a9, x8_0, a10, a11, a12, a13, a14, a15, v25, a16, a17, a18, a20, a22, a23, a24, WitnessTable);
}

uint64_t GalleryGridView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23 = swift_allocObject();
  *(v23 + 16) = a10;
  *(v23 + 24) = a11;
  *(v23 + 32) = a12;
  *(v23 + 40) = a13;
  *(v23 + 48) = a14;
  *(v23 + 56) = a15;
  *(v23 + 64) = a16;
  *(v23 + 72) = a17;
  *(v23 + 80) = a18;
  *(v23 + 96) = a19;
  *(v23 + 104) = a20;
  *(v23 + 112) = a21;
  *(v23 + 120) = a22;
  *(v23 + 128) = a23;
  *(v23 + 136) = a1;
  *(v23 + 144) = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v47 = a10;
  v48 = a11;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  *&v53 = AssociatedConformanceWitness;
  v25 = type metadata accessor for GalleryFeature(255, &v47);
  swift_getWitnessTable(protocol conformance descriptor for GalleryFeature<A, B>, v25);
  v26 = sub_1E5B3D934();
  swift_getWitnessTable(MEMORY[0x1E6999B78], v26);
  *a8 = sub_1E5B3CE34();
  *(a8 + 8) = v27;
  *(a8 + 16) = v28 & 1;
  v50 = a15;
  *&v51 = a23;
  v29 = __swift_allocate_boxed_opaque_existential_1(&v47);
  v44 = *(a15 - 8);
  (*(v44 + 16))(v29, a3, a15);
  sub_1E5B249A4(&v47, a10, a11, v30, v31, v32, a16, a17, a18, a19, AssociatedConformanceWitness);
  v47 = a10;
  v48 = a11;
  v49 = a12;
  v50 = a13;
  *&v51 = a14;
  *(&v51 + 1) = a16;
  v52 = a17;
  v53 = a18;
  v54 = a19;
  v55 = AssociatedConformanceWitness;
  v56 = a20;
  v57 = a21;
  v58 = a22;
  type metadata accessor for GalleryGridView(0, &v47);

  v47 = a4;
  v48 = a5;
  swift_getFunctionTypeMetadata1();
  v33 = sub_1E5B3CB54();
  a6(v33);
  *&v37[24] = a19;
  *&v37[8] = a18;
  *v37 = a17;
  sub_1E5B24B48(a7, a9, a10, a11, v34, v35, a14, a16, *v37, *&v37[16], AssociatedConformanceWitness);

  return (*(v44 + 8))(a3, a15);
}

uint64_t sub_1E5B251A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v4 = sub_1E5B260B8();
  v51 = v22;
  v52 = MEMORY[0x1E6981148];
  v53 = *(a1 + 40);
  v5 = v53;
  v54 = v4;
  v6 = *(a1 + 112);
  v55 = MEMORY[0x1E6981138];
  v56 = v6;
  v7 = sub_1E5B3D1B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 32);
  v15 = *(a1 + 96);
  v46 = *(a1 + 80);
  v47 = v15;
  v16 = *(a1 + 120);
  v48 = v6;
  v49 = v16;
  v50 = v2;
  *&v17 = v14;
  *(&v17 + 1) = v5;
  v42 = *(a1 + 16);
  v43 = v17;
  v37 = v46;
  v38 = v15;
  v39 = v6;
  v40 = v16;
  v41 = v2;
  v24 = v42;
  v25 = v14;
  v26 = v5;
  v18 = *(a1 + 64);
  v44 = *(a1 + 48);
  v45 = v18;
  v33 = v42;
  v34 = v17;
  v35 = v44;
  v36 = v18;
  *&v19 = v6;
  *(&v19 + 1) = v16;
  v30 = v15;
  v31 = v19;
  v27 = v44;
  v28 = v18;
  v29 = v46;
  v32 = v2;
  sub_1E5B3D1A4();
  swift_getWitnessTable(MEMORY[0x1E697C7C8], v7, v22, v23);
  sub_1E5AF144C();
  v20 = *(v8 + 8);
  v20(v10, v7);
  sub_1E5AF144C();
  return (v20)(v13, v7);
}

uint64_t sub_1E5B254F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  v13 = type metadata accessor for GalleryGridView(0, v15);
  sub_1E5B248E4(v13);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  result = sub_1E5B3D644();
  *a8 = result;
  return result;
}

uint64_t sub_1E5B256B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void *, uint64_t))
{
  v48 = a8;
  v47 = a7;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v40 = a1;
  v43 = a9;
  v45 = a17;
  v46 = a16;
  v34[1] = a12;
  v39 = a11;
  v35 = a10;
  v44 = sub_1E5B3CB44();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v67 = a6;
  v68 = v47;
  v69 = v48;
  v70 = a10;
  v71 = a11;
  v72 = a12;
  v73 = a13;
  v74 = a14;
  v75 = a15;
  v76 = a16;
  v23 = type metadata accessor for GalleryGridView(0, &v63);
  sub_1E5B248E4(v23);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  v24 = v63;
  sub_1E5B248E4(v23);
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v52 = a5;
  v53 = a6;
  v54 = v47;
  v55 = v48;
  v56 = v35;
  v57 = v39;
  v58 = a12;
  v59 = a13;
  v60 = a14;
  v61 = a15;
  v62 = v46;
  swift_getKeyPath();
  v25 = v41;
  sub_1E5B3D904();

  v26 = v45(v25, v24);
  v28 = v27;
  (*(v42 + 8))(v25, v44);
  v63 = v26;
  v64 = v28;
  sub_1E5B04428();
  result = sub_1E5B3D394();
  v30 = v43;
  *v43 = result;
  v30[1] = v31;
  *(v30 + 16) = v32 & 1;
  v30[3] = v33;
  return result;
}

uint64_t sub_1E5B259DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a5 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v19;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v23;
  v30[5] = v24;
  v30[6] = v25;
  v31 = v26;
  v32 = v16;
  v33 = v27;
  v34 = a14;
  v35 = v28;
  type metadata accessor for GalleryGridView(0, v30);
  sub_1E5AF144C();
  sub_1E5AF144C();
  return (*(v15 + 8))(v18, a5);
}

uint64_t GalleryGridView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v56 = *(a1 + 40);
  v4 = sub_1E5B260B8();
  v57 = *(a1 + 112);
  *&v80 = v3;
  *(&v80 + 1) = MEMORY[0x1E6981148];
  *&v81 = v56;
  *(&v81 + 1) = v4;
  v82 = MEMORY[0x1E6981138];
  v83 = v57;
  v5 = sub_1E5B3D1B4();
  v6 = *(a1 + 72);
  v54 = *(a1 + 80);
  v55 = v6;
  v7 = *(a1 + 88);
  v52 = *(a1 + 96);
  v53 = v7;
  v82 = v6;
  v83 = v54;
  v84 = v7;
  v85 = v52;
  v8 = *(a1 + 56);
  v50 = *(a1 + 16);
  v51 = v8;
  v81 = v8;
  v80 = v50;
  v9 = type metadata accessor for LibraryDataItem(255, &v80);
  sub_1E5B3CCA4();
  v49 = *(a1 + 48);
  v10 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v11 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v9);
  v13 = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v14 = *(a1 + 120);
  v79[0] = v13;
  v79[1] = v14;
  v46 = v14;
  v47 = MEMORY[0x1E697E858];
  v78[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v79);
  v78[1] = sub_1E5B2611C();
  v48 = MEMORY[0x1E697F968];
  v15 = swift_getWitnessTable(MEMORY[0x1E697F968], v11, v78);
  *&v80 = v9;
  *(&v80 + 1) = v11;
  *&v81 = WitnessTable;
  *(&v81 + 1) = v15;
  v16 = sub_1E5B3CC34();
  v17 = sub_1E5B3CD44();
  v18 = swift_getWitnessTable(MEMORY[0x1E699D928], v16);
  v19 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8], MEMORY[0x1E699DAD0]);
  *&v80 = v16;
  *(&v80 + 1) = v17;
  *&v81 = v18;
  *(&v81 + 1) = v19;
  swift_getOpaqueTypeMetadata2();
  *&v80 = v16;
  *(&v80 + 1) = v17;
  *&v81 = v18;
  *(&v81 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_1E5B3D824();
  swift_getWitnessTable(MEMORY[0x1E697D7B8], v20);
  v21 = sub_1E5B3CDF4();
  v44 = swift_getWitnessTable(MEMORY[0x1E697BE60], v21);
  *&v80 = v21;
  *(&v80 + 1) = v44;
  v42 = MEMORY[0x1E697D298];
  swift_getOpaqueTypeMetadata2();
  v22 = sub_1E5B3CF34();
  v43 = sub_1E5B3CF34();
  v23 = v5;
  v45 = sub_1E5B3D164();
  v24 = sub_1E5B3D164();
  v25 = sub_1E5B3D624();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v42 - v30;
  v60 = v50;
  v61 = *(a1 + 32);
  v62 = v56;
  v63 = v49;
  v64 = v51;
  v65 = v55;
  v66 = v54;
  v67 = v53;
  v68 = v52;
  v69 = *(a1 + 104);
  v70 = v57;
  v71 = v46;
  v72 = v58;
  v32 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v23, v42);
  *&v80 = v21;
  *(&v80 + 1) = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x1E697E5D8];
  v77[0] = OpaqueTypeConformance2;
  v77[1] = MEMORY[0x1E697E5D8];
  v35 = v47;
  v76[0] = swift_getWitnessTable(v47, v22, v77);
  v76[1] = v34;
  v36 = swift_getWitnessTable(v35, v43, v76);
  v75[0] = v32;
  v75[1] = v36;
  v37 = v48;
  v38 = swift_getWitnessTable(v48, v45, v75);
  v74[0] = v32;
  v74[1] = v38;
  v39 = swift_getWitnessTable(v37, v24, v74);
  sub_1E5B3D614();
  v73 = v39;
  swift_getWitnessTable(MEMORY[0x1E6981600], v25, &v73);
  sub_1E5AF144C();
  v40 = *(v26 + 8);
  v40(v28, v25);
  sub_1E5AF144C();
  return (v40)(v31, v25);
}

unint64_t sub_1E5B260B8()
{
  result = qword_1ED031D48;
  if (!qword_1ED031D48)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
    result = swift_getWitnessTable(MEMORY[0x1E697D658], v3, v0, v1);
    atomic_store(result, &qword_1ED031D48);
  }

  return result;
}

unint64_t sub_1E5B2611C()
{
  result = qword_1ED032A00;
  if (!qword_1ED032A00)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
    v4[1] = sub_1E5B3CCA4();
    v4[2] = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &qword_1ED032A00);
  }

  return result;
}

uint64_t sub_1E5B26200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(void, void))
{
  v218 = a8;
  v219 = a4;
  v223 = a7;
  v221 = a5;
  v232 = a3;
  v230 = a2;
  v225 = a1;
  v216 = a9;
  v234 = a16;
  v222 = a15;
  v220 = a14;
  v233 = a13;
  v231 = a12;
  v229 = a11;
  v228 = a10;
  v201 = sub_1E5B3CC74();
  v196 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v195 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E5B3D184();
  v193 = *(v22 - 8);
  v194 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v192 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = a2;
  v264 = a3;
  v265 = a7;
  v266 = a8;
  v267 = a10;
  v268 = a11;
  v269 = a12;
  v270 = a13;
  v24 = type metadata accessor for LibraryDataItem(255, &v263);
  sub_1E5B3CCA4();
  v25 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v26 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v24);
  v279[0] = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v279[1] = v234;
  v28 = swift_getWitnessTable(MEMORY[0x1E697E858], v25, v279);
  v29 = sub_1E5B2611C();
  v278[0] = v28;
  v278[1] = v29;
  v30 = swift_getWitnessTable(MEMORY[0x1E697F968], v26, v278);
  v263 = v24;
  v264 = v26;
  v265 = WitnessTable;
  v266 = v30;
  v31 = sub_1E5B3CC34();
  v32 = sub_1E5B3CD44();
  v33 = swift_getWitnessTable(MEMORY[0x1E699D928], v31);
  v34 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8], MEMORY[0x1E699DAD0]);
  v263 = v31;
  v264 = v32;
  v265 = v33;
  v266 = v34;
  swift_getOpaqueTypeMetadata2();
  v263 = v31;
  v264 = v32;
  v265 = v33;
  v266 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = sub_1E5B3D824();
  v181 = swift_getWitnessTable(MEMORY[0x1E697D7B8], v35);
  v182 = v35;
  v36 = sub_1E5B3CDF4();
  v183 = *(v36 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v199 = &v179 - v38;
  v39 = swift_getWitnessTable(MEMORY[0x1E697BE60], v36, v37);
  v224 = v36;
  v263 = v36;
  v264 = v39;
  v226 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v185 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v184 = &v179 - v41;
  v186 = v42;
  v43 = sub_1E5B3CF34();
  v188 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v200 = &v179 - v44;
  v215 = v45;
  v46 = sub_1E5B3CF34();
  v191 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v190 = &v179 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v187 = &v179 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v189 = &v179 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v53 = sub_1E5B260B8();
  v263 = v52;
  v264 = MEMORY[0x1E6981148];
  v55 = v221;
  v54 = v222;
  v265 = v221;
  v266 = v53;
  v267 = MEMORY[0x1E6981138];
  v268 = v222;
  v56 = sub_1E5B3D1B4();
  v214 = v46;
  v57 = sub_1E5B3D164();
  v198 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v197 = &v179 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v206 = &v179 - v60;
  v205 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v204 = &v179 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v217 = &v179 - v64;
  v65 = sub_1E5B3CCF4();
  v66 = sub_1E5B3DA74();
  v277 = swift_getWitnessTable(MEMORY[0x1E699D9E8], v65);
  swift_getWitnessTable(MEMORY[0x1E69E6320], v66, &v277);
  v202 = v66;
  v208 = sub_1E5B3D8C4();
  v180 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v207 = (&v179 - v67);
  v227 = v56;
  v213 = v57;
  v68 = sub_1E5B3D164();
  v211 = *(v68 - 8);
  v212 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v210 = &v179 - v69;
  v263 = v230;
  v264 = v232;
  v71 = v218;
  v70 = v219;
  v265 = v219;
  v266 = v55;
  v72 = v55;
  v73 = v223;
  v267 = a6;
  v268 = v223;
  v269 = v218;
  v270 = v228;
  v271 = v229;
  v272 = v231;
  v74 = v234;
  v75 = v220;
  v273 = v233;
  v274 = v220;
  v275 = v54;
  v276 = v234;
  v209 = type metadata accessor for GalleryGridView(0, &v263);
  sub_1E5B248E4(v209);
  v235 = v230;
  v236 = v232;
  v76 = v72;
  v77 = v207;
  v237 = v70;
  v238 = v76;
  v203 = a6;
  v239 = a6;
  v240 = v73;
  v241 = v71;
  v242 = v228;
  v243 = v229;
  v244 = v231;
  v245 = v233;
  v246 = v75;
  v247 = v54;
  v248 = v74;
  swift_getKeyPath();
  sub_1E5B3D904();
  v78 = v208;

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v81 = *v77;
    v84 = v227;
    v80 = v202;
    goto LABEL_6;
  }

  v80 = v202;
  if (EnumCaseMultiPayload != 1)
  {
    (*(v180 + 8))(v77, v78);
LABEL_13:
    v165 = v204;
    sub_1E5B251A8(v209, v204);
    v164 = v227;
    v166 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v227);
    sub_1E5AF144C();
    v234 = *(v205 + 8);
    v234(v165, v164);
    sub_1E5AF144C();
    v263 = v224;
    v264 = v226;
    v251[0] = swift_getOpaqueTypeConformance2();
    v161 = MEMORY[0x1E697E5D8];
    v251[1] = MEMORY[0x1E697E5D8];
    v167 = MEMORY[0x1E697E858];
    v152 = v213;
    v99 = v215;
    v250[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v215, v251);
    v250[1] = v161;
    v168 = v167;
    v163 = v214;
    v169 = swift_getWitnessTable(v168, v214, v250);
    v249[0] = v166;
    v249[1] = v169;
    v170 = swift_getWitnessTable(MEMORY[0x1E697F968], v152, v249);
    v158 = v210;
    sub_1E5AF7058(v165, v164, v152, v166, v170);
    v171 = v234;
    v234(v165, v164);
    v171(v217, v164);
    v149 = v224;
    goto LABEL_14;
  }

  v81 = *v77;
  v82 = sub_1E5B3CAF4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v82 - 8) + 8))(v77 + *(TupleTypeMetadata2 + 48), v82);
  v84 = v227;
LABEL_6:
  v263 = v81;
  swift_getWitnessTable(MEMORY[0x1E69E6340], v80);
  v85 = sub_1E5B3DB64();
  v86 = v226;
  if (v85)
  {

    v87 = v204;
    sub_1E5B251A8(v209, v204);
    v88 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v84);
    v89 = v217;
    sub_1E5AF144C();
    v90 = *(v205 + 8);
    v90(v87, v84);
    sub_1E5AF144C();
    v263 = v224;
    v264 = v86;
    v253[0] = swift_getOpaqueTypeConformance2();
    v91 = MEMORY[0x1E697E5D8];
    v253[1] = MEMORY[0x1E697E5D8];
    v92 = MEMORY[0x1E697E858];
    v93 = v86;
    v94 = v215;
    v252[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v215, v253);
    v252[1] = v91;
    v95 = v92;
    v96 = v214;
    v97 = swift_getWitnessTable(v95, v214, v252);
    sub_1E5AF7058(v87, v227, v96, v88, v97);
    v98 = v227;
    v90(v87, v227);
    v90(v89, v98);
    v99 = v94;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v85);
    v100 = v232;
    *(&v179 - 16) = v230;
    *(&v179 - 15) = v100;
    v101 = v221;
    *(&v179 - 14) = v219;
    *(&v179 - 13) = v101;
    v102 = v223;
    *(&v179 - 12) = v203;
    *(&v179 - 11) = v102;
    v104 = v228;
    v103 = v229;
    *(&v179 - 10) = v218;
    *(&v179 - 9) = v104;
    *(&v179 - 8) = v103;
    v105 = v233;
    *(&v179 - 7) = v231;
    *(&v179 - 6) = v105;
    v106 = v222;
    *(&v179 - 5) = v220;
    *(&v179 - 4) = v106;
    v107 = v225;
    *(&v179 - 3) = v234;
    *(&v179 - 2) = v107;
    *(&v179 - 1) = v81;
    v108 = sub_1E5B3D284();
    sub_1E5AF0C6C(v108, sub_1E5B2950C, (&v179 - 18), v182, v181);

    v109 = v192;
    sub_1E5B3D174();
    v110 = sub_1E5B3D284();
    sub_1E5B3D274();
    sub_1E5B3D274();
    if (sub_1E5B3D274() != v110)
    {
      sub_1E5B3D274();
    }

    v111 = v184;
    v112 = v224;
    v113 = v199;
    sub_1E5B3D4E4();
    (*(v193 + 8))(v109, v194);
    (*(v183 + 8))(v113, v112);
    sub_1E5B3D2D4();
    v114 = v209;
    v115 = sub_1E5B248E4(v209);
    MEMORY[0x1EEE9AC00](v115);
    v116 = v232;
    *(&v179 - 14) = v230;
    *(&v179 - 13) = v116;
    v117 = v218;
    v118 = v221;
    *(&v179 - 12) = v219;
    *(&v179 - 11) = v118;
    v119 = v223;
    *(&v179 - 10) = v203;
    *(&v179 - 9) = v119;
    v120 = v228;
    v121 = v229;
    *(&v179 - 8) = v117;
    *(&v179 - 7) = v120;
    v122 = v231;
    *(&v179 - 6) = v121;
    *(&v179 - 5) = v122;
    v123 = v220;
    *(&v179 - 4) = v233;
    *(&v179 - 3) = v123;
    v124 = v234;
    *(&v179 - 2) = v222;
    *(&v179 - 1) = v124;
    swift_getKeyPath();
    v125 = v195;
    sub_1E5B3D904();

    sub_1E5B3CC54();
    v217 = *(v196 + 8);
    (v217)(v125, v201);
    v263 = v112;
    v264 = v226;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v127 = v186;
    sub_1E5B3D534();
    (*(v185 + 8))(v111, v127);
    LODWORD(v208) = sub_1E5B3D2F4();
    v128 = sub_1E5B248E4(v114);
    MEMORY[0x1EEE9AC00](v128);
    v129 = v232;
    *(&v179 - 14) = v230;
    *(&v179 - 13) = v129;
    v130 = v221;
    *(&v179 - 12) = v219;
    *(&v179 - 11) = v130;
    v131 = v223;
    *(&v179 - 10) = v203;
    *(&v179 - 9) = v131;
    v132 = v228;
    v133 = v229;
    *(&v179 - 8) = v117;
    *(&v179 - 7) = v132;
    v134 = v231;
    *(&v179 - 6) = v133;
    *(&v179 - 5) = v134;
    v135 = v220;
    *(&v179 - 4) = v233;
    *(&v179 - 3) = v135;
    v136 = v234;
    *(&v179 - 2) = v222;
    *(&v179 - 1) = v136;
    swift_getKeyPath();
    sub_1E5B3D904();

    sub_1E5B3CC64();
    (v217)(v125, v201);
    v262[0] = OpaqueTypeConformance2;
    v91 = MEMORY[0x1E697E5D8];
    v262[1] = MEMORY[0x1E697E5D8];
    v137 = MEMORY[0x1E697E858];
    v99 = v215;
    v138 = swift_getWitnessTable(MEMORY[0x1E697E858], v215, v262);
    v139 = v187;
    v140 = v200;
    sub_1E5B3D534();
    (*(v188 + 8))(v140, v99);
    v261[0] = v138;
    v261[1] = v91;
    v96 = v214;
    v141 = swift_getWitnessTable(v137, v214, v261);
    v142 = v189;
    sub_1E5AF144C();
    v143 = *(v191 + 8);
    v143(v139, v96);
    v144 = v190;
    sub_1E5AF144C();
    v145 = v227;
    v146 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v227);
    sub_1E5AF7150(v144, v145, v96, v146, v141);
    v143(v144, v96);
    v147 = v142;
    v93 = v226;
    v143(v147, v96);
    v98 = v145;
  }

  v148 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v98);
  v234 = v148;
  v149 = v224;
  v263 = v224;
  v264 = v93;
  v260[0] = swift_getOpaqueTypeConformance2();
  v260[1] = v91;
  v150 = MEMORY[0x1E697E858];
  v259[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v99, v260);
  v259[1] = v91;
  v151 = swift_getWitnessTable(v150, v96, v259);
  v258[0] = v148;
  v258[1] = v151;
  v152 = v213;
  v153 = swift_getWitnessTable(MEMORY[0x1E697F968], v213, v258);
  v154 = v197;
  v155 = v206;
  sub_1E5AF144C();
  v156 = v96;
  v157 = v155;
  v158 = v210;
  sub_1E5AF7150(v154, v227, v152, v234, v153);
  v159 = *(v198 + 8);
  v160 = v154;
  v161 = MEMORY[0x1E697E5D8];
  v159(v160, v152);
  v162 = v157;
  v163 = v156;
  v164 = v227;
  v159(v162, v152);
LABEL_14:
  v172 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v164);
  v263 = v149;
  v264 = v226;
  v257[0] = swift_getOpaqueTypeConformance2();
  v257[1] = v161;
  v173 = MEMORY[0x1E697E858];
  v256[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v99, v257);
  v256[1] = v161;
  v174 = swift_getWitnessTable(v173, v163, v256);
  v255[0] = v172;
  v255[1] = v174;
  v175 = MEMORY[0x1E697F968];
  v176 = swift_getWitnessTable(MEMORY[0x1E697F968], v152, v255);
  v254[0] = v172;
  v254[1] = v176;
  v177 = v212;
  swift_getWitnessTable(v175, v212, v254);
  sub_1E5AF144C();
  return (*(v211 + 8))(v158, v177);
}

uint64_t sub_1E5B2770C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v107 = a8;
  v102 = a5;
  v103 = a6;
  v109 = a3;
  v110 = a4;
  v93 = a2;
  v94 = a9;
  v104 = a1;
  v105 = a17;
  v96 = a16;
  v99 = a15;
  v108 = a12;
  v112 = a11;
  v111 = a10;
  v21 = sub_1E5B3D194();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v92 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1E5B3CBC4();
  v106 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a3;
  v128 = a4;
  v129 = a8;
  v130 = a10;
  v131 = a11;
  v132 = a12;
  v133 = a13;
  v134 = a14;
  v101 = a13;
  v24 = type metadata accessor for LibraryDataItem(255, &v127);
  sub_1E5B3CCA4();
  v25 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v26 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v24);
  v142[0] = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v142[1] = v105;
  v28 = swift_getWitnessTable(MEMORY[0x1E697E858], v25, v142);
  v29 = sub_1E5B2611C();
  v141[0] = v28;
  v141[1] = v29;
  v30 = swift_getWitnessTable(MEMORY[0x1E697F968], v26, v141);
  v127 = v24;
  v128 = v26;
  v129 = WitnessTable;
  v130 = v30;
  v31 = sub_1E5B3CC34();
  v32 = sub_1E5B3CD44();
  v33 = swift_getWitnessTable(MEMORY[0x1E699D928], v31);
  v34 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8], MEMORY[0x1E699DAD0]);
  v127 = v31;
  v128 = v32;
  v129 = v33;
  v130 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v127 = v31;
  v128 = v32;
  v129 = v33;
  v130 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = OpaqueTypeMetadata2;
  v86 = OpaqueTypeConformance2;
  v89 = sub_1E5B3D824();
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v88 = &v81 - v39;
  v127 = v109;
  v128 = v110;
  v40 = v102;
  v41 = v103;
  v129 = v102;
  v130 = v103;
  v42 = a7;
  v43 = v107;
  v131 = a7;
  v132 = v107;
  v133 = v111;
  v134 = v112;
  v135 = v108;
  v136 = a13;
  v44 = v99;
  v137 = a14;
  v138 = v99;
  v45 = v96;
  v46 = v105;
  v139 = v96;
  v140 = v105;
  v85 = type metadata accessor for GalleryGridView(0, &v127);
  sub_1E5B248E4(v85);
  v113 = v109;
  v114 = v110;
  v115 = v40;
  v116 = v41;
  v100 = v42;
  v117 = v42;
  v118 = v43;
  v119 = v111;
  v120 = v112;
  v121 = v108;
  v122 = v101;
  v95 = a14;
  v123 = a14;
  v124 = v44;
  v47 = v45;
  v125 = v45;
  v126 = v46;
  swift_getKeyPath();
  v48 = v97;
  sub_1E5B3D904();

  v49 = sub_1E5B3CB94();
  v50 = *(v106 + 8);
  v106 += 8;
  result = v50(v48, v98);
  if (v49 < 0)
  {
    __break(1u);
  }

  else
  {
    v83 = &v81;
    MEMORY[0x1EEE9AC00](result);
    v53 = v109;
    v52 = v110;
    *(&v81 - 16) = v109;
    *(&v81 - 15) = v52;
    v54 = v102;
    v55 = v103;
    *(&v81 - 14) = v102;
    *(&v81 - 13) = v55;
    v56 = v99;
    v57 = v107;
    *(&v81 - 12) = v100;
    *(&v81 - 11) = v57;
    v58 = v112;
    *(&v81 - 10) = v111;
    *(&v81 - 9) = v58;
    v59 = v101;
    *(&v81 - 8) = v108;
    *(&v81 - 7) = v59;
    *(&v81 - 6) = v95;
    *(&v81 - 5) = v56;
    *(&v81 - 4) = v47;
    v60 = v105;
    *(&v81 - 3) = v105;
    v82 = v50;
    v84 = sub_1E5B28250(sub_1E5B29674, (&v81 - 18), 0, v61);
    v83 = sub_1E5B3D124();
    v62 = sub_1E5B248E4(v85);
    MEMORY[0x1EEE9AC00](v62);
    *(&v81 - 14) = v53;
    *(&v81 - 13) = v52;
    *(&v81 - 12) = v54;
    *(&v81 - 11) = v55;
    v63 = v101;
    v64 = v107;
    v65 = v108;
    *(&v81 - 10) = v100;
    *(&v81 - 9) = v64;
    v66 = v112;
    *(&v81 - 8) = v111;
    *(&v81 - 7) = v66;
    *(&v81 - 6) = v65;
    *(&v81 - 5) = v63;
    v67 = v95;
    *(&v81 - 4) = v95;
    *(&v81 - 3) = v56;
    swift_getKeyPath();
    v68 = v97;
    sub_1E5B3D904();

    sub_1E5B3CBB4();
    v69 = v82(v68, v98);
    MEMORY[0x1EEE9AC00](v69);
    v70 = v110;
    *(&v81 - 16) = v109;
    *(&v81 - 15) = v70;
    v71 = v103;
    *(&v81 - 14) = v102;
    *(&v81 - 13) = v71;
    v72 = v107;
    *(&v81 - 12) = v100;
    *(&v81 - 11) = v72;
    v73 = v112;
    *(&v81 - 10) = v111;
    *(&v81 - 9) = v73;
    *(&v81 - 8) = v65;
    *(&v81 - 7) = v63;
    *(&v81 - 6) = v67;
    *(&v81 - 5) = v56;
    *(&v81 - 4) = v96;
    *(&v81 - 3) = v60;
    v80 = v93;
    v74 = v86;
    sub_1E5B29404();
    v79 = v74;
    v75 = v87;
    sub_1E5B3D814();
    v76 = v89;
    swift_getWitnessTable(MEMORY[0x1E697D7B8], v89);
    v77 = v88;
    sub_1E5AF144C();
    v78 = *(v91 + 8);
    v78(v75, v76);
    sub_1E5AF144C();
    return (v78)(v77, v76);
  }

  return result;
}

uint64_t sub_1E5B27EA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = a6;
  v38 = a4;
  v36 = a3;
  v46 = a1;
  v49 = a8;
  v44 = a16;
  v51 = a15;
  v50 = a14;
  v37 = a13;
  v43 = a12;
  v42 = a11;
  v39 = a10;
  v41 = a9;
  v48 = sub_1E5B3CBC4();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E5B3D794();
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v25 = xmmword_1E5B44510;
  (*(v26 + 104))(v25, *MEMORY[0x1E697D748]);
  v66[0] = a2;
  v66[1] = a3;
  v66[2] = a4;
  v66[3] = a5;
  v66[4] = a6;
  v66[5] = a7;
  v27 = a7;
  v28 = v41;
  v66[6] = v41;
  v66[7] = a10;
  v29 = v42;
  v30 = v43;
  v66[8] = v42;
  v66[9] = v43;
  v66[10] = a13;
  v66[11] = v50;
  v31 = v44;
  v66[12] = v51;
  v66[13] = v44;
  v32 = type metadata accessor for GalleryGridView(0, v66);
  sub_1E5B248E4(v32);
  v52 = a2;
  v53 = v36;
  v54 = v38;
  v55 = a5;
  v56 = v40;
  v57 = v27;
  v58 = v28;
  v59 = v39;
  v60 = v29;
  v61 = v30;
  v62 = v37;
  v63 = v50;
  v64 = v51;
  v65 = v31;
  swift_getKeyPath();
  v33 = v45;
  sub_1E5B3D904();

  sub_1E5B3CBB4();
  (*(v47 + 8))(v33, v48);
  sub_1E5B3D7C4();
  return sub_1E5B3D7B4();
}

uint64_t sub_1E5B28250(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_1E5B3D7A4();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1E5B29B8C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v11 = 0;
    v10 = v30;
    v12 = v27;
    if (v27 <= a3)
    {
      v12 = a3;
    }

    v21 = v12 - a3 + 1;
    v22 = v26 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v11;
      v14 = v8;
      v15 = v28;
      v24(&v29);
      v28 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1E5B29B8C((v16 > 1), v17 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17;
      v8 = v14;
      (*(v26 + 32))(v18, v14, v23);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v21 == ++v11)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1E5B28488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v99 = a7;
  v88 = a6;
  v86 = a5;
  v91 = a2;
  v85 = a1;
  v93 = a9;
  v94 = a17;
  v89 = a16;
  v87 = a15;
  v98 = a14;
  v97 = a13;
  v96 = a12;
  v95 = a10;
  v100 = sub_1E5B3CD44();
  v92 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v90 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a3;
  v103 = a3;
  v104 = a4;
  v81 = a4;
  v105 = a5;
  v106 = a6;
  v107 = a7;
  v108 = a8;
  v83 = a8;
  v109 = a10;
  v110 = a11;
  v84 = a11;
  v111 = a12;
  v112 = a13;
  v113 = a14;
  v114 = a15;
  v115 = a16;
  v116 = a17;
  v77 = type metadata accessor for GalleryGridView(0, &v103);
  v79 = *(v77 - 1);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v66 - v24;
  v103 = a3;
  v104 = a4;
  v105 = a8;
  v106 = a10;
  v107 = a11;
  v108 = a12;
  v109 = a13;
  v110 = a14;
  v25 = type metadata accessor for LibraryDataItem(255, &v103);
  sub_1E5B3CCA4();
  v26 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v27 = sub_1E5B3D164();
  v28 = v25;
  v74 = v25;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v25);
  v102[0] = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v102[1] = a17;
  v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v26, v102);
  v31 = sub_1E5B2611C();
  v101[0] = v30;
  v101[1] = v31;
  v75 = v27;
  v73 = swift_getWitnessTable(MEMORY[0x1E697F968], v27, v101);
  v103 = v28;
  v104 = v27;
  v105 = WitnessTable;
  v106 = v73;
  v32 = sub_1E5B3CC34();
  v76 = *(v32 - 8);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v70 = &v66 - v34;
  v35 = swift_getWitnessTable(MEMORY[0x1E699D928], v32, v33);
  v69 = v35;
  v68 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8], MEMORY[0x1E699DAD0]);
  v103 = v32;
  v104 = v100;
  v105 = v35;
  v106 = v68;
  v71 = MEMORY[0x1E699DB40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v38 = &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v67 = &v66 - v40;
  v41 = v77;
  v42 = v85;
  sub_1E5B24A6C(v77);
  v66 = v107;
  v43 = __swift_project_boxed_opaque_existential_1(&v103, v106);
  v44 = MEMORY[0x1EEE9AC00](v43);
  (*(v46 + 16))(&v66 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
  v47 = v79;
  v48 = v78;
  (*(v79 + 16))(v78, v42, v41);
  v49 = (*(v47 + 80) + 128) & ~*(v47 + 80);
  v50 = swift_allocObject();
  v51 = v81;
  *(v50 + 2) = v82;
  *(v50 + 3) = v51;
  v52 = v88;
  *(v50 + 4) = v86;
  *(v50 + 5) = v52;
  v53 = v83;
  *(v50 + 6) = v99;
  *(v50 + 7) = v53;
  v54 = v84;
  *(v50 + 8) = v95;
  *(v50 + 9) = v54;
  v55 = v97;
  *(v50 + 10) = v96;
  *(v50 + 11) = v55;
  v56 = v87;
  *(v50 + 12) = v98;
  *(v50 + 13) = v56;
  v57 = v94;
  *(v50 + 14) = v89;
  *(v50 + 15) = v57;
  (*(v47 + 32))(&v50[v49], v48, v41);

  v58 = v70;
  sub_1E5B3CC24();
  v59 = v90;
  sub_1E5B3CD24();
  v60 = v100;
  v61 = v69;
  v62 = v68;
  sub_1E5B3D3D4();
  (*(v92 + 8))(v59, v60);
  (*(v76 + 8))(v58, v32);
  __swift_destroy_boxed_opaque_existential_1(&v103);
  v103 = v32;
  v104 = v60;
  v105 = v61;
  v106 = v62;
  swift_getOpaqueTypeConformance2();
  v63 = v67;
  sub_1E5AF144C();
  v64 = *(v72 + 8);
  v64(v38, OpaqueTypeMetadata2);
  sub_1E5AF144C();
  return (v64)(v63, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B28CF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v75 = a5;
  v62 = a4;
  v61 = a3;
  v71 = a1;
  v72 = a8;
  v73 = a17;
  v66 = a16;
  v74 = a15;
  v65 = a14;
  v64 = a12;
  v60 = a11;
  v63 = a9;
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a9;
  v84 = a10;
  v85 = a11;
  v51 = a10;
  v86 = a12;
  v87 = a13;
  v88 = a14;
  v89 = a15;
  v90 = a16;
  v91 = a17;
  v20 = type metadata accessor for GalleryGridView(0, &v78);
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51 - v22;
  v53 = &v51 - v22;
  sub_1E5B3CCA4();
  v24 = a7;
  v54 = a7;
  v69 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v67 = sub_1E5B3D164();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v68 = &v51 - v27;
  v58 = sub_1E5B24AF0(v20);
  v57 = v28;
  v52 = v20;
  v56 = sub_1E5B24BC4(v20);
  v55 = v29;
  v30 = v21;
  (*(v21 + 16))(v23, a2, v20);
  v31 = (*(v21 + 80) + 128) & ~*(v21 + 80);
  v32 = swift_allocObject();
  v33 = v61;
  v34 = v62;
  *(v32 + 2) = v61;
  *(v32 + 3) = v34;
  *(v32 + 4) = v75;
  *(v32 + 5) = a6;
  *(v32 + 6) = v24;
  v35 = v63;
  *(v32 + 7) = v63;
  *(v32 + 8) = a10;
  v36 = v60;
  v37 = v64;
  *(v32 + 9) = v60;
  *(v32 + 10) = v37;
  *(v32 + 11) = a13;
  v38 = v65;
  v39 = v74;
  *(v32 + 12) = v65;
  *(v32 + 13) = v39;
  v40 = v73;
  *(v32 + 14) = v66;
  *(v32 + 15) = v40;
  (*(v30 + 32))(&v32[v31], v53, v52);
  v78 = v33;
  v79 = v34;
  v80 = v35;
  v81 = v51;
  v82 = v36;
  v83 = v37;
  v84 = a13;
  v85 = v38;
  v41 = type metadata accessor for LibraryDataItem(255, &v78);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v41);
  v42 = sub_1E5B3CCF4();
  v43 = v73;
  v44 = v59;
  sub_1E5B3B498(v58, v57, v56, v55, sub_1E5B29AA0, v32, v42, v75, v59, v54, v74, v73);

  v77[0] = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v77[1] = v43;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v69, v77);
  v46 = sub_1E5B2611C();
  v76[0] = WitnessTable;
  v76[1] = v46;
  v47 = v67;
  swift_getWitnessTable(MEMORY[0x1E697F968], v67, v76);
  v48 = v68;
  sub_1E5AF144C();
  v49 = *(v70 + 8);
  v49(v44, v47);
  sub_1E5AF144C();
  return (v49)(v48, v47);
}

uint64_t sub_1E5B29250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  v28 = a8;
  v26 = a7;
  v24 = a6;
  v23 = a5;
  v29 = a2;
  v30 = a1;
  v27 = a15;
  v25 = a14;
  v31 = a4;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v17 = type metadata accessor for GalleryAction(0, &v31);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  v31 = a3;
  v32 = a4;
  v33 = v23;
  v34 = v24;
  v35 = v26;
  v36 = v28;
  v37 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v21 = type metadata accessor for GalleryGridView(0, &v31);
  sub_1E5B248E4(v21);
  (*(*(a4 - 8) + 16))(v20, v30, a4);
  sub_1E5B3D914();

  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1E5B29404()
{
  sub_1E5B3D194();
  sub_1E5B2972C(&qword_1ED032A10, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1E5B3DE44();
}

uint64_t sub_1E5B2972C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1E5B29774@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = v2[3];
  v15 = v2[5];
  v16 = v2[4];
  v3 = v2[7];
  v14 = v2[6];
  v4 = v2[8];
  v5 = v2[9];
  v7 = v2[10];
  v6 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];
  v11 = v2[15];
  v21[0] = v2[2];
  v18 = v21[0];
  v21[1] = v17;
  v21[2] = v16;
  v21[3] = v15;
  v21[4] = v14;
  v21[5] = v3;
  v21[6] = v4;
  v21[7] = v5;
  v21[8] = v7;
  v21[9] = v6;
  v21[10] = v8;
  v21[11] = v9;
  v21[12] = v10;
  v21[13] = v11;
  v12 = *(type metadata accessor for GalleryGridView(0, v21) - 8);
  return sub_1E5B28CF4(a1, v2 + ((*(v12 + 80) + 128) & ~*(v12 + 80)), v18, v17, v16, v15, v14, a2, v3, v4, v5, v7, v6, v8, v9, v10, v11);
}

uint64_t objectdestroy_10Tm()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v17 = *(v0 + 48);
  v15 = *(v0 + 56);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 88);
  v18 = *(v0 + 16);
  v16 = v18;
  *&v19 = v2;
  *(&v19 + 1) = v1;
  v20 = v17;
  v21 = v15;
  v22 = v4;
  v23 = v3;
  v24 = v5;
  v6 = *(v0 + 112);
  v25 = *(v0 + 96);
  v14 = v25;
  v26 = v6;
  v7 = (type metadata accessor for GalleryGridView(0, &v18) - 8);
  v8 = (v0 + ((*(*v7 + 80) + 128) & ~*(*v7 + 80)));
  sub_1E5AF0DEC(*v8, v8[1]);
  __swift_destroy_boxed_opaque_existential_1(v8 + 3);

  v9 = v7[36];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5B3CB74();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v7[37];
  v19 = v15;
  v18 = v16;
  v20 = v4;
  *&v21 = v3;
  *(&v21 + 1) = v5;
  v22 = v14;
  type metadata accessor for LibraryDataItem(255, &v18);
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5B3CB74();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  (*(*(v1 - 8) + 8))(v8 + v7[38], v1);
  return swift_deallocObject();
}

uint64_t sub_1E5B29AA0(uint64_t a1)
{
  v18 = v1[3];
  v16 = v1[5];
  v17 = v1[4];
  v14 = v1[7];
  v15 = v1[6];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = v1[15];
  v20[0] = v1[2];
  v2 = v20[0];
  v20[1] = v18;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = v14;
  v20[6] = v3;
  v20[7] = v4;
  v20[8] = v5;
  v20[9] = v6;
  v20[10] = v7;
  v20[11] = v8;
  v20[12] = v9;
  v20[13] = v10;
  v11 = *(type metadata accessor for GalleryGridView(0, v20) - 8);
  *(&v13 + 1) = v9;
  *&v13 = v8;
  return sub_1E5B29250(a1, v1 + ((*(v11 + 80) + 128) & ~*(v11 + 80)), v2, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v13, v10);
}

void *sub_1E5B29B8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5B29BAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E5B29BAC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032A18, &qword_1E5B44648);
  v10 = *(sub_1E5B3D7A4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E5B3D7A4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E5B29D84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1E5B29DE8(_OWORD *a1)
{
  v2 = sub_1E5B3CBC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5B248E4(a1);
  v6 = a1[2];
  v12[0] = a1[1];
  v12[1] = v6;
  v7 = a1[4];
  v12[2] = a1[3];
  v12[3] = v7;
  v8 = a1[6];
  v12[4] = a1[5];
  v12[5] = v8;
  v12[6] = a1[7];
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CBB4();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t GalleryView.init(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v34[0] = a11;
  v34[1] = a12;
  v34[2] = a16;
  v34[3] = a17;
  v35 = a18;
  v36 = a20;
  v37 = a21;
  v24 = type metadata accessor for LibraryDataItem(255, v34);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v24);
  v25 = sub_1E5B3CCD4();

  v34[0] = sub_1E5B3CCC4();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E699D9A8], v25);
  GalleryView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)(a1, a2, v34, a5, a6, a7, a9, x8_0, a10, a11, a12, a13, a14, a15, v25, a16, a17, a18, a20, a22, a23, a24, WitnessTable);
}

uint64_t GalleryView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23 = swift_allocObject();
  *(v23 + 16) = a10;
  *(v23 + 24) = a11;
  *(v23 + 32) = a12;
  *(v23 + 40) = a13;
  *(v23 + 48) = a14;
  *(v23 + 56) = a15;
  *(v23 + 64) = a16;
  *(v23 + 72) = a17;
  *(v23 + 80) = a18;
  *(v23 + 96) = a19;
  *(v23 + 104) = a20;
  *(v23 + 112) = a21;
  *(v23 + 120) = a22;
  *(v23 + 128) = a23;
  *(v23 + 136) = a1;
  *(v23 + 144) = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v47 = a10;
  v48 = a11;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  *&v53 = AssociatedConformanceWitness;
  v25 = type metadata accessor for GalleryFeature(255, &v47);
  swift_getWitnessTable(protocol conformance descriptor for GalleryFeature<A, B>, v25);
  v26 = sub_1E5B3D934();
  swift_getWitnessTable(MEMORY[0x1E6999B78], v26);
  *a8 = sub_1E5B3CE34();
  *(a8 + 8) = v27;
  *(a8 + 16) = v28 & 1;
  v50 = a15;
  *&v51 = a23;
  v29 = __swift_allocate_boxed_opaque_existential_1(&v47);
  v44 = *(a15 - 8);
  (*(v44 + 16))(v29, a3, a15);
  sub_1E5B249A4(&v47, a10, a11, v30, v31, v32, a16, a17, a18, a19, AssociatedConformanceWitness);
  v47 = a10;
  v48 = a11;
  v49 = a12;
  v50 = a13;
  *&v51 = a14;
  *(&v51 + 1) = a16;
  v52 = a17;
  v53 = a18;
  v54 = a19;
  v55 = AssociatedConformanceWitness;
  v56 = a20;
  v57 = a21;
  v58 = a22;
  type metadata accessor for GalleryView(0, &v47);

  v47 = a4;
  v48 = a5;
  swift_getFunctionTypeMetadata1();
  v33 = sub_1E5B3CB54();
  a6(v33);
  *&v37[24] = a19;
  *&v37[8] = a18;
  *v37 = a17;
  sub_1E5B24B48(a7, a9, a10, a11, v34, v35, a14, a16, *v37, *&v37[16], AssociatedConformanceWitness);

  return (*(v44 + 8))(a3, a15);
}

uint64_t sub_1E5B2A454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v4 = sub_1E5B260B8();
  v51 = v22;
  v52 = MEMORY[0x1E6981148];
  v53 = *(a1 + 40);
  v5 = v53;
  v54 = v4;
  v6 = *(a1 + 112);
  v55 = MEMORY[0x1E6981138];
  v56 = v6;
  v7 = sub_1E5B3D1B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 32);
  v15 = *(a1 + 96);
  v46 = *(a1 + 80);
  v47 = v15;
  v16 = *(a1 + 120);
  v48 = v6;
  v49 = v16;
  v50 = v2;
  *&v17 = v14;
  *(&v17 + 1) = v5;
  v42 = *(a1 + 16);
  v43 = v17;
  v37 = v46;
  v38 = v15;
  v39 = v6;
  v40 = v16;
  v41 = v2;
  v24 = v42;
  v25 = v14;
  v26 = v5;
  v18 = *(a1 + 64);
  v44 = *(a1 + 48);
  v45 = v18;
  v33 = v42;
  v34 = v17;
  v35 = v44;
  v36 = v18;
  *&v19 = v6;
  *(&v19 + 1) = v16;
  v30 = v15;
  v31 = v19;
  v27 = v44;
  v28 = v18;
  v29 = v46;
  v32 = v2;
  sub_1E5B3D1A4();
  swift_getWitnessTable(MEMORY[0x1E697C7C8], v7, v22, v23);
  sub_1E5AF144C();
  v20 = *(v8 + 8);
  v20(v10, v7);
  sub_1E5AF144C();
  return (v20)(v13, v7);
}

uint64_t sub_1E5B2A7A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  v13 = type metadata accessor for GalleryView(0, v15);
  sub_1E5B248E4(v13);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  result = sub_1E5B3D644();
  *a8 = result;
  return result;
}

uint64_t sub_1E5B2A95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void *, uint64_t))
{
  v48 = a8;
  v47 = a7;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v40 = a1;
  v43 = a9;
  v45 = a17;
  v46 = a16;
  v34[1] = a12;
  v39 = a11;
  v35 = a10;
  v44 = sub_1E5B3CB44();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v67 = a6;
  v68 = v47;
  v69 = v48;
  v70 = a10;
  v71 = a11;
  v72 = a12;
  v73 = a13;
  v74 = a14;
  v75 = a15;
  v76 = a16;
  v23 = type metadata accessor for GalleryView(0, &v63);
  sub_1E5B248E4(v23);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  v24 = v63;
  sub_1E5B248E4(v23);
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v52 = a5;
  v53 = a6;
  v54 = v47;
  v55 = v48;
  v56 = v35;
  v57 = v39;
  v58 = a12;
  v59 = a13;
  v60 = a14;
  v61 = a15;
  v62 = v46;
  swift_getKeyPath();
  v25 = v41;
  sub_1E5B3D904();

  v26 = v45(v25, v24);
  v28 = v27;
  (*(v42 + 8))(v25, v44);
  v63 = v26;
  v64 = v28;
  sub_1E5B04428();
  result = sub_1E5B3D394();
  v30 = v43;
  *v43 = result;
  v30[1] = v31;
  *(v30 + 16) = v32 & 1;
  v30[3] = v33;
  return result;
}

uint64_t sub_1E5B2AC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a5 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v19;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v23;
  v30[5] = v24;
  v30[6] = v25;
  v31 = v26;
  v32 = v16;
  v33 = v27;
  v34 = a14;
  v35 = v28;
  type metadata accessor for GalleryView(0, v30);
  sub_1E5AF144C();
  sub_1E5AF144C();
  return (*(v15 + 8))(v18, a5);
}

uint64_t GalleryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v56 = *(a1 + 40);
  v4 = sub_1E5B260B8();
  v57 = *(a1 + 112);
  *&v80 = v3;
  *(&v80 + 1) = MEMORY[0x1E6981148];
  *&v81 = v56;
  *(&v81 + 1) = v4;
  v82 = MEMORY[0x1E6981138];
  v83 = v57;
  v5 = sub_1E5B3D1B4();
  v6 = *(a1 + 72);
  v54 = *(a1 + 80);
  v55 = v6;
  v7 = *(a1 + 88);
  v52 = *(a1 + 96);
  v53 = v7;
  v82 = v6;
  v83 = v54;
  v84 = v7;
  v85 = v52;
  v8 = *(a1 + 56);
  v50 = *(a1 + 16);
  v51 = v8;
  v81 = v8;
  v80 = v50;
  v9 = type metadata accessor for LibraryDataItem(255, &v80);
  sub_1E5B3CCA4();
  v49 = *(a1 + 48);
  v10 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v11 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v9);
  v13 = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v14 = *(a1 + 120);
  v79[0] = v13;
  v79[1] = v14;
  v46 = v14;
  v47 = MEMORY[0x1E697E858];
  v78[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v79);
  v78[1] = sub_1E5B2611C();
  v48 = MEMORY[0x1E697F968];
  v15 = swift_getWitnessTable(MEMORY[0x1E697F968], v11, v78);
  *&v80 = v9;
  *(&v80 + 1) = v11;
  *&v81 = WitnessTable;
  *(&v81 + 1) = v15;
  v16 = sub_1E5B3CC34();
  v17 = sub_1E5B3CD34();
  v18 = swift_getWitnessTable(MEMORY[0x1E699D928], v16);
  v19 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68], MEMORY[0x1E699DA60]);
  *&v80 = v16;
  *(&v80 + 1) = v17;
  *&v81 = v18;
  *(&v81 + 1) = v19;
  swift_getOpaqueTypeMetadata2();
  *&v80 = v16;
  *(&v80 + 1) = v17;
  *&v81 = v18;
  *(&v81 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_1E5B3CDE4();
  swift_getWitnessTable(MEMORY[0x1E697DA90], v20);
  v21 = sub_1E5B3CDF4();
  v44 = swift_getWitnessTable(MEMORY[0x1E697BE60], v21);
  *&v80 = v21;
  *(&v80 + 1) = v44;
  v42 = MEMORY[0x1E697D298];
  swift_getOpaqueTypeMetadata2();
  v22 = sub_1E5B3CF34();
  v43 = sub_1E5B3CF34();
  v23 = v5;
  v45 = sub_1E5B3D164();
  v24 = sub_1E5B3D164();
  v25 = sub_1E5B3D624();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v42 - v30;
  v60 = v50;
  v61 = *(a1 + 32);
  v62 = v56;
  v63 = v49;
  v64 = v51;
  v65 = v55;
  v66 = v54;
  v67 = v53;
  v68 = v52;
  v69 = *(a1 + 104);
  v70 = v57;
  v71 = v46;
  v72 = v58;
  v32 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v23, v42);
  *&v80 = v21;
  *(&v80 + 1) = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x1E697E5D8];
  v77[0] = OpaqueTypeConformance2;
  v77[1] = MEMORY[0x1E697E5D8];
  v35 = v47;
  v76[0] = swift_getWitnessTable(v47, v22, v77);
  v76[1] = v34;
  v36 = swift_getWitnessTable(v35, v43, v76);
  v75[0] = v32;
  v75[1] = v36;
  v37 = v48;
  v38 = swift_getWitnessTable(v48, v45, v75);
  v74[0] = v32;
  v74[1] = v38;
  v39 = swift_getWitnessTable(v37, v24, v74);
  sub_1E5B3D614();
  v73 = v39;
  swift_getWitnessTable(MEMORY[0x1E6981600], v25, &v73);
  sub_1E5AF144C();
  v40 = *(v26 + 8);
  v40(v28, v25);
  sub_1E5AF144C();
  return (v40)(v31, v25);
}

uint64_t sub_1E5B2B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(void, void))
{
  v218 = a8;
  v219 = a4;
  v223 = a7;
  v221 = a5;
  v232 = a3;
  v230 = a2;
  v225 = a1;
  v216 = a9;
  v234 = a16;
  v222 = a15;
  v220 = a14;
  v233 = a13;
  v231 = a12;
  v229 = a11;
  v228 = a10;
  v201 = sub_1E5B3CC74();
  v196 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v195 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E5B3D184();
  v193 = *(v22 - 8);
  v194 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v192 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = a2;
  v264 = a3;
  v265 = a7;
  v266 = a8;
  v267 = a10;
  v268 = a11;
  v269 = a12;
  v270 = a13;
  v24 = type metadata accessor for LibraryDataItem(255, &v263);
  sub_1E5B3CCA4();
  v25 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v26 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v24);
  v279[0] = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v279[1] = v234;
  v28 = swift_getWitnessTable(MEMORY[0x1E697E858], v25, v279);
  v29 = sub_1E5B2611C();
  v278[0] = v28;
  v278[1] = v29;
  v30 = swift_getWitnessTable(MEMORY[0x1E697F968], v26, v278);
  v263 = v24;
  v264 = v26;
  v265 = WitnessTable;
  v266 = v30;
  v31 = sub_1E5B3CC34();
  v32 = sub_1E5B3CD34();
  v33 = swift_getWitnessTable(MEMORY[0x1E699D928], v31);
  v34 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68], MEMORY[0x1E699DA60]);
  v263 = v31;
  v264 = v32;
  v265 = v33;
  v266 = v34;
  swift_getOpaqueTypeMetadata2();
  v263 = v31;
  v264 = v32;
  v265 = v33;
  v266 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = sub_1E5B3CDE4();
  v181 = swift_getWitnessTable(MEMORY[0x1E697DA90], v35);
  v182 = v35;
  v36 = sub_1E5B3CDF4();
  v183 = *(v36 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v199 = &v179 - v38;
  v39 = swift_getWitnessTable(MEMORY[0x1E697BE60], v36, v37);
  v224 = v36;
  v263 = v36;
  v264 = v39;
  v226 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v185 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v184 = &v179 - v41;
  v186 = v42;
  v43 = sub_1E5B3CF34();
  v188 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v200 = &v179 - v44;
  v215 = v45;
  v46 = sub_1E5B3CF34();
  v191 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v190 = &v179 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v187 = &v179 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v189 = &v179 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v53 = sub_1E5B260B8();
  v263 = v52;
  v264 = MEMORY[0x1E6981148];
  v55 = v221;
  v54 = v222;
  v265 = v221;
  v266 = v53;
  v267 = MEMORY[0x1E6981138];
  v268 = v222;
  v56 = sub_1E5B3D1B4();
  v214 = v46;
  v57 = sub_1E5B3D164();
  v198 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v197 = &v179 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v206 = &v179 - v60;
  v205 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v204 = &v179 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v217 = &v179 - v64;
  v65 = sub_1E5B3CCF4();
  v66 = sub_1E5B3DA74();
  v277 = swift_getWitnessTable(MEMORY[0x1E699D9E8], v65);
  swift_getWitnessTable(MEMORY[0x1E69E6320], v66, &v277);
  v202 = v66;
  v208 = sub_1E5B3D8C4();
  v180 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v207 = (&v179 - v67);
  v227 = v56;
  v213 = v57;
  v68 = sub_1E5B3D164();
  v211 = *(v68 - 8);
  v212 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v210 = &v179 - v69;
  v263 = v230;
  v264 = v232;
  v71 = v218;
  v70 = v219;
  v265 = v219;
  v266 = v55;
  v72 = v55;
  v73 = v223;
  v267 = a6;
  v268 = v223;
  v269 = v218;
  v270 = v228;
  v271 = v229;
  v272 = v231;
  v74 = v234;
  v75 = v220;
  v273 = v233;
  v274 = v220;
  v275 = v54;
  v276 = v234;
  v209 = type metadata accessor for GalleryView(0, &v263);
  sub_1E5B248E4(v209);
  v235 = v230;
  v236 = v232;
  v76 = v72;
  v77 = v207;
  v237 = v70;
  v238 = v76;
  v203 = a6;
  v239 = a6;
  v240 = v73;
  v241 = v71;
  v242 = v228;
  v243 = v229;
  v244 = v231;
  v245 = v233;
  v246 = v75;
  v247 = v54;
  v248 = v74;
  swift_getKeyPath();
  sub_1E5B3D904();
  v78 = v208;

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v81 = *v77;
    v84 = v227;
    v80 = v202;
    goto LABEL_6;
  }

  v80 = v202;
  if (EnumCaseMultiPayload != 1)
  {
    (*(v180 + 8))(v77, v78);
LABEL_13:
    v165 = v204;
    sub_1E5B2A454(v209, v204);
    v164 = v227;
    v166 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v227);
    sub_1E5AF144C();
    v234 = *(v205 + 8);
    v234(v165, v164);
    sub_1E5AF144C();
    v263 = v224;
    v264 = v226;
    v251[0] = swift_getOpaqueTypeConformance2();
    v161 = MEMORY[0x1E697E5D8];
    v251[1] = MEMORY[0x1E697E5D8];
    v167 = MEMORY[0x1E697E858];
    v152 = v213;
    v99 = v215;
    v250[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v215, v251);
    v250[1] = v161;
    v168 = v167;
    v163 = v214;
    v169 = swift_getWitnessTable(v168, v214, v250);
    v249[0] = v166;
    v249[1] = v169;
    v170 = swift_getWitnessTable(MEMORY[0x1E697F968], v152, v249);
    v158 = v210;
    sub_1E5AF7058(v165, v164, v152, v166, v170);
    v171 = v234;
    v234(v165, v164);
    v171(v217, v164);
    v149 = v224;
    goto LABEL_14;
  }

  v81 = *v77;
  v82 = sub_1E5B3CAF4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v82 - 8) + 8))(v77 + *(TupleTypeMetadata2 + 48), v82);
  v84 = v227;
LABEL_6:
  v263 = v81;
  swift_getWitnessTable(MEMORY[0x1E69E6340], v80);
  v85 = sub_1E5B3DB64();
  v86 = v226;
  if (v85)
  {

    v87 = v204;
    sub_1E5B2A454(v209, v204);
    v88 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v84);
    v89 = v217;
    sub_1E5AF144C();
    v90 = *(v205 + 8);
    v90(v87, v84);
    sub_1E5AF144C();
    v263 = v224;
    v264 = v86;
    v253[0] = swift_getOpaqueTypeConformance2();
    v91 = MEMORY[0x1E697E5D8];
    v253[1] = MEMORY[0x1E697E5D8];
    v92 = MEMORY[0x1E697E858];
    v93 = v86;
    v94 = v215;
    v252[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v215, v253);
    v252[1] = v91;
    v95 = v92;
    v96 = v214;
    v97 = swift_getWitnessTable(v95, v214, v252);
    sub_1E5AF7058(v87, v227, v96, v88, v97);
    v98 = v227;
    v90(v87, v227);
    v90(v89, v98);
    v99 = v94;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v85);
    v100 = v232;
    *(&v179 - 16) = v230;
    *(&v179 - 15) = v100;
    v101 = v221;
    *(&v179 - 14) = v219;
    *(&v179 - 13) = v101;
    v102 = v223;
    *(&v179 - 12) = v203;
    *(&v179 - 11) = v102;
    v104 = v228;
    v103 = v229;
    *(&v179 - 10) = v218;
    *(&v179 - 9) = v104;
    *(&v179 - 8) = v103;
    v105 = v233;
    *(&v179 - 7) = v231;
    *(&v179 - 6) = v105;
    v106 = v222;
    *(&v179 - 5) = v220;
    *(&v179 - 4) = v106;
    v107 = v225;
    *(&v179 - 3) = v234;
    *(&v179 - 2) = v107;
    *(&v179 - 1) = v81;
    v108 = sub_1E5B3D284();
    sub_1E5AF0C6C(v108, sub_1E5B2DEE8, (&v179 - 18), v182, v181);

    v109 = v192;
    sub_1E5B3D174();
    v110 = sub_1E5B3D284();
    sub_1E5B3D274();
    sub_1E5B3D274();
    if (sub_1E5B3D274() != v110)
    {
      sub_1E5B3D274();
    }

    v111 = v184;
    v112 = v224;
    v113 = v199;
    sub_1E5B3D4E4();
    (*(v193 + 8))(v109, v194);
    (*(v183 + 8))(v113, v112);
    sub_1E5B3D2D4();
    v114 = v209;
    v115 = sub_1E5B248E4(v209);
    MEMORY[0x1EEE9AC00](v115);
    v116 = v232;
    *(&v179 - 14) = v230;
    *(&v179 - 13) = v116;
    v117 = v218;
    v118 = v221;
    *(&v179 - 12) = v219;
    *(&v179 - 11) = v118;
    v119 = v223;
    *(&v179 - 10) = v203;
    *(&v179 - 9) = v119;
    v120 = v228;
    v121 = v229;
    *(&v179 - 8) = v117;
    *(&v179 - 7) = v120;
    v122 = v231;
    *(&v179 - 6) = v121;
    *(&v179 - 5) = v122;
    v123 = v220;
    *(&v179 - 4) = v233;
    *(&v179 - 3) = v123;
    v124 = v234;
    *(&v179 - 2) = v222;
    *(&v179 - 1) = v124;
    swift_getKeyPath();
    v125 = v195;
    sub_1E5B3D904();

    sub_1E5B3CC54();
    v217 = *(v196 + 8);
    (v217)(v125, v201);
    v263 = v112;
    v264 = v226;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v127 = v186;
    sub_1E5B3D534();
    (*(v185 + 8))(v111, v127);
    LODWORD(v208) = sub_1E5B3D2F4();
    v128 = sub_1E5B248E4(v114);
    MEMORY[0x1EEE9AC00](v128);
    v129 = v232;
    *(&v179 - 14) = v230;
    *(&v179 - 13) = v129;
    v130 = v221;
    *(&v179 - 12) = v219;
    *(&v179 - 11) = v130;
    v131 = v223;
    *(&v179 - 10) = v203;
    *(&v179 - 9) = v131;
    v132 = v228;
    v133 = v229;
    *(&v179 - 8) = v117;
    *(&v179 - 7) = v132;
    v134 = v231;
    *(&v179 - 6) = v133;
    *(&v179 - 5) = v134;
    v135 = v220;
    *(&v179 - 4) = v233;
    *(&v179 - 3) = v135;
    v136 = v234;
    *(&v179 - 2) = v222;
    *(&v179 - 1) = v136;
    swift_getKeyPath();
    sub_1E5B3D904();

    sub_1E5B3CC64();
    (v217)(v125, v201);
    v262[0] = OpaqueTypeConformance2;
    v91 = MEMORY[0x1E697E5D8];
    v262[1] = MEMORY[0x1E697E5D8];
    v137 = MEMORY[0x1E697E858];
    v99 = v215;
    v138 = swift_getWitnessTable(MEMORY[0x1E697E858], v215, v262);
    v139 = v187;
    v140 = v200;
    sub_1E5B3D534();
    (*(v188 + 8))(v140, v99);
    v261[0] = v138;
    v261[1] = v91;
    v96 = v214;
    v141 = swift_getWitnessTable(v137, v214, v261);
    v142 = v189;
    sub_1E5AF144C();
    v143 = *(v191 + 8);
    v143(v139, v96);
    v144 = v190;
    sub_1E5AF144C();
    v145 = v227;
    v146 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v227);
    sub_1E5AF7150(v144, v145, v96, v146, v141);
    v143(v144, v96);
    v147 = v142;
    v93 = v226;
    v143(v147, v96);
    v98 = v145;
  }

  v148 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v98);
  v234 = v148;
  v149 = v224;
  v263 = v224;
  v264 = v93;
  v260[0] = swift_getOpaqueTypeConformance2();
  v260[1] = v91;
  v150 = MEMORY[0x1E697E858];
  v259[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v99, v260);
  v259[1] = v91;
  v151 = swift_getWitnessTable(v150, v96, v259);
  v258[0] = v148;
  v258[1] = v151;
  v152 = v213;
  v153 = swift_getWitnessTable(MEMORY[0x1E697F968], v213, v258);
  v154 = v197;
  v155 = v206;
  sub_1E5AF144C();
  v156 = v96;
  v157 = v155;
  v158 = v210;
  sub_1E5AF7150(v154, v227, v152, v234, v153);
  v159 = *(v198 + 8);
  v160 = v154;
  v161 = MEMORY[0x1E697E5D8];
  v159(v160, v152);
  v162 = v157;
  v163 = v156;
  v164 = v227;
  v159(v162, v152);
LABEL_14:
  v172 = swift_getWitnessTable(MEMORY[0x1E697C7C8], v164);
  v263 = v149;
  v264 = v226;
  v257[0] = swift_getOpaqueTypeConformance2();
  v257[1] = v161;
  v173 = MEMORY[0x1E697E858];
  v256[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v99, v257);
  v256[1] = v161;
  v174 = swift_getWitnessTable(v173, v163, v256);
  v255[0] = v172;
  v255[1] = v174;
  v175 = MEMORY[0x1E697F968];
  v176 = swift_getWitnessTable(MEMORY[0x1E697F968], v152, v255);
  v254[0] = v172;
  v254[1] = v176;
  v177 = v212;
  swift_getWitnessTable(v175, v212, v254);
  sub_1E5AF144C();
  return (*(v211 + 8))(v158, v177);
}

uint64_t sub_1E5B2C8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v84 = a5;
  v85 = a6;
  v78 = a4;
  v87 = a1;
  v88 = a3;
  v75 = a2;
  v76 = a9;
  v86 = a16;
  v83 = a17;
  v71 = a15;
  v81 = a13;
  v80 = a12;
  v79 = a11;
  v82 = a10;
  v21 = sub_1E5B3D194();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v74 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E5B3CBC4();
  v72 = *(v23 - 8);
  v73 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a3;
  v120 = a4;
  v121 = a8;
  v122 = a10;
  v25 = a8;
  v123 = a11;
  v124 = a12;
  v125 = a13;
  v126 = a14;
  v77 = a14;
  v26 = type metadata accessor for LibraryDataItem(255, &v119);
  sub_1E5B3CCA4();
  v27 = a7;
  v28 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v29 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v26);
  v134[0] = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v134[1] = v83;
  v31 = swift_getWitnessTable(MEMORY[0x1E697E858], v28, v134);
  v32 = sub_1E5B2611C();
  v133[0] = v31;
  v133[1] = v32;
  v33 = swift_getWitnessTable(MEMORY[0x1E697F968], v29, v133);
  v119 = v26;
  v120 = v29;
  v121 = WitnessTable;
  v122 = v33;
  v34 = sub_1E5B3CC34();
  v35 = sub_1E5B3CD34();
  v36 = swift_getWitnessTable(MEMORY[0x1E699D928], v34);
  v37 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68], MEMORY[0x1E699DA60]);
  v119 = v34;
  v120 = v35;
  v121 = v36;
  v122 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = v34;
  v120 = v35;
  v121 = v36;
  v122 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1E5B3CDE4();
  v39 = *(v38 - 8);
  v68 = v38;
  v69 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v64 = &v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v67 = &v61 - v42;
  v43 = sub_1E5B3D124();
  v62 = v25;
  v63 = v43;
  v44 = v78;
  v119 = v88;
  v120 = v78;
  v46 = v84;
  v45 = v85;
  v121 = v84;
  v122 = v85;
  v61 = a7;
  v123 = a7;
  v124 = v25;
  v125 = v82;
  v126 = v79;
  v127 = v80;
  v128 = v81;
  v129 = a14;
  v47 = v71;
  v48 = v86;
  v130 = v71;
  v131 = v86;
  v49 = v83;
  v132 = v83;
  v50 = type metadata accessor for GalleryView(0, &v119);
  sub_1E5B248E4(v50);
  v105 = v88;
  v106 = v44;
  v107 = v46;
  v108 = v45;
  v109 = v27;
  v110 = v25;
  v52 = v81;
  v51 = v82;
  v53 = v79;
  v54 = v80;
  v111 = v82;
  v112 = v79;
  v113 = v80;
  v114 = v81;
  v115 = v77;
  v116 = v47;
  v117 = v48;
  v118 = v49;
  swift_getKeyPath();
  v55 = v70;
  sub_1E5B3D904();

  sub_1E5B3CBB4();
  (*(v72 + 8))(v55, v73);
  v89 = v88;
  v90 = v78;
  v91 = v84;
  v92 = v85;
  v93 = v61;
  v94 = v62;
  v95 = v51;
  v96 = v53;
  v97 = v54;
  v98 = v52;
  v99 = v77;
  v100 = v47;
  v101 = v86;
  v102 = v49;
  v103 = v87;
  v104 = v75;
  sub_1E5B2DE3C();
  v56 = v64;
  sub_1E5B3CDD4();
  v57 = v68;
  swift_getWitnessTable(MEMORY[0x1E697DA90], v68);
  v58 = v67;
  sub_1E5AF144C();
  v59 = *(v69 + 8);
  v59(v56, v57);
  sub_1E5AF144C();
  return (v59)(v58, v57);
}

uint64_t sub_1E5B2CEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v97 = a7;
  v85 = a6;
  v83 = a5;
  v88 = a2;
  v96 = a1;
  v90 = a9;
  v91 = a17;
  v86 = a16;
  v84 = a15;
  v95 = a14;
  v94 = a13;
  v93 = a12;
  v92 = a11;
  v98 = sub_1E5B3CD34();
  v89 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v87 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a3;
  v101 = a3;
  v102 = a4;
  v79 = a4;
  v103 = a5;
  v104 = a6;
  v105 = a7;
  v106 = a8;
  v81 = a8;
  v82 = a10;
  v107 = a10;
  v108 = a11;
  v109 = a12;
  v110 = a13;
  v111 = a14;
  v112 = a15;
  v113 = a16;
  v114 = a17;
  v24 = type metadata accessor for GalleryView(0, &v101);
  v77 = *(v24 - 1);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v76 = v65 - v25;
  v101 = a3;
  v102 = a4;
  v103 = a8;
  v104 = a10;
  v105 = a11;
  v106 = a12;
  v107 = a13;
  v108 = a14;
  v26 = type metadata accessor for LibraryDataItem(255, &v101);
  sub_1E5B3CCA4();
  v27 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v28 = sub_1E5B3D164();
  v73 = v26;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v26);
  v100[0] = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v100[1] = a17;
  v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v27, v100);
  v31 = sub_1E5B2611C();
  v99[0] = v30;
  v99[1] = v31;
  v74 = v28;
  v72 = swift_getWitnessTable(MEMORY[0x1E697F968], v28, v99);
  v101 = v26;
  v102 = v28;
  v103 = WitnessTable;
  v104 = v72;
  v32 = sub_1E5B3CC34();
  v75 = *(v32 - 8);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v69 = v65 - v34;
  v35 = swift_getWitnessTable(MEMORY[0x1E699D928], v32, v33);
  v68 = v35;
  v67 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68], MEMORY[0x1E699DA60]);
  v101 = v32;
  v102 = v98;
  v103 = v35;
  v104 = v67;
  v70 = MEMORY[0x1E699DB40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v38 = v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v66 = v65 - v40;
  v41 = v96;
  sub_1E5B24A6C(v24);
  v65[1] = v105;
  v42 = __swift_project_boxed_opaque_existential_1(&v101, v104);
  v43 = MEMORY[0x1EEE9AC00](v42);
  (*(v45 + 16))(v65 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
  v46 = v77;
  v47 = v76;
  (*(v77 + 16))(v76, v41, v24);
  v48 = (*(v46 + 80) + 128) & ~*(v46 + 80);
  v49 = swift_allocObject();
  v50 = v79;
  *(v49 + 2) = v80;
  *(v49 + 3) = v50;
  v51 = v85;
  *(v49 + 4) = v83;
  *(v49 + 5) = v51;
  v52 = v81;
  *(v49 + 6) = v97;
  *(v49 + 7) = v52;
  v53 = v92;
  *(v49 + 8) = v82;
  *(v49 + 9) = v53;
  v54 = v94;
  *(v49 + 10) = v93;
  *(v49 + 11) = v54;
  v55 = v84;
  *(v49 + 12) = v95;
  *(v49 + 13) = v55;
  v56 = v91;
  *(v49 + 14) = v86;
  *(v49 + 15) = v56;
  (*(v46 + 32))(&v49[v48], v47, v24);

  v57 = v69;
  sub_1E5B3CC24();
  sub_1E5B29DE8(v24);
  v58 = v87;
  sub_1E5B3CD14();
  v59 = v98;
  v60 = v68;
  v61 = v67;
  sub_1E5B3D3D4();
  (*(v89 + 8))(v58, v59);
  (*(v75 + 8))(v57, v32);
  __swift_destroy_boxed_opaque_existential_1(&v101);
  v101 = v32;
  v102 = v59;
  v103 = v60;
  v104 = v61;
  swift_getOpaqueTypeConformance2();
  v62 = v66;
  sub_1E5AF144C();
  v63 = *(v71 + 8);
  v63(v38, OpaqueTypeMetadata2);
  sub_1E5AF144C();
  return (v63)(v62, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B2D72C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v75 = a5;
  v62 = a4;
  v61 = a3;
  v71 = a1;
  v72 = a8;
  v73 = a17;
  v66 = a16;
  v74 = a15;
  v65 = a14;
  v64 = a12;
  v60 = a11;
  v63 = a9;
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a9;
  v84 = a10;
  v85 = a11;
  v51 = a10;
  v86 = a12;
  v87 = a13;
  v88 = a14;
  v89 = a15;
  v90 = a16;
  v91 = a17;
  v20 = type metadata accessor for GalleryView(0, &v78);
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51 - v22;
  v53 = &v51 - v22;
  sub_1E5B3CCA4();
  v24 = a7;
  v54 = a7;
  v69 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v67 = sub_1E5B3D164();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v68 = &v51 - v27;
  v58 = sub_1E5B24AF0(v20);
  v57 = v28;
  v52 = v20;
  v56 = sub_1E5B24BC4(v20);
  v55 = v29;
  v30 = v21;
  (*(v21 + 16))(v23, a2, v20);
  v31 = (*(v21 + 80) + 128) & ~*(v21 + 80);
  v32 = swift_allocObject();
  v33 = v61;
  v34 = v62;
  *(v32 + 2) = v61;
  *(v32 + 3) = v34;
  *(v32 + 4) = v75;
  *(v32 + 5) = a6;
  *(v32 + 6) = v24;
  v35 = v63;
  *(v32 + 7) = v63;
  *(v32 + 8) = a10;
  v36 = v60;
  v37 = v64;
  *(v32 + 9) = v60;
  *(v32 + 10) = v37;
  *(v32 + 11) = a13;
  v38 = v65;
  v39 = v74;
  *(v32 + 12) = v65;
  *(v32 + 13) = v39;
  v40 = v73;
  *(v32 + 14) = v66;
  *(v32 + 15) = v40;
  (*(v30 + 32))(&v32[v31], v53, v52);
  v78 = v33;
  v79 = v34;
  v80 = v35;
  v81 = v51;
  v82 = v36;
  v83 = v37;
  v84 = a13;
  v85 = v38;
  v41 = type metadata accessor for LibraryDataItem(255, &v78);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v41);
  v42 = sub_1E5B3CCF4();
  v43 = v73;
  v44 = v59;
  sub_1E5B3B498(v58, v57, v56, v55, sub_1E5B2E42C, v32, v42, v75, v59, v54, v74, v73);

  v77[0] = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
  v77[1] = v43;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v69, v77);
  v46 = sub_1E5B2611C();
  v76[0] = WitnessTable;
  v76[1] = v46;
  v47 = v67;
  swift_getWitnessTable(MEMORY[0x1E697F968], v67, v76);
  v48 = v68;
  sub_1E5AF144C();
  v49 = *(v70 + 8);
  v49(v44, v47);
  sub_1E5AF144C();
  return (v49)(v48, v47);
}

uint64_t sub_1E5B2DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  v28 = a8;
  v26 = a7;
  v24 = a6;
  v23 = a5;
  v29 = a2;
  v30 = a1;
  v27 = a15;
  v25 = a14;
  v31 = a4;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v17 = type metadata accessor for GalleryAction(0, &v31);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  v31 = a3;
  v32 = a4;
  v33 = v23;
  v34 = v24;
  v35 = v26;
  v36 = v28;
  v37 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v21 = type metadata accessor for GalleryView(0, &v31);
  sub_1E5B248E4(v21);
  (*(*(a4 - 8) + 16))(v20, v30, a4);
  sub_1E5B3D914();

  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1E5B2DE3C()
{
  sub_1E5B3D194();
  sub_1E5B2E0B8(&qword_1ED032A10, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1E5B3DE44();
}

uint64_t sub_1E5B2E0B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1E5B2E100@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = v2[3];
  v15 = v2[5];
  v16 = v2[4];
  v3 = v2[7];
  v14 = v2[6];
  v4 = v2[8];
  v5 = v2[9];
  v7 = v2[10];
  v6 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];
  v11 = v2[15];
  v21[0] = v2[2];
  v18 = v21[0];
  v21[1] = v17;
  v21[2] = v16;
  v21[3] = v15;
  v21[4] = v14;
  v21[5] = v3;
  v21[6] = v4;
  v21[7] = v5;
  v21[8] = v7;
  v21[9] = v6;
  v21[10] = v8;
  v21[11] = v9;
  v21[12] = v10;
  v21[13] = v11;
  v12 = *(type metadata accessor for GalleryView(0, v21) - 8);
  return sub_1E5B2D72C(a1, v2 + ((*(v12 + 80) + 128) & ~*(v12 + 80)), v18, v17, v16, v15, v14, a2, v3, v4, v5, v7, v6, v8, v9, v10, v11);
}

uint64_t objectdestroy_10Tm_0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v17 = *(v0 + 48);
  v15 = *(v0 + 56);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 88);
  v18 = *(v0 + 16);
  v16 = v18;
  *&v19 = v2;
  *(&v19 + 1) = v1;
  v20 = v17;
  v21 = v15;
  v22 = v4;
  v23 = v3;
  v24 = v5;
  v6 = *(v0 + 112);
  v25 = *(v0 + 96);
  v14 = v25;
  v26 = v6;
  v7 = (type metadata accessor for GalleryView(0, &v18) - 8);
  v8 = (v0 + ((*(*v7 + 80) + 128) & ~*(*v7 + 80)));
  sub_1E5AF0DEC(*v8, v8[1]);
  __swift_destroy_boxed_opaque_existential_1(v8 + 3);

  v9 = v7[36];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5B3CB74();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v7[37];
  v19 = v15;
  v18 = v16;
  v20 = v4;
  *&v21 = v3;
  *(&v21 + 1) = v5;
  v22 = v14;
  type metadata accessor for LibraryDataItem(255, &v18);
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5B3CB74();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  (*(*(v1 - 8) + 8))(v8 + v7[38], v1);
  return swift_deallocObject();
}

uint64_t sub_1E5B2E42C(uint64_t a1)
{
  v18 = v1[3];
  v16 = v1[5];
  v17 = v1[4];
  v14 = v1[7];
  v15 = v1[6];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = v1[15];
  v20[0] = v1[2];
  v2 = v20[0];
  v20[1] = v18;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = v14;
  v20[6] = v3;
  v20[7] = v4;
  v20[8] = v5;
  v20[9] = v6;
  v20[10] = v7;
  v20[11] = v8;
  v20[12] = v9;
  v20[13] = v10;
  v11 = *(type metadata accessor for GalleryView(0, v20) - 8);
  *(&v13 + 1) = v9;
  *&v13 = v8;
  return sub_1E5B2DC88(a1, v1 + ((*(v11 + 80) + 128) & ~*(v11 + 80)), v2, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v13, v10);
}

__n128 GalleryFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E5B2E524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a9;
  v23[7] = a10;
  v13 = type metadata accessor for GalleryFeature.TaskIdentifier(255, v23);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v17 = v23 - v16;
  v19 = *(v18 + 56);
  v20 = *(*(v13 - 8) + 16);
  v20(v23 - v16, a1, v13, v15);
  (v20)(&v17[v19], a2, v13);
  LOBYTE(a2) = sub_1E5B3D974();
  v21 = *(*(a4 - 8) + 8);
  v21(&v17[v19], a4);
  v21(v17, a4);
  return a2 & 1;
}

uint64_t sub_1E5B2E698(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, a2, v4);
  MEMORY[0x1E6936540](0);
  v8 = *(a2 + 24);
  sub_1E5B3D964();
  return (*(*(v8 - 8) + 8))(v6, v8);
}

uint64_t sub_1E5B2E7AC(uint64_t a1)
{
  sub_1E5B3DDC4();
  sub_1E5B2E698(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B2E7FC(uint64_t a1, uint64_t a2)
{
  sub_1E5B3DDC4();
  sub_1E5B2E698(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t GalleryFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a5[3];
  v76 = a5[2];
  v77 = a3;
  v9 = a5[4];
  v74 = a5[5];
  v75 = v9;
  v10 = a5[7];
  v73 = a5[6];
  v11 = a5[8];
  v12 = a5[9];
  v78 = v76;
  v79 = v8;
  v80 = v9;
  v81 = v74;
  v82 = v73;
  v83 = v10;
  v13 = v10;
  v69 = v11;
  v70 = v10;
  v84 = v11;
  v85 = v12;
  v14 = v11;
  v15 = v12;
  v68 = v12;
  v16 = type metadata accessor for GalleryFeature.TaskIdentifier(0, &v78);
  v17 = *(v16 - 8);
  v66 = v16;
  v67 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - v18;
  v78 = v8;
  v79 = v13;
  v80 = v14;
  v81 = v15;
  v20 = type metadata accessor for GalleryAction(255, &v78);
  v21 = sub_1E5B3D884();
  v71 = *(v21 - 8);
  v72 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  v24 = *(v8 - 8);
  v25 = v24[8];
  MEMORY[0x1EEE9AC00](v26);
  v63 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v57 - v32;
  v34 = v6[1];
  v64 = *v6;
  v62 = v34;
  (*(v35 + 16))(v33, a4, v20, v31);
  v58 = v24;
  v60 = v24[4];
  v36 = v29;
  v60(v29, v33, v8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
  v61 = v37[12];
  v57 = v37[16];
  v65 = v37[20];
  v59 = &v23[v37[24]];
  v38 = v24[2];
  v38(v19, v29, v8);
  v39 = v66;
  swift_getWitnessTable(byte_1E5B448B8, v66);
  sub_1E5B3DC64();
  (*(v67 + 8))(v19, v39);
  v40 = *MEMORY[0x1E6999B50];
  v41 = sub_1E5B3D8E4();
  (*(*(v41 - 8) + 104))(&v23[v57], v40, v41);
  v42 = v63;
  v38(v63, v36, v8);
  v43 = v58;
  v44 = (*(v58 + 80) + 96) & ~*(v58 + 80);
  v45 = swift_allocObject();
  v46 = v75;
  *(v45 + 2) = v76;
  *(v45 + 3) = v8;
  v48 = v73;
  v47 = v74;
  *(v45 + 4) = v46;
  *(v45 + 5) = v47;
  v50 = v69;
  v49 = v70;
  *(v45 + 6) = v48;
  *(v45 + 7) = v49;
  v51 = v68;
  *(v45 + 8) = v50;
  *(v45 + 9) = v51;
  v52 = v62;
  *(v45 + 10) = v64;
  *(v45 + 11) = v52;
  v60(&v45[v44], v42, v8);
  v53 = v59;
  *v59 = &unk_1E5B447A8;
  *(v53 + 1) = v45;

  sub_1E5B3DAC4();
  v54 = *MEMORY[0x1E6999B48];
  v55 = sub_1E5B3D8D4();
  (*(*(v55 - 8) + 104))(&v23[v65], v54, v55);
  (*(v71 + 104))(v23, *MEMORY[0x1E6999AD8], v72);
  sub_1E5B3DA74();
  sub_1E5B3DA64();
  return (v43[1])(v36, v8);
}

uint64_t sub_1E5B2EE00(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5B3DAB4();
  v4[3] = sub_1E5B3DAA4();
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1E5AF6058;

  return v9(a4);
}

uint64_t sub_1E5B2EF20(uint64_t a1)
{
  v4 = (*(*(v1[3] - 8) + 80) + 96) & ~*(*(v1[3] - 8) + 80);
  v5 = v1[10];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5AF632C;

  return sub_1E5B2EE00(a1, v5, v6, v1 + v4);
}

unint64_t sub_1E5B2F0F8()
{
  result = qword_1ED032A28[0];
  if (!qword_1ED032A28[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GalleryLocalState, &type metadata for GalleryLocalState, v0, v1);
    atomic_store(result, qword_1ED032A28);
  }

  return result;
}

uint64_t sub_1E5B2F168(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t GalleryEnvironment.init(navigateToIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E5B2F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for TVLibraryItemCell(uint64_t a1)
{
  result = qword_1ED032B30;
  if (!qword_1ED032B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B2F354(uint64_t a1)
{
  result = sub_1E5B3CB44();
  if (v2 <= 0x3F)
  {
    result = sub_1E5B2F3E0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5B2F3E0()
{
  result = qword_1EE2C23D0;
  if (!qword_1EE2C23D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2C23D0);
  }

  return result;
}

uint64_t sub_1E5B2F44C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = type metadata accessor for LibrarySidebarButtonStyle(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVLibraryItemCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B40, &qword_1E5B449C8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  sub_1E5B2FB2C(v2, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1E5B2FB90(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v20[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B48, &unk_1E5B449D0);
  sub_1E5B2FC68();
  sub_1E5B3D6C4();
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  *(v5 + 2) = swift_getKeyPath();
  v5[24] = 0;
  v15 = v3[6];
  *&v5[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B58, &qword_1E5B44A70);
  swift_storeEnumTagMultiPayload();
  v16 = &v5[v3[7]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v5[v3[8]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v5[v3[9]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v5[v3[10]] = 0;
  sub_1E5AF13EC(&qword_1ED032B60, &qword_1ED032B40, &qword_1E5B449C8, MEMORY[0x1E697D680]);
  sub_1E5B2FDE8();
  sub_1E5B3D444();
  sub_1E5B2FE40(v5);
  return (*(v10 + 8))(v12, v9);
}

__n128 sub_1E5B2F7A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  v14 = a1;
  v13 = a1;
  sub_1E5B3D664();
  sub_1E5B3D7E4();
  sub_1E5B3CF94();
  (*(v5 + 32))(a2, v7, v4);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B48, &unk_1E5B449D0) + 36);
  v9 = v20;
  *(v8 + 64) = v19;
  *(v8 + 80) = v9;
  *(v8 + 96) = v21;
  v10 = v16;
  *v8 = v15;
  *(v8 + 16) = v10;
  result = v18;
  *(v8 + 32) = v17;
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_1E5B2F964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TVLibraryItemCell(0);
  LibraryPage.title(locale:)(a1, *(a1 + *(v4 + 20)));
  sub_1E5B04428();
  result = sub_1E5B3D394();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1E5B2F9D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TVLibraryItemCell(0);
  result = sub_1E5B3D644();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B2FB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVLibraryItemCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B2FB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVLibraryItemCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B2FC68()
{
  result = qword_1ED032B50;
  if (!qword_1ED032B50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032B48, &unk_1E5B449D0);
    v4[0] = sub_1E5AF13EC(&qword_1ED031D48, &qword_1ED031D40, &qword_1E5B40DE8, MEMORY[0x1E697D658]);
    v4[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &qword_1ED032B50);
  }

  return result;
}

uint64_t sub_1E5B2FD20(uint64_t a1)
{
  v2 = sub_1E5B3CE14();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E5B3CFE4();
}

unint64_t sub_1E5B2FDE8()
{
  result = qword_1ED032B68;
  if (!qword_1ED032B68)
  {
    v3 = type metadata accessor for LibrarySidebarButtonStyle(255);
    result = swift_getWitnessTable(aM, v3, v0, v1);
    atomic_store(result, &qword_1ED032B68);
  }

  return result;
}

uint64_t sub_1E5B2FE40(uint64_t a1)
{
  v2 = type metadata accessor for LibrarySidebarButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LibraryCanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LibraryCanvasSectionDescriptor.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LibraryCanvasSectionDescriptor.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall LibraryCanvasSectionDescriptor.init(identifier:title:subtitle:items:)(FitnessLibrary::LibraryCanvasSectionDescriptor *__return_ptr retstr, Swift::String identifier, Swift::String_optional title, Swift::String_optional subtitle, Swift::OpaquePointer items)
{
  retstr->identifier = identifier;
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->items = items;
}

uint64_t sub_1E5B2FF58()
{
  v1 = 0x696669746E656469;
  v2 = 0x656C746974627573;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1E5B2FFCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B30EC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B2FFF4(uint64_t a1)
{
  v2 = sub_1E5B302DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B30030(uint64_t a1)
{
  v2 = sub_1E5B302DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasSectionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B70, &qword_1E5B44B10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B302DC();
  sub_1E5B3DE14();
  v23 = 0;
  v9 = v18;
  sub_1E5B3DD44();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_1E5B3DD34();
    v21 = 2;
    sub_1E5B3DD34();
    v19 = v10;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B80, &qword_1E5B44B18);
    sub_1E5B306C4(&qword_1ED032B88, sub_1E5B30330, MEMORY[0x1E69E6300]);
    sub_1E5B3DD74();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5B302DC()
{
  result = qword_1ED032B78;
  if (!qword_1ED032B78)
  {
    result = swift_getWitnessTable(byte_1E5B44D14, &type metadata for LibraryCanvasSectionDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032B78);
  }

  return result;
}

unint64_t sub_1E5B30330()
{
  result = qword_1ED032B90;
  if (!qword_1ED032B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasPlaceholder, &type metadata for LibraryCanvasPlaceholder, v0, v1);
    atomic_store(result, &qword_1ED032B90);
  }

  return result;
}

uint64_t LibraryCanvasSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B98, &qword_1E5B44B20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B302DC();
  sub_1E5B3DE04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_1E5B3DCC4();
  v24 = v10;
  v28 = 1;
  v11 = sub_1E5B3DCB4();
  v23 = v12;
  v21 = v11;
  v27 = 2;
  v20 = sub_1E5B3DCB4();
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B80, &qword_1E5B44B18);
  v26 = 3;
  sub_1E5B306C4(&qword_1ED032BA0, sub_1E5B3073C, MEMORY[0x1E69E6330]);
  sub_1E5B3DCF4();
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  v15 = v25;
  *a2 = v9;
  a2[1] = v16;
  v17 = v20;
  v19 = v22;
  v18 = v23;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v19;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5B306C4(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032B80, &qword_1E5B44B18);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B3073C()
{
  result = qword_1ED032BA8;
  if (!qword_1ED032BA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasPlaceholder, &type metadata for LibraryCanvasPlaceholder, v0, v1);
    atomic_store(result, &qword_1ED032BA8);
  }

  return result;
}

uint64_t LibraryCanvasSectionDescriptor.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  sub_1E5B3DA14();
  if (v3)
  {
    sub_1E5B3DDE4();
    sub_1E5B3DA14();
    if (v4)
    {
LABEL_3:
      sub_1E5B3DDE4();
      sub_1E5B3DA14();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E5B3DDE4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1E5B3DDE4();
LABEL_6:

  return sub_1E5B30A40(a1, v5);
}

uint64_t LibraryCanvasSectionDescriptor.hashValue.getter()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  if (!v1)
  {
    sub_1E5B3DDE4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E5B3DDE4();
    goto LABEL_6;
  }

  sub_1E5B3DDE4();
  sub_1E5B3DA14();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E5B3DDE4();
  sub_1E5B3DA14();
LABEL_6:
  sub_1E5B30A40(v5, v3);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B30968(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  if (!v2)
  {
    sub_1E5B3DDE4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E5B3DDE4();
    goto LABEL_6;
  }

  sub_1E5B3DDE4();
  sub_1E5B3DA14();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E5B3DDE4();
  sub_1E5B3DA14();
LABEL_6:
  sub_1E5B30A40(v6, v4);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B30A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E6936540](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      v6 = *(v5 - 8);

      sub_1E5B3DA14();
      sub_1E5B3DDE4();
      if (v6)
      {
        sub_1E5B3DA14();
      }

      v5 += 40;
      sub_1E5B3DA14();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s14FitnessLibrary0B23CanvasSectionDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5B3DDA4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1E5B3DDA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (sub_1E5B3DDA4() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_16:

  return sub_1E5B0E644(v5, v11);
}

unint64_t sub_1E5B30CC0()
{
  result = qword_1ED032BB0;
  if (!qword_1ED032BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasSectionDescriptor, &type metadata for LibraryCanvasSectionDescriptor, v0, v1);
    atomic_store(result, &qword_1ED032BB0);
  }

  return result;
}

uint64_t sub_1E5B30D14(uint64_t a1, int a2)
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

uint64_t sub_1E5B30D5C(uint64_t result, int a2, int a3)
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

unint64_t sub_1E5B30DBC()
{
  result = qword_1ED032BB8;
  if (!qword_1ED032BB8)
  {
    result = swift_getWitnessTable(aA5, &type metadata for LibraryCanvasSectionDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032BB8);
  }

  return result;
}

unint64_t sub_1E5B30E14()
{
  result = qword_1ED032BC0;
  if (!qword_1ED032BC0)
  {
    result = swift_getWitnessTable(byte_1E5B44C5C, &type metadata for LibraryCanvasSectionDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032BC0);
  }

  return result;
}

unint64_t sub_1E5B30E6C()
{
  result = qword_1ED032BC8;
  if (!qword_1ED032BC8)
  {
    result = swift_getWitnessTable(byte_1E5B44C84, &type metadata for LibraryCanvasSectionDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032BC8);
  }

  return result;
}

uint64_t sub_1E5B30EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B31054()
{
  v1 = *v0;
  v2 = 0x6843656C61636F6CLL;
  v3 = 0x6570704177656976;
  v4 = 0x6173694477656976;
  if (v1 != 3)
  {
    v4 = 0x4968736572666572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x647055736D657469;
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

uint64_t sub_1E5B31118@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B32B30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B31140(uint64_t a1)
{
  v2 = sub_1E5B31AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B3117C(uint64_t a1)
{
  v2 = sub_1E5B31AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B311D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
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

uint64_t sub_1E5B31264(uint64_t a1)
{
  v2 = sub_1E5B31BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B312A0(uint64_t a1)
{
  v2 = sub_1E5B31BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B312DC(uint64_t a1)
{
  v2 = sub_1E5B31C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31318(uint64_t a1)
{
  v2 = sub_1E5B31C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B31354(uint64_t a1)
{
  v2 = sub_1E5B31AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31390(uint64_t a1)
{
  v2 = sub_1E5B31AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B313CC(uint64_t a1)
{
  v2 = sub_1E5B31B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31408(uint64_t a1)
{
  v2 = sub_1E5B31B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B31444(uint64_t a1)
{
  v2 = sub_1E5B31B48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31480(uint64_t a1)
{
  v2 = sub_1E5B31B48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasContentAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BD0, &qword_1E5B44DD0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v23 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BD8, &qword_1E5B44DD8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v23 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BE0, &qword_1E5B44DE0);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v23 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BE8, &qword_1E5B44DE8);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v25 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BF0, &qword_1E5B44DF0);
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BF8, &unk_1E5B44DF8);
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B31AA0();
  sub_1E5B3DE14();
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v41 = 3;
      sub_1E5B31B48();
      v22 = v27;
      v16 = v36;
      sub_1E5B3DD24();
      (*(v29 + 8))(v22, v31);
      return (*(v35 + 8))(v14, v16);
    }

    if (v15 == 3)
    {
      v42 = 4;
      sub_1E5B31AF4();
      v17 = v32;
      v16 = v36;
      sub_1E5B3DD24();
      (*(v33 + 8))(v17, v34);
      return (*(v35 + 8))(v14, v16);
    }

LABEL_8:
    v39 = 1;
    sub_1E5B31BF0();
    v18 = v25;
    v19 = v36;
    sub_1E5B3DD24();
    v37 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B206F0(&qword_1ED032628, sub_1E5B205A0, MEMORY[0x1E69E6300]);
    v20 = v30;
    sub_1E5B3DD74();
    (*(v28 + 8))(v18, v20);
    return (*(v35 + 8))(v14, v19);
  }

  if (!v15)
  {
    v38 = 0;
    sub_1E5B31C44();
    v16 = v36;
    sub_1E5B3DD24();
    (*(v23 + 8))(v11, v9);
    return (*(v35 + 8))(v14, v16);
  }

  if (v15 != 1)
  {
    goto LABEL_8;
  }

  v40 = 2;
  sub_1E5B31B9C();
  v16 = v36;
  sub_1E5B3DD24();
  (*(v24 + 8))(v7, v26);
  return (*(v35 + 8))(v14, v16);
}

unint64_t sub_1E5B31AA0()
{
  result = qword_1ED032C00;
  if (!qword_1ED032C00)
  {
    result = swift_getWitnessTable(byte_1E5B453E8, &type metadata for LibraryCanvasContentAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C00);
  }

  return result;
}

unint64_t sub_1E5B31AF4()
{
  result = qword_1ED032C08;
  if (!qword_1ED032C08)
  {
    result = swift_getWitnessTable(aN5, &type metadata for LibraryCanvasContentAction.RefreshItemsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C08);
  }

  return result;
}

unint64_t sub_1E5B31B48()
{
  result = qword_1ED032C10;
  if (!qword_1ED032C10)
  {
    result = swift_getWitnessTable(aQn5, &type metadata for LibraryCanvasContentAction.ViewDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C10);
  }

  return result;
}

unint64_t sub_1E5B31B9C()
{
  result = qword_1ED032C18;
  if (!qword_1ED032C18)
  {
    result = swift_getWitnessTable(byte_1E5B452F8, &type metadata for LibraryCanvasContentAction.ViewAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C18);
  }

  return result;
}

unint64_t sub_1E5B31BF0()
{
  result = qword_1ED032C20;
  if (!qword_1ED032C20)
  {
    result = swift_getWitnessTable(byte_1E5B452A8, &type metadata for LibraryCanvasContentAction.ItemsUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C20);
  }

  return result;
}

unint64_t sub_1E5B31C44()
{
  result = qword_1ED032C28;
  if (!qword_1ED032C28)
  {
    result = swift_getWitnessTable(aAo5, &type metadata for LibraryCanvasContentAction.LocaleChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C28);
  }

  return result;
}

uint64_t LibraryCanvasContentAction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C30, &qword_1E5B44E08);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v55 = &v42 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C38, &qword_1E5B44E10);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C40, &qword_1E5B44E18);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C48, &qword_1E5B44E20);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C50, &qword_1E5B44E28);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C58, &unk_1E5B44E30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E5B31AA0();
  v18 = v58;
  sub_1E5B3DE04();
  if (v18)
  {
    goto LABEL_13;
  }

  v19 = v12;
  v42 = v10;
  v43 = 0;
  v20 = v53;
  v21 = v54;
  v58 = v14;
  v23 = v55;
  v22 = v56;
  v24 = sub_1E5B3DD04();
  v25 = (2 * *(v24 + 16)) | 1;
  v59 = v24;
  v60 = v24 + 32;
  v61 = 0;
  v62 = v25;
  v26 = sub_1E5AFF834();
  if (v26 == 5 || v61 != v62 >> 1)
  {
    v29 = sub_1E5B3DC04();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0);
    *v31 = &type metadata for LibraryCanvasContentAction;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v26 <= 1u)
  {
    if (v26)
    {
      LOBYTE(v63) = 1;
      sub_1E5B31BF0();
      v40 = v43;
      sub_1E5B3DC94();
      v32 = v58;
      if (!v40)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
        sub_1E5B206F0(&qword_1ED032678, sub_1E5B20768, MEMORY[0x1E69E6330]);
        v41 = v51;
        sub_1E5B3DCF4();
        (*(v50 + 8))(v9, v41);
        (*(v32 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v37 = v63;
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    LOBYTE(v63) = 0;
    sub_1E5B31C44();
    v35 = v19;
    v36 = v43;
    sub_1E5B3DC94();
    v32 = v58;
    if (v36)
    {
      goto LABEL_11;
    }

    (*(v44 + 8))(v35, v42);
    (*(v32 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v37 = 0;
LABEL_26:
    v33 = v57;
    *v22 = v37;
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  if (v26 == 2)
  {
    LOBYTE(v63) = 2;
    sub_1E5B31B9C();
    v38 = v43;
    sub_1E5B3DC94();
    if (!v38)
    {
      (*(v45 + 8))(v20, v46);
      (*(v58 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v37 = 1;
      goto LABEL_26;
    }

LABEL_10:
    v32 = v58;
    goto LABEL_11;
  }

  if (v26 != 3)
  {
    LOBYTE(v63) = 4;
    sub_1E5B31AF4();
    v39 = v43;
    sub_1E5B3DC94();
    v32 = v58;
    if (!v39)
    {
      (*(v47 + 8))(v23, v49);
      (*(v32 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v37 = 3;
      goto LABEL_26;
    }

LABEL_11:
    (*(v32 + 8))(v16, v13);
    goto LABEL_12;
  }

  LOBYTE(v63) = 3;
  sub_1E5B31B48();
  v27 = v43;
  sub_1E5B3DC94();
  v28 = v58;
  if (!v27)
  {
    (*(v48 + 8))(v21, v52);
    (*(v28 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v37 = 2;
    goto LABEL_26;
  }

  (*(v58 + 8))(v16, v13);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v33 = v57;
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t get_enum_tag_for_layout_string_14FitnessLibrary0B19CanvasContentActionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5B32520(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B32574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1E5B325D0(void *result, int a2)
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

unint64_t sub_1E5B32664()
{
  result = qword_1ED032C60;
  if (!qword_1ED032C60)
  {
    result = swift_getWitnessTable(a5, &type metadata for LibraryCanvasContentAction.ItemsUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C60);
  }

  return result;
}

unint64_t sub_1E5B326BC()
{
  result = qword_1ED032C68;
  if (!qword_1ED032C68)
  {
    result = swift_getWitnessTable(byte_1E5B45230, &type metadata for LibraryCanvasContentAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C68);
  }

  return result;
}

unint64_t sub_1E5B32714()
{
  result = qword_1ED032C70;
  if (!qword_1ED032C70)
  {
    result = swift_getWitnessTable(byte_1E5B45150, &type metadata for LibraryCanvasContentAction.LocaleChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C70);
  }

  return result;
}

unint64_t sub_1E5B3276C()
{
  result = qword_1ED032C78;
  if (!qword_1ED032C78)
  {
    result = swift_getWitnessTable(byte_1E5B45178, &type metadata for LibraryCanvasContentAction.LocaleChangedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C78);
  }

  return result;
}

unint64_t sub_1E5B327C4()
{
  result = qword_1ED032C80;
  if (!qword_1ED032C80)
  {
    result = swift_getWitnessTable("YJ5\tx*", &type metadata for LibraryCanvasContentAction.ItemsUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C80);
  }

  return result;
}

unint64_t sub_1E5B3281C()
{
  result = qword_1ED032C88;
  if (!qword_1ED032C88)
  {
    result = swift_getWitnessTable("qF5\tP*", &type metadata for LibraryCanvasContentAction.ItemsUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C88);
  }

  return result;
}

unint64_t sub_1E5B32874()
{
  result = qword_1ED032C90;
  if (!qword_1ED032C90)
  {
    result = swift_getWitnessTable(byte_1E5B45048, &type metadata for LibraryCanvasContentAction.ViewAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C90);
  }

  return result;
}

unint64_t sub_1E5B328CC()
{
  result = qword_1ED032C98;
  if (!qword_1ED032C98)
  {
    result = swift_getWitnessTable(byte_1E5B45070, &type metadata for LibraryCanvasContentAction.ViewAppearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032C98);
  }

  return result;
}

unint64_t sub_1E5B32924()
{
  result = qword_1ED032CA0;
  if (!qword_1ED032CA0)
  {
    result = swift_getWitnessTable(byte_1E5B44FF8, &type metadata for LibraryCanvasContentAction.ViewDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032CA0);
  }

  return result;
}

unint64_t sub_1E5B3297C()
{
  result = qword_1ED032CA8;
  if (!qword_1ED032CA8)
  {
    result = swift_getWitnessTable(byte_1E5B45020, &type metadata for LibraryCanvasContentAction.ViewDisappearedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032CA8);
  }

  return result;
}

unint64_t sub_1E5B329D4()
{
  result = qword_1ED032CB0;
  if (!qword_1ED032CB0)
  {
    result = swift_getWitnessTable(aIk5, &type metadata for LibraryCanvasContentAction.RefreshItemsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032CB0);
  }

  return result;
}

unint64_t sub_1E5B32A2C()
{
  result = qword_1ED032CB8;
  if (!qword_1ED032CB8)
  {
    result = swift_getWitnessTable(aAg5, &type metadata for LibraryCanvasContentAction.RefreshItemsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032CB8);
  }

  return result;
}

unint64_t sub_1E5B32A84()
{
  result = qword_1ED032CC0;
  if (!qword_1ED032CC0)
  {
    result = swift_getWitnessTable("QI5\t()", &type metadata for LibraryCanvasContentAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED032CC0);
  }

  return result;
}

unint64_t sub_1E5B32ADC()
{
  result = qword_1ED032CC8[0];
  if (!qword_1ED032CC8[0])
  {
    result = swift_getWitnessTable("iE5\t", &type metadata for LibraryCanvasContentAction.CodingKeys, v0, v1);
    atomic_store(result, qword_1ED032CC8);
  }

  return result;
}

uint64_t sub_1E5B32B30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6843656C61636F6CLL && a2 == 0xED00006465676E61;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647055736D657469 && a2 == 0xEC00000064657461 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6173694477656976 && a2 == 0xEF64657261657070 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4968736572666572 && a2 == 0xEC000000736D6574)
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

uint64_t sub_1E5B32D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614C657669746361 && a2 == 0xEC00000074756F79)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5B3DDA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5B32E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B32D78(a1, a2);
  *a3 = result & 1;
  return result;
}
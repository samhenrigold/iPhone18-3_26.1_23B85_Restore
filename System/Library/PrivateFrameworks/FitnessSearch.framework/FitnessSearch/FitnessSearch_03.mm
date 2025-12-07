uint64_t sub_1E5C69FE0(uint64_t a1)
{
  v2 = sub_1E5C6A64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6A01C(uint64_t a1)
{
  v2 = sub_1E5C6A64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6A058(uint64_t a1)
{
  v2 = sub_1E5C6A6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6A094(uint64_t a1)
{
  v2 = sub_1E5C6A6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6A0D0(uint64_t a1)
{
  v2 = sub_1E5C6A6A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6A10C(uint64_t a1)
{
  v2 = sub_1E5C6A6A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchContentTile.encode(to:)(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C50, &qword_1E5CA26A0);
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v24 = &v21 - v2;
  v23 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C58, &qword_1E5CA26A8);
  v21 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v21 - v5;
  v7 = type metadata accessor for SearchContentTile(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C60, &qword_1E5CA26B0);
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6A64C();
  sub_1E5C9D130();
  sub_1E5C50220(v27, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C6AE74(v9, v4, type metadata accessor for SearchItem);
    LOBYTE(v34) = 1;
    sub_1E5C6A6A0();
    v13 = v24;
    v14 = v28;
    sub_1E5C9CFC0();
    sub_1E5C6B558(&qword_1ED054C78, type metadata accessor for SearchItem, &protocol conformance descriptor for SearchItem);
    v15 = v26;
    sub_1E5C9D030();
    (*(v25 + 8))(v13, v15);
    sub_1E5C6B9BC(v4, type metadata accessor for SearchItem);
    return (*(v10 + 8))(v12, v14);
  }

  else
  {
    v17 = *(v9 + 3);
    v36 = *(v9 + 2);
    v37 = v17;
    v38 = *(v9 + 8);
    v18 = *(v9 + 1);
    v34 = *v9;
    v35 = v18;
    LOBYTE(v29) = 0;
    sub_1E5C6A6F4();
    v19 = v28;
    sub_1E5C9CFC0();
    v31 = v36;
    v32 = v37;
    v33 = v38;
    v29 = v34;
    v30 = v35;
    sub_1E5C6A748();
    v20 = v22;
    sub_1E5C9D030();
    (*(v21 + 8))(v6, v20);
    (*(v10 + 8))(v12, v19);
    return sub_1E5C4F8A4(&v34);
  }
}

uint64_t type metadata accessor for SearchContentTile(uint64_t a1)
{
  result = qword_1ED054CC0;
  if (!qword_1ED054CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5C6A64C()
{
  result = qword_1ED054C68;
  if (!qword_1ED054C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C68);
  }

  return result;
}

unint64_t sub_1E5C6A6A0()
{
  result = qword_1ED054C70;
  if (!qword_1ED054C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C70);
  }

  return result;
}

unint64_t sub_1E5C6A6F4()
{
  result = qword_1ED054C80;
  if (!qword_1ED054C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C80);
  }

  return result;
}

unint64_t sub_1E5C6A748()
{
  result = qword_1ED054C88;
  if (!qword_1ED054C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C88);
  }

  return result;
}

uint64_t SearchContentTile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C90, &qword_1E5CA26B8);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v42 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C98, &qword_1E5CA26C0);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054CA0, &unk_1E5CA26C8);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for SearchContentTile(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v20 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5C6A64C();
  v21 = v53;
  sub_1E5C9D120();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v43 = v17;
  v53 = v14;
  v22 = v52;
  v44 = v19;
  v24 = v50;
  v23 = v51;
  v25 = sub_1E5C9CFB0();
  v26 = (2 * *(v25 + 16)) | 1;
  v59 = v25;
  v60 = v25 + 32;
  v61 = 0;
  v62 = v26;
  v27 = sub_1E5C448A4();
  if (v27 == 2 || v61 != v62 >> 1)
  {
    v28 = sub_1E5C9CE90();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
    *v30 = v11;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v24 + 8))(v10, v23);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  if (v27)
  {
    LOBYTE(v54) = 1;
    sub_1E5C6A6A0();
    sub_1E5C9CF20();
    type metadata accessor for SearchItem(0);
    sub_1E5C6B558(&qword_1ED054CA8, type metadata accessor for SearchItem, &protocol conformance descriptor for SearchItem);
    v33 = v53;
    v34 = v47;
    sub_1E5C9CFA0();
    (*(v48 + 8))(v22, v34);
    (*(v24 + 8))(v10, v23);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v35 = v44;
    sub_1E5C6AE74(v33, v44, type metadata accessor for SearchContentTile);
    v36 = v49;
  }

  else
  {
    LOBYTE(v54) = 0;
    sub_1E5C6A6F4();
    v32 = v7;
    sub_1E5C9CF20();
    v36 = v49;
    sub_1E5C6AEDC();
    v37 = v46;
    sub_1E5C9CFA0();
    (*(v45 + 8))(v32, v37);
    (*(v24 + 8))(v10, v23);
    swift_unknownObjectRelease();
    v38 = v57;
    v39 = v43;
    *(v43 + 2) = v56;
    *(v39 + 48) = v38;
    *(v39 + 64) = v58;
    v40 = v55;
    *v39 = v54;
    *(v39 + 16) = v40;
    swift_storeEnumTagMultiPayload();
    v41 = v39;
    v35 = v44;
    sub_1E5C6AE74(v41, v44, type metadata accessor for SearchContentTile);
  }

  sub_1E5C6AE74(v35, v36, type metadata accessor for SearchContentTile);
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1E5C6AE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5C6AEDC()
{
  result = qword_1ED054CB0;
  if (!qword_1ED054CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CB0);
  }

  return result;
}

uint64_t SearchContentTile.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchContentTile(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C50220(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C6AE74(v9, v6, type metadata accessor for SearchItem);
    MEMORY[0x1E69399F0](1);
    SearchItem.hash(into:)(a1);
    return sub_1E5C6B9BC(v6, type metadata accessor for SearchItem);
  }

  v11 = *(v9 + 6);
  v12 = *(v9 + 8);
  v13 = v9[32];
  MEMORY[0x1E69399F0](0);
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C4ED58(a1, v13);
  if (!v11)
  {
    MEMORY[0x1E69399F0](0);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1E5C9D0F0();
    goto LABEL_8;
  }

  MEMORY[0x1E69399F0](1);
  sub_1E5C9CC60();
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1E5C9D0F0();
  sub_1E5C9CC60();
LABEL_8:
}

uint64_t SearchContentTile.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchContentTile.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6B1A0()
{
  sub_1E5C9D0D0();
  SearchContentTile.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6B1E4(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchContentTile.hash(into:)(v2);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B11ContentTileO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchContentTile(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v28 - v15;
  v17 = v28 + *(v14 + 56) - v15;
  sub_1E5C50220(a1, v28 - v15);
  sub_1E5C50220(a2, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C50220(v16, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E5C6AE74(v17, v6, type metadata accessor for SearchItem);
      v18 = static SearchItem.== infix(_:_:)(v10, v6);
      sub_1E5C6B9BC(v6, type metadata accessor for SearchItem);
      sub_1E5C6B9BC(v10, type metadata accessor for SearchItem);
LABEL_9:
      sub_1E5C6B9BC(v16, type metadata accessor for SearchContentTile);
      return v18 & 1;
    }

    sub_1E5C6B9BC(v10, type metadata accessor for SearchItem);
  }

  else
  {
    sub_1E5C50220(v16, v12);
    v19 = *(v12 + 3);
    v36[2] = *(v12 + 2);
    v36[3] = v19;
    v37 = *(v12 + 8);
    v20 = *(v12 + 1);
    v36[0] = *v12;
    v36[1] = v20;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = *(v17 + 1);
      v22 = *(v17 + 3);
      v33 = *(v17 + 2);
      v34 = v22;
      v23 = *(v17 + 1);
      v32[0] = *v17;
      v32[1] = v23;
      v24 = *(v12 + 3);
      v30[2] = *(v12 + 2);
      v30[3] = v24;
      v25 = *(v12 + 1);
      v30[0] = *v12;
      v30[1] = v25;
      v26 = *(v17 + 3);
      v28[2] = v33;
      v28[3] = v26;
      v35 = *(v17 + 8);
      v31 = *(v12 + 8);
      v29 = *(v17 + 8);
      v28[0] = v32[0];
      v28[1] = v21;
      v18 = _s13FitnessSearch0B15ItemPlaceholderV2eeoiySbAC_ACtFZ_0(v30, v28);
      sub_1E5C4F8A4(v32);
      sub_1E5C4F8A4(v36);
      goto LABEL_9;
    }

    sub_1E5C4F8A4(v36);
  }

  sub_1E5C6B954(v16);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1E5C6B558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5C6B5A0(uint64_t a1)
{
  result = type metadata accessor for SearchItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5C6B640()
{
  result = qword_1ED054CD0;
  if (!qword_1ED054CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CD0);
  }

  return result;
}

unint64_t sub_1E5C6B698()
{
  result = qword_1ED054CD8;
  if (!qword_1ED054CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CD8);
  }

  return result;
}

unint64_t sub_1E5C6B6F0()
{
  result = qword_1ED054CE0;
  if (!qword_1ED054CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CE0);
  }

  return result;
}

unint64_t sub_1E5C6B748()
{
  result = qword_1ED054CE8;
  if (!qword_1ED054CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CE8);
  }

  return result;
}

unint64_t sub_1E5C6B7A0()
{
  result = qword_1ED054CF0;
  if (!qword_1ED054CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CF0);
  }

  return result;
}

unint64_t sub_1E5C6B7F8()
{
  result = qword_1ED054CF8;
  if (!qword_1ED054CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CF8);
  }

  return result;
}

unint64_t sub_1E5C6B850()
{
  result = qword_1ED054D00;
  if (!qword_1ED054D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D00);
  }

  return result;
}

unint64_t sub_1E5C6B8A8()
{
  result = qword_1ED054D08;
  if (!qword_1ED054D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D08);
  }

  return result;
}

unint64_t sub_1E5C6B900()
{
  result = qword_1ED054D10;
  if (!qword_1ED054D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D10);
  }

  return result;
}

uint64_t sub_1E5C6B954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C6B9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String __swiftcall SearchPageState.pageIdentifier(for:)(FitnessSearch::SearchPlatform a1)
{
  v2 = a1;
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v14 = v1[10];
  v13 = v1[11];
  v15 = *(v1 + 96);
  if (v2 == 2)
  {
    if (v15 >= 2)
    {
      if (v15 == 2)
      {
        if (v9)
        {
          v16 = 0xD000000000000010;
        }

        else
        {
          v16 = 0x746C757365526F4ELL;
        }

        if (v9)
        {
          v17 = 0x80000001E5CA8060;
        }

        else
        {
          v17 = 0xE900000000000073;
        }
      }

      else
      {
        v17 = 0xED0000676E69646ELL;
        v16 = 0x614C686372616553;
        if (v3 | v4 | v5 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13 && (v4 != 1 || (v5 | v3 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13) != 0))
        {
          v16 = 0x6F46686372616553;
          v17 = 0xEB00000000737563;
        }
      }
    }

    else
    {
      v16 = 0xD000000000000010;
      v17 = 0x80000001E5CA8060;
    }
  }

  else if (*(v1 + 96) > 1u)
  {
    if (v15 == 2)
    {
      if (v9)
      {

        v16 = v10;
        v17 = v9;
      }

      else
      {
        v16 = 0x746C757365526F4ELL;
        v17 = 0xE900000000000073;
      }
    }

    else
    {
      v17 = 0xED0000676E69646ELL;
      v16 = 0x614C686372616553;
      if (v3 | v4 | v5 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13 && (v4 != 1 || (v5 | v3 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13) != 0))
      {
        v16 = 0x6F46686372616553;
        v17 = 0xEB00000000737563;
      }
    }
  }

  else
  {
    v18 = 0x6F46686372616553;
    if (v1[2] - 1 >= 3)
    {
      v19 = 0xEB00000000737563;
    }

    else
    {
      v18 = 0x6948686372616553;
      v19 = 0xEB0000000073746ELL;
    }

    v20 = v15 == 0;
    if (*(v1 + 96))
    {
      v16 = v18;
    }

    else
    {
      v16 = 0x6948686372616553;
    }

    if (v20)
    {
      v17 = 0xEB0000000073746ELL;
    }

    else
    {
      v17 = v19;
    }
  }

  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1E5C6BCD4()
{
  v1 = 0x7552646564697567;
  v2 = 0x6F65646976;
  if (*v0 != 2)
  {
    v2 = 0x697461746964656DLL;
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

uint64_t sub_1E5C6BD5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C6C698(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C6BD90(uint64_t a1)
{
  v2 = sub_1E5C6C424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BDCC(uint64_t a1)
{
  v2 = sub_1E5C6C424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BE08(uint64_t a1)
{
  v2 = sub_1E5C6C574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BE44(uint64_t a1)
{
  v2 = sub_1E5C6C574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BE80(uint64_t a1)
{
  v2 = sub_1E5C6C520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BEBC(uint64_t a1)
{
  v2 = sub_1E5C6C520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BEF8(uint64_t a1)
{
  v2 = sub_1E5C6C478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BF34(uint64_t a1)
{
  v2 = sub_1E5C6C478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BF70(uint64_t a1)
{
  v2 = sub_1E5C6C4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BFAC(uint64_t a1)
{
  v2 = sub_1E5C6C4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearechContentMediaType.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D20, &qword_1E5CA2B10);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D28, &qword_1E5CA2B18);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D30, &qword_1E5CA2B20);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D38, &qword_1E5CA2B28);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D40, &qword_1E5CA2B30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6C424();
  sub_1E5C9D130();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1E5C6C4CC();
      v9 = v23;
      sub_1E5C9CFC0();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1E5C6C478();
      v9 = v26;
      sub_1E5C9CFC0();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1E5C6C520();
    sub_1E5C9CFC0();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1E5C6C574();
  sub_1E5C9CFC0();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1E5C6C424()
{
  result = qword_1ED054D48;
  if (!qword_1ED054D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D48);
  }

  return result;
}

unint64_t sub_1E5C6C478()
{
  result = qword_1ED054D50;
  if (!qword_1ED054D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D50);
  }

  return result;
}

unint64_t sub_1E5C6C4CC()
{
  result = qword_1ED054D58;
  if (!qword_1ED054D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D58);
  }

  return result;
}

unint64_t sub_1E5C6C520()
{
  result = qword_1ED054D60;
  if (!qword_1ED054D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D60);
  }

  return result;
}

unint64_t sub_1E5C6C574()
{
  result = qword_1ED054D68;
  if (!qword_1ED054D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D68);
  }

  return result;
}

void *sub_1E5C6C5E0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5C6C80C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SearechContentMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](a1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6C698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

void *sub_1E5C6C80C(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DD0, &qword_1E5CA3020);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DD8, &qword_1E5CA3028);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DE0, &qword_1E5CA3030);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DE8, &qword_1E5CA3038);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DF0, &unk_1E5CA3040);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5C6C424();
  v15 = v43;
  sub_1E5C9D120();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_1E5C9CFB0();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1E5C3AA58();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_1E5C6C520();
        v29 = v33;
        sub_1E5C9CF20();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1E5C6C574();
        v23 = v33;
        sub_1E5C9CF20();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_1E5C6C4CC();
      v28 = v33;
      sub_1E5C9CF20();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_1E5C6C478();
      v30 = v33;
      sub_1E5C9CF20();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_1E5C9CE90();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
  *v11 = &type metadata for SearechContentMediaType;
  sub_1E5C9CF30();
  sub_1E5C9CE80();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_1E5C6CE50()
{
  result = qword_1ED054D70;
  if (!qword_1ED054D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D70);
  }

  return result;
}

unint64_t sub_1E5C6CF08()
{
  result = qword_1ED054D78;
  if (!qword_1ED054D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D78);
  }

  return result;
}

unint64_t sub_1E5C6CF60()
{
  result = qword_1ED054D80;
  if (!qword_1ED054D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D80);
  }

  return result;
}

unint64_t sub_1E5C6CFB8()
{
  result = qword_1ED054D88;
  if (!qword_1ED054D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D88);
  }

  return result;
}

unint64_t sub_1E5C6D010()
{
  result = qword_1ED054D90;
  if (!qword_1ED054D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D90);
  }

  return result;
}

unint64_t sub_1E5C6D068()
{
  result = qword_1ED054D98;
  if (!qword_1ED054D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D98);
  }

  return result;
}

unint64_t sub_1E5C6D0C0()
{
  result = qword_1ED054DA0;
  if (!qword_1ED054DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DA0);
  }

  return result;
}

unint64_t sub_1E5C6D118()
{
  result = qword_1ED054DA8;
  if (!qword_1ED054DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DA8);
  }

  return result;
}

unint64_t sub_1E5C6D170()
{
  result = qword_1ED054DB0;
  if (!qword_1ED054DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DB0);
  }

  return result;
}

unint64_t sub_1E5C6D1C8()
{
  result = qword_1ED054DB8;
  if (!qword_1ED054DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DB8);
  }

  return result;
}

unint64_t sub_1E5C6D220()
{
  result = qword_1ED054DC0;
  if (!qword_1ED054DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DC0);
  }

  return result;
}

unint64_t sub_1E5C6D278()
{
  result = qword_1ED054DC8;
  if (!qword_1ED054DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DC8);
  }

  return result;
}

uint64_t SearchLandingSectionDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchLandingSectionDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchLandingSectionDescriptor(0) + 24);
  v4 = sub_1E5C9BAA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SearchLandingSectionDescriptor(uint64_t a1)
{
  result = qword_1ED054E38;
  if (!qword_1ED054E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double SearchLandingSectionDescriptor.items.getter()
{
  type metadata accessor for SearchLandingSectionDescriptor(0);

  return result;
}

uint64_t SearchLandingSectionDescriptor.init(identifier:title:layout:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = a4 & 1;
  *a6 = a1;
  *(a6 + 8) = a2;
  v9 = type metadata accessor for SearchLandingSectionDescriptor(0);
  *(a6 + *(v9 + 28)) = a5;
  v10 = *(v9 + 24);
  v11 = sub_1E5C9BAA0();
  v12 = *(*(v11 - 8) + 32);

  return v12(a6 + v10, a3, v11);
}

uint64_t sub_1E5C6D4A0()
{
  v1 = 0x696669746E656469;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x74756F79616CLL;
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

uint64_t sub_1E5C6D514@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C6E630(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C6D53C(uint64_t a1)
{
  v2 = sub_1E5C6D840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6D578(uint64_t a1)
{
  v2 = sub_1E5C6D840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLandingSectionDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DF8, &unk_1E5CA3050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6D840();
  sub_1E5C9D130();
  v16 = 0;
  sub_1E5C9D000();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v14 = 1;
    sub_1E5C6D894();
    sub_1E5C9D030();
    v9 = type metadata accessor for SearchLandingSectionDescriptor(0);
    v13 = 2;
    sub_1E5C9BAA0();
    sub_1E5C21F8C(&qword_1ED054E10, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    sub_1E5C9D030();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C6DD8C(&qword_1ED053F08, &qword_1ED053F10, &protocol conformance descriptor for SearchContentTile, MEMORY[0x1E69E6300]);
    sub_1E5C9D030();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5C6D840()
{
  result = qword_1ED054E00;
  if (!qword_1ED054E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E00);
  }

  return result;
}

unint64_t sub_1E5C6D894()
{
  result = qword_1ED054E08;
  if (!qword_1ED054E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E08);
  }

  return result;
}

uint64_t SearchLandingSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1E5C9BAA0();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E18, &qword_1E5CA3060);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SearchLandingSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6D840();
  v19 = v7;
  v11 = v21;
  sub_1E5C9D120();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v27 = 0;
  *v10 = sub_1E5C9CF70();
  *(v10 + 1) = v13;
  v21 = v13;
  v25 = 1;
  sub_1E5C6DD38();
  sub_1E5C9CFA0();
  v10[16] = v26;
  v24 = 2;
  sub_1E5C21F8C(&qword_1ED054E28, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  sub_1E5C9CFA0();
  (*(v17 + 32))(&v10[*(v8 + 24)], v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
  v23 = 3;
  sub_1E5C6DD8C(&qword_1ED053F20, &qword_1ED053F28, &protocol conformance descriptor for SearchContentTile, MEMORY[0x1E69E6330]);
  sub_1E5C9CFA0();
  (*(v12 + 8))(v19, v20);
  *&v10[*(v8 + 28)] = v22;
  sub_1E5C6DE28(v10, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5C6DE8C(v10);
}

unint64_t sub_1E5C6DD38()
{
  result = qword_1ED054E20;
  if (!qword_1ED054E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E20);
  }

  return result;
}

uint64_t sub_1E5C6DD8C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C21F8C(a2, type metadata accessor for SearchContentTile, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C6DE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C6DE8C(uint64_t a1)
{
  v2 = type metadata accessor for SearchLandingSectionDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchLandingSectionDescriptor.hash(into:)(uint64_t a1)
{
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v1 + 16));
  v3 = type metadata accessor for SearchLandingSectionDescriptor(0);
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5C9CBB0();
  v4 = *(v1 + *(v3 + 28));

  return sub_1E5C2A6D0(a1, v4);
}

uint64_t SearchLandingSectionDescriptor.hashValue.getter()
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v0 + 16));
  v1 = type metadata accessor for SearchLandingSectionDescriptor(0);
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5C9CBB0();
  sub_1E5C2A6D0(v3, *(v0 + *(v1 + 28)));
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6E0B4(uint64_t a1)
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v1 + 16));
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5C9CBB0();
  sub_1E5C2A6D0(v4, *(v1 + *(a1 + 28)));
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6E17C(uint64_t a1, uint64_t a2)
{
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + 16));
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5C9CBB0();
  v5 = *(v2 + *(a2 + 28));

  return sub_1E5C2A6D0(a1, v5);
}

uint64_t sub_1E5C6E23C(uint64_t a1, uint64_t a2)
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + 16));
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5C9CBB0();
  sub_1E5C2A6D0(v5, *(v2 + *(a2 + 28)));
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B24LandingSectionDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for SearchLandingSectionDescriptor(0);
  if ((sub_1E5C9BA70() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1E5C773E4(v7, v8);
}

void sub_1E5C6E424(uint64_t a1)
{
  sub_1E5C9BAA0();
  if (v1 <= 0x3F)
  {
    sub_1E5C6E4C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5C6E4C0(uint64_t a1)
{
  if (!qword_1ED054E48)
  {
    type metadata accessor for SearchContentTile(255);
    v1 = sub_1E5C9CD00();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED054E48);
    }
  }
}

unint64_t sub_1E5C6E52C()
{
  result = qword_1ED054E50;
  if (!qword_1ED054E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E50);
  }

  return result;
}

unint64_t sub_1E5C6E584()
{
  result = qword_1ED054E58;
  if (!qword_1ED054E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E58);
  }

  return result;
}

unint64_t sub_1E5C6E5DC()
{
  result = qword_1ED054E60;
  if (!qword_1ED054E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E60);
  }

  return result;
}

uint64_t sub_1E5C6E630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

__n128 SearchEnvironment.init(clearCanvasState:clearSearchHistory:dismissKeyboard:fetchSearchHistory:fetchSearchLandingSectionDescriptors:fetchSearchResults:fetchSearchSuggestions:insertSearchHistory:makeArchivedSessionsUpdatedStream:makeDictationStream:makeIntentStream:makeTrainerTipJournalsUpdatedStream:refreshCanvas:refreshCanvasItems:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __n128 a18, uint64_t a19, uint64_t a20)
{
  result = a18;
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
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 216) = a20;
  return result;
}

uint64_t type metadata accessor for SearchHistoryItemView(uint64_t a1)
{
  result = qword_1ED054E70;
  if (!qword_1ED054E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C6E8DC(uint64_t a1)
{
  sub_1E5C6E960(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E5C6E960(uint64_t a1)
{
  if (!qword_1ED054E80)
  {
    sub_1E5C9BF80();
    v1 = sub_1E5C9BDD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED054E80);
    }
  }
}

double sub_1E5C6E9D4@<D0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_1E5C9C4E0();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E88, &qword_1E5CA3408);
  MEMORY[0x1EEE9AC00](v61);
  v5 = &v57 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E90, &qword_1E5CA3410);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v57 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E98, &qword_1E5CA3418);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v57 - v8;
  v10 = sub_1E5C9BF80();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EA0, &qword_1E5CA3420);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v58 = &v57 - v18;
  v19 = type metadata accessor for SearchHistoryItemView(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EA8, &qword_1E5CA3428);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v57 - v22;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EB0, &qword_1E5CA3430);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v57 - v23;
  sub_1E5C6FE0C(v1, v21);
  sub_1E5C48728(v16);
  (*(v11 + 104))(v14, *MEMORY[0x1E697E6C0], v10);
  v24 = sub_1E5C9BF70();
  v25 = *(v11 + 8);
  v25(v14, v10);
  v25(v16, v10);
  if (v24)
  {
    *v9 = sub_1E5C9C1A0();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EE0, &qword_1E5CA3480);
    sub_1E5C6F1D0(v21, &v9[*(v26 + 44)]);
    sub_1E5C3165C(v9, v7, &qword_1ED054E98, &qword_1E5CA3418);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED054EC0, &qword_1ED054E98, &qword_1E5CA3418, MEMORY[0x1E69817F8]);
    sub_1E5C27F74(&qword_1ED054EC8, &qword_1ED054E88, &qword_1E5CA3408, MEMORY[0x1E6981870]);
    v27 = v58;
    sub_1E5C9C280();
    v28 = v9;
    v29 = &qword_1ED054E98;
    v30 = &qword_1E5CA3418;
  }

  else
  {
    *v5 = sub_1E5C9C210();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EB8, &qword_1E5CA3438);
    sub_1E5C6F1D0(v21, &v5[*(v31 + 44)]);
    sub_1E5C3165C(v5, v7, &qword_1ED054E88, &qword_1E5CA3408);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED054EC0, &qword_1ED054E98, &qword_1E5CA3418, MEMORY[0x1E69817F8]);
    sub_1E5C27F74(&qword_1ED054EC8, &qword_1ED054E88, &qword_1E5CA3408, MEMORY[0x1E6981870]);
    v27 = v58;
    sub_1E5C9C280();
    v28 = v5;
    v29 = &qword_1ED054E88;
    v30 = &qword_1E5CA3408;
  }

  sub_1E5C3177C(v28, v29, v30);
  v32 = v64;
  sub_1E5C6FECC(v27, v64, &qword_1ED054EA0, &qword_1E5CA3420);
  sub_1E5C6FE70(v21);
  sub_1E5C9C4C0();
  v34 = v65;
  v33 = v66;
  v35 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x1E6980EA8], v67);
  v36 = sub_1E5C9C500();

  (*(v33 + 8))(v34, v35);
  KeyPath = swift_getKeyPath();
  v38 = (v32 + *(v59 + 36));
  *v38 = KeyPath;
  v38[1] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054ED0, &qword_1E5CA3470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA3380;
  LOBYTE(v33) = sub_1E5C9C470();
  *(inited + 32) = v33;
  v40 = sub_1E5C9C460();
  *(inited + 33) = v40;
  v41 = sub_1E5C9C490();
  sub_1E5C9C490();
  if (sub_1E5C9C490() != v33)
  {
    v41 = sub_1E5C9C490();
  }

  sub_1E5C9C490();
  if (sub_1E5C9C490() != v40)
  {
    v41 = sub_1E5C9C490();
  }

  sub_1E5C9BDA0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v63;
  sub_1E5C6FECC(v32, v63, &qword_1ED054EA8, &qword_1E5CA3428);
  v51 = v50 + *(v62 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = sub_1E5C9C4A0();
  v53 = v50;
  v54 = v68;
  sub_1E5C6FECC(v53, v68, &qword_1ED054EB0, &qword_1E5CA3430);
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054ED8, &qword_1E5CA3478) + 36);
  *v55 = v52;
  result = 0.0;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  *(v55 + 40) = 1;
  return result;
}

uint64_t sub_1E5C6F1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v3 = sub_1E5C9BF80();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v99 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v89[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EE8, &qword_1E5CA3488);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v89[-v9];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EF0, &qword_1E5CA3490);
  MEMORY[0x1EEE9AC00](v93);
  v12 = &v89[-v11];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EF8, &qword_1E5CA3498);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v89[-v13];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F00, &qword_1E5CA34A0);
  v14 = MEMORY[0x1EEE9AC00](v98);
  v16 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v89[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v89[-v19];
  v115 = sub_1E5C9C810();
  v21 = *MEMORY[0x1E697E728];
  v100 = v4;
  v103 = *(v4 + 104);
  v104 = v4 + 104;
  v103(v10, v21, v3);
  sub_1E5C6FFA4(&qword_1ED054F08, MEMORY[0x1E697E750]);
  result = sub_1E5C9CC00();
  if (result)
  {
    v101 = v16;
    v102 = v20;
    v92 = a2;
    sub_1E5C27F74(&qword_1ED054F10, &qword_1ED054EE8, &qword_1E5CA3488, MEMORY[0x1E69E6ED8]);
    sub_1E5C9C660();
    sub_1E5C3177C(v10, &qword_1ED054EE8, &qword_1E5CA3488);

    v23 = sub_1E5C9C7D0();
    KeyPath = swift_getKeyPath();
    v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F18, &qword_1E5CA34D8) + 36)];
    *v25 = KeyPath;
    v25[1] = v23;
    LOBYTE(KeyPath) = sub_1E5C9C480();
    v91 = type metadata accessor for SearchHistoryItemView(0);
    sub_1E5C9BDA0();
    v26 = &v12[*(v93 + 36)];
    *v26 = KeyPath;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    v90 = sub_1E5C9C470();
    v31 = v94;
    sub_1E5C48728(v94);
    v33 = v99;
    LODWORD(v93) = *MEMORY[0x1E697E6C0];
    v32 = v93;
    v103(v99, v93, v3);
    sub_1E5C9BF70();
    v34 = *(v100 + 8);
    v34(v33, v3);
    v34(v31, v3);
    sub_1E5C9BDA0();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v12;
    v44 = v96;
    sub_1E5C6FECC(v43, v96, &qword_1ED054EF0, &qword_1E5CA3490);
    v45 = &v44[*(v95 + 36)];
    *v45 = v90;
    *(v45 + 1) = v36;
    *(v45 + 2) = v38;
    *(v45 + 3) = v40;
    *(v45 + 4) = v42;
    v45[40] = 0;
    LODWORD(v100) = sub_1E5C9C4A0();
    sub_1E5C48728(v31);
    v103(v33, v32, v3);
    sub_1E5C9BF70();
    v34(v33, v3);
    v34(v31, v3);
    sub_1E5C9BDA0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v97;
    sub_1E5C6FECC(v44, v97, &qword_1ED054EF8, &qword_1E5CA3498);
    v55 = &v54[*(v98 + 36)];
    *v55 = v100;
    *(v55 + 1) = v47;
    *(v55 + 2) = v49;
    *(v55 + 3) = v51;
    *(v55 + 4) = v53;
    v55[40] = 0;
    sub_1E5C6FECC(v54, v102, &qword_1ED054F00, &qword_1E5CA34A0);
    v56 = (v105 + *(v91 + 24));
    v57 = v56[1];
    v115 = *v56;
    v116 = v57;
    sub_1E5C28160();

    v58 = sub_1E5C9C580();
    v96 = v59;
    v97 = v58;
    LOBYTE(v32) = v60;
    v100 = v61;
    LODWORD(v98) = sub_1E5C9C480();
    sub_1E5C48728(v31);
    v103(v33, v93, v3);
    sub_1E5C9BF70();
    v34(v33, v3);
    v34(v31, v3);
    sub_1E5C9BDA0();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v32 & 1;
    v146 = v32 & 1;
    LODWORD(v99) = v32 & 1;
    v143 = 0;
    v104 = swift_getKeyPath();
    sub_1E5C9CA00();
    sub_1E5C9C040();
    *&v148[55] = v154;
    *&v148[71] = v155;
    *&v148[87] = v156;
    *&v148[103] = v157;
    *&v148[7] = v151;
    *&v148[23] = v152;
    *&v148[39] = v153;
    v71 = sub_1E5C6FC20();
    v103 = v71;
    v72 = swift_getKeyPath();
    v149 = 0;
    v95 = sub_1E5C9C7B0();
    v73 = swift_getKeyPath();
    v105 = v73;
    v74 = v101;
    sub_1E5C3165C(v102, v101, &qword_1ED054F00, &qword_1E5CA34A0);
    v75 = v74;
    v76 = v92;
    sub_1E5C3165C(v75, v92, &qword_1ED054F00, &qword_1E5CA34A0);
    v77 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F20, &qword_1E5CA3540) + 48);
    v79 = v96;
    v78 = v97;
    *&v106 = v97;
    *(&v106 + 1) = v96;
    LOBYTE(v107) = v70;
    *(&v107 + 1) = *v145;
    DWORD1(v107) = *&v145[3];
    v80 = v100;
    *(&v107 + 1) = v100;
    LOBYTE(v76) = v98;
    LOBYTE(v108) = v98;
    *(&v108 + 1) = *v144;
    DWORD1(v108) = *&v144[3];
    *(&v108 + 1) = v63;
    *&v109 = v65;
    *(&v109 + 1) = v67;
    *&v110 = v69;
    BYTE8(v110) = 0;
    *(&v110 + 9) = *v147;
    HIDWORD(v110) = *&v147[3];
    *&v111[0] = v104;
    BYTE8(v111[0]) = 0;
    *(&v111[4] + 9) = *&v148[64];
    *(&v111[5] + 9) = *&v148[80];
    *(&v111[6] + 9) = *&v148[96];
    *(v111 + 9) = *v148;
    *(&v111[1] + 9) = *&v148[16];
    *(&v111[2] + 9) = *&v148[32];
    *(&v111[3] + 9) = *&v148[48];
    *(&v111[7] + 1) = *&v148[111];
    *&v112 = v72;
    *(&v112 + 1) = v71;
    LOBYTE(v113) = 0;
    DWORD1(v113) = *&v150[3];
    *(&v113 + 1) = *v150;
    v81 = v95;
    *(&v113 + 1) = v73;
    v114 = v95;
    *(v77 + 240) = v95;
    v82 = v111[6];
    *(v77 + 160) = v111[5];
    *(v77 + 176) = v82;
    v83 = v111[4];
    *(v77 + 128) = v111[3];
    *(v77 + 144) = v83;
    v84 = v111[2];
    *(v77 + 96) = v111[1];
    *(v77 + 112) = v84;
    v85 = v111[0];
    *(v77 + 64) = v110;
    *(v77 + 80) = v85;
    v86 = v109;
    *(v77 + 32) = v108;
    *(v77 + 48) = v86;
    v87 = v107;
    *v77 = v106;
    *(v77 + 16) = v87;
    v88 = v112;
    *(v77 + 192) = v111[7];
    *(v77 + 208) = v88;
    *(v77 + 224) = v113;
    sub_1E5C6FF34(&v106, &v115);
    sub_1E5C3177C(v102, &qword_1ED054F00, &qword_1E5CA34A0);
    v115 = v78;
    v116 = v79;
    v117 = v99;
    *v118 = *v145;
    *&v118[3] = *&v145[3];
    v119 = v80;
    v120 = v76;
    *v121 = *v144;
    *&v121[3] = *&v144[3];
    v122 = v63;
    v123 = v65;
    v124 = v67;
    v125 = v69;
    v126 = 0;
    *&v127[3] = *&v147[3];
    *v127 = *v147;
    v128 = v104;
    v129 = 0;
    v134 = *&v148[64];
    v135 = *&v148[80];
    *v136 = *&v148[96];
    v130 = *v148;
    v131 = *&v148[16];
    v132 = *&v148[32];
    v133 = *&v148[48];
    *&v136[15] = *&v148[111];
    v137 = v72;
    v138 = v103;
    v139 = 0;
    *&v140[3] = *&v150[3];
    *v140 = *v150;
    v141 = v105;
    v142 = v81;
    sub_1E5C3177C(&v115, &qword_1ED054F28, &qword_1E5CA3548);
    return sub_1E5C3177C(v101, &qword_1ED054F00, &qword_1E5CA34A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C6FC20()
{
  v0 = sub_1E5C9BF80();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  sub_1E5C48728((&v12 - v5));
  v7 = *(v1 + 104);
  v7(v4, *MEMORY[0x1E697E708], v0);
  v8 = sub_1E5C9BF70();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  if (v8)
  {
    return 1;
  }

  sub_1E5C48728(v6);
  v7(v4, *MEMORY[0x1E697E6C0], v0);
  sub_1E5C6FFA4(&qword_1ED054F30, MEMORY[0x1E697E748]);
  v11 = sub_1E5C9CBE0();
  v9(v4, v0);
  v9(v6, v0);
  if (v11)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E5C6FE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C6FE70(uint64_t a1)
{
  v2 = type metadata accessor for SearchHistoryItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C6FECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5C6FF34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F28, &qword_1E5CA3548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C6FFA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5C9BF80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C70018(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C7009C()
{
  result = qword_1ED054F48;
  if (!qword_1ED054F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054EA8, &qword_1E5CA3428);
    sub_1E5C70154();
    sub_1E5C27F74(&qword_1ED0549C8, &qword_1ED0549D0, &qword_1E5CA1520, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F48);
  }

  return result;
}

unint64_t sub_1E5C70154()
{
  result = qword_1ED054F50;
  if (!qword_1ED054F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054EA0, &qword_1E5CA3420);
    sub_1E5C27F74(&qword_1ED054EC0, &qword_1ED054E98, &qword_1E5CA3418, MEMORY[0x1E69817F8]);
    sub_1E5C27F74(&qword_1ED054EC8, &qword_1ED054E88, &qword_1E5CA3408, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F50);
  }

  return result;
}

uint64_t sub_1E5C70238()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x6974736567677573;
  v4 = 0x676E696863746566;
  if (v1 != 4)
  {
    v4 = 0x73746C75736572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E616CLL;
  if (v1 != 1)
  {
    v5 = 0x79726F74736968;
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

uint64_t sub_1E5C702F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C73154(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C70324(uint64_t a1)
{
  v2 = sub_1E5C70EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70360(uint64_t a1)
{
  v2 = sub_1E5C70EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7039C(uint64_t a1)
{
  v2 = sub_1E5C70F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C703D8(uint64_t a1)
{
  v2 = sub_1E5C70F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C70414(uint64_t a1)
{
  v2 = sub_1E5C70FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70450(uint64_t a1)
{
  v2 = sub_1E5C70FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7048C(uint64_t a1)
{
  v2 = sub_1E5C710A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C704C8(uint64_t a1)
{
  v2 = sub_1E5C710A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C70504(uint64_t a1)
{
  v2 = sub_1E5C71050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70540(uint64_t a1)
{
  v2 = sub_1E5C71050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7057C(uint64_t a1)
{
  v2 = sub_1E5C70F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C705B8(uint64_t a1)
{
  v2 = sub_1E5C70F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C705F4(uint64_t a1)
{
  v2 = sub_1E5C70FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70630(uint64_t a1)
{
  v2 = sub_1E5C70FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchPageState.encode(to:)(void *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F58, &qword_1E5CA3550);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v36 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F60, &qword_1E5CA3558);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v36 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F68, &qword_1E5CA3560);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v36 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F70, &qword_1E5CA3568);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v36 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F78, &qword_1E5CA3570);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F80, &qword_1E5CA3578);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F88, &qword_1E5CA3580);
  v63 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v13 = v1[1];
  v61 = *v1;
  v62 = v13;
  v14 = v1[2];
  v59 = v1[3];
  v60 = v14;
  v15 = v1[5];
  v51 = v1[4];
  v53 = v15;
  v16 = v1[7];
  v52 = v1[6];
  v18 = v1[8];
  v17 = v1[9];
  v54 = v16;
  v55 = v17;
  v20 = v1[10];
  v19 = v1[11];
  v56 = v18;
  v57 = v20;
  v58 = v19;
  v21 = *(v1 + 96);
  v22 = a1[3];
  v23 = a1;
  v25 = &v36 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1E5C70EAC();
  sub_1E5C9D130();
  if (v21 <= 1)
  {
    if (v21)
    {
      LOBYTE(v65) = 4;
      sub_1E5C70F54();
      v6 = v45;
      sub_1E5C9CFC0();
      LOBYTE(v65) = 0;
      v9 = v47;
      v28 = v64;
      sub_1E5C9D000();
      if (!v28)
      {
        LOBYTE(v65) = v60;
        v73 = 1;
        sub_1E5C36AF8();
        sub_1E5C9D030();
      }

      v26 = &v74;
    }

    else
    {
      LOBYTE(v65) = 3;
      sub_1E5C70FA8();
      sub_1E5C9CFC0();
      v9 = v44;
      sub_1E5C9D000();
      v26 = &v72;
    }

LABEL_11:
    v29 = *(*(v26 - 32) + 8);
    v30 = v6;
LABEL_12:
    v31 = v9;
    goto LABEL_13;
  }

  if (v21 == 2)
  {
    LOBYTE(v65) = 5;
    sub_1E5C70F00();
    v6 = v48;
    sub_1E5C9CFC0();
    LOBYTE(v65) = 0;
    v9 = v50;
    v27 = v64;
    sub_1E5C9D000();
    if (!v27)
    {
      LOBYTE(v65) = 1;
      sub_1E5C9CFD0();
      v65 = v51;
      v66 = v53;
      v67 = v52;
      v68 = v54;
      v69 = v56;
      v70[0] = v55;
      v70[1] = v57;
      v70[2] = v58;
      v73 = 2;
      sub_1E5C32CD8();
      sub_1E5C9CFF0();
    }

    v26 = &v75;
    goto LABEL_11;
  }

  if (!(v62 | v61 | v60 | v59 | v51 | v53 | v52 | v54 | v56 | v55 | v57 | v58))
  {
    LOBYTE(v65) = 0;
    sub_1E5C710A4();
    sub_1E5C9CFC0();
    v29 = *(v42 + 8);
    v30 = v11;
    goto LABEL_12;
  }

  if (v61 != 1 || v60 | v62 | v59 | v51 | v53 | v52 | v54 | v56 | v55 | v57 | v58)
  {
    LOBYTE(v65) = 2;
    sub_1E5C70FFC();
    v35 = v39;
    sub_1E5C9CFC0();
    v29 = *(v40 + 8);
    v30 = v35;
    v34 = &v71;
  }

  else
  {
    LOBYTE(v65) = 1;
    sub_1E5C71050();
    v33 = v36;
    sub_1E5C9CFC0();
    v29 = *(v37 + 8);
    v30 = v33;
    v34 = v70;
  }

  v31 = *(v34 - 32);
LABEL_13:
  v29(v30, v31);
  return (*(v63 + 8))(v25, v12);
}

unint64_t sub_1E5C70EAC()
{
  result = qword_1ED054F90;
  if (!qword_1ED054F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F90);
  }

  return result;
}

unint64_t sub_1E5C70F00()
{
  result = qword_1ED054F98;
  if (!qword_1ED054F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F98);
  }

  return result;
}

unint64_t sub_1E5C70F54()
{
  result = qword_1ED054FA0;
  if (!qword_1ED054FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FA0);
  }

  return result;
}

unint64_t sub_1E5C70FA8()
{
  result = qword_1ED054FA8;
  if (!qword_1ED054FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FA8);
  }

  return result;
}

unint64_t sub_1E5C70FFC()
{
  result = qword_1ED054FB0;
  if (!qword_1ED054FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FB0);
  }

  return result;
}

unint64_t sub_1E5C71050()
{
  result = qword_1ED054FB8;
  if (!qword_1ED054FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FB8);
  }

  return result;
}

unint64_t sub_1E5C710A4()
{
  result = qword_1ED054FC0;
  if (!qword_1ED054FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FC0);
  }

  return result;
}

uint64_t SearchPageState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FC8, &qword_1E5CA3588);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v65 - v3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FD0, &qword_1E5CA3590);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v82 = &v65 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FD8, &qword_1E5CA3598);
  v73 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v81 = &v65 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FE0, &qword_1E5CA35A0);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v80 = &v65 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FE8, &qword_1E5CA35A8);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FF0, &qword_1E5CA35B0);
  v67 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FF8, &qword_1E5CA35B8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - v14;
  v16 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5C70EAC();
  v17 = v83;
  sub_1E5C9D120();
  if (!v17)
  {
    v18 = v11;
    v65 = v9;
    v66 = v8;
    v20 = v80;
    v19 = v81;
    v21 = v82;
    v83 = 0;
    v22 = v12;
    v23 = sub_1E5C9CFB0();
    v24 = (2 * *(v23 + 16)) | 1;
    v89 = v23;
    v90 = v23 + 32;
    v91 = 0;
    v92 = v24;
    v25 = sub_1E5C3AA8C();
    if (v25 == 6 || v91 != v92 >> 1)
    {
      v37 = sub_1E5C9CE90();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
      *v39 = &type metadata for SearchPageState;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v13 + 8))(v15, v12);
    }

    else
    {
      if (v25 > 2u)
      {
        if (v25 != 3)
        {
          v81 = v15;
          v41 = v13;
          if (v25 == 4)
          {
            LOBYTE(v85) = 4;
            sub_1E5C70F54();
            v30 = v21;
            v42 = v81;
            v43 = v83;
            sub_1E5C9CF20();
            v44 = v79;
            if (!v43)
            {
              LOBYTE(v85) = 0;
              v45 = v74;
              v36 = sub_1E5C9CF70();
              v56 = v55;
              v93 = 1;
              sub_1E5C36DE4();
              sub_1E5C9CFA0();
              (*(v75 + 8))(v30, v45);
              (*(v41 + 8))(v81, v22);
              swift_unknownObjectRelease();
              v32 = 0;
              v31 = v85;
              v35 = 1;
              v29 = v56;
LABEL_28:
              *v44 = v36;
              *(v44 + 8) = v29;
              *(v44 + 16) = v32 | v31;
              *(v44 + 24) = v30;
              *(v44 + 32) = v33;
              *(v44 + 48) = v34;
              *(v44 + 64) = v60;
              *(v44 + 80) = v61;
              *(v44 + 96) = v35;
              return __swift_destroy_boxed_opaque_existential_1(v84);
            }
          }

          else
          {
            LOBYTE(v85) = 5;
            sub_1E5C70F00();
            v51 = v78;
            v42 = v81;
            v52 = v83;
            sub_1E5C9CF20();
            if (!v52)
            {
              LOBYTE(v85) = 0;
              v53 = v76;
              v36 = sub_1E5C9CF70();
              v83 = v57;
              LOBYTE(v85) = 1;
              v58 = sub_1E5C9CF40();
              v59 = v77;
              v30 = v62;
              v63 = v51;
              v64 = v58;
              v93 = 2;
              sub_1E5C3376C();
              sub_1E5C9CF60();
              (*(v59 + 8))(v63, v53);
              (*(v41 + 8))(v81, v22);
              swift_unknownObjectRelease();
              v33 = v85;
              v34 = v86;
              v31 = v64;
              v32 = v64 & 0xFFFFFFFFFFFFFF00;
              v35 = 2;
              v60 = v87;
              v61 = v88;
              v44 = v79;
              v29 = v83;
              goto LABEL_28;
            }
          }

          (*(v41 + 8))(v42, v22);
          goto LABEL_10;
        }

        LOBYTE(v85) = 3;
        sub_1E5C70FA8();
        v47 = v19;
        v27 = v22;
        v48 = v83;
        sub_1E5C9CF20();
        if (!v48)
        {
          v30 = v70;
          v49 = sub_1E5C9CF70();
          v29 = v54;
          v36 = v49;
          (*(v73 + 8))(v47, v30);
          (*(v13 + 8))(v15, v22);
          swift_unknownObjectRelease();
          v35 = 0;
          v32 = 0;
LABEL_27:
          v44 = v79;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v25)
        {
          LOBYTE(v85) = 0;
          sub_1E5C710A4();
          v46 = v83;
          sub_1E5C9CF20();
          if (!v46)
          {
            (*(v67 + 8))(v18, v65);
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v36 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0uLL;
            v34 = 0uLL;
            v35 = 3;
            goto LABEL_26;
          }

          (*(v13 + 8))(v15, v12);
          goto LABEL_10;
        }

        if (v25 == 1)
        {
          LOBYTE(v85) = 1;
          sub_1E5C71050();
          v26 = v66;
          v27 = v12;
          v28 = v83;
          sub_1E5C9CF20();
          if (!v28)
          {
            (*(v68 + 8))(v26, v69);
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0uLL;
            v34 = 0uLL;
            v35 = 3;
            v36 = 1;
LABEL_26:
            v60 = 0uLL;
            v61 = 0uLL;
            goto LABEL_27;
          }
        }

        else
        {
          LOBYTE(v85) = 2;
          sub_1E5C70FFC();
          v27 = v12;
          v50 = v83;
          sub_1E5C9CF20();
          if (!v50)
          {
            (*(v71 + 8))(v20, v72);
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0uLL;
            v34 = 0uLL;
            v35 = 3;
            v36 = 2;
            goto LABEL_26;
          }
        }
      }

      (*(v13 + 8))(v15, v27);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t SearchPageState.hash(into:)(uint64_t a1)
{
  v7 = *v1;
  v8 = v1[1];
  v3 = v1[5];
  v11 = v1[4];
  v12 = v3;
  v13 = *(v1 + 96);
  v4 = v1[3];
  v9 = v1[2];
  v10 = v4;
  if (v13 <= 1u)
  {
    if (v13)
    {
      MEMORY[0x1E69399F0](4);
      sub_1E5C9CC60();
      sub_1E5C9CC60();
    }

    else
    {
      MEMORY[0x1E69399F0](3);

      return sub_1E5C9CC60();
    }
  }

  if (v13 == 2)
  {
    MEMORY[0x1E69399F0](5);
    sub_1E5C9CC60();
    if (*(&v8 + 1))
    {
      sub_1E5C9D0F0();
      sub_1E5C9CC60();
      if (*(&v10 + 1))
      {
LABEL_9:
        sub_1E5C9D0F0();
        sub_1E5C9D0F0();

        if (*(&v9 + 1))
        {

          sub_1E5C9CC60();
        }

        sub_1E5C9CC60();
        MEMORY[0x1E69399F0](v11);
        sub_1E5C9CC60();
        sub_1E5C2A6D0(a1, *(&v12 + 1));
        return sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
      }
    }

    else
    {
      sub_1E5C9D0F0();
      if (*(&v10 + 1))
      {
        goto LABEL_9;
      }
    }

    return sub_1E5C9D0F0();
  }

  v6 = v8 | v7 | *(&v12 + 1) | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1) | v9 | *(&v8 + 1) | *(&v7 + 1);
  if (v6)
  {
    if (v7 != 1 || *(&v12 + 1) | v8 | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1) | v9 | *(&v8 + 1) | *(&v7 + 1))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return MEMORY[0x1E69399F0](v6);
}

uint64_t SearchPageState.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchPageState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C720D8()
{
  sub_1E5C9D0D0();
  SearchPageState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C7211C(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchPageState.hash(into:)(v2);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B9PageStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v82 = a1[4];
  v83 = v3;
  v4 = a1[1];
  v79[0] = *a1;
  v79[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v80 = a1[2];
  v81 = v5;
  v8 = a2[1];
  v85 = *a2;
  v86 = v8;
  v9 = a2[3];
  v10 = a2[5];
  v89 = a2[4];
  v90 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v87 = a2[2];
  v88 = v11;
  v14 = a1[1];
  v92[0] = *a1;
  v92[1] = v14;
  v15 = a1[5];
  v92[4] = a1[4];
  v92[5] = v15;
  v16 = a1[3];
  v92[2] = a1[2];
  v92[3] = v16;
  v96 = v87;
  v95 = v13;
  v94 = v12;
  v99 = a2[5];
  v98 = v89;
  v97 = v9;
  v84 = *(a1 + 96);
  v91 = a2[6].i8[0];
  v93 = *(a1 + 96);
  v100 = a2[6].i8[0];
  v101 = v7;
  v102 = v6;
  v17 = a1[5];
  v107 = *(a1 + 96);
  v105 = v82;
  v106 = v17;
  v103 = v80;
  v104 = v2;
  if (v107 > 1u)
  {
    if (v107 != 2)
    {
      if (!(*(&v106 + 1) | v7 | v106 | *(&v105 + 1) | v105 | *(&v104 + 1) | v104 | *(&v103 + 1) | v103 | *(&v102 + 1) | v102 | *(&v101 + 1)))
      {
        if (v91 == 3)
        {
          v32 = vorrq_s8(vorrq_s8(vorrq_s8(v87, v89), vorrq_s8(v88, v90)), vorrq_s8(v85, v86));
          if (!*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))
          {
            goto LABEL_31;
          }
        }

        goto LABEL_35;
      }

      if (v7 != 1 || v106 | *(&v106 + 1) | *(&v105 + 1) | v105 | *(&v104 + 1) | v104 | *(&v103 + 1) | v103 | *(&v102 + 1) | v102 | *(&v101 + 1))
      {
        if (v91 != 3 || v85.i64[0] != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v91 != 3 || v85.i64[0] != 1)
      {
        goto LABEL_35;
      }

      v33 = vorrq_s8(vorrq_s8(v87, v89), vorrq_s8(v88, v90));
      if (!(*&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | v86.i64[1] | v86.i64[0] | v85.i64[1]))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    v78 = a2[6].i8[0];
    v18 = a2[5];
    v76 = a2[4];
    v77 = v18;
    v19 = a2[1];
    v72 = *a2;
    v73 = v19;
    v20 = a2[3];
    v74 = a2[2];
    v75 = v20;
    if (v78 != 2 || __PAIR128__(*(&v101 + 1), v7) != *&v72 && (v21 = a1, v22 = a2, v23 = sub_1E5C9D060(), a2 = v22, v24 = v23, a1 = v21, (v24 & 1) == 0))
    {
LABEL_35:
      sub_1E5C73354(&v85, &v63);
      sub_1E5C73354(v79, &v63);
      v34 = &qword_1ED055098;
      v35 = &qword_1E5CA3E28;
      v36 = v92;
LABEL_36:
      sub_1E5C3177C(v36, v34, v35);
LABEL_37:
      v31 = 0;
      return v31 & 1;
    }

    if (*(&v102 + 1))
    {
      if (!v73.i64[1])
      {
        goto LABEL_35;
      }

      if (v102 != *&v73)
      {
        v25 = a1;
        v26 = a2;
        v27 = sub_1E5C9D060();
        a2 = v26;
        v28 = v27;
        a1 = v25;
        if ((v28 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v73.i64[1])
    {
      goto LABEL_35;
    }

    v38 = *(&v104 + 1);
    v39 = v75.i64[1];
    if (*(&v104 + 1))
    {
      v40 = a1[2];
      *&v60 = *(a1 + 6);
      *(&v60 + 1) = *(&v104 + 1);
      v41 = a1[5];
      v42 = a1;
      v61 = a1[4];
      v62 = v41;
      v58 = v41;
      v59 = v40;
      v55 = v40;
      v56 = v60;
      v57 = v61;
      if (v75.i64[1])
      {
        v49 = a2[2];
        v51 = a2[4];
        v52 = a2[5];
        *&v50 = a2[3].i64[0];
        *(&v50 + 1) = v75.i64[1];
        sub_1E5C73354(&v85, &v63);
        sub_1E5C73354(v79, &v63);
        sub_1E5C31EF0(&v103, &v63);
        sub_1E5C31EF0(&v74, &v63);
        sub_1E5C31EF0(&v59, &v63);
        v43 = static SearchResultScope.== infix(_:_:)();
        sub_1E5C3177C(v92, &qword_1ED055098, &qword_1E5CA3E28);
        v53[0] = v49;
        v53[1] = v50;
        v53[2] = v51;
        v53[3] = v52;
        sub_1E5C2A1F0(v53);
        v54[0] = v55;
        v54[1] = v56;
        v54[2] = v57;
        v54[3] = v58;
        sub_1E5C2A1F0(v54);
        v63 = v42[2];
        *&v64 = *(v42 + 6);
        *(&v64 + 1) = v38;
        v44 = v42[5];
        v65 = v42[4];
        v66 = v44;
        sub_1E5C3177C(&v63, &qword_1ED053F80, &qword_1E5C9E528);
        if ((v43 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_45:
        v31 = 1;
        return v31 & 1;
      }

      v45 = a2;
      sub_1E5C73354(&v85, &v63);
      sub_1E5C73354(v79, &v63);
      sub_1E5C31EF0(&v103, &v63);
      sub_1E5C31EF0(&v74, &v63);
      sub_1E5C31EF0(&v59, &v63);
      sub_1E5C3177C(v92, &qword_1ED055098, &qword_1E5CA3E28);
      v63 = v55;
      v64 = v56;
      v65 = v57;
      v66 = v58;
      sub_1E5C2A1F0(&v63);
    }

    else
    {
      v45 = a2;
      v42 = a1;
      sub_1E5C73354(&v85, &v63);
      sub_1E5C73354(v79, &v63);
      sub_1E5C31EF0(&v103, &v63);
      sub_1E5C31EF0(&v74, &v63);
      sub_1E5C3177C(v92, &qword_1ED055098, &qword_1E5CA3E28);
      if (!v39)
      {
        v63 = v42[2];
        v64 = *(v42 + 6);
        v46 = v42[5];
        v65 = v42[4];
        v66 = v46;
        sub_1E5C3177C(&v63, &qword_1ED053F80, &qword_1E5C9E528);
        goto LABEL_45;
      }
    }

    v63 = v42[2];
    *&v64 = *(v42 + 6);
    *(&v64 + 1) = v38;
    v47 = v42[5];
    v65 = v42[4];
    v66 = v47;
    v67 = v45[2];
    v68 = v45[3].i64[0];
    v69 = v39;
    v48 = v45[5];
    v70 = v45[4];
    v71 = v48;
    v34 = &qword_1ED054150;
    v35 = &unk_1E5CA3E30;
    v36 = &v63;
    goto LABEL_36;
  }

  if (v107)
  {
    if (v91 == 1)
    {
      v29 = v102;
      v30 = v86.i8[0];
      if (__PAIR128__(*(&v101 + 1), v7) == *&v85 || (sub_1E5C9D060() & 1) != 0)
      {
        sub_1E5C73354(&v85, &v63);
        sub_1E5C73354(v79, &v63);
        v31 = sub_1E5C76194(v29, v30);
LABEL_33:
        sub_1E5C3177C(v92, &qword_1ED055098, &qword_1E5CA3E28);
        return v31 & 1;
      }
    }

    goto LABEL_35;
  }

  if (v91)
  {
    goto LABEL_35;
  }

  if (__PAIR128__(*(&v101 + 1), v7) != *&v85)
  {
    v31 = sub_1E5C9D060();
    sub_1E5C73354(&v85, &v63);
    sub_1E5C73354(v79, &v63);
    goto LABEL_33;
  }

  sub_1E5C73354(&v85, &v63);
  sub_1E5C73354(v79, &v63);
LABEL_31:
  sub_1E5C3177C(v92, &qword_1ED055098, &qword_1E5CA3E28);
  v31 = 1;
  return v31 & 1;
}

unint64_t sub_1E5C7280C()
{
  result = qword_1ED055000;
  if (!qword_1ED055000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055000);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B9PageStateO(uint64_t a1)
{
  if ((*(a1 + 96) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E5C728A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C728E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5C72938(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchPageState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchPageState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5C72B28()
{
  result = qword_1ED055008;
  if (!qword_1ED055008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055008);
  }

  return result;
}

unint64_t sub_1E5C72B80()
{
  result = qword_1ED055010;
  if (!qword_1ED055010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055010);
  }

  return result;
}

unint64_t sub_1E5C72BD8()
{
  result = qword_1ED055018;
  if (!qword_1ED055018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055018);
  }

  return result;
}

unint64_t sub_1E5C72C30()
{
  result = qword_1ED055020;
  if (!qword_1ED055020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055020);
  }

  return result;
}

unint64_t sub_1E5C72C88()
{
  result = qword_1ED055028;
  if (!qword_1ED055028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055028);
  }

  return result;
}

unint64_t sub_1E5C72CE0()
{
  result = qword_1ED055030;
  if (!qword_1ED055030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055030);
  }

  return result;
}

unint64_t sub_1E5C72D38()
{
  result = qword_1ED055038;
  if (!qword_1ED055038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055038);
  }

  return result;
}

unint64_t sub_1E5C72D90()
{
  result = qword_1ED055040;
  if (!qword_1ED055040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055040);
  }

  return result;
}

unint64_t sub_1E5C72DE8()
{
  result = qword_1ED055048;
  if (!qword_1ED055048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055048);
  }

  return result;
}

unint64_t sub_1E5C72E40()
{
  result = qword_1ED055050;
  if (!qword_1ED055050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055050);
  }

  return result;
}

unint64_t sub_1E5C72E98()
{
  result = qword_1ED055058;
  if (!qword_1ED055058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055058);
  }

  return result;
}

unint64_t sub_1E5C72EF0()
{
  result = qword_1ED055060;
  if (!qword_1ED055060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055060);
  }

  return result;
}

unint64_t sub_1E5C72F48()
{
  result = qword_1ED055068;
  if (!qword_1ED055068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055068);
  }

  return result;
}

unint64_t sub_1E5C72FA0()
{
  result = qword_1ED055070;
  if (!qword_1ED055070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055070);
  }

  return result;
}

unint64_t sub_1E5C72FF8()
{
  result = qword_1ED055078;
  if (!qword_1ED055078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055078);
  }

  return result;
}

unint64_t sub_1E5C73050()
{
  result = qword_1ED055080;
  if (!qword_1ED055080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055080);
  }

  return result;
}

unint64_t sub_1E5C730A8()
{
  result = qword_1ED055088;
  if (!qword_1ED055088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055088);
  }

  return result;
}

unint64_t sub_1E5C73100()
{
  result = qword_1ED055090;
  if (!qword_1ED055090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055090);
  }

  return result;
}

uint64_t sub_1E5C73154(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E616CLL && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C73390()
{
  v1 = 0x64656863746566;
  if (*v0 != 1)
  {
    v1 = 0x676E696863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1E5C733E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C73FEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C73410(uint64_t a1)
{
  v2 = sub_1E5C73E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C7344C(uint64_t a1)
{
  v2 = sub_1E5C73E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C73488(uint64_t a1)
{
  v2 = sub_1E5C73F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C734C4(uint64_t a1)
{
  v2 = sub_1E5C73F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C73500(uint64_t a1)
{
  v2 = sub_1E5C73F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C7353C(uint64_t a1)
{
  v2 = sub_1E5C73F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C73578(uint64_t a1)
{
  v2 = sub_1E5C73EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C735B4(uint64_t a1)
{
  v2 = sub_1E5C73EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchEditorialContentState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a2;
  v29 = a4;
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550A0, &qword_1E5CA3E40);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550A8, &qword_1E5CA3E48);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550B0, &qword_1E5CA3E50);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550B8, &qword_1E5CA3E58);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C73E9C();
  sub_1E5C9D130();
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = 1;
      sub_1E5C73F44();
      sub_1E5C9CFC0();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
      sub_1E5C74D1C(&qword_1ED0550E0, &qword_1ED0550E8, &protocol conformance descriptor for SearchLandingSectionDescriptor, MEMORY[0x1E69E6300]);
      v17 = v26;
      sub_1E5C9D030();
      (*(v25 + 8))(v9, v17);
    }

    else
    {
      v32 = 2;
      sub_1E5C73EF0();
      v19 = v21;
      sub_1E5C9CFC0();
      (*(v22 + 8))(v19, v23);
    }

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v30 = 0;
    sub_1E5C73F98();
    sub_1E5C9CFC0();
    sub_1E5C9D000();
    (*(v20 + 8))(v12, v10);
    return (*(v14 + 8))(v16, v13);
  }
}

void *SearchEditorialContentState.init(from:)(void *a1)
{
  result = sub_1E5C74100(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_1E5C73A80@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5C74100(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t SearchEditorialContentState.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1E69399F0](1, a2, a3);

      return sub_1E5C2AD0C(a1, a2);
    }

    else
    {
      return MEMORY[0x1E69399F0](2, a2, a3);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);

    return sub_1E5C9CC60();
  }
}

uint64_t SearchEditorialContentState.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E5C9D0D0();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(v6, a1);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C73C1C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1E5C9D0D0();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(v4, v1);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C73CB8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1E69399F0](1);

      return sub_1E5C2AD0C(a1, v3);
    }

    else
    {
      return MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);

    return sub_1E5C9CC60();
  }
}

uint64_t sub_1E5C73D70(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1E5C9D0D0();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(v5, v2);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B21EditorialContentStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return sub_1E5C767A0(a1, a4);
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E5C9D060();
  }
}

unint64_t sub_1E5C73E9C()
{
  result = qword_1ED0550C0;
  if (!qword_1ED0550C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550C0);
  }

  return result;
}

unint64_t sub_1E5C73EF0()
{
  result = qword_1ED0550C8;
  if (!qword_1ED0550C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550C8);
  }

  return result;
}

unint64_t sub_1E5C73F44()
{
  result = qword_1ED0550D0;
  if (!qword_1ED0550D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550D0);
  }

  return result;
}

unint64_t sub_1E5C73F98()
{
  result = qword_1ED0550F0;
  if (!qword_1ED0550F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550F0);
  }

  return result;
}

uint64_t sub_1E5C73FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

void *sub_1E5C74100(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055158, &qword_1E5CA43D0);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055160, &qword_1E5CA43D8);
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055168, &qword_1E5CA43E0);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055170, &qword_1E5CA43E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v40 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5C73E9C();
  v14 = v39;
  sub_1E5C9D120();
  if (!v14)
  {
    v32 = 0;
    v15 = v38;
    v39 = v9;
    v16 = sub_1E5C9CFB0();
    v17 = (2 * *(v16 + 16)) | 1;
    v41 = v16;
    v42 = v16 + 32;
    v43 = 0;
    v44 = v17;
    v18 = sub_1E5C448A0();
    if (v18 == 3 || v43 != v44 >> 1)
    {
      v23 = sub_1E5C9CE90();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
      *v25 = &type metadata for SearchEditorialContentState;
      v13 = v11;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v19 = v18;
    if (v18)
    {
      if (v18 == 1)
      {
        LOBYTE(v45) = 1;
        sub_1E5C73F44();
        v13 = v11;
        v20 = v32;
        sub_1E5C9CF20();
        v21 = v39;
        if (!v20)
        {
          LODWORD(v38) = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
          sub_1E5C74D1C(&qword_1ED055178, &qword_1ED055180, &protocol conformance descriptor for SearchLandingSectionDescriptor, MEMORY[0x1E69E6330]);
          v22 = v33;
          sub_1E5C9CFA0();
          (*(v36 + 8))(v4, v22);
          (*(v21 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v13 = v45;
          goto LABEL_9;
        }

        (*(v39 + 8))(v11, v8);
      }

      else
      {
        LOBYTE(v45) = 2;
        sub_1E5C73EF0();
        v28 = v37;
        v29 = v32;
        sub_1E5C9CF20();
        v30 = v39;
        if (!v29)
        {
          (*(v35 + 8))(v28, v15);
          (*(v30 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v13 = 0;
          goto LABEL_9;
        }

        v13 = v39 + 8;
        (*(v39 + 8))(v11, v8);
      }

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    LOBYTE(v45) = 0;
    sub_1E5C73F98();
    v13 = v11;
    v27 = v32;
    sub_1E5C9CF20();
    if (!v27)
    {
      v13 = sub_1E5C9CF70();
      (*(v34 + 8))(v7, v5);
    }

    (*(v39 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v13;
}

unint64_t sub_1E5C747F8()
{
  result = qword_1ED0550F8;
  if (!qword_1ED0550F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550F8);
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

uint64_t sub_1E5C74860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1E5C748A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1E5C748EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1E5C74958()
{
  result = qword_1ED055100;
  if (!qword_1ED055100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055100);
  }

  return result;
}

unint64_t sub_1E5C749B0()
{
  result = qword_1ED055108;
  if (!qword_1ED055108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055108);
  }

  return result;
}

unint64_t sub_1E5C74A08()
{
  result = qword_1ED055110;
  if (!qword_1ED055110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055110);
  }

  return result;
}

unint64_t sub_1E5C74A60()
{
  result = qword_1ED055118;
  if (!qword_1ED055118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055118);
  }

  return result;
}

unint64_t sub_1E5C74AB8()
{
  result = qword_1ED055120;
  if (!qword_1ED055120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055120);
  }

  return result;
}

unint64_t sub_1E5C74B10()
{
  result = qword_1ED055128;
  if (!qword_1ED055128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055128);
  }

  return result;
}

unint64_t sub_1E5C74B68()
{
  result = qword_1ED055130;
  if (!qword_1ED055130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055130);
  }

  return result;
}

unint64_t sub_1E5C74BC0()
{
  result = qword_1ED055138;
  if (!qword_1ED055138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055138);
  }

  return result;
}

unint64_t sub_1E5C74C18()
{
  result = qword_1ED055140;
  if (!qword_1ED055140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055140);
  }

  return result;
}

unint64_t sub_1E5C74C70()
{
  result = qword_1ED055148;
  if (!qword_1ED055148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055148);
  }

  return result;
}

unint64_t sub_1E5C74CC8()
{
  result = qword_1ED055150;
  if (!qword_1ED055150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055150);
  }

  return result;
}

uint64_t sub_1E5C74D1C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0550D8, &qword_1E5CA3E60);
    sub_1E5C74DA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C74DA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchLandingSectionDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C74DEC()
{
  if (*v0)
  {
    return 0x7247746C75736572;
  }

  else
  {
    return 0x6169726F74696465;
  }
}

uint64_t sub_1E5C74E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7247746C75736572 && a2 == 0xEB0000000070756FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C74F1C(uint64_t a1)
{
  v2 = sub_1E5C75B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C74F58(uint64_t a1)
{
  v2 = sub_1E5C75B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C74F94(uint64_t a1)
{
  v2 = sub_1E5C75C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C74FD0(uint64_t a1)
{
  v2 = sub_1E5C75C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7500C(uint64_t a1)
{
  v2 = sub_1E5C75BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C75048(uint64_t a1)
{
  v2 = sub_1E5C75BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchContentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055188, &qword_1E5CA43F0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055190, &qword_1E5CA43F8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v17 = &v16 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055198, &qword_1E5CA4400);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C75B68();
  sub_1E5C9D130();
  if (v12)
  {
    v24 = 1;
    sub_1E5C75BBC();
    sub_1E5C9CFC0();
    v13 = v22;
    sub_1E5C9D000();
    (*(v21 + 8))(v5, v13);
  }

  else
  {
    v23 = 0;
    sub_1E5C75C10();
    v15 = v17;
    sub_1E5C9CFC0();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t SearchContentType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0551B8, &qword_1E5CA4408);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0551C0, &qword_1E5CA4410);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0551C8, &unk_1E5CA4418);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5C75B68();
  v13 = v35;
  sub_1E5C9D120();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v30 = v5;
  v14 = v34;
  v35 = v9;
  v15 = sub_1E5C9CFB0();
  v16 = (2 * *(v15 + 16)) | 1;
  v37 = v15;
  v38 = v15 + 32;
  v39 = 0;
  v40 = v16;
  v17 = sub_1E5C448A4();
  if (v17 == 2 || v39 != v40 >> 1)
  {
    v22 = sub_1E5C9CE90();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
    *v24 = &type metadata for SearchContentType;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v35 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  if (v17)
  {
    v41 = 1;
    sub_1E5C75BBC();
    sub_1E5C9CF20();
    v18 = v35;
    v19 = v33;
    v20 = sub_1E5C9CF70();
    v21 = v4;
    v28 = v27;
    (*(v32 + 8))(v21, v14);
    (*(v18 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
    sub_1E5C75C10();
    sub_1E5C9CF20();
    v20 = 0;
    v26 = v35;
    v19 = v33;
    (*(v31 + 8))(v7, v30);
    (*(v26 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v28 = 0;
  }

  *v19 = v20;
  v19[1] = v28;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t SearchContentType.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1E69399F0](0);
  }

  MEMORY[0x1E69399F0](1);

  return sub_1E5C9CC60();
}

uint64_t SearchContentType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1E5C9D0D0();
  if (v1)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C75998()
{
  v1 = *(v0 + 8);
  sub_1E5C9D0D0();
  if (v1)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C75A08(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1E69399F0](0);
  }

  MEMORY[0x1E69399F0](1);

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C75A80(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E5C9D0D0();
  if (v2)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B11ContentTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

unint64_t sub_1E5C75B68()
{
  result = qword_1ED0551A0;
  if (!qword_1ED0551A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551A0);
  }

  return result;
}

unint64_t sub_1E5C75BBC()
{
  result = qword_1ED0551A8;
  if (!qword_1ED0551A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551A8);
  }

  return result;
}

unint64_t sub_1E5C75C10()
{
  result = qword_1ED0551B0;
  if (!qword_1ED0551B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551B0);
  }

  return result;
}

unint64_t sub_1E5C75C68()
{
  result = qword_1ED0551D0;
  if (!qword_1ED0551D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551D0);
  }

  return result;
}

uint64_t sub_1E5C75CBC(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C75D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1E5C75D60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E5C75D78(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E5C75DDC()
{
  result = qword_1ED0551D8;
  if (!qword_1ED0551D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551D8);
  }

  return result;
}

unint64_t sub_1E5C75E34()
{
  result = qword_1ED0551E0;
  if (!qword_1ED0551E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551E0);
  }

  return result;
}

unint64_t sub_1E5C75E8C()
{
  result = qword_1ED0551E8;
  if (!qword_1ED0551E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551E8);
  }

  return result;
}

unint64_t sub_1E5C75EE4()
{
  result = qword_1ED0551F0;
  if (!qword_1ED0551F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551F0);
  }

  return result;
}

unint64_t sub_1E5C75F3C()
{
  result = qword_1ED0551F8;
  if (!qword_1ED0551F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551F8);
  }

  return result;
}

unint64_t sub_1E5C75F94()
{
  result = qword_1ED055200;
  if (!qword_1ED055200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055200);
  }

  return result;
}

unint64_t sub_1E5C75FEC()
{
  result = qword_1ED055208;
  if (!qword_1ED055208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055208);
  }

  return result;
}

unint64_t sub_1E5C76044()
{
  result = qword_1ED055210;
  if (!qword_1ED055210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055210);
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

uint64_t sub_1E5C760C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1E5C7610C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E5C76194(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726F74736968;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEB000000006C6174;
    v4 = 0xE600000000000000;
    if (a1 == 2)
    {
      v6 = 0x6E656D6572636E69;
    }

    else
    {
      v6 = 0x74696D627573;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1953393000;
    }

    else
    {
      v6 = 0x79726F74736968;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6E656D6572636E69;
  v10 = 0xEB000000006C6174;
  if (a2 != 2)
  {
    v9 = 0x74696D627573;
    v10 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1953393000;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E5C9D060();
  }

  return v13 & 1;
}

uint64_t sub_1E5C762CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73647261632D6CLL;
  v3 = 0x6169726F74696465;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xEF736D6574692D6CLL;
    if (!a1)
    {
      v13 = 0xEF73647261632D6CLL;
    }

    if (a1 <= 1u)
    {
      v10 = 0x6169726F74696465;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 1)
    {
      v11 = v13;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x2D72656E69617274;
    v6 = 0xEC00000073706974;
    v7 = 0x65486C6C65737075;
    v8 = 0xEC00000072656461;
    if (a1 != 7)
    {
      v7 = 0x74756F6B726F77;
      v8 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v9 = 0x72656E69617274;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v4 <= 5)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE800000000000000;
      if (a2 == 2)
      {
        if (v10 != 0x7974696C61646F6DLL)
        {
          goto LABEL_49;
        }
      }

      else if (v10 != 0x7473696C79616C70)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEF736D6574692D6CLL;
      if (v10 != 0x6169726F74696465)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6D6172676F7270)
        {
          goto LABEL_49;
        }
      }

      else if (v10 != 0x72656E69617274)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v14 = 0x2D72656E69617274;
      v15 = 1936746868;
LABEL_40:
      v2 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v10 != v14)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v14 = 0x65486C6C65737075;
      v15 = 1919247457;
      goto LABEL_40;
    }

    v2 = 0xE700000000000000;
    v3 = 0x74756F6B726F77;
  }

  if (v10 != v3)
  {
LABEL_49:
    v16 = sub_1E5C9D060();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v2)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_1E5C76580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItem(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1E5C7E904(v13, v10, type metadata accessor for SearchHistoryItem);
        sub_1E5C7E904(v14, v7, type metadata accessor for SearchHistoryItem);
        v16 = *v10 == *v7 && v10[1] == v7[1];
        if (!v16 && (sub_1E5C9D060() & 1) == 0)
        {
          break;
        }

        v17 = sub_1E5C9BB50();
        sub_1E5C7E96C(v7, type metadata accessor for SearchHistoryItem);
        sub_1E5C7E96C(v10, type metadata accessor for SearchHistoryItem);
        if (v17)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v17 & 1;
      }

      sub_1E5C7E96C(v7, type metadata accessor for SearchHistoryItem);
      sub_1E5C7E96C(v10, type metadata accessor for SearchHistoryItem);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1E5C767A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  MEMORY[0x1EEE9AC00](v81);
  v7 = &v65 - v6;
  v8 = type metadata accessor for SearchContentTile(0);
  v82 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  v19 = type metadata accessor for SearchLandingSectionDescriptor(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v65 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    return 0;
  }

  if (!v26 || a1 == a2)
  {
    return 1;
  }

  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v29 = 0;
  v71 = a2 + v27;
  v30 = *(v23 + 72);
  v74 = v8;
  v70 = v22;
  v68 = v19;
  v73 = v26;
  v67 = v28;
  v66 = v30;
  v69 = &v65 - v24;
  while (1)
  {
    v33 = v29;
    v34 = v30 * v29;
    result = sub_1E5C7E904(v28 + v34, v25, type metadata accessor for SearchLandingSectionDescriptor);
    v72 = v33;
    if (v33 == v73)
    {
      goto LABEL_100;
    }

    sub_1E5C7E904(v71 + v34, v22, type metadata accessor for SearchLandingSectionDescriptor);
    v35 = *v25 == *v22 && *(v25 + 1) == *(v22 + 1);
    v36 = v25;
    if (!v35 && (sub_1E5C9D060() & 1) == 0 || v25[16] != v22[16] || (result = sub_1E5C9BA70(), (result & 1) == 0) || (v37 = *(v19 + 28), v38 = *&v25[v37], v39 = *&v22[v37], v77 = v38, v40 = *(v38 + 16), v80 = v39, v40 != *(v39 + 16)))
    {
LABEL_95:
      sub_1E5C7E96C(v22, type metadata accessor for SearchLandingSectionDescriptor);
      sub_1E5C7E96C(v36, type metadata accessor for SearchLandingSectionDescriptor);
      return 0;
    }

    v41 = v77;
    if (v40)
    {
      if (v77 != v80)
      {
        break;
      }
    }

LABEL_6:
    v32 = v72 + 1;
    v22 = v70;
    sub_1E5C7E96C(v70, type metadata accessor for SearchLandingSectionDescriptor);
    v25 = v69;
    v29 = v32;
    sub_1E5C7E96C(v69, type metadata accessor for SearchLandingSectionDescriptor);
    result = 1;
    v19 = v68;
    v28 = v67;
    v30 = v66;
    if (v32 == v73)
    {
      return result;
    }
  }

  v42 = 0;
  v43 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v76 = v77 + v43;
  v75 = v80 + v43;
  while (v42 < *(v41 + 16))
  {
    v44 = *(v82 + 72) * v42;
    result = sub_1E5C7E904(v76 + v44, v18, type metadata accessor for SearchContentTile);
    if (v42 >= *(v80 + 16))
    {
      goto LABEL_99;
    }

    sub_1E5C7E904(v75 + v44, v16, type metadata accessor for SearchContentTile);
    v45 = &v7[*(v81 + 48)];
    sub_1E5C7E904(v18, v7, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v16, v45, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E904(v7, v13, type metadata accessor for SearchContentTile);
      v50 = *(v13 + 3);
      *v89 = *(v13 + 2);
      *&v89[16] = v50;
      v90 = *(v13 + 8);
      v51 = *(v13 + 1);
      v87 = *v13;
      v88 = v51;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E5C4F8A4(&v87);
        sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
        v64 = v18;
        v63 = type metadata accessor for SearchContentTile;
        goto LABEL_90;
      }

      v52 = *(v45 + 16);
      v83 = *v45;
      v84 = v52;
      v53 = *(v45 + 48);
      *v85 = *(v45 + 32);
      *&v85[16] = v53;
      v86 = *(v45 + 64);
      if (v87 != v83 && (sub_1E5C9D060() & 1) == 0 || v88 != v84 && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_92;
      }

      if (v89[0] <= 3u)
      {
        if (v89[0] > 1u)
        {
          v55 = 0xE800000000000000;
          if (v89[0] == 2)
          {
            v54 = 0x7974696C61646F6DLL;
          }

          else
          {
            v54 = 0x7473696C79616C70;
          }
        }

        else
        {
          v54 = 0x6169726F74696465;
          v55 = 0xEF73647261632D6CLL;
          if (v89[0])
          {
            v55 = 0xEF736D6574692D6CLL;
          }
        }
      }

      else if (v89[0] <= 5u)
      {
        v55 = 0xE700000000000000;
        if (v89[0] == 4)
        {
          v54 = 0x6D6172676F7270;
        }

        else
        {
          v54 = 0x72656E69617274;
        }
      }

      else if (v89[0] == 6)
      {
        v54 = 0x2D72656E69617274;
        v55 = 0xEC00000073706974;
      }

      else if (v89[0] == 7)
      {
        v54 = 0x65486C6C65737075;
        v55 = 0xEC00000072656461;
      }

      else
      {
        v55 = 0xE700000000000000;
        v54 = 0x74756F6B726F77;
      }

      if (v85[0] <= 3u)
      {
        if (v85[0] > 1u)
        {
          v59 = 0xE800000000000000;
          if (v85[0] == 2)
          {
            if (v54 == 0x7974696C61646F6DLL)
            {
              goto LABEL_70;
            }
          }

          else if (v54 == 0x7473696C79616C70)
          {
            goto LABEL_70;
          }

          goto LABEL_73;
        }

        v58 = 0x6169726F74696465;
        v59 = 0xEF73647261632D6CLL;
        if (!v85[0])
        {
          goto LABEL_69;
        }

        v59 = 0xEF736D6574692D6CLL;
        if (v54 != 0x6169726F74696465)
        {
          goto LABEL_73;
        }

LABEL_70:
        if (v55 != v59)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v85[0] <= 5u)
        {
          v59 = 0xE700000000000000;
          if (v85[0] == 4)
          {
            if (v54 == 0x6D6172676F7270)
            {
              goto LABEL_70;
            }
          }

          else if (v54 == 0x72656E69617274)
          {
            goto LABEL_70;
          }
        }

        else if (v85[0] == 6)
        {
          v56 = 0x2D72656E69617274;
          v57 = 1936746868;
LABEL_64:
          v59 = v57 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v54 == v56)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v85[0] == 7)
          {
            v56 = 0x65486C6C65737075;
            v57 = 1919247457;
            goto LABEL_64;
          }

          v59 = 0xE700000000000000;
          v58 = 0x74756F6B726F77;
LABEL_69:
          if (v54 == v58)
          {
            goto LABEL_70;
          }
        }

LABEL_73:
        v60 = sub_1E5C9D060();

        if ((v60 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      if (*&v89[16])
      {
        if (!*&v85[16])
        {
          goto LABEL_91;
        }

        if (*&v89[8] != *&v85[8] && (sub_1E5C9D060() & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (*&v85[16])
        {
LABEL_91:

LABEL_92:
          sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v83);
          sub_1E5C4F8A4(&v87);
LABEL_93:
          sub_1E5C7E96C(v7, type metadata accessor for SearchContentTile);
LABEL_94:
          v22 = v70;
          v36 = v69;
          goto LABEL_95;
        }

        swift_bridgeObjectRelease_n();
      }

      v61 = v86;
      if (v90)
      {
        if (!v86)
        {
          goto LABEL_92;
        }

        if (*&v89[24] == *&v85[24] && v90 == v86)
        {
          sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v83);
          sub_1E5C4F8A4(&v87);
        }

        else
        {
          v62 = sub_1E5C9D060();
          sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v83);
          sub_1E5C4F8A4(&v87);
          if ((v62 & 1) == 0)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v83);
        sub_1E5C4F8A4(&v87);
        if (v61)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_20;
    }

    v46 = v79;
    sub_1E5C7E904(v7, v79, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
      v63 = type metadata accessor for SearchItem;
      v64 = v46;
LABEL_90:
      sub_1E5C7E96C(v64, v63);
      sub_1E5C3177C(v7, &qword_1ED054D18, &unk_1E5CA2B00);
      goto LABEL_94;
    }

    v47 = v78;
    sub_1E5C7FCD4(v45, v78, type metadata accessor for SearchItem);
    v48 = static SearchItem.== infix(_:_:)(v46, v47);
    sub_1E5C7E96C(v47, type metadata accessor for SearchItem);
    sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
    v49 = v46;
    v41 = v77;
    sub_1E5C7E96C(v49, type metadata accessor for SearchItem);
    if ((v48 & 1) == 0)
    {
      goto LABEL_93;
    }

LABEL_20:
    ++v42;
    result = sub_1E5C7E96C(v7, type metadata accessor for SearchContentTile);
    if (v40 == v42)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_1E5C773E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v48 - v7;
  v9 = type metadata accessor for SearchContentTile(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v48 - v18;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v50 = v19;
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v53 = *(v17 + 72);
  v49 = v6;
  v54 = v9;
  v51 = &v48 - v18;
  while (1)
  {
    sub_1E5C7E904(v23, v20, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v24, v16, type metadata accessor for SearchContentTile);
    v25 = &v8[*(v55 + 48)];
    sub_1E5C7E904(v20, v8, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v16, v25, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v16;
      v27 = v50;
      sub_1E5C7E904(v8, v50, type metadata accessor for SearchContentTile);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E5C7FCD4(v25, v6, type metadata accessor for SearchItem);
        v28 = _s13FitnessSearch0B4ItemV2eeoiySbAC_ACtFZ_0(v27, v6);
        sub_1E5C7E96C(v6, type metadata accessor for SearchItem);
        sub_1E5C7E96C(v27, type metadata accessor for SearchItem);
        sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
        v16 = v26;
        v20 = v51;
        if (!v28)
        {
          goto LABEL_87;
        }

        goto LABEL_7;
      }

      sub_1E5C7E96C(v27, type metadata accessor for SearchItem);
      v16 = v26;
      v20 = v51;
LABEL_83:
      sub_1E5C3177C(v8, &qword_1ED054D18, &unk_1E5CA2B00);
      goto LABEL_87;
    }

    sub_1E5C7E904(v8, v13, type metadata accessor for SearchContentTile);
    v29 = *(v13 + 3);
    *v62 = *(v13 + 2);
    *&v62[16] = v29;
    v63 = *(v13 + 8);
    v30 = *(v13 + 1);
    v60 = *v13;
    v61 = v30;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E5C4F8A4(&v60);
      goto LABEL_83;
    }

    v52 = v21;
    v31 = *(v25 + 16);
    v56 = *v25;
    v57 = v31;
    v32 = *(v25 + 48);
    *v58 = *(v25 + 32);
    *&v58[16] = v32;
    v59 = *(v25 + 64);
    if (v60 != v56 && (sub_1E5C9D060() & 1) == 0 || v61 != v57 && (sub_1E5C9D060() & 1) == 0)
    {
      goto LABEL_85;
    }

    if (v62[0] <= 3u)
    {
      v35 = 0x7974696C61646F6DLL;
      if (v62[0] != 2)
      {
        v35 = 0x7473696C79616C70;
      }

      v36 = 0xEF73647261632D6CLL;
      if (v62[0])
      {
        v36 = 0xEF736D6574692D6CLL;
      }

      if (v62[0] <= 1u)
      {
        v33 = 0x6169726F74696465;
      }

      else
      {
        v33 = v35;
      }

      if (v62[0] <= 1u)
      {
        v34 = v36;
      }

      else
      {
        v34 = 0xE800000000000000;
      }
    }

    else if (v62[0] <= 5u)
    {
      v34 = 0xE700000000000000;
      if (v62[0] == 4)
      {
        v33 = 0x6D6172676F7270;
      }

      else
      {
        v33 = 0x72656E69617274;
      }
    }

    else if (v62[0] == 6)
    {
      v33 = 0x2D72656E69617274;
      v34 = 0xEC00000073706974;
    }

    else if (v62[0] == 7)
    {
      v33 = 0x65486C6C65737075;
      v34 = 0xEC00000072656461;
    }

    else
    {
      v34 = 0xE700000000000000;
      v33 = 0x74756F6B726F77;
    }

    if (v58[0] <= 3u)
    {
      v39 = 0x7974696C61646F6DLL;
      if (v58[0] != 2)
      {
        v39 = 0x7473696C79616C70;
      }

      v40 = 0xEF73647261632D6CLL;
      if (v58[0])
      {
        v40 = 0xEF736D6574692D6CLL;
      }

      if (v58[0] <= 1u)
      {
        v41 = 0x6169726F74696465;
      }

      else
      {
        v41 = v39;
      }

      if (v58[0] <= 1u)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0xE800000000000000;
      }

      if (v33 != v41)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (v58[0] <= 5u)
    {
      if (v58[0] == 4)
      {
        v43 = 0x6D6172676F7270;
      }

      else
      {
        v43 = 0x72656E69617274;
      }

      v42 = 0xE700000000000000;
      if (v33 != v43)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (v58[0] == 6)
    {
      v37 = 0x2D72656E69617274;
      v38 = 1936746868;
LABEL_58:
      v42 = v38 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v33 != v37)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (v58[0] == 7)
    {
      v37 = 0x65486C6C65737075;
      v38 = 1919247457;
      goto LABEL_58;
    }

    v42 = 0xE700000000000000;
    if (v33 != 0x74756F6B726F77)
    {
      goto LABEL_64;
    }

LABEL_62:
    if (v34 == v42)
    {

      goto LABEL_65;
    }

LABEL_64:
    v44 = sub_1E5C9D060();

    if ((v44 & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_65:
    if (*&v62[16])
    {
      if (!*&v58[16])
      {
        break;
      }

      if (*&v62[8] != *&v58[8] && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_72;
    }

    if (*&v58[16])
    {
      break;
    }

    swift_bridgeObjectRelease_n();
LABEL_72:
    v45 = v59;
    if (v63)
    {
      if (!v59)
      {
        goto LABEL_85;
      }

      if (*&v62[24] == *&v58[24] && v63 == v59)
      {
        sub_1E5C4F8A4(&v56);
        sub_1E5C4F8A4(&v60);
        v6 = v49;
        v21 = v52;
      }

      else
      {
        v46 = sub_1E5C9D060();
        sub_1E5C4F8A4(&v56);
        sub_1E5C4F8A4(&v60);
        v6 = v49;
        v21 = v52;
        if ((v46 & 1) == 0)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
      sub_1E5C4F8A4(&v56);
      sub_1E5C4F8A4(&v60);
      v6 = v49;
      v21 = v52;
      if (v45)
      {
        goto LABEL_86;
      }
    }

    sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
LABEL_7:
    sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
    v24 += v53;
    v23 += v53;
    if (!--v21)
    {
      return 1;
    }
  }

LABEL_85:
  sub_1E5C4F8A4(&v56);
  sub_1E5C4F8A4(&v60);
LABEL_86:
  sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
LABEL_87:
  sub_1E5C7E96C(v16, type metadata accessor for SearchContentTile);
  sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
  return 0;
}

uint64_t sub_1E5C77CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  MEMORY[0x1EEE9AC00](v72);
  v8 = &v59 - v7;
  v71 = type metadata accessor for SearchContentTile(0);
  v74 = *(v71 - 8);
  v9 = MEMORY[0x1EEE9AC00](v71);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v59 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = a1 + 32;
  v23 = a2 + 32;
  v61 = a2 + 32;
  for (i = a1 + 32; ; v22 = i)
  {
    v24 = (v22 + (v21 << 6));
    v25 = v24[1];
    v81 = *v24;
    v82 = v25;
    v26 = v24[3];
    v83 = v24[2];
    v84 = v26;
    v27 = (v23 + (v21 << 6));
    v28 = v27[1];
    v85 = *v27;
    v86 = v28;
    v29 = v27[3];
    v87 = v27[2];
    v88 = v29;
    v64 = v21;
    if (*(&v81 + 1))
    {
      if (!*(&v85 + 1) || v81 != v85 && (sub_1E5C9D060() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v85 + 1))
    {
      return 0;
    }

    if (v82 != v86 && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }

    if (v83 != v87 || __PAIR128__(v84, *(&v83 + 1)) != __PAIR128__(v88, *(&v87 + 1)) && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }

    v69 = *(&v88 + 1);
    v70 = *(&v84 + 1);
    v30 = *(*(&v84 + 1) + 16);
    if (v30 != *(*(&v88 + 1) + 16))
    {
      return 0;
    }

    if (v30 && v70 != v69)
    {
      break;
    }

LABEL_89:
    v21 = v64 + 1;
    if (v64 + 1 == v20)
    {
      return 1;
    }

    v23 = v61;
  }

  v60 = v20;
  v65 = v6;
  v66 = v11;
  v31 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v32 = v70 + v31;
  v33 = v69 + v31;
  sub_1E5C2A1B8(&v81, &v78);
  result = sub_1E5C2A1B8(&v85, &v78);
  v35 = 0;
  v68 = v30;
  v63 = v14;
  while (v35 < *(v70 + 16))
  {
    v36 = v35;
    v37 = *(v74 + 72) * v35;
    result = sub_1E5C7E904(v32 + v37, v19, type metadata accessor for SearchContentTile);
    v38 = *(v69 + 16);
    v73 = v36;
    if (v36 >= v38)
    {
      goto LABEL_101;
    }

    sub_1E5C7E904(v33 + v37, v17, type metadata accessor for SearchContentTile);
    v39 = &v8[*(v72 + 48)];
    sub_1E5C7E904(v19, v8, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v17, v39, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E904(v8, v14, type metadata accessor for SearchContentTile);
      v44 = *(v14 + 3);
      *v80 = *(v14 + 2);
      *&v80[16] = v44;
      *&v80[32] = *(v14 + 8);
      v45 = *(v14 + 1);
      v78 = *v14;
      v79 = v45;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E5C4F8A4(&v78);
        sub_1E5C7E96C(v17, type metadata accessor for SearchContentTile);
        v58 = v19;
        v57 = type metadata accessor for SearchContentTile;
        goto LABEL_94;
      }

      v46 = *(v39 + 16);
      v75 = *v39;
      v76 = v46;
      v47 = *(v39 + 48);
      *v77 = *(v39 + 32);
      *&v77[16] = v47;
      *&v77[32] = *(v39 + 64);
      if (v78 != v75 && (sub_1E5C9D060() & 1) == 0 || v79 != v76 && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_96;
      }

      if (v80[0] <= 3u)
      {
        if (v80[0] > 1u)
        {
          v49 = 0xE800000000000000;
          if (v80[0] == 2)
          {
            v48 = 0x7974696C61646F6DLL;
          }

          else
          {
            v48 = 0x7473696C79616C70;
          }
        }

        else
        {
          v48 = 0x6169726F74696465;
          v49 = 0xEF73647261632D6CLL;
          if (v80[0])
          {
            v49 = 0xEF736D6574692D6CLL;
          }
        }
      }

      else if (v80[0] <= 5u)
      {
        v49 = 0xE700000000000000;
        if (v80[0] == 4)
        {
          v48 = 0x6D6172676F7270;
        }

        else
        {
          v48 = 0x72656E69617274;
        }
      }

      else if (v80[0] == 6)
      {
        v48 = 0x2D72656E69617274;
        v49 = 0xEC00000073706974;
      }

      else if (v80[0] == 7)
      {
        v48 = 0x65486C6C65737075;
        v49 = 0xEC00000072656461;
      }

      else
      {
        v49 = 0xE700000000000000;
        v48 = 0x74756F6B726F77;
      }

      if (v77[0] <= 3u)
      {
        if (v77[0] > 1u)
        {
          v53 = 0xE800000000000000;
          if (v77[0] == 2)
          {
            if (v48 == 0x7974696C61646F6DLL)
            {
              goto LABEL_71;
            }
          }

          else if (v48 == 0x7473696C79616C70)
          {
            goto LABEL_71;
          }

          goto LABEL_74;
        }

        v52 = 0x6169726F74696465;
        v53 = 0xEF73647261632D6CLL;
        if (!v77[0])
        {
          goto LABEL_70;
        }

        v53 = 0xEF736D6574692D6CLL;
        if (v48 != 0x6169726F74696465)
        {
          goto LABEL_74;
        }

LABEL_71:
        if (v49 != v53)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v77[0] <= 5u)
        {
          v53 = 0xE700000000000000;
          if (v77[0] == 4)
          {
            if (v48 == 0x6D6172676F7270)
            {
              goto LABEL_71;
            }
          }

          else if (v48 == 0x72656E69617274)
          {
            goto LABEL_71;
          }
        }

        else if (v77[0] == 6)
        {
          v50 = 0x2D72656E69617274;
          v51 = 1936746868;
LABEL_65:
          v53 = v51 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v48 == v50)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v77[0] == 7)
          {
            v50 = 0x65486C6C65737075;
            v51 = 1919247457;
            goto LABEL_65;
          }

          v53 = 0xE700000000000000;
          v52 = 0x74756F6B726F77;
LABEL_70:
          if (v48 == v52)
          {
            goto LABEL_71;
          }
        }

LABEL_74:
        v54 = sub_1E5C9D060();

        if ((v54 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      if (*&v80[16])
      {
        if (!*&v77[16])
        {
          goto LABEL_95;
        }

        if (*&v80[8] != *&v77[8] && (sub_1E5C9D060() & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (*&v77[16])
        {
LABEL_95:

LABEL_96:
          sub_1E5C7E96C(v17, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v75);
          sub_1E5C4F8A4(&v78);
LABEL_97:
          sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
LABEL_98:
          sub_1E5C2A1F0(&v85);
          sub_1E5C2A1F0(&v81);
          return 0;
        }

        swift_bridgeObjectRelease_n();
      }

      v55 = *&v77[32];
      if (*&v80[32])
      {
        if (!*&v77[32])
        {
          goto LABEL_96;
        }

        if (*&v80[24] == *&v77[24])
        {
          sub_1E5C7E96C(v17, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v75);
          sub_1E5C4F8A4(&v78);
        }

        else
        {
          v56 = sub_1E5C9D060();
          sub_1E5C7E96C(v17, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v75);
          sub_1E5C4F8A4(&v78);
          if ((v56 & 1) == 0)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
        sub_1E5C7E96C(v17, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v75);
        sub_1E5C4F8A4(&v78);
        if (v55)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_21;
    }

    v40 = v19;
    v41 = v32;
    v42 = v66;
    sub_1E5C7E904(v8, v66, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E96C(v17, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v40, type metadata accessor for SearchContentTile);
      v57 = type metadata accessor for SearchItem;
      v58 = v42;
LABEL_94:
      sub_1E5C7E96C(v58, v57);
      sub_1E5C3177C(v8, &qword_1ED054D18, &unk_1E5CA2B00);
      goto LABEL_98;
    }

    v43 = v65;
    sub_1E5C7FCD4(v39, v65, type metadata accessor for SearchItem);
    v67 = static SearchItem.== infix(_:_:)(v42, v43);
    sub_1E5C7E96C(v43, type metadata accessor for SearchItem);
    sub_1E5C7E96C(v17, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v40, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v42, type metadata accessor for SearchItem);
    v32 = v41;
    v19 = v40;
    v14 = v63;
    if ((v67 & 1) == 0)
    {
      goto LABEL_97;
    }

LABEL_21:
    v35 = v73 + 1;
    result = sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
    if (v68 == v35)
    {
      sub_1E5C2A1F0(&v85);
      sub_1E5C2A1F0(&v81);
      v6 = v65;
      v11 = v66;
      v20 = v60;
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_1E5C787A4(uint64_t result, uint64_t a2)
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

uint64_t sub_1E5C78800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1E5C7E904(v13, v10, type metadata accessor for SearchHint);
      sub_1E5C7E904(v14, v7, type metadata accessor for SearchHint);
      if ((sub_1E5C9BB80() & 1) == 0)
      {
        break;
      }

      v16 = v4[5];
      v17 = &v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v7[v16];
      v20 = *(v19 + 1);
      if (v18)
      {
        if (!v20)
        {
          break;
        }

        v21 = *v17 == *v19 && v18 == v20;
        if (!v21 && (sub_1E5C9D060() & 1) == 0)
        {
          break;
        }
      }

      else if (v20)
      {
        break;
      }

      v22 = v4[6];
      v23 = *&v10[v22];
      v24 = *&v10[v22 + 8];
      v25 = &v7[v22];
      v26 = v23 == *v25 && v24 == *(v25 + 1);
      if (!v26 && (sub_1E5C9D060() & 1) == 0 || *&v10[v4[7]] != *&v7[v4[7]])
      {
        break;
      }

      v27 = v4[8];
      v28 = *&v10[v27];
      v29 = *&v10[v27 + 8];
      v30 = &v7[v27];
      if (v28 == *v30 && v29 == *(v30 + 1))
      {
        sub_1E5C7E96C(v7, type metadata accessor for SearchHint);
        sub_1E5C7E96C(v10, type metadata accessor for SearchHint);
      }

      else
      {
        v32 = sub_1E5C9D060();
        sub_1E5C7E96C(v7, type metadata accessor for SearchHint);
        sub_1E5C7E96C(v10, type metadata accessor for SearchHint);
        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_1E5C7E96C(v7, type metadata accessor for SearchHint);
    sub_1E5C7E96C(v10, type metadata accessor for SearchHint);
  }

  return 0;
}

uint64_t sub_1E5C78AC8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2[3];
  v43 = a2[2];
  v44 = v8;
  v45 = a2[4];
  v9 = a2[1];
  v41 = *a2;
  v42 = v9;

  v10 = sub_1E5C8E0AC(MEMORY[0x1E69E7CC0]);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_16:

    v34 = v41;
    *(a5 + 24) = v42;
    v35 = v44;
    *(a5 + 40) = v43;
    *(a5 + 56) = v35;
    *(a5 + 72) = v45;
    *a5 = a1;
    *(a5 + 8) = v34;
    *(a5 + 88) = a3;
    *(a5 + 96) = a4;
    *(a5 + 104) = 0x4034000000000000;
    *(a5 + 112) = v10;
    return result;
  }

  v12 = 0;
  v13 = (a1 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = v13[1];
    v38[0] = *v13;
    v38[1] = v15;
    v16 = v13[3];
    v39 = v13[2];
    v40 = v16;
    v46 = v38[0];
    v47 = v15;
    v48 = v39;
    v49 = v16;
    sub_1E5C2A1B8(v38, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v10;
    v18 = sub_1E5C7D560(&v46);
    v20 = v10[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_18;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_1E5C7D6BC(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1E5C7D560(&v46);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v32 = v18;
    sub_1E5C7E770();
    v18 = v32;
    if (v24)
    {
LABEL_3:
      v14 = v18;
      sub_1E5C2A1F0(&v46);
      v10 = v37;
      *(v37[7] + 8 * v14) = v12;
      goto LABEL_4;
    }

LABEL_12:
    v10 = v37;
    v37[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v10[6] + (v18 << 6));
    v28 = v48;
    v27 = v49;
    v29 = v47;
    *v26 = v46;
    v26[1] = v29;
    v26[2] = v28;
    v26[3] = v27;
    *(v10[7] + 8 * v18) = v12;
    v30 = v10[2];
    v22 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v10[2] = v31;
LABEL_4:
    ++v12;
    v13 += 4;
    if (v11 == v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1E5C9D070();
  __break(1u);
  return result;
}

uint64_t sub_1E5C78CEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = v2;
  v13 = *(v0 + 72);
  v9 = *(v0 + 8);
  v10 = v1;
  v3 = *(v0 + 112);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v14, v4);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  if (*(&v15 + 1))
  {
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = v16;
    v18[3] = v17;
    if (*(v3 + 16))
    {
      v5 = sub_1E5C7D560(v18);
      v7 = v6;
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
      if (v7)
      {
        return *(*(v3 + 56) + 8 * v5);
      }
    }

    else
    {
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
    }
  }

  return 0;
}

void sub_1E5C78DF4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v31[4] = *(v1 + 64);
  v31[5] = v3;
  v31[6] = *(v1 + 96);
  v32 = *(v1 + 112);
  v4 = *(v1 + 16);
  v31[0] = *v1;
  v31[1] = v4;
  v5 = *(v1 + 48);
  v31[2] = *(v1 + 32);
  v31[3] = v5;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  *(v6 + 128) = *(v1 + 112);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054ED0, &qword_1E5CA3470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA3380;
  sub_1E5C7A008(v31, v30);
  v11 = sub_1E5C9C460();
  *(inited + 32) = v11;
  v12 = sub_1E5C9C470();
  *(inited + 33) = v12;
  v13 = sub_1E5C9C490();
  sub_1E5C9C490();
  if (sub_1E5C9C490() != v11)
  {
    v13 = sub_1E5C9C490();
  }

  sub_1E5C9C490();
  if (sub_1E5C9C490() != v12)
  {
    v13 = sub_1E5C9C490();
  }

  sub_1E5C9BDA0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1E5CA3380;
  v23 = sub_1E5C9C480();
  *(v22 + 32) = v23;
  v24 = sub_1E5C9C4A0();
  *(v22 + 33) = v24;
  v25 = sub_1E5C9C490();
  sub_1E5C9C490();
  if (sub_1E5C9C490() != v23)
  {
    v25 = sub_1E5C9C490();
  }

  sub_1E5C9C490();
  if (sub_1E5C9C490() != v24)
  {
    v25 = sub_1E5C9C490();
  }

  sub_1E5C9BDA0();
  *a1 = sub_1E5C7A000;
  *(a1 + 8) = v6;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = 0;
  *(a1 + 64) = v25;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = 0;
}

uint64_t sub_1E5C79054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v63 = a3;
  v65 = sub_1E5C9BFE0();
  v59 = *(v65 - 8);
  v67 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E5C9C2F0();
  v5 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055218, &qword_1E5CA4960);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055220, &qword_1E5CA4968);
  MEMORY[0x1EEE9AC00](v60);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055228, &qword_1E5CA4970);
  v15 = *(v14 - 8);
  v61 = v14;
  v62 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v55 - v16;
  sub_1E5C9C420();
  v69 = a2;
  sub_1E5C7A048();
  sub_1E5C9BDC0();
  v17 = sub_1E5C9C440();
  v18 = *(a2 + 104);
  sub_1E5C9C2E0();
  v19 = sub_1E5C27F74(&qword_1ED055238, &qword_1ED055218, &qword_1E5CA4960, MEMORY[0x1E697BE60]);
  v58 = v13;
  MEMORY[0x1E6938F60](v17, v18, 0, v7, v8, v19);
  (*(v5 + 8))(v7, v57);
  (*(v9 + 8))(v11, v8);
  v20 = sub_1E5C9C9F0();
  v22 = v21;
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055240, &qword_1E5CA4978) + 36)];
  v24 = swift_allocObject();
  v25 = *(a2 + 80);
  *(v24 + 80) = *(a2 + 64);
  *(v24 + 96) = v25;
  *(v24 + 112) = *(a2 + 96);
  *(v24 + 128) = *(a2 + 112);
  v26 = *(a2 + 16);
  *(v24 + 16) = *a2;
  *(v24 + 32) = v26;
  v27 = *(a2 + 48);
  *(v24 + 48) = *(a2 + 32);
  *(v24 + 64) = v27;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055248, &qword_1E5CA4980) + 36);
  v29 = *MEMORY[0x1E6981DC0];
  v30 = sub_1E5C9CA40();
  (*(*(v30 - 8) + 104))(&v23[v28], v29, v30);
  *v23 = sub_1E5C7A11C;
  *(v23 + 1) = v24;
  v23[16] = 0;
  v31 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055250, &qword_1E5CA4988) + 36)];
  *v31 = v20;
  v31[1] = v22;
  v32 = *(a2 + 24);
  v33 = *(a2 + 56);
  v77 = *(a2 + 40);
  v78 = v33;
  v79 = *(a2 + 72);
  v75 = *(a2 + 8);
  v76 = v32;
  sub_1E5C7A008(a2, v74);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](v80, v34);
  v70 = v80[0];
  v71 = v80[1];
  v72 = v80[2];
  v73 = v80[3];
  v35 = v59;
  v57 = *(v59 + 16);
  v37 = v64;
  v36 = v65;
  v57(v64, v68, v65);
  v38 = (*(v35 + 80) + 136) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v40 = *(a2 + 80);
  *(v39 + 80) = *(a2 + 64);
  *(v39 + 96) = v40;
  *(v39 + 112) = *(a2 + 96);
  *(v39 + 128) = *(a2 + 112);
  v41 = *(a2 + 16);
  *(v39 + 16) = *a2;
  *(v39 + 32) = v41;
  v42 = *(a2 + 48);
  *(v39 + 48) = *(a2 + 32);
  *(v39 + 64) = v42;
  v59 = *(v35 + 32);
  (v59)(v39 + v38, v37, v36);
  sub_1E5C7A008(a2, v74);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  v43 = sub_1E5C7A15C();
  v56 = sub_1E5C7A54C(&qword_1ED053F88, sub_1E5C2B20C, MEMORY[0x1E69E7C80]);
  v44 = v60;
  v45 = v58;
  sub_1E5C9C750();

  v75 = v70;
  v76 = v71;
  v77 = v72;
  v78 = v73;
  sub_1E5C3177C(&v75, &qword_1ED053F80, &qword_1E5C9E528);
  sub_1E5C3177C(v45, &qword_1ED055220, &qword_1E5CA4968);
  *&v80[0] = *a2;
  *&v70 = *&v80[0];
  v47 = v64;
  v46 = v65;
  v57(v64, v68, v65);
  v48 = swift_allocObject();
  v49 = *(a2 + 80);
  *(v48 + 80) = *(a2 + 64);
  *(v48 + 96) = v49;
  *(v48 + 112) = *(a2 + 96);
  *(v48 + 128) = *(a2 + 112);
  v50 = *(a2 + 16);
  *(v48 + 16) = *a2;
  *(v48 + 32) = v50;
  v51 = *(a2 + 48);
  *(v48 + 48) = *(a2 + 32);
  *(v48 + 64) = v51;
  (v59)(v48 + v38, v47, v46);
  sub_1E5C7A008(a2, v74);
  sub_1E5C3165C(v80, v74, &qword_1ED055278, &unk_1E5CA49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
  v74[0] = v44;
  v74[1] = v55;
  v74[2] = v43;
  v74[3] = v56;
  swift_getOpaqueTypeConformance2();
  sub_1E5C7A4AC();
  v52 = v61;
  v53 = v66;
  sub_1E5C9C750();

  sub_1E5C3177C(v80, &qword_1ED055278, &unk_1E5CA49A0);
  return (*(v62 + 8))(v53, v52);
}

uint64_t sub_1E5C79834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 3);
  v6 = *(a1 + 7);
  v14[2] = *(a1 + 5);
  v14[3] = v6;
  v14[4] = *(a1 + 9);
  v14[0] = *(a1 + 1);
  v14[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  sub_1E5C9C920();
  v7 = v14[5];
  *(a2 + 24) = v14[6];
  *(a2 + 40) = v14[7];
  v8 = v14[9];
  *(a2 + 56) = v14[8];
  *(a2 + 72) = v8;
  *&v14[0] = a1[14];
  v9 = *&v14[0];
  v10 = a1[11];
  v11 = a1[12];
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  *(a2 + 104) = v11;
  sub_1E5C3165C(v14, v13, &qword_1ED055298, &qword_1E5CA49B0);
}

uint64_t sub_1E5C7991C(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[3];
  v37[4] = v1[4];
  v37[5] = v2;
  v4 = v1[5];
  v37[6] = v1[6];
  v5 = v1[1];
  v37[0] = *v1;
  v37[1] = v5;
  v6 = v1[3];
  v8 = *v1;
  v7 = v1[1];
  v37[2] = v1[2];
  v37[3] = v6;
  v33 = v37[4];
  v34 = v4;
  v35 = v1[6];
  v29 = v8;
  v30 = v7;
  v38 = *(v1 + 14);
  v36 = *(v1 + 14);
  v31 = v37[2];
  v32 = v3;
  v9 = sub_1E5C78CEC();
  if ((v10 & 1) != 0 && *(*&v37[0] + 16))
  {
    v11 = *(*&v37[0] + 32);
    v12 = *(*&v37[0] + 48);
    v13 = *(*&v37[0] + 80);
    v22 = *(*&v37[0] + 64);
    v23 = v13;
    v21[1] = v12;
    v26 = v22;
    v27 = v13;
    v14 = *(*&v37[0] + 48);
    v24 = *(*&v37[0] + 32);
    v25 = v14;
    v32 = *(&v37[3] + 8);
    v33 = *(&v37[4] + 8);
    v30 = *(&v37[1] + 8);
    v31 = *(&v37[2] + 8);
    v29 = *(v37 + 8);
    v18 = *(&v37[2] + 8);
    v19 = *(&v37[3] + 8);
    v20 = *(&v37[4] + 8);
    v21[0] = v11;
    v16 = *(v37 + 8);
    v17 = *(&v37[1] + 8);
    sub_1E5C2A1B8(v21, v28);
    sub_1E5C3165C(&v29, v28, &qword_1ED055258, &unk_1E5CA4990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
    sub_1E5C9C910();
    v28[2] = v18;
    v28[3] = v19;
    v28[4] = v20;
    v28[0] = v16;
    v28[1] = v17;
    return sub_1E5C3177C(v28, &qword_1ED055258, &unk_1E5CA4990);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    sub_1E5C9CA20();
    sub_1E5C9BED0();
  }
}

uint64_t sub_1E5C79B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v10 = *(a2 + 40);
  v11 = v2;
  v12 = *(a2 + 72);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](v13, v3);
  v5 = v13[0];
  v6 = v13[1];
  v7 = v13[2];
  v8 = v13[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  sub_1E5C7A54C(&qword_1ED055288, sub_1E5C7A5C4, MEMORY[0x1E69E7C78]);
  sub_1E5C9BFD0();
  v9[0] = v5;
  v9[1] = v6;
  v10 = v7;
  v11 = v8;
  return sub_1E5C3177C(v9, &qword_1ED053F80, &qword_1E5C9E528);
}

double sub_1E5C79C38@<D0>(uint64_t a2@<X8>)
{
  v5 = sub_1E5C9C1A0();
  v22 = 1;
  sub_1E5C79DA0(&v14);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v30[0] = v14;
  v30[1] = v15;
  v30[2] = v16;
  v30[3] = v17;
  v30[4] = v18;
  v30[5] = v19;
  v31 = v20;
  sub_1E5C3165C(&v23, &v13, &qword_1ED055378, &qword_1E5CA4C28);
  sub_1E5C3177C(v30, &qword_1ED055378, &qword_1E5CA4C28);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[103] = v29;
  *&v21[39] = v25;
  v6 = v22;
  v7 = sub_1E5C9BFC0();
  v8 = sub_1E5C9C450();
  v9 = *&v21[32];
  *(a2 + 65) = *&v21[48];
  v10 = *&v21[80];
  *(a2 + 81) = *&v21[64];
  *(a2 + 97) = v10;
  *(a2 + 112) = *&v21[95];
  result = *v21;
  v12 = *&v21[16];
  *(a2 + 17) = *v21;
  *(a2 + 33) = v12;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 49) = v9;
  *(a2 + 128) = v7;
  *(a2 + 136) = v8;
  return result;
}

uint64_t sub_1E5C79DA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055380, &qword_1E5CA4C30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E5CA4830;
  sub_1E5C9C790();
  sub_1E5C9C7C0();

  *(v4 + 32) = sub_1E5C9C970();
  *(v4 + 40) = v5;
  v6 = objc_opt_self();
  v7 = [v6 systemBackgroundColor];
  sub_1E5C9C780();
  *(v4 + 48) = sub_1E5C9C970();
  *(v4 + 56) = v8;
  v9 = [v6 systemBackgroundColor];
  sub_1E5C9C780();
  *(v4 + 64) = sub_1E5C9C970();
  *(v4 + 72) = v10;
  sub_1E5C9C980();
  sub_1E5C9CA80();
  sub_1E5C9CA90();
  sub_1E5C9BF00();
  sub_1E5C9C9F0();
  sub_1E5C9BE50();
  v11 = v28;
  v30[4] = v28;
  v12 = v25;
  v13 = v24;
  v30[0] = v24;
  v30[1] = v25;
  *&v22[23] = v25;
  *&v22[7] = v24;
  *&v22[71] = v28;
  v14 = v26;
  v15 = v27;
  v30[2] = v26;
  v30[3] = v27;
  *&v22[55] = v27;
  *&v22[39] = v26;
  v16 = v29;
  v17 = v29;
  *&v22[87] = v29;
  *(a1 + 41) = *&v22[32];
  v18 = *&v22[64];
  *(a1 + 57) = *&v22[48];
  *(a1 + 73) = v18;
  *(a1 + 88) = *&v22[79];
  v19 = *&v22[16];
  *(a1 + 9) = *v22;
  *(a1 + 25) = v19;
  v23 = 0;
  v31 = v16;
  *(a1 + 8) = 0;
  *a1 = 0;
  v32[0] = v13;
  v32[1] = v12;
  v33 = v17;
  v32[3] = v15;
  v32[4] = v11;
  v32[2] = v14;
  sub_1E5C3165C(v30, &v21, &qword_1ED055388, &qword_1E5CA4C38);
  return sub_1E5C3177C(v32, &qword_1ED055388, &qword_1E5CA4C38);
}

unint64_t sub_1E5C7A048()
{
  result = qword_1ED055230;
  if (!qword_1ED055230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055230);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

double sub_1E5C7A11C@<D0>(uint64_t a1@<X8>)
{
  sub_1E5C9BE70();
  result = *(v1 + 120);
  *a1 = v4;
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E5C7A15C()
{
  result = qword_1ED055260;
  if (!qword_1ED055260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055220, &qword_1E5CA4968);
    sub_1E5C7A1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055260);
  }

  return result;
}

unint64_t sub_1E5C7A1E8()
{
  result = qword_1ED055268;
  if (!qword_1ED055268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055240, &qword_1E5CA4978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055218, &qword_1E5CA4960);
    sub_1E5C27F74(&qword_1ED055238, &qword_1ED055218, &qword_1E5CA4960, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED055270, &qword_1ED055250, &qword_1E5CA4988, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055268);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_1E5C9BFE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 64))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

unint64_t sub_1E5C7A4AC()
{
  result = qword_1ED055280;
  if (!qword_1ED055280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055278, &unk_1E5CA49A0);
    sub_1E5C2B20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055280);
  }

  return result;
}

uint64_t sub_1E5C7A54C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C7A5C4()
{
  result = qword_1ED055290;
  if (!qword_1ED055290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055290);
  }

  return result;
}

uint64_t sub_1E5C7A618()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = v2;
  v13 = *(v0 + 72);
  v9 = *(v0 + 8);
  v10 = v1;
  v3 = *(v0 + 88);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v14, v4);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  if (*(&v15 + 1))
  {
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = v16;
    v18[3] = v17;
    if (*(v3 + 16))
    {
      v5 = sub_1E5C7D560(v18);
      v7 = v6;
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
      if (v7)
      {
        return *(*(v3 + 56) + 8 * v5);
      }
    }

    else
    {
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
    }
  }

  return 0;
}

uint64_t sub_1E5C7A720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552D8, &qword_1E5CA4B60);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v30 - v2);
  v4 = v0[5];
  v5 = v0[6];
  v35 = v0[4];
  v36 = v4;
  v37 = v5;
  v6 = v0[1];
  v31 = *v0;
  v32 = v6;
  v7 = v0[3];
  v33 = v0[2];
  v34 = v7;
  v8 = v31;
  v9 = *(v0 + 24);
  v10 = *(v0 + 56);
  v40 = *(v0 + 40);
  v41 = v10;
  v42 = *(v0 + 72);
  v38 = *(v0 + 8);
  v39 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  sub_1E5C9C920();
  v40 = v30[2];
  v41 = v30[3];
  v42 = v30[4];
  v38 = v30[0];
  v39 = v30[1];
  v11 = v37;
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  *(v3 + v12[5]) = v8;
  v13 = (v3 + v12[6]);
  v14 = v41;
  v13[2] = v40;
  v13[3] = v14;
  v13[4] = v42;
  v15 = v39;
  *v13 = v38;
  v13[1] = v15;
  *(v3 + v12[7]) = v11;
  v16 = (v3 + v12[8]);
  *v16 = xmmword_1E5CA4840;
  v16[1] = xmmword_1E5CA4850;

  LODWORD(v30[0]) = sub_1E5C9C330();
  v17 = sub_1E5C9BE60();
  *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552E0, &qword_1E5CA4BA0) + 36)) = v17;
  v18 = swift_allocObject();
  v19 = v36;
  *(v18 + 5) = v35;
  *(v18 + 6) = v19;
  *(v18 + 7) = v37;
  v20 = v32;
  *(v18 + 1) = v31;
  *(v18 + 2) = v20;
  v21 = v34;
  *(v18 + 3) = v33;
  *(v18 + 4) = v21;
  sub_1E5C7EC68(&v31, v30);
  v22 = sub_1E5C9C9F0();
  v23 = (v3 + *(v1 + 36));
  *v23 = sub_1E5C7EC60;
  v23[1] = v18;
  v23[2] = v22;
  v23[3] = v24;
  v25 = swift_allocObject();
  v26 = v36;
  v25[5] = v35;
  v25[6] = v26;
  v25[7] = v37;
  v27 = v32;
  v25[1] = v31;
  v25[2] = v27;
  v28 = v34;
  v25[3] = v33;
  v25[4] = v28;
  sub_1E5C7EC68(&v31, v30);
  sub_1E5C7ED28();
  sub_1E5C9C700();

  return sub_1E5C3177C(v3, &qword_1ED0552D8, &qword_1E5CA4B60);
}

uint64_t sub_1E5C7AA18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5C9BF60();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055320, &qword_1E5CA4BB8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v53 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055328, &qword_1E5CA4BC0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  v14 = *a1;
  if (v14 && (v90[0] = *a2, *(v90[0] + 16)))
  {
    v15 = *(v90[0] + 32);
    v16 = *(v90[0] + 48);
    v17 = *(v90[0] + 80);
    v64 = *(v90[0] + 64);
    v65 = v17;
    v63[0] = v15;
    v63[1] = v16;
    v68 = v64;
    v69 = v17;
    v18 = *(v90[0] + 48);
    v66 = *(v90[0] + 32);
    v67 = v18;
    v71 = v66;
    v72 = v18;
    v73 = v64;
    v74 = v17;
    v56 = v11;

    sub_1E5C3165C(v90, &v58, &qword_1ED055278, &unk_1E5CA49A0);
    sub_1E5C2A1B8(v63, &v58);
    v54 = v7;
    v55 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C9C940();
    v70[0] = v71;
    v70[1] = v72;
    v70[2] = v73;
    v70[3] = v74;
    sub_1E5C3177C(v70, &qword_1ED053F80, &qword_1E5C9E528);
    v73 = v60;
    v74 = v61;
    v75 = v62;
    v71 = v58;
    v72 = v59;
    *v9 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
    swift_storeEnumTagMultiPayload();
    v19 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
    *(v9 + v19[5]) = v90[0];
    v20 = (v9 + v19[6]);
    v21 = v75;
    v20[3] = v74;
    v20[4] = v21;
    v22 = v73;
    v20[1] = v72;
    v20[2] = v22;
    *v20 = v71;
    v23 = (v9 + v19[7]);
    *v23 = 0;
    v23[1] = 0;
    v24 = (v9 + v19[8]);
    *v24 = xmmword_1E5CA4840;
    v24[1] = xmmword_1E5CA4850;
    *&v58 = sub_1E5C9C790();
    v25 = sub_1E5C9BE60();
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552E0, &qword_1E5CA4BA0) + 36)) = v25;
    LOBYTE(v25) = sub_1E5C9C440();
    sub_1E5C9BDA0();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_1E5C9BF50();
    v34 = sub_1E5C9BE60();
    v35 = sub_1E5C9C9F0();
    v37 = v36;
    LOBYTE(v57[0]) = 0;
    LOBYTE(v76) = v25;
    *(&v76 + 1) = v27;
    *&v77 = v29;
    *(&v77 + 1) = v31;
    *&v78 = v33;
    BYTE8(v78) = 0;
    *&v79 = v34;
    *(&v79 + 1) = v35;
    v80 = v36;
    v38 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055330, &qword_1E5CA4BC8) + 36);
    v39 = v79;
    *(v38 + 2) = v78;
    *(v38 + 3) = v39;
    *(v38 + 8) = v80;
    v40 = v77;
    *v38 = v76;
    *(v38 + 1) = v40;
    v81[0] = v25;
    v82 = v27;
    v83 = v29;
    v84 = v31;
    v85 = v33;
    v86 = 0;
    v87 = v34;
    v88 = v35;
    v89 = v37;
    sub_1E5C3165C(&v76, &v58, &qword_1ED055338, &qword_1E5CA4BD0);
    sub_1E5C3177C(v81, &qword_1ED055338, &qword_1E5CA4BD0);
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055340, &qword_1E5CA4BD8) + 36)) = 0;
    v41 = *(a2 + 3);
    v42 = *(a2 + 7);
    v60 = *(a2 + 5);
    v61 = v42;
    v62 = *(a2 + 9);
    v58 = *(a2 + 1);
    v59 = v41;

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
    MEMORY[0x1E6939210](v57, v43);
    v58 = v57[0];
    v59 = v57[1];
    v60 = v57[2];
    v61 = v57[3];
    KeyPath = swift_getKeyPath();
    v45 = (v9 + *(v54 + 36));
    *v45 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054870, &qword_1E5CA4C10);
    swift_storeEnumTagMultiPayload();
    v46 = type metadata accessor for SearchScopeFilters.ScopeCapsule(0);
    *(v45 + *(v46 + 20)) = v14;
    v47 = (v45 + *(v46 + 24));
    v48 = v59;
    *v47 = v58;
    v47[1] = v48;
    v49 = v61;
    v47[2] = v60;
    v47[3] = v49;
    sub_1E5C7EF20();
    sub_1E5C9C6C0();

    sub_1E5C3177C(v9, &qword_1ED055320, &qword_1E5CA4BB8);
    v50 = v55;
    sub_1E5C7F11C(v13, v55);
    return (*(v56 + 56))(v50, 0, 1, v10);
  }

  else
  {
    v52 = *(v11 + 56);

    return v52(a3, 1, 1, v10);
  }
}

uint64_t sub_1E5C7AFD4(uint64_t a1, _OWORD *a2)
{
  v3 = sub_1E5C9C3D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[5];
  v44 = a2[4];
  v45 = v7;
  v46 = a2[6];
  v8 = a2[1];
  v40 = *a2;
  v41 = v8;
  v9 = a2[3];
  v42 = a2[2];
  v43 = v9;
  result = sub_1E5C7A618();
  if ((v11 & 1) == 0)
  {
    v12 = result;
    (*(v4 + 104))(v6, *MEMORY[0x1E697CC28], v3);
    v13 = sub_1E5C9C3C0();
    result = (*(v4 + 8))(v6, v3);
    v14 = 1;
    if ((v13 & 1) == 0)
    {
      v14 = -1;
    }

    v15 = v12 + v14;
    if (__OFADD__(v12, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = *(*a2 + 16);
      if ((v16 - 1) < v15)
      {
        v15 = v16 - 1;
      }

      v17 = v15 & ~(v15 >> 63);
      if (v17 < v16)
      {
        v18 = (*a2 + (v17 << 6));
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[5];
        v34[2] = v18[4];
        v34[3] = v21;
        v34[0] = v19;
        v34[1] = v20;
        v22 = v18[3];
        v35 = v18[2];
        v36 = v22;
        v23 = v18[5];
        v37 = v18[4];
        v38 = v23;
        v24 = *(a2 + 24);
        v25 = *(a2 + 56);
        v42 = *(a2 + 40);
        v43 = v25;
        v44 = *(a2 + 72);
        v40 = *(a2 + 8);
        v41 = v24;
        v26 = *(a2 + 24);
        v27 = *(a2 + 56);
        v31 = *(a2 + 40);
        v32 = v27;
        v33 = *(a2 + 72);
        v29 = *(a2 + 8);
        v30 = v26;
        v28[0] = v35;
        v28[1] = v36;
        v28[2] = v37;
        v28[3] = v23;
        sub_1E5C2A1B8(v34, v39);
        sub_1E5C3165C(&v40, v39, &qword_1ED055258, &unk_1E5CA4990);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
        sub_1E5C9C910();
        v39[2] = v31;
        v39[3] = v32;
        v39[4] = v33;
        v39[0] = v29;
        v39[1] = v30;
        return sub_1E5C3177C(v39, &qword_1ED055258, &unk_1E5CA4990);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C7B23C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = sub_1E5C9C2A0();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5C9C000();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5C9CBA0();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054020, &qword_1E5CA4DF0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v71 - v12;
  v14 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055470, &qword_1E5CA4DE0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055468, &qword_1E5CA4DD8);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v71 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554A0, &qword_1E5CA4DF8);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v71 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055458, &qword_1E5CA4DD0);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554A8, &qword_1E5CA4E00);
  v89 = *(v23 - 8);
  v90 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v71 - v24;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055448, &qword_1E5CA4DC8);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v71 - v25;
  v26 = a1[1];
  v126 = *a1;
  v127 = v26;
  v27 = a1[3];
  *v128 = a1[2];
  *&v128[16] = v27;
  v130 = v27;
  v131 = v126;
  v28 = *(a1 + 2);
  v80 = *(a1 + 3);
  v132 = v28;
  v129 = *v128;
  sub_1E5C7E904(a2, &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchScopeFilters.ScopeButtons);
  v29 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v30 = swift_allocObject();
  sub_1E5C7FCD4(&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for SearchScopeFilters.ScopeButtons);
  v31 = (v30 + ((v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v127;
  *v31 = v126;
  v31[1] = v32;
  v33 = *&v128[16];
  v31[2] = *v128;
  v31[3] = v33;
  v97 = &v126;
  v98 = a2;
  v34 = a2;
  sub_1E5C2A1B8(&v126, &v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554B0, &qword_1E5CA4E08);
  sub_1E5C8014C();
  sub_1E5C9C8A0();
  v35 = v17;
  v36 = &v19[*(v17 + 52)];
  v37 = *&v128[16];
  *(v36 + 2) = *v128;
  *(v36 + 3) = v37;
  v38 = v127;
  *v36 = v126;
  *(v36 + 1) = v38;
  v82 = v14;
  v39 = *(v14 + 28);
  v85 = v34;
  if (*(v34 + v39))
  {
    v109 = v126;
    v110 = v127;
    v111 = *v128;
    v112 = *&v128[16];
    sub_1E5C2A1B8(&v126, &v122);
    SearchResultScope.impression.getter();
    v40 = sub_1E5C9CB70();
    (*(*(v40 - 8) + 56))(v13, 0, 1, v40);
  }

  else
  {
    v41 = sub_1E5C9CB70();
    (*(*(v41 - 8) + 56))(v13, 1, 1, v41);
    sub_1E5C2A1B8(&v126, &v109);
  }

  v42 = v76;
  sub_1E5C9CB80();
  v43 = sub_1E5C27F74(&qword_1ED055478, &qword_1ED055470, &qword_1E5CA4DE0, MEMORY[0x1E6981810]);
  v44 = v71;
  sub_1E5C9C5C0();
  (*(v78 + 8))(v42, v79);
  sub_1E5C3177C(v13, &qword_1ED054020, &qword_1E5CA4DF0);
  sub_1E5C3177C(v19, &qword_1ED055470, &qword_1E5CA4DE0);
  v45 = v81;
  sub_1E5C9BFF0();
  *&v109 = v35;
  *(&v109 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_1E5C7F7C4(&qword_1ED055480, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v47 = v73;
  v46 = v74;
  v48 = v84;
  sub_1E5C9C610();
  (*(v83 + 8))(v45, v48);
  (*(v72 + 8))(v44, v46);
  v49 = v88;
  v50 = v86;
  v51 = &v86[*(v88 + 36)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055490, &qword_1E5CA4DE8);
  sub_1E5C9C050();
  v53 = *MEMORY[0x1E697F468];
  v54 = sub_1E5C9C1C0();
  (*(*(v54 - 8) + 104))(v51, v53, v54);
  v51[*(v52 + 36)] = 0;
  (*(v75 + 32))(v50, v47, v77);
  v55 = v93;
  sub_1E5C9C060();
  v56 = (v85 + *(v82 + 24));
  v57 = v56[3];
  v111 = v56[2];
  v112 = v57;
  v113 = v56[4];
  v58 = v56[1];
  v109 = *v56;
  v110 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v122, v59);
  v60 = *(&v123 + 1);
  v121 = v123;
  v118 = v124;
  v119 = v125;
  v120 = v122;
  if (!*(&v123 + 1))
  {
    v61 = v80;
    if (!v80)
    {
      v109 = v122;
      v110 = v123;
      v111 = v124;
      v112 = v125;
      sub_1E5C2A1B8(&v126, &v105);
      sub_1E5C3177C(&v109, &qword_1ED053F80, &qword_1E5C9E528);
      goto LABEL_12;
    }

    sub_1E5C2A1B8(&v126, &v109);
    goto LABEL_10;
  }

  v110 = v123;
  v111 = v124;
  v112 = v125;
  v105 = v122;
  v106 = v123;
  v107 = v124;
  v108 = v125;
  v109 = v122;
  v61 = v80;
  if (!v80)
  {
    v101 = v109;
    v102 = v110;
    v103 = v111;
    v104 = v112;
    sub_1E5C2A1B8(&v126, v100);
    sub_1E5C3165C(&v109, v100, &qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C2A1F0(&v101);
LABEL_10:
    v109 = v120;
    *&v110 = v121;
    *(&v110 + 1) = v60;
    v111 = v118;
    v112 = v119;
    v113 = v131;
    v114 = v132;
    v115 = v61;
    v116 = v129;
    v117 = v130;
    sub_1E5C3177C(&v109, &qword_1ED054150, &unk_1E5CA3E30);
    goto LABEL_12;
  }

  v101 = v131;
  v103 = v129;
  v104 = v130;
  *&v102 = v132;
  *(&v102 + 1) = v80;
  sub_1E5C2A1B8(&v126, v100);
  sub_1E5C3165C(&v109, v100, &qword_1ED053F80, &qword_1E5C9E528);
  _s13FitnessSearch0B11ResultScopeV2eeoiySbAC_ACtFZ_0(&v105, &v101);
  v99[0] = v101;
  v99[1] = v102;
  v99[2] = v103;
  v99[3] = v104;
  sub_1E5C2A1F0(v99);
  v100[0] = v105;
  v100[1] = v106;
  v100[2] = v107;
  v100[3] = v108;
  sub_1E5C2A1F0(v100);
  v101 = v120;
  *&v102 = v121;
  *(&v102 + 1) = v60;
  v103 = v118;
  v104 = v119;
  sub_1E5C3177C(&v101, &qword_1ED053F80, &qword_1E5C9E528);
LABEL_12:
  v62 = sub_1E5C7FF04();
  v63 = sub_1E5C7F7C4(&qword_1ED055498, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v64 = v87;
  v65 = v95;
  sub_1E5C9C620();
  (*(v94 + 8))(v55, v65);
  sub_1E5C3177C(v50, &qword_1ED055458, &qword_1E5CA4DD0);
  v122 = *&v128[8];
  *&v109 = v49;
  *(&v109 + 1) = v65;
  *&v110 = v62;
  *(&v110 + 1) = v63;
  swift_getOpaqueTypeConformance2();
  sub_1E5C28160();
  v66 = v92;
  v67 = v90;
  sub_1E5C9C6A0();
  (*(v89 + 8))(v64, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054978, &qword_1E5CA1470);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1E5CA3380;
  *(v68 + 32) = 0x65706F6353;
  *(v68 + 40) = 0xE500000000000000;
  v69 = *(&v127 + 1);
  *(v68 + 48) = v127;
  *(v68 + 56) = v69;
  sub_1E5C7FDBC();

  sub_1E5C9C5B0();

  return sub_1E5C3177C(v66, &qword_1ED055448, &qword_1E5CA4DC8);
}

uint64_t sub_1E5C7BF74(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v5 = (a1 + *(v4 + 24));
  v6 = v5[1];
  v7 = v5[3];
  v20 = v5[2];
  v21 = v7;
  v8 = v5[3];
  v22 = v5[4];
  v9 = v5[1];
  v19[0] = *v5;
  v19[1] = v9;
  v16 = v20;
  v17 = v8;
  v18 = v5[4];
  v14 = v19[0];
  v15 = v6;
  sub_1E5C2A1B8(a2, v23);
  sub_1E5C3165C(v19, v23, &qword_1ED055258, &unk_1E5CA4990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  sub_1E5C9C910();
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[0] = v14;
  v23[1] = v15;
  result = sub_1E5C3177C(v23, &qword_1ED055258, &unk_1E5CA4990);
  v11 = *(a1 + *(v4 + 28));
  if (v11)
  {
    v12 = a2[1];
    v14 = *a2;
    v15 = v12;
    v13 = a2[3];
    v16 = a2[2];
    v17 = v13;
    return v11(&v14);
  }

  return result;
}

uint64_t sub_1E5C7C0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v79 = a3;
  v70 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v76 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v77 = v4;
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EE8, &qword_1E5CA3488);
  MEMORY[0x1EEE9AC00](v67);
  v81 = &v66 - v5;
  v6 = sub_1E5C9C4E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554D8, &qword_1E5CA4E18);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v66 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554C8, &qword_1E5CA4E10);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v66 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554B0, &qword_1E5CA4E08);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v66 - v12;
  v80 = a1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  *&v83 = v13;
  *(&v83 + 1) = v14;
  sub_1E5C28160();

  v15 = sub_1E5C9C580();
  v17 = v16;
  LOBYTE(v14) = v18;
  sub_1E5C9C510();
  sub_1E5C9C4D0();

  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
  sub_1E5C9C500();

  (*(v7 + 8))(v9, v6);
  v19 = sub_1E5C9C550();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v17;
  v27 = v81;
  sub_1E5C2824C(v15, v26, v14 & 1);

  *&v83 = v19;
  *(&v83 + 1) = v21;
  LOBYTE(v84) = v23 & 1;
  *(&v84 + 1) = v25;
  v28 = *MEMORY[0x1E697E728];
  v29 = sub_1E5C9BF80();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  sub_1E5C7F7C4(&qword_1ED054F08, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5C9CC00();
  if (result)
  {
    sub_1E5C27F74(&qword_1ED054F10, &qword_1ED054EE8, &qword_1E5CA3488, MEMORY[0x1E69E6ED8]);
    v31 = v69;
    sub_1E5C9C660();
    sub_1E5C3177C(v27, &qword_1ED054EE8, &qword_1E5CA3488);
    sub_1E5C2824C(v19, v21, v23 & 1);

    v32 = sub_1E5C9C4B0();
    v33 = v72;
    sub_1E5C9BDA0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554E8, &unk_1E5CA4E20) + 36);
    *v42 = v32;
    *(v42 + 8) = v35;
    *(v42 + 16) = v37;
    *(v42 + 24) = v39;
    *(v42 + 32) = v41;
    *(v42 + 40) = 0;
    v43 = sub_1E5C9C440();
    sub_1E5C9BDA0();
    v44 = v31 + *(v68 + 36);
    *v44 = v43;
    *(v44 + 8) = v45;
    *(v44 + 16) = v46;
    *(v44 + 24) = v47;
    *(v44 + 32) = v48;
    *(v44 + 40) = 0;
    sub_1E5C9C9F0();
    sub_1E5C9C040();
    v49 = v75;
    sub_1E5C6FECC(v31, v75, &qword_1ED0554D8, &qword_1E5CA4E18);
    v50 = (v49 + *(v71 + 36));
    v51 = v88;
    v50[4] = v87;
    v50[5] = v51;
    v50[6] = v89;
    v52 = v84;
    *v50 = v83;
    v50[1] = v52;
    v53 = v86;
    v50[2] = v85;
    v50[3] = v53;
    v54 = sub_1E5C9C890();
    v55 = v33;
    v56 = v78;
    sub_1E5C7E904(v55, v78, type metadata accessor for SearchScopeFilters.ScopeButtons);
    v57 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v58 = (v77 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    sub_1E5C7FCD4(v56, v59 + v57, type metadata accessor for SearchScopeFilters.ScopeButtons);
    v60 = (v59 + v58);
    v61 = v80;
    v62 = v80[1];
    *v60 = *v80;
    v60[1] = v62;
    v63 = *(v61 + 48);
    v60[2] = *(v61 + 32);
    v60[3] = v63;
    v64 = v73;
    sub_1E5C6FECC(v49, v73, &qword_1ED0554C8, &qword_1E5CA4E10);
    v65 = (v64 + *(v74 + 36));
    *v65 = v54;
    v65[1] = sub_1E5C8062C;
    v65[2] = v59;
    sub_1E5C6FECC(v64, v79, &qword_1ED0554B0, &qword_1E5CA4E08);
    return sub_1E5C2A1B8(v61, v82);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C7C8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v35 = *a3;
  v7 = *(a3 + 3);
  v36 = *(a3 + 2);
  v8 = a3[3];
  v45 = a3[2];
  v46 = v8;
  v9 = (a2 + *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) + 24));
  v10 = v9[3];
  v28 = v9[2];
  v29 = v10;
  v30 = v9[4];
  v11 = v9[1];
  v26 = *v9;
  v27 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v41, v12);
  v13 = *(&v42 + 1);
  v40 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v41;
  if (!*(&v42 + 1))
  {
    if (!v7)
    {
      v26 = v41;
      v27 = v42;
      v28 = v43;
      v29 = v44;
      sub_1E5C2A1B8(a3, &v22);
      sub_1E5C3177C(&v26, &qword_1ED053F80, &qword_1E5C9E528);
      goto LABEL_10;
    }

    sub_1E5C2A1B8(a3, &v26);
LABEL_8:
    v26 = v39;
    *&v27 = v40;
    *(&v27 + 1) = v13;
    v28 = v37;
    v29 = v38;
    v30 = v35;
    v31 = v36;
    v32 = v7;
    v33 = v45;
    v34 = v46;
    result = sub_1E5C3177C(&v26, &qword_1ED054150, &unk_1E5CA3E30);
    a1 = 0;
    goto LABEL_11;
  }

  v27 = v42;
  v28 = v43;
  v29 = v44;
  v22 = v41;
  v23 = v42;
  v24 = v43;
  v25 = v44;
  v26 = v41;
  if (!v7)
  {
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    sub_1E5C2A1B8(a3, v17);
    sub_1E5C3165C(&v26, v17, &qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C2A1F0(&v18);
    goto LABEL_8;
  }

  v18 = v35;
  v20 = v45;
  v21 = v46;
  *&v19 = v36;
  *(&v19 + 1) = v7;
  sub_1E5C2A1B8(a3, v17);
  sub_1E5C3165C(&v26, v17, &qword_1ED053F80, &qword_1E5C9E528);
  v14 = _s13FitnessSearch0B11ResultScopeV2eeoiySbAC_ACtFZ_0(&v22, &v18);
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  sub_1E5C2A1F0(v16);
  v17[0] = v22;
  v17[1] = v23;
  v17[2] = v24;
  v17[3] = v25;
  sub_1E5C2A1F0(v17);
  v18 = v39;
  *&v19 = v40;
  *(&v19 + 1) = v13;
  v20 = v37;
  v21 = v38;
  result = sub_1E5C3177C(&v18, &qword_1ED053F80, &qword_1E5C9E528);
  if (v14)
  {
LABEL_10:

    goto LABEL_11;
  }

  a1 = 0;
LABEL_11:
  *a4 = a1;
  return result;
}

uint64_t sub_1E5C7CB44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5C3165C(a1, &v5 - v3, &qword_1ED054868, &unk_1E5CA12A0);
  return sub_1E5C9C110();
}

uint64_t sub_1E5C7CBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  sub_1E5C489B4((v16 - v8));
  v10 = sub_1E5C7F8FC(v9);
  sub_1E5C3177C(v9, &qword_1ED054868, &unk_1E5CA12A0);
  *a2 = sub_1E5C9C1A0();
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055430, &unk_1E5CA4D98);
  v16[3] = *(v2 + *(v4 + 28));
  swift_getKeyPath();
  sub_1E5C7E904(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchScopeFilters.ScopeButtons);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1E5C7FCD4(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SearchScopeFilters.ScopeButtons);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055438, &qword_1E5CA4DC0);
  sub_1E5C27F74(&qword_1ED055440, &qword_1ED055278, &unk_1E5CA49A0, MEMORY[0x1E69E6338]);
  sub_1E5C7A5C4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055448, &qword_1E5CA4DC8);
  v14 = sub_1E5C7FDBC();
  v16[1] = v13;
  v16[2] = v14;
  swift_getOpaqueTypeConformance2();
  return sub_1E5C9C950();
}

uint64_t sub_1E5C7CEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5C27F74(&qword_1ED055538, &qword_1ED055540, &qword_1E5CA4E68, MEMORY[0x1E69E7C90]);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

void *sub_1E5C7CF3C(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_1E5C7CF8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E5C9BFA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v36 = type metadata accessor for SearchScopeFilters.ScopeCapsule(0);
  type metadata accessor for CGRect(0);
  sub_1E5C9BE90();
  v11 = v43;
  v13 = v44;
  v12 = *&v45;
  v37 = a1;
  sub_1E5C48C08(v10);
  (*(v5 + 104))(v8, *MEMORY[0x1E697E7D0], v4);
  v14 = sub_1E5C9BF90();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if (v14)
  {
    v49.origin.x = v11;
    *&v49.origin.y = v13;
    v49.size.height = v12;
    MinX = CGRectGetMinX(v49);
  }

  else
  {
    sub_1E5C9BE80();
    v18 = v17;
    v50.origin.x = v11;
    *&v50.origin.y = v13;
    v50.size.height = v12;
    MinX = v18 - CGRectGetMaxX(v50);
  }

  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5C9C1C0();
  (*(*(v20 - 8) + 104))(a2, v19, v20);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055510, &qword_1E5CA4E40) + 36)) = 256;
  v51.origin.x = v11;
  *&v51.origin.y = v13;
  v51.size.height = v12;
  MinY = CGRectGetMinY(v51);
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055518, &qword_1E5CA4E48) + 36));
  *v22 = MinX;
  v22[1] = MinY;
  v52.origin.x = v11;
  *&v52.origin.y = v13;
  v52.size.height = v12;
  CGRectGetWidth(v52);
  v53.origin.x = v11;
  *&v53.origin.y = v13;
  v53.size.height = v12;
  CGRectGetHeight(v53);
  sub_1E5C9C9F0();
  sub_1E5C9BE50();
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055520, &qword_1E5CA4E50) + 36));
  v24 = v48[1];
  *v23 = v48[0];
  v23[1] = v24;
  v23[2] = v48[2];
  v25 = MEMORY[0x1E6939320](0.25, 0.8, 0.0);
  v26 = (v37 + *(v36 + 24));
  v27 = v26[3];
  v40 = v26[2];
  v41 = v27;
  v28 = v26[1];
  v39[0] = *v26;
  v39[1] = v28;
  *v42 = v25;
  *&v42[24] = v28;
  *&v42[40] = v40;
  *&v42[56] = v27;
  *&v42[8] = v39[0];
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055528, &qword_1E5CA4E58) + 36);
  v30 = *&v42[48];
  *(v29 + 32) = *&v42[32];
  *(v29 + 48) = v30;
  *(v29 + 64) = *&v42[64];
  v31 = *&v42[16];
  *v29 = *v42;
  *(v29 + 16) = v31;
  v43 = *&v25;
  v32 = v26[3];
  v46 = v26[2];
  v47 = v32;
  v33 = v26[1];
  v44 = *v26;
  v45 = v33;
  sub_1E5C3165C(v39, v38, &qword_1ED053F80, &qword_1E5C9E528);
  sub_1E5C3165C(v42, v38, &qword_1ED055530, &qword_1E5CA4E60);
  return sub_1E5C3177C(&v43, &qword_1ED055530, &qword_1E5CA4E60);
}

uint64_t sub_1E5C7D384@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E5C7E904(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchScopeFilters.ScopeCapsule);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E5C7FCD4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SearchScopeFilters.ScopeCapsule);
  *a2 = sub_1E5C806D8;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E5C7D498(uint64_t a1)
{
  v2 = sub_1E5C9BFA0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5C9C0F0();
}

uint64_t sub_1E5C7D560(unint64_t *a1)
{
  sub_1E5C9D0D0();
  if (a1[1])
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v2 = a1[4];
  v3 = a1[7];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v2);
  sub_1E5C9CC60();
  sub_1E5C2A6D0(v6, v3);
  v4 = sub_1E5C9D110();

  return sub_1E5C7DA3C(a1, v4);
}

unint64_t sub_1E5C7D644(uint64_t a1, uint64_t a2)
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  v4 = sub_1E5C9D110();

  return sub_1E5C7E6B8(a1, a2, v4);
}

uint64_t sub_1E5C7D6BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552A0, &qword_1E5CA49B8);
  v40 = v4;
  result = sub_1E5C9CEF0();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      if (v40)
      {
        v21 = *(v5 + 56);
        v22 = *(v5 + 48) + (v20 << 6);
        v23 = *(v22 + 8);
        v42 = *v22;
        v24 = *(v22 + 16);
        v25 = *(v22 + 24);
        v43 = *(v22 + 32);
        v44 = *(v22 + 48);
        v41 = *(v21 + 8 * v20);
      }

      else
      {
        v26 = (*(v5 + 48) + (v20 << 6));
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[3];
        v46 = v26[2];
        v47 = v29;
        v45[0] = v27;
        v45[1] = v28;
        v30 = *(*(v5 + 56) + 8 * v20);
        v44 = v29;
        v43 = v46;
        v25 = *(&v28 + 1);
        v24 = v28;
        v23 = *(&v27 + 1);
        v41 = v30;
        v42 = v27;
        sub_1E5C2A1B8(v45, v48);
      }

      sub_1E5C9D0D0();
      sub_1E5C9D0F0();
      if (v23)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v43);
      sub_1E5C9CC60();
      sub_1E5C2A6D0(v45, *(&v44 + 1));
      result = sub_1E5C9D110();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + (v15 << 6);
      *v16 = v42;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(v16 + 32) = v43;
      *(v16 + 48) = v44;
      *(*(v7 + 56) + 8 * v15) = v41;
      ++*(v7 + 16);
      v5 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1E5C7DA3C(unint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  MEMORY[0x1EEE9AC00](v77);
  v8 = &v60 - v7;
  v9 = type metadata accessor for SearchContentTile(0);
  v79 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v60 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v60 - v17;
  v62 = v2;
  v19 = -1 << *(v2 + 32);
  v20 = a2 & ~v19;
  if (((*(v2 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return v20;
  }

  v21 = v2 + 64;
  v65 = v16;
  v22 = ~v19;
  v74 = *a1;
  v23 = a1[1];
  v78 = a1[2];
  v24 = a1[4];
  v71 = a1[3];
  v69 = v24;
  v25 = a1[6];
  v68 = a1[5];
  v64 = v25;
  v63 = a1[7];
  v26 = v62;
  v72 = v9;
  v80 = v23;
  v61 = v2 + 64;
  while (1)
  {
    v27 = (*(v26 + 48) + (v20 << 6));
    v28 = v27[3];
    v30 = *v27;
    v29 = v27[1];
    *v90 = v27[2];
    *&v90[16] = v28;
    v88 = v30;
    v89 = v29;
    if (*(&v30 + 1))
    {
      break;
    }

    if (!v23)
    {
      goto LABEL_9;
    }

LABEL_4:
    v20 = (v20 + 1) & v22;
    if (((*(v21 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return v20;
    }
  }

  if (!v23)
  {
    goto LABEL_4;
  }

  if (__PAIR128__(*(&v30 + 1), v88) != __PAIR128__(v23, v74))
  {
    v31 = sub_1E5C9D060();
    v23 = v80;
    if ((v31 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_9:
  if (v89 != __PAIR128__(v71, v78))
  {
    v32 = sub_1E5C9D060();
    v23 = v80;
    if ((v32 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (*v90 != v69)
  {
    goto LABEL_4;
  }

  if (*&v90[8] != __PAIR128__(v64, v68))
  {
    v33 = sub_1E5C9D060();
    v23 = v80;
    if ((v33 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v70 = *&v90[24];
  v34 = *(*&v90[24] + 16);
  if (v34 != *(v63 + 16))
  {
    goto LABEL_4;
  }

  v35 = v70;
  if (!v34 || v70 == v63)
  {
    return v20;
  }

  v36 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v76 = v70 + v36;
  v75 = v63 + v36;
  result = sub_1E5C2A1B8(&v88, &v85);
  v38 = 0;
  v39 = v35;
  v73 = v34;
  while (v38 < *(v39 + 16))
  {
    v40 = *(v79 + 72) * v38;
    result = sub_1E5C7E904(v76 + v40, v18, type metadata accessor for SearchContentTile);
    v81 = v38;
    if (v34 == v38)
    {
      goto LABEL_100;
    }

    sub_1E5C7E904(v75 + v40, v15, type metadata accessor for SearchContentTile);
    v41 = &v8[*(v77 + 48)];
    sub_1E5C7E904(v18, v8, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v15, v41, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v22;
      v43 = v65;
      sub_1E5C7E904(v8, v65, type metadata accessor for SearchContentTile);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1E5C7E96C(v15, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v43, type metadata accessor for SearchItem);
        v22 = v42;
LABEL_91:
        sub_1E5C3177C(v8, &qword_1ED054D18, &unk_1E5CA2B00);
        goto LABEL_95;
      }

      v44 = v66;
      sub_1E5C7FCD4(v41, v66, type metadata accessor for SearchItem);
      v45 = _s13FitnessSearch0B4ItemV2eeoiySbAC_ACtFZ_0(v43, v44);
      sub_1E5C7E96C(v44, type metadata accessor for SearchItem);
      sub_1E5C7E96C(v15, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v43, type metadata accessor for SearchItem);
      result = sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
      v22 = v42;
      v39 = v70;
      v34 = v73;
      if (!v45)
      {
        goto LABEL_95;
      }

      goto LABEL_20;
    }

    v46 = v67;
    sub_1E5C7E904(v8, v67, type metadata accessor for SearchContentTile);
    v47 = *(v46 + 48);
    *v87 = *(v46 + 32);
    *&v87[16] = v47;
    *&v87[32] = *(v46 + 64);
    v48 = *(v46 + 16);
    v85 = *v46;
    v86 = v48;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E5C4F8A4(&v85);
      sub_1E5C7E96C(v15, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
      goto LABEL_91;
    }

    v49 = *(v41 + 16);
    v82 = *v41;
    v83 = v49;
    v50 = *(v41 + 48);
    *v84 = *(v41 + 32);
    *&v84[16] = v50;
    *&v84[32] = *(v41 + 64);
    if (v85 != v82 && (sub_1E5C9D060() & 1) == 0 || v86 != v83 && (sub_1E5C9D060() & 1) == 0)
    {
      goto LABEL_93;
    }

    if (v87[0] <= 3u)
    {
      if (v87[0] > 1u)
      {
        if (v87[0] == 2)
        {
          v51 = 0x7974696C61646F6DLL;
        }

        else
        {
          v51 = 0x7473696C79616C70;
        }

        v52 = 0xE800000000000000;
      }

      else
      {
        v51 = 0x6169726F74696465;
        v52 = 0xEF73647261632D6CLL;
        if (v87[0])
        {
          v52 = 0xEF736D6574692D6CLL;
        }
      }
    }

    else if (v87[0] <= 5u)
    {
      if (v87[0] == 4)
      {
        v51 = 0x6D6172676F7270;
      }

      else
      {
        v51 = 0x72656E69617274;
      }

      v52 = 0xE700000000000000;
    }

    else if (v87[0] == 6)
    {
      v51 = 0x2D72656E69617274;
      v52 = 0xEC00000073706974;
    }

    else if (v87[0] == 7)
    {
      v51 = 0x65486C6C65737075;
      v52 = 0xEC00000072656461;
    }

    else
    {
      v52 = 0xE700000000000000;
      v51 = 0x74756F6B726F77;
    }

    if (v84[0] <= 3u)
    {
      if (v84[0] > 1u)
      {
        v56 = 0xE800000000000000;
        if (v84[0] == 2)
        {
          if (v51 != 0x7974696C61646F6DLL)
          {
            goto LABEL_75;
          }
        }

        else if (v51 != 0x7473696C79616C70)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      v55 = 0x6169726F74696465;
      v56 = 0xEF73647261632D6CLL;
      if (v84[0])
      {
        v56 = 0xEF736D6574692D6CLL;
        if (v51 != 0x6169726F74696465)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      goto LABEL_71;
    }

    if (v84[0] > 5u)
    {
      if (v84[0] == 6)
      {
        v53 = 0x2D72656E69617274;
        v54 = 1936746868;
LABEL_66:
        v56 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v51 != v53)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      if (v84[0] == 7)
      {
        v53 = 0x65486C6C65737075;
        v54 = 1919247457;
        goto LABEL_66;
      }

      v56 = 0xE700000000000000;
      v55 = 0x74756F6B726F77;
LABEL_71:
      if (v51 != v55)
      {
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    v56 = 0xE700000000000000;
    if (v84[0] == 4)
    {
      if (v51 != 0x6D6172676F7270)
      {
        goto LABEL_75;
      }
    }

    else if (v51 != 0x72656E69617274)
    {
LABEL_75:
      v57 = sub_1E5C9D060();

      v34 = v73;
      if ((v57 & 1) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_76;
    }

LABEL_72:
    if (v52 != v56)
    {
      goto LABEL_75;
    }

    v34 = v73;
LABEL_76:
    if (*&v87[16])
    {
      if (!*&v84[16])
      {
        goto LABEL_92;
      }

      if (*&v87[8] != *&v84[8] && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (*&v84[16])
      {
LABEL_92:

LABEL_93:
        sub_1E5C7E96C(v15, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v82);
        sub_1E5C4F8A4(&v85);
LABEL_94:
        sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
LABEL_95:
        sub_1E5C2A1F0(&v88);
        v26 = v62;
        v21 = v61;
        v23 = v80;
        goto LABEL_4;
      }

      swift_bridgeObjectRelease_n();
    }

    v58 = *&v84[32];
    if (*&v87[32])
    {
      if (!*&v84[32])
      {
        goto LABEL_93;
      }

      if (*&v87[24] == *&v84[24])
      {
        sub_1E5C7E96C(v15, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v82);
        sub_1E5C4F8A4(&v85);
      }

      else
      {
        v59 = sub_1E5C9D060();
        sub_1E5C7E96C(v15, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v82);
        sub_1E5C4F8A4(&v85);
        if ((v59 & 1) == 0)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      sub_1E5C7E96C(v15, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
      sub_1E5C4F8A4(&v82);
      sub_1E5C4F8A4(&v85);
      if (v58)
      {
        goto LABEL_94;
      }
    }

    result = sub_1E5C7E96C(v8, type metadata accessor for SearchContentTile);
LABEL_20:
    v38 = v81 + 1;
    if (v34 == v81 + 1)
    {
      sub_1E5C2A1F0(&v88);
      return v20;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

unint64_t sub_1E5C7E6B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E5C9D060())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1E5C7E770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552A0, &qword_1E5CA49B8);
  v2 = *v0;
  v3 = sub_1E5C9CEE0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v28[2] = v18[2];
        v28[3] = v21;
        v28[0] = v20;
        v28[1] = v19;
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + (v17 << 6));
        v24 = *v18;
        v25 = v18[1];
        v26 = v18[3];
        v23[2] = v18[2];
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        *(*(v4 + 56) + 8 * v17) = v22;
        result = sub_1E5C2A1B8(v28, &v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E5C7E904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C7E96C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_1E5C7EA00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E5C7EA48(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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
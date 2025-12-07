uint64_t PhotosSearchRecentSuggestionItem.title.setter()
{
  OUTLINED_FUNCTION_18_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PhotosSearchRecentSuggestionItem.subtitle.setter()
{
  OUTLINED_FUNCTION_18_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1C10146E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhotosSearchRecentSuggestionItem(0, *(a1 + a2 - 24), *(a1 + a2 - 16), *(a1 + a2 - 8));
  result = PhotosSearchRecentSuggestionItem.content.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C1014728(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));

  return PhotosSearchRecentSuggestionItem.content.setter(v4, v5, v6);
}

uint64_t _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

void _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));

  *v6 = a1;
  v6[1] = a2;
}

void (*PhotosSearchRecentSuggestionItem.content.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(a2);
  a1[1] = v4;
  return sub_1C101484C;
}

void sub_1C101484C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    v3 = OUTLINED_FUNCTION_2();
    _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvs_0(v3, v4, v2);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2();
    _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvs_0(v5, v6, v2);
  }
}

uint64_t sub_1C10148C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  swift_getFunctionTypeMetadata0();
  OUTLINED_FUNCTION_3();
  (*(v3 + 32))(&v6, v5);
  return v6;
}

void PhotosSearchRecentSuggestionItem.init(title:subtitle:resultItem:shouldDisplay:isClearable:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  *v32 = v34;
  *(v32 + 1) = v35;
  *(v32 + 2) = v36;
  *(v32 + 3) = v37;
  v38 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, a22, a23, a24);
  (*(*(a23 - 8) + 32))(&v33[v38[12]], v31, a23);
  v33[v38[13]] = v29;
  v33[v38[14]] = v27;
  v39 = &v33[v38[15]];
  *v39 = sub_1C10148C0(v25, a21, a22);
  v39[1] = v40;
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosSearchRecentSuggestionItem<>.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1 == *a2 && a1[1] == a2[1];
  if (!v9 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = a1[2] == a2[2] && v10 == v11;
    if (!v12 && (sub_1C1266D50() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_0();
  v16 = type metadata accessor for PhotosSearchRecentSuggestionItem(v13, v14, v15, a5);
  if ((sub_1C1265DE0() & 1) == 0 || *(a1 + *(v16 + 52)) != *(a2 + *(v16 + 52)) || *(a1 + *(v16 + 56)) != *(a2 + *(v16 + 56)))
  {
    return 0;
  }

  swift_getFunctionTypeMetadata0();
  return 1;
}

uint64_t PhotosSearchRecentSuggestionItem<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_0();
  sub_1C1265EF0();
  if (*(v3 + 24))
  {
    sub_1C1266EB0();
    sub_1C1265EF0();
  }

  else
  {
    sub_1C1266EB0();
  }

  sub_1C1265D30();
  sub_1C1266EB0();
  sub_1C1266EB0();
  FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();

  return type metadata accessor for EquatableHashableIgnored(0, FunctionTypeMetadata0, v5, v6);
}

uint64_t PhotosSearchRecentSuggestionItem<>.hashValue.getter()
{
  OUTLINED_FUNCTION_18_0();
  sub_1C1266E90();
  PhotosSearchRecentSuggestionItem<>.hash(into:)(v3, v1, v0);
  return sub_1C1266EE0();
}

uint64_t sub_1C1014C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1C1266E90();
  PhotosSearchRecentSuggestionItem<>.hash(into:)(v6, a2, v4);
  return sub_1C1266EE0();
}

uint64_t sub_1C1014CE8(uint64_t a1)
{
  v3 = sub_1C1263130();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C1263EB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v50[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v50[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50[-v26];
  v64 = a1;
  v65 = v1;
  sub_1C1015530(a1, &v50[-v26]);
  v28 = *MEMORY[0x1E697FF38];
  v62 = v6;
  v29 = *(v6 + 104);
  v58 = v28;
  v57 = v29;
  v29(v24);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
  v59 = v8;
  v30 = *(v8 + 48);
  sub_1C0FE5654(v27, v12, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v24, &v12[v30], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    sub_1C0F9E27C(v24, &qword_1EBE902F0);
    sub_1C0F9E27C(v27, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) == 1)
    {
      sub_1C0F9E27C(v12, &qword_1EBE902F0);
      v31 = 56;
      v33 = v64;
      v32 = v65;
      v34 = v63;
      v36 = v60;
      v35 = v61;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v12, v21, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) == 1)
  {
    sub_1C0F9E27C(v24, &qword_1EBE902F0);
    sub_1C0F9E27C(v27, &qword_1EBE902F0);
    (*(v62 + 8))(v21, v5);
LABEL_6:
    sub_1C0F9E27C(v12, &qword_1EBE902E8);
    v33 = v64;
    v32 = v65;
    v34 = v63;
    v36 = v60;
    goto LABEL_7;
  }

  v40 = v62;
  v41 = v55;
  (*(v62 + 32))(v55, &v12[v30], v5);
  sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v51 = sub_1C1265DE0();
  v42 = *(v40 + 8);
  v42(v41, v5);
  sub_1C0F9E27C(v24, &qword_1EBE902F0);
  sub_1C0F9E27C(v27, &qword_1EBE902F0);
  v42(v21, v5);
  sub_1C0F9E27C(v12, &qword_1EBE902F0);
  v33 = v64;
  v32 = v65;
  v34 = v63;
  v36 = v60;
  if (v51)
  {
    v31 = 56;
    goto LABEL_8;
  }

LABEL_7:
  v31 = 64;
LABEL_8:
  v35 = v61;
LABEL_9:
  v37 = *(v32 + v31);
  sub_1C1015714(v33, v35);
  v57(v36, v58, v5);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v5);
  v38 = *(v59 + 48);
  sub_1C0FE5654(v35, v34, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v36, v34 + v38, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v5) != 1)
  {
    v39 = v56;
    sub_1C0FE5654(v34, v56, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(v34 + v38, 1, v5) != 1)
    {
      v65 = v37;
      v43 = v62;
      v44 = v55;
      (*(v62 + 32))(v55, v34 + v38, v5);
      sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      LODWORD(v64) = sub_1C1265DE0();
      v45 = *(v43 + 8);
      v45(v44, v5);
      sub_1C0F9E27C(v36, &qword_1EBE902F0);
      sub_1C0F9E27C(v35, &qword_1EBE902F0);
      v45(v56, v5);
      v37 = v65;
      sub_1C0F9E27C(v34, &qword_1EBE902F0);
      if ((v64 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    sub_1C0F9E27C(v36, &qword_1EBE902F0);
    sub_1C0F9E27C(v35, &qword_1EBE902F0);
    (*(v62 + 8))(v39, v5);
LABEL_14:
    sub_1C0F9E27C(v34, &qword_1EBE902E8);
    goto LABEL_20;
  }

  sub_1C0F9E27C(v36, &qword_1EBE902F0);
  sub_1C0F9E27C(v35, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v34 + v38, 1, v5) != 1)
  {
    goto LABEL_14;
  }

  sub_1C0F9E27C(v34, &qword_1EBE902F0);
LABEL_18:
  v46 = v52;
  sub_1C10158F8(v33, v52);
  v47 = sub_1C1263120();
  (*(v53 + 8))(v46, v54);
  if (v47)
  {
    v48 = 1;
    goto LABEL_21;
  }

LABEL_20:
  v48 = 0;
LABEL_21:
  result = v37 - v48;
  if (__OFSUB__(v37, v48))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1015530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 84), &v14 - v10, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C1015714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 92), &v14 - v10, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C10158F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 88), &v15 - v10, &qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1015AFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v1;
}

void PhotosSearchRecentSuggestionsView.init(suggestions:selectionHandler:clearRecentSearchesHandler:expandRecentSearchesHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *(a9 + 56) = xmmword_1C12A7E90;
  *(a9 + 72) = sub_1C1012790(0) & 1;
  *(a9 + 80) = v20;
  v26 = a8;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v21 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, &v26);
  v22 = v21[21];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v23 = v21[22];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  v24 = v21[23];
  *(a9 + v24) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
}

void PhotosSearchRecentSuggestionsView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v62 = v0;
  v2 = v1;
  v66 = v3;
  OUTLINED_FUNCTION_0();
  v64 = v4;
  v65 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EE8, &qword_1C12A7F80);
  v8 = *(v2 + 32);
  v67 = *(v2 + 16);
  v9 = v2;
  v60 = v2;
  v61 = v8;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionItem(255, v67, *(&v67 + 1), v8);
  v11 = sub_1C1266800();
  v12 = sub_1C12654A0();
  v13 = sub_1C12632E0();
  OUTLINED_FUNCTION_8_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_11();
  v17 = sub_1C1023734(v15, v16, MEMORY[0x1E697C240]);
  v73 = v12;
  v74 = v13;
  v75 = WitnessTable;
  v76 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_14();
  v19 = swift_getWitnessTable();
  v20 = *(v9 + 40);
  v78 = v20;
  v53 = v20;
  OUTLINED_FUNCTION_16_9();
  v21 = swift_getWitnessTable();
  v73 = v11;
  v74 = v10;
  v75 = OpaqueTypeMetadata2;
  v76 = v19;
  v77 = v21;
  sub_1C12656A0();
  v73 = v12;
  v74 = v13;
  v75 = WitnessTable;
  v76 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C1265AF0();
  v22 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v22, v59, v23);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v24 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v59 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v54 = &v53 - v27;
  OUTLINED_FUNCTION_1_1();
  v56 = swift_getWitnessTable();
  v73 = v24;
  v74 = MEMORY[0x1E69E6370];
  v75 = v56;
  v76 = MEMORY[0x1E69E6388];
  v57 = MEMORY[0x1E6981448];
  v28 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v58 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v55 = &v53 - v35;
  sub_1C1263AB0();
  v36 = v61;
  *&v37 = v61;
  *(&v37 + 1) = v20;
  v69 = v37;
  v68 = v67;
  v38 = v60;
  v40 = v62;
  v70 = *(v60 + 48);
  v39 = v70;
  v71 = v62;
  sub_1C1265590();
  v41 = v38;
  LOBYTE(v73) = sub_1C1015AFC() & 1;
  v43 = v63;
  v42 = v64;
  (*(v64 + 16))(v63, v40, v41);
  v44 = (*(v42 + 80) + 56) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v67;
  v46 = v53;
  *(v45 + 32) = v36;
  *(v45 + 40) = v46;
  *(v45 + 48) = v39;
  (*(v42 + 32))(v45 + v44, v43, v41);
  v47 = MEMORY[0x1E69E6370];
  v48 = v56;
  v49 = MEMORY[0x1E69E6388];
  v50 = v54;
  sub_1C1265010();

  (*(v59 + 8))(v50, v24);
  v73 = v24;
  v74 = v47;
  v75 = v48;
  v76 = v49;
  swift_getOpaqueTypeConformance2();
  v51 = v55;
  sub_1C0FDBA4C();
  v52 = *(v58 + 8);
  v52(v33, v28);
  sub_1C0FDBA4C();
  v52(v51, v28);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1016264@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v60 = a5;
  v69 = a3;
  v80 = a1;
  v77 = a7;
  v11 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C1265810();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v71 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v68 = a4;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionItem(255, a2, a3, a4);
  v17 = sub_1C1266800();
  v18 = sub_1C12654A0();
  v19 = sub_1C12632E0();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  OpaqueTypeConformance2 = v18;
  v90 = v19;
  v91 = WitnessTable;
  v92 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = swift_getWitnessTable();
  v94 = a5;
  v24 = swift_getWitnessTable();
  OpaqueTypeConformance2 = v17;
  v90 = v16;
  v91 = OpaqueTypeMetadata2;
  v92 = v23;
  v93 = v24;
  v63 = sub_1C12656A0();
  OpaqueTypeConformance2 = v18;
  v90 = v19;
  v91 = WitnessTable;
  v92 = v21;
  v88[2] = swift_getOpaqueTypeConformance2();
  v62 = swift_getWitnessTable();
  v59 = sub_1C1265AF0();
  v70 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v55 - v27;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91250, &qword_1C12A8498);
  MEMORY[0x1EEE9AC00](v78);
  v29 = &v55 - v28;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EE8, &qword_1C12A7F80);
  v79 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v56 = &v55 - v32;
  *v29 = sub_1C12638E0();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91258, &unk_1C12A84A0);
  v34 = v67;
  v35 = v69;
  v36 = v68;
  v37 = v60;
  v38 = v73;
  sub_1C1016AF8(v80, v67, v69, v68, v60, v73, &v29[*(v33 + 44)]);
  v58 = sub_1C10239B0(&qword_1EBE91260, &qword_1EBE91250, &qword_1C12A8498, MEMORY[0x1E69817F8]);
  v57 = sub_1C102306C();
  sub_1C1264A00();
  sub_1C0F9E27C(v29, &qword_1EBE91250);
  v39 = v72;
  *v72 = xmmword_1C12A3450;
  (*(v74 + 104))(v39, *MEMORY[0x1E697D748], v75);
  v40 = v71;
  sub_1C1265830();
  OpaqueTypeConformance2 = v34;
  v90 = v35;
  v91 = v36;
  v92 = v37;
  v93 = v38;
  v41 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, &OpaqueTypeConformance2);
  v42 = v80;
  v43 = sub_1C1014CE8(v41);
  sub_1C12478D4(v40, v43);
  v81 = v34;
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v38;
  v86 = v42;
  sub_1C1209EC8(v63);
  sub_1C1209E48();
  v44 = v64;
  sub_1C1265AE0();
  v45 = v59;
  v46 = swift_getWitnessTable();
  v47 = v66;
  sub_1C0FDBA4C();
  v48 = v70;
  v49 = *(v70 + 8);
  v49(v44, v45);
  v50 = v61;
  v51 = v56;
  v52 = v65;
  (*(v79 + 16))(v61, v56, v65);
  v88[0] = v50;
  (*(v48 + 16))(v44, v47, v45);
  v88[1] = v44;
  v87[0] = v52;
  v87[1] = v45;
  OpaqueTypeConformance2 = v78;
  v90 = &type metadata for PhotosToolbarLabelButtonStyle;
  v91 = v58;
  v92 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = v46;
  sub_1C119EE80(v88, 2, v87);
  v49(v47, v45);
  v53 = *(v79 + 8);
  v53(v51, v52);
  v49(v44, v45);
  return (v53)(v50, v52);
}

void sub_1C1016AF8(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v116 = a1;
  v110 = a7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91270, &qword_1C12A84E8);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v89 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91278, &unk_1C12A84F0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v115 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v89 - v15;
  v121 = a2;
  v122 = a3;
  v124 = a2;
  v125 = a3;
  v119 = a4;
  v120 = a5;
  v126 = a4;
  v127 = a5;
  v123 = a6;
  v128 = a6;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, &v124);
  v17 = *(v16 - 8);
  v111 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v89 - v18;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560, &qword_1C12A5E00);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v89 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91280, &qword_1C12A8500);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v118 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v89 - v22;
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE7E630;
  LOWORD(v88) = 256;
  v87 = 0;
  v24 = sub_1C12648D0();
  v26 = v25;
  v28 = v27;
  sub_1C1264650();
  sub_1C1264540();

  v101 = sub_1C1264870();
  v100 = v29;
  v102 = v30;
  v113 = v31;

  sub_1C0FDB8E8(v24, v26, v28 & 1);

  v97 = sub_1C12639A0();
  v33 = v32;
  LODWORD(v89) = v34;
  v35 = *(v17 + 16);
  v94 = v17 + 16;
  v95 = v35;
  v36 = v112;
  v35(v112, v116, v16);
  v93 = *(v17 + 80);
  v37 = (v93 + 56) & ~v93;
  v90 = v37;
  v38 = swift_allocObject();
  v39 = v122;
  *(v38 + 2) = v121;
  *(v38 + 3) = v39;
  v41 = v119;
  v40 = v120;
  *(v38 + 4) = v119;
  *(v38 + 5) = v40;
  *(v38 + 6) = v123;
  v42 = *(v17 + 32);
  v91 = v17 + 32;
  v92 = v42;
  v43 = v42(&v38[v37], v36, v16);
  MEMORY[0x1EEE9AC00](v43);
  *(&v89 - 4) = v97;
  *(&v89 - 3) = v33;
  v44 = v96;
  sub_1C1265480();

  v46 = MEMORY[0x1C68EF360](v45, 0.5, 0.85, 0.0);
  v89 = &v89;
  MEMORY[0x1EEE9AC00](v46);
  v47 = v122;
  *(&v89 - 6) = v121;
  *(&v89 - 5) = v47;
  *(&v89 - 4) = v41;
  *(&v89 - 3) = v40;
  v48 = v116;
  v87 = v123;
  v88 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91288, &qword_1C12A8508);
  v97 = MEMORY[0x1E697D680];
  sub_1C10239B0(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
  sub_1C102384C(&qword_1EBE91290, &qword_1EBE91288, &qword_1C12A8508, sub_1C1023368);
  v49 = v99;
  sub_1C1265030();

  (*(v98 + 8))(v44, v49);
  v50 = v112;
  v51 = v48;
  v52 = v16;
  v95(v112, v51, v16);
  v53 = v90;
  v54 = swift_allocObject();
  v56 = v121;
  v55 = v122;
  *(v54 + 2) = v121;
  *(v54 + 3) = v55;
  v58 = v119;
  v57 = v120;
  *(v54 + 4) = v119;
  *(v54 + 5) = v57;
  *(v54 + 6) = v123;
  v59 = v92(&v54[v53], v50, v52);
  MEMORY[0x1EEE9AC00](v59);
  *(&v89 - 6) = v56;
  *(&v89 - 5) = v55;
  *(&v89 - 4) = v58;
  *(&v89 - 3) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912B8, &qword_1C12A8528);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912C0, &qword_1C12A8530);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912C8, &qword_1C12A8538);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90680, &qword_1C12A8540);
  v63 = sub_1C1263930();
  v64 = sub_1C10239B0(&qword_1EDE7B7F8, &qword_1EBE90680, &qword_1C12A8540, MEMORY[0x1E697D658]);
  v65 = sub_1C1023734(&qword_1EBE912D0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v124 = v62;
  v125 = v63;
  v126 = v64;
  v127 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = sub_1C102377C();
  v124 = v60;
  v125 = v61;
  v126 = OpaqueTypeConformance2;
  v127 = v67;
  swift_getOpaqueTypeConformance2();
  v68 = v105;
  v69 = sub_1C1265480();
  v70 = MEMORY[0x1C68EF360](v69, 0.5, 0.85, 0.0);
  MEMORY[0x1EEE9AC00](v70);
  v71 = v122;
  *(&v89 - 6) = v121;
  *(&v89 - 5) = v71;
  v72 = v120;
  *(&v89 - 4) = v119;
  *(&v89 - 3) = v72;
  v87 = v123;
  v88 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912F0, &qword_1C12A8550);
  sub_1C10239B0(&qword_1EBE912F8, &qword_1EBE91270, &qword_1C12A84E8, v97);
  sub_1C102384C(&qword_1EBE91300, &qword_1EBE912F0, &qword_1C12A8550, sub_1C10238F8);
  v73 = v114;
  v74 = v107;
  sub_1C1265030();

  (*(v106 + 8))(v68, v74);
  v75 = v103;
  v122 = *(v103 + 16);
  v76 = v104;
  v122(v118, v117, v104);
  v77 = v108;
  v121 = *(v108 + 16);
  v78 = v109;
  v121(v115, v73, v109);
  v79 = v110;
  v80 = v101;
  v81 = v100;
  *v110 = v101;
  v79[1] = v81;
  LODWORD(v123) = v102 & 1;
  *(v79 + 16) = v102 & 1;
  v79[3] = v113;
  v79[4] = 0;
  *(v79 + 40) = 1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91328, &qword_1C12A8568);
  v122(v79 + *(v82 + 64), v118, v76);
  v83 = v79 + *(v82 + 80);
  v84 = v115;
  v121(v83, v115, v78);
  sub_1C0FDB850(v80, v81, v123);
  v85 = *(v77 + 8);

  v85(v114, v78);
  v86 = *(v75 + 8);
  v86(v117, v76);
  v85(v84, v78);
  v86(v118, v76);
  sub_1C0FDB8E8(v80, v81, v123);
}

uint64_t sub_1C101778C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912A0, &qword_1C12A8510);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27[-1] - v16;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v18 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, v27);
  v19 = sub_1C1017950(v18);
  if (v19)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912B0, &unk_1C12A8518);
  (*(*(v21 - 8) + 16))(v17, a1, v21);
  *&v17[*(v15 + 44)] = v20;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = (v19 & 1) == 0;
  sub_1C0FE4040(v17, a7, &qword_1EBE912A0, &qword_1C12A8510);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91288, &qword_1C12A8508);
  v25 = (a7 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = sub_1C1023A9C;
  v25[2] = v23;
  return result;
}

uint64_t sub_1C1017950(uint64_t *a1)
{
  v1 = a1;
  sub_1C1018960(a1);
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, v1[2], v1[3], v1[4]);
  sub_1C12661A0();
  swift_getWitnessTable();
  LOBYTE(v1) = sub_1C1266000();

  return v1 & 1;
}

double sub_1C1017B14(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  sub_1C1265430();

  return result;
}

uint64_t sub_1C1017BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v29 = a5;
  v28 = a2;
  v27 = a1;
  v36 = a7;
  v32 = sub_1C1263930();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90680, &qword_1C12A8540);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912C0, &qword_1C12A8530);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v27 - v17;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  type metadata accessor for PhotosSearchRecentSuggestionsView(0, &v49);
  sub_1C1015AFC();
  v45 = sub_1C12639A0();
  v46 = v19;
  v47 = v20 & 1;
  v48 = v21;
  v43 = 0x2E6E6F7276656863;
  v44 = 0xEF64726177726F66;
  sub_1C1265380();

  sub_1C1263920();
  v22 = sub_1C10239B0(&qword_1EDE7B7F8, &qword_1EBE90680, &qword_1C12A8540, MEMORY[0x1E697D658]);
  v23 = sub_1C1023734(&qword_1EBE912D0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v24 = v32;
  sub_1C12649A0();
  (*(v33 + 8))(v13, v24);
  (*(v31 + 8))(v16, v14);
  MEMORY[0x1C68EF360](0.5, 0.85, 0.0);
  v37 = v28;
  v38 = a3;
  v39 = a4;
  v40 = v29;
  v41 = v30;
  v42 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912C8, &qword_1C12A8538);
  v49 = v14;
  v50 = v24;
  v51 = v22;
  v52 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1C102377C();
  v25 = v34;
  sub_1C1265030();

  return (*(v35 + 8))(v18, v25);
}

uint64_t sub_1C10180A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  type metadata accessor for PhotosSearchRecentSuggestionsView(0, v17);
  if (sub_1C1015AFC())
  {
    v9 = 1.57079633;
  }

  else
  {
    v9 = 0.0;
  }

  sub_1C1265B90();
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912E8, &qword_1C12A8548);
  (*(*(v14 - 8) + 16))(a7, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912C8, &qword_1C12A8538);
  v16 = a7 + *(result + 36);
  *v16 = v9;
  *(v16 + 8) = v11;
  *(v16 + 16) = v13;
  return result;
}

uint64_t sub_1C1018190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91310, &qword_1C12A8558);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27[-1] - v16;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v18 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, v27);
  v19 = sub_1C1018344(v18);
  if (v19)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91320, &qword_1C12A8560);
  (*(*(v21 - 8) + 16))(v17, a1, v21);
  *&v17[*(v15 + 44)] = v20;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = !v19;
  sub_1C0FAD604(v17, a7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912F0, &qword_1C12A8550);
  v25 = (a7 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = sub_1C1023A9C;
  v25[2] = v23;
  return result;
}

BOOL sub_1C1018344(uint64_t *a1)
{
  sub_1C1018960(a1);
  type metadata accessor for PhotosSearchRecentSuggestionItem(0, a1[2], a1[3], a1[4]);
  v2 = sub_1C1266170();

  return sub_1C1014CE8(a1) < v2;
}

uint64_t sub_1C10183AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a6;
  v63 = a7;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  v74 = a6;
  v12 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, &v72);
  v55 = *(v12 - 1);
  v57 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &KeyPath - v13;
  v53 = a3;
  v14 = type metadata accessor for PhotosSearchRecentSuggestionItem(255, a2, a3, a4);
  v15 = sub_1C1266800();
  v16 = sub_1C12654A0();
  v17 = sub_1C12632E0();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v56 = v16;
  *&v72 = v16;
  *(&v72 + 1) = v17;
  v54 = v17;
  v52 = WitnessTable;
  *&v73 = WitnessTable;
  *(&v73 + 1) = v19;
  v47 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = swift_getWitnessTable();
  v22 = a5;
  v71 = a5;
  v23 = swift_getWitnessTable();
  v61 = v15;
  *&v72 = v15;
  *(&v72 + 1) = v14;
  v50 = OpaqueTypeMetadata2;
  *&v73 = OpaqueTypeMetadata2;
  *(&v73 + 1) = v21;
  v48 = v21;
  v46 = v23;
  v74 = v23;
  v51 = sub_1C12656A0();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &KeyPath - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v45 = &KeyPath - v26;
  *&v69 = sub_1C1018960(v12);
  v27 = sub_1C1015AFC();
  v59 = a1;
  v60 = v12;
  if (v27)
  {
    sub_1C1018960(v12);
    sub_1C1266170();
  }

  else
  {
    sub_1C1014CE8(v12);
  }

  sub_1C12661A0();
  swift_getWitnessTable();
  v28 = sub_1C1266360();
  v69 = v72;
  v70 = v73;
  MEMORY[0x1EEE9AC00](v28);
  v29 = v53;
  *(&KeyPath - 6) = a2;
  *(&KeyPath - 5) = v29;
  *(&KeyPath - 4) = a4;
  *(&KeyPath - 3) = v22;
  v30 = v62;
  v42 = v62;
  KeyPath = swift_getKeyPath();
  v31 = v55;
  v32 = v58;
  v33 = v60;
  (*(v55 + 16))(v58, v59, v60);
  v34 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = a2;
  *(v35 + 3) = v29;
  *(v35 + 4) = a4;
  *(v35 + 5) = v22;
  *(v35 + 6) = v30;
  (*(v31 + 32))(&v35[v34], v32, v33);
  v65 = v56;
  v66 = v54;
  v67 = v52;
  v68 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = OpaqueTypeConformance2;
  v37 = v44;
  sub_1C1265680();
  v64 = OpaqueTypeConformance2;
  v38 = v51;
  swift_getWitnessTable();
  v39 = v45;
  sub_1C0FDBA4C();
  v40 = *(v49 + 8);
  v40(v37, v38);
  sub_1C0FDBA4C();
  return (v40)(v39, v38);
}

uint64_t sub_1C1018960(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  swift_getKeyPath();
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, v1, v2, v3);
  sub_1C12661A0();

  swift_getWitnessTable();
  v4 = sub_1C1266A00();

  return v4;
}

uint64_t sub_1C1018A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v70 = a7;
  v76 = a6;
  v78 = a2;
  v82 = a8;
  v83 = a1;
  v13 = sub_1C12632E0();
  v67 = v13;
  v81 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v16 = a3;
  v75 = a4;
  v17 = a5;
  v72 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, v15, a4, a5);
  v18 = *(v72 - 8);
  v77 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v20 = &v58 - v19;
  v61 = &v58 - v19;
  v90 = v16;
  v91 = a4;
  v63 = v17;
  v92 = v17;
  v93 = a6;
  v94 = a7;
  v21 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, &v90);
  v59 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v58 - v24;
  v60 = &v58 - v24;
  v26 = v16;
  v27 = sub_1C12654A0();
  v79 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v69 = &v58 - v28;
  v30 = v29;
  v68 = v29;
  WitnessTable = swift_getWitnessTable();
  v66 = WitnessTable;
  v65 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v90 = v30;
  v91 = v13;
  v92 = WitnessTable;
  v93 = v65;
  v71 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v64 = &v58 - v35;
  v36 = v22;
  (*(v22 + 16))(v25, v78, v21, v34);
  v58 = v18;
  v37 = v20;
  v38 = v72;
  (*(v18 + 16))(v37, v83, v72);
  v39 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v40 = (v23 + *(v18 + 80) + v39) & ~*(v18 + 80);
  v41 = swift_allocObject();
  v42 = v26;
  v43 = v75;
  *(v41 + 2) = v26;
  *(v41 + 3) = v43;
  v44 = v63;
  v45 = v76;
  *(v41 + 4) = v63;
  *(v41 + 5) = v45;
  v46 = v70;
  *(v41 + 6) = v70;
  (*(v36 + 32))(&v41[v39], v60, v59);
  (*(v58 + 32))(&v41[v40], v61, v38);
  v84 = v42;
  v85 = v43;
  v86 = v44;
  v87 = v45;
  v88 = v46;
  v89 = v83;
  v47 = v69;
  sub_1C1265480();
  v48 = v80;
  sub_1C12632D0();
  v49 = v62;
  v50 = v68;
  v51 = v67;
  v52 = v66;
  v53 = v65;
  sub_1C12649F0();
  (*(v81 + 8))(v48, v51);
  (*(v79 + 8))(v47, v50);
  v90 = v50;
  v91 = v51;
  v92 = v52;
  v93 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v64;
  v55 = OpaqueTypeMetadata2;
  sub_1C0FDBA4C();
  v56 = *(v74 + 8);
  v56(v49, v55);
  sub_1C0FDBA4C();
  return (v56)(v54, v55);
}

uint64_t sub_1C10190D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  v7 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, a3, a4, a5);
  return v6(a2 + *(v7 + 48));
}

uint64_t sub_1C1019128(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v12 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, v9, v10, v11);
  v13 = _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(v12);
  v13();

  sub_1C0FDBA4C();
  v14 = *(v3 + 8);
  v14(v5, a2);
  sub_1C0FDBA4C();
  return (v14)(v8, a2);
}

uint64_t sub_1C1019274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 40);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  type metadata accessor for PhotosSearchRecentSuggestionsView(0, v9);
  v7 = sub_1C1015AFC();
  return v6(v7 & 1);
}

uint64_t sub_1C10192D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v1;
}

double sub_1C101932C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

void sub_1C1019388(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  if (*(v1 + 106) == 1)
  {
    *a1 = v9;
    *(a1 + 8) = v8;
    *(a1 + 16) = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
  }

  else
  {
    v17 = v5;
    HIDWORD(v16) = v13;

    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v15 = sub_1C1022584(v9, v8, v11, v10, v12, HIDWORD(v16), 0);
    (*(v4 + 8))(v7, v17, v15);
  }
}

uint64_t sub_1C1019514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 80), &v14 - v10, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C10196F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 84), &v15 - v10, &qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosSearchRecentSuggestionsView_deprecated.init(recentSuggestions:isLandscape:canShowClearButton:clearRecentSearchesHandler:selectionHandler:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a9 + 64) = swift_getKeyPath();
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  *(a9 + 103) = 0;
  v28[0] = a8;
  v28[1] = a10;
  v28[2] = a11;
  v28[3] = a12;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, v28);
  v17 = v16[19];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v18 = v16[20];
  *(a9 + v18) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v19 = v16[21];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  v28[0] = a1;
  swift_getKeyPath();
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, a8, a10, a11);
  sub_1C12661A0();
  swift_getWitnessTable();
  v20 = sub_1C1266A00();

  *a9 = v20;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  result = sub_1C1012790(0);
  *(a9 + 48) = result & 1;
  *(a9 + 56) = v22;
  return result;
}

void PhotosSearchRecentSuggestionsView_deprecated.body.getter()
{
  OUTLINED_FUNCTION_23();
  v54 = v0;
  v55 = v1;
  v3 = v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EF0, &qword_1C12A7FD0);
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v4 = *(v3 + 32);
  v56 = *(v3 + 16);
  v5 = v4;
  v53 = v4;
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, v56, *(&v56 + 1), v4);
  OUTLINED_FUNCTION_22();
  v6 = sub_1C1266800();
  v7 = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v65 = v9;
  v64 = v56;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(255, &v64);
  OUTLINED_FUNCTION_9_11();
  WitnessTable = swift_getWitnessTable();
  *&v64 = v10;
  *(&v64 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_14();
  v13 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v64 = v6;
  *(&v64 + 1) = AssociatedTypeWitness;
  *&v65 = OpaqueTypeMetadata2;
  *(&v65 + 1) = v13;
  v66 = AssociatedConformanceWitness;
  sub_1C12656A0();
  *&v64 = v10;
  *(&v64 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12656E0();
  OUTLINED_FUNCTION_32_0();
  sub_1C1266790();
  v15 = OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4(v15, v16, v17);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_6_1();
  sub_1C10239B0(v18, qword_1EBE90EF8, &qword_1C12AC0F0, v19);
  v20 = sub_1C1262E70();
  OUTLINED_FUNCTION_5_0();
  v61 = sub_1C10239B0(v21, qword_1EBE90EF8, &qword_1C12AC0F0, v22);
  v62 = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  v23 = swift_getWitnessTable();
  *&v64 = v20;
  *(&v64 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  *&v64 = v20;
  *(&v64 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_11_0();
  v24 = sub_1C1262940();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
  v26 = OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_20_1();
  v29 = sub_1C10239B0(v27, &qword_1EBE92FE0, &qword_1C12A7730, v28);
  *&v64 = v24;
  *(&v64 + 1) = v25;
  *&v65 = v26;
  *(&v65 + 1) = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  *&v64 = v24;
  *(&v64 + 1) = v25;
  *&v65 = v26;
  *(&v65 + 1) = v29;
  v31 = swift_getOpaqueTypeConformance2();
  *&v64 = v30;
  *(&v64 + 1) = AssociatedTypeWitness;
  *&v65 = v31;
  *(&v65 + 1) = AssociatedConformanceWitness;
  v32 = swift_getOpaqueTypeMetadata2();
  *&v64 = v30;
  *(&v64 + 1) = AssociatedTypeWitness;
  *&v65 = v31;
  *(&v65 + 1) = AssociatedConformanceWitness;
  v33 = OUTLINED_FUNCTION_35_0();
  *&v64 = v32;
  *(&v64 + 1) = v33;
  OUTLINED_FUNCTION_20_8();
  v34 = swift_getOpaqueTypeMetadata2();
  *&v64 = v32;
  *(&v64 + 1) = v33;
  v35 = OUTLINED_FUNCTION_35_0();
  *&v64 = v34;
  *(&v64 + 1) = v35;
  OUTLINED_FUNCTION_18_7();
  v36 = swift_getOpaqueTypeMetadata2();
  *&v64 = v34;
  *(&v64 + 1) = v35;
  v37 = OUTLINED_FUNCTION_35_0();
  *&v64 = v36;
  *(&v64 + 1) = v37;
  OUTLINED_FUNCTION_17_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_32_0();
  sub_1C1264360();
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  v38 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v38, v52, v39);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_0();
  v40 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_30();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v51 - v48;
  sub_1C1263AB0();
  v57 = v56;
  v58 = v53;
  v59 = v7;
  v60 = v54;
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v50 = *(v42 + 8);
  v50(v46, v40);
  sub_1C0FDBA4C();
  v50(v49, v40);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C101A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v192 = a1;
  v174 = a6;
  v173 = sub_1C1264160();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = a2;
  v201 = a3;
  v202 = a4;
  v203 = a5;
  v190 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, &v200);
  v170 = *(v190 - 8);
  v168 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v169 = &v134 - v11;
  v185 = sub_1C1263EB0();
  v188 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v135 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v136 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v187 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v134 - v19;
  v189 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v193 = a2;
  v195 = a4;
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, a2, a3, a4);
  v20 = sub_1C1266800();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v200 = a2;
  v201 = a3;
  v194 = a3;
  v202 = a4;
  v203 = a5;
  v196 = a5;
  v22 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(255, &v200);
  WitnessTable = swift_getWitnessTable();
  v200 = v22;
  v201 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = swift_getWitnessTable();
  v191 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v200 = v20;
  v201 = AssociatedTypeWitness;
  v202 = OpaqueTypeMetadata2;
  v203 = v25;
  v204 = AssociatedConformanceWitness;
  sub_1C12656A0();
  v200 = v22;
  v201 = WitnessTable;
  v199[6] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C12656E0();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDC8]);
  v27 = sub_1C1262E70();
  v28 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
  v29 = swift_getWitnessTable();
  v199[4] = v28;
  v199[5] = v29;
  v30 = swift_getWitnessTable();
  v200 = v27;
  v201 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v200 = v27;
  v201 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v181 = v31;
  v180 = OpaqueTypeConformance2;
  v33 = sub_1C1262940();
  v165 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v189 = &v134 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
  v36 = swift_getWitnessTable();
  v37 = sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
  v200 = v33;
  v201 = v35;
  v202 = v36;
  v203 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v166 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v163 = &v134 - v39;
  v200 = v33;
  v201 = v35;
  v154 = v36;
  v202 = v36;
  v203 = v37;
  v178 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v191;
  v200 = v38;
  v201 = v191;
  v202 = v40;
  v203 = AssociatedConformanceWitness;
  v42 = swift_getOpaqueTypeMetadata2();
  v162 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v160 = &v134 - v43;
  v182 = v38;
  v200 = v38;
  v201 = v41;
  v159 = v40;
  v202 = v40;
  v203 = AssociatedConformanceWitness;
  v167 = AssociatedConformanceWitness;
  v44 = swift_getOpaqueTypeConformance2();
  v200 = v42;
  v201 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v155 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v152 = &v134 - v46;
  v164 = v42;
  v200 = v42;
  v201 = v44;
  v153 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v200 = v45;
  v201 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v150 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v146 = &v134 - v49;
  v158 = v45;
  v200 = v45;
  v201 = v47;
  v148 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v151 = v48;
  v200 = v48;
  v201 = v50;
  v144 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v147 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v142 = &v134 - v52;
  sub_1C1264360();
  v149 = v51;
  v53 = sub_1C1263190();
  v156 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v161 = &v134 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v145 = &v134 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v157 = &v134 - v58;
  v59 = v35;
  MEMORY[0x1EEE9AC00](v60);
  v179 = &v134 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v134 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911F0, &qword_1C12A8420);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v134 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EF0, &qword_1C12A7FD0);
  MEMORY[0x1EEE9AC00](v68);
  v143 = &v134 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v134 - v71;
  *v67 = sub_1C12638A0();
  *(v67 + 1) = 0;
  v67[16] = 1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911F8, &qword_1C12A8428);
  sub_1C101B8A0(v192, v193, v194, v195, v196, &v67[*(v73 + 44)]);
  v74 = *MEMORY[0x1E697E728];
  v75 = sub_1C1263130();
  v76 = *(v75 - 8);
  v177 = *(v76 + 104);
  v176 = v76 + 104;
  v177(v64, v74, v75);
  v175 = sub_1C1023734(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C1265DE0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v140 = v33;
  v141 = v53;
  sub_1C10239B0(&qword_1EBE91200, &qword_1EBE911F0, &qword_1C12A8420, MEMORY[0x1E69817F8]);
  v139 = v59;
  sub_1C1264BC0();
  sub_1C0F9E27C(v64, &qword_1EBE92FE0);
  sub_1C0F9E27C(v67, &qword_1EBE911F0);
  v78 = sub_1C1265A50();
  v79 = v190;
  v80 = v192;
  v81 = sub_1C10192D4();
  v137 = v68;
  v82 = *(v68 + 36);
  v138 = v72;
  v83 = &v72[v82];
  *v83 = v78;
  v83[8] = v81 & 1;
  LOBYTE(v78) = sub_1C1264420();
  v84 = sub_1C1264430();
  sub_1C1264430();
  v85 = sub_1C1264430();
  if (v85 != v78)
  {
    v85 = sub_1C1264430();
    v84 = v85;
  }

  MEMORY[0x1EEE9AC00](v85);
  v86 = v194;
  *(&v134 - 6) = v193;
  *(&v134 - 5) = v86;
  v87 = v196;
  *(&v134 - 4) = v195;
  *(&v134 - 3) = v87;
  *(&v134 - 2) = v80;
  sub_1C106C824(v84, sub_1C102296C, (&v134 - 8), v181);
  v88 = v186;
  sub_1C1019514(v79, v186);
  v89 = v187;
  v90 = v185;
  (*(v188 + 104))(v187, *MEMORY[0x1E697FF38], v185);
  __swift_storeEnumTagSinglePayload(v89, 0, 1, v90);
  v91 = *(v183 + 48);
  v92 = v184;
  sub_1C0FE5654(v88, v184, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v89, v92 + v91, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v90) != 1)
  {
    v96 = v136;
    sub_1C0FE5654(v92, v136, &qword_1EBE902F0, &qword_1C12B38C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92 + v91, 1, v90);
    v94 = v140;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_12;
    }

    sub_1C0F9E27C(v187, &qword_1EBE902F0);
    sub_1C0F9E27C(v88, &qword_1EBE902F0);
    (*(v188 + 8))(v96, v90);
LABEL_9:
    sub_1C0F9E27C(v92, &qword_1EBE902E8);
    v92 = v182;
    v95 = v141;
    v91 = v179;
    while (1)
    {
      v177(v91, *MEMORY[0x1E697E6E0], v75);
      if (sub_1C1265DE0())
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_12:
      v98 = v188;
      v99 = v135;
      (*(v188 + 32))(v135, v92 + v91, v90);
      sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      LODWORD(v183) = sub_1C1265DE0();
      v100 = v92;
      v101 = v80;
      v102 = *(v98 + 8);
      v102(v99, v90);
      sub_1C0F9E27C(v187, &qword_1EBE902F0);
      sub_1C0F9E27C(v186, &qword_1EBE902F0);
      v102(v136, v90);
      v80 = v101;
      sub_1C0F9E27C(v100, &qword_1EBE902F0);
      v92 = v182;
      v95 = v141;
      v91 = v179;
      if (v183)
      {
        goto LABEL_13;
      }
    }
  }

  sub_1C0F9E27C(v89, &qword_1EBE902F0);
  sub_1C0F9E27C(v88, &qword_1EBE902F0);
  v93 = __swift_getEnumTagSinglePayload(v92 + v91, 1, v90);
  v94 = v140;
  if (v93 != 1)
  {
    goto LABEL_9;
  }

  sub_1C0F9E27C(v92, &qword_1EBE902F0);
  v92 = v182;
  v95 = v141;
  v91 = v179;
LABEL_13:
  v177(v91, *MEMORY[0x1E697E6E8], v75);
  result = sub_1C1265DE0();
  if (result)
  {
LABEL_14:
    v103 = v163;
    v104 = v189;
    sub_1C1264BC0();
    sub_1C0F9E27C(v91, &qword_1EBE92FE0);
    (*(v165 + 8))(v104, v94);
    swift_checkMetadataState();
    v105 = v170;
    v106 = v169;
    v107 = v95;
    v108 = v190;
    (*(v170 + 16))(v169, v80, v190);
    v109 = (*(v105 + 80) + 48) & ~*(v105 + 80);
    v110 = swift_allocObject();
    v111 = v194;
    *(v110 + 2) = v193;
    *(v110 + 3) = v111;
    v112 = v196;
    *(v110 + 4) = v195;
    *(v110 + 5) = v112;
    (*(v105 + 32))(&v110[v109], v106, v108);
    v113 = v160;
    sub_1C1264E40();

    (*(v166 + 8))(v103, v92);
    v114 = v171;
    sub_1C1264140();
    v115 = v164;
    sub_1C1005F50();
    v116 = v152;
    sub_1C1264C50();
    (*(v172 + 8))(v114, v173);
    (*(v162 + 8))(v113, v115);
    v117 = v146;
    v118 = v158;
    sub_1C1264CC0();
    (*(v155 + 8))(v116, v118);
    sub_1C101E478();
    v119 = v142;
    v120 = v151;
    v121 = v144;
    sub_1C1264B70();
    (*(v150 + 8))(v117, v120);
    v200 = v120;
    v201 = v121;
    v122 = swift_getOpaqueTypeConformance2();
    v123 = v145;
    v124 = v149;
    sub_1C1264DF0();
    (*(v147 + 8))(v119, v124);
    v125 = sub_1C1023734(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v199[2] = v122;
    v199[3] = v125;
    v126 = v107;
    v127 = swift_getWitnessTable();
    v128 = v157;
    sub_1C0FDBA4C();
    v129 = v156;
    v130 = *(v156 + 8);
    v130(v123, v107);
    v131 = v138;
    v132 = v143;
    sub_1C0FE5654(v138, v143, &qword_1EBE90EF0, &qword_1C12A7FD0);
    v200 = v132;
    v133 = v161;
    (*(v129 + 16))(v161, v128, v126);
    v201 = v133;
    v199[0] = v137;
    v199[1] = v126;
    v197 = sub_1C1022A1C();
    v198 = v127;
    sub_1C119EE80(&v200, 2, v199);
    v130(v128, v126);
    sub_1C0F9E27C(v131, &qword_1EBE90EF0);
    v130(v133, v126);
    return sub_1C0F9E27C(v132, &qword_1EBE90EF0);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1C101B8A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v69 = a6;
  v11 = sub_1C1264680();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  v89[0] = a2;
  v89[1] = a3;
  v75 = a3;
  v76 = a4;
  v89[2] = a4;
  v89[3] = a5;
  v77 = a5;
  v13 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, v89);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91230, &qword_1C12A8448);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v69 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91238, &qword_1C12A8450);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v69 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91240, &qword_1C12A8458);
  MEMORY[0x1EEE9AC00](v82);
  v88 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v69 - v23;
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDE7E630;
  LOWORD(v68) = 256;
  v67 = 0;
  v25 = sub_1C12648D0();
  v27 = v26;
  v29 = v28;
  sub_1C101BFF8();
  v71 = sub_1C1264870();
  v70 = v30;
  v72 = v31;
  v73 = v32;

  sub_1C0FDB8E8(v25, v27, v29 & 1);

  v33 = sub_1C12639A0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  (*(v14 + 16))(v16, a1, v13);
  v40 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v41 = swift_allocObject();
  v42 = v75;
  v43 = v76;
  *(v41 + 2) = v74;
  *(v41 + 3) = v42;
  v44 = v77;
  *(v41 + 4) = v43;
  *(v41 + 5) = v44;
  v45 = (*(v14 + 32))(&v41[v40], v16, v13);
  MEMORY[0x1EEE9AC00](v45);
  *(&v69 - 4) = v33;
  *(&v69 - 3) = v35;
  LOBYTE(v67) = v37 & 1;
  v68 = v39;
  v46 = v81;
  sub_1C1265480();

  sub_1C1264530();
  v48 = v86;
  v47 = v87;
  v49 = v84;
  (*(v86 + 104))(v84, *MEMORY[0x1E6980EA8], v87);
  v50 = sub_1C12646C0();

  (*(v48 + 8))(v49, v47);
  KeyPath = swift_getKeyPath();
  v52 = (v46 + *(v79 + 36));
  *v52 = KeyPath;
  v52[1] = v50;
  if (sub_1C10192D4())
  {
    v53 = 1.0;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = v83;
  sub_1C0FE4040(v46, v83, &qword_1EBE91230, &qword_1C12A8448);
  *(v54 + *(v78 + 36)) = v53;
  v55 = sub_1C10192D4();
  v56 = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = (v55 & 1) == 0;
  v58 = v54;
  v59 = v80;
  sub_1C0FE4040(v58, v80, &qword_1EBE91238, &qword_1C12A8450);
  v60 = (v59 + *(v82 + 36));
  *v60 = v56;
  v60[1] = sub_1C1023064;
  v60[2] = v57;
  v61 = v85;
  sub_1C0FE4040(v59, v85, &qword_1EBE91240, &qword_1C12A8458);
  v62 = v88;
  sub_1C0FE5654(v61, v88, &qword_1EBE91240, &qword_1C12A8458);
  v63 = v71;
  v64 = v69;
  v65 = v70;
  *v69 = v71;
  v64[1] = v65;
  LOBYTE(v57) = v72 & 1;
  *(v64 + 16) = v72 & 1;
  v64[3] = v73;
  v64[4] = 0;
  *(v64 + 40) = 1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91248, &qword_1C12A8490);
  sub_1C0FE5654(v62, v64 + *(v66 + 64), &qword_1EBE91240, &qword_1C12A8458);
  sub_1C0FDB850(v63, v65, v57);

  sub_1C0F9E27C(v61, &qword_1EBE91240);
  sub_1C0F9E27C(v62, &qword_1EBE91240);
  sub_1C0FDB8E8(v63, v65, v57);
}

uint64_t sub_1C101BFF8()
{
  v0 = sub_1C1264680();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12646F0();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  v4 = sub_1C12646C0();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1C101C104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a1;
  v52 = a6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v49 = a2;
  v50 = a4;
  v10 = a4;
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, a2, a3, a4);
  v11 = sub_1C1266800();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = a2;
  v63 = a3;
  v47 = a3;
  v48 = a5;
  v64 = v10;
  v65 = a5;
  v13 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(255, &v62);
  WitnessTable = swift_getWitnessTable();
  v62 = v13;
  v63 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v11;
  v63 = AssociatedTypeWitness;
  v64 = OpaqueTypeMetadata2;
  v65 = v16;
  v66 = AssociatedConformanceWitness;
  sub_1C12656A0();
  v62 = v13;
  v63 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C12656E0();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  v18 = sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDC8]);
  v42 = v18;
  v19 = sub_1C1262E70();
  v46 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v39 - v20;
  v21 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
  v41 = swift_getWitnessTable();
  v59 = v21;
  v60 = v41;
  v40 = swift_getWitnessTable();
  v62 = v19;
  v63 = v40;
  v43 = MEMORY[0x1E697D1A0];
  v22 = swift_getOpaqueTypeMetadata2();
  v44 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  v29 = v49;
  v28 = v50;
  v31 = v47;
  v30 = v48;
  v62 = v49;
  v63 = v47;
  v64 = v50;
  v65 = v48;
  v32 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, &v62);
  v33 = v51;
  v62 = sub_1C101C678(v32);
  v54 = v29;
  v55 = v31;
  v56 = v28;
  v57 = v30;
  v58 = v33;
  v34 = sub_1C1022650();
  v35 = v45;
  sub_1C121710C(sub_1C1022BCC, v53, MEMORY[0x1E6981D78], v42, v34, v41, v45);

  v36 = v40;
  OUTLINED_FUNCTION_15_6();
  sub_1C1264CD0();
  (*(v46 + 8))(v35, v19);
  v62 = v19;
  v63 = v36;
  swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C();
  v37 = *(v44 + 8);
  v37(v24, v22);
  sub_1C0FDBA4C();
  return (v37)(v27, v22);
}

uint64_t sub_1C101C678(uint64_t a1)
{
  if (sub_1C101E478())
  {
    v4 = sub_1C12659A0();
    v5 = v1;
    v6 = 0x4028000000000000;
    v7 = 0;
    v8 = 0x4038000000000000;
    LOBYTE(v9) = 0;
    sub_1C1022D58();
  }

  else
  {
    sub_1C1019388(&v4);
    if (v9 < 0)
    {
      v2 = 0x4024000000000000;
    }

    else
    {
      v2 = 0x4028000000000000;
    }

    v4 = sub_1C12638E0();
    v5 = v2;
    LOBYTE(v6) = 0;
    sub_1C1022918();
  }

  return sub_1C1265A70();
}

uint64_t sub_1C101C720@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v57 = a1;
  v63 = a6;
  v66 = a2;
  v69 = a4;
  v60 = type metadata accessor for PhotosSearchRecentSuggestionItem(255, a2, a3, a4);
  v10 = sub_1C1266800();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = a2;
  v80 = a3;
  v12 = a3;
  v81 = a4;
  v82 = a5;
  v68 = a5;
  v13 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(255, &v79);
  WitnessTable = swift_getWitnessTable();
  v79 = v13;
  v80 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = swift_getWitnessTable();
  v67 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = v10;
  v80 = AssociatedTypeWitness;
  v81 = OpaqueTypeMetadata2;
  v82 = v16;
  v83 = AssociatedConformanceWitness;
  v18 = sub_1C12656A0();
  v79 = v13;
  v80 = WitnessTable;
  v78[2] = swift_getOpaqueTypeConformance2();
  v19 = swift_getWitnessTable();
  v20 = sub_1C12656E0();
  v59 = sub_1C1266790();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v65 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v62 = v56 - v23;
  v24 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v56[0] = v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v56 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v56 - v31;
  v33 = v66;
  v70 = v66;
  v71 = v12;
  v34 = v68;
  v35 = v69;
  v72 = v69;
  v73 = v68;
  v36 = v57;
  v74 = v57;
  v56[2] = v18;
  v56[1] = v19;
  sub_1C12656D0();
  v37 = swift_getWitnessTable();
  v58 = v32;
  sub_1C0FDBA4C();
  v64 = v24;
  v40 = *(v24 + 8);
  v39 = v24 + 8;
  v38 = v40;
  v40(v29, v20);
  v41 = sub_1C1266170();
  v79 = v33;
  v80 = v67;
  v81 = v35;
  v82 = v34;
  v42 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, &v79);
  v43 = sub_1C101D290(v42);
  v44 = 1;
  if (v43 < v41)
  {
    MEMORY[0x1EEE9AC00](v43);
    v45 = v67;
    v56[-6] = v66;
    v56[-5] = v45;
    v46 = v68;
    v56[-4] = v69;
    v56[-3] = v46;
    v56[-2] = v36;
    v47 = v56[0];
    sub_1C12656D0();
    sub_1C0FDBA4C();
    v38(v47, v20);
    sub_1C0FDBA4C();
    v38(v29, v20);
    (*(v64 + 32))(v65, v47, v20);
    v44 = 0;
  }

  v68 = v38;
  v69 = v39;
  v48 = v65;
  __swift_storeEnumTagSinglePayload(v65, v44, 1, v20);
  v49 = v62;
  sub_1C1170030(v48, v62);
  v50 = v61;
  v51 = *(v61 + 8);
  v52 = v59;
  v51(v48, v59);
  v53 = v58;
  (*(v64 + 16))(v29, v58, v20);
  v79 = v29;
  (*(v50 + 16))(v48, v49, v52);
  v80 = v48;
  v78[0] = v20;
  v78[1] = v52;
  v75 = v37;
  v76 = v37;
  v77 = swift_getWitnessTable();
  sub_1C119EE80(&v79, 2, v78);
  v51(v49, v52);
  v54 = v68;
  v68(v53, v20);
  v51(v48, v52);
  return v54(v29, v20);
}

uint64_t sub_1C101CDB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a1;
  v52 = a6;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  *&v60 = a4;
  *(&v60 + 1) = a5;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, &v59);
  v11 = *(v10 - 8);
  v51 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v37 - v12;
  v13 = a2;
  v47 = a2;
  v48 = a4;
  v37 = type metadata accessor for PhotosSearchRecentSuggestionItem(255, a2, a3, a4);
  v14 = sub_1C1266800();
  v46 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v59 = v13;
  *(&v59 + 1) = a3;
  *&v60 = a4;
  *(&v60 + 1) = a5;
  v38 = a5;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(255, &v59);
  v41 = v16;
  WitnessTable = swift_getWitnessTable();
  *&v59 = v16;
  *(&v59 + 1) = WitnessTable;
  v39 = MEMORY[0x1E697D328];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = OpaqueTypeMetadata2;
  v18 = swift_getWitnessTable();
  v43 = v18;
  v45 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v59 = v14;
  *(&v59 + 1) = AssociatedTypeWitness;
  *&v60 = OpaqueTypeMetadata2;
  *(&v60 + 1) = v18;
  v61 = AssociatedConformanceWitness;
  v20 = sub_1C12656A0();
  v49 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v26 = v42;
  *&v57 = *v42;

  sub_1C101D290(v10);
  sub_1C12661A0();
  swift_getWitnessTable();
  sub_1C1266360();
  v57 = v59;
  v58 = v60;
  v27 = v11;
  v28 = *(v11 + 16);
  v29 = v50;
  v28(v50, v26, v10);
  v30 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = v48;
  *(v31 + 2) = v47;
  *(v31 + 3) = a3;
  v33 = v38;
  *(v31 + 4) = v32;
  *(v31 + 5) = v33;
  (*(v27 + 32))(&v31[v30], v29, v10);
  v55 = v41;
  v56 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v33;
  swift_getWitnessTable();
  sub_1C1265690();
  v53 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v35 = *(v49 + 8);
  v35(v22, v20);
  sub_1C0FDBA4C();
  return (v35)(v25, v20);
}

uint64_t sub_1C101D290(uint64_t a1)
{
  if ((sub_1C101E478() & 1) == 0)
  {
    return 0;
  }

  return sub_1C101DD1C(a1);
}

uint64_t sub_1C101D2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v50 = a3;
  v48 = *(a2 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v51 = *(v6 + 16);
  v42 = *(&v51 + 1);
  v43 = v51;
  v8 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, v51, *(&v51 + 1), v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v38 = *(a2 + 40);
  *&v12 = v7;
  v36 = v7;
  *(&v12 + 1) = v38;
  v52[1] = v12;
  v52[0] = v51;
  v13 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(0, v52);
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v37 = &v35 - v14;
  WitnessTable = swift_getWitnessTable();
  *&v52[0] = v13;
  *(&v52[0] + 1) = WitnessTable;
  v44 = MEMORY[0x1E697D328];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v40 = &v35 - v21;
  (*(v9 + 16))(v11, v39, v8, v20);
  v23 = *(v3 + 32);
  v22 = *(v3 + 40);
  v24 = v15;
  v25 = v38;
  sub_1C101E4B8(v11, v23, v22, v43, v42, v7, v38, v24);
  sub_1C0FCF1B4(v23, v22);
  LODWORD(v43) = sub_1C1264420();
  v42 = sub_1C12659B0();
  v26 = v48;
  v27 = v46;
  (*(v48 + 16))(v46, v3, a2);
  v28 = (*(v26 + 80) + 48) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  *(v29 + 32) = v36;
  *(v29 + 40) = v25;
  (*(v26 + 32))(v29 + v28, v27, a2);
  v30 = WitnessTable;
  v31 = v37;
  sub_1C1264DC0();

  (*(v47 + 8))(v31, v13);
  *&v52[0] = v13;
  *(&v52[0] + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v40;
  sub_1C0FDBA4C();
  v33 = *(v45 + 8);
  v33(v18, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  return (v33)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_1C101D768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  *&v59 = a4;
  *(&v59 + 1) = a5;
  v11 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, &v58);
  v48 = *(v11 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v35 - v12;
  v44 = a2;
  v13 = a4;
  v45 = a4;
  v35[2] = type metadata accessor for PhotosSearchRecentSuggestionItem(255, a2, a3, a4);
  v14 = sub_1C1266800();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = AssociatedTypeWitness;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  *&v59 = v13;
  *(&v59 + 1) = a5;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(255, &v58);
  v40 = v16;
  WitnessTable = swift_getWitnessTable();
  *&v58 = v16;
  *(&v58 + 1) = WitnessTable;
  v38 = MEMORY[0x1E697D328];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = OpaqueTypeMetadata2;
  v35[1] = v14;
  v18 = swift_getWitnessTable();
  v41 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v58 = v14;
  *(&v58 + 1) = AssociatedTypeWitness;
  *&v59 = OpaqueTypeMetadata2;
  *(&v59 + 1) = v18;
  v60 = AssociatedConformanceWitness;
  v20 = sub_1C12656A0();
  v46 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v36 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v37 = v35 - v23;
  v24 = *a1;
  v25 = sub_1C101D290(v11);
  v57 = v24;
  *&v58 = v25;
  sub_1C12661A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91218, &qword_1C12A8440);
  swift_getWitnessTable();
  sub_1C10239B0(&qword_1EBE91220, &qword_1EBE91218, &qword_1C12A8440, MEMORY[0x1E69E6D18]);
  sub_1C1265DB0();
  v53 = v55;
  v54 = v56;
  sub_1C101DD1C(v11);
  swift_getWitnessTable();
  sub_1C1266360();
  v55 = v58;
  v56 = v59;
  v27 = v47;
  v26 = v48;
  (*(v48 + 16))(v47, a1, v11);
  v28 = (*(v26 + 80) + 48) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v44;
  *(v29 + 3) = a3;
  *(v29 + 4) = v45;
  *(v29 + 5) = a5;
  (*(v26 + 32))(&v29[v28], v27, v11);
  *&v53 = v40;
  *(&v53 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = a5;
  swift_getWitnessTable();
  v31 = v36;
  sub_1C1265690();
  v51 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v32 = v37;
  sub_1C0FDBA4C();
  v33 = *(v46 + 8);
  v33(v31, v20);
  sub_1C0FDBA4C();
  return (v33)(v32, v20);
}

uint64_t sub_1C101DD1C(uint64_t a1)
{
  if (sub_1C101E478())
  {
    return 4;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void sub_1C101DD44()
{
  OUTLINED_FUNCTION_23();
  v24 = v1;
  v25 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v8;
  v27 = v9;
  v28 = v6;
  v29 = v4;
  v30 = v2;
  v31 = v1;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(255, &v28);
  OUTLINED_FUNCTION_9_11();
  WitnessTable = swift_getWitnessTable();
  v28 = v10;
  v29 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  v28 = v7;
  v29 = v5;
  v30 = v3;
  v31 = v24;
  v22 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, &v28);
  sub_1C101D2DC(v25, v22, v18);
  v28 = v10;
  v29 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C();
  v23 = *(v14 + 8);
  v23(v18, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  v23(v21, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C101DEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a2;
  v40 = a5;
  v39 = type metadata accessor for PhotosSearchRecentSuggestionItem(255, a3, a4, a5);
  v10 = sub_1C1266790();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v32 - v11;
  v41 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1C1266790();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v43[0] = a1;
  sub_1C12661A0();
  swift_getWitnessTable();
  sub_1C1266350();
  if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v33 = v17;
  v22 = (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
  v43[0] = *v42;
  MEMORY[0x1EEE9AC00](v22);
  v34 = a3;
  v35 = a4;
  *(&v32 - 6) = a3;
  *(&v32 - 5) = a4;
  v23 = v41;
  *(&v32 - 4) = v40;
  *(&v32 - 3) = v23;
  *(&v32 - 2) = v20;
  v24 = v39;
  sub_1C12661A0();

  swift_getWitnessTable();
  v25 = v38;
  sub_1C1265FF0();

  v26 = v20;
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    (*(v36 + 8))(v25, v37);
    v27 = 0;
  }

  else
  {
    v27 = *(v25 + *(v24 + 56));
    (*(*(v24 - 8) + 8))(v25, v24);
  }

  v28 = *(v42 + 9) & v27 & 1;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v40;
  v43[3] = v41;
  type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, v43);
  v29 = sub_1C10192D4();
  v31 = v33;
  if (v28 != (v29 & 1))
  {
    v30.n128_f64[0] = sub_1C101932C(v28);
  }

  return (*(v31 + 8))(v26, AssociatedTypeWitness, v30);
}

uint64_t sub_1C101E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  v14 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, a3, a4, a5);
  PhotosSearchRecentSuggestionItem<>.id.getter(v14, a6);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_1C1265DE0();
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return a5 & 1;
}

uint64_t sub_1C101E478()
{
  sub_1C1019388(v3);
  if ((v3[20] & 0x80000000) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 8) ^ 1;
  }

  return v1 & 1;
}

double sub_1C101E4B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, a4, a5, a6);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v17 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(0, v22);
  v18 = (a8 + v17[13]);
  *v18 = a2;
  v18[1] = a3;
  v19 = a8 + v17[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 39) = 0;
  v20 = v17[15];
  *(a8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  return result;
}

double sub_1C101E5E0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v8 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(0, v10);
  return a1 / sub_1C101E630(v8);
}

double sub_1C101E630(uint64_t a1)
{
  v64 = sub_1C1263EB0();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v21 = sub_1C1263130();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1019388(v67);
  v25 = v68;
  sub_1C10196F8(a1, v24);
  v26 = sub_1C1263120();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 0x80000000) == 0)
  {
    v27 = *(v1 + 8) == 0;
    if (v26)
    {
      result = 2.2;
      v29 = 3.5;
    }

    else
    {
      result = 4.2;
      v29 = 6.5;
    }

    goto LABEL_9;
  }

  v30 = a1;
  v31 = v17;
  v33 = v60;
  v32 = v61;
  v34 = v62;
  v35 = v63;
  v36 = v64;
  v37 = (v66 + 104);
  if ((v26 & 1) == 0)
  {
    sub_1C1019514(v30, v60);
    (*v37)(v32, *MEMORY[0x1E697FF40], v36);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v36);
    v41 = *(v65 + 48);
    v42 = v35;
    sub_1C0FE5654(v33, v35, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FE5654(v32, v35 + v41, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
    {
      sub_1C0F9E27C(v32, &qword_1EBE902F0);
      sub_1C0F9E27C(v33, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(v35 + v41, 1, v36) == 1)
      {
        sub_1C0F9E27C(v35, &qword_1EBE902F0);
        return 2.5;
      }
    }

    else
    {
      v45 = v35;
      v46 = v34;
      sub_1C0FE5654(v45, v34, &qword_1EBE902F0, &qword_1C12B38C0);
      if (__swift_getEnumTagSinglePayload(v42 + v41, 1, v36) != 1)
      {
        v52 = v32;
        v53 = v66;
        v54 = v58;
        (*(v66 + 32))(v58, v42 + v41, v36);
        sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v55 = sub_1C1265DE0();
        v56 = *(v53 + 8);
        v56(v54, v36);
        sub_1C0F9E27C(v52, &qword_1EBE902F0);
        sub_1C0F9E27C(v33, &qword_1EBE902F0);
        v56(v46, v36);
        sub_1C0F9E27C(v42, &qword_1EBE902F0);
        v27 = (v55 & 1) == 0;
        result = 4.5;
        v29 = 2.5;
        goto LABEL_9;
      }

      sub_1C0F9E27C(v32, &qword_1EBE902F0);
      sub_1C0F9E27C(v33, &qword_1EBE902F0);
      (*(v66 + 8))(v34, v36);
    }

    v44 = v42;
    goto LABEL_21;
  }

  sub_1C1019514(v30, v20);
  v38 = v31;
  (*v37)(v31, *MEMORY[0x1E697FF40], v36);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v36);
  v39 = *(v65 + 48);
  v40 = v59;
  sub_1C0FE5654(v20, v59, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v31, v40 + v39, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v40, 1, v36) == 1)
  {
    sub_1C0F9E27C(v31, &qword_1EBE902F0);
    sub_1C0F9E27C(v20, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v36) == 1)
    {
      sub_1C0F9E27C(v40, &qword_1EBE902F0);
      return 1.5;
    }

    goto LABEL_17;
  }

  v43 = v57;
  sub_1C0FE5654(v40, v57, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v36) == 1)
  {
    sub_1C0F9E27C(v31, &qword_1EBE902F0);
    sub_1C0F9E27C(v20, &qword_1EBE902F0);
    (*(v66 + 8))(v43, v36);
LABEL_17:
    v44 = v40;
LABEL_21:
    sub_1C0F9E27C(v44, &qword_1EBE902E8);
    return 4.5;
  }

  v47 = v66;
  v48 = v40 + v39;
  v49 = v58;
  (*(v66 + 32))(v58, v48, v36);
  sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v50 = sub_1C1265DE0();
  v51 = *(v47 + 8);
  v51(v49, v36);
  sub_1C0F9E27C(v38, &qword_1EBE902F0);
  sub_1C0F9E27C(v20, &qword_1EBE902F0);
  v51(v43, v36);
  sub_1C0F9E27C(v40, &qword_1EBE902F0);
  v27 = (v50 & 1) == 0;
  result = 4.5;
  v29 = 1.5;
LABEL_9:
  if (!v27)
  {
    return v29;
  }

  return result;
}

uint64_t sub_1C101EE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1C12632E0();
  v43 = v3;
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 8);
  v51.i64[0] = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v50 = *(a1 + 16);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190, &unk_1C12A8368);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198, &qword_1C12A8378);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDC8]);
  v9 = sub_1C1262E70();
  v10 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
  WitnessTable = swift_getWitnessTable();
  v64 = v10;
  v65 = WitnessTable;
  v48 = v9;
  v47 = swift_getWitnessTable();
  v12 = sub_1C12654A0();
  v49 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v39 - v13;
  v14 = swift_getWitnessTable();
  v42 = v14;
  v41 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v60 = v12;
  v61 = v3;
  v62 = v14;
  v63 = v41;
  v45 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v40 = &v39 - v20;
  v21 = v5;
  v22 = *(v5 + 16);
  v23 = v52;
  v22(v8, v52, a1, v19);
  v24 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v26 = a1;
  v27 = *(a1 + 40);
  v28 = v50;
  v29.i64[0] = v50;
  v51 = *(v26 + 24);
  v30 = *(v26 + 32);
  *(v25 + 16) = vzip1q_s64(v29, v51);
  *(v25 + 32) = v30;
  (*(v21 + 32))(v25 + v24, v8);
  v56 = v28;
  v57 = v51;
  v58 = v27;
  v59 = v23;
  v31 = v44;
  sub_1C1265480();
  v32 = v53;
  sub_1C12632D0();
  v33 = v43;
  v34 = v42;
  v35 = v41;
  sub_1C12649F0();
  (*(v54 + 8))(v32, v33);
  (*(v49 + 8))(v31, v12);
  v60 = v12;
  v61 = v33;
  v62 = v34;
  v63 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v40;
  sub_1C0FDBA4C();
  v37 = *(v46 + 8);
  v37(v17, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  return (v37)(v36, OpaqueTypeMetadata2);
}

uint64_t sub_1C101F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  result = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(0, v12);
  v10 = *(a1 + *(result + 52));
  if (v10)
  {
    v11 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, a2, a3, a4);
    return v10(a1 + *(v11 + 48));
  }

  return result;
}

uint64_t sub_1C101F5A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190, &unk_1C12A8368);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198, &qword_1C12A8378);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDC8]);
  v9 = sub_1C1262E70();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(0, v22);
  sub_1C101F888(v16, v12);
  v17 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
  WitnessTable = swift_getWitnessTable();
  v21[2] = v17;
  v21[3] = WitnessTable;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_1C0FDBA4C();
  return (v19)(v15, v9);
}

uint64_t sub_1C101F888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v4 = *(a1 + 16);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190, &unk_1C12A8368);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198, &qword_1C12A8378);
  swift_getTupleTypeMetadata2();
  v5 = sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDC8]);
  v6 = sub_1C1262E70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  v25 = sub_1C101FBB0(a1);
  v19 = v4;
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  v22 = v2;
  v13 = sub_1C1022650();
  WitnessTable = swift_getWitnessTable();
  sub_1C121710C(sub_1C1022638, v18, MEMORY[0x1E6981D78], v5, v13, WitnessTable, v9);

  v23 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
  v24 = WitnessTable;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_1C0FDBA4C();
  return (v15)(v12, v6);
}

uint64_t sub_1C101FBB0(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v41 - v13;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1 + *(a1 + 56);
  v21 = *v19;
  v20 = *(v19 + 8);
  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  v24 = *(v19 + 32);
  v25 = *(v19 + 40);
  if (*(v19 + 42) == 1)
  {
    v53 = *v19;
    v54 = v20;
    v55 = v23;
    v56 = v22;
    v57 = v24;
    v58 = v25;
  }

  else
  {
    v44 = *(v19 + 32);
    v45 = v16;
    v42 = v23;
    v43 = v22;

    sub_1C1266420();
    v26 = sub_1C1264410();
    v46 = v7;
    v27 = v26;
    sub_1C1262620();

    v7 = v46;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v28 = sub_1C1022584(v21, v20, v42, v43, v44, v25, 0);
    (*(v15 + 8))(v18, v45, v28);
    LOWORD(v25) = v58;
  }

  v30 = v51;
  v29 = v52;
  if ((v25 & 0x8000) == 0)
  {
    goto LABEL_11;
  }

  sub_1C0FD72CC(v52);
  v32 = v49;
  v31 = v50;
  (*(v49 + 104))(v30, *MEMORY[0x1E697FF38], v50);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
  v33 = *(v5 + 48);
  sub_1C0FE5654(v29, v7, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v30, &v7[v33], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
  {
    sub_1C0F9E27C(v30, &qword_1EBE902F0);
    sub_1C0F9E27C(v29, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v7[v33], 1, v50) == 1)
    {
      sub_1C0F9E27C(v7, &qword_1EBE902F0);
LABEL_14:
      v53 = sub_1C12638E0();
      v54 = 0;
      LOBYTE(v55) = 1;
      sub_1C1022918();
      return sub_1C1265A70();
    }

    goto LABEL_10;
  }

  v34 = v48;
  sub_1C0FE5654(v7, v48, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v7[v33], 1, v50) == 1)
  {
    sub_1C0F9E27C(v30, &qword_1EBE902F0);
    sub_1C0F9E27C(v29, &qword_1EBE902F0);
    (*(v32 + 8))(v34, v50);
LABEL_10:
    sub_1C0F9E27C(v7, &qword_1EBE902E8);
    goto LABEL_11;
  }

  v36 = &v7[v33];
  v37 = v47;
  v38 = v50;
  (*(v32 + 32))(v47, v36, v50);
  sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v39 = sub_1C1265DE0();
  v40 = *(v32 + 8);
  v40(v37, v38);
  sub_1C0F9E27C(v30, &qword_1EBE902F0);
  sub_1C0F9E27C(v29, &qword_1EBE902F0);
  v40(v34, v38);
  sub_1C0F9E27C(v7, &qword_1EBE902F0);
  if (v39)
  {
    goto LABEL_14;
  }

LABEL_11:
  v53 = sub_1C1263AB0();
  v54 = 0;
  LOBYTE(v55) = 1;
  sub_1C10228C4();
  return sub_1C1265A70();
}

uint64_t sub_1C1020180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a5;
  v78 = a4;
  v72 = a3;
  v79 = a1;
  v77 = a6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91198, &qword_1C12A8378);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = (&v63 - v10);
  v63 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1263190();
  v65 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190, &unk_1C12A8368);
  v17 = sub_1C1263190();
  v66 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v20 = sub_1C1263190();
  v70 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v69 = sub_1C1263190();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v63 - v25;
  v67 = a2;
  v26 = a3;
  v27 = v78;
  v28 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, a2, v26, v78);
  v29 = _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(v28);
  v29();

  sub_1C12649E0();
  (*(v63 + 8))(v13, a2);
  v83[8] = v27;
  v83[9] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1C1264470();
  sub_1C1264940();
  (*(v65 + 8))(v16, v14);
  v31 = sub_1C10239B0(&qword_1EDE7BA70, &qword_1EBE91190, &unk_1C12A8368, MEMORY[0x1E6980468]);
  v83[6] = WitnessTable;
  v83[7] = v31;
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_15_6();
  sub_1C1264AE0();
  (*(v66 + 8))(v19, v17);
  sub_1C1265160();
  sub_1C12651E0();

  v33 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v83[4] = v32;
  v83[5] = v33;
  v34 = swift_getWitnessTable();
  v35 = v64;
  sub_1C1264F10();

  (*(v70 + 8))(v22, v20);
  v83[2] = v34;
  v83[3] = MEMORY[0x1E697E280];
  v36 = v69;
  v70 = swift_getWitnessTable();
  v37 = v68;
  v38 = v35;
  sub_1C0FDBA4C();
  v39 = v71;
  v40 = *(v71 + 8);
  v40(v38, v36);
  v41 = sub_1C1263AB0();
  v42 = v73;
  *v73 = v41;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911A0, &qword_1C12A8380);
  sub_1C10209AC(v79, v42 + *(v43 + 44));
  LOBYTE(v34) = sub_1C12644C0();
  sub_1C12628A0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911A8, &qword_1C12A8388) + 36);
  *v52 = v34;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  LOBYTE(v34) = sub_1C12644A0();
  sub_1C12628A0();
  v53 = v75;
  v54 = v42 + *(v75 + 36);
  *v54 = v34;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  v59 = *(v39 + 16);
  v60 = v38;
  v59(v38, v37, v36);
  v83[0] = v38;
  v61 = v76;
  sub_1C0FE5654(v42, v76, &qword_1EBE91198, &qword_1C12A8378);
  v83[1] = v61;
  v82[0] = v36;
  v82[1] = v53;
  v80 = v70;
  v81 = sub_1C10226A4();
  sub_1C119EE80(v83, 2, v82);
  sub_1C0F9E27C(v42, &qword_1EBE91198);
  v40(v37, v36);
  sub_1C0F9E27C(v61, &qword_1EBE91198);
  return (v40)(v60, v36);
}

uint64_t sub_1C10209AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = sub_1C1264680();
  v3 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911D0, &qword_1C12A8398);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = a1[1];
  v66 = *a1;
  v67 = v12;
  v13 = sub_1C0FDB9AC();

  v59 = v13;
  v14 = sub_1C12648F0();
  v16 = v15;
  v66 = v14;
  v67 = v15;
  v18 = v17 & 1;
  v68 = v17 & 1;
  v69 = v19;
  v20 = a1[3];
  v58 = a1[2];
  sub_1C1265090();
  sub_1C0FDB8E8(v14, v16, v18);

  sub_1C1264510();
  v21 = *MEMORY[0x1E6980EA8];
  v22 = v65;
  v57 = *(v3 + 104);
  v57(v5, v21, v65);
  v23 = sub_1C12646C0();

  v24 = *(v3 + 8);
  v60 = v5;
  v61 = v3 + 8;
  v24(v5, v22);
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911D8, &unk_1C12A83D0) + 36)];
  *v27 = KeyPath;
  v27[1] = v23;
  v28 = *(v7 + 44);
  v62 = v11;
  v29 = &v11[v28];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v31 = *MEMORY[0x1E6980FA8];
  v32 = sub_1C1264830();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  if (v20)
  {
    v66 = v58;
    v67 = v20;

    v33 = sub_1C12648F0();
    v35 = v34;
    v37 = v36;
    sub_1C1264510();
    v38 = v60;
    v39 = v65;
    v57(v60, v21, v65);
    sub_1C12646C0();

    v25(v38, v39);
    v40 = sub_1C1264870();
    v42 = v41;
    LOBYTE(v39) = v43;

    sub_1C0FDB8E8(v33, v35, v37 & 1);

    v66 = sub_1C1265230();
    v44 = sub_1C1264850();
    v46 = v45;
    LOBYTE(v35) = v47;
    v49 = v48;
    sub_1C0FDB8E8(v40, v42, v39 & 1);

    v50 = v35 & 1;
    sub_1C0FDB850(v44, v46, v35 & 1);
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v50 = 0;
    v49 = 0;
  }

  v52 = v62;
  v51 = v63;
  sub_1C0FE5654(v62, v63, &qword_1EBE911D0, &qword_1C12A8398);
  v53 = v64;
  sub_1C0FE5654(v51, v64, &qword_1EBE911D0, &qword_1C12A8398);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911E0, &unk_1C12A8410) + 48));
  sub_1C0FDB860(v44, v46, v50, v49);
  sub_1C0FDB8A4(v44, v46, v50, v49);
  *v54 = v44;
  v54[1] = v46;
  v54[2] = v50;
  v54[3] = v49;
  sub_1C0F9E27C(v52, &qword_1EBE911D0);
  sub_1C0FDB8A4(v44, v46, v50, v49);
  return sub_1C0F9E27C(v51, &qword_1EBE911D0);
}

double sub_1C1020ED4@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.photosSearchStyle.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1C1020F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v1;
  v7 = v2;
  return EnvironmentValues.photosSearchStyle.setter(v5);
}

uint64_t sub_1C1020FE4(uint64_t a1)
{
  sub_1C1266E90();
  nullsub_1();
  return sub_1C1266EE0();
}

uint64_t sub_1C1021064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v8 = OUTLINED_FUNCTION_15(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C0FE5654(a1, &v12 - v9, &qword_1EBE902F0, &qword_1C12B38C0);
  return a5(v10);
}

void sub_1C102128C(uint64_t a1)
{
  sub_1C1021A78(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
      type metadata accessor for EquatableHashableIgnored(319, FunctionTypeMetadata0, v4, v5);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C1021378(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((result + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10214C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C10216B8(uint64_t *a1)
{
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, a1[2], a1[3], a1[4]);
  v1 = sub_1C12661A0();
  if (v2 <= 0x3F)
  {
    v1 = sub_1C1007F88();
    if (v3 <= 0x3F)
    {
      sub_1C1021A78(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1C1021A14(319, &qword_1EDE77560, &qword_1EBE902F0, &qword_1C12B38C0, MEMORY[0x1E697DCC0]);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_1C100D364(319);
          if (v9 > 0x3F)
          {
            return v8;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1C1021844(uint64_t *a1)
{
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, a1[2], a1[3], a1[4]);
  sub_1C12661A0();
  if (v1 <= 0x3F)
  {
    sub_1C1021A14(319, &qword_1EDE768F0, &qword_1EBE90BA0, qword_1C12A8220, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C1021A78(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1C1021A78(319, &unk_1EBE958D0, &type metadata for PhotosSearchStyle, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C1021A14(319, &qword_1EDE77560, &qword_1EBE902F0, &qword_1C12B38C0, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C100D364(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C1021A14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C1021A78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C1021AC8(uint64_t *a1)
{
  type metadata accessor for PhotosSearchRecentSuggestionItem(319, a1[2], a1[3], a1[4]);
  if (v1 <= 0x3F)
  {
    sub_1C1021A14(319, &qword_1EDE768F0, &qword_1EBE90BA0, qword_1C12A8220, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C1021A78(319, &unk_1EBE958D0, &type metadata for PhotosSearchStyle, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C1021A14(319, &qword_1EDE77560, &qword_1EBE902F0, &qword_1C12B38C0, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C1021C00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C1263EB0() - 8);
  v10 = *(v9 + 64);
  v11 = *(v6 + 80);
  if (!*(v9 + 84))
  {
    ++v10;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_27;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((((((*(v6 + 64) + ((v11 + 32) & ~v11) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 43) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v17 < 2)
    {
LABEL_27:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11, v7, v5);
      }

      else
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_19:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1C1021E84(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C1263EB0() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v14 + ((((((*(v8 + 64) + ((v13 + 32) & ~v13) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 43) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = v12 + v15 + 1;
  v17 = 8 * v16;
  if (a3 <= v10)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v10 + ~(-1 << v17)) >> v17) + 1;
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

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C10221A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C1022210(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C102234C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

double sub_1C1022584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C1022590()
{
  v0 = OUTLINED_FUNCTION_26_2();
  v2 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated(v0, v1);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_4();

  return sub_1C101F510(v3, v4, v5, v6, v7);
}

unint64_t sub_1C1022650()
{
  result = qword_1EDE7B798;
  if (!qword_1EDE7B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B798);
  }

  return result;
}

unint64_t sub_1C10226A4()
{
  result = qword_1EBE911B0;
  if (!qword_1EBE911B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198, &qword_1C12A8378);
    sub_1C1022730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE911B0);
  }

  return result;
}

unint64_t sub_1C1022730()
{
  result = qword_1EBE911B8;
  if (!qword_1EBE911B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE911A8, &qword_1C12A8388);
    sub_1C10239B0(&qword_1EBE911C0, &unk_1EBE911C8, &unk_1C12A8390, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE911B8);
  }

  return result;
}

uint64_t sub_1C102280C()
{
  sub_1C1264830();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_2();
  v2(v1);
  return sub_1C1263560();
}

unint64_t sub_1C10228C4()
{
  result = qword_1EBE911E8;
  if (!qword_1EBE911E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE911E8);
  }

  return result;
}

unint64_t sub_1C1022918()
{
  result = qword_1EDE7BFF0;
  if (!qword_1EDE7BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFF0);
  }

  return result;
}

uint64_t sub_1C1022984()
{
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_26_2();
  v4 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(v2, v3);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_4();

  return sub_1C101DEF0(v5, v6, v7, v8, v9, v1);
}

unint64_t sub_1C1022A1C()
{
  result = qword_1EBE91208;
  if (!qword_1EBE91208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EF0, &qword_1C12A7FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE911F0, &qword_1C12A8420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C10239B0(&qword_1EBE91200, &qword_1EBE911F0, &qword_1C12A8420, MEMORY[0x1E69817F8]);
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91208);
  }

  return result;
}

double sub_1C1022C30()
{
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_26_2();
  v4 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(v2, v3);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_4();

  return sub_1C101E5E0(v10, v5, v6, v7, v8, v9, v1);
}

void sub_1C1022CD8()
{
  OUTLINED_FUNCTION_43_1();
  v0 = OUTLINED_FUNCTION_26_2();
  v2 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(v0, v1);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_27_2();
  sub_1C101DD44();
}

unint64_t sub_1C1022D58()
{
  result = qword_1EBE91228;
  if (!qword_1EBE91228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91228);
  }

  return result;
}

uint64_t objectdestroy_66Tm()
{
  OUTLINED_FUNCTION_42_4();
  v2 = OUTLINED_FUNCTION_26_2();
  v4 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(v2, v3);
  OUTLINED_FUNCTION_30_0();
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  if (*(v6 + 16))
  {
  }

  if (*(v6 + 32))
  {
  }

  sub_1C1022584(*(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 106));
  v7 = v4[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C1263EB0();
    if (!OUTLINED_FUNCTION_47_1(v8))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v9 + 8))(v6 + v7, v1);
    }
  }

  else
  {
  }

  v10 = v4[20];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v6 + v10, 1, v11))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v4[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v14 + 8))(v6 + v13);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_36_2();
}

void sub_1C1022FE4()
{
  OUTLINED_FUNCTION_42_4();
  v1 = OUTLINED_FUNCTION_26_2();
  v3 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(v1, v2);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_33_2();
  v5 = *(v0 + v4 + 16);
  if (v5)
  {
    v5();
  }
}

unint64_t sub_1C102306C()
{
  result = qword_1EBE91268;
  if (!qword_1EBE91268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91268);
  }

  return result;
}

uint64_t sub_1C10230D8()
{
  OUTLINED_FUNCTION_43_1();
  v5 = *(v0 + 48);
  v15 = v1;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v6 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, &v15);
  OUTLINED_FUNCTION_15(v6);
  v7 = OUTLINED_FUNCTION_27_2();

  return sub_1C1018A5C(v7, v8, v9, v10, v11, v12, v5, v13);
}

uint64_t sub_1C1023174()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v13[0] = v0[2];
  v1 = v13[0];
  v13[1] = v2;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v5;
  v6 = *(type metadata accessor for PhotosSearchRecentSuggestionsView(0, v13) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = type metadata accessor for PhotosSearchRecentSuggestionItem(0, v1, v2, v3);
  OUTLINED_FUNCTION_15(v9);
  v11 = v0 + ((v8 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1C10190D8(v0 + v7, v11, v1, v2, v3);
}

uint64_t sub_1C10232DC()
{
  OUTLINED_FUNCTION_42_4();
  v1 = OUTLINED_FUNCTION_26_2();
  v3 = type metadata accessor for PhotosSearchRecentSuggestionsView(v1, v2);
  v4 = OUTLINED_FUNCTION_15(v3);
  return (*(v0 + ((*(v5 + 80) + 56) & ~*(v5 + 80)) + 24))(v4);
}

unint64_t sub_1C1023368()
{
  result = qword_1EBE91298;
  if (!qword_1EBE91298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912A0, &qword_1C12A8510);
    sub_1C10239B0(&qword_1EBE912A8, &qword_1EBE912B0, &unk_1C12A8518, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91298);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_42_4();
  v2 = OUTLINED_FUNCTION_26_2();
  v4 = type metadata accessor for PhotosSearchRecentSuggestionsView(v2, v3);
  OUTLINED_FUNCTION_30_0();
  v6 = v0 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  v7 = v4[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C1263EB0();
    if (!OUTLINED_FUNCTION_47_1(v8))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v9 + 8))(v6 + v7, v1);
    }
  }

  else
  {
  }

  v10 = v4[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v11 + 8))(v6 + v10);
  }

  else
  {
  }

  v12 = v4[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v6 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v14 + 8))(v6 + v12, v13);
    }
  }

  else
  {
  }

  return OUTLINED_FUNCTION_36_2();
}

uint64_t sub_1C1023658(uint64_t (*a1)(void))
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v9[0] = v1[2];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v6 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, v9);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_24_4();

  return a1();
}

uint64_t sub_1C1023734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C102377C()
{
  result = qword_1EBE912D8;
  if (!qword_1EBE912D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912C8, &qword_1C12A8538);
    sub_1C10239B0(&qword_1EBE912E0, &qword_1EBE912E8, &qword_1C12A8548, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE912D8);
  }

  return result;
}

uint64_t sub_1C102384C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_1C10239B0(&unk_1EDE7B8D0, &unk_1EBE91970, &unk_1C12A5EE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10238F8()
{
  result = qword_1EBE91308;
  if (!qword_1EBE91308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91310, &qword_1C12A8558);
    sub_1C10239B0(&qword_1EBE91318, &qword_1EBE91320, &qword_1C12A8560, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91308);
  }

  return result;
}

uint64_t sub_1C10239B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_deallocObject();
}

uint64_t PhotosInteractiveFloatingGlyphBadge.init(systemImageName:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t PhotosInteractiveFloatingGlyphBadge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_1C1263DA0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91330, &qword_1C12A8580);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v12 = *v1;
  v11 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = v14;
  v15[5] = v13;
  v18[4] = v12;
  v18[5] = v11;
  v18[6] = v14;
  v18[7] = v13;
  sub_1C1023D10();

  sub_1C1265480();
  v16 = &v10[*(v8 + 36)];
  *v16 = 0xC020000000000000;
  v16[8] = 0;
  sub_1C1263D90();
  sub_1C1023D64();
  sub_1C1023E48();
  sub_1C12649F0();
  (*(v4 + 8))(v7, v2);
  return sub_1C1023EA0(v10);
}

double sub_1C1023D04@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_1C1023D10()
{
  result = qword_1EBE91338;
  if (!qword_1EBE91338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91338);
  }

  return result;
}

unint64_t sub_1C1023D64()
{
  result = qword_1EBE91340;
  if (!qword_1EBE91340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91330, &qword_1C12A8580);
    sub_1C0FDB6D4(&qword_1EBE91348, &qword_1EBE91350, &qword_1C12A8588, MEMORY[0x1E697D680]);
    sub_1C0FDB6D4(&unk_1EDE7BB90, &qword_1EBE91358, &qword_1C12A8590, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91340);
  }

  return result;
}

unint64_t sub_1C1023E48()
{
  result = qword_1EBE91360;
  if (!qword_1EBE91360)
  {
    sub_1C1263DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91360);
  }

  return result;
}

uint64_t sub_1C1023EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91330, &qword_1C12A8580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosFloatingGlyphBadge.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1C12652F0();
  (*(v4 + 104))(v7, *MEMORY[0x1E69814C8], v2);
  v9 = sub_1C1265250();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91368, &qword_1C12A8598) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91370, &qword_1C12A85A0) + 28);
  sub_1C1263AF0();
  v12 = sub_1C1263B00();
  __swift_storeEnumTagSinglePayload(v10 + v11, 0, 1, v12);
  *v10 = swift_getKeyPath();
  *a1 = v8;
  a1[1] = v9;
  a1[2] = 0x4008000000000000;
  a1[3] = 0;
  a1[4] = 0;
  v13 = sub_1C1265130();
  v14 = sub_1C1265190();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91378, &qword_1C12A85D8);
  v16 = (a1 + *(result + 36));
  *v16 = v13;
  v16[1] = v14;
  return result;
}

uint64_t sub_1C10240B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913B8, &qword_1C12A8730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C1024394(a1, &v5 - v3);
  return sub_1C12636C0();
}

unint64_t sub_1C10241A0()
{
  result = qword_1EBE91380;
  if (!qword_1EBE91380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91378, &qword_1C12A85D8);
    sub_1C1024258();
    sub_1C0FDB6D4(&qword_1EBE913A8, &qword_1EBE913B0, &qword_1C12A8728, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91380);
  }

  return result;
}

unint64_t sub_1C1024258()
{
  result = qword_1EBE91388;
  if (!qword_1EBE91388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91368, &qword_1C12A8598);
    sub_1C1024310();
    sub_1C0FDB6D4(&qword_1EBE913A0, &qword_1EBE91370, &qword_1C12A85A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91388);
  }

  return result;
}

unint64_t sub_1C1024310()
{
  result = qword_1EBE91390;
  if (!qword_1EBE91390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91398, &qword_1C12A8720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91390);
  }

  return result;
}

uint64_t sub_1C1024394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913B8, &qword_1C12A8730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PhotosBasicAsyncImage.init(provider:configuration:imageTargetSize:placeholderBackgroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a5;
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0, &qword_1C12A8750);
  OUTLINED_FUNCTION_15(v14);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = *a6;
  v39 = a6[1];
  v40 = v18;
  v38 = *(a6 + 16);
  v20 = type metadata accessor for PhotosBasicAsyncImage(0, a7, a8, v19);
  v21 = v20[12];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v20[13];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a9 + v20[14];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 20) = 0;
  *(v23 + 16) = 0;
  v24 = a9 + v20[15];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  v25 = v20[16];
  sub_1C10246F8(sub_1C1024F88, 0);
  v26 = *(a7 - 8);
  (*(v26 + 16))(a9, a1, a7);
  v27 = v20[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = a9 + v27;
  v31 = v41;
  (*(v29 + 16))(v30, v41, AssociatedTypeWitness);
  v32 = a9 + v20[10];
  v33 = v43;
  *v32 = v42;
  *(v32 + 8) = v33;
  *(v32 + 16) = v44 & 1;
  v34 = a9 + v20[11];
  v35 = v39;
  *v34 = v40;
  *(v34 + 8) = v35;
  *(v34 + 16) = v38;
  type metadata accessor for PhotosBasicAsyncImageState(0);
  sub_1C12628D0();
  (*(v29 + 8))(v31, AssociatedTypeWitness);
  (*(v26 + 8))(a1, a7);
  return sub_1C102500C(v17, a9 + v25);
}

uint64_t sub_1C10246F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for PhotosBasicAsyncImageState(0);

  return sub_1C12628D0();
}

uint64_t sub_1C102477C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosBasicAsyncImageState(0);
  v2 = swift_allocObject();
  result = sub_1C1026180(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1C10247BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C102EFA0(v2 + *(a1 + 48), &v15 - v10, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_1C10249C0(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 52));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C1008DBC(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C1024B18(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16) | (*(v7 + 20) << 32);
  if (*(v7 + 21) != 1)
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v12 = sub_1C1025D74(v8, v9, v10, 0);
    (*(v4 + 8))(v6, v3, v12);
    return v14[1];
  }

  return v8;
}

uint64_t sub_1C1024CAC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10B94F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5 & 1;
  return result;
}

void sub_1C1024D2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 60);
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  v15 = *(v10 + 32);
  if (*(v10 + 33) == 1)
  {
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15 & 1;
  }

  else
  {
    v19 = v7;

    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v17 = sub_1C1025D80(v12, v11, v14, v13, v15, 0);
    (*(v6 + 8))(v9, v19, v17);
  }
}

double sub_1C1024EB8@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.photosFolderCornerRadius.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C1024EFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return EnvironmentValues.photosFolderCornerRadius.setter(v4);
}

uint64_t sub_1C1024F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0, &qword_1C12A8750);
  sub_1C12628E0();
  return v1;
}

uint64_t sub_1C1024F88()
{
  type metadata accessor for PhotosBasicAsyncImageState(0);
  v0 = swift_allocObject();
  return sub_1C1026180(v0);
}

uint64_t type metadata accessor for PhotosBasicAsyncImageState(uint64_t a1)
{
  result = qword_1EDE81068;
  if (!qword_1EDE81068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C102500C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0, &qword_1C12A8750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C102507C(uint64_t a1)
{
  v3 = sub_1C12629F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 44));
  v8 = *(v7 + 16);
  v10 = *v7;
  v11 = v8;
  sub_1C10247BC(a1, v6);
  sub_1C0FF5AB8();
  (*(v4 + 8))(v6, v3);
  return sub_1C1265210();
}

uint64_t PhotosBasicAsyncImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v113 = a2;
  v5 = *(a1 + 24);
  v117 = *(a1 + 16);
  v121 = v5;
  v102 = type metadata accessor for PhotosBasicAsyncImageLayer(255, v117, v5, a3);
  sub_1C1262C70();
  OUTLINED_FUNCTION_0();
  v103 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1(&v94[-v8]);
  v101 = v9;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v105 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_1(&v94[-v12]);
  v106 = v13;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v109 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_1(&v94[-v16]);
  v110 = v17;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v111 = v19;
  v112 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v94[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v94[-v22];
  v115 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v97 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v94[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_11_1(&v94[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v118 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_15(v33);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v94[-v35];
  WitnessTable = swift_getWitnessTable();
  v38 = v3;
  View.photosTrace.getter();
  v39 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v36, 1, v39) == 1)
  {
    sub_1C0FFC7B0(v36, &qword_1EBE919B0, &qword_1C12A8810);
    v40 = *(v26 + 16);
    v41 = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v119 = *(v26 + 16);
    v120 = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v119(v32, v3, a1);
    sub_1C1262640();
    v42 = sub_1C1262670();
    v43 = sub_1C1266520();
    v44 = v42;
    if (sub_1C1266730())
    {
      v45 = swift_slowAlloc();
      v95 = v43;
      v46 = v45;
      v96 = swift_slowAlloc();
      v122[0] = v96;
      *v46 = 136446210;
      v47 = View.photosChangedProperties.getter(a1, WitnessTable);
      v49 = v48;
      v50 = OUTLINED_FUNCTION_7_12();
      v51(v50);
      v52 = sub_1C0FA0E80(v47, v49, v122);

      *(v46 + 4) = v52;
      v53 = v116;
      v54 = sub_1C1262630();
      v55 = v44;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v44, v95, v54, "PhotosBasicAsyncImage", "PhotosBasicAsyncImage %{public}s", v46, 0xCu);
      v56 = v96;
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      MEMORY[0x1C68F1630](v56, -1, -1);
      MEMORY[0x1C68F1630](v46, -1, -1);

      OUTLINED_FUNCTION_8_11();
      v57(v53, v115);
    }

    else
    {

      OUTLINED_FUNCTION_8_11();
      v58(v116, v115);
      v59 = OUTLINED_FUNCTION_7_12();
      v60(v59);
    }

    (*(*(v39 - 8) + 8))(v36, v39);
    v40 = v119;
    v41 = v120;
  }

  v114 = v38;
  v119 = v40;
  v120 = v41;
  v40(v98, v38, a1);
  v116 = *(v26 + 80);
  v61 = swift_allocObject();
  v62 = v117;
  v63 = v121;
  *(v61 + 16) = v117;
  *(v61 + 24) = v63;
  v115 = *(v26 + 32);
  v64 = OUTLINED_FUNCTION_3_16(v61);
  v65(v64);
  v66 = v100;
  sub_1C1262C60();
  OUTLINED_FUNCTION_2_14();
  v97 = v26 + 32;
  v67 = v101;
  v68 = swift_getWitnessTable();
  v69 = v99;
  sub_1C1264E50();
  OUTLINED_FUNCTION_8_11();
  v70(v66, v67);
  v71 = OUTLINED_FUNCTION_9_12();
  v72(v71);
  v73 = OUTLINED_FUNCTION_10_11(&unk_1F4070888);
  v74 = v121;
  *(v73 + 16) = v62;
  *(v73 + 24) = v74;
  v75 = OUTLINED_FUNCTION_3_16(v73);
  v115(v75);
  v76 = sub_1C1025E04();
  v122[5] = v68;
  v122[6] = v76;
  v77 = v106;
  v78 = swift_getWitnessTable();
  v79 = v104;
  sub_1C1264FF0();

  OUTLINED_FUNCTION_8_11();
  v80(v69, v77);
  v81 = OUTLINED_FUNCTION_9_12();
  v82(v81);
  v83 = OUTLINED_FUNCTION_10_11(&unk_1F40708B0);
  v84 = v121;
  *(v83 + 16) = v117;
  *(v83 + 24) = v84;
  v85 = OUTLINED_FUNCTION_3_16(v83);
  v115(v85);
  v86 = MEMORY[0x1E69805D0];
  v122[3] = v78;
  v122[4] = MEMORY[0x1E69805D0];
  v87 = v110;
  v88 = swift_getWitnessTable();
  v89 = v107;
  sub_1C1264A60();

  (*(v109 + 8))(v79, v87);
  v122[1] = v88;
  v122[2] = v86;
  v90 = v112;
  swift_getWitnessTable();
  v91 = v108;
  sub_1C0FDBA4C();
  v92 = *(v111 + 8);
  v92(v89, v90);
  sub_1C0FDBA4C();
  return (v92)(v91, v90);
}

id sub_1C1025AC4(void *a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - v8;
  v10 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  v14 = type metadata accessor for PhotosBasicAsyncImage(0, v5, v4, v13);
  v15 = sub_1C1024B18(v14);
  sub_1C1027014(v15, v17, v16 | ((HIDWORD(v16) & 1) << 32));
  v18 = sub_1C1024F3C();
  v19 = sub_1C1026DC4(v18);
  (*(*(v5 - 8) + 16))(v12, a2, v5, v19);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v5);
  sub_1C1026F00(v12);
  (*(*(AssociatedTypeWitness - 8) + 16))(v9, a2 + *(v14 + 36), AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, AssociatedTypeWitness);
  sub_1C1027700(v9);
  v20 = sub_1C102507C(v14);
  sub_1C1027BE0(v20);
  sub_1C1027A1C(*(a2 + *(v14 + 40)), *(a2 + *(v14 + 40) + 8), *(a2 + *(v14 + 40) + 16));
  *&v21 = sub_1C10249C0(v14);
  sub_1C1027944(v21, 0);
  sub_1C1024D2C(v14, v27);
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if ((v28 & 1) == 0)
  {
    v25 = v27[3];
    v24 = v27[2];
    v23 = v27[1];
    v22 = v27[0];
  }

  CACornerRadiiMake(v27, v22, v23, v24, v25);
  return [a1 setCornerRadii_];
}

double sub_1C1025D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

double sub_1C1025D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

id sub_1C1025D8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PhotosBasicAsyncImage(0, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_15(v6);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C1025AC4(a1, v8);
}

unint64_t sub_1C1025E04()
{
  result = qword_1EDE7B8C0;
  if (!qword_1EDE7B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8C0);
  }

  return result;
}

double sub_1C1025E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  type metadata accessor for PhotosBasicAsyncImage(0, a2, a3, a4);
  sub_1C1024F3C();
  sub_1C102622C(v4);

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PhotosBasicAsyncImage(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  v8 = v6[9];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_2();
  (*(v9 + 8))(v7 + v8);
  v10 = v6[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_4_2();
    (*(v11 + 8))(v7 + v10);
  }

  else
  {
  }

  sub_1C1008DBC(*(v7 + v6[13]), *(v7 + v6[13] + 8));
  v12 = v7 + v6[14];
  sub_1C1025D74(*v12, *(v12 + 8), *(v12 + 16) | (*(v12 + 20) << 32), *(v12 + 21));
  v13 = v7 + v6[15];
  sub_1C1025D80(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 33));
  v14 = v7 + v6[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C8, &qword_1C12A8818);
  OUTLINED_FUNCTION_4_2();
  (*(v15 + 8))(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913D0, &unk_1C12A8820);

  return swift_deallocObject();
}

double sub_1C1026100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for PhotosBasicAsyncImage(0, v6, v7, a4);
  OUTLINED_FUNCTION_15(v8);
  return sub_1C1025E58(v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v6, v7, a1);
}

uint64_t sub_1C1026180(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1C1261F60();
  return v1;
}

uint64_t sub_1C10261B0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != (result & 1))
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = *(v1 + 32);

      v3(v2);

      return sub_1C0FCF004(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1C102622C(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_1C10261B0(v2);
}

uint64_t sub_1C102623C()
{
  sub_1C0FCF004(v0[3], v0[4]);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICoreP33_460C0208308CE916CBE04D8DC5A9DDC126PhotosBasicAsyncImageState___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

id sub_1C10262E0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60)) = 0;
  v4 = *((v3 & v2) + 0x50);
  __swift_storeEnumTagSinglePayload(v0 + *((*v1 & *v0) + 0x68), 1, 1, v4);
  v5 = v0 + *((*v1 & *v0) + 0x70);
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 4) = 0;
  v5[20] = 1;
  v6 = v0 + *((*v1 & *v0) + 0x78);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = *((*v1 & *v0) + 0x80);
  v8 = *((v3 & v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, AssociatedTypeWitness);
  v10 = v0 + *((*v1 & *v0) + 0x88);
  *v10 = 0;
  v10[8] = 1;
  v11 = v0 + *((*v1 & *v0) + 0x90);
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *(v0 + *((*v1 & *v0) + 0x98)) = 0;
  sub_1C1027ECC(v4, v8, v0 + *((*v1 & *v0) + 0xA0));
  v12 = v0 + *((*v1 & *v0) + 0xA8);
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  *(v0 + *((*v1 & *v0) + 0xB0)) = 0;
  v13 = v0 + *((*v1 & *v0) + 0xB8);
  *v13 = 0;
  v13[8] = 1;
  *(v0 + *((*v1 & *v0) + 0xC0)) = 0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PhotosBasicAsyncImageLayer(0, v4, v8, v14);
  return objc_msgSendSuper2(&v16, sel_init);
}

void *sub_1C10265BC(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) = 0;
  v6 = *((v5 & v4) + 0x50);
  __swift_storeEnumTagSinglePayload(v1 + *((*v3 & *v1) + 0x68), 1, 1, v6);
  v7 = v1 + *((*v3 & *v1) + 0x70);
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 4) = 0;
  v7[20] = 1;
  v8 = v1 + *((*v3 & *v1) + 0x78);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = *((*v3 & *v1) + 0x80);
  v10 = *((v5 & v4) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, AssociatedTypeWitness);
  v12 = v1 + *((*v3 & *v1) + 0x88);
  *v12 = 0;
  v12[8] = 1;
  v13 = v1 + *((*v3 & *v1) + 0x90);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *(v1 + *((*v3 & *v1) + 0x98)) = 0;
  sub_1C1027ECC(v6, v10, v1 + *((*v3 & *v1) + 0xA0));
  v14 = v1 + *((*v3 & *v1) + 0xA8);
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *(v1 + *((*v3 & *v1) + 0xB0)) = 0;
  v15 = v1 + *((*v3 & *v1) + 0xB8);
  *v15 = 0;
  v15[8] = 1;
  *(v1 + *((*v3 & *v1) + 0xC0)) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1C1266D40();
  v20.receiver = v1;
  v20.super_class = type metadata accessor for PhotosBasicAsyncImageLayer(0, v6, v10, v17);
  v18 = objc_msgSendSuper2(&v20, sel_initWithLayer_, v16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v18;
}

void *sub_1C10268B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  sub_1C12667F0();
  swift_unknownObjectRelease();
  return sub_1C10265BC(v4);
}

id sub_1C1026900(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) = 0;
  v6 = *((v5 & v4) + 0x50);
  __swift_storeEnumTagSinglePayload(v1 + *((*v3 & *v1) + 0x68), 1, 1, v6);
  v7 = v1 + *((*v3 & *v1) + 0x70);
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 4) = 0;
  v7[20] = 1;
  v8 = v1 + *((*v3 & *v1) + 0x78);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = *((*v3 & *v1) + 0x80);
  v10 = *((v5 & v4) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, AssociatedTypeWitness);
  v12 = v1 + *((*v3 & *v1) + 0x88);
  *v12 = 0;
  v12[8] = 1;
  v13 = v1 + *((*v3 & *v1) + 0x90);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *(v1 + *((*v3 & *v1) + 0x98)) = 0;
  sub_1C1027ECC(v6, v10, v1 + *((*v3 & *v1) + 0xA0));
  v14 = v1 + *((*v3 & *v1) + 0xA8);
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *(v1 + *((*v3 & *v1) + 0xB0)) = 0;
  v15 = v1 + *((*v3 & *v1) + 0xB8);
  *v15 = 0;
  v15[8] = 1;
  *(v1 + *((*v3 & *v1) + 0xC0)) = 0;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for PhotosBasicAsyncImageLayer(0, v6, v10, v16);
  v17 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v17)
  {
  }

  return v17;
}

double sub_1C1026C04(uint64_t a1)
{
  v2 = (*MEMORY[0x1E69E7D40] & *v1);
  v3 = *(v1 + v2[12]);
  if (!a1)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
LABEL_9:
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v2[10];
    v6[3] = v2[11];
    v6[4] = v5;
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    *(v3 + 24) = sub_1C102EF80;
    *(v3 + 32) = v6;

    sub_1C0FCF004(v7, v8);
  }

  return result;
}

void sub_1C1026D34(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      sub_1C1028310();
    }

    else
    {
      sub_1C102C7F0();
      *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xC0)) = 1;
    }
  }
}

double sub_1C1026DC4(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_1C1026C04(v3);

  return result;
}

uint64_t sub_1C1026E40@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1C1266790();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1C1026F00(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1C1266790();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C1027014(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  *v4 = result;
  *(v4 + 1) = a2;
  *(v4 + 4) = a3;
  v4[20] = BYTE4(a3) & 1;
  return result;
}

uint64_t sub_1C1027050(char *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v51 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v52 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v57 = &v46 - v8;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = *((v4 & v3) + 0x80);
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v17, &v2[v23], v7);
  if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v17, v7);
  }

  v48 = v9;
  v26 = v58;
  v47 = *(v58 + 32);
  v47(v22, v17, AssociatedTypeWitness);
  v27 = *(v26 + 16);
  v49 = v22;
  v27(v14, v22, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, AssociatedTypeWitness);
  v28 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = v57;
  v24(v57, v56, v7);
  v24((v30 + v29), v14, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness);
  v32 = v28;
  if (EnumTagSinglePayload == 1)
  {
    v33 = *(v48 + 8);
    v33(v14, v7);
    v34 = v57;
    if (__swift_getEnumTagSinglePayload(&v57[v29], 1, AssociatedTypeWitness) == 1)
    {
      v33(v34, v7);
      return (*(v58 + 8))(v49, AssociatedTypeWitness);
    }

    goto LABEL_8;
  }

  v56 = v14;
  v35 = v54;
  v36 = v57;
  v24(v54, v57, v7);
  v37 = __swift_getEnumTagSinglePayload(&v36[v29], 1, AssociatedTypeWitness);
  v38 = (v58 + 8);
  v34 = v36;
  if (v37 == 1)
  {
    (*(v48 + 8))(v56, v7);
    (*v38)(v35, AssociatedTypeWitness);
LABEL_8:
    (*(v53 + 8))(v34, v32);
    v39 = v58;
LABEL_9:
    v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0)] = 1;
    sub_1C1028310();
    return (*(v39 + 8))(v49, AssociatedTypeWitness);
  }

  v40 = &v36[v29];
  v41 = v50;
  v47(v50, v40, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v42 = sub_1C1265DE0();
  v43 = v34;
  v44 = *v38;
  (*v38)(v41, AssociatedTypeWitness);
  v45 = *(v48 + 8);
  v45(v56, v7);
  v44(v54, AssociatedTypeWitness);
  v45(v43, v7);
  v39 = v58;
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v44)(v49, AssociatedTypeWitness);
}

uint64_t sub_1C1027610@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1C1266790();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1C1027700(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *((v4 & v3) + 0x80);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v9], a1, v5);
  swift_endAccess();
  sub_1C1027050(v8);
  v10 = *(v6 + 8);
  v10(a1, v5);
  return (v10)(v8, v5);
}

void sub_1C10278C0(uint64_t result, char a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88));
  v4 = *(v3 + 8);
  if (a2)
  {
    if (v3[1])
    {
      return;
    }

    goto LABEL_3;
  }

  if (*v3 != *&result)
  {
    v4 = 1;
  }

  if (v4)
  {
LABEL_3:
    sub_1C1028554();
  }
}

void sub_1C1027944(uint64_t a1, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v4 = *v3;
  v5 = v3[8];
  *v3 = a1;
  v3[8] = a2 & 1;
  sub_1C10278C0(v4, v5);
}

void sub_1C102798C(uint64_t result, uint64_t a2, char a3)
{
  v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90));
  if (a3)
  {
    if (v4[2])
    {
      return;
    }

LABEL_9:
    sub_1C1028554();
    return;
  }

  if (v4[2])
  {
    goto LABEL_9;
  }

  if (*v4 != *&result || v4[1] != *&a2)
  {
    goto LABEL_9;
  }
}

void sub_1C1027A1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = v4[16];
  *v4 = a1;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  sub_1C102798C(v5, v6, v7);
}

void sub_1C1027A68(uint64_t a1)
{
  v2 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98));
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for CGColor(0);
      sub_1C102EF38(&qword_1EDE7B6E0, type metadata accessor for CGColor, &unk_1C12A24B4);
      v3 = v2;
      v4 = sub_1C1261FC0();

      if (v4)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  v5 = sub_1C10281A0();
  if (v5)
  {
  }

  else
  {

    sub_1C10288C4(0, v6, v7, v8);
  }
}

void *sub_1C1027B94()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98));
  v2 = v1;
  return v1;
}

void sub_1C1027BE0(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_1C1027A68(v4);
}

id sub_1C1027C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1265EA0();
  v3 = sub_1C0FD233C();

  return v3;
}

double sub_1C1027CAC(void *a1)
{
  v1 = a1;
  sub_1C1027D08(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

id sub_1C1027D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosBasicAsyncImageLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_bounds);
}

void sub_1C1027D78(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12 = a1;
  sub_1C1027DF0(a2, a3, a4, a5, v12, v9, v10, v11);
}

void sub_1C1027DF0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for PhotosBasicAsyncImageLayer(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  v15.receiver = v8;
  v15.super_class = v13;
  objc_msgSendSuper2(&v15, sel_bounds);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  if (!CGRectEqualToRect(v16, v17))
  {
    v14.receiver = v8;
    v14.super_class = v13;
    objc_msgSendSuper2(&v14, sel_setBounds_, a1, a2, a3, a4);
    sub_1C1028554();
  }
}

void sub_1C1027ECC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a3, 1, 1, AssociatedTypeWitness);
  v8 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, a1, a2, v7);
  v9 = v8[9];
  v10 = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a3 + v9, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(a3 + v8[10], 1, 1, a1);
  v11 = a3 + v8[11];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  v12 = a3 + v8[12];
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 2;
  *(a3 + v8[13]) = 0;
  v13 = (a3 + v8[14]);
  sub_1C1266560();
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v18 = a3 + v8[15];
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
}

uint64_t sub_1C1027FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  swift_beginAccess();
  v7 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

void sub_1C10280CC(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, uint64_t a6)
{
  v7 = (v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xA8));
  if ((v7[2] & 1) == 0)
  {
    v8 = *v7;
    v9 = v7[1];
    if ((a3 & 1) != 0 || (v8 == *&result ? (v10 = v9 == *&a2) : (v10 = 0), !v10))
    {
      sub_1C102BF30(v8, v9, result, a2, a3, a6);
    }
  }
}

void sub_1C1028154(uint64_t a1, uint64_t a2, char a3, __n128 a4, __n128 a5, uint64_t a6)
{
  v7 = v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xA8);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  *v7 = a1;
  *(v7 + 1) = a2;
  v7[16] = a3 & 1;
  sub_1C10280CC(v8, v9, v10, a4, a5, a6);
}

void *sub_1C10281A0()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0));
  v2 = v1;
  return v1;
}

uint64_t sub_1C1028250(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

void sub_1C1028310()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if (*(v0 + *((v3 & v2) + 0xC0)) == 1)
  {
    sub_1C1027610(v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
      v13 = sub_1C1028120();
      if ((v15 & 1) == 0)
      {
        *(v0 + *((*v1 & *v0) + 0xC0)) = 0;
        sub_1C1028EF4(v12, 0, *&v13, v14);
      }

      (*(v9 + 8))(v12, AssociatedTypeWitness);
    }
  }
}

void sub_1C1028554()
{
  v1 = sub_1C10279E8();
  if (v6)
  {
    sub_1C1027910();
    if (v7 & 1) != 0 || ([v0 bounds], (sub_1C12665E0()))
    {
      v1 = 0;
      v2 = 0;
      v8 = 1;
    }

    else
    {
      [v0 bounds];
      sub_1C12665D0();
      sub_1C12665C0();
      v8 = 0;
      v1 = v4.n128_u64[0];
      v2 = v5.n128_u64[0];
    }
  }

  else
  {
    v8 = 0;
  }

  sub_1C1028154(v1, v2, v8, v4, v5, v3);
}

void sub_1C1028620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = MEMORY[0x1E69E7D40];
  v7 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  sub_1C1027FF8(&v33 - v9);
  v11 = &v10[*(v7 + 48)];
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = v11[24];
  sub_1C102ECF4(*v11, v12, *(v11 + 2), v11[24]);
  (*(v8 + 8))(v10, v7);
  if (!v14)
  {
    v17 = sub_1C10281A0();
    if (v17)
    {
      v18 = v17;
      v19 = v13;

      if (v12 != 2 && (v12 & 1) == 0)
      {
        v20 = CACurrentMediaTime();
        v21 = COERCE_DOUBLE(sub_1C102821C());
        if (v22)
        {
          v21 = 1.79769313e308;
        }

        v16 = v20 - v21 > 0.25;
        goto LABEL_13;
      }
    }

    else
    {
      v23 = v13;
    }

    v16 = 0;
LABEL_13:
    v12 = v13;
    goto LABEL_14;
  }

  if (v14 == 1)
  {

    v15 = v12;
    v16 = 0;
  }

  else
  {
    v16 = 0;
    v12 = 0;
  }

LABEL_14:
  v24 = sub_1C10281A0();
  v25 = v24;
  if (v12)
  {
    if (v24)
    {
      sub_1C0FDE8F8(0, &qword_1EDE7B5F0, 0x1E69DCAB8);
      v26 = v12;
      v27 = sub_1C12666B0();

      if (v27)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v25 = v12;
    v26 = v12;
  }

  else
  {
    if (!v24)
    {
      return;
    }

    v26 = 0;
  }

LABEL_22:
  v28 = CACurrentMediaTime();
  v29 = (v5 + *((*v6 & *v5) + 0xB8));
  *v29 = v28;
  *(v29 + 8) = 0;
  v26 = v26;
  sub_1C10281EC(v12);
  sub_1C10288C4(v16, v30, v31, v32);
LABEL_23:
}

uint64_t sub_1C10288C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - v9;
  [objc_opt_self() activate];
  v11 = sub_1C10281A0();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 CGImage];

    v11 = 0;
    if (v13)
    {
      type metadata accessor for CGImage(0);
    }
  }

  else
  {
    v13 = 0;
  }

  v41[0] = v13;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = v11;
  if (a1)
  {
    sub_1C0FDE8F8(0, &unk_1EDE76A28, 0x1E6979318);
    v14 = sub_1C1028E84(0x73746E65746E6F63, 0xE800000000000000);
    [v14 setDuration_];
    v15 = [v5 contents];
    if (v15)
    {
      sub_1C12667F0();
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v15 = sub_1C1266D40();
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    [v14 setFromValue_];
    swift_unknownObjectRelease();
    sub_1C102EFA0(v41, v39, &qword_1EBE90620, &qword_1C12A8B00);
    v16 = v40;
    if (v40)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v39, v40);
      v18 = *(v16 - 8);
      v19 = MEMORY[0x1EEE9AC00](v17);
      v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = sub_1C1266D40();
      (*(v18 + 8))(v21, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    else
    {
      v22 = 0;
    }

    [v14 setToValue_];
    swift_unknownObjectRelease();
    [v14 setFillMode_];

    v23 = sub_1C1265E70();
    [v5 addAnimation:v14 forKey:v23];
  }

  sub_1C102EFA0(v41, v39, &qword_1EBE90620, &qword_1C12A8B00);
  v24 = v40;
  if (v40)
  {
    v25 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v26 = *(v24 - 8);
    v27 = MEMORY[0x1EEE9AC00](v25);
    v29 = v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = sub_1C1266D40();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {
    v30 = 0;
  }

  [v5 setContents_];
  swift_unknownObjectRelease();
  sub_1C1027FF8(v10);
  v31 = &v10[*(v7 + 56)];
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  (*(v8 + 8))(v10, v7);
  [v5 setContentsRect_];
  sub_1C102EFA0(v41, v39, &qword_1EBE90620, &qword_1C12A8B00);
  v36 = v40;
  sub_1C0FFC7B0(v39, &qword_1EBE90620, &qword_1C12A8B00);
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_1C1027B94();
  }

  [v5 setBackgroundColor_];

  [v5 setContentsGravity_];
  [v5 setMasksToBounds_];
  return sub_1C0FFC7B0(v41, &qword_1EBE90620, &qword_1C12A8B00);
}

id sub_1C1028E84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C1265E70();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

uint64_t sub_1C1028EF4(uint64_t a1, int a2, double a3, double a4)
{
  v5 = v4;
  v206 = a2;
  v211 = a1;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v198 = sub_1C1266790();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v195 = &v172 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v203 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v172 - v12;
  v13 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v191 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v210 = &v172 - v14;
  v205 = v8;
  v204 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, v9, v8, v15);
  v207 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v180 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v183 = &v172 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v185 = &v172 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v201 = &v172 - v22;
  v212 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v190 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v208 = &v172 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v209 = &v172 - v28;
  v29 = sub_1C1266790();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v192 = &v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v172 - v33;
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v199 = &v172 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v181 = &v172 - v39;
  v193 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v172 - v42;
  sub_1C1026E40(v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v9) == 1)
  {
    return (*(v30 + 8))(v34, v29);
  }

  v178 = v30;
  v187 = v29;
  v179 = v35;
  v45 = *(v35 + 32);
  v200 = v43;
  v177 = v35 + 32;
  v176 = v45;
  v45(v43, v34, v9);
  v182 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = *(AssociatedConformanceWitness + 16);
  v48 = v211;
  v172 = AssociatedConformanceWitness;
  v186 = v47(v11);
  v188 = v49;
  v50 = *(v203 + 16);
  v51 = v13;
  v52 = v209;
  v175 = v203 + 16;
  v174 = v50;
  v50(v209, v48, v11);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v11);
  v53 = v201;
  v189 = v5;
  sub_1C1027FF8(v201);
  v54 = v204;
  v55 = *(v212 + 16);
  v56 = v53 + *(v204 + 36);
  v194 = v11;
  v57 = v208;
  v55(v208, v56, v51);
  v58 = v207 + 8;
  v173 = *(v207 + 8);
  v173(v53, v54);
  v59 = TupleTypeMetadata2;
  v60 = *(TupleTypeMetadata2 + 48);
  v61 = v210;
  v55(v210, v52, v51);
  v201 = v60;
  v55((v61 + v60), v57, v51);
  v62 = v194;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v194);
  v64 = v51;
  v65 = v212;
  v66 = v58;
  v67 = v59;
  if (EnumTagSinglePayload != 1)
  {
    v71 = v190;
    v72 = v210;
    v55(v190, v210, v64);
    v73 = v201;
    v74 = v62;
    if (__swift_getEnumTagSinglePayload(&v72[v201], 1, v62) == 1)
    {
      v68 = *(v65 + 8);
      v68(v208, v64);
      v68(v209, v64);
      (*(v203 + 8))(v71, v62);
      v75 = v206;
      v76 = v189;
      v77 = v187;
      v70 = v210;
      v54 = v204;
      goto LABEL_9;
    }

    v207 = v58;
    v78 = v203;
    v79 = v210;
    v80 = v184;
    (*(v203 + 32))(v184, &v210[v73], v74);
    v81 = sub_1C1265DE0();
    v82 = *(v78 + 8);
    v82(v80, v74);
    v68 = *(v65 + 8);
    v68(v208, v64);
    v68(v209, v64);
    v82(v71, v74);
    v68(v79, v64);
    v75 = v206;
    v76 = v189;
    v77 = v187;
    v54 = v204;
    if ((v81 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v83 = v185;
    sub_1C1027FF8(v185);
    v84 = v83 + v54[11];
    v85 = *v84;
    v86 = *(v84 + 8);
    v87 = *(v84 + 16);
    v88 = v173;
    v173(v83, v54);
    if (v87)
    {
      goto LABEL_16;
    }

    v89 = v85 == a3 && v86 == a4;
    if (!v89)
    {
      goto LABEL_16;
    }

    v121 = v183;
    sub_1C1027FF8(v183);
    v122 = sub_1C102A460(v54);
    v88(v121, v54);
    if (v122)
    {
      v123 = v182;
      if (qword_1EDE81FC8 != -1)
      {
        swift_once();
      }

      v124 = sub_1C1262720();
      __swift_project_value_buffer(v124, qword_1EDE9B6D8);
      v125 = v188;

      v126 = sub_1C12626F0();
      v127 = sub_1C1266400();

      v128 = os_log_type_enabled(v126, v127);
      v129 = v200;
      if (v128)
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v214 = v131;
        *v130 = 136315394;
        v132 = sub_1C0FA0E80(v186, v125, &v214);

        *(v130 + 4) = v132;
        *(v130 + 12) = 2080;
        v133 = sub_1C12665A0();
        v135 = sub_1C0FA0E80(v133, v134, &v214);

        *(v130 + 14) = v135;
        v136 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Active Request";
LABEL_33:
        _os_log_impl(&dword_1C0F96000, v126, v127, v136, v130, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C68F1630](v131, -1, -1);
        MEMORY[0x1C68F1630](v130, -1, -1);

        return (*(v179 + 8))(v129, v123);
      }

      goto LABEL_34;
    }

    sub_1C1027FF8(v121);
    v137 = sub_1C102A4CC(v54);
    v88(v121, v54);
    if (v137)
    {
      v123 = v182;
      if (qword_1EDE81FC8 != -1)
      {
        swift_once();
      }

      v138 = sub_1C1262720();
      __swift_project_value_buffer(v138, qword_1EDE9B6D8);
      v139 = v188;

      v126 = sub_1C12626F0();
      v127 = sub_1C1266400();

      v140 = os_log_type_enabled(v126, v127);
      v129 = v200;
      if (v140)
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v214 = v131;
        *v130 = 136315394;
        v141 = sub_1C0FA0E80(v186, v139, &v214);

        *(v130 + 4) = v141;
        *(v130 + 12) = 2080;
        v142 = sub_1C12665A0();
        v144 = sub_1C0FA0E80(v142, v143, &v214);

        *(v130 + 14) = v144;
        v136 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Existing Full Quality Image";
        goto LABEL_33;
      }

LABEL_34:

      return (*(v179 + 8))(v129, v123);
    }

    v209 = v64;
    v210 = v68;
    v145 = v54;
    v146 = v88;
    v147 = v180;
    sub_1C1027FF8(v180);
    v148 = v147 + v145[12];
    v150 = *v148;
    v149 = *(v148 + 8);
    v151 = *(v148 + 16);
    v152 = *(v148 + 24);
    sub_1C102ECF4(*v148, v149, v151, *(v148 + 24));
    v146(v147, v145);
    v153 = v182;
    if (v152)
    {
      v154 = v181;
      if (v152 != 1 || (v155 = v149, sub_1C102ED80(v150, v149, v151, 1), v156 = v179, !v149))
      {
        v76 = v189;
        v64 = v209;
        v54 = v204;
LABEL_48:
        v68 = v210;
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C102ED80(v150, v149, v151, 0);
      v156 = v179;
      v154 = v181;
    }

    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v157 = sub_1C1262720();
    __swift_project_value_buffer(v157, qword_1EDE9B6D8);
    v158 = *(v156 + 16);
    v158(v154, v200, v153);
    v159 = v188;

    v160 = sub_1C12626F0();
    v161 = sub_1C12663F0();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v214 = v208;
      *v162 = 136315650;
      *(v162 + 4) = sub_1C0FA0E80(v186, v159, &v214);
      *(v162 + 12) = 2080;
      v163 = sub_1C12665A0();
      v165 = v154;
      v166 = sub_1C0FA0E80(v163, v164, &v214);

      *(v162 + 14) = v166;
      *(v162 + 22) = 2080;
      v158(v199, v165, v153);
      v167 = sub_1C1265ED0();
      v169 = v168;
      v75 = v206;
      (*(v179 + 8))(v165, v153);
      v170 = sub_1C0FA0E80(v167, v169, &v214);

      *(v162 + 24) = v170;
      _os_log_impl(&dword_1C0F96000, v160, v161, "PhotosAsyncImage reloading for configuration %s targetPixelSize %s from provider: %s.", v162, 0x20u);
      v171 = v208;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v171, -1, -1);
      MEMORY[0x1C68F1630](v162, -1, -1);
    }

    else
    {

      (*(v156 + 8))(v154, v153);
    }

    v76 = v189;
    v64 = v209;
    v54 = v204;
    v77 = v187;
    goto LABEL_48;
  }

  v68 = *(v212 + 8);
  v68(v208, v64);
  v68(v209, v64);
  v69 = v210;
  v89 = __swift_getEnumTagSinglePayload(&v210[v201], 1, v62) == 1;
  v70 = v69;
  if (v89)
  {
    v207 = v66;
    v68(v69, v64);
    v75 = v206;
    v76 = v189;
    v77 = v187;
    goto LABEL_11;
  }

  v75 = v206;
  v76 = v189;
  v77 = v187;
LABEL_9:
  (*(v191 + 8))(v70, v67);
LABEL_16:
  sub_1C102C7F0();
  if ((v75 & 1) == 0)
  {
    v90 = v76 + *((*MEMORY[0x1E69E7D40] & *v76) + 0xA0);
    swift_beginAccess();
    v91 = &v90[v54[15]];
    *v91 = 0;
    *(v91 + 1) = 0;
    v91[16] = 1;
  }

  v210 = v68;
  v92 = sub_1C1266400();
  if (qword_1EDE7C0B8 != -1)
  {
    swift_once();
  }

  v93 = v64;
  v94 = qword_1EDE7C0C0;
  v95 = os_log_type_enabled(qword_1EDE7C0C0, v92);
  v96 = v182;
  if (v95)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v213 = v98;
    *v97 = 136315394;
    *(v97 + 4) = sub_1C0FA0E80(v186, v188, &v213);
    *(v97 + 12) = 2080;
    v99 = sub_1C12665A0();
    v101 = sub_1C0FA0E80(v99, v100, &v213);
    v77 = v187;

    *(v97 + 14) = v101;
    _os_log_impl(&dword_1C0F96000, v94, v92, "PhotosAsyncImage loadConfiguration %s targetPixelSize %s", v97, 0x16u);
    swift_arrayDestroy();
    v102 = v98;
    v76 = v189;
    MEMORY[0x1C68F1630](v102, -1, -1);
    MEMORY[0x1C68F1630](v97, -1, -1);
  }

  v103 = v179;
  v209 = *(v179 + 16);
  v104 = v192;
  v105 = v200;
  (v209)(v192, v200, v96);
  __swift_storeEnumTagSinglePayload(v104, 0, 1, v96);
  v106 = v76 + *((*MEMORY[0x1E69E7D40] & *v76) + 0xA0);
  swift_beginAccess();
  (*(v178 + 40))(&v106[v54[10]], v104, v77);
  v107 = v96;
  v108 = v54[9];
  (v210)(&v106[v108], v93);
  v109 = v194;
  v174(&v106[v108], v211, v194);
  __swift_storeEnumTagSinglePayload(&v106[v108], 0, 1, v109);
  v110 = &v106[v54[11]];
  *v110 = a3;
  *(v110 + 1) = a4;
  v110[16] = 0;
  v106[v54[13]] = 0;
  swift_endAccess();
  v111 = v103;
  v112 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v113 = v199;
  (v209)(v199, v105, v107);
  v114 = (*(v103 + 80) + 64) & ~*(v103 + 80);
  v115 = swift_allocObject();
  v116 = v205;
  *(v115 + 16) = v107;
  *(v115 + 24) = v116;
  *(v115 + 32) = v112;
  *(v115 + 40) = v206 & 1;
  v117 = v188;
  *(v115 + 48) = v186;
  *(v115 + 56) = v117;
  v176(v115 + v114, v113, v107);
  v118 = *(v116 + 40);

  v119 = v195;
  v120 = v200;
  v118(v211, sub_1C102ECDC, v115, v107, v116, a3, a4);

  (*(v111 + 8))(v120, v107);

  __swift_storeEnumTagSinglePayload(v119, 0, 1, AssociatedTypeWitness);
  swift_beginAccess();
  (*(v197 + 40))(v106, v119, v198);
  return swift_endAccess();
}

uint64_t sub_1C102A460(int *a1)
{
  if (*(v1 + a1[11] + 16) & 1) != 0 || (*(v1 + a1[13]))
  {
    return 0;
  }

  v2 = v1 + a1[12];
  if (*(v2 + 24) == 1)
  {
    v3 = *v2;
    v4 = *v2;

    return 0;
  }

  return 1;
}

uint64_t sub_1C102A4CC(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  if (*(v2 + 24) || (v3 = *(v2 + 8), v3 == 2))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C102A4FC(unsigned __int8 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v23 = a3;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v13 + 16))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, a7);
    v18 = *(v13 + 80);
    v22 = a1;
    v19 = (v18 + 64) & ~v18;
    v20 = swift_allocObject();
    v21 = v24;
    *(v20 + 16) = a7;
    *(v20 + 24) = v21;
    *(v20 + 32) = v17;
    *(v20 + 40) = v23 & 1;
    *(v20 + 48) = a4;
    *(v20 + 56) = a5;
    (*(v13 + 32))(v20 + v19, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7);

    sub_1C102AFD4(v22, sub_1C102EED0, v20);
  }
}

void sub_1C102A6DC(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, NSObject *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v112 = a6;
  v109 = a4;
  v110 = a5;
  v114 = a3;
  v11 = *a1;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v111 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - v15;
  v20 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, v18, v19, v17);
  v113 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v104 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v106 = v12;
    v107 = v16;
    v28 = [objc_opt_self() isMainThread];
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v29 = sub_1C1262720();
    v108 = __swift_project_value_buffer(v29, qword_1EDE9B6D8);
    if ((v28 & 1) == 0)
    {
      v30 = sub_1C12626F0();
      v31 = sub_1C1266410();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *&v105 = v20;
        v33 = v32;
        v34 = swift_slowAlloc();
        *&v104 = v11;
        v35 = v34;
        v116[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_1C0FA0E80(0, 0xE000000000000000, v116);
        _os_log_impl(&dword_1C0F96000, v30, v31, "%s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        v36 = v35;
        v11 = v104;
        MEMORY[0x1C68F1630](v36, -1, -1);
        v37 = v33;
        v20 = v105;
        MEMORY[0x1C68F1630](v37, -1, -1);
      }
    }

    v38 = *a1;
    if ((*(a1 + 72) & 1) == 0)
    {
      v53 = *(a1 + 8);
      v52 = *(a1 + 16);
      v104 = *(a1 + 40);
      v105 = *(a1 + 24);
      v54 = *(a1 + 56);
      v55 = *(a1 + 64);
      if (v114)
      {
        sub_1C1027FF8(v25);
        v56 = &v25[v20[15]];
        v57 = *v56;
        v58 = *(v56 + 1);
        v59 = v56[16];
        v60 = (*(v113 + 8))(v25, v20);
        if ((v59 & 1) == 0)
        {
          if (MEMORY[0x1C68F0CB0](v60, v57, v58, v53, v52))
          {
            v61 = sub_1C1266400();
            if (qword_1EDE7C0B8 != -1)
            {
              swift_once();
            }

            v62 = qword_1EDE7C0C0;
            if (os_log_type_enabled(qword_1EDE7C0C0, v61))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v116[0] = v64;
              *v63 = 136315650;
              *(v63 + 4) = sub_1C0FA0E80(v109, v110, v116);
              *(v63 + 12) = 2080;
              v65 = sub_1C12665A0();
              v67 = sub_1C0FA0E80(v65, v66, v116);

              *(v63 + 14) = v67;
              *(v63 + 22) = 2080;
              v68 = sub_1C12665A0();
              v70 = sub_1C0FA0E80(v68, v69, v116);

              *(v63 + 24) = v70;
              _os_log_impl(&dword_1C0F96000, v62, v61, "PhotosAsyncImage is increase size ignore image with smaller size %s receivedSize %s imageSize %s", v63, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C68F1630](v64, -1, -1);
              MEMORY[0x1C68F1630](v63, -1, -1);
            }

            goto LABEL_37;
          }
        }
      }

      v71 = v27 + *((*MEMORY[0x1E69E7D40] & *v27) + 0xA0);
      swift_beginAccess();
      v72 = &v71[v20[15]];
      *v72 = v53;
      *(v72 + 1) = v52;
      v72[16] = 0;
      v73 = &v71[v20[14]];
      v74 = v104;
      *v73 = v105;
      *(v73 + 1) = v74;
      if (v54 == 2 && ((*(a8 + 56))(a7, a8) & 1) == 0)
      {
        *&v105 = v20;
        v76 = v106;
        v75 = v107;
        v113 = *(v106 + 16);
        (v113)(v107, v112, a7);
        v77 = sub_1C12626F0();
        v114 = sub_1C12663F0();
        if (os_log_type_enabled(v77, v114))
        {
          v78 = swift_slowAlloc();
          v109 = v78;
          v112 = swift_slowAlloc();
          v115 = v112;
          *v78 = 136315138;
          v110 = v77;
          v79 = v107;
          (v113)(v111, v107, a7);
          v80 = sub_1C1265ED0();
          v82 = v81;
          (*(v76 + 8))(v79, a7);
          v83 = sub_1C0FA0E80(v80, v82, &v115);

          v84 = v109;
          *(v109 + 1) = v83;
          v85 = v110;
          _os_log_impl(&dword_1C0F96000, v110, v114, "PhotosAsyncImage provider %s did not indicate whether the image is degraded. This may lead to unnecessary image reloading.", v84, 0xCu);
          v86 = v112;
          __swift_destroy_boxed_opaque_existential_0Tm(v112);
          MEMORY[0x1C68F1630](v86, -1, -1);
          MEMORY[0x1C68F1630](v84, -1, -1);
        }

        else
        {

          (*(v76 + 8))(v75, a7);
        }

        v20 = v105;
      }

      v98 = v38;

      if (!v55)
      {
        v55 = sub_1C1265CE0();
      }

      v99 = &v71[v20[12]];
      v94 = *v99;
      v95 = *(v99 + 1);
      v96 = *(v99 + 2);
      *v99 = v98;
      *(v99 + 1) = v54;
      *(v99 + 2) = v55;
      v97 = v99[24];
      v99[24] = 0;
LABEL_36:
      sub_1C102ED80(v94, v95, v96, v97);
      sub_1C1028620(v100, v101, v102, v103);
LABEL_37:

      return;
    }

    v116[0] = *a1;
    v39 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F8, &qword_1C12AB770);
    if ((swift_dynamicCast() & 1) != 0 && v115 != 1)
    {
      v40 = v11;
    }

    else
    {
      v116[0] = v38;
      v40 = v11;
      v41 = v11;
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1C1027FF8(v22);
        v42 = &v22[v20[12]];
        v43 = *v42;
        v44 = *(v42 + 1);
        v45 = *(v42 + 2);
        v46 = v20;
        v47 = v42[24];
        sub_1C102ECF4(*v42, v44, v45, v42[24]);
        v48 = v22;
        v49 = v46;
        (*(v113 + 8))(v48, v46);
        v50 = v43;
        if (!v47)
        {
LABEL_15:
          v51 = v50;
          sub_1C102ED80(v43, v44, v45, v47);
LABEL_30:
          v87 = v27 + *((*MEMORY[0x1E69E7D40] & *v27) + 0xA0);
          swift_beginAccess();
          v88 = &v87[v49[12]];
          v89 = *v88;
          v90 = *(v88 + 1);
          v91 = *(v88 + 2);
          *v88 = v38;
          *(v88 + 1) = v50;
          *(v88 + 2) = 0;
          v92 = v88[24];
          v88[24] = 1;
          v93 = v40;
          v94 = v89;
          v95 = v90;
          v96 = v91;
          v97 = v92;
          goto LABEL_36;
        }

        if (v47 == 1)
        {
          v50 = v44;
          goto LABEL_15;
        }

LABEL_29:
        v50 = 0;
        goto LABEL_30;
      }
    }

    v49 = v20;
    goto LABEL_29;
  }
}

void sub_1C102AFD4(unsigned __int8 *a1, void (*a2)(unsigned __int8 *), uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v49 = *a1;
  v48 = *(a1 + 8);
  v50 = v8;
  v52 = sub_1C1265C10();
  v9 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1265C30();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1026FC8();
  if ((v17 & 0x100000000) != 0)
  {
    a2(a1);
  }

  else
  {
    v18 = v17;
    v42 = v16;
    v43 = v15;
    v47 = a3;
    v19 = [objc_opt_self() isMainThread];
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v20 = sub_1C1262720();
    __swift_project_value_buffer(v20, qword_1EDE9B6D8);
    v46 = v9;
    v45 = v11;
    v44 = v12;
    if ((v19 & 1) == 0)
    {
      v21 = sub_1C12626F0();
      v22 = sub_1C1266410();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v53[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1C0FA0E80(0, 0xE000000000000000, v53);
        _os_log_impl(&dword_1C0F96000, v21, v22, "%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x1C68F1630](v24, -1, -1);
        MEMORY[0x1C68F1630](v23, -1, -1);
      }
    }

    if ((a1[72] & 1) != 0 || (v25 = a1[56], v25 == 2) || (v25 & 1) == 0)
    {
      [v4 bounds];
      v28 = v27;
      v30 = v29;
      v31 = COERCE_DOUBLE(sub_1C1027910());
      if (v32)
      {
        v33 = 2.0;
      }

      else
      {
        v33 = v31;
      }

      if (qword_1EDE78A60 != -1)
      {
        swift_once();
      }

      v49 = qword_1EDE78A68;
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v36 = v50;
      *(v35 + 16) = *(v50 + 80);
      *(v35 + 24) = *(v36 + 88);
      *(v35 + 32) = v34;
      memcpy((v35 + 40), a1, 0x49uLL);
      *(v35 + 120) = v28;
      *(v35 + 128) = v30;
      *(v35 + 136) = v33;
      v37 = v42;
      *(v35 + 144) = v43;
      *(v35 + 152) = v37;
      *(v35 + 160) = v18;
      v38 = v47;
      *(v35 + 168) = a2;
      *(v35 + 176) = v38;
      aBlock[4] = sub_1C102EB5C;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C0FD7FC4;
      aBlock[3] = &block_descriptor_2;
      v39 = _Block_copy(aBlock);
      sub_1C102EFA0(a1, v53, &qword_1EBE913E8, &qword_1C12A8AE8);

      sub_1C1265C20();
      v53[0] = MEMORY[0x1E69E7CC0];
      sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
      sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280);
      v40 = v51;
      v41 = v52;
      sub_1C1266870();
      MEMORY[0x1C68EFE10](0, v14, v40, v39);
      _Block_release(v39);
      (*(v46 + 8))(v40, v41);
      (*(v44 + 8))(v14, v45);
    }

    else
    {

      v26 = v49;
      a2(a1);
      sub_1C0FFC7B0(a1, &qword_1EBE913E8, &qword_1C12A8AE8);
    }
  }
}

void *sub_1C102B608(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v59 = a4;
  v11 = a3;
  v18 = sub_1C1265C10();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C1265C30();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v56 = a5;
    v57 = v23;
    v58 = v22;

    if (a2[9])
    {
      sub_1C0FDE8F8(0, &qword_1EDE83410, 0x1E69E9610);
      v27 = sub_1C12664C0();
      v28 = swift_allocObject();
      v29 = v56;
      v28[2] = v59;
      v28[3] = v29;
      memcpy(v28 + 4, a2, 0x49uLL);
      v65 = sub_1C102F054;
      v66 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = sub_1C0FD7FC4;
      v64 = &block_descriptor_56;
      v30 = _Block_copy(&aBlock);

      sub_1C102EFA0(a2, v60, &qword_1EBE913E8, &qword_1C12A8AE8);

      sub_1C1265C20();
      v60[0] = MEMORY[0x1E69E7CC0];
      sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
      sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280);
      sub_1C1266870();
      MEMORY[0x1C68EFE10](0, v25, v21, v30);
      _Block_release(v30);
    }

    else
    {
      v54 = v19;
      v31 = *a2;
      v55 = *(a2 + 3);
      v53 = *(a2 + 1);
      v32 = a2[5];
      v33 = a2[6];
      v34 = *(a2 + 56);
      v35 = a2[8];
      v36 = qword_1EDE79DC8;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1C10B9908(*&v55, *(&v55 + 1), *&v32, *&v33, a6, a7, a8, a9, v31, v11, a10);
      if (v37)
      {
        v38 = v37;
        sub_1C0FDE8F8(0, &qword_1EDE83410, 0x1E69E9610);
        v27 = sub_1C12664C0();
        v39 = swift_allocObject();
        v40 = v56;
        *(v39 + 16) = v59;
        *(v39 + 24) = v40;
        *(v39 + 32) = v38;
        *(v39 + 56) = v55;
        *(v39 + 40) = v53;
        *(v39 + 72) = v32;
        *(v39 + 80) = v33;
        *(v39 + 88) = v34;
        *(v39 + 96) = v35;
        v60[4] = sub_1C102EC1C;
        v60[5] = v39;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 1107296256;
        v60[2] = sub_1C0FD7FC4;
        v60[3] = &block_descriptor_68;
        v41 = _Block_copy(v60);

        v42 = v38;

        sub_1C1265C20();
        v60[0] = MEMORY[0x1E69E7CC0];
        sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
        sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280);
        sub_1C1266870();
        MEMORY[0x1C68EFE10](0, v25, v21, v41);
        _Block_release(v41);
      }

      else
      {

        if (qword_1EDE81FC8 != -1)
        {
          swift_once();
        }

        v43 = sub_1C1262720();
        __swift_project_value_buffer(v43, qword_1EDE9B6D8);
        v44 = v31;
        v45 = sub_1C12626F0();
        v46 = sub_1C1266410();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          *(v47 + 4) = v44;
          *v48 = v44;
          v49 = v44;
          _os_log_impl(&dword_1C0F96000, v45, v46, "Failed to apply legibility blur to image:%@", v47, 0xCu);
          sub_1C0FFC7B0(v48, &unk_1EBE97C20, &qword_1C12CB2B0);
          MEMORY[0x1C68F1630](v48, -1, -1);
          MEMORY[0x1C68F1630](v47, -1, -1);
        }

        sub_1C0FDE8F8(0, &qword_1EDE83410, 0x1E69E9610);
        v27 = sub_1C12664C0();
        v50 = swift_allocObject();
        v51 = v56;
        v50[2] = v59;
        v50[3] = v51;
        memcpy(v50 + 4, a2, 0x49uLL);
        v65 = sub_1C102EBEC;
        v66 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v62 = 1107296256;
        v63 = sub_1C0FD7FC4;
        v64 = &block_descriptor_62;
        v52 = _Block_copy(&aBlock);

        sub_1C102EFA0(a2, v60, &qword_1EBE913E8, &qword_1C12A8AE8);

        sub_1C1265C20();
        v60[0] = MEMORY[0x1E69E7CC0];
        sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
        sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280);
        sub_1C1266870();
        MEMORY[0x1C68EFE10](0, v25, v21, v52);
        _Block_release(v52);
      }

      v19 = v54;
    }

    (*(v19 + 8))(v21, v18);
    return (*(v57 + 8))(v25, v58);
  }

  return result;
}

void sub_1C102BF30(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x50);
  v10 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, v9, *((*MEMORY[0x1E69E7D40] & *v6) + 0x58), a6);
  v11 = *(v10 - 8);
  v88 = v10;
  v89 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v81 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v81 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v87 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_1C1266790();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v81 - v27;
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  sub_1C1027610(v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, AssociatedTypeWitness) == 1)
  {
    (*(v26 + 8))(v28, v25);
    return;
  }

  (*(v29 + 32))(v32, v28, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v87 = v34;
  sub_1C1027FF8(v23);
  v35 = v88;
  v36 = v29;
  v37 = v32;
  v38 = *(v89 + 8);
  if (v23[v88[15] + 16])
  {
    v39 = v38(v23, v88);
    v40.n128_u64[0] = 0;
    v41.n128_u64[0] = 0;
  }

  else
  {
    v38(v23, v88);
    v39 = sub_1C12665D0();
    v40.n128_u64[0] = v42;
    v41.n128_u64[0] = v43;
  }

  v44 = v6;
  if (MEMORY[0x1C68F0CB0](v39, a1, a2, v40, v41))
  {
    v45 = v86;
    sub_1C1027FF8(v86);
    v46 = sub_1C102A460(v35);
    v38(v45, v35);
    if ((v46 & 1) == 0 || ((v47 = v83, sub_1C1027FF8(v83), (*(v47 + v35[11] + 16) & 1) == 0) ? (v38(v47, v35), v48 = sub_1C12665D0(), v49.n128_u64[0] = v64, v50.n128_u64[0] = v65) : (v48 = v38(v47, v35), v49.n128_u64[0] = 0, v50.n128_u64[0] = 0), MEMORY[0x1C68F0CB0](v48, a1, a2, v49, v50)))
    {

      v66 = v85;
      sub_1C1027FF8(v85);
      v67 = sub_1C102A460(v35);
      v38(v66, v35);
      if (v67)
      {
        sub_1C1028EF4(v37, 1, a1, a2);
      }

      else
      {
        sub_1C1028310();
      }

      goto LABEL_27;
    }

    v68 = sub_1C1266400();
    if (qword_1EDE7C0B8 != -1)
    {
      swift_once();
    }

    v69 = qword_1EDE7C0C0;
    if (os_log_type_enabled(qword_1EDE7C0C0, v68))
    {
      v85 = v37;
      v86 = AssociatedTypeWitness;
      v89 = v36;
      v70 = v44;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v90 = v72;
      *v71 = 136315650;
      v73 = sub_1C0FA0E80(v81, v87, &v90);

      *(v71 + 4) = v73;
      *(v71 + 12) = 2080;
      v74 = v82;
      sub_1C1027FF8(v82);

      if ((*(v74 + v35[11] + 16) & 1) == 0)
      {
        v38(v74, v35);
        v75 = sub_1C12665A0();
        v77 = sub_1C0FA0E80(v75, v76, &v90);

        *(v71 + 14) = v77;
        *(v71 + 22) = 2080;
        v78 = sub_1C12665A0();
        v80 = sub_1C0FA0E80(v78, v79, &v90);

        *(v71 + 24) = v80;
        _os_log_impl(&dword_1C0F96000, v69, v68, "PhotosAsyncImage target size change ignored for %s because already requested size %s + 10%% larger than newtargetPixelSize %s", v71, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C68F1630](v72, -1, -1);
        MEMORY[0x1C68F1630](v71, -1, -1);
        v36 = v89;
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_26:

LABEL_27:
    (*(v36 + 8))(v37, AssociatedTypeWitness);
    return;
  }

  v51 = sub_1C1266400();
  if (qword_1EDE7C0B8 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDE7C0C0;
  if (!os_log_type_enabled(qword_1EDE7C0C0, v51))
  {
    goto LABEL_26;
  }

  v85 = v37;
  v86 = AssociatedTypeWitness;
  v53 = v6;
  v54 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v90 = v55;
  *v54 = 136315650;
  v56 = sub_1C0FA0E80(v81, v87, &v90);

  *(v54 + 4) = v56;
  *(v54 + 12) = 2080;
  v57 = v84;
  sub_1C1027FF8(v84);

  if ((*(v57 + v35[15] + 16) & 1) == 0)
  {
    v38(v57, v35);
    v58 = sub_1C12665A0();
    v60 = sub_1C0FA0E80(v58, v59, &v90);

    *(v54 + 14) = v60;
    *(v54 + 22) = 2080;
    v61 = sub_1C12665A0();
    v63 = sub_1C0FA0E80(v61, v62, &v90);

    *(v54 + 24) = v63;
    _os_log_impl(&dword_1C0F96000, v52, v51, "PhotosAsyncImage target size change ignored for %s because receivedSize %s + 10 %% already larger than %s", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v55, -1, -1);
    MEMORY[0x1C68F1630](v54, -1, -1);
LABEL_15:
    (*(v36 + 8))(v85, v86);
    return;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1C102C7F0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1C1266790();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v56 - v5;
  v62 = AssociatedTypeWitness;
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v56 - v11;
  v12 = sub_1C1266790();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v58 = v1;
  v17 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, v2, v1, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v64 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  v63 = v0;
  sub_1C1027FF8(v23);
  v27 = v13;
  v28 = *(v13 + 16);
  v29 = v12;
  v28(v15, &v23[*(v17 + 40)], v12);
  v30 = *(v18 + 8);
  v31 = v23;
  v32 = v17;
  v30(v31, v17);
  v68 = v2;
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    return (*(v27 + 8))(v15, v29);
  }

  v34 = v64;
  (*(v64 + 32))(v26, v15, v68);
  sub_1C1027FF8(v20);
  v35 = v65;
  (*(v66 + 16))(v65, v20, v67);
  v30(v20, v32);
  v36 = v35;
  v37 = v62;
  if (__swift_getEnumTagSinglePayload(v36, 1, v62) == 1)
  {
    (*(v34 + 8))(v26, v68);
    return (*(v66 + 8))(v65, v67);
  }

  else
  {
    v38 = v60;
    v39 = v26;
    v40 = v61;
    (*(v60 + 32))(v61, v65, v37);
    v41 = v63 + *((*MEMORY[0x1E69E7D40] & *v63) + 0xA0);
    swift_beginAccess();
    *(v41 + *(v32 + 52)) = 1;
    (*(v66 + 8))(v41, v67);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v37);
    swift_endAccess();
    v42 = *(v58 + 48);
    v67 = v39;
    v42(v40, v68);
    v43 = sub_1C1266400();
    if (qword_1EDE7C0B8 != -1)
    {
      swift_once();
    }

    v44 = qword_1EDE7C0C0;
    v45 = *(v38 + 16);
    v46 = v59;
    v45(v59, v40, v37);
    if (os_log_type_enabled(v44, v43))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69[0] = v48;
      *v47 = 136315138;
      v45(v57, v46, v37);
      v49 = sub_1C1265ED0();
      v50 = v46;
      v52 = v51;
      v53 = *(v38 + 8);
      v53(v50, v37);
      v54 = sub_1C0FA0E80(v49, v52, v69);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_1C0F96000, v44, v43, "PhotosAsyncImage cancelLoad requestID %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x1C68F1630](v48, -1, -1);
      MEMORY[0x1C68F1630](v47, -1, -1);
      v53(v61, v37);
    }

    else
    {
      v55 = *(v38 + 8);
      v55(v46, v37);
      v55(v40, v37);
    }

    return (*(v64 + 8))(v67, v68);
  }
}

id sub_1C102CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosBasicAsyncImageLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1C102CF70(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *((*v2 & *a1) + 0x68);
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_1C1266790();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
  v8 = *((*v2 & *a1) + 0x80);
  v9 = *((v4 & v3) + 0x58);
  swift_getAssociatedTypeWitness();
  v10 = sub_1C1266790();
  (*(*(v10 - 8) + 8))(&a1[v8], v10);

  v11 = *((*v2 & *a1) + 0xA0);
  v13 = type metadata accessor for PhotosBasicAsyncImageLoadingState(0, v6, v9, v12);
  (*(*(v13 - 8) + 8))(&a1[v11], v13);
  v14 = *&a1[*((*v2 & *a1) + 0xB0)];
}

uint64_t sub_1C102D174()
{
  v7 = sub_1C12664B0();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1266480();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C1265C30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1C0FDE8F8(0, &qword_1EDE83410, 0x1E69E9610);
  sub_1C1265C20();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C102EF38(&qword_1EDE76A20, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F0, &unk_1C12A8AF0);
  sub_1C102EC88(&qword_1EDE76A98, &qword_1EBE913F0, &unk_1C12A8AF0);
  sub_1C1266870();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1C12664E0();
  qword_1EDE78A68 = result;
  return result;
}

uint64_t sub_1C102D3D4()
{
  sub_1C0FDE8F8(0, &qword_1EDE7B5B0, 0x1E69E9BF8);
  result = sub_1C1266740();
  qword_1EDE7C0C0 = result;
  return result;
}

uint64_t sub_1C102D45C(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      sub_1C102DF10(319, &qword_1EDE76990, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
      AssociatedTypeWitness = v4;
      if (v5 <= 0x3F)
      {
        sub_1C102DF10(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        AssociatedTypeWitness = v6;
        if (v7 <= 0x3F)
        {
          sub_1C102DE6C();
          AssociatedTypeWitness = v8;
          if (v9 <= 0x3F)
          {
            sub_1C102DEBC(319, &qword_1EDE77618, &qword_1EBE913D8, &qword_1C12A88A8);
            AssociatedTypeWitness = v10;
            if (v11 <= 0x3F)
            {
              sub_1C102DEBC(319, &qword_1EDE77660, &qword_1EBE913E0, qword_1C12A88B0);
              AssociatedTypeWitness = v12;
              if (v13 <= 0x3F)
              {
                sub_1C102DF10(319, &qword_1EDE776B8, type metadata accessor for PhotosBasicAsyncImageState, MEMORY[0x1E697DA80]);
                AssociatedTypeWitness = v14;
                if (v15 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

unint64_t sub_1C102D674(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v35 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v34 = *(v6 + 84);
  if (v34 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = *(sub_1C12629F0() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C8, &qword_1C12A8818);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v10;
  v16 = *(v4 + 64) + v14;
  v17 = *(v6 + 64) + 7;
  v18 = *(v8 + 80) & 0xF8 | 7;
  v19 = v9 + 24;
  v20 = *(v11 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 41;
  v23 = *(*(v10 - 8) + 64) + 7;
  result = a1;
  if (v13 >= a2)
  {
LABEL_33:
    if (v5 == v13)
    {
      v12 = v5;
      v15 = v35;
    }

    else
    {
      result = (a1 + v16) & ~v14;
      if (v34 == v13)
      {
        v12 = v34;
        v15 = AssociatedTypeWitness;
      }

      else
      {
        result = (v22 + ((((v19 + ((((v17 + result) & 0xFFFFFFFFFFFFFFF8) + v18 + 37) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21;
        if (v12 < 0x7FFFFFFE)
        {
          v32 = *((v23 + result) & 0xFFFFFFFFFFFFFFF8);
          if (v32 >= 0xFFFFFFFF)
          {
            LODWORD(v32) = -1;
          }

          if ((v32 + 1) >= 2)
          {
            return v32;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(result, v12, v15);
  }

  v25 = (v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + ((((v19 + ((v18 + ((v17 + (v16 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 37) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21) + 8;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v13 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  switch(v28)
  {
    case 1:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 2:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 3:
      __break(1u);
      return result;
    case 4:
      v29 = *(a1 + v25);
      if (!v29)
      {
        goto LABEL_33;
      }

LABEL_30:
      v30 = v29 - 1;
      if ((v25 & 0xFFFFFFF8) != 0)
      {
        v30 = 0;
        v31 = *a1;
      }

      else
      {
        v31 = 0;
      }

      result = v13 + (v31 | v30) + 1;
      break;
    default:
      goto LABEL_33;
  }

  return result;
}

void sub_1C102DA30(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v39 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C8, &qword_1C12A8818);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v8 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  v16 = *(v6 + 80);
  v17 = *(v4 + 64) + v16;
  v18 = *(v6 + 64) + 7;
  v19 = *(v9 + 80) & 0xF8 | 7;
  v20 = *(v12 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 41;
  v23 = *(*(v11 - 8) + 64) + 7;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = ((v20 + 41 + ((((v10 + 24 + ((v19 + ((v18 + (v17 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 37) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21) + v24;
  if (v15 >= a3)
  {
    v28 = 0;
  }

  else
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v15 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  if (a2 > v15)
  {
    if (v25)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v15;
    }

    if (v25)
    {
      v30 = ~v15 + a2;
      bzero(a1, v25);
      *a1 = v30;
    }

    switch(v28)
    {
      case 1:
        *(a1 + v25) = v29;
        break;
      case 2:
        *(a1 + v25) = v29;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *(a1 + v25) = v29;
        break;
      default:
        return;
    }

    return;
  }

  v31 = ~v16;
  v32 = ~v19;
  switch(v28)
  {
    case 1:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_41;
      }

      return;
    case 2:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_41;
      }

      return;
    case 3:
LABEL_59:
      __break(1u);
      return;
    case 4:
      *(a1 + v25) = 0;
      goto LABEL_40;
    default:
LABEL_40:
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v5 == v15)
      {
        v33 = a1;
        v34 = a2;
        v13 = v5;
        v11 = v39;
LABEL_45:

        __swift_storeEnumTagSinglePayload(v33, v34, v13, v11);
        return;
      }

      v33 = ((a1 + v17) & v31);
      if (v7 == v15)
      {
        v34 = a2;
        v13 = v7;
        v11 = AssociatedTypeWitness;
        goto LABEL_45;
      }

      v35 = ((v22 + ((((v10 + 24 + ((((v33 + v18) & 0xFFFFFFFFFFFFFFF8) + v19 + 37) & v32)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21);
      if (v14 >= a2)
      {
        if (v13 < 0x7FFFFFFE)
        {
          v37 = ((v35 + v23) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v37 = 0;
            *v37 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v37 = a2;
          }

          return;
        }

        v33 = ((v22 + ((((v10 + 24 + ((((v33 + v18) & 0xFFFFFFFFFFFFFFF8) + v19 + 37) & v32)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21);
        v34 = a2;
        goto LABEL_45;
      }

      if ((v23 & 0xFFFFFFF8) != 0xFFFFFFF8)
      {
        v36 = ~v14 + a2;
        bzero(((v22 + ((((v10 + 24 + ((((v33 + v18) & 0xFFFFFFFFFFFFFFF8) + v19 + 37) & v32)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21), v24);
        *v35 = v36;
      }

      return;
  }
}

void sub_1C102DE6C()
{
  if (!qword_1EDE775B0)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE775B0);
    }
  }
}

void sub_1C102DEBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C1262A70();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C102DF10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C102DF7C(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t sub_1C102E020(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = sub_1C1266790();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    result = sub_1C1266790();
    if (v7 <= 0x3F)
    {
      result = type metadata accessor for PhotosBasicAsyncImageLoadingState(319, v2, v5, v6);
      if (v8 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C102E1C8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v1 = sub_1C1266790();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_1C1266790();
    if (v3 <= 0x3F)
    {
      v1 = sub_1C1266790();
      if (v4 <= 0x3F)
      {
        sub_1C102DF10(319, &qword_1EDE76990, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
        v1 = v5;
        if (v6 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C102E354(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v14)
  {
    v14 = v17;
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  if (v8)
  {
    v18 = *(v7 + 64);
  }

  else
  {
    v18 = *(v7 + 64) + 1;
  }

  if (v12)
  {
    v19 = *(*(v10 - 8) + 64);
  }

  else
  {
    v19 = *(*(v10 - 8) + 64) + 1;
  }

  result = *(v11 + 80);
  v21 = *(v15 + 80);
  v22 = *(*(v5 - 8) + 64);
  if (!v16)
  {
    ++v22;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 + result;
  if (v14 < a2)
  {
    v24 = ((((((v22 + ((v19 + v21 + (v23 & ~result)) & ~v21) + 31) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v24 <= 3)
    {
      v25 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = a1[v24];
        if (!a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 2:
        v28 = *&a1[v24];
        if (!*&a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 3:
        __break(1u);
        return result;
      case 4:
        v28 = *&a1[v24];
        if (!v28)
        {
          goto LABEL_45;
        }

LABEL_41:
        v29 = (v28 - 1) << (8 * v24);
        if (v24 <= 3)
        {
          v30 = *a1;
        }

        else
        {
          v29 = 0;
          v30 = *a1;
        }

        v33 = v14 + (v30 | v29);
        break;
      default:
        goto LABEL_45;
    }

    return (v33 + 1);
  }

LABEL_45:
  if (v9 == v14)
  {
    if (v8 >= 2)
    {
      v31 = a1;
      v12 = v8;
      v10 = AssociatedTypeWitness;
      goto LABEL_54;
    }

    return 0;
  }

  v31 = (&a1[v23] & ~result);
  if (v13 == v14)
  {
    if (v12 < 2)
    {
      return 0;
    }
  }

  else
  {
    v31 = (&v31[v19 + v21] & ~v21);
    if (v17 != v14)
    {
      v34 = *((&v31[v22 + 7] & 0xFFFFFFFFFFFFFFF8) + 49);
      if (v34 >= 2)
      {
        v33 = (v34 + 2147483646) & 0x7FFFFFFF;
        return (v33 + 1);
      }

      return 0;
    }

    if (v16 < 2)
    {
      return 0;
    }

    v12 = v16;
    v10 = v5;
  }

LABEL_54:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v12, v10);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C102E698(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_getAssociatedTypeWitness();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 > v16)
  {
    v16 = v19;
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = *(*(v11 - 8) + 64);
  if (!v14)
  {
    ++v21;
  }

  v22 = *(v13 + 80);
  v23 = v20 + v22;
  v24 = *(v17 + 80);
  v25 = *(*(v7 - 8) + 64);
  if (!v18)
  {
    ++v25;
  }

  v26 = ((((((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v16 < a3)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v16 >= a2)
  {
    v31 = ~v22;
    switch(v12)
    {
      case 1:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 2:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 3:
LABEL_64:
        __break(1u);
        return;
      case 4:
        *(a1 + v26) = 0;
        goto LABEL_48;
      default:
LABEL_48:
        if (!a2)
        {
          return;
        }

LABEL_49:
        if (v10 == v16)
        {
          v32 = a2 + 1;
          v33 = a1;
          v14 = v9;
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v33 = ((a1 + v23) & v31);
          if (v15 == v16)
          {
            v32 = a2 + 1;
          }

          else
          {
            v33 = ((v33 + v21 + v24) & ~v24);
            if (v19 != v16)
            {
              *(((v33 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 49) = a2 + 1;
              return;
            }

            v32 = a2 + 1;
            v14 = v18;
            v11 = v7;
          }
        }

        __swift_storeEnumTagSinglePayload(v33, v32, v14, v11);
        break;
    }
  }

  else
  {
    v29 = ~v16 + a2;
    bzero(a1, ((((((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v26 <= 3)
    {
      v30 = (v29 >> 8) + 1;
    }

    else
    {
      v30 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v29;
    }

    else
    {
      *a1 = v29;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v26) = v30;
        break;
      case 2:
        *(a1 + v26) = v30;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *(a1 + v26) = v30;
        break;
      default:
        return;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A20BasicAsyncImagePhase33_460C0208308CE916CBE04D8DC5A9DDC1LLO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1C102EA4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C102EA8C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C102EAD4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

double sub_1C102EB00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
  }

  else
  {
  }

  return result;
}

uint64_t objectdestroy_52Tm()
{

  sub_1C102EB00(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1C102EC1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v14 = 0;
  v7 = v2;
  v5 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = v5;
  v10 = *(v0 + 72);
  v11 = v3;
  v12 = v4;
  v13 = 0;
  return v1(&v7);
}

uint64_t sub_1C102EC88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1C102ECF4(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v5 = a1;

    v6 = a2;
  }

  else if (!a4)
  {
    v4 = a1;
  }
}

void sub_1C102ED80(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t objectdestroy_71Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C102EF38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void CACornerRadiiMake(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a5;
  a1[4] = a3;
  a1[5] = a3;
  a1[6] = a2;
  a1[7] = a2;
}

uint64_t sub_1C102EFA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C102F008@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C102F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_1C102F0EC(a1, a2, a3, a4, a5 & 1, a6, a7);
  return v14;
}

void *sub_1C102F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v29 = *v7;
  v7[3] = 0;
  *(v7 + 32) = 1;
  v7[8] = 0;
  v7[5] = 0;
  v7[6] = 0;
  *(v7 + 72) = 1;
  v7[10] = 0;
  *(v7 + 88) = 1;
  sub_1C1261F10();
  OUTLINED_FUNCTION_9_13();
  sub_1C1034198(v11, v12, MEMORY[0x1E6969B90]);
  v13 = OUTLINED_FUNCTION_33_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  sub_1C0FDB6D4(&unk_1EDE7B6F0, &qword_1EBE91448, &unk_1C12A8C90, MEMORY[0x1E69E6328]);
  sub_1C1266870();
  *(v7 + qword_1EDE7FEB0) = MEMORY[0x1E69E7CD0];
  *(v7 + qword_1EDE793B0) = 2;
  v15 = qword_1EDE7FE98;
  *(v8 + v15) = sub_1C1265CE0();
  v16 = v8 + qword_1EDE9B5C8;
  *v16 = 0;
  v16[8] = 1;
  v8[2] = a1;
  v8[7] = a2;
  *(v8 + qword_1EDE9B6A0) = a3;
  swift_beginAccess();
  *v16 = a4;
  v16[8] = a5 & 1;
  v17 = (v8 + qword_1EDE7FEA8);
  *v17 = a6;
  v17[1] = a7;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = *(v29 + 80);
  v19[3] = *(v29 + 88);
  v19[4] = v18;
  swift_unknownObjectRetain();

  v20 = sub_1C1262020();
  v22 = v21;
  swift_unknownObjectRelease();

  v8[5] = v20;
  v8[6] = v22;
  swift_unknownObjectRelease();
  return v8;
}

double sub_1C102F3C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1262290();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C1262280();
    sub_1C1034198(&qword_1EDE7C0B0, MEMORY[0x1E69C43B0], MEMORY[0x1E69C43B8]);
    v7 = sub_1C1266810();
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      sub_1C102F674();
    }
  }

  return result;
}

uint64_t sub_1C102F52C(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1C102F550(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_1C102F56C(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t sub_1C102F57C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = qword_1EDE7FEA0;
  OUTLINED_FUNCTION_7_4(v2 + qword_1EDE7FEA0, a1);
  sub_1C1261F10();
  OUTLINED_FUNCTION_3();
  return (*(v5 + 16))(a2, v2 + v4);
}

double sub_1C102F600(uint64_t a1)
{
  *(v1 + qword_1EDE7FEB0) = a1;

  return result;
}

double sub_1C102F638(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_4(v2 + qword_1EDE7FE98, a2);

  return result;
}

void sub_1C102F674()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_19_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_17_9(v3, v4);
  OUTLINED_FUNCTION_22_1();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_26_3();
  v7 = sub_1C1262030();
  if ((v6 & 1) != 0 || v5 != v7)
  {
    OUTLINED_FUNCTION_26_3();
    v10 = sub_1C1262030();
    v11 = OUTLINED_FUNCTION_46();
    v12(v11);
    *(v1 + 24) = v10;
    *(v1 + 32) = 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46();
    v9(v8);
  }

  OUTLINED_FUNCTION_22_0();
}
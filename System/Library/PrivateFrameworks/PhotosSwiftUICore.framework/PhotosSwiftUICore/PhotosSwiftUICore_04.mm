uint64_t type metadata accessor for PhotosNotificationCellTextView(uint64_t a1)
{
  result = qword_1EBE90A58;
  if (!qword_1EBE90A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosNotificationCellTextView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1C1263AB0();
  v5 = *v2;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A40, &qword_1C12A6898);
  sub_1C0FFA160(v2, a2 + *(v6 + 44));
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A48, &qword_1C12A68A0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A50, &qword_1C12A68A8);
  sub_1C1263440();
  result = swift_getKeyPath();
  *v7 = result;
  return result;
}

uint64_t sub_1C0FFA160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AB0, &qword_1C12A6AB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v57 - v6;
  v7 = sub_1C1264680();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1261AD0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AB8, &qword_1C12A6AB8) - 8;
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AC0, &qword_1C12A6AC0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  *v23 = sub_1C1263890();
  *(v23 + 1) = 0x4000000000000000;
  v23[16] = 0;
  v59 = v23;
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AC8, &qword_1C12A6AC8) + 44)];
  v64 = a1;
  sub_1C0FFA764(a1, v24);
  v25 = type metadata accessor for PhotosNotificationCellTextView(0);
  (*(v12 + 16))(v14, a1 + *(v25 + 24), v11);
  v26 = sub_1C12648E0();
  v28 = v27;
  v30 = v29;
  sub_1C1264510();
  (*(v8 + 104))(v10, *MEMORY[0x1E6980EA8], v7);
  sub_1C12646C0();

  (*(v8 + 8))(v10, v7);
  v31 = sub_1C1264870();
  v33 = v32;
  LOBYTE(v7) = v34;

  sub_1C0FDB8E8(v26, v28, v30 & 1);

  v35 = v64;
  v36 = sub_1C1264840();
  v38 = v37;
  LOBYTE(v28) = v39;
  v58 = v40;
  sub_1C0FDB8E8(v31, v33, v7 & 1);

  v41 = *(v35 + 24);
  LOBYTE(v7) = *(v35 + 32);
  KeyPath = swift_getKeyPath();
  v43 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93110, &unk_1C12A6B00) + 36)];
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v45 = *MEMORY[0x1E6980FA8];
  v46 = sub_1C1264830();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  *v18 = v36;
  *(v18 + 1) = v38;
  v18[16] = v28 & 1;
  *(v18 + 3) = v58;
  *(v18 + 4) = KeyPath;
  *(v18 + 5) = v41;
  v18[48] = v7;
  v47 = swift_getKeyPath();
  v48 = &v18[*(v60 + 44)];
  *v48 = v47;
  v48[8] = 0;
  v49 = v66;
  sub_1C0FFB048(v66);
  v50 = v59;
  v51 = v65;
  sub_1C0FAAD18(v59, v65);
  v52 = v61;
  sub_1C0FFC424(v18, v61, &qword_1EBE90AB8, &qword_1C12A6AB8);
  v53 = v62;
  sub_1C0FFC424(v49, v62, &qword_1EBE90AB0, &qword_1C12A6AB0);
  v54 = v63;
  sub_1C0FAAD18(v51, v63);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AD0, &qword_1C12A6B70);
  sub_1C0FFC424(v52, v54 + *(v55 + 48), &qword_1EBE90AB8, &qword_1C12A6AB8);
  sub_1C0FFC424(v53, v54 + *(v55 + 64), &qword_1EBE90AB0, &qword_1C12A6AB0);
  sub_1C0FFC7B0(v66, &qword_1EBE90AB0, &qword_1C12A6AB0);
  sub_1C0FFC7B0(v18, &qword_1EBE90AB8, &qword_1C12A6AB8);
  sub_1C0FAAD78(v50);
  sub_1C0FFC7B0(v53, &qword_1EBE90AB0, &qword_1C12A6AB0);
  sub_1C0FFC7B0(v52, &qword_1EBE90AB8, &qword_1C12A6AB8);
  return sub_1C0FAAD78(v65);
}

uint64_t sub_1C0FFA764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v86 = a2;
  v2 = sub_1C1264680();
  v84 = *(v2 - 8);
  v85 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v64[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93110, &unk_1C12A6B00);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v64[-v5];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AE8, &qword_1C12A6B90);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v64[-v6];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AF0, &qword_1C12A6B98);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v64[-v7];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AF8, &qword_1C12A6BA0);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v64[-v8];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B00, &qword_1C12A6BA8);
  MEMORY[0x1EEE9AC00](v77);
  v83 = &v64[-v9];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B08, &qword_1C12A6BB0);
  MEMORY[0x1EEE9AC00](v74);
  v80 = &v64[-v10];
  sub_1C12652F0();
  v11 = sub_1C1264900();
  v13 = v12;
  v15 = v14;
  v87 = sub_1C1265130();
  v16 = sub_1C1264850();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1C0FDB8E8(v11, v13, v15 & 1);

  v23 = v72;

  v24 = *(v23 + *(type metadata accessor for PhotosNotificationCellTextView(0) + 32)) == 1;
  v70 = v18;
  v68 = v20;
  if (v24)
  {
    sub_1C1263980();
    sub_1C1263970();
    sub_1C1263940();
    sub_1C1263970();
    sub_1C1263960();
    sub_1C1263970();
    sub_1C12639B0();
  }

  else
  {

    sub_1C12639A0();
  }

  v25 = v23;
  v71 = v16;
  v72 = v22;
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDE7E630;
  v27 = sub_1C12648D0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *(v25 + 8);
  v65 = *(v25 + 16);
  KeyPath = swift_getKeyPath();
  v36 = v69;
  v37 = &v69[*(v66 + 36)];
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v39 = *MEMORY[0x1E6980FA8];
  v40 = sub_1C1264830();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  *v36 = v27;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31 & 1;
  *(v36 + 24) = v33;
  *(v36 + 32) = KeyPath;
  *(v36 + 40) = v34;
  *(v36 + 48) = v65;
  v41 = v73;
  v42 = &v73[*(v67 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B10, &qword_1C12A6BB8) + 28);
  v44 = *MEMORY[0x1E6980FD8];
  v45 = sub_1C1264860();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  __swift_storeEnumTagSinglePayload(v42 + v43, 0, 1, v45);
  *v42 = swift_getKeyPath();
  sub_1C0FFC488(v36, v41, &qword_1EBE93110, &unk_1C12A6B00);
  sub_1C12646D0();
  v47 = v84;
  v46 = v85;
  v48 = v82;
  (*(v84 + 104))(v82, *MEMORY[0x1E6980E98], v85);
  v49 = sub_1C12646C0();

  (*(v47 + 8))(v48, v46);
  v50 = swift_getKeyPath();
  v51 = v75;
  sub_1C0FFC488(v41, v75, &qword_1EBE90AE8, &qword_1C12A6B90);
  v52 = &v51[*(v76 + 36)];
  *v52 = v50;
  v52[1] = v49;
  sub_1C12645B0();
  sub_1C0FFC4D0();
  v53 = v78;
  sub_1C1264990();
  sub_1C0FFC7B0(v51, &qword_1EBE90AF0, &qword_1C12A6B98);
  if (qword_1EDE76CF0 != -1)
  {
    swift_once();
  }

  v54 = qword_1EDE76CF8;
  sub_1C0FDB8E8(v71, v70, v68 & 1);

  v55 = swift_getKeyPath();
  v56 = v83;
  (*(v79 + 32))(v83, v53, v81);
  v57 = (v56 + *(v77 + 36));
  *v57 = v55;
  v57[1] = v54;
  v58 = v80;
  v59 = &v80[*(v74 + 36)];
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v61 = *MEMORY[0x1E69816C8];
  v62 = sub_1C1265340();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  *v59 = swift_getKeyPath();
  sub_1C0FFC488(v56, v58, &qword_1EBE90B00, &qword_1C12A6BA8);
  sub_1C0FFC488(v58, v86, &qword_1EBE90B08, &qword_1C12A6BB0);
}

uint64_t sub_1C0FFB048@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_1C1264680();
  v47 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AD8, &unk_1C12A6B78);
  MEMORY[0x1EEE9AC00](v50);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560, &qword_1C12A5E00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AE0, &qword_1C12A6B88);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v45 - v12;
  v13 = (v1 + *(type metadata accessor for PhotosNotificationCellTextView(0) + 28));
  v14 = v13[1];
  if (v14)
  {
    v48 = v7;
    v49 = v11;
    v15 = *v13;

    v16 = sub_1C0FFB5F8();
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      MEMORY[0x1EEE9AC00](v20);
      *(&v45 - 2) = v15;
      *(&v45 - 1) = v14;

      sub_1C1265480();

      v21 = v48;
      (*(v8 + 16))(v6, v10, v48);
      swift_storeEnumTagMultiPayload();
      sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
      v22 = v51;
      sub_1C1263C20();
      sub_1C0FCF004(v18, v19);
      (*(v8 + 8))(v10, v21);
    }

    else
    {
      v53 = v15;
      v54 = v14;
      sub_1C0FDB9AC();
      v25 = sub_1C12648F0();
      v27 = v26;
      v29 = v28;
      if (qword_1EDE76CF0 != -1)
      {
        swift_once();
      }

      v30 = sub_1C1264840();
      v45 = v31;
      v46 = v30;
      v33 = v32;
      sub_1C0FDB8E8(v25, v27, v29 & 1);

      sub_1C12646A0();
      v34 = v47;
      (*(v47 + 104))(v4, *MEMORY[0x1E6980EA8], v2);
      sub_1C12646C0();

      (*(v34 + 8))(v4, v2);
      v36 = v45;
      v35 = v46;
      v37 = sub_1C1264870();
      v39 = v38;
      v41 = v40;
      v43 = v42;

      sub_1C0FDB8E8(v35, v36, v33 & 1);

      *v6 = v37;
      *(v6 + 1) = v39;
      v6[16] = v41 & 1;
      *(v6 + 3) = v43;
      swift_storeEnumTagMultiPayload();
      sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
      v22 = v51;
      sub_1C1263C20();
    }

    v44 = v52;
    sub_1C0FFC488(v22, v52, &qword_1EBE90AE0, &qword_1C12A6B88);
    return __swift_storeEnumTagSinglePayload(v44, 0, 1, v49);
  }

  else
  {
    v23 = v52;

    return __swift_storeEnumTagSinglePayload(v23, 1, 1, v11);
  }
}

uint64_t (*sub_1C0FFB5F8())()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PhotosNotificationCellTextView(0) + 36));
  v6 = *v5;
  LODWORD(v5) = *(v5 + 16);
  v7 = v6;
  v12[0] = v6;
  if (v5 == 1)
  {
    sub_1C0FCF1B4(v6, *(&v6 + 1));
    v8 = v12[0];
  }

  else
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v10 = sub_1C0FFC474(v7, *(&v12[0] + 1), 0);
    (*(v2 + 8))(v4, v1, v10);
    v8 = v12[1];
  }

  if (!v8)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v8;
  return sub_1C0FFC480;
}

uint64_t (*sub_1C0FFB7BC())()
{
  sub_1C0FFC804();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_10();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1C0FFC94C;
}

uint64_t (*sub_1C0FFB840@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = sub_1C0FFB7BC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    OUTLINED_FUNCTION_2_10();
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1C0FFC950;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C0FFB8AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    OUTLINED_FUNCTION_2_10();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FFC94C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C0FFB934(v4, v3);
}

uint64_t sub_1C0FFB934(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1C0FFC804();
  return sub_1C1263800();
}

uint64_t sub_1C0FFB9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C1264680();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[2] = a1;
  v23[3] = a2;
  sub_1C0FDB9AC();

  v10 = sub_1C12648F0();
  v12 = v11;
  v14 = v13;
  sub_1C1264510();
  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
  sub_1C12646C0();

  (*(v7 + 8))(v9, v6);
  v15 = sub_1C1264870();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1C0FDB8E8(v10, v12, v14 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  return result;
}

uint64_t PhotosNotificationCellTextViewConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x4000000000000000;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
  *(a1 + 32) = 0;
  if (qword_1EBE8FC18 != -1)
  {
    swift_once();
  }

  *(a1 + 40) = qword_1EBE90BC0;
}

uint64_t PhotosNotificationCellTextViewConfiguration.titleMaxLineLimit.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t PhotosNotificationCellTextViewConfiguration.descriptionMaxLineLimit.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t View.photosNotificationCellSubtitleAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1C68EE920](v4, a3, &type metadata for PhotosNotificationCellSubtitleActionModifier);
}

uint64_t sub_1C0FFBD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AA0, &qword_1C12A6AA0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = sub_1C0FFC3FC;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90AA8, &qword_1C12A6AA8);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = &v10[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v15[2] = v12;
  sub_1C0FFC488(v10, a4, &qword_1EBE90AA0, &qword_1C12A6AA0);
  return sub_1C0FCF1B4(a2, a3);
}

uint64_t sub_1C0FFBEDC(uint64_t a1)
{
  v2 = sub_1C1263450();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1263600();
}

void sub_1C0FFBFE8(uint64_t a1)
{
  sub_1C1261AD0();
  if (v1 <= 0x3F)
  {
    sub_1C0FFC0A4();
    if (v2 <= 0x3F)
    {
      sub_1C0FFC0F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0FFC0A4()
{
  if (!qword_1EDE76AF0)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76AF0);
    }
  }
}

void sub_1C0FFC0F4(uint64_t a1)
{
  if (!qword_1EBE90A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90A70, &qword_1C12A6970);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE90A68);
    }
  }
}

uint64_t sub_1C0FFC158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFC198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0FFC1F4()
{
  result = qword_1EBE90A78;
  if (!qword_1EBE90A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90A48, &qword_1C12A68A0);
    sub_1C0FDB6D4(&qword_1EBE90A80, &qword_1EBE90A88, &qword_1C12A69D0, MEMORY[0x1E6981870]);
    sub_1C0FDB6D4(&qword_1EBE90A90, &qword_1EBE90A50, &qword_1C12A68A8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90A78);
  }

  return result;
}

unint64_t sub_1C0FFC2D8()
{
  result = qword_1EBE90A98;
  if (!qword_1EBE90A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90A98);
  }

  return result;
}

uint64_t sub_1C0FFC32C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFC380(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C0FFC424(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_10();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return v4;
}

double sub_1C0FFC474(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1C0FCF004(result, a2);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1C0FFC488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_10();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return v4;
}

unint64_t sub_1C0FFC4D0()
{
  result = qword_1EBE90B18;
  if (!qword_1EBE90B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90AF0, &qword_1C12A6B98);
    sub_1C0FFC588();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B18);
  }

  return result;
}

unint64_t sub_1C0FFC588()
{
  result = qword_1EBE90B20;
  if (!qword_1EBE90B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90AE8, &qword_1C12A6B90);
    sub_1C0FFC640();
    sub_1C0FDB6D4(&qword_1EDE7B918, &qword_1EBE90B10, &qword_1C12A6BB8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B20);
  }

  return result;
}

unint64_t sub_1C0FFC640()
{
  result = qword_1EBE90B28;
  if (!qword_1EBE90B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93110, &unk_1C12A6B00);
    sub_1C0FFC6F8();
    sub_1C0FDB6D4(&unk_1EDE7B920, &qword_1EBE93130, &qword_1C12AEDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B28);
  }

  return result;
}

unint64_t sub_1C0FFC6F8()
{
  result = qword_1EDE7BE80;
  if (!qword_1EDE7BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DB0, &qword_1C12A6C20);
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE80);
  }

  return result;
}

uint64_t sub_1C0FFC7B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C0FFC804()
{
  result = qword_1EBE90B30;
  if (!qword_1EBE90B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B30);
  }

  return result;
}

unint64_t sub_1C0FFC868()
{
  result = qword_1EBE90B38;
  if (!qword_1EBE90B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90AA0, &qword_1C12A6AA0);
    sub_1C0FDB6D4(&qword_1EBE90B40, &qword_1EBE90AA8, &qword_1C12A6AA8, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EBE90B48, &qword_1EBE90B50, &qword_1C12A6CB8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B38);
  }

  return result;
}

uint64_t sub_1C0FFC954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v30 = a5;
  v8 = sub_1C1263420();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B60, &qword_1C12A6DA8);
  MEMORY[0x1EEE9AC00](v28);
  v15 = &v28 - v14;
  sub_1C12633F0();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3 & 1;
  *(v16 + 32) = a4;
  v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B68, &qword_1C12A6DB0) + 36)];
  (*(v10 + 16))(v17, v13, v8);
  v18 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0);
  v19 = v18[6];
  v36[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v36);
  memcpy(&v17[v19], v36, 0xD1uLL);
  v20 = &v17[v18[7]];
  v31 = 0;
  v32 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B58, qword_1C12A6D00);
  sub_1C1265410();
  (*(v10 + 8))(v13, v8);
  v21 = v34;
  v22 = v35;
  *v20 = v33;
  v20[8] = v21;
  *(v20 + 2) = v22;
  v23 = &v17[v18[5]];
  *v23 = sub_1C0FFCFC8;
  *(v23 + 1) = v16;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B70, &qword_1C12A6DE0);
  (*(*(v24 - 8) + 16))(v15, v29, v24);
  KeyPath = swift_getKeyPath();
  v26 = &v15[*(v28 + 36)];
  *v26 = KeyPath;
  v26[8] = 1;
  sub_1C0FFCFEC();
  sub_1C1265080();
  return sub_1C0FFD1B4(v15);
}

void *sub_1C0FFCC2C@<X0>(double *a1@<X0>, uint64_t a5@<X8>)
{
  v6 = a1[21];
  if (v6 <= 4.0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = v6 + -4.0;
  }

  if (v6 <= 4.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 4.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B78, &qword_1C12B2910);
  result = sub_1C1265420();
  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;
  return result;
}

uint64_t View.photosFocusableItem()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v16[3] = 0;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B58, qword_1C12A6D00);
  sub_1C1265410();
  MEMORY[0x1C68EE920](&v18, a1, &type metadata for PhotosFocusableItem, a2);

  v13 = sub_1C0FFCEA0();
  v16[1] = a2;
  v16[2] = v13;
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v14 = *(v6 + 8);
  v14(v9, v4);
  sub_1C0FDBA4C();
  return (v14)(v12, v4);
}

unint64_t sub_1C0FFCEA0()
{
  result = qword_1EDE825E8[0];
  if (!qword_1EDE825E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE825E8);
  }

  return result;
}

uint64_t sub_1C0FFCEF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFCF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FFCFEC()
{
  result = qword_1EDE77258;
  if (!qword_1EDE77258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B60, &qword_1C12A6DA8);
    sub_1C0FFD0A4();
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0, &qword_1C12A6E10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77258);
  }

  return result;
}

unint64_t sub_1C0FFD0A4()
{
  result = qword_1EDE77430;
  if (!qword_1EDE77430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B68, &qword_1C12A6DB0);
    sub_1C0FDB6D4(&qword_1EDE7BB38, &qword_1EBE90B70, &qword_1C12A6DE0, MEMORY[0x1E697FDF8]);
    sub_1C0FFD15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77430);
  }

  return result;
}

unint64_t sub_1C0FFD15C()
{
  result = qword_1EDE78EC8;
  if (!qword_1EDE78EC8)
  {
    type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78EC8);
  }

  return result;
}

uint64_t sub_1C0FFD1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B60, &qword_1C12A6DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PhotosMockAssetView.init(hue:saturation:brightness:aspectRatio:label:)(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, uint64_t a8@<D2>)
{
  if (a2)
  {
    sub_1C0FFD350(0.0, 1.0);
    v15 = v14;
  }

  else
  {
    v15 = a1;
  }

  sub_1C0FE0644();
  PXSyntheticAsset.init(aspectRatio:label:tint:)(a8, 0, a3, a4, [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v15 saturation:a6 brightness:a7 alpha:1.0]);
  *a5 = v16;
  *(a5 + 8) = *&a8;
}

uint64_t PhotosMockAssetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = v4;
  sub_1C11FFCDC(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0, &qword_1C12A35E0);
  v7 = a1 + *(result + 36);
  *v7 = v3;
  *(v7 + 8) = 256;
  return result;
}

void sub_1C0FFD350(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1C0FFD470(0x20000000000001uLL);
  }
}

uint64_t sub_1C0FFD3E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FFD424(uint64_t result, int a2, int a3)
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

unint64_t sub_1C0FFD470(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C68F1650](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C68F1650](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0FFD4FC(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  *a2.i64 = a1;
  a3.i64[0] = 0x3F947AE147AE147BLL;
  OUTLINED_FUNCTION_0_11(a2, a3);
  return sub_1C1265110();
}

uint64_t sub_1C0FFD538@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  *a3.i64 = a1;
  a4.i64[0] = 0x3F947AE147AE147BLL;
  OUTLINED_FUNCTION_0_11(a3, a4);
  result = sub_1C1265110();
  *a2 = result;
  return result;
}

void ColorScheme.px_resolvedThumbnailPlaceholderColor.getter()
{
  if (qword_1EDE82ED0 != -1)
  {
    swift_once();
  }

  if (!*(off_1EDE82ED8 + 2))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1C0FFE0D8(v0);
  if ((v1 & 1) == 0)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t ColorScheme.px_thumbnailPlaceholderColor.getter()
{
  v1 = v0;
  v2 = sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v1, v8, v12);
  if ((*(v10 + 88))(v14, v8) != *MEMORY[0x1E697DBA8])
  {
    (*(v10 + 8))(v14, v8);
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69814D8], v2);
  return sub_1C1265240();
}

uint64_t sub_1C0FFD910()
{
  v64 = sub_1C12637E0();
  v0 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C12650F0();
  v2 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C12629F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v71 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = v51 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v51 - v10;
  v12 = sub_1C12629E0();
  v13 = v12;
  v62 = *(v12 + 16);
  if (v62)
  {
    v14 = 0;
    v61 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v70 = v5 + 16;
    v60 = v5 + 88;
    v59 = *MEMORY[0x1E697DBA8];
    v69 = (v5 + 8);
    v57 = *MEMORY[0x1E69814D8];
    v58 = (v2 + 104);
    v56 = v0 + 16;
    v55 = v0 + 8;
    v15 = MEMORY[0x1E69E7CC8];
    v51[2] = 0x406E400000000000;
    v51[1] = 0x406E200000000000;
    v54 = v4;
    v53 = v12;
    v52 = v5;
    while (v14 < *(v13 + 16))
    {
      v67 = *(v5 + 72);
      v16 = *(v5 + 16);
      v16(v11, v61 + v67 * v14, v4);
      v16(v72, v11, v4);
      v17 = v71;
      v68 = v16;
      v16(v71, v11, v4);
      v18 = (*(v5 + 88))(v17, v4);
      if (v18 != v59)
      {
        (*v69)(v71, v4, 79.0, 73.0, 73.0);
      }

      (*v58)(v65, v57, v66);
      sub_1C1265240();
      if (qword_1EDE7C9D0 != -1)
      {
        swift_once();
      }

      v19 = off_1EDE7C9D8;
      if (!*(off_1EDE7C9D8 + 2))
      {
        goto LABEL_23;
      }

      v20 = sub_1C0FFE0D8(v11);
      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }

      v22 = v11;
      v23 = v19[7] + *(v0 + 72) * v20;
      v25 = v63;
      v24 = v64;
      (*(v0 + 16))(v63, v23, v64);
      sub_1C1265200();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = v0;
      (*(v0 + 8))(v25, v24);
      swift_isUniquelyReferenced_nonNull_native();
      v73 = v15;
      v35 = sub_1C0FFE0D8(v72);
      if (__OFADD__(*(v15 + 16), (v36 & 1) == 0))
      {
        goto LABEL_25;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B80, &qword_1C12A6F28);
      if (sub_1C1266B30())
      {
        v39 = sub_1C0FFE0D8(v72);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_27;
        }

        v37 = v39;
      }

      v15 = v73;
      if (v38)
      {
        v41 = (*(v73 + 56) + 16 * v37);
        *v41 = v27;
        v41[1] = v29;
        v41[2] = v31;
        v41[3] = v33;
        v42 = *v69;
        v4 = v54;
        (*v69)(v72, v54);
        v11 = v22;
        v42(v22, v4);
      }

      else
      {
        *(v73 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        v43 = v72;
        v44 = v54;
        v68(*(v15 + 48) + v37 * v67, v72, v54);
        v45 = (*(v15 + 56) + 16 * v37);
        v4 = v44;
        *v45 = v27;
        v45[1] = v29;
        v45[2] = v31;
        v45[3] = v33;
        v46 = *v69;
        (*v69)(v43, v4);
        v11 = v22;
        (v46)(v22, v4);
        v47 = *(v15 + 16);
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_26;
        }

        *(v15 + 16) = v49;
      }

      ++v14;
      v0 = v34;
      v5 = v52;
      v13 = v53;
      if (v62 == v14)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_1C1266DA0();
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC8];
LABEL_21:
    off_1EDE82ED8 = v15;
  }

  return result;
}

unint64_t sub_1C0FFE000(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v2 != 4)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  v3 = sub_1C1266EE0();

  return sub_1C0FFE310(v1, v3);
}

unint64_t sub_1C0FFE094(uint64_t a1)
{
  v2 = sub_1C12668B0();

  return sub_1C0FFE394(a1, v2);
}

unint64_t sub_1C0FFE0D8(uint64_t a1)
{
  sub_1C12629F0();
  sub_1C0FFEB08(&qword_1EDE7C040, MEMORY[0x1E697DBE0]);
  v2 = sub_1C1265D20();

  return sub_1C0FFE458(a1, v2);
}

uint64_t sub_1C0FFE15C(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_12();
  sub_1C1265EF0();
  sub_1C0FD0300();
  v2 = sub_1C1266EE0();

  return sub_1C0FFE600(a1, v2);
}

unint64_t sub_1C0FFE1CC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_0_12();
  MEMORY[0x1C68F07E0](v1);
  v2 = sub_1C1266EE0();

  return sub_1C0FFE8D4(v1, v2);
}

uint64_t sub_1C0FFE288(uint64_t (*a1)(_BYTE *, double, double), uint64_t (*a2)(uint64_t, __n128, __n128), double a3, double a4)
{
  OUTLINED_FUNCTION_0_12();
  a1(v12, a3, a4);
  v7 = sub_1C1266EE0();
  v8.n128_f64[0] = a3;
  v9.n128_f64[0] = a4;

  return a2(v7, v8, v9);
}

unint64_t sub_1C0FFE310(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 4)
      {
        if (a1 == 4)
        {
          return result;
        }
      }

      else if (v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C0FFE394(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C0FF4B88(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1C68F0200](v8, a1);
    sub_1C0FD1A08(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C0FFE458(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1C12629F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1C0FFEB08(&qword_1EDE7C038, MEMORY[0x1E697DBE8]);
    v10 = sub_1C1265DE0();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C0FFE600(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = v2;
  v8 = ~v4;
  v9 = *a1;
  v10 = a1[1];
  v16 = v10;
  v17 = *a1;
  while (1)
  {
    sub_1C0FF8B74(*(v6 + 48) + 48 * v5, v25);
    v11 = v25[0] == v9 && v25[1] == v10;
    if (!v11 && (sub_1C1266D50() & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1C0FA139C(v26, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90068, &qword_1C12A26A0);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_1C0F9DDE4(v23, v22);
    sub_1C0FA139C((a1 + 2), v20);
    if (swift_dynamicCast())
    {
      sub_1C0F9DDE4(v18, v21);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v9 = v17;
      v10 = v16;
      sub_1C0FD0164();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      if (v13)
      {
        sub_1C0FD0978(v25);
        return v5;
      }
    }

    else
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_1C0FFEAA0(v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

LABEL_13:
    sub_1C0FD0978(v25);
    v5 = (v5 + 1) & v8;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1C1266940();

  v22[0] = 0xD00000000000001CLL;
  v22[1] = 0x80000001C1269300;
  sub_1C0FA139C(v26, v23);
  v15 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v15);

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

unint64_t sub_1C0FFE8D4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C0FFE934(uint64_t a1, double a2, double a3)
{
  v4 = ~(-1 << *(v3 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C0FFE9D8(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1C0FFEA50(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C68F0810](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C68F0810](*&v3);
}

uint64_t sub_1C0FFEAA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90070, &qword_1C12A26A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0FFEB08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C12629F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhotosClipStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t ScrollViewGeometryChangeHandler.init(evaluationBlock:changeBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1C0FFEBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable();

  return sub_1C1265770();
}

uint64_t sub_1C0FFEC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(255, *(a1 + 32), *(a1 + 56), a4);
  sub_1C1265790();
  sub_1C1265750();
  return v5;
}

__n128 PhotosItemsRow.init(data:numberOfPrefixedItems:id:cols:rows:contentMarginEdges:clipStyle:itemAlignment:scrollViewModel:scrollViewAccessibilityIdentifier:draggingDelegate:geometryChangeHandler:useSpecialLayout129639946:itemTransition:shouldUseCustomLazyLayout:zIndexProvider:itemView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v51 = *a4;
  v29 = *(a4 + 2);
  v30 = *a7;
  v31 = *(*a11 + 88);
  v32 = *(*a3 + *MEMORY[0x1E69E77B0]);
  __src[0] = a23;
  *&__src[1] = v32;
  __src[3] = a24;
  __src[4] = a25;
  __src[5] = v31;
  __src[6] = a26;
  v33 = type metadata accessor for PhotosItemsRow(0, __src);
  v34 = a9 + v33[32];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  v35 = a9 + v33[33];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = a9 + v33[34];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = v33[35];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v37), __src, 0xD1uLL);
  v38 = a9 + v33[36];
  *v38 = swift_getKeyPath();
  *(v38 + 8) = 0;
  v39 = *(a23 - 8);
  (*(v39 + 16))(a9, a1, a23);
  *(a9 + v33[19]) = a2;
  *(a9 + v33[20]) = a3;
  v40 = a9 + v33[21];
  *v40 = v51;
  *(v40 + 16) = v29;
  *(a9 + v33[22]) = a5;
  *(a9 + v33[23]) = a6;
  *(a9 + v33[37]) = v30;
  v41 = (a9 + v33[38]);
  *v41 = a8;
  v41[1] = a10;
  sub_1C0FFEBF0(a11, v42, v43, v44);
  (*(v39 + 8))(a1, a23);
  v45 = (a9 + v33[25]);
  *v45 = a12;
  v45[1] = a13;
  sub_1C0F9DDE4(a14, a9 + v33[26]);
  v46 = (a9 + v33[27]);
  result = *a15;
  v48 = *(a15 + 16);
  *v46 = *a15;
  v46[1] = v48;
  *(a9 + v33[28]) = a16;
  *(a9 + v33[29]) = a17;
  *(a9 + v33[39]) = a18;
  v49 = (a9 + v33[30]);
  *v49 = a19;
  v49[1] = a20;
  v50 = (a9 + v33[31]);
  *v50 = a21;
  v50[1] = a22;
  return result;
}

double sub_1C0FFF024(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 128);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v14 = sub_1C1001C04(v9, v8, v11, v10, 0);
  (*(v4 + 8))(v6, v3, v14);
  return v15;
}

void sub_1C0FFF1AC()
{
  OUTLINED_FUNCTION_35();
  *v0 = EnvironmentValues.photosLayoutMargins.getter();
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
}

double sub_1C0FFF204(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 132));
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
  sub_1C0FA03F4(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

double sub_1C0FFF3A8(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 136));
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
  sub_1C0FA03F4(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C0FFF54C(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 144);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C0FFF6A0()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosIsUsingTwoColumnShelf.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C0FFF6F4(uint64_t a1)
{
  v26 = *(a1 + 16);
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - v6;
  v7 = sub_1C1265810();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FFF204(a1);
  sub_1C1265940();
  *v10 = xmmword_1C12A3450;
  (*(v8 + 104))(v10, *MEMORY[0x1E697D748], v7);
  sub_1C1265830();
  v14 = *(v1 + *(a1 + 88));
  v15 = v24;
  sub_1C0FFF978(v24, v4, a1);
  v16 = *(v25 + 8);
  v17 = v15;
  v18 = v26;
  v16(v17, v26);
  v19 = v18;
  v20 = sub_1C12662E0();
  v16(v4, v19);
  if (v20 >= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20;
  }

  return sub_1C12478D4(v13, v21);
}

void sub_1C0FFF978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a1;
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v48 - v6;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = *(v3 + *(a3 + 76));
  v16 = sub_1C12662E0();
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v56 = v17;
  v53 = v8;
  (*(v8 + 16))(v11, v3, v5);
  v50 = v15;
  sub_1C1266360();
  v51 = *(swift_getAssociatedConformanceWitness() + 8);
  v52 = v7;
  v58 = sub_1C12661C0();
  sub_1C12661A0();
  swift_dynamicCast();
  sub_1C0FFEC90(a3, v18, v19, v20);
  v21 = sub_1C111EB24();

  if ((v21 & 1) == 0)
  {
    v47 = sub_1C12662E0();
    if (v47 >= v56)
    {
      v58 = v56;
      v59 = v47;
      sub_1C1266390();
      v58 = sub_1C12661C0();
      swift_dynamicCast();
      v46 = v55;
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v25 = (v3 + *(a3 + 84));
  v26 = v25[1];
  v27 = v25[2];
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = v50;
  v30 = v50 * v28;
  if ((v50 * v28) >> 64 != (v50 * v28) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = *v25;
  v32 = __OFSUB__(v31, v30);
  v33 = v31 - v30;
  if (v32)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = round(v33 / v26);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v49 = v14;
  v35 = v34;
  v36 = sub_1C0FFFE20(a3, v22, v23, v24);
  v37 = *(v3 + *(a3 + 88));
  v38 = v37 * v35;
  if ((v37 * v35) >> 64 != (v37 * v35) >> 63)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v36)
  {
    v39 = v28;
  }

  else
  {
    v39 = 0;
  }

  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    goto LABEL_36;
  }

  v41 = sub_1C12662E0();
  v42 = v41 - v29;
  if (__OFSUB__(v41, v29))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v42 >= v40)
  {
    v42 = v40;
  }

  v32 = __OFADD__(v29, v42);
  v43 = v29 + v42;
  if (v32)
  {
    goto LABEL_38;
  }

  v44 = sub_1C12662E0();
  if (v44 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v44;
  }

  if (v45 >= v56)
  {
    v58 = v56;
    v59 = v45;
    sub_1C1266390();
    v58 = sub_1C12661C0();
    swift_dynamicCast();
    v46 = v55;
    v14 = v49;
LABEL_27:
    (*(v53 + 32))(v46, v14, v5);
    return;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1C0FFFDD4(uint64_t result)
{
  if (*(v1 + *(result + 76)) == 1)
  {
    return 1;
  }

  v2 = (v1 + *(result + 84));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    if (v4 != 0x8000000000000000 || v3 != -1)
    {
      return v4 / v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1C0FFFE20(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (*(v4 + a1[28]) == 1)
  {
    sub_1C0FFEC90(a1, a2, a3, a4);
    v6 = sub_1C111EB24();

    if ((v6 & 1) != 0 && *(v4 + a1[19]) == 1 && sub_1C12662E0() >= 2 && *(v4 + a1[22]) > 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t PhotosItemsRow.body.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v257 = a2;
  v3 = sub_1C12643C0();
  v4 = OUTLINED_FUNCTION_15(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v255 = v5;
  OUTLINED_FUNCTION_49();
  v265 = sub_1C12643E0();
  OUTLINED_FUNCTION_0();
  v256 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v254 = v8;
  OUTLINED_FUNCTION_49();
  sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v252 = v10;
  v253 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v251 = v11;
  OUTLINED_FUNCTION_49();
  sub_1C1264160();
  OUTLINED_FUNCTION_0();
  v249 = v13;
  v250 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v248 = v14;
  OUTLINED_FUNCTION_49();
  sub_1C1264200();
  OUTLINED_FUNCTION_0();
  v246 = v16;
  v247 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v245 = v17;
  v262 = *(a1 - 1);
  v243 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v241 = a1;
  v242 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 2);
  v20 = *(a1 + 3);
  v22 = *(a1 + 5);
  v268 = *(a1 + 4);
  v264 = v22;
  v24 = *(a1 + 6);
  v23 = *(a1 + 7);
  v263 = *(a1 + 8);
  v271[0] = v21;
  v271[1] = v20;
  v25 = v20;
  v271[2] = v268;
  v271[3] = v22;
  v271[4] = v24;
  v271[5] = v23;
  v26 = v23;
  v271[6] = v263;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, v271);
  v27 = sub_1C1263190();
  OUTLINED_FUNCTION_4_11();
  WitnessTable = swift_getWitnessTable();
  v258 = sub_1C1001354();
  v270[50] = WitnessTable;
  v270[51] = v258;
  v259 = MEMORY[0x1E697E858];
  v29 = swift_getWitnessTable();
  v266 = v21;
  v271[0] = v21;
  v271[1] = v25;
  v260 = v25;
  v261 = v24;
  v30 = v268;
  v271[2] = v268;
  v271[3] = v27;
  v271[4] = v24;
  v271[5] = v26;
  v267 = v26;
  v271[6] = v29;
  v238 = type metadata accessor for PhotosDraggableForEach(255, v271);
  OUTLINED_FUNCTION_52();
  v31 = sub_1C1263190();
  v270[48] = v29;
  v270[49] = v258;
  v32 = swift_getWitnessTable();
  v271[0] = v21;
  v271[1] = v25;
  v271[2] = v30;
  v271[3] = v31;
  v271[4] = v24;
  v271[5] = v26;
  v271[6] = v32;
  type metadata accessor for PhotosDraggableForEach(255, v271);
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_9();
  v33 = swift_getWitnessTable();
  v270[46] = v25;
  v270[47] = v33;
  OUTLINED_FUNCTION_19_0();
  v258 = v34;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v35 = sub_1C12628C0();
  v240 = MEMORY[0x1E697DA78];
  v36 = swift_getWitnessTable();
  v271[0] = v35;
  v271[1] = v36;
  OUTLINED_FUNCTION_17_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v239 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88, &qword_1C12A7008);
  sub_1C12652C0();
  OUTLINED_FUNCTION_15_10();
  sub_1C0FDB6D4(v37, &qword_1EBE90B88, &qword_1C12A7008, v38);
  v39 = sub_1C1262E70();
  OUTLINED_FUNCTION_13_7();
  v42 = sub_1C0FDB6D4(v40, &qword_1EBE90B88, &qword_1C12A7008, v41);
  v270[45] = v25;
  OUTLINED_FUNCTION_2_11();
  v43 = swift_getWitnessTable();
  v270[43] = v42;
  v270[44] = v43;
  OUTLINED_FUNCTION_12_0();
  v44 = swift_getWitnessTable();
  v271[0] = v39;
  v271[1] = v44;
  OUTLINED_FUNCTION_38_2(v44, v271);
  OUTLINED_FUNCTION_37();
  v45 = sub_1C1265AB0();
  OUTLINED_FUNCTION_11_9();
  v46 = swift_getWitnessTable();
  v271[0] = v45;
  v271[1] = v46;
  OUTLINED_FUNCTION_38_2(v46, v271);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12628C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_42_3();
  v47 = sub_1C1263C30();
  v48 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v51 = sub_1C0FDB6D4(v49, &qword_1EBE91C40, &unk_1C12A7010, v50);
  v270[41] = v48;
  v270[42] = v51;
  v270[39] = swift_getWitnessTable();
  v270[40] = v48;
  v238 = v47;
  v237 = swift_getWitnessTable();
  v53 = type metadata accessor for PhotosTestableScrollView(255, v47, v237, v52);
  OUTLINED_FUNCTION_26_1();
  v54 = swift_getWitnessTable();
  v271[0] = v53;
  v271[1] = MEMORY[0x1E69E6370];
  v271[2] = v54;
  v271[3] = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v231 = v53;
  v55 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v240 = v56;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_34();
  v235 = v58;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90, &qword_1C12A9910);
  OUTLINED_FUNCTION_52();
  v234 = v55;
  sub_1C1263190();
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(255, v268, v267, v59);
  sub_1C1263190();
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(255);
  OUTLINED_FUNCTION_11_0();
  v232 = sub_1C1263190();
  v60 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v239 = v61;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_34();
  v233 = v63;
  v271[0] = v53;
  v271[1] = MEMORY[0x1E69E6370];
  v226 = v54;
  v271[2] = v54;
  v271[3] = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v270[37] = OpaqueTypeConformance2;
  v270[38] = v54;
  v64 = swift_getWitnessTable();
  v258 = v64;
  OUTLINED_FUNCTION_24();
  v67 = sub_1C0FDB6D4(v65, &qword_1EBE90B90, &qword_1C12A9910, v66);
  v270[35] = v64;
  v270[36] = v67;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_9();
  v68 = swift_getWitnessTable();
  v270[33] = v64;
  v270[34] = v68;
  v69 = swift_getWitnessTable();
  OUTLINED_FUNCTION_23_2();
  v72 = sub_1C100873C(v70, v71, &unk_1C12A9AE4);
  v270[31] = v69;
  v270[32] = v72;
  v270[29] = swift_getWitnessTable();
  v270[30] = v67;
  v73 = swift_getWitnessTable();
  v271[0] = v60;
  v271[1] = v73;
  OUTLINED_FUNCTION_21_1();
  v74 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v229 = v75;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_34();
  v225 = v77;
  v259 = v60;
  v271[0] = v60;
  v220 = v73;
  v271[1] = v73;
  v78 = OUTLINED_FUNCTION_36_1();
  v271[0] = v74;
  v271[1] = v78;
  OUTLINED_FUNCTION_20_8();
  v79 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v228 = v80;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_34();
  v223 = v82;
  v232 = v74;
  v271[0] = v74;
  v216 = v78;
  v271[1] = v78;
  v83 = OUTLINED_FUNCTION_36_1();
  v271[0] = v79;
  v271[1] = v83;
  OUTLINED_FUNCTION_18_6();
  v84 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v222 = v85;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_34();
  v217 = v87;
  v230 = v79;
  v271[0] = v79;
  v213 = v83;
  v271[1] = v83;
  v88 = OUTLINED_FUNCTION_36_1();
  v271[0] = v84;
  v89 = v265;
  v271[1] = v265;
  v90 = MEMORY[0x1E697CC08];
  v271[2] = v88;
  v271[3] = MEMORY[0x1E697CC08];
  OUTLINED_FUNCTION_16_8();
  v91 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v215 = v92;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_34();
  v210 = v94;
  v224 = v84;
  v271[0] = v84;
  v271[1] = v89;
  v206 = v88;
  v271[2] = v88;
  v271[3] = v90;
  v95 = OUTLINED_FUNCTION_36_1();
  v219 = v91;
  v271[0] = v91;
  v208 = v95;
  v271[1] = v95;
  v96 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v211 = v97;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_34();
  v205 = v99;
  v101 = type metadata accessor for PhotosScrollPositionModifier(255, v268, v267, v100);
  v214 = v96;
  v207 = v101;
  v221 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v218 = v102;
  MEMORY[0x1EEE9AC00](v103);
  v209 = &v197 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105);
  v212 = &v197 - v106;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v109 = v108;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v197 = &v197 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v197 - v114;
  v117 = v241;
  v118 = v244;
  sub_1C0FFF978(&v197 - v114, &v197 + *(v116 + 48) - v114, v241);
  v119 = (v118 + v117[21]);
  v120 = *v119;
  v200 = v119[1];
  v201 = v120;
  v199 = v119[2];
  v203 = sub_1C1264420();
  v121 = (v118 + v117[25]);
  v123 = *v121;
  v122 = v121[1];
  v202 = v123;
  v198 = v122;
  v124 = v262;
  v125 = v242;
  (*(v262 + 16))(v242, v118, v117);
  v126 = *(v109 + 16);
  v204 = v115;
  v126(&v197 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0), v115, TupleTypeMetadata2);
  v127 = (*(v124 + 80) + 72) & ~*(v124 + 80);
  v128 = (v243 + v127 + *(v109 + 80)) & ~*(v109 + 80);
  v129 = (v111 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = swift_allocObject();
  v131 = v260;
  *(v130 + 2) = v266;
  *(v130 + 3) = v131;
  v132 = v264;
  *(v130 + 4) = v268;
  *(v130 + 5) = v132;
  v133 = v267;
  *(v130 + 6) = v261;
  *(v130 + 7) = v133;
  *(v130 + 8) = v263;
  (*(v262 + 32))(&v130[v127], v125, v117);
  v243 = v109;
  v134 = *(v109 + 32);
  v262 = TupleTypeMetadata2;
  v134(&v130[v128], v197, TupleTypeMetadata2);
  v135 = &v130[v129];
  v136 = v200;
  *v135 = v201;
  *(v135 + 1) = v136;
  v137 = v198;
  *(v135 + 2) = v199;

  PhotosTestableScrollView.init(_:accessibilityIdentifier:content:)(v203, v202, v137, sub_1C1001CF0, v130, v270);
  v138 = *(v118 + v117[27]) != 0;
  v269[2] = v266;
  v269[3] = v260;
  v269[4] = v268;
  v269[5] = v264;
  v269[6] = v261;
  v139 = v267;
  v269[7] = v267;
  v269[8] = v263;
  v269[9] = v118;
  v140 = v231;
  View.onStaticCondition<A>(_:transform:)(v138, sub_1C1005DEC, v269, v231, OpaqueTypeMetadata2, v226, OpaqueTypeConformance2, v235);
  memcpy(v271, v270, 0xE8uLL);
  v141 = v140;
  v142 = v140;
  v143 = v233;
  (*(*(v141 - 8) + 8))(v271, v142);
  sub_1C0FFFDD4(v117);
  OUTLINED_FUNCTION_28();
  v144 = v234;
  View.photosInlinePlaybackScrollViewTracker<A>(itemIDType:colsPerPage:trackItemVisibility:onScrollPhaseDidChange:)(v145, v146, v147, v148, v149, v234, v145, v258, v150, v139);
  v151 = OUTLINED_FUNCTION_47_0();
  v152(v151, v144);
  v153 = v245;
  if (*(v118 + v117[39]) == 1)
  {
    sub_1C12641E0();
  }

  else
  {
    sub_1C12641F0();
  }

  v154 = v259;
  sub_1C1264CB0();
  (*(v246 + 8))(v153, v247);
  (*(v239 + 8))(v143, v154);
  v155 = v248;
  sub_1C1264140();
  v156 = v232;
  sub_1C1005F50();
  v157 = v223;
  sub_1C1264C50();
  (*(v249 + 8))(v155, v250);
  v158 = OUTLINED_FUNCTION_47_0();
  v159(v158, v156);
  v160 = *(v118 + v117[23]);
  v161 = sub_1C0FFF024(v117);
  v163 = v162;
  v165 = v164;
  v167 = v166;
  v168 = v251;
  sub_1C1263E00();
  v169 = v160;
  v170 = v230;
  MEMORY[0x1C68EE490](v169, v168, v230, v213, v161, v163, v165, v167);
  (*(v252 + 8))(v168, v253);
  (*(v228 + 8))(v157, v170);
  sub_1C12643B0();
  v171 = v254;
  sub_1C12643D0();
  v172 = v210;
  v173 = v224;
  v174 = v265;
  sub_1C1264D90();
  (*(v256 + 8))(v171, v174);
  v175 = OUTLINED_FUNCTION_47_0();
  v176(v175, v173);
  sub_1C0FFEC90(v117, v177, v178, v179);
  sub_1C111EB24();

  v180 = v219;
  v181 = v208;
  sub_1C1264B70();
  (*(v215 + 8))(v172, v180);
  v185 = sub_1C0FFEC90(v117, v182, v183, v184);
  v270[0] = v180;
  v270[1] = v181;
  v186 = swift_getOpaqueTypeConformance2();
  v187 = v209;
  v188 = v214;
  View.photosScrollPosition<A>(scrollViewModel:)(v185, v214, v186, v189);

  v190 = OUTLINED_FUNCTION_47_0();
  v191(v190, v188);
  (*(v243 + 8))(v204, v262);
  OUTLINED_FUNCTION_14_7();
  v192 = swift_getWitnessTable();
  v269[10] = v186;
  v269[11] = v192;
  OUTLINED_FUNCTION_4_0();
  v193 = v221;
  swift_getWitnessTable();
  v194 = v212;
  sub_1C0FDBA4C();
  v195 = *(v218 + 8);
  v195(v187, v193);
  sub_1C0FDBA4C();
  return (v195)(v194, v193);
}

unint64_t sub_1C1001354()
{
  result = qword_1EDE7F678;
  if (!qword_1EDE7F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F678);
  }

  return result;
}

uint64_t sub_1C10013A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v80 = a4;
  v81 = a5;
  v78 = a2;
  v79 = a3;
  v77 = a1;
  v82 = a8;
  v74 = a13;
  v73 = a10;
  v15 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v76 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a6;
  v109 = a7;
  v110 = a9;
  v111 = a10;
  v112 = a11;
  v113 = a12;
  v114 = a13;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v108);
  v17 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v67 = sub_1C1001354();
  v106 = WitnessTable;
  v107 = v67;
  v75 = MEMORY[0x1E697E858];
  v19 = swift_getWitnessTable();
  v71 = a7;
  v72 = a6;
  v108 = a6;
  v109 = a7;
  v110 = a9;
  v111 = v17;
  v69 = a9;
  v70 = a11;
  v112 = a11;
  v113 = a12;
  v68 = a12;
  v114 = v19;
  v65 = type metadata accessor for PhotosDraggableForEach(255, &v108);
  v20 = sub_1C1263190();
  v104 = v19;
  v105 = v67;
  v21 = swift_getWitnessTable();
  v108 = a6;
  v109 = a7;
  v110 = a9;
  v111 = v20;
  v112 = a11;
  v113 = a12;
  v114 = v21;
  type metadata accessor for PhotosDraggableForEach(255, &v108);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v102 = v22;
  v103 = v23;
  v67 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  v24 = sub_1C12628C0();
  v66 = MEMORY[0x1E697DA78];
  v25 = swift_getWitnessTable();
  v108 = v24;
  v109 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88, &qword_1C12A7008);
  sub_1C12652C0();
  sub_1C0FDB6D4(&qword_1EDE76F38, &qword_1EBE90B88, &qword_1C12A7008, MEMORY[0x1E697F5A0]);
  v26 = sub_1C1262E70();
  v27 = sub_1C0FDB6D4(&qword_1EDE76F30, &qword_1EBE90B88, &qword_1C12A7008, MEMORY[0x1E697F5A8]);
  v101 = v22;
  v28 = swift_getWitnessTable();
  v99 = v27;
  v100 = v28;
  v29 = swift_getWitnessTable();
  v108 = v26;
  v109 = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = sub_1C1265AB0();
  v31 = swift_getWitnessTable();
  v108 = v30;
  v109 = v31;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  v60 = sub_1C1265B00();
  v59 = swift_getWitnessTable();
  v32 = sub_1C12628C0();
  v63 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v58 = &v55 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v62 = sub_1C1263190();
  v34 = sub_1C1263C30();
  v35 = *(v34 - 8);
  v64 = v34;
  v65 = v35;
  MEMORY[0x1EEE9AC00](v34);
  v57 = &v55 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v61 = &v55 - v38;
  v39 = v71;
  v40 = v72;
  v108 = v72;
  v109 = v71;
  v42 = v69;
  v41 = v70;
  v44 = v73;
  v43 = v74;
  v110 = v69;
  v111 = v73;
  v45 = v68;
  v112 = v70;
  v113 = v68;
  v114 = v74;
  v56 = type metadata accessor for PhotosItemsRow(0, &v108);
  v46 = v77;
  v55 = sub_1C0FFF3A8(v56);
  v83 = v40;
  v84 = v39;
  v85 = v42;
  v86 = v44;
  v87 = v41;
  v88 = v45;
  v89 = v43;
  v90 = v46;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  sub_1C12638E0();
  sub_1C1129E3C();
  v47 = v58;
  sub_1C12628B0();
  LOBYTE(v108) = *(v46 + *(v56 + 148));
  v48 = swift_getWitnessTable();
  v49 = v57;
  sub_1C1005084(&v108, v32, v48, v57);
  (*(v63 + 8))(v47, v32);
  v50 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v97 = v48;
  v98 = v50;
  v95 = swift_getWitnessTable();
  v96 = v48;
  v51 = v64;
  swift_getWitnessTable();
  v52 = v61;
  sub_1C0FDBA4C();
  v53 = *(v65 + 8);
  v53(v49, v51);
  sub_1C0FDBA4C();
  return (v53)(v52, v51);
}

double sub_1C1001C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

double sub_1C1001C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a27)
  {

    sub_1C1001C84(a17, a18, a19, a20);
  }

  return result;
}

double sub_1C1001C84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C1001CF0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  OUTLINED_FUNCTION_39_2();
  v20[0] = v7;
  v20[1] = v8;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v9 = type metadata accessor for PhotosItemsRow(0, v20);
  v10 = OUTLINED_FUNCTION_40_1(v9);
  v12 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v15 = OUTLINED_FUNCTION_55(v10, v13, v14, "prefixedData data ");
  OUTLINED_FUNCTION_40_1(v15);
  OUTLINED_FUNCTION_53();
  return sub_1C10013A8(v1 + v12, v1 + v17, *v16, v16[1], v16[2], v7, v8, a1, v2, v3, v4, v5, v6);
}

uint64_t sub_1C1001E24@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v154 = a5;
  v153 = a4;
  v152 = a3;
  v151 = a2;
  v167 = a1;
  v163 = a9;
  v165 = a13;
  v175 = a10;
  v189 = *&a6;
  v190 = a7;
  v145 = a6;
  v191 = a8;
  v192 = a10;
  v180 = a8;
  v193 = a11;
  v194 = a12;
  v179 = a11;
  v176 = a12;
  v195 = a13;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v189);
  v16 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v171 = sub_1C1001354();
  v188[9] = WitnessTable;
  v188[10] = v171;
  v170 = MEMORY[0x1E697E858];
  v169 = swift_getWitnessTable();
  v189 = *&a6;
  v190 = a7;
  v191 = a8;
  v192 = v16;
  v193 = a11;
  v194 = a12;
  v195 = v169;
  v18 = type metadata accessor for PhotosDraggableForEach(255, &v189);
  v19 = sub_1C12652C0();
  v172 = swift_getWitnessTable();
  v188[8] = v172;
  v20 = swift_getWitnessTable();
  *&v21 = COERCE_DOUBLE(sub_1C1265AB0());
  v140 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v139 = v126 - v22;
  *&v23 = COERCE_DOUBLE(swift_getWitnessTable());
  v162 = v21;
  v189 = *&v21;
  v190 = *&v23;
  v174 = *&v23;
  v168 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v143 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v142 = v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v141 = v126 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88, &qword_1C12A7008);
  sub_1C0FDB6D4(&qword_1EDE76F38, &qword_1EBE90B88, &qword_1C12A7008, MEMORY[0x1E697F5A0]);
  *&v28 = COERCE_DOUBLE(sub_1C1262E70());
  v131 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v128 = v126 - v29;
  v188[6] = sub_1C0FDB6D4(&qword_1EDE76F30, &qword_1EBE90B88, &qword_1C12A7008, MEMORY[0x1E697F5A8]);
  v188[7] = v20;
  v138 = v20;
  *&v30 = COERCE_DOUBLE(swift_getWitnessTable());
  v177 = v28;
  v189 = *&v28;
  v190 = *&v30;
  v173 = *&v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v132 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v130 = v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v129 = v126 - v34;
  v155 = v35;
  v161 = OpaqueTypeMetadata2;
  v160 = sub_1C1263C30();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v156 = v126 - v38;
  v166 = v19;
  v157 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v178 = v126 - v40;
  v137 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v137);
  v164 = v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a7;
  v43 = sub_1C1263190();
  v188[4] = v169;
  v188[5] = v171;
  v44 = swift_getWitnessTable();
  v45 = v145;
  v189 = *&v145;
  v190 = a7;
  v46 = v180;
  v191 = v180;
  v192 = v43;
  v47 = v176;
  v193 = v179;
  v194 = v176;
  v195 = v44;
  type metadata accessor for PhotosDraggableForEach(255, &v189);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v48 = v46;
  swift_getWitnessTable();
  sub_1C12655A0();
  v150 = v18;
  sub_1C1263C30();
  v49 = swift_getWitnessTable();
  v188[2] = v172;
  v188[3] = v49;
  swift_getWitnessTable();
  *&v50 = COERCE_DOUBLE(sub_1C12628C0());
  v136 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v134 = v126 - v51;
  *&v52 = COERCE_DOUBLE(swift_getWitnessTable());
  v189 = *&v50;
  v190 = *&v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v146 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v135 = v126 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v133 = v126 - v56;
  v171 = sub_1C1266790();
  v168 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v170 = v126 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v169 = v126 - v59;
  v189 = *&v45;
  v190 = v42;
  v60 = *&v42;
  v191 = v48;
  v192 = v175;
  v193 = v179;
  v194 = v47;
  v61 = v165;
  v195 = v165;
  v62 = type metadata accessor for PhotosItemsRow(0, &v189);
  v144 = v62;
  v63 = *(*&v167 + *(v62 + 76));
  v149 = v50;
  v148 = v52;
  if (v63 < 1)
  {
    v75 = v170;
    __swift_storeEnumTagSinglePayload(v170, 1, 1, v53);
    v189 = *&v50;
    v190 = *&v52;
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    v147 = v60;
    v126[1] = v126;
    MEMORY[0x1EEE9AC00](v62);
    v64 = *&v52;
    v127 = v53;
    v65 = v147;
    v126[-8] = v45;
    v126[-7] = v65;
    v66 = v175;
    v126[-6] = v180;
    v126[-5] = v66;
    v67 = v176;
    v126[-4] = v179;
    v126[-3] = v67;
    v124 = v61;
    v125 = v68;
    sub_1C12638E0();
    sub_1C1129E3C();
    v69 = v134;
    v70 = v127;
    sub_1C12628B0();
    v60 = v147;
    OUTLINED_FUNCTION_15_6();
    v71 = v135;
    sub_1C1264CD0();
    (*(v136 + 8))(v69, v50);
    v189 = *&v50;
    v190 = v64;
    swift_getOpaqueTypeConformance2();
    v72 = v133;
    sub_1C0FDBA4C();
    v73 = v146;
    v74 = v146[1];
    v74(v71, v70);
    sub_1C0FDBA4C();
    v74(v72, v70);
    v75 = v170;
    (v73[4])(v170, v71, v70);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v70);
  }

  sub_1C1170030(v75, v169);
  v76 = *(v168 + 8);
  v147 = v168 + 8;
  v146 = v76;
  v77 = (v76)(v75, v171);
  MEMORY[0x1EEE9AC00](v77);
  v78 = v45;
  v126[-12] = v45;
  v126[-11] = v60;
  v79 = v60;
  v80 = v175;
  v126[-10] = v180;
  v126[-9] = v80;
  v81 = v179;
  v82 = v176;
  v126[-8] = v179;
  v126[-7] = v82;
  v83 = v61;
  v84 = v151;
  v126[-6] = v61;
  v126[-5] = v84;
  v85 = v167;
  v86 = v152;
  *&v126[-4] = v167;
  v126[-3] = v86;
  v124 = v153;
  v125 = v154;
  sub_1C12652B0();
  v87 = v144;
  v88 = v177;
  v89 = v79;
  v90 = v78;
  if (*(*&v85 + *(v144 + 156)) == 1 && (sub_1C0FFF54C(v144) & 1) == 0)
  {
    v100 = *(*&v85 + *(v87 + 88));
    v101 = sub_1C0FFF3A8(v87);
    v102 = sub_1C0FFF204(v87);
    v189 = v101;
    v190 = v102;
    v191 = v100;
    v103 = v180;
    v104 = sub_1C1004B00(&v189, v90, v89, v180, v80, v81, v82, v83);
    v105 = MEMORY[0x1EEE9AC00](v104);
    v126[-8] = v90;
    v126[-7] = v89;
    v126[-6] = v103;
    v126[-5] = v80;
    v126[-4] = v81;
    v126[-3] = v82;
    v124 = v83;
    v125 = v178;
    v106 = v128;
    v107(sub_1C1008784, v105);

    v108 = v173;
    OUTLINED_FUNCTION_15_6();
    v109 = v130;
    sub_1C1264CD0();
    (*(v131 + 8))(v106, v88);
    v189 = *&v88;
    v190 = v108;
    swift_getOpaqueTypeConformance2();
    v110 = v129;
    v111 = v155;
    sub_1C0FDBA4C();
    v112 = *(v132 + 8);
    v112(v109, v111);
    sub_1C0FDBA4C();
    v93 = v162;
    v189 = *&v162;
    v190 = v174;
    swift_getOpaqueTypeConformance2();
    v99 = v156;
    sub_1C1112D68();
    v112(v109, v111);
    v112(v110, v111);
  }

  else
  {
    v172 = sub_1C0FFF6F4(v87);
    v154 = sub_1C12638C0();
    v167 = sub_1C0FFF3A8(v87);
    v189 = MEMORY[0x1E69E7CC0];
    sub_1C100873C(&qword_1EDE7BBA8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BA8, &qword_1C12A7240);
    sub_1C0FDB6D4(&qword_1EDE7B718, &qword_1EBE90BA8, &qword_1C12A7240, MEMORY[0x1E69E6328]);
    v91 = sub_1C1266870();
    MEMORY[0x1EEE9AC00](v91);
    v126[-8] = v78;
    v126[-7] = v89;
    v126[-6] = v180;
    v126[-5] = v80;
    v126[-4] = v81;
    v126[-3] = v82;
    v125 = v178;
    v124 = v138;
    v92 = v139;
    sub_1C1265AA0();
    v93 = v162;
    v94 = v174;
    OUTLINED_FUNCTION_15_6();
    v95 = v142;
    sub_1C1264CD0();
    (*(v140 + 8))(v92, v93);
    v189 = *&v93;
    v190 = v94;
    swift_getOpaqueTypeConformance2();
    v96 = v141;
    v97 = v161;
    sub_1C0FDBA4C();
    v98 = *(v143 + 8);
    v98(v95, v97);
    sub_1C0FDBA4C();
    v189 = *&v177;
    v190 = v173;
    swift_getOpaqueTypeConformance2();
    v99 = v156;
    sub_1C1112E18();
    v98(v95, v97);
    v98(v96, v97);
  }

  v113 = v170;
  v114 = v169;
  v115 = v171;
  (*(v168 + 16))(v170, v169, v171);
  v189 = *&v113;
  v116 = v159;
  v117 = v158;
  v118 = v160;
  (*(v159 + 16))(v158, v99, v160);
  v190 = *&v117;
  v188[0] = v115;
  v188[1] = v118;
  v186 = v149;
  v187 = v148;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v186 = swift_getWitnessTable();
  v183 = v177;
  v184 = v173;
  v119 = swift_getOpaqueTypeConformance2();
  v183 = v93;
  v184 = v174;
  v120 = swift_getOpaqueTypeConformance2();
  v181 = v119;
  v182 = v120;
  v187 = swift_getWitnessTable();
  sub_1C119EE80(&v189, 2, v188);
  v121 = *(v116 + 8);
  v121(v99, v118);
  v122 = v146;
  (v146)(v114, v115);
  v121(v117, v118);
  v122(v113, v115);
  return (*(v157 + 8))(v178, v166);
}

uint64_t sub_1C1003458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a5;
  v32 = a8;
  v33 = a1;
  v34 = a9;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v41);
  v14 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1C1001354();
  v15 = swift_getWitnessTable();
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = v14;
  v45 = a6;
  v46 = a7;
  v30 = a7;
  v47 = v15;
  type metadata accessor for PhotosDraggableForEach(255, &v41);
  v16 = sub_1C1263190();
  v37 = v15;
  v38 = v40;
  v17 = swift_getWitnessTable();
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = v16;
  v45 = a6;
  v46 = a7;
  v47 = v17;
  type metadata accessor for PhotosDraggableForEach(255, &v41);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  v18 = sub_1C1263C30();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = v31;
  v45 = a6;
  v46 = v30;
  v47 = v32;
  v25 = type metadata accessor for PhotosItemsRow(0, &v41);
  sub_1C1003828(v25, v21);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v35 = v26;
  v36 = v27;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v28 = *(v19 + 8);
  v28(v21, v18);
  sub_1C0FDBA4C();
  return (v28)(v24, v18);
}

uint64_t sub_1C1003828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v96 = *(a1 + 48);
  v8 = *(a1 + 64);
  *&v103 = v3;
  *(&v103 + 1) = v4;
  v104 = v6;
  v105 = v5;
  v89 = v8;
  v90 = v5;
  v106 = v96;
  v107 = v7;
  v108 = v8;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v103);
  v9 = sub_1C1263190();
  v10 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v102 = sub_1C1001354();
  v99 = swift_getWitnessTable();
  v100 = v102;
  v11 = swift_getWitnessTable();
  *&v103 = v3;
  *(&v103 + 1) = v4;
  v104 = v6;
  v105 = v10;
  v106 = v96;
  v107 = v7;
  v108 = v11;
  type metadata accessor for PhotosDraggableForEach(255, &v103);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  *&v103 = v3;
  *(&v103 + 1) = v4;
  v91 = v6;
  v92 = v4;
  v104 = v6;
  v105 = v9;
  v82 = v9;
  v106 = v96;
  v107 = v7;
  v93 = v7;
  v81 = v99;
  v108 = v99;
  v12 = type metadata accessor for PhotosDraggableForEach(255, &v103);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  v76 = sub_1C1265B00();
  v75 = swift_getWitnessTable();
  v13 = sub_1C12655A0();
  v80 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v73 - v17;
  v74 = *(a1 - 8);
  v18 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v20 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v3;
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v73 - v26;
  v79 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v77 = &v73 - v31;
  v83 = v32;
  v88 = sub_1C1263C30();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v73 - v33;
  v34 = v85;
  if (sub_1C0FFFE20(a1, v35, v36, v37))
  {
    sub_1C0FFF204(a1);
    MEMORY[0x1EEE9AC00](v38);
    v39 = v91;
    v40 = v92;
    *(&v73 - 8) = v94;
    *(&v73 - 7) = v40;
    v67 = v39;
    v68 = v90;
    v69 = v96;
    v70 = v93;
    v71 = v89;
    v72 = v34;
    sub_1C10A7F5C(v76);
    sub_1C1265590();
    v41 = v83;
    swift_getWitnessTable();
    v42 = v78;
    sub_1C0FDBA4C();
    v43 = v80[1];
    v43(v15, v41);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    v44 = v86;
    sub_1C1112E18();
    v43(v15, v41);
    v43(v42, v41);
  }

  else
  {
    sub_1C0FFF978(v84, v24, a1);
    v45 = v94;
    (*(v21 + 8))(v24, v94);
    v80 = *(v34 + *(a1 + 80));
    sub_1C0FDB0A8(v34 + *(a1 + 104), &v103);
    v46 = *(a1 + 120);
    v75 = *(v34 + *(a1 + 116));
    v47 = *(v34 + v46 + 8);
    v78 = *(v34 + v46);
    v76 = v47;
    v48 = v74;
    (*(v74 + 16))(&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v34, a1);
    v49 = (*(v48 + 80) + 72) & ~*(v48 + 80);
    v50 = swift_allocObject();
    v52 = v91;
    v51 = v92;
    *(v50 + 2) = v45;
    *(v50 + 3) = v51;
    v53 = v89;
    v54 = v90;
    *(v50 + 4) = v52;
    *(v50 + 5) = v54;
    v55 = v96;
    v56 = v93;
    *(v50 + 6) = v96;
    *(v50 + 7) = v56;
    *(v50 + 8) = v53;
    (*(v48 + 32))(&v50[v49], v20, a1);
    v57 = v75;

    v58 = v80;

    v59 = v78;
    v60 = v76;
    sub_1C0FCF1B4(v78, v76);
    sub_1C1039330(v58, 0, &v103, v57, v59, v60, sub_1C10087E4, v29, v50, v45, v82, v55, v56, v81);
    swift_getWitnessTable();
    v61 = v77;
    sub_1C0FDBA4C();
    v62 = *(v79 + 8);
    v62(v29, v12);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    v44 = v86;
    sub_1C1112D68();
    v62(v29, v12);
    v62(v61, v12);
  }

  v63 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v97 = v63;
  v98 = v64;
  v65 = v88;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v87 + 8))(v44, v65);
}

uint64_t sub_1C100423C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v72 = a4;
  v73 = a5;
  v70 = a1;
  v71 = a3;
  v65 = a2;
  v74 = a9;
  *&v78 = a6;
  *(&v78 + 1) = a7;
  v79 = a8;
  v80 = a10;
  v63 = a10;
  v81 = a11;
  v82 = a12;
  v83 = a13;
  v64 = a13;
  v16 = type metadata accessor for PhotosItemsRow(0, &v78);
  v68 = *(v16 - 1);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v52 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v58 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v75 = &v52 - v18;
  *&v78 = a6;
  *(&v78 + 1) = a7;
  v56 = a7;
  v79 = a8;
  v80 = a10;
  v53 = a8;
  v81 = a11;
  v82 = a12;
  v55 = a12;
  v83 = a13;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v78);
  v19 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1C1001354();
  v76 = WitnessTable;
  v77 = v21;
  v61 = v19;
  v60 = swift_getWitnessTable();
  *&v78 = a6;
  *(&v78 + 1) = a7;
  v22 = a6;
  v79 = a8;
  v80 = v19;
  v81 = a11;
  v82 = a12;
  v83 = v60;
  v54 = type metadata accessor for PhotosDraggableForEach(0, &v78);
  v67 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v62 = &v52 - v26;
  v27 = TupleTypeMetadata2;
  (*(v58 + 16))(v75, v70, TupleTypeMetadata2, v25);
  v70 = *(v27 + 48);
  v28 = v65;
  TupleTypeMetadata2 = *(v65 + v16[20]);
  sub_1C0FDB0A8(v65 + v16[26], &v78);
  v29 = v16[30];
  v52 = *(v28 + v16[29]);
  v30 = v28;
  v31 = *(v28 + v29 + 8);
  v58 = *(v28 + v29);
  v32 = v68;
  v33 = v66;
  (*(v68 + 16))(v66, v30, v16);
  v34 = (*(v32 + 80) + 72) & ~*(v32 + 80);
  v35 = (v69 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v56;
  *(v36 + 2) = v22;
  *(v36 + 3) = v37;
  v38 = v63;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  *(v36 + 6) = a11;
  v39 = v55;
  v40 = v64;
  *(v36 + 7) = v55;
  *(v36 + 8) = v40;
  (*(v32 + 32))(&v36[v34], v33, v16);
  v41 = &v36[v35];
  v42 = v72;
  *v41 = v71;
  v41[1] = v42;
  v41[2] = v73;
  v43 = v52;

  v44 = TupleTypeMetadata2;

  v45 = v58;
  sub_1C0FCF1B4(v58, v31);
  v46 = v75;
  v47 = v57;
  sub_1C1039330(v44, 0, &v78, v43, v45, v31, sub_1C1008CD0, v57, v36, v22, v61, a11, v39, v60);
  (*(*(v22 - 8) + 8))(v46, v22);
  v48 = v54;
  swift_getWitnessTable();
  v49 = v62;
  sub_1C0FDBA4C();
  v50 = *(v67 + 8);
  v50(v47, v48);
  sub_1C0FDBA4C();
  return (v50)(v49, v48);
}

uint64_t sub_1C10047F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a3;
  v47 = a4;
  v48 = a2;
  v43 = a1;
  v45 = a6;
  v38 = a10;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v14;
  v50 = v15;
  v16 = v14;
  v41 = v14;
  v42 = v17;
  v51 = v17;
  v52 = v18;
  v19 = v17;
  v20 = v18;
  v39 = v18;
  v40 = a8;
  v53 = a8;
  v54 = a9;
  v55 = v21;
  v22 = type metadata accessor for PhotosItemsRow.ItemContainerView(0, &v49);
  v44 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v49 = v16;
  v50 = a5;
  v51 = v19;
  v52 = v20;
  v53 = a8;
  v54 = a9;
  v25 = v38;
  v55 = v38;
  v26 = type metadata accessor for PhotosItemsRow(0, &v49);
  v27 = (v48 + *(v26 + 124));
  v28 = *v27;
  v29 = v27[1];
  (*(v11 + 16))(v13, v43, a5);
  sub_1C1004A6C(v28, v29, v13, v41, a5, v42, v39, v40, v24, a9, v25);

  LOBYTE(v25) = sub_1C1264420();
  v30 = v48;
  v31 = sub_1C0FFF3A8(v26);
  v32 = (v30 + *(v26 + 152));
  v33 = *v32;
  v34 = v32[1];
  WitnessTable = swift_getWitnessTable();
  View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v25, v46, v47, v33, v34, v22, WitnessTable, v31);
  return (*(v44 + 8))(v24, v22);
}

uint64_t sub_1C1004A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a10;
  v16[6] = a11;
  v14 = type metadata accessor for PhotosItemsRow.ItemContainerView(0, v16);
  return (*(*(a5 - 8) + 32))(&a9[*(v14 + 76)], a3, a5);
}

uint64_t (*sub_1C1004B00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  v18[9] = v15;
  v18[10] = v16;
  v18[11] = v17;
  return sub_1C1008AFC;
}

uint64_t sub_1C1004BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double a9@<D0>, double a10@<D1>, uint64_t x8_0@<X8>, uint64_t a11, uint64_t a12)
{
  v33 = a9;
  v34 = a10;
  v35 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a11;
  v32 = a12;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v26);
  v20 = sub_1C1263190();
  swift_getWitnessTable();
  sub_1C1001354();
  WitnessTable = swift_getWitnessTable();
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = v20;
  v30 = a8;
  v31 = a11;
  v32 = WitnessTable;
  type metadata accessor for PhotosDraggableForEach(255, &v26);
  v22 = sub_1C12652C0();
  v23 = sub_1C1008B38();
  swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  return sub_1C1004D30(a1, a2, &type metadata for PhotosLazyHGrid, v22, v23, v24, x8_0);
}

uint64_t sub_1C1004D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1263A00();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  MEMORY[0x1C68ED350](v15, a3, a5);
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1C1262E80();
}

uint64_t sub_1C1004ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v23);
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_4_11();
  v22[1] = swift_getWitnessTable();
  v22[2] = sub_1C1001354();
  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v13;
  v27 = a6;
  v28 = a7;
  v29 = WitnessTable;
  type metadata accessor for PhotosDraggableForEach(255, &v23);
  v15 = sub_1C12652C0();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v22 - v19;
  OUTLINED_FUNCTION_3_2();
  v22[0] = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v17 + 8))(v20, v15);
}

uint64_t sub_1C1005084@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v45 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v15 = sub_1C1263190();
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = sub_1C1263C30();
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v42 = &v39 - v22;
  if (*v41)
  {
    sub_1C0FDBA4C();
    sub_1C0FDBA4C();
    v23 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
    v52 = a3;
    v53 = v23;
    swift_getWitnessTable();
    v24 = v42;
    sub_1C1112E18();
    v25 = *(v6 + 8);
    v25(v8, a2);
    v25(v11, a2);
  }

  else
  {
    v26 = *(v12 + 20);
    v27 = *MEMORY[0x1E697F468];
    v28 = sub_1C12639D0();
    (*(*(v28 - 8) + 104))(&v14[v26], v27, v28);
    __asm { FMOV            V0.2D, #10.0 }

    *v14 = _Q0;
    sub_1C100873C(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    sub_1C1009334();
    sub_1C1265050();
    sub_1C100867C(v14);
    v34 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
    v46 = a3;
    v47 = v34;
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v35 = *(v40 + 8);
    v35(v17, v15);
    sub_1C0FDBA4C();
    v24 = v42;
    sub_1C1112D68();
    v35(v17, v15);
    v35(v20, v15);
  }

  v36 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v50 = a3;
  v51 = v36;
  WitnessTable = swift_getWitnessTable();
  v49 = a3;
  v37 = v44;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v43 + 8))(v24, v37);
}

double sub_1C1005618@<D0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v68 = a8;
  v69 = a5;
  v70 = a7;
  v61 = a6;
  v62 = a2;
  v66 = a3;
  v64 = a9;
  v67 = a10;
  v91[0] = a3;
  v91[1] = a4;
  v65 = a4;
  v91[2] = a5;
  v91[3] = a6;
  v91[4] = a7;
  v91[5] = a8;
  v91[6] = a10;
  v13 = type metadata accessor for PhotosItemsRow(0, v91);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  memcpy(v91, a1, 0xE8uLL);
  v60 = *(v14 + 16);
  v60(v16, a2, v13);
  v17 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v63 = v18;
  v18[2] = v66;
  v18[3] = a4;
  v19 = v70;
  v20 = v61;
  v18[4] = v69;
  v18[5] = v20;
  v21 = v67;
  v22 = v68;
  v18[6] = v19;
  v18[7] = v22;
  v18[8] = v21;
  v23 = *(v14 + 32);
  v58 = v13;
  v59 = v23;
  v23(v18 + v17, v16, v13);
  v60(v16, v62, v13);
  v24 = swift_allocObject();
  v62 = v24;
  v25 = v65;
  v26 = v66;
  v24[2] = v66;
  v24[3] = v25;
  v27 = v70;
  v24[4] = v69;
  v24[5] = v20;
  v29 = v67;
  v28 = v68;
  v24[6] = v27;
  v24[7] = v28;
  v24[8] = v29;
  v59(v24 + v17, v16, v58);
  v84 = v26;
  v85 = v25;
  v30 = v69;
  v86 = v69;
  v87 = v20;
  v88 = v27;
  v89 = v28;
  v90 = v29;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v84);
  v31 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1C1001354();
  v82 = WitnessTable;
  v83 = v33;
  v67 = MEMORY[0x1E697E858];
  v34 = swift_getWitnessTable();
  v84 = v26;
  v35 = v26;
  v36 = v65;
  v85 = v65;
  v86 = v30;
  v37 = v30;
  v38 = v70;
  v87 = v31;
  v88 = v70;
  v89 = v28;
  v90 = v34;
  v61 = type metadata accessor for PhotosDraggableForEach(255, &v84);
  v39 = sub_1C1263190();
  v80 = v34;
  v81 = v33;
  v40 = swift_getWitnessTable();
  v84 = v35;
  v85 = v36;
  v86 = v37;
  v87 = v39;
  v88 = v38;
  v89 = v28;
  v90 = v40;
  type metadata accessor for PhotosDraggableForEach(255, &v84);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v78 = v41;
  v79 = v42;
  v70 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  v43 = sub_1C12628C0();
  v69 = MEMORY[0x1E697DA78];
  v44 = swift_getWitnessTable();
  v84 = v43;
  v85 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B88, &qword_1C12A7008);
  sub_1C12652C0();
  sub_1C0FDB6D4(&qword_1EDE76F38, &qword_1EBE90B88, &qword_1C12A7008, MEMORY[0x1E697F5A0]);
  v45 = sub_1C1262E70();
  v46 = sub_1C0FDB6D4(&qword_1EDE76F30, &qword_1EBE90B88, &qword_1C12A7008, MEMORY[0x1E697F5A8]);
  v77 = v41;
  v47 = swift_getWitnessTable();
  v75 = v46;
  v76 = v47;
  v48 = swift_getWitnessTable();
  v84 = v45;
  v85 = v48;
  swift_getOpaqueTypeMetadata2();
  v49 = sub_1C1265AB0();
  v50 = swift_getWitnessTable();
  v84 = v49;
  v85 = v50;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12628C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  v51 = sub_1C1263C30();
  v52 = swift_getWitnessTable();
  v53 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v73 = v52;
  v74 = v53;
  v71 = swift_getWitnessTable();
  v72 = v52;
  v54 = swift_getWitnessTable();
  type metadata accessor for PhotosTestableScrollView(0, v51, v54, v55);
  swift_getWitnessTable();
  sub_1C1264DE0();

  return result;
}

void sub_1C1005E20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a10;
  v12 = *(a2 + *(type metadata accessor for PhotosItemsRow(0, v15) + 108));
  if (v12)
  {

    v13 = v12(a1);

    v14 = v13 & 1;
  }

  else
  {
    v14 = 0;
  }

  *a9 = v14;
}

double sub_1C1005EC0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *a1;
  v11 = *a2;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a8;
  v15[5] = a9;
  v15[6] = a10;
  v12 = (a3 + *(type metadata accessor for PhotosItemsRow(0, v15) + 108));
  if (*v12)
  {
    v14 = v12[2];

    v14(v10, v11);
  }

  return result;
}

uint64_t sub_1C1005F50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0, &unk_1C12BDB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v1 = sub_1C1264440();
  *(inited + 32) = v1;
  v2 = sub_1C1264420();
  *(inited + 33) = v2;
  v3 = sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v1)
  {
    v3 = sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v2)
  {
    return sub_1C1264430();
  }

  return v3;
}

uint64_t sub_1C1006024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v51 = a1;
  v52 = a2;
  v46 = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  v54 = v14;
  v47 = v13;
  v48 = v15;
  v55 = v15;
  v56 = v16;
  v17 = v15;
  v18 = v16;
  v49 = v16;
  v50 = v19;
  v57 = v19;
  v58 = v20;
  v21 = v19;
  v59 = a7;
  v22 = type metadata accessor for PhotosItemsRow.ItemContainerView(0, &v53);
  v23 = *(v22 - 8);
  v44 = v22;
  v45 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - v24;
  v53 = a3;
  v54 = a4;
  v55 = v17;
  v56 = v18;
  v57 = v21;
  v58 = a5;
  v59 = a7;
  v26 = type metadata accessor for PhotosItemsRow(0, &v53);
  v27 = (v52 + v26[31]);
  v28 = *v27;
  v29 = v27[1];
  (*(v10 + 16))(v12, v51, a4);
  v30 = v52;
  sub_1C1004A6C(v28, v29, v12, v47, a4, v48, v49, v50, v25, a5, a7);

  result = sub_1C1264420();
  v32 = (v30 + v26[21]);
  v33 = v32[1];
  v34 = v32[2];
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
  }

  else
  {
    v36 = result;
    v37 = *v32;
    v38 = sub_1C0FFF3A8(v26);
    v39 = (v30 + v26[38]);
    v40 = *v39;
    v41 = v39[1];
    v42 = v44;
    WitnessTable = swift_getWitnessTable();
    View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v36, v37, v35, v40, v41, v42, WitnessTable, v38);
    return (*(v45 + 8))(v25, v42);
  }

  return result;
}

uint64_t sub_1C10062AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v62 = a8;
  v72 = a3;
  v73 = a5;
  v64 = a1;
  v67 = a9;
  v94 = a2;
  v95 = a3;
  v70 = a2;
  v71 = a4;
  v96 = a4;
  v97 = a5;
  v98 = a6;
  v99 = a7;
  v100 = a8;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v94);
  v14 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C1001354();
  v93[4] = WitnessTable;
  v93[5] = v16;
  v74 = MEMORY[0x1E697E858];
  v17 = swift_getWitnessTable();
  v94 = a2;
  v95 = a3;
  v96 = a4;
  v97 = v14;
  v18 = a6;
  v98 = a6;
  v99 = a7;
  v100 = v17;
  type metadata accessor for PhotosDraggableForEach(255, &v94);
  swift_getTupleTypeMetadata2();
  v61 = sub_1C1265B00();
  v60 = swift_getWitnessTable();
  v19 = sub_1C12654C0();
  v20 = *(v19 - 8);
  v65 = v19;
  v66 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v53 - v23;
  v24 = sub_1C1263190();
  v93[2] = v17;
  v93[3] = v16;
  v25 = swift_getWitnessTable();
  v27 = v70;
  v26 = v71;
  v28 = v72;
  v94 = v70;
  v95 = v72;
  v96 = v71;
  v97 = v24;
  v29 = v18;
  v98 = v18;
  v99 = a7;
  v100 = v25;
  type metadata accessor for PhotosDraggableForEach(255, &v94);
  swift_getTupleTypeMetadata2();
  v30 = sub_1C1265B00();
  v58 = swift_getWitnessTable();
  v69 = sub_1C12654C0();
  v56 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v74 = &v53 - v33;
  v94 = v27;
  v95 = v28;
  v34 = v28;
  v35 = v73;
  v96 = v26;
  v97 = v73;
  v98 = v18;
  v99 = a7;
  v36 = v62;
  v100 = v62;
  v54 = type metadata accessor for PhotosItemsRow(0, &v94);
  v37 = v64;
  v57 = sub_1C0FFF3A8(v54);
  v83 = v27;
  v84 = v34;
  v85 = v26;
  v86 = v35;
  v87 = v29;
  v88 = a7;
  v89 = v36;
  v90 = v37;
  v38 = v36;
  sub_1C1012734(v30);
  v39 = v68;
  sub_1C12654B0();
  v40 = v69;
  v55 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v41 = v56;
  v57 = *(v56 + 8);
  v58 = v56 + 8;
  (*&v57)(v39, v40);
  sub_1C0FFF3A8(v54);
  v75 = v70;
  v76 = v72;
  v77 = v71;
  v78 = v73;
  v79 = v29;
  v80 = a7;
  v81 = v38;
  v82 = v37;
  sub_1C1012734(v61);
  v42 = v59;
  sub_1C12654B0();
  v43 = v65;
  v44 = swift_getWitnessTable();
  v45 = v63;
  sub_1C0FDBA4C();
  v46 = v66;
  v47 = *(v66 + 8);
  v47(v42, v43);
  v48 = *(v41 + 16);
  v49 = v68;
  v50 = v69;
  v48(v68, v74, v69);
  v94 = v49;
  (*(v46 + 16))(v42, v45, v43);
  v95 = v42;
  v93[0] = v50;
  v93[1] = v43;
  v91 = v55;
  v92 = v44;
  sub_1C119EE80(&v94, 2, v93);
  v47(v45, v43);
  v51 = v57;
  (*&v57)(v74, v50);
  v47(v42, v43);
  return (*&v51)(v49, v50);
}

uint64_t sub_1C1006864@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a9;
  v72 = a4;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  v84 = a4;
  v85 = a5;
  v66 = a5;
  v86 = a6;
  v87 = a7;
  v88 = a8;
  v67 = a8;
  v17 = type metadata accessor for PhotosItemsRow(0, &v83);
  v69 = *(v17 - 1);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v56 - v18;
  v64 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v56 - v22;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v87 = a7;
  v23 = a6;
  v58 = a6;
  v24 = a7;
  v59 = a7;
  v88 = a8;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v83);
  sub_1C1263190();
  v25 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1C1001354();
  v81 = WitnessTable;
  v82 = v27;
  v79 = swift_getWitnessTable();
  v80 = v27;
  v62 = v25;
  v60 = swift_getWitnessTable();
  v28 = a2;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  v84 = v72;
  v85 = v25;
  v86 = v23;
  v87 = v24;
  v88 = v60;
  v29 = type metadata accessor for PhotosDraggableForEach(0, &v83);
  v65 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v61 = &v56 - v33;
  v34 = v63;
  sub_1C0FFF978(v73, v63, v17);
  v35 = v64[1];
  v56 = a2;
  v35(v34, a2);
  v64 = *(a1 + v17[20]);
  sub_1C0FDB0A8(a1 + v17[26], &v83);
  v36 = *(a1 + v17[29]);
  v37 = (a1 + v17[30]);
  v39 = *v37;
  v38 = v37[1];
  v63 = v39;
  v57 = v38;
  v40 = v69;
  v41 = v68;
  (*(v69 + 16))(v68, a1, v17);
  v42 = (*(v40 + 80) + 72) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 2) = v28;
  *(v43 + 3) = a3;
  v44 = v66;
  *(v43 + 4) = v72;
  *(v43 + 5) = v44;
  v45 = v58;
  v46 = v59;
  *(v43 + 6) = v58;
  *(v43 + 7) = v46;
  *(v43 + 8) = v67;
  (*(v40 + 32))(&v43[v42], v41, v17);
  v47 = v36;

  v48 = v64;

  v49 = v63;
  v50 = v57;
  sub_1C0FCF1B4(v63, v57);
  sub_1C1039330(v48, 0, &v83, v47, v49, v50, sub_1C1008A0C, v31, v43, v56, v62, v45, v46, v60);
  v51 = swift_getWitnessTable();
  v52 = v61;
  sub_1C0FDBA4C();
  v53 = v65;
  v54 = *(v65 + 8);
  v54(v31, v29);
  (*(v53 + 16))(v31, v52, v29);
  v77 = 0;
  v78 = 1;
  *&v83 = v31;
  *(&v83 + 1) = &v77;
  v76[0] = v29;
  v76[1] = MEMORY[0x1E6981840];
  v74 = v51;
  v75 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v83, 2, v76);
  v54(v52, v29);
  return (v54)(v31, v29);
}

uint64_t sub_1C1006E5C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5)
{
  v57 = a4;
  v64 = *(a3 - 8);
  v65 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v62 = v8;
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v9;
  v70 = v10;
  v11 = v9;
  v59 = v9;
  v60 = v12;
  v71 = v12;
  v72 = v13;
  v14 = v12;
  v15 = v13;
  v61 = v13;
  v73 = v8;
  v74 = v16;
  v17 = v8;
  v18 = v16;
  v75 = a5;
  v19 = type metadata accessor for PhotosItemsRow.ItemContainerView(0, &v69);
  v58 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v56 = sub_1C1263190();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v66 = &v55 - v22;
  v69 = v11;
  v70 = a3;
  v71 = v14;
  v72 = v15;
  v73 = v17;
  v74 = v18;
  v23 = v18;
  v75 = a5;
  v24 = type metadata accessor for PhotosItemsRow(0, &v69);
  v25 = a2;
  v26 = (a2 + v24[31]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v63;
  (*(v64 + 16))(v63, v65, a3);
  v65 = v21;
  sub_1C1004A6C(v27, v28, v29, v59, a3, v60, v61, v62, v21, v23, a5);

  result = sub_1C1264420();
  v31 = (v25 + v24[21]);
  v32 = v31[1];
  v33 = v31[2];
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
  }

  else
  {
    v35 = result;
    v36 = *v31;
    v37 = sub_1C0FFF3A8(v24);
    v38 = (v25 + v24[38]);
    v39 = *v38;
    v40 = v38[1];
    WitnessTable = swift_getWitnessTable();
    v42 = v39;
    v43 = v65;
    View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v35, v36, v34, v42, v40, v19, WitnessTable, v37);
    (*(v58 + 8))(v43, v19);
    result = sub_1C1264440();
    v44 = *(v25 + v24[22]);
    if (!__OFSUB__(v44, 1))
    {
      v45 = result;
      v46 = sub_1C0FFF204(v24);
      v47 = sub_1C12659B0();
      v49 = v48;
      v50 = sub_1C1001354();
      v67 = WitnessTable;
      v68 = v50;
      v51 = v56;
      v52 = swift_getWitnessTable();
      v53 = v47;
      v54 = v66;
      View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v45, v44, v44 - 1, v53, v49, v51, v52, v46);
      return (*(v55 + 8))(v54, v51);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1007238@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v59 = a3;
  v73 = a9;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v83 = a4;
  v84 = a5;
  v68 = a5;
  v85 = a6;
  v86 = a7;
  v87 = a8;
  v69 = a8;
  v16 = type metadata accessor for PhotosItemsRow(0, &v82);
  v71 = *(v16 - 1);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v55 - v17;
  v66 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  *&v82 = a2;
  v23 = a2;
  v24 = v59;
  *(&v82 + 1) = v59;
  v83 = a4;
  v62 = a4;
  v84 = a5;
  v85 = a6;
  v25 = a6;
  v61 = a6;
  v86 = a7;
  v87 = a8;
  v60 = a7;
  type metadata accessor for PhotosItemsRow.ItemContainerView(255, &v82);
  v26 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1C1001354();
  v80 = WitnessTable;
  v81 = v28;
  v65 = v26;
  v63 = swift_getWitnessTable();
  *&v82 = v23;
  *(&v82 + 1) = v24;
  v83 = a4;
  v84 = v26;
  v85 = v25;
  v86 = a7;
  v87 = v63;
  v29 = type metadata accessor for PhotosDraggableForEach(0, &v82);
  v67 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v64 = &v55 - v33;
  sub_1C0FFF978(v22, v74, v16);
  v34 = v66[1];
  v56 = v23;
  v34(v22, v23);
  v66 = *(a1 + v16[20]);
  sub_1C0FDB0A8(a1 + v16[26], &v82);
  v35 = *(a1 + v16[29]);
  v36 = (a1 + v16[30]);
  v38 = *v36;
  v37 = v36[1];
  v58 = v38;
  v57 = v37;
  v39 = v70;
  v40 = v71;
  (*(v71 + 16))(v70, a1, v16);
  v41 = (*(v40 + 80) + 72) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = v23;
  *(v42 + 3) = v24;
  v43 = v68;
  *(v42 + 4) = v62;
  *(v42 + 5) = v43;
  v44 = v61;
  v45 = v60;
  *(v42 + 6) = v61;
  *(v42 + 7) = v45;
  *(v42 + 8) = v69;
  (*(v40 + 32))(&v42[v41], v39, v16);
  v46 = v35;

  v47 = v66;

  v48 = v58;
  v49 = v57;
  sub_1C0FCF1B4(v58, v57);
  sub_1C1039330(v47, 0, &v82, v46, v48, v49, sub_1C1008844, v31, v42, v56, v65, v44, v45, v63);
  v50 = swift_getWitnessTable();
  v51 = v64;
  sub_1C0FDBA4C();
  v52 = v67;
  v53 = *(v67 + 8);
  v53(v31, v29);
  (*(v52 + 16))(v31, v51, v29);
  v78 = 0;
  v79 = 1;
  *&v82 = v31;
  *(&v82 + 1) = &v78;
  v77[0] = v29;
  v77[1] = MEMORY[0x1E6981840];
  v75 = v50;
  v76 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v82, 2, v77);
  v53(v51, v29);
  return (v53)(v31, v29);
}

uint64_t sub_1C10077E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v40 = a6;
  v47 = a7;
  v48 = a2;
  v45 = a1;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v14;
  v50 = v15;
  v41 = v14;
  v42 = v16;
  v51 = v16;
  v52 = v17;
  v18 = v17;
  v43 = v17;
  v44 = v19;
  v53 = v19;
  v54 = v20;
  v21 = v19;
  v55 = a8;
  v22 = type metadata accessor for PhotosItemsRow.ItemContainerView(0, &v49);
  v46 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = v18;
  v25 = v40;
  v53 = v21;
  v54 = v40;
  v55 = a8;
  v26 = type metadata accessor for PhotosItemsRow(0, &v49);
  v27 = (v48 + v26[31]);
  v28 = *v27;
  v29 = v27[1];
  (*(v11 + 16))(v13, v45, a4);
  sub_1C1004A6C(v28, v29, v13, v41, a4, v42, v43, v44, v24, v25, a8);

  LOBYTE(v13) = sub_1C1264420();
  v30 = v48;
  v31 = (v48 + v26[21]);
  v32 = *v31;
  v33 = v31[1];
  v34 = sub_1C0FFF3A8(v26);
  v35 = (v30 + v26[38]);
  v36 = *v35;
  v37 = v35[1];
  WitnessTable = swift_getWitnessTable();
  View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v13, v32, v33, v36, v37, v22, WitnessTable, v34);
  return (*(v46 + 8))(v24, v22);
}

unint64_t sub_1C1007AA0()
{
  result = qword_1EBE90B98;
  if (!qword_1EBE90B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90B98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosClipStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1C1007C00(void *a1)
{
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v3 = a1[4];
    sub_1C1266F10();
    if (v5 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewModel(255, v3, a1[7], v4);
      sub_1C1265790();
      if (v6 <= 0x3F)
      {
        sub_1C1007FD0(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          swift_getExtendedExistentialTypeMetadata();
          sub_1C1007FD0(319, qword_1EDE77830, &type metadata for ScrollViewGeometryChangeHandler, MEMORY[0x1E69E6720]);
          if (v8 <= 0x3F)
          {
            sub_1C1007FD0(319, &qword_1EDE77500, MEMORY[0x1E697E0C8], MEMORY[0x1E69E6720]);
            if (v9 <= 0x3F)
            {
              sub_1C1007F24(319);
              if (v10 <= 0x3F)
              {
                sub_1C1007F88();
                if (v11 <= 0x3F)
                {
                  sub_1C1007FD0(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                  if (v12 <= 0x3F)
                  {
                    sub_1C1007FD0(319, &qword_1EDE775B0, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                    if (v13 <= 0x3F)
                    {
                      sub_1C1007FD0(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
                      if (v14 <= 0x3F)
                      {
                        sub_1C1007FD0(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                        if (v15 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C1007F24(uint64_t a1)
{
  if (!qword_1EDE768F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90BA0, qword_1C12A8220);
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE768F0);
    }
  }
}

unint64_t sub_1C1007F88()
{
  result = qword_1EDE76900;
  if (!qword_1EDE76900)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDE76900);
  }

  return result;
}

void sub_1C1007FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C1008028(uint64_t a1)
{
  result = sub_1C1007F88();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C10080B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C1008230(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C10084D8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  OUTLINED_FUNCTION_39_2();
  v14[0] = v10;
  v14[1] = v11;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v12 = type metadata accessor for PhotosItemsRow(0, v14);
  OUTLINED_FUNCTION_15(v12);
  sub_1C1005E20(a1, v2 + ((*(v13 + 80) + 72) & ~*(v13 + 80)), v10, v11, v3, v4, v5, v6, a2, v7);
}

double sub_1C10085A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  OUTLINED_FUNCTION_39_2();
  v15[0] = v10;
  v15[1] = v11;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v12 = type metadata accessor for PhotosItemsRow(0, v15);
  OUTLINED_FUNCTION_15(v12);
  return sub_1C1005EC0(a1, a2, v2 + ((*(v13 + 80) + 72) & ~*(v13 + 80)), v10, v11, v3, v4, v5, v6, v7);
}

uint64_t sub_1C100867C(uint64_t a1)
{
  v2 = sub_1C1263320();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C100873C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_41Tm()
{
  v3 = *(v0 + 48);
  v43 = *(v0 + 32);
  v44[0] = *(v0 + 16);
  v42 = v44[0];
  v44[1] = v43;
  v45 = v3;
  v46 = *(v0 + 56);
  v4 = type metadata accessor for PhotosItemsRow(0, v44);
  OUTLINED_FUNCTION_30_0();
  v13 = OUTLINED_FUNCTION_31_3(v5, v6, v7, v8, v9, v10, v11, v12, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  (*(v14 + 8))(v1, v13);

  v19 = OUTLINED_FUNCTION_41_1(v15, v16, v17, v18);
  OUTLINED_FUNCTION_46_0(v19);
  OUTLINED_FUNCTION_4_2();
  (*(v20 + 8))(v1 + v2);
  OUTLINED_FUNCTION_48_1(v4[25]);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v4[26]));
  if (*(v1 + v4[27]))
  {
  }

  if (*(v1 + v4[30]))
  {
  }

  OUTLINED_FUNCTION_48_1(v4[31]);

  OUTLINED_FUNCTION_43_0((v1 + v4[32]));
  OUTLINED_FUNCTION_27_1(v4[33]);
  OUTLINED_FUNCTION_27_1(v4[34]);
  OUTLINED_FUNCTION_1_10((v1 + v4[35]));
  OUTLINED_FUNCTION_27_1(v4[36]);
  return swift_deallocObject();
}

uint64_t sub_1C1008A24(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v10 = *(v2 + 8);
  v15[0] = *(v2 + 2);
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v10;
  v11 = type metadata accessor for PhotosItemsRow(0, v15);
  OUTLINED_FUNCTION_15(v11);
  return a2(a1, &v2[(*(v12 + 80) + 72) & ~*(v12 + 80)], v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C1008B38()
{
  result = qword_1EBE90BB0;
  if (!qword_1EBE90BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90BB0);
  }

  return result;
}

uint64_t sub_1C1008B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1C0FDBA4C();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_1C0FDBA4C();
  return (v13)(v11, a4);
}

uint64_t sub_1C1008CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v15[0] = v2[2];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v10;
  v11 = type metadata accessor for PhotosItemsRow(0, v15);
  OUTLINED_FUNCTION_40_1(v11);
  OUTLINED_FUNCTION_53();
  return sub_1C10047F4(a1, v2 + v13, *v12, v12[1], v5, a2, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 144);
  v7 = *(v4 - 160);

  return type metadata accessor for PhotosScrollViewModel(255, v6, v7, a4);
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1, double a2)
{
  *(v2 - 104) = a2;
  *(v2 - 96) = a1;

  return type metadata accessor for PhotosDraggableForEach(255, v2 - 144);
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t Color.platformColor.getter(uint64_t a1)
{
  sub_1C1008F18();

  return sub_1C1266680();
}

unint64_t sub_1C1008F18()
{
  result = qword_1EDE76940;
  if (!qword_1EDE76940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE76940);
  }

  return result;
}

uint64_t sub_1C1008F5C()
{
  v0 = PXBackgroundColor();
  result = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  qword_1EDE7B860 = result;
  return result;
}

uint64_t sub_1C10091F0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  *a3 = result;
  return result;
}

uint64_t sub_1C100925C()
{
  if (qword_1EDE7B848 != -1)
  {
    swift_once();
  }

  qword_1EDE7B870 = qword_1EDE7B850;
}

uint64_t sub_1C10092E4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C100933C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_1();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1C1009388()
{
  result = qword_1EDE76F60;
  if (!qword_1EDE76F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F60);
  }

  return result;
}

uint64_t sub_1C10093DC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosItemCellUsesSpaceLimitedLayout.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.photosItemCellUsesSpaceLimitedLayout.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1009388();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C10094BC;
}

uint64_t sub_1C10094E8(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C12637F0();
  return v3;
}

unint64_t sub_1C1009530()
{
  result = qword_1EDE76FA0;
  if (!qword_1EDE76FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FA0);
  }

  return result;
}

uint64_t sub_1C1009584@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosItemCellShowCount.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.photosItemCellShowCount.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1009530();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C10096AC;
}

uint64_t PhotosUtilityItemCell.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for PhotosUtilityItemCell(0, a2, a4, a5);
  v9 = a3 + v8[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a3 + v8[12];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a3 + v8[13];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = v8[14];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a3 + v12), __src, 0xD1uLL);
  v13 = v8[15];
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  sub_1C1009908();
  sub_1C1009908();
  sub_1C1009908();
  *(a3 + v8[19]) = 0x403D000000000000;
  v14 = v8[20];
  if (qword_1EDE7B890 != -1)
  {
    swift_once();
  }

  *(a3 + v14) = qword_1EDE7B898;
  v15 = v8[21];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BD8, &qword_1C12B0DF0);
  swift_storeEnumTagMultiPayload();
  (*(*(a2 - 8) + 32))(a3, a1, a2);
}

void sub_1C1009950(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 44);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1009AAC(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C1009C00(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C1009D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 56);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1009F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FDB800(v2 + *(a1 + 60), &v15 - v10, &qword_1EBE904D8, &qword_1C12A32C0);
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

uint64_t sub_1C100A198(uint64_t a1)
{
  sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1263580();
}

uint64_t sub_1C100A254(uint64_t a1)
{
  v2 = sub_1C1263130();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C1009F70(a1, &v12 - v7);
  (*(v3 + 104))(v5, *MEMORY[0x1E697E6C8], v2);
  sub_1C100DC14(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v9 = sub_1C1265D90();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  return v9 & 1;
}

uint64_t sub_1C100A3D4(uint64_t a1)
{
  result = (*(*(a1 + 24) + 16))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C100A410(uint64_t a1)
{
  result = (*(*(a1 + 24) + 48))(*(a1 + 16));
  if (!v3)
  {
    return sub_1C100A3D4(a1);
  }

  return result;
}

uint64_t sub_1C100A454(uint64_t a1)
{
  (*(*(a1 + 24) + 24))(*(a1 + 16));
  if (v1)
  {
    return 0;
  }

  sub_1C100DC5C();
  return sub_1C12667D0();
}

double sub_1C100A4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  sub_1C1262BF0();
  return v1;
}

double sub_1C100A508()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  sub_1C1262BF0();
  return v1;
}

double sub_1C100A554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  sub_1C1262BF0();
  return v1;
}

uint64_t sub_1C100A5A0(uint64_t a1)
{
  sub_1C1009950(a1, &v5);
  if (v5)
  {
    sub_1C1009950(a1, &v4);
    if (v4 == 2)
    {
      sub_1C100A508();
    }

    else
    {
      sub_1C1009950(a1, &v3);
      sub_1C100A554();
    }
  }

  else
  {
    sub_1C100A4BC();
  }

  return sub_1C100A254(a1);
}

uint64_t sub_1C100A6B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38, qword_1C12A74D8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C0FDB800(a1, &v5 - v3, &qword_1EBE90C38, qword_1C12A74D8);
  return sub_1C1263750();
}

uint64_t PhotosUtilityItemCell.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C0FDB6D4(&qword_1EDE76B20, &qword_1EBE90BE0, &qword_1C12A7390, MEMORY[0x1E6981F48]);
  *a2 = sub_1C12659A0();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BE8, &qword_1C12A7398);
  v7 = a1[2];
  v8 = a1[4];
  sub_1C100AA6C(v2, v7, a1[3], v8, a2 + *(v6 + 44));
  sub_1C0FDB6D4(&qword_1EDE76B90, &qword_1EBE90BF0, &qword_1C12A73A0, MEMORY[0x1E6981880]);
  sub_1C100AE3C();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BF8, &qword_1C12A73A8) + 36)) = 0;
  sub_1C100C6EC();
  sub_1C0FDB6D4(&unk_1EDE76D60, &qword_1EBE90C00, &unk_1C12A73B0, MEMORY[0x1E69809C8]);
  v9 = sub_1C1264470();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C10, &qword_1C12A73C0) + 36);
  *v10 = 1;
  v10[8] = v9;
  sub_1C1009D54(a1, v20);
  sub_1C100C7D0(v20);
  v11 = v20[0];
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C18, &qword_1C12A73C8) + 36);
  v13 = *(sub_1C1263320() + 20);
  v14 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  (*(v15 + 104))(&v12[v13], v14);
  *v12 = v11;
  *(v12 + 1) = v11;
  sub_1C100C824();
  sub_1C100DC14(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010) + 36)] = 256;
  v19[3] = v7;
  v19[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v2, v7);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C28, &qword_1C12A73E0) + 36);
  sub_1C0FDB0A8(v19, v17);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(v17 + 40, __src, 0xD1uLL);
  *(v17 + 32) = swift_getKeyPath();
  v17[264] = 0;
  *(v17 + 34) = swift_getKeyPath();
  v17[280] = 0;
  *(v17 + 36) = swift_getKeyPath();
  v17[296] = 0;
  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

uint64_t sub_1C100AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C40, &qword_1C12A75B8);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C48, &qword_1C12A75C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C50, &qword_1C12A75C8);
  sub_1C0FDB6D4(&qword_1EDE76B28, &qword_1EBE90C50, &qword_1C12A75C8, MEMORY[0x1E6981F48]);
  *v18 = sub_1C10A7F5C(v19);
  *(v18 + 1) = 0;
  v18[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C58, &qword_1C12A75D0);
  sub_1C100AE90(a1, a2, a3, a4, &v18[*(v20 + 44)]);
  sub_1C1265150();
  v21 = sub_1C12651E0();

  v22 = *(a1 + *(type metadata accessor for PhotosUtilityItemCell(0, a2, a3, a4) + 80));
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE82B08;
  v24 = qword_1EDE82B10;
  v25 = qword_1EDE82B28;
  *v12 = v21;
  *(v12 + 4) = 514;
  *(v12 + 2) = v23;
  *(v12 + 3) = v24;
  *(v12 + 2) = xmmword_1EDE82B18;
  *(v12 + 6) = v25;
  *(v12 + 7) = 0;
  *(v12 + 8) = v22;
  *(v12 + 9) = swift_getKeyPath();
  v12[104] = 0;
  *(v12 + 14) = swift_getKeyPath();
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 145) = 0u;
  *(v12 + 21) = swift_getKeyPath();
  v12[176] = 0;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();

  sub_1C12628D0();
  sub_1C0FDB800(v18, v15, &qword_1EBE90C48, &qword_1C12A75C0);
  v26 = v32;
  sub_1C0FDB800(v12, v32, &qword_1EBE90C40, &qword_1C12A75B8);
  v27 = v33;
  sub_1C0FDB800(v15, v33, &qword_1EBE90C48, &qword_1C12A75C0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C60, &qword_1C12A7650);
  sub_1C0FDB800(v26, v27 + *(v28 + 48), &qword_1EBE90C40, &qword_1C12A75B8);
  sub_1C0FD1A5C(v12, &qword_1EBE90C40, &qword_1C12A75B8);
  sub_1C0FD1A5C(v18, &qword_1EBE90C48, &qword_1C12A75C0);
  sub_1C0FD1A5C(v26, &qword_1EBE90C40, &qword_1C12A75B8);
  return sub_1C0FD1A5C(v15, &qword_1EBE90C48, &qword_1C12A75C0);
}

unint64_t sub_1C100AE3C()
{
  result = qword_1EDE7B780;
  if (!qword_1EDE7B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B780);
  }

  return result;
}

uint64_t sub_1C100AE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C68, &qword_1C12A7658);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C70, &qword_1C12A7660);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C78, &qword_1C12A7668);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  *v21 = sub_1C12638E0();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C80, &qword_1C12A7670);
  sub_1C100B1E0(a2, a3, a4, &v21[*(v22 + 44)]);
  v23 = type metadata accessor for PhotosUtilityItemCell(0, a2, a3, a4);
  v24 = 1;
  if (sub_1C100A254(v23))
  {
    *v9 = sub_1C12638E0();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C90, &qword_1C12A7680);
    sub_1C100C320(a2, a3, a4, &v9[*(v25 + 44)]);
    v26 = sub_1C1264470();
    v27 = &v9[*(v37 + 36)];
    *v27 = v26;
    *(v27 + 8) = xmmword_1C12A7250;
    __asm { FMOV            V0.2D, #12.0 }

    *(v27 + 24) = _Q0;
    v27[40] = 0;
    sub_1C0FDB71C(v9, v15, &qword_1EBE90C68, &qword_1C12A7658);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v15, v24, 1, v37);
  sub_1C0FDB800(v21, v18, &qword_1EBE90C78, &qword_1C12A7668);
  sub_1C0FDB800(v15, v12, &qword_1EBE90C70, &qword_1C12A7660);
  v33 = v36;
  sub_1C0FDB800(v18, v36, &qword_1EBE90C78, &qword_1C12A7668);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C88, &qword_1C12A7678);
  sub_1C0FDB800(v12, v33 + *(v34 + 48), &qword_1EBE90C70, &qword_1C12A7660);
  sub_1C0FD1A5C(v15, &qword_1EBE90C70, &qword_1C12A7660);
  sub_1C0FD1A5C(v21, &qword_1EBE90C78, &qword_1C12A7668);
  sub_1C0FD1A5C(v12, &qword_1EBE90C70, &qword_1C12A7660);
  return sub_1C0FD1A5C(v18, &qword_1EBE90C78, &qword_1C12A7668);
}

uint64_t sub_1C100B1E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CC0, &qword_1C12A76E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v51 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CC8, &qword_1C12A76E8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v51 - v15;
  v16 = sub_1C12659A0();
  v59 = v17;
  v60 = v16;
  sub_1C100B6D0(a2, a3, a4, v62);
  memcpy(v63, v62, sizeof(v63));
  memcpy(v64, v62, sizeof(v64));
  sub_1C0FDB800(v63, v61, &qword_1EBE90CD0, &qword_1C12A76F0);
  sub_1C0FD1A5C(v64, &qword_1EBE90CD0, &qword_1C12A76F0);
  memcpy(__dst, v63, sizeof(__dst));
  v18 = type metadata accessor for PhotosUtilityItemCell(0, a2, a3, a4);
  v19 = sub_1C100A254(v18);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  KeyPath = 0;
  v25 = 0;
  if ((v19 & 1) == 0)
  {
    if (sub_1C1009AAC(v18))
    {
      sub_1C100A410(v18);
    }

    else
    {
      sub_1C100A3D4(v18);
    }

    sub_1C1264530();
    v20 = sub_1C1264870();
    v21 = v26;
    v28 = v27;
    v23 = v29;

    KeyPath = swift_getKeyPath();
    v22 = v28 & 1;
    sub_1C0FDB850(v20, v21, v28 & 1);

    v25 = 2;
  }

  v52 = v25;
  v53 = v23;
  v30 = v56;
  sub_1C100B98C(v18, v56);
  v31 = KeyPath;
  v32 = v21;
  v33 = sub_1C1264460();
  sub_1C1009950(v18, v62);
  sub_1C12628A0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v54;
  sub_1C0FDB71C(v30, v54, &qword_1EBE90CC0, &qword_1C12A76E0);
  v43 = v42 + *(v55 + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  v44 = v42;
  v45 = v57;
  sub_1C0FDB71C(v44, v57, &qword_1EBE90CC8, &qword_1C12A76E8);
  v46 = v58;
  sub_1C0FDB800(v45, v58, &qword_1EBE90CC8, &qword_1C12A76E8);
  v61[0] = v60;
  v61[1] = v59;
  memcpy(&v61[2], __dst, 0x80uLL);
  memcpy(a5, v61, 0x90uLL);
  *(a5 + 144) = v20;
  *(a5 + 152) = v32;
  v48 = v52;
  v47 = v53;
  *(a5 + 160) = v22;
  *(a5 + 168) = v47;
  *(a5 + 176) = v31;
  *(a5 + 184) = v48;
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 208) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CD8, &qword_1C12A76F8);
  sub_1C0FDB800(v46, a5 + *(v49 + 80), &qword_1EBE90CC8, &qword_1C12A76E8);
  sub_1C0FDB800(v61, v62, &qword_1EBE90CE0, &qword_1C12A7700);
  sub_1C100D6EC(v20, v32, v22, v47, v31);
  sub_1C100D73C(v20, v32, v22, v47);
  sub_1C0FD1A5C(v45, &qword_1EBE90CC8, &qword_1C12A76E8);
  sub_1C0FD1A5C(v46, &qword_1EBE90CC8, &qword_1C12A76E8);
  sub_1C100D73C(v20, v32, v22, v47);
  v62[0] = v60;
  v62[1] = v59;
  memcpy(&v62[2], __dst, 0x80uLL);
  return sub_1C0FD1A5C(v62, &qword_1EBE90CE0, &qword_1C12A7700);
}

void sub_1C100B6D0(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = sub_1C1265170();
  v9 = type metadata accessor for PhotosUtilityItemCell(0, a2, a3, a4);
  sub_1C100A5A0(v9);
  sub_1C100A5A0(v9);
  sub_1C12659A0();
  sub_1C1262C80();
  v10 = v34;
  v11 = v35;
  v12 = v36;
  v13 = v37;
  v21 = v39;
  v22 = v38;
  v33 = v35;
  v32 = v37;
  v31 = 0;
  v14 = sub_1C12659A0();
  v23 = v15;
  v24 = v14;
  sub_1C100B83C(a2, a3, &v26);
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  sub_1C100DCB0(v26, v27, v28, v29, v30);
  sub_1C100DD20(v16);
  *a5 = v25;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  *(a5 + 40) = v22;
  *(a5 + 48) = v21;
  *(a5 + 56) = 0x3FF0000000000000;
  *(a5 + 64) = 0;
  *(a5 + 72) = v16;
  *(a5 + 80) = v17;
  *(a5 + 88) = v18;
  *(a5 + 96) = v19;
  *(a5 + 104) = v20;
  *(a5 + 112) = v24;
  *(a5 + 120) = v23;
}

uint64_t sub_1C100B83C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(a2 + 32))(a1, a2);
  if (v5)
  {
    v15 = result;
    v16 = v5;
    v17 = 1;
    if (qword_1EDE7B058 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDE7B060;
    v12 = dword_1EDE7B068;
    v13 = BYTE2(dword_1EDE7B068);
    v14 = 1;
    PhotosPrefetchableImage(_:font:)(&v15, &v11, &v18);
    sub_1C100DC0C(v15, v16);
    v10 = v18;
    v6 = v19;
    if (qword_1EDE76CF0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE76CF8;
    KeyPath = swift_getKeyPath();

    v9 = v10;
  }

  else
  {
    v6 = 0;
    KeyPath = 0;
    v7 = 0;
    v9 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 16) = v6;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1C100B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CE8, &qword_1C12A7708);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CF0, &qword_1C12A7710);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61[-v9];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CF8, &qword_1C12A7718);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  v77 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D00, &qword_1C12A7720);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v78 = v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D08, &qword_1C12A7728);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v73 = v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61[-v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D10, &qword_1C12A7738);
  OUTLINED_FUNCTION_0();
  v69 = v22;
  v70 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61[-v24];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D18, &qword_1C12A7740);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61[-v27];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D20, &qword_1C12A7748);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  v74 = v30;
  (*(*(a1 + 24) + 40))(&v86, *(a1 + 16));
  if (v86 - 2 < 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1C100D78C();
    return sub_1C1263C20();
  }

  v65 = v13;
  v66 = v7;
  v64 = v10;
  v67 = a2;
  if (v86)
  {
    v80 = xmmword_1C12A7260;
    LOBYTE(v81) = 0;
    v85 = 0;
    v55 = v64;
    if (qword_1EDE7B058 != -1)
    {
      swift_once();
    }

    v83 = qword_1EDE7B060;
    v84 = dword_1EDE7B068;
    PhotosPrefetchableImage(_:imageScale:font:)();
    sub_1C100DC0C(v80, *(&v80 + 1));
    if (qword_1EDE76CF0 != -1)
    {
      OUTLINED_FUNCTION_2_12(&qword_1EDE76CF0);
    }

    v56 = qword_1EDE76CF8;
    KeyPath = swift_getKeyPath();
    v58 = &v6[*(v79 + 36)];
    *v58 = KeyPath;
    v58[1] = v56;
    sub_1C0FDB800(v6, v77, &qword_1EBE90CE8, &qword_1C12A7708);
    swift_storeEnumTagMultiPayload();
    sub_1C100D818();
    sub_1C100D9E4();

    v59 = v78;
    sub_1C1263C20();
    sub_1C0FDB800(v59, v55, &qword_1EBE90D00, &qword_1C12A7720);
    swift_storeEnumTagMultiPayload();
    sub_1C100D78C();
    sub_1C1263C20();
    sub_1C0FD1A5C(v59, &qword_1EBE90D00, &qword_1C12A7720);
    return sub_1C0FD1A5C(v6, &qword_1EBE90CE8, &qword_1C12A7708);
  }

  else
  {
    if ((sub_1C1009C00(a1) & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_1C100D8A4();
      OUTLINED_FUNCTION_9_10();
      goto LABEL_15;
    }

    sub_1C100A454(a1);
    sub_1C1264530();
    v32 = sub_1C1264870();
    v34 = v33;
    v36 = v35;

    if (qword_1EDE76CF0 != -1)
    {
      OUTLINED_FUNCTION_2_12(&qword_1EDE76CF0);
    }

    *&v80 = qword_1EDE76CF8;

    v37 = sub_1C1264850();
    v38 = v32;
    v39 = v37;
    v41 = v40;
    v43 = v42;
    v44 = v34;
    v46 = v45;
    sub_1C0FDB8E8(v38, v44, v36 & 1);

    v47 = v39;

    *&v80 = v39;
    *(&v80 + 1) = v41;
    v63 = v41;
    v62 = v43 & 1;
    LOBYTE(v81) = v43 & 1;
    v82 = v46;
    v48 = *MEMORY[0x1E697E6D0];
    v49 = sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v50 + 104))(v20, v48, v49);
    sub_1C100DC14(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1C1265DE0();
    if (result)
    {
      v51 = sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
      v52 = MEMORY[0x1E6981138];
      v53 = v68;
      sub_1C1264BC0();
      sub_1C0FD1A5C(v20, &qword_1EBE92FE0, &qword_1C12A7730);
      sub_1C0FDB8E8(v47, v63, v62);

      *&v80 = MEMORY[0x1E6981148];
      *(&v80 + 1) = v53;
      v81 = v52;
      v82 = v51;
      swift_getOpaqueTypeConformance2();
      v54 = v70;
      sub_1C1264DF0();
      (*(v69 + 8))(v25, v54);
      sub_1C0FDB800(v28, v73, &qword_1EBE90D18, &qword_1C12A7740);
      swift_storeEnumTagMultiPayload();
      sub_1C100D8A4();
      OUTLINED_FUNCTION_9_10();
      sub_1C0FD1A5C(v28, &qword_1EBE90D18, &qword_1C12A7740);
LABEL_15:
      sub_1C0FDB800(v25, v77, &qword_1EBE90D20, &qword_1C12A7748);
      swift_storeEnumTagMultiPayload();
      sub_1C100D818();
      sub_1C100D9E4();
      v60 = v78;
      sub_1C1263C20();
      sub_1C0FDB800(v60, v64, &qword_1EBE90D00, &qword_1C12A7720);
      swift_storeEnumTagMultiPayload();
      sub_1C100D78C();
      sub_1C1263C20();
      sub_1C0FD1A5C(v60, &qword_1EBE90D00, &qword_1C12A7720);
      return sub_1C0FD1A5C(v25, &qword_1EBE90D20, &qword_1C12A7748);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C100C320@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C98, &qword_1C12A7688);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v19 - v13);
  *v14 = sub_1C12659A0();
  v14[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CA0, &qword_1C12A7690);
  sub_1C100C494(a2, a3, a4, v14 + *(v16 + 44));
  sub_1C0FDB800(v14, v11, &qword_1EBE90C98, &qword_1C12A7688);
  sub_1C0FDB800(v11, a5, &qword_1EBE90C98, &qword_1C12A7688);
  v17 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CA8, &qword_1C12A7698) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1C0FD1A5C(v14, &qword_1EBE90C98, &qword_1C12A7688);
  return sub_1C0FD1A5C(v11, &qword_1EBE90C98, &qword_1C12A7688);
}

uint64_t sub_1C100C494@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB0, &qword_1C12A76A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for PhotosUtilityItemCell(0, a1, a2, a3);
  v16 = sub_1C100A3D4(v15);
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v24 = xmmword_1C12A7270;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C1265090();
  v20 = *(v9 + 16);
  v20(v11, v14, v8);
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 2;
  *(a4 + 48) = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB8, &qword_1C12B0FE0);
  v20((a4 + *(v21 + 48)), v11, v8);
  sub_1C0FDB850(v16, v18, 0);
  v22 = *(v9 + 8);

  v22(v14, v8);
  v22(v11, v8);
  sub_1C0FDB8E8(v16, v18, 0);
}

unint64_t sub_1C100C6EC()
{
  result = qword_1EDE772E8;
  if (!qword_1EDE772E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90BF8, &qword_1C12A73A8);
    sub_1C0FDB6D4(&qword_1EDE76B90, &qword_1EBE90BF0, &qword_1C12A73A0, MEMORY[0x1E6981880]);
    sub_1C0FDB6D4(&unk_1EDE7BB80, &qword_1EBE90C08, &unk_1C12B0EB0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772E8);
  }

  return result;
}

unint64_t sub_1C100C824()
{
  result = qword_1EDE77180;
  if (!qword_1EDE77180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C10, &qword_1C12A73C0);
    sub_1C100C6EC();
    sub_1C0FDB6D4(&qword_1EDE76D90, &qword_1EBE90C20, &unk_1C12A73D0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77180);
  }

  return result;
}

uint64_t sub_1C100C8E0()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosSelectionIgnored.getter();
  return OUTLINED_FUNCTION_12(v0);
}

void sub_1C100C978(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C100D318(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom);
    if (v2 <= 0x3F)
    {
      sub_1C100D318(319, &qword_1EDE77540, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1C100D318(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs);
        if (v4 <= 0x3F)
        {
          sub_1C100D364(319);
          if (v5 <= 0x3F)
          {
            sub_1C100D3BC(319);
            if (v6 <= 0x3F)
            {
              sub_1C100D46C(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C100CAC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v35 = *(a3 + 16);
  v4 = *(v35 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1C1263130() - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  v7 = *(v33 - 8);
  v8 = *(v7 + 84);
  v36 = v5;
  v34 = v8;
  if (v5 > v8)
  {
    v8 = v5;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1C12657D0() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v6 + 64);
  }

  v12 = *(v4 + 64);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (((*(v10 + 80) + 16) & ~*(v10 + 80)) + *(v10 + 64) <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = ((*(v10 + 80) + 16) & ~*(v10 + 80)) + *(v10 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  v17 = v11 + v13 + 1;
  v18 = v14 + v13;
  v19 = v14 + 7;
  v20 = a1;
  if (a2 <= v9)
  {
    goto LABEL_33;
  }

  v21 = v15 + ((((((v19 + ((v18 + ((v18 + ((v17 + ((v16 + ((v12 + 55) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v13)) & ~v13)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 8) & (*(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  v22 = 8 * (v15 + ((((((v19 + ((v18 + ((v18 + ((v17 + ((v16 + ((v12 + 55) & 0xF8) - 47) & ~v16)) & ~v13)) & ~v13)) & ~v13)) & 0xF8) + 15) & 0xF8) + *(v10 + 80) + 8) & (*(v10 + 80) & 0xF8 ^ 0xF8)) + 1);
  if (v21 > 3)
  {
    goto LABEL_15;
  }

  v25 = ((a2 - v9 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v25))
  {
    v23 = *(a1 + v21);
    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v25 <= 0xFF)
    {
      if (v25 < 2)
      {
        goto LABEL_33;
      }

LABEL_15:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_33;
      }

LABEL_23:
      v26 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v26 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v27 = v21;
        }

        else
        {
          v27 = 4;
        }

        switch(v27)
        {
          case 2:
            v28 = *a1;
            break;
          case 3:
            v28 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v28 = *a1;
            break;
          default:
            v28 = *a1;
            break;
        }
      }

      else
      {
        v28 = 0;
      }

      return v9 + (v28 | v26) + 1;
    }

    v23 = *(a1 + v21);
    if (*(a1 + v21))
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  v29 = v36;
  if (v36 == v9)
  {
    v30 = v35;
LABEL_37:

    return __swift_getEnumTagSinglePayload(v20, v29, v30);
  }

  v31 = ~v13;
  v20 = ((v17 + ((((a1 + v12 + 55) & 0xFFFFFFFFFFFFFFF8) + v16 + 209) & ~v16)) & v31);
  v29 = v34;
  if (v34 == v9)
  {
    v30 = v33;
    goto LABEL_37;
  }

  v32 = *((((v19 + ((v18 + ((v20 + v18) & v31)) & v31)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_1C100CEAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1C1263130() - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  v41 = v5;
  if (v5 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = v5;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1C12657D0() - 8);
  v12 = *(v11 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v11 + 64);
  if (*(v6 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v6 + 64);
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80) & 0xF8 | 7;
  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  v19 = v14 + v17 + 1;
  v20 = v18 + v17;
  v21 = (v18 + v17 + ((v18 + v17 + ((v19 + ((v16 + ((v15 + 55) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v17)) & ~v17)) & ~v17;
  v22 = v18 + 7;
  v23 = (((((v22 + v21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & (v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v24 = v13 + v23 + 1;
  v25 = 8 * v24;
  if (a3 <= v10)
  {
    v28 = 0;
    v26 = a1;
    v27 = a2;
  }

  else
  {
    v26 = a1;
    v27 = a2;
    if (v24 <= 3)
    {
      v32 = ((a3 - v10 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v32))
      {
        v28 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v28 = v33;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  if (v10 >= v27)
  {
    v31 = ~v17;
    switch(v28)
    {
      case 1:
        v26[v24] = 0;
        if (v27)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *&v26[v24] = 0;
        if (v27)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_56:
        __break(1u);
        return;
      case 4:
        *&v26[v24] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!v27)
        {
          return;
        }

LABEL_35:
        v35 = v41;
        if (v41 == v10)
        {
          v36 = v26;
          v37 = v40;
        }

        else
        {
          v36 = (v19 + (((&v26[v15 + 55] & 0xFFFFFFFFFFFFFFF8) + v16 + 209) & ~v16)) & v31;
          if (v8 != v10)
          {
            if ((v27 & 0x80000000) != 0)
            {
              v38 = v27 & 0x7FFFFFFF;
            }

            else
            {
              v38 = (v27 - 1);
            }

            *((((v22 + ((v20 + ((v20 + v36) & v31)) & v31)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = v38;
            return;
          }

          v35 = v8;
          v37 = v39;
        }

        __swift_storeEnumTagSinglePayload(v36, v27, v35, v37);
        break;
    }
  }

  else
  {
    v29 = ~v10 + v27;
    if (v24 < 4)
    {
      v30 = (v29 >> v25) + 1;
      if (v24)
      {
        v34 = v29 & ~(-1 << v25);
        bzero(v26, v24);
        if (v24 == 3)
        {
          *v26 = v34;
          v26[2] = BYTE2(v34);
        }

        else if (v24 == 2)
        {
          *v26 = v34;
        }

        else
        {
          *v26 = v29;
        }
      }
    }

    else
    {
      bzero(v26, v24);
      *v26 = v29;
      v30 = 1;
    }

    switch(v28)
    {
      case 1:
        v26[v24] = v30;
        break;
      case 2:
        *&v26[v24] = v30;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&v26[v24] = v30;
        break;
      default:
        return;
    }
  }
}

void sub_1C100D318(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C100D364(uint64_t a1)
{
  if (!qword_1EDE77578)
  {
    sub_1C1263130();
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77578);
    }
  }
}

void sub_1C100D3BC(uint64_t a1)
{
  if (!qword_1EDE7BFE8)
  {
    sub_1C100D418();
    v1 = sub_1C1262C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE7BFE8);
    }
  }
}

unint64_t sub_1C100D418()
{
  result = qword_1EDE82F00;
  if (!qword_1EDE82F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F00);
  }

  return result;
}

void sub_1C100D46C(uint64_t a1)
{
  if (!qword_1EDE77548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C38, qword_1C12A74D8);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77548);
    }
  }
}

unint64_t sub_1C100D4D0()
{
  result = qword_1EDE77048;
  if (!qword_1EDE77048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C28, &qword_1C12A73E0);
    sub_1C100D55C();
    sub_1C100D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77048);
  }

  return result;
}

unint64_t sub_1C100D55C()
{
  result = qword_1EDE770C0;
  if (!qword_1EDE770C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C18, &qword_1C12A73C8);
    sub_1C100C824();
    sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770C0);
  }

  return result;
}

unint64_t sub_1C100D614()
{
  result = qword_1EDE82360[0];
  if (!qword_1EDE82360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE82360);
  }

  return result;
}

uint64_t sub_1C100D6EC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1C0FDB850(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C100D73C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C0FDB8E8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1C100D78C()
{
  result = qword_1EDE76E28;
  if (!qword_1EDE76E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D00, &qword_1C12A7720);
    sub_1C100D818();
    sub_1C100D9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E28);
  }

  return result;
}

unint64_t sub_1C100D818()
{
  result = qword_1EDE76EB8;
  if (!qword_1EDE76EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D20, &qword_1C12A7748);
    sub_1C100D8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EB8);
  }

  return result;
}

unint64_t sub_1C100D8A4()
{
  result = qword_1EDE77368;
  if (!qword_1EDE77368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D18, &qword_1C12A7740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1C100DC14(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77368);
  }

  return result;
}

unint64_t sub_1C100D9E4()
{
  result = qword_1EDE770E8;
  if (!qword_1EDE770E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90CE8, &qword_1C12A7708);
    sub_1C100DA9C();
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770E8);
  }

  return result;
}

unint64_t sub_1C100DA9C()
{
  result = qword_1EDE771B8;
  if (!qword_1EDE771B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D28, &unk_1C12A7750);
    sub_1C100DB54();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771B8);
  }

  return result;
}

unint64_t sub_1C100DB54()
{
  result = qword_1EDE77328;
  if (!qword_1EDE77328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D30, &qword_1C12B8F00);
    sub_1C0FDB6D4(&qword_1EDE76D28, &qword_1EBE933A0, &unk_1C12A7760, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77328);
  }

  return result;
}

uint64_t sub_1C100DC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C100DC5C()
{
  result = qword_1EDE7B750;
  if (!qword_1EDE7B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B750);
  }

  return result;
}

uint64_t sub_1C100DCB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

double sub_1C100DD20(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t static PhotosMajorMinorGrid.minorItemWidth(boundsHeight:minorGroupSize:itemAspectRatio:spacing:)(uint64_t result)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C100DDE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (!result)
  {
LABEL_14:
    sub_1C1263D30();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = *(sub_1C1263E90() + 20);
    v21 = *MEMORY[0x1E697F468];
    v22 = sub_1C12639D0();
    result = (*(*(v22 - 8) + 104))(a3 + v20, v21, v22);
    *a3 = v13;
    *(a3 + 1) = v15;
    *(a3 + 2) = v17;
    *(a3 + 3) = v19;
    return result;
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result == 0x8000000000000001 && v9 == -1)
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v9, 1))
  {
    goto LABEL_17;
  }

  if (__OFSUB__(a2, 2))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 != 0x8000000000000002 || v9 != -1)
  {
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C100DF74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 60);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C100E190(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C100E2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C101268C(v2 + *(a1 + 68), &v15 - v10);
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

uint64_t sub_1C100E4D0(uint64_t a1)
{
  v2 = sub_1C12629F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C100DF74(a1, v18);
  v6 = v19;
  v7 = v20;
  v8 = v21;
  v9 = v22;
  sub_1C1012620(v19, v20, v21, v22);
  sub_1C100C7D0(v18);
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  sub_1C100E2E4(a1, v5);
  v10 = sub_1C100E190(a1);
  sub_1C10C37D8(v5, v10 & 1);
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_1C1001C84(v14, v15, v16, v17);
  return v12;
}

uint64_t sub_1C100E648@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, uint64_t a12, uint64_t a13)
{
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a12;
  __src[3] = a13;
  v22 = type metadata accessor for PhotosMajorMinorGrid(0, __src);
  v23 = v22[15];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a7 + v23), __src, 0xD1uLL);
  v24 = a7 + v22[16];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v22[17];
  *(a7 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  v26 = swift_storeEnumTagMultiPayload();
  *a7 = a1 & 1;
  *(a7 + 8) = a9;
  *(a7 + 16) = a2;
  *(a7 + 24) = a8;
  *(a7 + 32) = a10;
  *(a7 + 40) = a11;
  v27 = a3(v26);
  return a4(v27);
}

uint64_t PhotosMajorMinorGrid.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  *&v92 = a1[2];
  v6 = v92;
  *(&v92 + 1) = v5;
  v93 = v8;
  *&v94 = v7;
  v84 = v7;
  v9 = type metadata accessor for PhotosMajorMinorGrid.PhotosMajorMinorGridLayout(255, &v92);
  OUTLINED_FUNCTION_6_11(v9);
  OUTLINED_FUNCTION_11_0();
  v10 = sub_1C1262B60();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38, &unk_1C12A77C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0, &unk_1C12A77D0);
  OUTLINED_FUNCTION_11_0();
  v86 = v5;
  v13 = sub_1C1263190();
  v14 = sub_1C100EF98();
  *&v92 = v12;
  *(&v92 + 1) = MEMORY[0x1E69E6530];
  v93 = v13;
  *&v94 = v14;
  *(&v94 + 1) = MEMORY[0x1E69E6540];
  sub_1C12656A0();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  v15 = sub_1C1265B00();
  v16 = OUTLINED_FUNCTION_4_12(v15);
  v87 = v6;
  *&v92 = v6;
  *(&v92 + 1) = v11;
  v85 = v8;
  v93 = v8;
  *&v94 = v16;
  sub_1C1263E20();
  sub_1C12652C0();
  OUTLINED_FUNCTION_8_10();
  v17 = sub_1C1262E70();
  OUTLINED_FUNCTION_7_10();
  v91 = OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_2_11();
  v89 = v10;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  v80 = swift_getWitnessTable();
  v18 = sub_1C1263900();
  OUTLINED_FUNCTION_1();
  v83 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_3();
  v81 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v69 - v23;
  OUTLINED_FUNCTION_1();
  v79 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1_3();
  v78 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v77 = &v69 - v28;
  v75 = sub_1C1262650();
  OUTLINED_FUNCTION_1();
  v74 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v76 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v69 - v38;
  v40 = swift_getWitnessTable();
  View.photosTrace.getter();
  v41 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v39, 1, v41) == 1)
  {
    sub_1C0FD1A5C(v39, &qword_1EBE919B0, &qword_1C12A8810);
  }

  else
  {
    (*(v33 + 16))(v36, v3, a1);
    sub_1C1262640();
    v42 = sub_1C1262670();
    v72 = sub_1C1266520();
    v73 = v42;
    if (sub_1C1266730())
    {
      v43 = swift_slowAlloc();
      v70 = v43;
      v71 = swift_slowAlloc();
      *&v92 = v71;
      *v43 = 136446210;
      v44 = View.photosChangedProperties.getter(a1, v40);
      v46 = v45;
      (*(v33 + 8))(v36, a1);
      v47 = sub_1C0FA0E80(v44, v46, &v92);

      v48 = v70;
      *(v70 + 1) = v47;
      v49 = v76;
      v50 = sub_1C1262630();
      v51 = v73;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v73, v72, v50, "PhotosMajorMinorGrid", "PhotosMajorMinorGrid %{public}s", v48, 0xCu);
      v52 = v71;
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x1C68F1630](v52, -1, -1);
      MEMORY[0x1C68F1630](v48, -1, -1);

      (*(v74 + 8))(v49, v75);
    }

    else
    {

      (*(v74 + 8))(v76, v75);
      (*(v33 + 8))(v36, a1);
    }

    (*(*(v41 - 8) + 8))(v39, v41);
  }

  v53 = *(v3 + 8);
  v54 = *(v3 + 16);
  v55 = *(v3 + 40);
  LOBYTE(v92) = *v3 & 1;
  *(&v92 + 1) = v53;
  v93 = v54;
  v94 = *(v3 + 24);
  v95 = v55;
  v57 = v86;
  v56 = v87;
  v59 = v84;
  v58 = v85;
  v60 = sub_1C100F078(&v92, v87, v86, v85, v84);
  v61 = MEMORY[0x1EEE9AC00](v60);
  *(&v69 - 6) = v56;
  *(&v69 - 5) = v57;
  *(&v69 - 4) = v58;
  *(&v69 - 3) = v59;
  *(&v69 - 2) = v3;
  v62 = v77;
  v63(sub_1C100F73C, v61);

  v64 = v79;
  (*(v79 + 16))(v78, v62, v17);
  v65 = v81;
  sub_1C1263910();
  (*(v64 + 8))(v62, v17);
  OUTLINED_FUNCTION_3_15();
  swift_getWitnessTable();
  v66 = v82;
  sub_1C0FDBA4C();
  v67 = *(v83 + 8);
  v67(v65, v18);
  sub_1C0FDBA4C();
  return (v67)(v66, v18);
}

unint64_t sub_1C100EF98()
{
  result = qword_1EDE76A78;
  if (!qword_1EDE76A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
    sub_1C100F024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76A78);
  }

  return result;
}

unint64_t sub_1C100F024()
{
  result = qword_1EDE76B10;
  if (!qword_1EDE76B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76B10);
  }

  return result;
}

uint64_t (*sub_1C100F078(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = a1[1];
  *(v10 + 48) = *a1;
  *(v10 + 64) = v11;
  *(v10 + 80) = a1[2];
  return sub_1C10126FC;
}

uint64_t sub_1C100F0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a3[1];
  v29 = *a3;
  v30 = v13;
  v31 = a3[2];
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v14 = type metadata accessor for PhotosMajorMinorGrid.PhotosMajorMinorGridLayout(0, &v24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38, &unk_1C12A77C0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0, &unk_1C12A77D0);
  v16 = sub_1C1263190();
  v17 = sub_1C100EF98();
  v24 = v15;
  v25 = MEMORY[0x1E69E6530];
  v26 = v16;
  v27 = v17;
  v28 = MEMORY[0x1E69E6540];
  sub_1C12656A0();
  swift_getTupleTypeMetadata2();
  v18 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v24 = a4;
  v25 = v18;
  v26 = a6;
  v27 = WitnessTable;
  sub_1C1263E20();
  v20 = sub_1C12652C0();
  v21 = swift_getWitnessTable();
  swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  return sub_1C121710C(a1, a2, v14, v20, v21, v22, a8);
}

uint64_t sub_1C100F2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v48 = a6;
  v50 = a2;
  v51 = a3;
  v44 = a3;
  v52 = a4;
  v53 = a5;
  v9 = type metadata accessor for PhotosMajorMinorGrid(0, &v50);
  v45 = *(v9 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v40 - v10;
  v12 = a2;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38, &unk_1C12A77C0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0, &unk_1C12A77D0);
  v18 = sub_1C1263190();
  v19 = sub_1C100EF98();
  v50 = v17;
  v51 = MEMORY[0x1E69E6530];
  v52 = v18;
  v53 = v19;
  v54 = MEMORY[0x1E69E6540];
  sub_1C12656A0();
  swift_getTupleTypeMetadata2();
  v20 = sub_1C1265B00();
  v42 = v20;
  WitnessTable = swift_getWitnessTable();
  v50 = v12;
  v51 = v20;
  v21 = a4;
  v52 = a4;
  v53 = WitnessTable;
  v40[1] = sub_1C1263E20();
  v22 = sub_1C12652C0();
  v43 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v40 - v27;
  v29 = v16;
  v30 = v12;
  (*(v13 + 16))(v29, a1 + *(v9 + 52), v12, v26);
  v31 = v45;
  v32 = a1;
  v33 = v9;
  (*(v45 + 16))(v11, v32, v9);
  v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = v44;
  *(v35 + 2) = v30;
  *(v35 + 3) = v36;
  v37 = v47;
  *(v35 + 4) = v21;
  *(v35 + 5) = v37;
  (*(v31 + 32))(&v35[v34], v11, v33);
  sub_1C12652A0();
  v49 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v38 = *(v43 + 8);
  v38(v24, v22);
  sub_1C0FDBA4C();
  return (v38)(v28, v22);
}

uint64_t sub_1C100F74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a5;
  v85 = a6;
  v82 = a3;
  v86 = a2;
  v79 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0, &unk_1C12A77D0);
  v13 = a4;
  v83 = a4;
  v14 = sub_1C1263190();
  v15 = sub_1C100EF98();
  v74 = v12;
  v91 = v12;
  v92 = MEMORY[0x1E69E6530];
  v71 = v14;
  v93 = v14;
  v94 = v15;
  v70 = v15;
  v95 = MEMORY[0x1E69E6540];
  v78 = sub_1C12656A0();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v65 - v18;
  v91 = a3;
  v92 = v13;
  v93 = a5;
  v94 = a6;
  v19 = type metadata accessor for PhotosMajorMinorGrid(0, &v91);
  v20 = *(v19 - 8);
  v81 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D38, &unk_1C12A77C0);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v65 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D78, &qword_1C12A7A90);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v65 - v27;
  v29 = sub_1C12639E0();
  (*(*(v29 - 8) + 16))(v28, a1, v29);
  sub_1C11E37E0();
  v31 = v30;
  sub_1C0FD1A5C(v28, &qword_1EBE90D78, &qword_1C12A7A90);
  sub_1C101257C(&qword_1EDE76F40, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
  sub_1C12662D0();
  sub_1C1266310();
  v32 = sub_1C1266300();
  v91 = v31;
  KeyPath = swift_getKeyPath();
  v65 = *(v20 + 16);
  v65(v22, v86, v19);
  v33 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v34 = (v81 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v83;
  *(v35 + 2) = v82;
  *(v35 + 3) = v36;
  v37 = v85;
  *(v35 + 4) = v84;
  *(v35 + 5) = v37;
  v38 = *(v20 + 32);
  v66 = v33;
  v67 = v22;
  v81 = v19;
  v68 = v20 + 32;
  v38(&v35[v33], v22, v19);
  v39 = v38;
  *&v35[v34] = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C1012120;
  *(v40 + 24) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D80, &qword_1C12A7AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90D88, &unk_1C12A7AD8);
  sub_1C0FDB6D4(&qword_1EDE76AC8, &qword_1EBE90D80, &qword_1C12A7AD0, MEMORY[0x1E69E6338]);
  sub_1C101257C(&qword_1EDE76B58, MEMORY[0x1E6981A38], MEMORY[0x1E6981A48]);
  sub_1C1012218();
  v41 = v32;
  result = sub_1C1265680();
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v43 = v86;
  v44 = *(v86 + 16);
  if (!v44)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 == 0x8000000000000001 && v44 + 1 == 0)
  {
    goto LABEL_16;
  }

  if (v32 == 1)
  {
    goto LABEL_10;
  }

  v46 = (v32 - 1) % v44;
  if (!v46)
  {
    v44 = 0;
    goto LABEL_11;
  }

  v47 = __OFSUB__(v44, v46);
  v44 -= v46;
  if (!v47)
  {
LABEL_10:
    if ((v44 & 0x8000000000000000) == 0)
    {
LABEL_11:
      v91 = 0;
      v92 = v44;
      swift_getKeyPath();
      v48 = v67;
      v49 = v81;
      v65(v67, v43, v81);
      v50 = swift_allocObject();
      v51 = v83;
      *(v50 + 2) = v82;
      *(v50 + 3) = v51;
      v52 = v85;
      *(v50 + 4) = v84;
      *(v50 + 5) = v52;
      v39(&v50[v66], v48, v49);
      *&v50[v34] = v41;
      v53 = sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0, &unk_1C12A77D0, &protocol conformance descriptor for PhotosShapeOverlay<A>);
      v90[3] = v52;
      v90[4] = v53;
      WitnessTable = swift_getWitnessTable();
      v54 = v77;
      sub_1C1265680();
      v90[2] = WitnessTable;
      v55 = v78;
      v56 = swift_getWitnessTable();
      v57 = v76;
      sub_1C0FDBA4C();
      v58 = v75;
      v59 = *(v75 + 8);
      v59(v54, v55);
      v60 = v72;
      v61 = v69;
      v62 = v73;
      (*(v72 + 16))(v69, v87, v73);
      v91 = v61;
      (*(v58 + 16))(v54, v57, v55);
      v92 = v54;
      v90[0] = v62;
      v90[1] = v55;
      v88 = sub_1C10124F8();
      v89 = v56;
      sub_1C119EE80(&v91, 2, v90);
      v59(v57, v55);
      v63 = *(v60 + 8);
      v63(v87, v62);
      v59(v54, v55);
      return (v63)(v61, v62);
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C1010000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v25 = a5;
  *(&v25 + 1) = a6;
  *&v26 = a7;
  *(&v26 + 1) = a8;
  v17 = type metadata accessor for PhotosMajorMinorGrid(0, &v25);
  v18 = sub_1C100E4D0(v17);
  v19 = a3[1];
  v25 = *a3;
  v26 = v19;
  v27 = a3[2];
  v20 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE90D88, &unk_1C12A7AD8) + 36));
  v24[0] = a5;
  v24[1] = a6;
  v24[2] = a7;
  v24[3] = a8;
  type metadata accessor for PhotosMajorMinorGrid.Configuration(0, v24);
  sub_1C100DDE8(a1, a4, v20);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984E0, &unk_1C12A77D0) + 36)) = v18;
  v21 = sub_1C1265730();
  return (*(*(v21 - 8) + 16))(a9, a2, v21);
}

uint64_t sub_1C1010134(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97250, &qword_1C12A7B08);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1C10101A0@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a8;
  v44 = a3;
  v41 = sub_1C1263E90();
  MEMORY[0x1EEE9AC00](v41);
  v38 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984E0, &unk_1C12A77D0);
  v15 = sub_1C1263190();
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v37 - v18;
  v19 = *a1;
  v20 = a4;
  *&v48 = a4;
  *(&v48 + 1) = a5;
  v21 = a5;
  v22 = a6;
  *&v49 = a6;
  *(&v49 + 1) = a7;
  v23 = a7;
  v24 = type metadata accessor for PhotosMajorMinorGrid(0, &v48);
  v37 = *(v24 + 56);
  result = sub_1C100E4D0(v24);
  v26 = a2[1];
  v48 = *a2;
  v49 = v26;
  v50 = a2[2];
  v27 = __OFADD__(v44, v19);
  v28 = v44 + v19;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v29 = result;
    v30 = v44;
    v47[0] = v20;
    v47[1] = v21;
    v47[2] = v22;
    v47[3] = v23;
    type metadata accessor for PhotosMajorMinorGrid.Configuration(0, v47);
    v31 = v38;
    sub_1C100DDE8(v28, v30, v38);
    v32 = sub_1C101257C(&qword_1EDE7BAB8, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
    v33 = v39;
    View.photosShapeOverlay<A>(color:shape:)(v29, v31, v21, v41, v23, v32);

    sub_1C10125C4(v31);
    v34 = sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0, &unk_1C12A77D0, &protocol conformance descriptor for PhotosShapeOverlay<A>);
    v45 = v23;
    v46 = v34;
    swift_getWitnessTable();
    v35 = v40;
    sub_1C0FDBA4C();
    v36 = *(v42 + 8);
    v36(v33, v15);
    sub_1C0FDBA4C();
    return (v36)(v35, v15);
  }

  return result;
}

void *sub_1C10104C0(void *result, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a2 & 1) == 0)
  {
    v9 = result;
    sub_1C1262F40();
    sub_1C101257C(&qword_1EDE7BFC8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
    v10 = sub_1C1266340();
    return sub_1C1010590(a3, a4 & 1, v10, v11, *&v9);
  }

  return result;
}

uint64_t sub_1C1010590@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>)
{
  v6 = *(v5 + 16);
  v7 = a3 + v6;
  if (__OFADD__(a3, v6))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = __OFSUB__(v7, 2);
  v9 = v7 - 2;
  if (v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v9 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_23;
  }

  v11 = *(v5 + 8);
  v12 = v6;
  v13 = (v9 / v6);
  if (*v5)
  {
    if ((a2 & 1) != 0 || (v14 = *&result, *&result == INFINITY))
    {
      v15 = (a5 - v11 * (v12 + -1.0)) / v12;
      v14 = (v11 + v15) * v13 + a5;
      v16 = a5;
      v17 = a5;
    }

    else
    {
      v15 = (a5 - v11 * (v12 + -1.0)) / v12;
      v17 = *&result - (v11 + v15) * v13;
      v16 = a5;
    }

    v18 = v15;
  }

  else
  {
    v19 = *(v5 + 24);
    if ((a2 & 1) != 0 || (v17 = *&result, *&result == INFINITY))
    {
      v16 = (a5 - v11 * v13 + (-1.0 / v12 + 1.0) * (v11 * (v19 * v13))) / (v13 / v12 + 1.0);
      v17 = v16 / v19;
      v18 = (v16 / v19 - v11 * (v12 + -1.0)) / v12;
      v15 = v19 * v18;
      a5 = v16 + (v11 + v19 * v18) * v13;
    }

    else
    {
      v18 = (*&result - v11 * (v12 + -1.0)) / v12;
      v15 = v19 * v18;
      v16 = a5 - (v11 + v19 * v18) * v13;
    }

    v14 = v17;
  }

  *a4 = v16;
  a4[1] = v17;
  a4[2] = v15;
  a4[3] = v18;
  a4[4] = a5;
  a4[5] = v14;
  return result;
}

uint64_t sub_1C1010700(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(char *, char *, uint64_t), uint64_t a10, void (*a11)(char *, uint64_t (**)(char *, char *, uint64_t), uint64_t))
{
  v112 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D50, &qword_1C12A79E0);
  MEMORY[0x1EEE9AC00](v16);
  v107 = (&v93 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D58, &qword_1C12A79E8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v111 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D60, &qword_1C12A79F0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v105 = (&v93 - v24);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D68, &qword_1C12A79F8);
  MEMORY[0x1EEE9AC00](v109);
  v99 = &v93 - v25;
  v114 = sub_1C1262E10();
  v103 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v106 = &v93 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v93 - v31;
  v98 = sub_1C1262650();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C1262F40();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v102 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v100 = &v93 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v93 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v93 - v43;
  swift_getWitnessTable();
  v110 = a11;
  Layout.photosTrace.getter();
  v45 = sub_1C1262680();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v45);
  v108 = v35;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v44, &qword_1EBE919B0, &qword_1C12A8810);
  }

  else
  {
    v96 = v45;
    (*(v35 + 16))(v41, v112, v34);
    sub_1C1262640();
    v47 = sub_1C1262670();
    v95 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v94 = swift_slowAlloc();
      *v94 = 134217984;
      sub_1C101257C(&qword_1EDE7BFC8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
      v93 = v33;
      sub_1C12662D0();
      sub_1C1266310();
      v48 = sub_1C1266300();
      (*(v35 + 8))(v41, v34);
      v49 = v94;
      *(v94 + 4) = v48;
      v33 = v93;
      v50 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v47, v95, v50, "PhotosMajorMinorGridLayout", "PhotosMajorMinorGridLayout subviews:%ld", v49, 0xCu);
      MEMORY[0x1C68F1630](v49, -1, -1);
    }

    else
    {
      (*(v35 + 8))(v41, v34);
    }

    (*(v97 + 8))(v33, v98);
    (*(*(v96 - 8) + 8))(v44);
  }

  v118.origin.x = a1;
  v118.origin.y = a2;
  v118.size.width = a3;
  v118.size.height = a4;
  Width = CGRectGetWidth(v118);
  v119.origin.x = a1;
  v119.origin.y = a2;
  v119.size.width = a3;
  v119.size.height = a4;
  Height = CGRectGetHeight(v119);
  v53 = sub_1C101257C(&qword_1EDE7BFC8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  v54 = v112;
  v55 = sub_1C1266340();
  sub_1C1010590(Height, 0, v55, v117, Width);
  result = sub_1C1266340();
  v57 = v99;
  if (result >= 1)
  {
    v120.origin.x = a1;
    v120.origin.y = a2;
    v120.size.width = a3;
    v120.size.height = a4;
    MinX = CGRectGetMinX(v120);
    v121.origin.x = a1;
    v121.origin.y = a2;
    v121.size.width = a3;
    v121.size.height = a4;
    MinY = CGRectGetMinY(v121);
    v60 = v117[0];
    v61 = v117[1];
    v98 = v53;
    sub_1C1262F50();
    sub_1C1265B40();
    LOBYTE(v116[0]) = 0;
    v115[0] = 0;
    sub_1C1262E00();
    v62 = v108;
    v110 = *(v108 + 16);
    v63 = v102;
    v110(v102, v54, v34);
    v64 = v100;
    sub_1C1266380();
    v65 = v105;
    v66 = v64;
    v67 = v62;
    v110(v105, v66, v34);
    (*(v62 + 32))(v63, v65, v34);
    sub_1C101257C(&qword_1EDE774E0, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
    sub_1C1265F60();
    v102 = *(v109 + 36);
    *&v102[v57] = 0;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D70, &qword_1C12A7A00);
    v109 = 0;
    v110 = *(v68 + 36);
    v105 = (v103 + 16);
    v112 = (v103 + 32);
    v69 = (v103 + 8);
    v70 = v98;
    v104 = v27;
    v103 += 8;
    while (1)
    {
      sub_1C1266310();
      if (*(v110 + v57) == v116[0])
      {
        v71 = 1;
        v72 = v111;
      }

      else
      {
        v73 = v22;
        v74 = sub_1C12663A0();
        v75 = v34;
        v76 = v106;
        v77 = v114;
        (*v105)(v106);
        v74(v116, 0);
        v78 = v75;
        v79 = v70;
        sub_1C1266320();
        v80 = *(v16 + 48);
        v81 = v109;
        v82 = v107;
        *v107 = v109;
        result = (*v112)(v82 + v80, v76, v77);
        v83 = __OFADD__(v81, 1);
        v84 = v81 + 1;
        if (v83)
        {
          goto LABEL_26;
        }

        v109 = v84;
        *&v102[v57] = v84;
        v85 = v82;
        v72 = v111;
        sub_1C1012024(v85, v111, &qword_1EBE90D50, &qword_1C12A79E0);
        v71 = 0;
        v22 = v73;
        v27 = v104;
        v34 = v78;
        v67 = v108;
        v70 = v79;
        v69 = v103;
      }

      __swift_storeEnumTagSinglePayload(v72, v71, 1, v16);
      sub_1C1012024(v72, v22, &qword_1EBE90D58, &qword_1C12A79E8);
      if (__swift_getEnumTagSinglePayload(v22, 1, v16) == 1)
      {
        sub_1C0FD1A5C(v57, &qword_1EBE90D68, &qword_1C12A79F8);
        (*(v67 + 8))(v100, v34);
        return (*v69)(v101, v114);
      }

      v86 = *v22;
      result = (*v112)(v27, &v22[*(v16 + 48)], v114);
      v87 = *(v113 + 16);
      if (!v87)
      {
        break;
      }

      if (v86 == 0x8000000000000000 && v87 == -1)
      {
        goto LABEL_27;
      }

      v89 = MinX;
      v90 = MinY;
      v91 = v60;
      v92 = v61;
      if (*v113)
      {
        CGRectGetMinX(*&v89);
        v122.origin.x = MinX;
        v122.origin.y = MinY;
        v122.size.width = v60;
        v122.size.height = v61;
        CGRectGetMaxY(v122);
      }

      else
      {
        CGRectGetMaxX(*&v89);
        v123.origin.x = MinX;
        v123.origin.y = MinY;
        v123.size.width = v60;
        v123.size.height = v61;
        CGRectGetMinY(v123);
      }

      sub_1C1265B40();
      LOBYTE(v116[0]) = 0;
      v115[0] = 0;
      sub_1C1262E00();
      (*v69)(v27, v114);
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1C1011544(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

void sub_1C10115B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1C1011654(uint64_t a1)
{
  v1 = *(a1 + 40);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = v1;
  v2 = type metadata accessor for PhotosMajorMinorGrid.Configuration(319, &v14);
  if (v3 <= 0x3F)
  {
    v14 = v2;
    v4 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      *&v15 = v4;
      v6 = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        *(&v15 + 1) = v6;
        sub_1C100D318(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs);
        if (v9 <= 0x3F)
        {
          v16 = v8;
          sub_1C100D318(319, &qword_1EDE77540, MEMORY[0x1E69E6370]);
          if (v11 <= 0x3F)
          {
            v17 = v10;
            sub_1C1011E54(319);
            if (v13 <= 0x3F)
            {
              v18 = v12;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C1011784(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v27 = *(a3 + 16);
  v4 = *(v27 - 8);
  v5 = *(v4 + 84);
  v26 = *(a3 + 24);
  v6 = *(v26 - 8);
  v25 = *(v6 + 84);
  if (v5 <= v25)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = v7;
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

  v11 = *(v4 + 80);
  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = v10 + ((v14 + ((*(v6 + 64) + ((v12 + v13 + ((v11 + 48) & ~v11)) & ~v13) + 223) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v8 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v19 < 2)
    {
LABEL_29:
      if (v7 > 0xFE)
      {
        v22 = &a1[v11 + 48] & ~v11;
        if (v5 == v8)
        {
          v23 = v5;
          v24 = v27;
        }

        else
        {
          v22 = (v22 + v12 + v13) & ~v13;
          v23 = v25;
          v24 = v26;
        }

        return __swift_getEnumTagSinglePayload(v22, v23, v24);
      }

      else
      {
        v21 = *a1;
        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_29;
  }

LABEL_21:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    switch(v15)
    {
      case 2:
        LODWORD(v15) = *a1;
        break;
      case 3:
        LODWORD(v15) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v15) = *a1;
        break;
      default:
        LODWORD(v15) = *a1;
        break;
    }
  }

  return v8 + (v15 | v20) + 1;
}

void sub_1C1011A84(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v29 = *(a4 + 24);
  v30 = *(a4 + 16);
  v6 = *(v30 - 8);
  v7 = *(v29 - 8);
  v31 = *(v6 + 84);
  v28 = *(v7 + 84);
  if (v31 <= v28)
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1C12629F0() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = v11 + ((v15 + ((*(v7 + 64) + ((v13 + v14 + ((v12 + 48) & ~v12)) & ~v14) + 223) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15) + 1;
  v17 = 8 * (v11 + ((v15 + ((*(v7 + 64) + ((v13 + v14 + ((v12 + 48) & ~v12)) & ~v14) - 33) & 0xF8) + 9) & ~v15) + 1);
  if (a3 <= v9)
  {
    v19 = 0;
    v18 = a2;
  }

  else
  {
    v18 = a2;
    if (v16 <= 3)
    {
      v22 = ((a3 - v9 + ~(-1 << v17)) >> v17) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v9 >= v18)
  {
    switch(v19)
    {
      case 1:
        a1[v16] = 0;
        if (v18)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (v18)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (v18)
        {
LABEL_33:
          if (v8 > 0xFE)
          {
            v25 = &a1[v12 + 48] & ~v12;
            v26 = v31;
            if (v31 == v9)
            {
              v27 = v30;
            }

            else
            {
              v25 = (v25 + v13 + v14) & ~v14;
              v26 = v28;
              v27 = v29;
            }

            __swift_storeEnumTagSinglePayload(v25, v18, v26, v27);
          }

          else if (v18 > 0xFE)
          {
            *(a1 + 5) = 0;
            *(a1 + 24) = 0u;
            *(a1 + 8) = 0u;
            *a1 = (v18 - 255);
          }

          else
          {
            *a1 = v18 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v9 + v18;
    if (v16 < 4)
    {
      v21 = (v20 >> v17) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v16 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v16] = v21;
        break;
      case 2:
        *&a1[v16] = v21;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v16] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C1011E54(uint64_t a1)
{
  if (!qword_1EDE77590)
  {
    sub_1C12629F0();
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77590);
    }
  }
}

uint64_t sub_1C1011EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1011EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1011F24(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1011F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C1011FB4()
{
  result = qword_1EBE90D48;
  if (!qword_1EBE90D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90D48);
  }

  return result;
}

uint64_t sub_1C1012024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C1012084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(OUTLINED_FUNCTION_14_11(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21) - 8);
  v16 = v9 + ((*(v15 + 80) + 48) & ~*(v15 + 80));

  return sub_1C100F74C(v8, v16, v11, v12, v13, v14, v10);
}

uint64_t sub_1C1012120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v15[0] = v3[2];
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v11 = *(type metadata accessor for PhotosMajorMinorGrid(0, v15) - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1010000(a1, a2, (v3 + v12), v13, v7, v8, v9, v10, a3);
}

unint64_t sub_1C1012218()
{
  result = qword_1EDE772B8;
  if (!qword_1EDE772B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90D88, &unk_1C12A7AD8);
    sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0, &unk_1C12A77D0, &protocol conformance descriptor for PhotosShapeOverlay<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772B8);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_11_10();
  (*(v3 + 8))(v2 + v4, v1);
  v5 = OUTLINED_FUNCTION_15_11();
  (*(v6 + 8))(v2 + v7, v5);
  OUTLINED_FUNCTION_0_13();
  sub_1C1008DBC(*(v2 + *(v0 + 72)), *(v2 + *(v0 + 72) + 8));
  v8 = *(v0 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C1012430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(OUTLINED_FUNCTION_14_11(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22) - 8);
  v16 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v17 = *(v9 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C10101A0(v8, (v9 + v16), v17, v11, v12, v13, v14, v10);
}

unint64_t sub_1C10124F8()
{
  result = qword_1EDE76B60;
  if (!qword_1EDE76B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D38, &unk_1C12A77C0);
    sub_1C1012218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76B60);
  }

  return result;
}

uint64_t sub_1C101257C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C10125C4(uint64_t a1)
{
  v2 = sub_1C1263E90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1012620(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return v5;
    }
  }
}

uint64_t sub_1C101268C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1012738@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosIsFocusableItem.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10127CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v1;
}

double sub_1C1012824(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1012880()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t PhotosHeartView.init(model:showHearts:canToggleFavorite:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = sub_1C1012790(0) & 1;
  *(a4 + 24) = v8;
  result = swift_getKeyPath();
  *(a4 + 32) = result;
  *(a4 + 40) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

uint64_t PhotosHeartView.body.getter(void *a1)
{
  v3 = v1[1];
  v19 = *v1;
  v20[0] = v3;
  *(v20 + 9) = *(v1 + 25);
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, v14, v15, v16);
  v4 = sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge(255, v14, *(v16 + 8), v5);
  OUTLINED_FUNCTION_22();
  v6 = sub_1C1263190();
  OUTLINED_FUNCTION_4(255, v4, v6);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  OUTLINED_FUNCTION_22();
  v7 = sub_1C1263190();
  OUTLINED_FUNCTION_4(255, MEMORY[0x1E6981840], v7);
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12638E0();
  sub_1C12654B0();
  memcpy(__dst, __src, 0xA0uLL);
  v8 = swift_allocObject();
  v9 = v20[0];
  *(v8 + 40) = v19;
  *(v8 + 16) = v14;
  *(v8 + 24) = v15;
  *(v8 + 32) = v16;
  *(v8 + 56) = v9;
  *(v8 + 65) = *(v20 + 9);
  (*(*(a1 - 1) + 16))(v23, &v19, a1);
  v10 = sub_1C12654C0();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  sub_1C1264F40();

  memcpy(v21, __dst, sizeof(v21));
  (*(*(v10 - 8) + 8))(v21, v10);
  memcpy(v17, v23, sizeof(v17));
  v11 = sub_1C1263190();
  sub_1C10136B0();
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(__src, v17, sizeof(__src));
  v12 = *(*(v11 - 8) + 8);
  v12(__src, v11);
  memcpy(v17, __dst, sizeof(v17));
  sub_1C0FDBA4C();
  memcpy(v23, v17, 0xB0uLL);
  return (v12)(v23, v11);
}

uint64_t sub_1C1012D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (*(a1 + 9))
  {
    v8 = *(a1 + 16);
    __src[0] = *a1;
    __src[1] = v8;
    *(&__src[1] + 9) = *(a1 + 25);
    type metadata accessor for PhotosHeartView(0, a2, a3, a4);
    a1 = sub_1C10127CC();
    if (a1)
    {
      v9 = *(v7 + 16);
      __src[0] = *v7;
      __src[1] = v9;
      *(&__src[1] + 9) = *(v7 + 25);
      a1 = sub_1C1012880();
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, a2, a3, a4);
  sub_1C1263190();
  v10 = *(a4 + 8);
  type metadata accessor for PhotosFavoriteBadge(255, a2, v10, v11);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v12 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  sub_1C1009330(v12, WitnessTable, v14, v15, v16, v17);
  sub_1C12655B0();
  memcpy(v34, v35, sizeof(v34));
  if (*(v7 + 8))
  {
    *&__src[0] = *v7;
    (*(v10 + 8))(a2, v10);
  }

  v18 = sub_1C12655C0();
  v19 = swift_getWitnessTable();
  sub_1C1264F50();
  memcpy(v29, v34, sizeof(v29));
  (*(*(v18 - 8) + 8))(v29, v18);
  memcpy(v33, v36, sizeof(v33));
  v20 = sub_1C1263190();
  v28[2] = v19;
  v28[3] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v30, v33, sizeof(v30));
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v22(v30, v20);
  v26 = 0;
  v27 = 1;
  v28[0] = &v26;
  memcpy(v31, __src, sizeof(v31));
  memcpy(v25, __src, sizeof(v25));
  v28[1] = v25;
  (*(v21 + 16))(v33, v31, v20);
  v24[0] = MEMORY[0x1E6981840];
  v24[1] = v20;
  sub_1C119EE80(v28, 2, v24);
  memcpy(v32, __src, sizeof(v32));
  v22(v32, v20);
  memcpy(v33, v25, sizeof(v33));
  return (v22)(v33, v20);
}

uint64_t sub_1C10131DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_unknownObjectRetain_n();
  v8 = sub_1C110DB44(a2);
  PhotosInteractiveFavoriteBadge.init(_:tint:)(v7, v8, v38);
  v9 = type metadata accessor for PhotosInteractiveFavoriteBadge(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  v35[0] = v38[0];
  v35[1] = v38[1];
  v36[0] = v39[0];
  *(v36 + 9) = *(v39 + 9);
  (*(*(v9 - 8) + 8))(v35, v9);
  memcpy(__dst, __src, 0x48uLL);
  v11 = sub_1C1263190();
  v32 = WitnessTable;
  v33 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v37, __dst, sizeof(v37));
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v37, v11);
  *&__dst[0] = v7;
  v14 = *(a4 + 8);
  v15 = sub_1C110DB44(a2);
  PhotosFavoriteBadge.init(_:tint:)(v15, v27, a2, v14);
  v26 = v27[0];
  type metadata accessor for PhotosFavoriteBadge(0, a2, v14, v16);
  v17 = swift_getWitnessTable();
  sub_1C1264F50();

  swift_unknownObjectRelease();
  __dst[0] = v27[1];
  *&__dst[1] = v28;
  v18 = sub_1C1263190();
  v23[2] = v17;
  v23[3] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();

  swift_unknownObjectRelease();
  memcpy(v24, v41, sizeof(v24));
  memcpy(v22, v41, sizeof(v22));
  v21[0] = v29;
  v21[1] = v30;
  v21[2] = v31;
  v23[0] = v22;
  v23[1] = v21;
  (*(v12 + 16))(__dst, v24, v11);
  swift_unknownObjectRetain();

  v20[0] = v11;
  v20[1] = v18;
  sub_1C119EE80(v23, 2, v20);

  swift_unknownObjectRelease();
  memcpy(v25, v41, sizeof(v25));
  v13(v25, v11);

  swift_unknownObjectRelease();
  memcpy(__dst, v22, 0x48uLL);
  return (v13)(__dst, v11);
}

uint64_t sub_1C10135DC(char a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[1];
  v12[3] = *a2;
  *v13 = v7;
  *&v13[9] = *(a2 + 25);
  v8 = type metadata accessor for PhotosHeartView(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(v12, a2, v8);
  sub_1C1012824(a1);
  v9 = *&v13[16];
  v10 = v13[24];
  swift_unknownObjectRelease();

  return sub_1C1008DBC(v9, v10);
}

unint64_t sub_1C10136B0()
{
  result = qword_1EDE7BBB0;
  if (!qword_1EDE7BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBB0);
  }

  return result;
}

uint64_t sub_1C1013754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C101379C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10137DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.lumaLevelTracking(_:threshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  *&v7[3] = a6;
  return MEMORY[0x1C68EE920](v7, a4, &type metadata for LumaTrackingViewModifier, a5);
}

uint64_t sub_1C101388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E88, &qword_1C12A7E50);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E90, &qword_1C12A7E58);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  if (a3)
  {

    v18 = sub_1C12659A0();
    v26[1] = a5;
    v19 = v18;
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E98, &qword_1C12A7E60);
    v26[0] = v12;
    (*(*(v22 - 8) + 16))(v17, a1, v22);
    v23 = &v17[*(v15 + 36)];
    *v23 = a2;
    *(v23 + 1) = a3;
    *(v23 + 2) = a4;
    *(v23 + 3) = a6;
    *(v23 + 4) = v19;
    *(v23 + 5) = v21;
    sub_1C10142CC(v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1C10141E8();
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98, &qword_1C12A7E60, MEMORY[0x1E697FDF8]);
    sub_1C1263C20();
    return sub_1C101433C(v17);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E98, &qword_1C12A7E60);
    (*(*(v25 - 8) + 16))(v14, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_1C10141E8();
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98, &qword_1C12A7E60, MEMORY[0x1E697FDF8]);
    return sub_1C1263C20();
  }
}

id sub_1C1013B64(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for LumaTrackingView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV17PhotosSwiftUICoreP33_15D26146810CCE79A79DD9943E3354D316LumaTrackingView11Coordinator_representable];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_1C1013BF8(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C4560]) initWithThreshold_];
  [v1 setLumaTrackingEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EC0, &qword_1C12A7E70);
  sub_1C1264210();
  [v1 setDelegate_];

  return v1;
}

void sub_1C1013C98(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EC0, &qword_1C12A7E70);
  sub_1C1264210();
  [a1 setDelegate_];
}

id sub_1C1013E28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LumaTrackingView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1013EC8()
{
  result = qword_1EBE90E78;
  if (!qword_1EBE90E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90E78);
  }

  return result;
}

uint64_t sub_1C1013F1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1013F5C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySo11PXLumaLevelVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1C1014008@<X0>(void *a1@<X8>)
{
  result = sub_1C1013B64(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1C1014084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10143A4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C10140E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10143A4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C101414C(uint64_t a1)
{
  sub_1C10143A4();
  sub_1C1263BD0();
  __break(1u);
}

unint64_t sub_1C1014178()
{
  result = qword_1EBE90E80;
  if (!qword_1EBE90E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90E80);
  }

  return result;
}

unint64_t sub_1C10141E8()
{
  result = qword_1EBE90EA0;
  if (!qword_1EBE90EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90E90, &qword_1C12A7E58);
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98, &qword_1C12A7E60, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EBE90EB0, &qword_1EBE90EB8, &qword_1C12A7E68, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90EA0);
  }

  return result;
}

uint64_t sub_1C10142CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E90, &qword_1C12A7E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C101433C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90E90, &qword_1C12A7E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10143A4()
{
  result = qword_1EBE90EC8;
  if (!qword_1EBE90EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90EC8);
  }

  return result;
}

unint64_t sub_1C10143F8()
{
  result = qword_1EBE90ED8;
  if (!qword_1EBE90ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EE0, &unk_1C12A7E80);
    sub_1C10141E8();
    sub_1C0FDB6D4(&qword_1EBE90EA8, &qword_1EBE90E98, &qword_1C12A7E60, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90ED8);
  }

  return result;
}
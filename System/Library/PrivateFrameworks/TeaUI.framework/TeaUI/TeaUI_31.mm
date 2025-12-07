uint64_t sub_1D80C4908@<X0>(uint64_t a3@<X8>)
{
  sub_1D7E50D2C();
  sub_1D8190DB4();
  result = sub_1D8190814();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1D80C4974@<X0>(uint64_t a1@<X8>)
{
  sub_1D81925B4();
  sub_1D7E50D2C();
  result = sub_1D8190814();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D80C49E4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_1D80CBA64();
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D80CBA28(0);
  v73 = v5;
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CB9F4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v61 - v10;
  sub_1D80CAA04(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CB1DC(0);
  v70 = v15;
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  v68 = sub_1D81905D4();
  v67 = v20;
  sub_1D8191534();
  sub_1D805897C(a1, &v79);
  v21 = sub_1D8191524();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = a1[1];
  *(v22 + 32) = *a1;
  *(v22 + 48) = v24;
  v25 = a1[3];
  *(v22 + 64) = a1[2];
  *(v22 + 80) = v25;
  sub_1D805897C(a1, &v79);
  v26 = sub_1D8191524();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v23;
  v28 = a1[1];
  *(v27 + 32) = *a1;
  *(v27 + 48) = v28;
  v29 = a1[3];
  *(v27 + 64) = a1[2];
  *(v27 + 80) = v29;
  sub_1D8190AB4();
  v65 = v79;
  v30 = v80;
  [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v77 = v65;
  v78 = v30;
  sub_1D8190B74();
  LOBYTE(v30) = *(a1 + 41);
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  v33 = 1;
  *(v32 + 16) = (v30 & 1) == 0;
  v34 = &v14[*(v12 + 36)];
  *v34 = KeyPath;
  v34[1] = sub_1D80CCCAC;
  v34[2] = v32;
  sub_1D80CB260();
  v35 = v19;
  sub_1D8190874();
  sub_1D80CCAE4(v14, sub_1D80CAA04);
  v77 = a1[3];
  v79 = a1[3];
  sub_1D80CCB44(0, &qword_1ECA10B70, type metadata accessor for JSONSchemaValueInteger, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v36 = *(v76 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger_suppliedValues);
  v37 = *(v76 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger_suppliedValues + 8);
  sub_1D7ED06CC(v36, *(v76 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger_suppliedValues + 8));

  if (v37 == 255)
  {
    goto LABEL_4;
  }

  if (v37)
  {
    sub_1D7ED07B8(v36, v37);
LABEL_4:
    v38 = v75;
    v39 = v73;
    goto LABEL_6;
  }

  v40 = swift_allocObject();
  v41 = a1[1];
  v40[1] = *a1;
  v40[2] = v41;
  v42 = a1[3];
  v40[3] = a1[2];
  v40[4] = v42;
  v43 = v62;
  *v62 = v36;
  v43[1] = sub_1D80CBCDC;
  v43[2] = v40;
  v44 = *(v64 + 64);
  *(v43 + v44) = swift_getKeyPath();
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1D805897C(a1, &v79);
  sub_1D8055CA4(0);
  sub_1D80CCBA4(&qword_1ECA0FD00);
  sub_1D80CCBA4(&unk_1ECA10B50);
  v45 = v61;
  sub_1D81903B4();
  v38 = v75;
  v39 = v73;
  (*(v63 + 32))(v75, v45, v73);
  v33 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v38, v33, 1, v39);
  if (*(a1 + 40) & 1) == 0 && (v79 = *a1, LOBYTE(v80) = *(a1 + 16), sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x1DA712C90](&v76), v76 != 1) || (v79 = v77, sub_1D8190994(), sub_1D7EFDF10(&v79), , (BYTE8(v79)) && (v81 & 1) != 0 && (v82 & 1) != 0 && (v83 & 1) != 0 && (v84)
  {
    v46 = 0;
    v47 = 0;
    v73 = 0;
  }

  else
  {
    v76 = v77;
    sub_1D8190994();
    sub_1D7EFE364();

    v46 = sub_1D8190944();
    v76 = v77;
    sub_1D8190994();
    sub_1D7EFE364();

    v73 = sub_1D8190924();
    v47 = swift_getKeyPath();
  }

  v48 = v69;
  v49 = *(v69 + 16);
  v50 = v74;
  v66 = v35;
  v51 = v70;
  v49(v74, v35, v70);
  v52 = v38;
  v53 = v71;
  sub_1D80CAB18(v52, v71, sub_1D80CB9F4);
  v54 = v72;
  v49(v72, v50, v51);
  sub_1D80CB9C0(0);
  v56 = v55;
  sub_1D80CAB18(v53, v54 + *(v55 + 48), sub_1D80CB9F4);
  v57 = (v54 + *(v56 + 64));
  v58 = v73;
  sub_1D80CAC9C(v46);
  sub_1D80CACEC(v46);
  *v57 = v46;
  v57[1] = v47;
  v57[2] = v58;
  sub_1D80CCAE4(v75, sub_1D80CB9F4);
  v59 = *(v48 + 8);
  v59(v66, v51);
  sub_1D80CACEC(v46);
  sub_1D80CCAE4(v53, sub_1D80CB9F4);
  return (v59)(v74, v51);
}

void sub_1D80C5408(uint64_t a1, uint64_t a2, __n128 *a3)
{
  OUTLINED_FUNCTION_24_24(a1, a2, a3);
  OUTLINED_FUNCTION_8_50();
  sub_1D80CCB44(0, v4, v5, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  v6 = sub_1D8190994();
  v8 = sub_1D7EFC62C(v6, v7);

  *v3 = v8;
}

double sub_1D80C5480(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v7 = *a4;
  v6 = a4[1];
  v8 = *(a4 + 16);
  v24 = v7;
  *&v22 = v7;
  *(&v22 + 1) = v6;
  v23 = v8;
  v9 = sub_1D8057A0C(&v24, &v21);
  OUTLINED_FUNCTION_0_192(v9, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
  v11 = v10;

  OUTLINED_FUNCTION_14_39();
  MEMORY[0x1DA712C90](v11);
  if ((v21 & 1) == 0)
  {
    v22 = *(a4 + 3);
    OUTLINED_FUNCTION_8_50();
    sub_1D80CCB44(0, v12, v13, MEMORY[0x1E6981790]);
    OUTLINED_FUNCTION_14_39();
    v14 = sub_1D8190994();
    v16 = sub_1D7EFC62C(v14, v15);

    if (v16 != v5)
    {
      *&v22 = v7;
      *(&v22 + 1) = v6;
      v23 = v8;
      OUTLINED_FUNCTION_19_30();
      sub_1D8190A94();
    }
  }

  sub_1D80CAB98(&v24);

  v22 = *(a4 + 3);
  OUTLINED_FUNCTION_8_50();
  sub_1D80CCB44(0, v17, v18, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  sub_1D8190994();
  sub_1D7EFE148(v5, v19);

  return result;
}

double sub_1D80C55DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  sub_1D80CCB44(0, &qword_1ECA10B70, type metadata accessor for JSONSchemaValueInteger, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D7EFE148(v2, v3);

  return result;
}

uint64_t sub_1D80C56E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = *(a1 + 48);
  v35 = *(v3 + 8);
  v4 = (a1 + 24);
  v5 = *(a1 + 16);
  v26 = *(a1 + 32);
  v33 = v5;
  v34 = v26;
  type metadata accessor for JSONSchema.LabeledValue(255, &v33);
  v6 = sub_1D8191484();
  sub_1D80C8DFC(255);
  v8 = v7;
  OUTLINED_FUNCTION_16_39();
  WitnessTable = swift_getWitnessTable();
  v33 = v6;
  *&v34 = v5;
  *(&v34 + 1) = v8;
  v35 = WitnessTable;
  v36 = v3;
  v10 = sub_1D8190AE4();
  OUTLINED_FUNCTION_15_37();
  v32 = sub_1D80CCBA4(v11);
  OUTLINED_FUNCTION_4_81();
  v12 = swift_getWitnessTable();
  v33 = MEMORY[0x1E69E73E0];
  *&v34 = v10;
  *(&v34 + 1) = MEMORY[0x1E69E73F0];
  v35 = v12;
  v13 = sub_1D81907D4();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  *&v22 = v5;
  *(&v22 + 1) = *v4;
  v28 = v22;
  v29 = v26;
  v30 = v3;
  v31 = v2;
  OUTLINED_FUNCTION_33_16();
  sub_1D81907C4();
  OUTLINED_FUNCTION_17_32();
  swift_getWitnessTable();
  v23 = *(v15 + 16);
  v23(v21, v18, v13);
  v24 = *(v15 + 8);
  v24(v18, v13);
  v23(v27, v21, v13);
  return (v24)(v21, v13);
}

uint64_t sub_1D80C592C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v53 = a7;
  v60 = a2;
  v61 = a3;
  v41 = a3;
  v62 = a4;
  v63 = a5;
  v44 = a5;
  v45 = a4;
  v64 = a6;
  v49 = type metadata accessor for JSONSchemaPresetSelectorView(0, &v60);
  v13 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v40 - v14;
  v15 = *(a6 + 8);
  v60 = a2;
  v61 = a4;
  v62 = a5;
  v63 = v15;
  type metadata accessor for JSONSchema.LabeledValue(255, &v60);
  v16 = sub_1D8191484();
  v52 = v16;
  sub_1D80C8DFC(255);
  v18 = v17;
  v51 = v17;
  WitnessTable = swift_getWitnessTable();
  v60 = v16;
  v61 = a2;
  v62 = v18;
  v63 = WitnessTable;
  v64 = a6;
  v19 = a6;
  v40 = a6;
  v20 = sub_1D8190AE4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v48 = &v40 - v24;
  v42 = *a1;
  v60 = v42;
  v54 = a2;
  v55 = a3;
  v26 = v44;
  v25 = v45;
  v56 = v45;
  v57 = v44;
  v58 = v19;
  KeyPath = swift_getKeyPath();
  v27 = v47;
  v28 = a1;
  v29 = v49;
  (*(v13 + 16))(v47, v28, v49);
  v30 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v31 = swift_allocObject();
  v32 = v41;
  *(v31 + 2) = a2;
  *(v31 + 3) = v32;
  *(v31 + 4) = v25;
  *(v31 + 5) = v26;
  v33 = v40;
  *(v31 + 6) = v40;
  (*(v13 + 32))(&v31[v30], v27, v29);
  v34 = sub_1D80CCBA4(&unk_1ECA10968);
  sub_1D8190DB4();
  v35 = v46;
  sub_1D8190AD4(&v60, KeyPath, sub_1D80C8ED0, v31, v52, v51, WitnessTable, v33, v34);
  v59 = v34;
  swift_getWitnessTable();
  v36 = *(v21 + 16);
  v37 = v48;
  v36(v48, v35, v20);
  v38 = *(v21 + 8);
  v38(v35, v20);
  v36(v53, v37, v20);
  return (v38)(v37, v20);
}

uint64_t sub_1D80C5D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a4;
  v35 = a2;
  v36 = a8;
  v37 = a1;
  v11 = *(a7 + 8);
  v33 = a7;
  v45 = a3;
  v46 = a5;
  v47 = a6;
  v48 = v11;
  v38 = type metadata accessor for JSONSchema.LabeledValue(0, &v45);
  v14 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v16 = &v29 - v15;
  v32 = &v29 - v15;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v17 = a6;
  v30 = a6;
  v49 = a7;
  v31 = type metadata accessor for JSONSchemaPresetSelectorView(0, &v45);
  v18 = *(v31 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v31);
  v22 = &v29 - v21;
  (*(v18 + 16))(&v29 - v21, v35, v20);
  (*(v14 + 16))(v16, v37, v38);
  v23 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v24 = (v19 + *(v14 + 80) + v23) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 2) = a3;
  *(v25 + 3) = v26;
  *(v25 + 4) = a5;
  *(v25 + 5) = v17;
  v27 = v33;
  *(v25 + 6) = v33;
  (*(v18 + 32))(&v25[v23], v22, v31);
  (*(v14 + 32))(&v25[v24], v32, v38);
  v39 = a3;
  v40 = v26;
  v41 = a5;
  v42 = v30;
  v43 = v27;
  v44 = v37;
  sub_1D80CC4AC(0, &qword_1ECA0DBF8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for VerticallyLabeledContent);
  sub_1D80CB318(&qword_1ECA0DC10);
  return sub_1D81909D4();
}

uint64_t sub_1D80C6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a7;
  v13 = sub_1D8190364();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + 8))(a2, v15);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = v19;
  type metadata accessor for JSONSchemaPresetSelectorView(0, v20);
  sub_1D80CA360(v17);
  sub_1D8190354();
  return (*(v14 + 8))(v17, v13);
}

__n128 sub_1D80C6144@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v12 = a1[1];
  sub_1D8190DB4();
  sub_1D80C61F4(a2, a4, a5, a6, &v17);
  v14 = v18;
  v15 = v19;
  result = v17;
  *a7 = v13;
  *(a7 + 8) = v12;
  *(a7 + 16) = 1;
  *(a7 + 24) = result;
  *(a7 + 40) = v14;
  *(a7 + 48) = v15;
  return result;
}

uint64_t sub_1D80C61F4@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *(a5 + 8);
  v13 = a1;
  v14 = a3;
  v15 = a4;
  v16 = v7;
  type metadata accessor for JSONSchema.LabeledValue(0, &v13);
  v13 = sub_1D81925B4();
  v14 = v8;
  sub_1D7E50D2C();
  result = sub_1D8190814();
  *a6 = result;
  *(a6 + 8) = v10;
  *(a6 + 16) = v11 & 1;
  *(a6 + 24) = v12;
  return result;
}

uint64_t sub_1D80C62B0@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v38[1] = a2;
  sub_1D80CADF8(0, a3);
  v39 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CBAEC(0, &qword_1ECA10AC0, sub_1D80CADF8, sub_1D80CAF98, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - v9;
  sub_1D80CAF98(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  sub_1D80CCB44(0, &qword_1ECA10AC8, type metadata accessor for JSONSchemaValueNumber, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v15 = *(v40.n128_u64[0] + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber_suppliedValues);
  v16 = *(v40.n128_u64[0] + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber_suppliedValues + 8);
  sub_1D7ED06CC(v15, *(v40.n128_u64[0] + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber_suppliedValues + 8));

  if (v16 != 255)
  {
    if (v16)
    {
      v44 = sub_1D80C7830();
      v45 = v17;
      sub_1D8191534();
      sub_1D80588CC(a1, &v42);
      v18 = sub_1D8191524();
      v38[0] = v5;
      v19 = v18;
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      *(v20 + 16) = v19;
      *(v20 + 24) = v21;
      v22 = a1[1];
      *(v20 + 32) = *a1;
      *(v20 + 48) = v22;
      v23 = a1[3];
      *(v20 + 64) = a1[2];
      *(v20 + 80) = v23;
      sub_1D80588CC(a1, &v42);
      v24 = sub_1D8191524();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = MEMORY[0x1E69E85E0];
      v26 = a1[1];
      *(v25 + 32) = *a1;
      *(v25 + 48) = v26;
      v27 = a1[3];
      *(v25 + 64) = a1[2];
      *(v25 + 80) = v27;
      v28 = sub_1D8190AB4();
      v40 = v42;
      v41 = v43;
      MEMORY[0x1EEE9AC00](v28);
      sub_1D80CAEA8(0);
      sub_1D80CB80C(&unk_1ECA10A48);
      sub_1D7E50D2C();
      sub_1D8190A24();
      sub_1D7ED07B8(v15, v16);
      v29 = v38[0];
      v30 = v39;
      (*(v38[0] + 16))(v10, v7, v39);
      swift_storeEnumTagMultiPayload();
      sub_1D80CCBA4(&unk_1ECA10AD8);
      sub_1D80CCBA4(&unk_1ECA10AE0);
      sub_1D8190634();
      return (*(v29 + 8))(v7, v30);
    }

    sub_1D7ED07B8(v15, v16);
  }

  v32 = sub_1D80C7830();
  v34 = v33;
  v42 = *a1;
  LOBYTE(v43) = a1[1].n128_u8[0];
  sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1DA712C90](&v40);
  v35 = v40.n128_u8[0];
  *v14 = v32;
  *(v14 + 1) = v34;
  v14[16] = v35;
  v36 = &v14[*(v12 + 40)];
  *v36 = sub_1D8190574();
  *(v36 + 1) = 0;
  v36[16] = 1;
  sub_1D80CAABC(0, &unk_1ECA10AD0);
  sub_1D80C6AE0(a1, &v36[*(v37 + 44)]);
  sub_1D80CBB6C(v14, v10, sub_1D80CAF98);
  swift_storeEnumTagMultiPayload();
  sub_1D80CCBA4(&unk_1ECA10AD8);
  sub_1D80CCBA4(&unk_1ECA10AE0);
  sub_1D8190634();
  return sub_1D80CBBCC(v14, sub_1D80CAF98);
}

uint64_t sub_1D80C68E8(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D7EF8974(0);
  v4 = v3;
  sub_1D80CC4AC(0, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
  v6 = v5;
  v7 = sub_1D80CCBA4(&unk_1ECA10A40);
  v8 = sub_1D80CA7DC();
  sub_1D8190DB4();
  return sub_1D8190AD4(&v10, KeyPath, sub_1D80C6A08, 0, v4, v6, v7, MEMORY[0x1E69E63D0], v8);
}

uint64_t sub_1D80C6A88@<X0>(uint64_t a2@<X8>)
{
  sub_1D81915A4();
  sub_1D7E50D2C();
  result = sub_1D8190814();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1D80C6AE0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  sub_1D80CB540();
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D80CB41C(0);
  v78 = v5;
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CB3E8(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v65 - v10;
  sub_1D80CAA04(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CB1DC(0);
  v75 = v15;
  v74 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v73 = sub_1D81905D4();
  v72 = v20;
  v71 = v21;
  sub_1D8191534();
  sub_1D80588CC(a1, &v84);
  v22 = sub_1D8191524();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  v25 = a1[1];
  *(v23 + 32) = *a1;
  *(v23 + 48) = v25;
  v26 = a1[3];
  *(v23 + 64) = a1[2];
  *(v23 + 80) = v26;
  sub_1D80588CC(a1, &v84);
  v27 = sub_1D8191524();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v24;
  v29 = a1[1];
  *(v28 + 32) = *a1;
  *(v28 + 48) = v29;
  v30 = a1[3];
  *(v28 + 64) = a1[2];
  *(v28 + 80) = v30;
  sub_1D8190AB4();
  v31 = v84;
  v32 = v85;
  v33 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v33 setMaximumFractionDigits_];
  v34 = 1;
  [v33 setNumberStyle_];
  v82 = v31;
  v83 = v32;
  sub_1D8190B74();
  v35 = *(a1 + 41);
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = (v35 & 1) == 0;
  v38 = &v14[*(v12 + 36)];
  *v38 = KeyPath;
  v38[1] = sub_1D80CCCAC;
  v38[2] = v37;
  sub_1D80CB260();
  v39 = v19;
  sub_1D8190874();
  sub_1D80CCAE4(v14, sub_1D80CAA04);
  v82 = a1[3];
  v84 = a1[3];
  sub_1D80CCB44(0, &qword_1ECA10AC8, type metadata accessor for JSONSchemaValueNumber, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v40 = *(v81 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber_suppliedValues);
  v41 = *(v81 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber_suppliedValues + 8);
  sub_1D7ED06CC(v40, *(v81 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber_suppliedValues + 8));

  if (v41 == 255)
  {
    goto LABEL_4;
  }

  if (v41)
  {
    sub_1D7ED07B8(v40, v41);
    v34 = 1;
LABEL_4:
    v42 = v80;
    v43 = v78;
    goto LABEL_6;
  }

  v44 = swift_allocObject();
  v45 = a1[1];
  v44[1] = *a1;
  v44[2] = v45;
  v46 = a1[3];
  v44[3] = a1[2];
  v44[4] = v46;
  v47 = v67;
  *v67 = v40;
  v47[1] = sub_1D80CB628;
  v47[2] = v44;
  v48 = *(v69 + 64);
  *(v47 + v48) = swift_getKeyPath();
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1D80588CC(a1, &v84);
  sub_1D8055CA4(0);
  sub_1D80CCBA4(&qword_1ECA0FD00);
  sub_1D80CCBA4(&unk_1ECA10AA8);
  v49 = v66;
  sub_1D81903B4();
  v42 = v80;
  v43 = v78;
  (*(v68 + 32))(v80, v49, v78);
  v34 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v42, v34, 1, v43);
  if (*(a1 + 40) & 1) == 0 && (v84 = *a1, LOBYTE(v85) = *(a1 + 16), sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x1DA712C90](&v81), v81 != 1) || (v84 = v82, sub_1D8190994(), sub_1D7EFE748(&v84), , (BYTE8(v84)) && (v86 & 1) != 0 && (v87 & 1) != 0 && (v88 & 1) != 0 && (v89)
  {
    v50 = 0;
    v51 = 0;
    v78 = 0;
  }

  else
  {
    v81 = v82;
    sub_1D8190994();
    sub_1D7EFEBB4();

    v50 = sub_1D8190944();
    v81 = v82;
    sub_1D8190994();
    sub_1D7EFEBB4();

    v78 = sub_1D8190924();
    v51 = swift_getKeyPath();
  }

  v52 = v74;
  v53 = *(v74 + 16);
  v54 = v79;
  v70 = v39;
  v55 = v75;
  v53(v79, v39, v75);
  v56 = v42;
  v57 = v76;
  sub_1D80CAB18(v56, v76, sub_1D80CB3E8);
  v58 = v77;
  v53(v77, v54, v55);
  sub_1D80CB0F4(0);
  v60 = v59;
  sub_1D80CAB18(v57, v58 + *(v59 + 48), sub_1D80CB3E8);
  v61 = (v58 + *(v60 + 64));
  v62 = v78;
  sub_1D80CAC9C(v50);
  sub_1D80CACEC(v50);
  *v61 = v50;
  v61[1] = v51;
  v61[2] = v62;
  sub_1D80CCAE4(v80, sub_1D80CB3E8);
  v63 = *(v52 + 8);
  v63(v70, v55);
  sub_1D80CACEC(v50);
  sub_1D80CCAE4(v57, sub_1D80CB3E8);
  return (v63)(v79, v55);
}

void sub_1D80C754C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  OUTLINED_FUNCTION_24_24(a1, a2, a3);
  OUTLINED_FUNCTION_5_68();
  sub_1D80CCB44(0, v4, v5, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  v6 = sub_1D8190994();
  v8 = sub_1D7EFC6BC(v6, v7);

  *v3 = v8;
}

void sub_1D80C75C4(double *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v7 = *a4;
  v6 = a4[1];
  v8 = *(a4 + 16);
  v24 = v7;
  *&v22 = v7;
  *(&v22 + 1) = v6;
  v23 = v8;
  v9 = sub_1D8057A0C(&v24, &v21);
  OUTLINED_FUNCTION_0_192(v9, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
  v11 = v10;

  OUTLINED_FUNCTION_14_39();
  MEMORY[0x1DA712C90](v11);
  if ((v21 & 1) == 0)
  {
    v22 = *(a4 + 3);
    OUTLINED_FUNCTION_5_68();
    sub_1D80CCB44(0, v12, v13, MEMORY[0x1E6981790]);
    OUTLINED_FUNCTION_14_39();
    v14 = sub_1D8190994();
    v16 = sub_1D7EFC6BC(v14, v15);

    if (v16 != v5)
    {
      *&v22 = v7;
      *(&v22 + 1) = v6;
      v23 = v8;
      OUTLINED_FUNCTION_19_30();
      sub_1D8190A94();
    }
  }

  sub_1D80CAB98(&v24);

  v22 = *(a4 + 3);
  OUTLINED_FUNCTION_5_68();
  sub_1D80CCB44(0, v17, v18, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  v19 = sub_1D8190994();
  sub_1D7EFE980(v19, v20, v5);
}

void sub_1D80C7720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  sub_1D80CCB44(0, &qword_1ECA10AC8, type metadata accessor for JSONSchemaValueNumber, MEMORY[0x1E6981790]);
  v3 = sub_1D8190994();
  sub_1D7EFE980(v3, v4, v2);
}

uint64_t sub_1D80C7830()
{
  if (!*(v0 + 32))
  {
    return 0x3A65756C6156;
  }

  v2 = *(v0 + 24);
  sub_1D8190DB4();
  MEMORY[0x1DA713260](58, 0xE100000000000000);
  return v2;
}

uint64_t sub_1D80C7890@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1D8190574();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  a1(0);
  return a2(v3);
}

uint64_t sub_1D80C78F0@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v40 = a2;
  sub_1D80CA63C(0, a3);
  v41 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CBAEC(0, &qword_1ECA109F8, sub_1D80CA63C, sub_1D80CA874, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  sub_1D80CA874(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1[3];
  sub_1D80CCB44(0, &qword_1ECA10A00, type metadata accessor for JSONSchemaValueString, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v15 = *(v42.n128_u64[0] + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues);
  v16 = *(v42.n128_u64[0] + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8);
  sub_1D7ED06CC(v15, *(v42.n128_u64[0] + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8));

  if (v16 != 255)
  {
    if (v16)
    {
      v48 = sub_1D80C7830();
      v49 = v17;
      sub_1D8191534();
      sub_1D805881C(a1, &v45);
      v18 = sub_1D8191524();
      v39 = v5;
      v19 = v18;
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      *(v20 + 16) = v19;
      *(v20 + 24) = v21;
      v22 = a1[1];
      *(v20 + 32) = *a1;
      *(v20 + 48) = v22;
      v23 = a1[3];
      *(v20 + 64) = a1[2];
      *(v20 + 80) = v23;
      sub_1D805881C(a1, &v45);
      v24 = sub_1D8191524();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = MEMORY[0x1E69E85E0];
      v26 = a1[1];
      *(v25 + 32) = *a1;
      *(v25 + 48) = v26;
      v27 = a1[3];
      *(v25 + 64) = a1[2];
      *(v25 + 80) = v27;
      v28 = sub_1D8190AB4();
      v42 = v45;
      v43 = v46;
      v44 = v47;
      MEMORY[0x1EEE9AC00](v28);
      sub_1D80CA6EC(0);
      sub_1D80CB80C(&unk_1ECA109A0);
      sub_1D7E50D2C();
      sub_1D8190A24();
      sub_1D7ED07B8(v15, v16);
      v29 = v39;
      v30 = v41;
      (*(v39 + 16))(v10, v7, v41);
      swift_storeEnumTagMultiPayload();
      sub_1D80CCBA4(&unk_1ECA10A10);
      sub_1D80CCBA4(&unk_1ECA10A18);
      sub_1D8190634();
      return (*(v29 + 8))(v7, v30);
    }

    sub_1D7ED07B8(v15, v16);
  }

  v32 = sub_1D80C7830();
  v34 = v33;
  v45 = *a1;
  LOBYTE(v46) = a1[1].n128_u8[0];
  sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1DA712C90](&v42);
  v35 = v42.n128_u8[0];
  *v14 = v32;
  *(v14 + 1) = v34;
  v14[16] = v35;
  v36 = &v14[*(v12 + 40)];
  *v36 = sub_1D8190574();
  *(v36 + 1) = 0;
  v36[16] = 1;
  sub_1D80CAABC(0, &unk_1ECA10A08);
  sub_1D80C8150(a1, &v36[*(v37 + 44)]);
  sub_1D80CAB18(v14, v10, sub_1D80CA874);
  swift_storeEnumTagMultiPayload();
  sub_1D80CCBA4(&unk_1ECA10A10);
  sub_1D80CCBA4(&unk_1ECA10A18);
  sub_1D8190634();
  return sub_1D80CCAE4(v14, sub_1D80CA874);
}

uint64_t sub_1D80C7F30(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D7EF5274(0);
  v4 = v3;
  sub_1D80CC4AC(0, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
  v6 = v5;
  v7 = sub_1D80CCBA4(&unk_1ECA10998);
  v8 = sub_1D80CA7DC();
  sub_1D8190DB4();
  return sub_1D8190AD4(&v10, KeyPath, sub_1D80C8050, 0, v4, v6, v7, MEMORY[0x1E69E6168], v8);
}

uint64_t sub_1D80C80D0@<X0>(uint64_t a3@<X8>)
{
  sub_1D8190DB4();
  sub_1D8191114();
  sub_1D7E50D2C();
  result = sub_1D8190814();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1D80C8150@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_1D8055EE8();
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8055BB8(0);
  v60 = v5;
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8055B84(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v10;
  sub_1D80CAA04(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v59 = sub_1D81905D4();
  sub_1D8191534();
  sub_1D805881C(a1, &v66);
  v17 = sub_1D8191524();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v20;
  v21 = a1[3];
  *(v18 + 64) = a1[2];
  *(v18 + 80) = v21;
  sub_1D805881C(a1, &v66);
  v22 = sub_1D8191524();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v19;
  v24 = a1[1];
  *(v23 + 32) = *a1;
  *(v23 + 48) = v24;
  v25 = a1[3];
  *(v23 + 64) = a1[2];
  *(v23 + 80) = v25;
  sub_1D8190AB4();
  sub_1D8190B64();
  v26 = *(a1 + 41);
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  v29 = 1;
  *(v28 + 16) = (v26 & 1) == 0;
  v30 = v16;
  v31 = &v16[*(v12 + 44)];
  *v31 = KeyPath;
  v31[1] = sub_1D80CAC84;
  v31[2] = v28;
  v68 = a1[3];
  v66 = a1[3];
  sub_1D80CCB44(0, &qword_1ECA10A00, type metadata accessor for JSONSchemaValueString, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v32 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues);
  v33 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8);
  sub_1D7ED06CC(v32, *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8));

  if (v33 == 255)
  {
    goto LABEL_4;
  }

  if (v33)
  {
    sub_1D7ED07B8(v32, v33);
LABEL_4:
    v34 = v60;
    v35 = v61;
    goto LABEL_6;
  }

  v36 = swift_allocObject();
  v37 = a1[1];
  v36[1] = *a1;
  v36[2] = v37;
  v38 = a1[3];
  v36[3] = a1[2];
  v36[4] = v38;
  v39 = v56;
  *v56 = v32;
  v39[1] = sub_1D80CAD38;
  v39[2] = v36;
  v40 = *(v58 + 64);
  *(v39 + v40) = swift_getKeyPath();
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1D805881C(a1, &v66);
  sub_1D8055CA4(0);
  sub_1D80CCBA4(&qword_1ECA0FD00);
  sub_1D80CCBA4(&qword_1ECA0FD08);
  v41 = v55;
  sub_1D81903B4();
  v34 = v60;
  v35 = v61;
  (*(v57 + 32))(v61, v41, v60);
  v29 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v35, v29, 1, v34);
  if (((*(a1 + 40) & 1) != 0 || (v66 = *a1, LOBYTE(v67) = *(a1 + 16), sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x1DA712C90](&v65), v65 == 1)) && ((v66 = v68, sub_1D8190994(), v42 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_validations + 8), v43 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_validations + 24), , v42 != 1) || (v43 & 1) == 0))
  {
    v66 = v68;
    sub_1D8190994();
    sub_1D7EFF3B8();

    v44 = sub_1D8190944();
    v66 = v68;
    sub_1D8190994();
    sub_1D7EFF3B8();

    v46 = sub_1D8190924();
    v45 = swift_getKeyPath();
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v30;
  v48 = v62;
  sub_1D80CAB18(v30, v62, sub_1D80CAA04);
  v49 = v63;
  sub_1D80CAB18(v35, v63, sub_1D8055B84);
  v50 = v64;
  sub_1D80CAB18(v48, v64, sub_1D80CAA04);
  sub_1D80CA9D0(0);
  v52 = v51;
  sub_1D80CAB18(v49, v50 + *(v51 + 48), sub_1D8055B84);
  v53 = (v50 + *(v52 + 64));
  sub_1D80CAC9C(v44);
  sub_1D80CACEC(v44);
  *v53 = v44;
  v53[1] = v45;
  v53[2] = v46;
  sub_1D80CCAE4(v35, sub_1D8055B84);
  sub_1D80CCAE4(v47, sub_1D80CAA04);
  sub_1D80CACEC(v44);
  sub_1D80CCAE4(v49, sub_1D8055B84);
  return sub_1D80CCAE4(v48, sub_1D80CAA04);
}

void sub_1D80C89F0(uint64_t a1, uint64_t a2, __n128 *a3)
{
  OUTLINED_FUNCTION_24_24(a1, a2, a3);
  OUTLINED_FUNCTION_7_62();
  sub_1D80CCB44(0, v4, v5, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  v6 = sub_1D8190994();
  v8 = sub_1D7EFD090(v6, v7);
  v10 = v9;

  *v3 = v8;
  v3[1] = v10;
}

double sub_1D80C8A6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *a4;
  v7 = a4[1];
  v9 = *(a4 + 16);
  v28 = v8;
  *&v26 = v8;
  *(&v26 + 1) = v7;
  v27 = v9;
  v10 = sub_1D8057A0C(&v28, &v25);
  OUTLINED_FUNCTION_0_192(v10, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
  v12 = v11;

  OUTLINED_FUNCTION_14_39();
  MEMORY[0x1DA712C90](v12);
  if ((v25 & 1) == 0)
  {
    v26 = *(a4 + 3);
    OUTLINED_FUNCTION_7_62();
    sub_1D80CCB44(0, v13, v14, MEMORY[0x1E6981790]);
    OUTLINED_FUNCTION_14_39();
    v15 = sub_1D8190994();
    v17 = sub_1D7EFD090(v15, v16);
    v19 = v18;

    if (v17 == v5 && v19 == v6)
    {
    }

    else
    {
      v21 = sub_1D8192634();

      if ((v21 & 1) == 0)
      {
        *&v26 = v8;
        *(&v26 + 1) = v7;
        v27 = v9;
        OUTLINED_FUNCTION_19_30();
        sub_1D8190A94();
      }
    }
  }

  sub_1D80CAB98(&v28);

  v26 = *(a4 + 3);
  OUTLINED_FUNCTION_7_62();
  sub_1D80CCB44(0, v22, v23, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  sub_1D8190994();
  sub_1D8190DB4();
  sub_1D7EFF07C();

  return result;
}

double sub_1D80C8C1C(uint64_t a1, uint64_t a2)
{
  sub_1D80CCB44(0, &qword_1ECA10A00, type metadata accessor for JSONSchemaValueString, MEMORY[0x1E6981790]);
  sub_1D8190DB4();
  sub_1D8190994();
  sub_1D7EFF07C();

  return result;
}

uint64_t sub_1D80C8CC0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1D8190574();
  v4 = sub_1D8190944();
  v5 = sub_1D81908F4();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v4;
  *(a2 + 48) = result;
  *(a2 + 56) = v5;
  return result;
}

void sub_1D80C8DFC(uint64_t a1)
{
  if (!qword_1ECA10960)
  {
    sub_1D80CC4AC(255, &qword_1ECA0DBF8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for VerticallyLabeledContent);
    sub_1D80CB318(&unk_1ECA0DC10);
    v1 = sub_1D81909F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10960);
    }
  }
}

uint64_t sub_1D80C8ED0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v11[0] = v0[2];
  v11[1] = v1;
  v11[2] = v2;
  v11[3] = v3;
  v11[4] = v4;
  type metadata accessor for JSONSchemaPresetSelectorView(0, v11);
  OUTLINED_FUNCTION_20_34();

  return sub_1D80C5D0C(v5, v6, v7, v8, v2, v3, v4, v9);
}

uint64_t sub_1D80C8F94()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v6 = *(type metadata accessor for JSONSchemaPresetSelectorView(0, &v14) - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 + 8);
  v14 = v1;
  v15 = v3;
  v10 = (v7 + 56) & ~v7;
  v16 = v4;
  v17 = v9;
  v11 = *(type metadata accessor for JSONSchema.LabeledValue(0, &v14) - 8);
  v12 = v0 + ((v10 + v8 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1D80C6010(v0 + v10, v12, v1, v2, v3, v4, v5);
}

uint64_t sub_1D80C90C8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1D8190574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1D80CAABC(0, &unk_1ECA10C40);
  return a1(v2);
}

uint64_t sub_1D80C913C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONSchemaView(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1D80CC9C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v35 = a1;
  sub_1D80C9670(a1);
  sub_1D80CCBA4(&qword_1ECA0FE58);
  sub_1D81903B4();
  if (*(a1 + 24) & 1) != 0 || (*a1)
  {
    v37 = *(a1 + 32);
    v38 = v37;
    sub_1D80CCB44(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
    sub_1D8190994();
    sub_1D80CAB18(v36 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject_object, v5, type metadata accessor for JSONSchema.SchemaType.ObjectType);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v33;
      sub_1D80CCA80(v5, v33);
      v18 = v17 + *(v6 + 20);
      if (*(v18 + 8) != 1 || (*(v18 + 24) & 1) == 0)
      {
        v37 = v38;
        sub_1D8190994();
        sub_1D7F007AC();

        v21 = sub_1D8190944();
        v37 = v38;
        sub_1D8190994();
        sub_1D7F007AC();

        v23 = sub_1D8190924();
        sub_1D80CCAE4(v17, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
        KeyPath = swift_getKeyPath();

        goto LABEL_10;
      }

      v19 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject;
      v20 = v17;
    }

    else
    {
      v19 = type metadata accessor for JSONSchema.SchemaType.ObjectType;
      v20 = v5;
    }

    sub_1D80CCAE4(v20, v19);
  }

  v21 = 0;
  KeyPath = 0;
  v23 = 0;
LABEL_10:
  v24 = *(v11 + 16);
  v24(v13, v16, v10);
  v25 = v34;
  v26 = v24(v34, v13, v10);
  sub_1D80CC928(0, v26);
  v28 = &v25[*(v27 + 48)];
  sub_1D80CAC9C(v21);
  v29 = sub_1D80CACEC(v21);
  *v28 = v21;
  v28[1] = KeyPath;
  v28[2] = v23;
  v30 = *(v11 + 8);
  v30(v16, v10, v29);
  v31 = sub_1D80CACEC(v21);
  return (v30)(v13, v10, v31);
}

uint64_t sub_1D80C9670(uint64_t a1)
{
  v2 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v10 = v9;
  sub_1D80CCB44(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D80CAB18(v8 + OBJC_IVAR____TtC5TeaUI15JSONSchemaValue_schema, v4, type metadata accessor for JSONSchema);

  v9 = v10;
  sub_1D8190994();
  return sub_1D804FED8(v4, 0, 0, 0, 255, v8 | 0xA000000000000000, v5);
}

uint64_t sub_1D80C97B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D81905B4();
  sub_1D81905A4();
  sub_1D8190DB4();
  sub_1D8190594();

  sub_1D81905A4();
  sub_1D80CCB44(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
  v6 = sub_1D8190994();
  sub_1D7EFC74C(v6, v7);

  sub_1D8190584();
  sub_1D81905A4();
  sub_1D81905E4();
  v8 = sub_1D8190804();
  v10 = v9;
  v12 = v11;
  if (a1[24] & 1) != 0 || (*a1)
  {
    sub_1D81906E4();
  }

  else
  {
    sub_1D81906F4();
  }

  v13 = sub_1D81907E4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1D80CBD04(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

void *sub_1D80C9A7C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __dst[0] = *(v1 + 5);
  sub_1D80CC34C(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v4 = __src[0];
  switch(__src[0] >> 61)
  {
    case 1:
      v134 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueBool(v134);
      OUTLINED_FUNCTION_38_14();

      v135 = sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20(v135, v136, v137, v138, v139, v140, v141, v142, v183, v195, v207, v219, v231, v243, v255, v267, v279, v291, v303, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319, __src[0]);
      OUTLINED_FUNCTION_9_38();
      OUTLINED_FUNCTION_3_111(v143, v192, v204, v216, v228, v240, v252, v264, v276, v288, v300, v312, v315, v316, v317);
      v324 = 1;
      LOWORD(__dst[4]) = 1;
      v152 = OUTLINED_FUNCTION_31_17(v144, v145, v146, v147, v148, v149, v150, v151, v193, v205, v217, v229, v241, v253, v265, v277, v289, v301, v313, v315);
      sub_1D8058A38(v152, v153);
      sub_1D80CC67C();
      sub_1D8058548();
      v154 = OUTLINED_FUNCTION_11_43();
      v156 = OUTLINED_FUNCTION_36_14(v154, v155);
      OUTLINED_FUNCTION_21_30(v156, v157, v158, v159, v160, v161, v162, v163, v194, v206, v218, v230, v242, v254, v266, v278, v290, v302, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319);
      v322 = 0;
      OUTLINED_FUNCTION_6_76();
      sub_1D80CC4AC(0, v164, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, v165);
      OUTLINED_FUNCTION_37_14(v166, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      sub_1D8190634();
      v167 = OUTLINED_FUNCTION_22_23();
      memcpy(v167, v168, 0x42uLL);
      OUTLINED_FUNCTION_26_20();
      OUTLINED_FUNCTION_37_14(v169, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_11_43();
      OUTLINED_FUNCTION_33_16();
      sub_1D8190634();

      sub_1D8058A94(&v315);
      break;
    case 2:
      v50 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueInteger(v50);
      OUTLINED_FUNCTION_38_14();

      v51 = sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20(v51, v52, v53, v54, v55, v56, v57, v58, v183, v195, v207, v219, v231, v243, v255, v267, v279, v291, v303, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319, __src[0]);
      OUTLINED_FUNCTION_9_38();
      v317.n128_u8[9] = 1;
      OUTLINED_FUNCTION_3_111(v59, v186, v198, v210, v222, v234, v246, v258, v270, v282, v294, v306, v315, v316, v317);
      v324 = 0;
      LOWORD(__dst[4]) = 256;
      v68 = OUTLINED_FUNCTION_31_17(v60, v61, v62, v63, v64, v65, v66, v67, v187, v199, v211, v223, v235, v247, v259, v271, v283, v295, v307, v315);
      sub_1D805897C(v68, v69);
      v70 = sub_1D8058648();
      sub_1D805869C();
      v71 = OUTLINED_FUNCTION_11_43();
      v73 = OUTLINED_FUNCTION_36_14(v71, v72);
      OUTLINED_FUNCTION_21_30(v73, v74, v75, v76, v77, v78, v79, v80, v188, v200, v212, v224, v236, v248, v260, v272, v284, v296, v308, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319);
      v322 = 1;
      OUTLINED_FUNCTION_6_76();
      sub_1D80CC4AC(0, v81, v82, v83, v84);
      OUTLINED_FUNCTION_20_34();
      sub_1D80CC4AC(v85, v86, v87, v88, v70);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      OUTLINED_FUNCTION_20_34();
      sub_1D8190634();
      v89 = OUTLINED_FUNCTION_22_23();
      memcpy(v89, v90, 0x42uLL);
      OUTLINED_FUNCTION_26_20();
      OUTLINED_FUNCTION_37_14(v91, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_11_43();
      OUTLINED_FUNCTION_33_16();
      sub_1D8190634();

      sub_1D80589D8(&v315);
      break;
    case 3:
      v92 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueNumber(v92);
      OUTLINED_FUNCTION_38_14();

      v93 = sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20(v93, v94, v95, v96, v97, v98, v99, v100, v183, v195, v207, v219, v231, v243, v255, v267, v279, v291, v303, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319, __src[0]);
      OUTLINED_FUNCTION_9_38();
      v317.n128_u8[9] = 1;
      OUTLINED_FUNCTION_3_111(v101, v189, v201, v213, v225, v237, v249, v261, v273, v285, v297, v309, v315, v316, v317);
      v324 = 1;
      LOWORD(__dst[4]) = 257;
      v110 = OUTLINED_FUNCTION_31_17(v102, v103, v104, v105, v106, v107, v108, v109, v190, v202, v214, v226, v238, v250, v262, v274, v286, v298, v310, v315);
      sub_1D80588CC(v110, v111);
      v112 = sub_1D8058648();
      sub_1D805869C();
      v113 = OUTLINED_FUNCTION_11_43();
      v115 = OUTLINED_FUNCTION_36_14(v113, v114);
      OUTLINED_FUNCTION_21_30(v115, v116, v117, v118, v119, v120, v121, v122, v191, v203, v215, v227, v239, v251, v263, v275, v287, v299, v311, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319);
      v322 = 1;
      OUTLINED_FUNCTION_6_76();
      sub_1D80CC4AC(0, v123, v124, v125, v126);
      OUTLINED_FUNCTION_20_34();
      sub_1D80CC4AC(v127, v128, v129, v130, v112);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      OUTLINED_FUNCTION_20_34();
      sub_1D8190634();
      v131 = OUTLINED_FUNCTION_22_23();
      memcpy(v131, v132, 0x42uLL);
      OUTLINED_FUNCTION_26_20();
      OUTLINED_FUNCTION_37_14(v133, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_11_43();
      OUTLINED_FUNCTION_33_16();
      sub_1D8190634();

      sub_1D8058928(&v315);
      break;
    case 4:
      v23 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueString(v23);
      OUTLINED_FUNCTION_38_14();

      v24 = sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20(v24, v25, v26, v27, v28, v29, v30, v31, v183, v195, v207, v219, v231, v243, v255, v267, v279, v291, v303, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319, __src[0]);
      OUTLINED_FUNCTION_9_38();
      v317.n128_u8[9] = 1;
      OUTLINED_FUNCTION_3_111(v32, v184, v196, v208, v220, v232, v244, v256, v268, v280, v292, v304, v315, v316, v317);
      v322 = 0;
      LOBYTE(__dst[4]) = 0;
      v41 = OUTLINED_FUNCTION_31_17(v33, v34, v35, v36, v37, v38, v39, v40, v185, v197, v209, v221, v233, v245, v257, v269, v281, v293, v305, v315);
      sub_1D805881C(v41, v42);
      sub_1D8058320();
      sub_1D80CC39C();
      OUTLINED_FUNCTION_36_14(__dst, &type metadata for JSONSchemaStringValueRowControlView);
      v43 = OUTLINED_FUNCTION_22_23();
      memcpy(v43, v44, 0x41uLL);
      v323 = 1;
      BYTE2(__dst[4]) = 1;
      sub_1D80CC3F0(0);
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_20_34();
      sub_1D80CC4AC(v45, v46, v47, v48, v49);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_20_34();
      sub_1D8190634();

      sub_1D8058878(&v315);
      break;
    case 5:
      OUTLINED_FUNCTION_27_23();
      OUTLINED_FUNCTION_0_192(v170, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
      MEMORY[0x1DA712C90](&v315);
      v171 = v315;
      v173 = *v1;
      v172 = v1[1];
      v174 = *(v2 + 33);
      type metadata accessor for JSONSchemaValueObject(0);

      sub_1D8190DB4();
      sub_1D8190984();
      v175 = __src[0];
      v176 = __src[1];
      v321 = 1;
      LOBYTE(__dst[0]) = v171;
      OUTLINED_FUNCTION_34_17();
      *(&__dst[0] + 1) = v173;
      *&__dst[1] = v172;
      BYTE8(__dst[1]) = v174;
      BYTE9(__dst[1]) = 1;
      OUTLINED_FUNCTION_32_17();
      *&__dst[2] = v175;
      *(&__dst[2] + 1) = v176;
      __dst[3] = v315;
      LOBYTE(__dst[4]) = 1;
      sub_1D8058320();
      sub_1D80CC39C();
      sub_1D8190DB4();

      sub_1D8190634();
      v177 = OUTLINED_FUNCTION_22_23();
      memcpy(v177, v178, 0x41uLL);
      v324 = 1;
      BYTE2(__dst[4]) = 1;
      sub_1D80CC3F0(0);
      v179 = OUTLINED_FUNCTION_13_38();
      sub_1D80CC4AC(v179, v180, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, v181);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_12_42();
      sub_1D8190634();

      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_27_23();
      OUTLINED_FUNCTION_0_192(v5, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
      MEMORY[0x1DA712C90](&v315);
      v6 = v315;
      v8 = *v1;
      v7 = v1[1];
      v9 = *(v2 + 33);
      type metadata accessor for JSONSchemaValueArray(0);
      sub_1D8190DB4();

      sub_1D8190984();
      v10 = __src[0];
      v11 = __src[1];
      LOBYTE(v195) = 0;
      LOBYTE(__dst[0]) = v6;
      OUTLINED_FUNCTION_34_17();
      *(&__dst[0] + 1) = v8;
      *&__dst[1] = v7;
      BYTE8(__dst[1]) = v9;
      BYTE9(__dst[1]) = 1;
      OUTLINED_FUNCTION_32_17();
      *&__dst[2] = v10;
      *(&__dst[2] + 1) = v11;
      __dst[3] = v315;
      LOBYTE(__dst[4]) = 0;
      sub_1D80CC67C();
      sub_1D8058548();
      sub_1D8190DB4();

      v12 = sub_1D8190634();
      OUTLINED_FUNCTION_21_30(v12, v13, v14, v15, v16, v17, v18, v19, v183, v195, v4, v219, v231, v243, v255, v267, v279, v291, v303, v315, *(&v315 + 1), v316, *(&v316 + 1), v317.n128_i64[0], v317.n128_i64[1], v318, v319);
      v321 = 0;
      BYTE1(__dst[4]) = 0;
      v20 = MEMORY[0x1E697F960];
      sub_1D80CC4AC(0, &qword_1ECA10C00, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
      sub_1D80CC4AC(0, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v20);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      sub_1D8190634();
      v21 = OUTLINED_FUNCTION_22_23();
      memcpy(v21, v22, 0x42uLL);
      v324 = 0;
      BYTE2(__dst[4]) = 0;
      sub_1D80CC3F0(0);
      sub_1D80CC4AC(0, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, v20);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_12_42();
      sub_1D8190634();

LABEL_8:

      break;
  }

  memcpy(__dst, __src, 0x43uLL);
  return memcpy(a1, __dst, 0x43uLL);
}

uint64_t sub_1D80CA360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8190544();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1D80CA56C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D8190364();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1D81919D4();
    v13 = sub_1D8190764();
    sub_1D818FD54();

    sub_1D8190534();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D80CA56C(uint64_t a1, uint64_t a2)
{
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80CA63C(uint64_t a1, double a2)
{
  if (!qword_1ECA10980)
  {
    sub_1D80CA6EC(255);
    sub_1D80CB80C(&unk_1ECA109A0);
    v2 = sub_1D8190A34();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA10980);
    }
  }
}

void sub_1D80CA6EC(uint64_t a1)
{
  if (!qword_1ECA10988)
  {
    sub_1D7EF5274(255);
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    sub_1D80CCBA4(&unk_1ECA10998);
    v1 = sub_1D8190AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10988);
    }
  }
}

unint64_t sub_1D80CA7DC()
{
  result = qword_1ECA109A8;
  if (!qword_1ECA109A8)
  {
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA109A8);
  }

  return result;
}

void sub_1D80CA874(uint64_t a1)
{
  if (!qword_1ECA109B0)
  {
    sub_1D80CA908(255);
    v3 = v2;
    v4 = sub_1D80CCBA4(&unk_1ECA109F0);
    v6 = type metadata accessor for VerticallyLabeledContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1ECA109B0);
    }
  }
}

void sub_1D80CA908(uint64_t a1)
{
  if (!qword_1ECA109B8)
  {
    sub_1D80CA99C(255);
    sub_1D80CCBA4(&unk_1ECA109E8);
    v1 = sub_1D8190A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA109B8);
    }
  }
}

void sub_1D80CAA04(uint64_t a1)
{
  if (!qword_1ECA109D0)
  {
    sub_1D80CC4AC(255, &qword_1ECA0FCA8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1D80CC34C(255, &qword_1ECA109D8, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = sub_1D8190414();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA109D0);
    }
  }
}

void sub_1D80CAABC(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v3 = OUTLINED_FUNCTION_35();
    v4(v3);
    v5 = sub_1D8190374();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1D80CAB18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D80CAC2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D81904D4();
  *a1 = result;
  return result;
}

double sub_1D80CAC9C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_1D80CACEC(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

void sub_1D80CAD7C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v6 = v2;
    sub_1D80CBAEC(255, v3, v4, v5, MEMORY[0x1E697F960]);
    v7 = sub_1D8190374();
    if (!v8)
    {
      atomic_store(v7, v6);
    }
  }
}

void sub_1D80CADF8(uint64_t a1, double a2)
{
  if (!qword_1ECA10A30)
  {
    sub_1D80CAEA8(255);
    sub_1D80CB80C(&unk_1ECA10A48);
    v2 = sub_1D8190A34();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA10A30);
    }
  }
}

void sub_1D80CAEA8(uint64_t a1)
{
  if (!qword_1ECA10A38)
  {
    sub_1D7EF8974(255);
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    sub_1D80CCBA4(&unk_1ECA10A40);
    v1 = sub_1D8190AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10A38);
    }
  }
}

void sub_1D80CAF98(uint64_t a1)
{
  if (!qword_1ECA10A50)
  {
    sub_1D80CB02C(255);
    v3 = v2;
    v4 = sub_1D80CCBA4(&unk_1ECA10AB8);
    v6 = type metadata accessor for VerticallyLabeledContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1ECA10A50);
    }
  }
}

void sub_1D80CB02C(uint64_t a1)
{
  if (!qword_1ECA10A58)
  {
    sub_1D80CB0C0(255);
    sub_1D80CCBA4(&unk_1ECA10AB0);
    v1 = sub_1D8190A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10A58);
    }
  }
}

void sub_1D80CB128(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_35();
    v6(v5);
    v4(255);
    sub_1D80CCB44(255, &qword_1ECA109E0, sub_1D8055E0C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata3, v2);
    }
  }
}

void sub_1D80CB1DC(uint64_t a1)
{
  if (!qword_1ECA10A70)
  {
    sub_1D80CAA04(255);
    sub_1D80CB260();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA10A70);
    }
  }
}

unint64_t sub_1D80CB260()
{
  result = qword_1ECA10A78;
  if (!qword_1ECA10A78)
  {
    sub_1D80CAA04(255);
    sub_1D80CB318(&unk_1ECA10A80);
    sub_1D80CB36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10A78);
  }

  return result;
}

unint64_t sub_1D80CB318(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    sub_1D80CC4AC(255, v3, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D80CB36C()
{
  result = qword_1ECA10A88;
  if (!qword_1ECA10A88)
  {
    sub_1D80CC34C(255, &qword_1ECA109D8, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10A88);
  }

  return result;
}

void sub_1D80CB458(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v5 = v4;
    v6 = v3;
    v7 = OUTLINED_FUNCTION_35();
    sub_1D8055CA4(v7);
    v6(255);
    sub_1D80CCBA4(&qword_1ECA0FD00);
    sub_1D80CCBA4(v5);
    v8 = sub_1D81903C4();
    if (!v9)
    {
      atomic_store(v8, v2);
    }
  }
}

void sub_1D80CB540()
{
  if (!qword_1ECA10AA0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v4[0] = MEMORY[0x1E69E63B0];
    v4[1] = MEMORY[0x1E69E6418];
    v4[2] = MEMORY[0x1E69E63E8];
    v4[3] = MEMORY[0x1E69E63C0];
    v4[4] = MEMORY[0x1E69E63D0];
    v2 = type metadata accessor for JSONSchemaPresetSelectorView(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA10AA0);
    }
  }
}

void sub_1D80CB66C(uint64_t a1, double a2)
{
  if (!qword_1ECA10AF8)
  {
    sub_1D80CB71C(255);
    sub_1D80CB80C(&unk_1ECA10B10);
    v2 = sub_1D8190A34();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA10AF8);
    }
  }
}

void sub_1D80CB71C(uint64_t a1)
{
  if (!qword_1ECA10B00)
  {
    sub_1D7EF87CC(255);
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    sub_1D80CCBA4(&unk_1ECA10B08);
    v1 = sub_1D8190AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10B00);
    }
  }
}

unint64_t sub_1D80CB80C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    v3(255);
    sub_1D80CA7DC();
    OUTLINED_FUNCTION_4_81();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1D80CB864(uint64_t a1)
{
  if (!qword_1ECA10B18)
  {
    sub_1D80CB8F8(255);
    v3 = v2;
    v4 = sub_1D80CCBA4(&unk_1ECA10B60);
    v6 = type metadata accessor for VerticallyLabeledContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1ECA10B18);
    }
  }
}

void sub_1D80CB8F8(uint64_t a1)
{
  if (!qword_1ECA10B20)
  {
    sub_1D80CB98C(255);
    sub_1D80CCBA4(&unk_1ECA10B58);
    v1 = sub_1D8190A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10B20);
    }
  }
}

void sub_1D80CBA64()
{
  if (!qword_1ECA10B48)
  {
    v4[5] = v0;
    v4[6] = v1;
    v4[0] = MEMORY[0x1E69E6530];
    v4[1] = MEMORY[0x1E69E6590];
    v4[2] = MEMORY[0x1E69E6560];
    v4[3] = MEMORY[0x1E69E6538];
    v4[4] = MEMORY[0x1E69E6540];
    v2 = type metadata accessor for JSONSchemaPresetSelectorView(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA10B48);
    }
  }
}

void sub_1D80CBAEC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = OUTLINED_FUNCTION_35();
    v11 = v10(v9);
    v12 = a4(255);
    v13 = a5(a1, v11, v12);
    if (!v14)
    {
      atomic_store(v13, v5);
    }
  }
}

uint64_t sub_1D80CBB6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D80CBBCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_50Tm()
{

  return swift_deallocObject();
}

void sub_1D80CBD04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D80CBD30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D80CBD70(uint64_t result, int a2, int a3)
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

void sub_1D80CBDCC(uint64_t a1)
{
  if (!qword_1ECA10BA0)
  {
    sub_1D80CBAEC(255, &qword_1ECA10978, sub_1D80CA63C, sub_1D80CA874, MEMORY[0x1E697F960]);
    sub_1D80CBE74();
    v1 = sub_1D8190A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10BA0);
    }
  }
}

unint64_t sub_1D80CBE74()
{
  result = qword_1ECA10BA8;
  if (!qword_1ECA10BA8)
  {
    sub_1D80CBAEC(255, &qword_1ECA10978, sub_1D80CA63C, sub_1D80CA874, MEMORY[0x1E697F960]);
    sub_1D80CCBA4(&unk_1ECA10A10);
    sub_1D80CCBA4(&unk_1ECA10A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BA8);
  }

  return result;
}

void sub_1D80CBF98(uint64_t a1)
{
  if (!qword_1ECA10BB8)
  {
    sub_1D80CBAEC(255, &qword_1ECA10A28, sub_1D80CADF8, sub_1D80CAF98, MEMORY[0x1E697F960]);
    sub_1D80CC040();
    v1 = sub_1D8190A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10BB8);
    }
  }
}

unint64_t sub_1D80CC040()
{
  result = qword_1ECA10BC0;
  if (!qword_1ECA10BC0)
  {
    sub_1D80CBAEC(255, &qword_1ECA10A28, sub_1D80CADF8, sub_1D80CAF98, MEMORY[0x1E697F960]);
    sub_1D80CCBA4(&unk_1ECA10AD8);
    sub_1D80CCBA4(&unk_1ECA10AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BC0);
  }

  return result;
}

void sub_1D80CC164(uint64_t a1)
{
  if (!qword_1ECA10BD0)
  {
    sub_1D80CBAEC(255, &qword_1ECA10AF0, sub_1D80CB66C, sub_1D80CB864, MEMORY[0x1E697F960]);
    sub_1D80CC20C();
    v1 = sub_1D8190A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10BD0);
    }
  }
}

unint64_t sub_1D80CC20C()
{
  result = qword_1ECA10BD8;
  if (!qword_1ECA10BD8)
  {
    sub_1D80CBAEC(255, &qword_1ECA10AF0, sub_1D80CB66C, sub_1D80CB864, MEMORY[0x1E697F960]);
    sub_1D80CCBA4(&unk_1ECA10B80);
    sub_1D80CCBA4(&unk_1ECA10B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BD8);
  }

  return result;
}

void sub_1D80CC34C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D80CC39C()
{
  result = qword_1ECA10BF0;
  if (!qword_1ECA10BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BF0);
  }

  return result;
}

void sub_1D80CC3F0(uint64_t a1)
{
  if (!qword_1ECA10BF8)
  {
    v1 = MEMORY[0x1E697F960];
    sub_1D80CC4AC(255, &qword_1ECA10C00, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D80CC4AC(255, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v1);
    v2 = sub_1D8190644();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA10BF8);
    }
  }
}

void sub_1D80CC4AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D80CC548(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    v6 = v5;
    v7 = v4;
    v3(255);
    v7();
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D80CC5D0()
{
  result = qword_1ECA10C18;
  if (!qword_1ECA10C18)
  {
    sub_1D80CC4AC(255, &qword_1ECA10C00, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D80CC67C();
    sub_1D8058548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10C18);
  }

  return result;
}

unint64_t sub_1D80CC67C()
{
  result = qword_1ECA10C20;
  if (!qword_1ECA10C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10C20);
  }

  return result;
}

unint64_t sub_1D80CC6D0()
{
  result = qword_1ECA10C28;
  if (!qword_1ECA10C28)
  {
    sub_1D80CC4AC(255, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D8058320();
    sub_1D80CC39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10C28);
  }

  return result;
}

uint64_t sub_1D80CC78C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1D80CC7CC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1D80CC828(uint64_t a1)
{
  if (!qword_1ECA10C38)
  {
    sub_1D80CC3F0(255);
    sub_1D80CC4AC(255, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, MEMORY[0x1E697F960]);
    v1 = sub_1D8190644();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10C38);
    }
  }
}

void sub_1D80CC928(uint64_t a1, double a2)
{
  if (!qword_1ECA10C50)
  {
    sub_1D80CC9C8(255);
    sub_1D80CCB44(255, &qword_1ECA109E0, sub_1D8055E0C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA10C50);
    }
  }
}

void sub_1D80CC9C8(uint64_t a1)
{
  if (!qword_1ECA10C58)
  {
    type metadata accessor for JSONSchemaView(255);
    sub_1D80CCBA4(&qword_1ECA0FE58);
    v1 = sub_1D81903C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10C58);
    }
  }
}

uint64_t sub_1D80CCA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D80CCAE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1D80CCB44(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_35();
    v9 = v8(v7);
    v10 = a4(a1, v9);
    if (!v11)
    {
      atomic_store(v10, v4);
    }
  }
}

unint64_t sub_1D80CCBA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1D80CCBE8(uint64_t a1)
{
  if (!qword_1ECA10C70)
  {
    sub_1D80CC8F4(255);
    sub_1D80CCBA4(&unk_1ECA10C78);
    v1 = sub_1D8190A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10C70);
    }
  }
}

uint64_t sub_1D80CCCB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v9.val[0] = *(v3 + 80);
  v9.val[1] = v9.val[0];
  v5 = v8;
  vst2q_f64(v5, v9);
  type metadata accessor for StackNavigator.WeakRouter(255, v8);
  OUTLINED_FUNCTION_52();
  v6 = sub_1D818F9E4();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

double sub_1D80CCD94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0(v0);
  sub_1D8190DB4();
  return result;
}

double sub_1D80CCDD4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0(v0);
  sub_1D8190DB4();
  return result;
}

uint64_t StackNavigator.__allocating_init()()
{
  v0 = swift_allocObject();
  StackNavigator.init()();
  return v0;
}

uint64_t StackNavigator.init()()
{
  v13.val[0] = OUTLINED_FUNCTION_13_39();
  *v1 = v13;
  v2 = v12;
  vst2q_f64(v2, v13);
  type metadata accessor for StackNavigator.WeakRouter(0, v12);
  sub_1D818F9D4();
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  *(v0 + v4) = sub_1D8190D34();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 120);
  *(v0 + v6) = sub_1D8190D34();
  *(swift_allocObject() + 16) = v11;
  OUTLINED_FUNCTION_12();
  v8 = (v0 + *(v7 + 104));
  *v8 = sub_1D80CD044;
  v8[1] = v9;
  return v0;
}

uint64_t sub_1D80CCF7C(uint64_t a1)
{
  if (qword_1EDBBB520 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC6088;
  v2 = sub_1D81919C4();
  sub_1D818FD44("Activity creation not set up.", 29, 2, &dword_1D7DFF000, v1, v2, MEMORY[0x1E69E7CC0]);
  sub_1D80CD9B4();
  swift_allocError();
  *v3 = 0;
  sub_1D80CF494(0);
  swift_allocObject();
  return sub_1D818FB24();
}

uint64_t StackNavigator.__allocating_init<A>(userActivityManager:)(uint64_t (*a1)(uint64_t a1, uint64_t a2))
{
  v2 = swift_allocObject();
  StackNavigator.init<A>(userActivityManager:)(a1);
  return v2;
}

uint64_t sub_1D80CD090(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v97 = a5;
  v98 = a6;
  v95 = a3;
  v96.n128_u64[0] = a4;
  v99 = a2;
  v108.val[0] = *(*v7 + 80);
  v108.val[1] = v108.val[0];
  v102 = v108.val[0];
  v103 = v108.val[0];
  v10 = &v105;
  vst2q_f64(v10, v108);
  type metadata accessor for StackNavigator.WeakRouter(255, &v105);
  OUTLINED_FUNCTION_52();
  v92 = v11;
  sub_1D818F9E4();
  OUTLINED_FUNCTION_2();
  v101 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_21_31().n128_u64[0];
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v88 - v18;
  *&v102.f64[0] = OUTLINED_FUNCTION_21_31().n128_u64[1];
  type metadata accessor for Route(0, v14, *&v102.f64[0], v20);
  OUTLINED_FUNCTION_2();
  v93 = v22;
  v94 = v21;
  OUTLINED_FUNCTION_44();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v88 - v25;
  v27 = *(v16 + 16);
  v100 = a1;
  v27(v19, a1, v14, v24);
  sub_1D7E7B91C(v99, &v105);
  v28 = a3;
  v29 = v96.n128_u64[0];
  sub_1D7E19F24(v28, v96.n128_i64[0]);
  v31 = v97;
  v30 = v98;
  sub_1D7E19F24(v97, v98);
  v99 = v26;
  v32 = v19;
  v33 = v101;
  v97 = v14;
  sub_1D8061A40(v32, v95, v29, v31, v30, &v105, v14, *&v102.f64[0], v26);
  OUTLINED_FUNCTION_17_33();
  OUTLINED_FUNCTION_16_40();
  v34 = sub_1D818F9B4();
  v37 = *(v33 + 8);
  v36 = v33 + 8;
  v35 = v37;
  v38 = OUTLINED_FUNCTION_131();
  result = (v37)(v38);
  v40 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    sub_1D818F974();
    v41 = OUTLINED_FUNCTION_131();
    *&v102.f64[0] = v35;
    v35(v41);
    v42 = v100;
    sub_1D80CE214(v100, sub_1D80CCDD4, sub_1D80CF45C);
    v98 = 0;
    v96 = xmmword_1D81A1B70;
    while (2)
    {
      v43 = v107;
      if (!v107)
      {
LABEL_23:
        v66 = sub_1D80CD9B4();
        OUTLINED_FUNCTION_121(&type metadata for StackNavigatorError, v66);
        OUTLINED_FUNCTION_30_22(v67, 1);
        OUTLINED_FUNCTION_1_138();
        v69 = v42;
LABEL_24:
        sub_1D80CE214(v69, v68, sub_1D80CF50C);
        goto LABEL_25;
      }

      while (1)
      {

        if (sub_1D80CDA08())
        {
          break;
        }

        OUTLINED_FUNCTION_11_10();
        swift_beginAccess();
        sub_1D818F994();
        v44 = v104;
        swift_endAccess();

        v45 = __OFSUB__(v40--, 1);
        if (v45)
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v40 < 0)
        {

          goto LABEL_23;
        }

        OUTLINED_FUNCTION_17_33();
        OUTLINED_FUNCTION_26_21();

        v46 = OUTLINED_FUNCTION_131();
        (*&v102.f64[0])(v46);

        v43 = v105;
        v107 = v105;
        if (!v105)
        {
          goto LABEL_23;
        }
      }

      v101 = v36;
      (*(v43 + 32))(&v105, v99);
      LODWORD(v95) = v105;
      if (qword_1EDBBB520 != -1)
      {
        OUTLINED_FUNCTION_2_124();
        swift_once();
      }

      v91 = qword_1EDBC6088;
      v90 = sub_1D81919E4();
      v47 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v47, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], v48);
      v50 = OUTLINED_FUNCTION_28_20(v49);
      OUTLINED_FUNCTION_11_44(v50, v96);
      v104 = v43;
      OUTLINED_FUNCTION_6_77();
      v88[0] = swift_getWitnessTable();
      sub_1D8192604();
      v51 = v105;
      v89 = v106;
      v50[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v52 = sub_1D7E13BF4();
      v50[4].n128_u64[0] = v52;
      v53 = v89;
      v50[2].n128_u64[0] = v51;
      v50[2].n128_u64[1] = v53;
      v105 = 0;
      v106 = 0xE000000000000000;
      LOBYTE(v104) = v95;
      sub_1D8192334();
      v54 = v105;
      v55 = v106;
      v50[6].n128_u64[0] = MEMORY[0x1E69E6158];
      v50[6].n128_u64[1] = v52;
      v50[4].n128_u64[1] = v54;
      v50[5].n128_u64[0] = v55;
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_1D81925F4();
      v44 = v52;
      v56 = v105;
      v57 = v106;
      v50[8].n128_u64[1] = MEMORY[0x1E69E6158];
      v50[9].n128_u64[0] = v52;
      v50[7].n128_u64[0] = v56;
      v50[7].n128_u64[1] = v57;
      sub_1D818FD44("Current router: <%{public}@> has returned <%{public}@> for activity <%{public}@>", 80, 2, &dword_1D7DFF000, v91, v90, v50);

      if ((v95 - 1) < 2)
      {
        v45 = __OFSUB__(v40--, 1);
        v36 = v101;
        if (v45)
        {
          goto LABEL_31;
        }

        if (v40 < 0)
        {
          sub_1D81919C4();
          OUTLINED_FUNCTION_12_43();
          sub_1D818FD44(v75);
          v76 = sub_1D80CD9B4();
          OUTLINED_FUNCTION_121(&type metadata for StackNavigatorError, v76);
          OUTLINED_FUNCTION_30_22(v77, 3);

          OUTLINED_FUNCTION_1_138();
          v69 = v100;
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_17_33();
        OUTLINED_FUNCTION_26_21();
        v58 = OUTLINED_FUNCTION_131();
        (*&v102.f64[0])(v58);

        v107 = v105;
LABEL_20:
        if (v98 != 99)
        {
          ++v98;

          v42 = v100;
          continue;
        }

        sub_1D81919C4();
        OUTLINED_FUNCTION_12_43();
        sub_1D818FD44(v71);
        v72 = sub_1D80CD9B4();
        OUTLINED_FUNCTION_121(&type metadata for StackNavigatorError, v72);
        *v73 = 2;
        swift_willThrow();

        OUTLINED_FUNCTION_1_138();
        sub_1D80CE214(v100, v74, sub_1D80CF50C);
LABEL_25:

        OUTLINED_FUNCTION_19_31();
        return v70(v99);
      }

      break;
    }

    v36 = v101;
    if (v95)
    {
LABEL_29:
      LODWORD(v102.f64[0]) = sub_1D81919E4();
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1D819FAC0;
      v105 = 0;
      v106 = 0xE000000000000000;
      v79 = v100;
      sub_1D81925F4();
      v80 = v105;
      v81 = v106;
      v82 = MEMORY[0x1E69E6158];
      *(v78 + 56) = MEMORY[0x1E69E6158];
      *(v78 + 64) = v44;
      *(v78 + 32) = v80;
      *(v78 + 40) = v81;
      v105 = 0;
      v106 = 0xE000000000000000;
      v104 = v43;
      sub_1D8192604();
      v83 = v105;
      v84 = v106;
      *(v78 + 96) = v82;
      *(v78 + 104) = v44;
      *(v78 + 72) = v83;
      *(v78 + 80) = v84;
      OUTLINED_FUNCTION_12_43();
      sub_1D818FD44(v85);

      OUTLINED_FUNCTION_1_138();
      sub_1D80CE214(v79, v86, sub_1D80CF50C);

      OUTLINED_FUNCTION_19_31();
      return v87(v99);
    }

    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    sub_1D818F974();
    v59 = OUTLINED_FUNCTION_131();
    v60 = v102.f64[0];
    (*&v102.f64[0])(v59);

    v95 = v105;
    v107 = v105;
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    v61 = sub_1D818F9B4();
    v62 = OUTLINED_FUNCTION_131();
    result = (*&v60)(v62);
    if (__OFSUB__(v61, 1))
    {
      goto LABEL_32;
    }

    if (v61 - 1 == v40)
    {
      v63 = sub_1D81919C4();
      sub_1D818FD44("Navigating router returned .pushed from navigateStack, but we have the same number of routers as before!", 104, 2, &dword_1D7DFF000, v91, v63, MEMORY[0x1E69E7CC0]);
    }

    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    v64 = sub_1D818F9B4();
    v65 = OUTLINED_FUNCTION_131();
    result = (*&v102.f64[0])(v65);
    v40 = v64 - 1;
    if (!__OFSUB__(v64, 1))
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D80CD9B4()
{
  result = qword_1EDBB0C90;
  if (!qword_1EDBB0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0C90);
  }

  return result;
}

BOOL sub_1D80CDA08()
{

  v0 = sub_1D818F034();

  return (v0 & 1) == 0;
}

void sub_1D80CDA70(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = *v2;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCE80]) init];
  v11 = v9;
  if (!v7)
  {
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_24_25();
    *(v16 - 16) = v5;
    sub_1D7E0A1A8(0, qword_1EDBBC7E0, 0x1E69636A8);
    sub_1D818FC24();
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
    v17 = sub_1D8191AB4();
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v11;
    v18 = v11;
    OUTLINED_FUNCTION_7_63();

    v15 = sub_1D818FA14();
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_24_25();
    *(v12 - 16) = v6;
    sub_1D7E0A1A8(0, qword_1EDBBC7E0, 0x1E69636A8);
    sub_1D818FC24();
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
    v13 = sub_1D8191AB4();
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v11;
    v14 = v11;
    OUTLINED_FUNCTION_7_63();

    v15 = sub_1D818FA14();
LABEL_7:
    sub_1D818FB04();

LABEL_8:
    OUTLINED_FUNCTION_1_138();
    sub_1D80CE214(a1, v21, sub_1D80CF50C);

    return;
  }

  if (v5 | v6)
  {
    MEMORY[0x1EEE9AC00](v9);
    sub_1D7E0A1A8(0, qword_1EDBBC7E0, 0x1E69636A8);
    sub_1D818FC24();
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
    v19 = sub_1D8191AB4();
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v11;
    v20 = v11;
    OUTLINED_FUNCTION_7_63();

    v15 = sub_1D818FA14();
    goto LABEL_7;
  }

  type metadata accessor for StackNavigator(0, *(v8 + 80), *(v8 + 88), v10);
  swift_getWitnessTable();
  Navigator.navigate(to:)();
  if (!v3)
  {
    goto LABEL_8;
  }

  if (qword_1EDBBB520 != -1)
  {
    OUTLINED_FUNCTION_2_124();
    swift_once();
  }

  v22 = qword_1EDBC6088;
  v23 = sub_1D81919C4();
  v24 = OUTLINED_FUNCTION_0_193();
  sub_1D7E13630(v24, v25, v26, v27, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D819FAB0;
  sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
  sub_1D8192334();
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1D7E13BF4();
  *(v29 + 32) = 0;
  *(v29 + 40) = 0xE000000000000000;
  sub_1D818FD44("Failed to serialize Tea Activity into NSUserActivity, error=%{public}@", 70, 2, &dword_1D7DFF000, v22, v23, v29);

  swift_willThrow();
}

void sub_1D80CDFB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [objc_opt_self() sharedApplication];
  v10[4] = a3;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D806D054;
  v10[3] = a4;
  v9 = _Block_copy(v10);
  [v8 requestSceneSessionActivation:0 userActivity:v7 options:a2 errorHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1D80CE0D0(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_1EDBBB520 != -1)
  {
    OUTLINED_FUNCTION_2_124();
    swift_once();
  }

  v5 = qword_1EDBC6088;
  v6 = sub_1D81919C4();
  v7 = OUTLINED_FUNCTION_0_193();
  sub_1D7E13630(v7, v8, v9, v10, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D819FAB0;
  sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
  sub_1D8192334();
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D7E13BF4();
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  sub_1D818FD44(a2, a3, 2, &dword_1D7DFF000, v5, v6, v12);
}

uint64_t sub_1D80CE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12();
  v3();
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  swift_getWitnessTable();
  sub_1D8191224();
}

void *sub_1D80CE400(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a5;
  v100 = a6;
  v98.n128_u64[0] = a4;
  v96 = a2;
  v109.val[0] = *(*v6 + 80);
  v109.val[1] = v109.val[0];
  v103 = v109.val[0];
  v104 = v109.val[0];
  v9 = &v106;
  vst2q_f64(v9, v109);
  type metadata accessor for StackNavigator.WeakRouter(255, &v106);
  OUTLINED_FUNCTION_52();
  v92 = v10;
  sub_1D818F9E4();
  OUTLINED_FUNCTION_2();
  v102 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_31().n128_u64[0];
  OUTLINED_FUNCTION_2();
  v15 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v88 - v17;
  v95 = v88 - v17;
  v97 = OUTLINED_FUNCTION_21_31().n128_u64[1];
  type metadata accessor for Route(0, v13, v97, v19);
  OUTLINED_FUNCTION_2();
  v93 = v21;
  v94 = v20;
  OUTLINED_FUNCTION_44();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v88 - v24;
  v26 = *(v15 + 16);
  v101 = a1;
  v26(v18, a1, v13, v23);
  sub_1D7E7B91C(v96, &v106);
  v27 = a3;
  v28 = a3;
  v29 = v98.n128_u64[0];
  sub_1D7E19F24(v27, v98.n128_i64[0]);
  v31 = v99;
  v30 = v100;
  sub_1D7E19F24(v99, v100);
  *&v103.f64[0] = v25;
  v100 = v13;
  v32 = v13;
  v33 = v102;
  sub_1D8061A40(v95, v28, v29, v31, v30, &v106, v32, v97, v25);
  OUTLINED_FUNCTION_29_20();
  v34 = sub_1D818F9B4();
  v37 = v33[1];
  v35 = v33 + 1;
  v36 = v37;
  v38 = OUTLINED_FUNCTION_22_24();
  v37(v38);
  v39 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_29_20();
  sub_1D818F974();
  v40 = OUTLINED_FUNCTION_22_24();
  v36(v40);
  v99 = 0;
  v98 = xmmword_1D81A1B70;
  while (2)
  {
    v41 = v108;
    if (!v108)
    {
LABEL_17:
      if (qword_1EDBBB520 == -1)
      {
LABEL_18:
        v57 = qword_1EDBC6088;
        v58 = OUTLINED_FUNCTION_0_193();
        sub_1D7E13630(v58, v59, v60, v61, v62);
        v63 = swift_allocObject();
        OUTLINED_FUNCTION_11_44(v63, xmmword_1D819FAB0);
        sub_1D81925F4();
        v64 = v106;
        v65 = v107;
        v63[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v63[4].n128_u64[0] = sub_1D7E13BF4();
        v63[2].n128_u64[0] = v64;
        v63[2].n128_u64[1] = v65;
        v66 = sub_1D81919E4();
        sub_1D818FD44("Unable to find any router to handle preview for activity <%{public}@>", 69, 2, &dword_1D7DFF000, v57, v66, v63);

        v67 = sub_1D80CD9B4();
        OUTLINED_FUNCTION_121(&type metadata for StackNavigatorError, v67);
        OUTLINED_FUNCTION_30_22(v68, 1);
        goto LABEL_19;
      }

LABEL_29:
      OUTLINED_FUNCTION_2_124();
      swift_once();
      goto LABEL_18;
    }

    while (1)
    {

      if (sub_1D80CDA08())
      {
        break;
      }

      OUTLINED_FUNCTION_11_10();
      swift_beginAccess();
      sub_1D818F994();
      swift_endAccess();

      v42 = __OFSUB__(v39--, 1);
      if (v42)
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v39 < 0)
      {

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_29_20();
      OUTLINED_FUNCTION_27_24();

      v43 = OUTLINED_FUNCTION_22_24();
      v36(v43);

      v41 = v106;
      v108 = v106;
      if (!v106)
      {
        goto LABEL_17;
      }
    }

    v102 = v35;
    v41[6](&v106, *&v103.f64[0]);
    v97 = v106;
    if (qword_1EDBBB520 != -1)
    {
      OUTLINED_FUNCTION_2_124();
      swift_once();
    }

    v96 = qword_1EDBC6088;
    LODWORD(v95) = sub_1D81919E4();
    v44 = OUTLINED_FUNCTION_0_193();
    sub_1D7E13630(v44, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], v45);
    v47 = OUTLINED_FUNCTION_28_20(v46);
    OUTLINED_FUNCTION_11_44(v47, v98);
    v105 = v41;
    OUTLINED_FUNCTION_6_77();
    v88[0] = swift_getWitnessTable();
    sub_1D8192604();
    v90 = v106;
    v89 = v107;
    v47[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v48 = sub_1D7E13BF4();
    v47[4].n128_u64[0] = v48;
    v91 = v48;
    v49 = v89;
    v47[2].n128_u64[0] = v90;
    v47[2].n128_u64[1] = v49;
    v106 = 0;
    v107 = 0xE000000000000000;
    v105 = v97;
    sub_1D8192334();
    v50 = v106;
    v51 = v107;
    v47[6].n128_u64[0] = MEMORY[0x1E69E6158];
    v47[6].n128_u64[1] = v48;
    v47[4].n128_u64[1] = v50;
    v47[5].n128_u64[0] = v51;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1D81925F4();
    v52 = v91;
    v53 = v106;
    v54 = v107;
    v47[8].n128_u64[1] = MEMORY[0x1E69E6158];
    v47[9].n128_u64[0] = v52;
    v47[7].n128_u64[0] = v53;
    v47[7].n128_u64[1] = v54;
    sub_1D818FD44("Current router: <%{public}@> has returned <%{public}@> for preview activity <%{public}@>", 88, 2, &dword_1D7DFF000, v96, v95, v47);

    if (v97)
    {
      if (v97 != 1)
      {
        v74 = v97;
        v102 = v97;
        sub_1D81919E4();
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1D819FAC0;
        v106 = 0;
        v107 = 0xE000000000000000;
        sub_1D81925F4();
        v76 = v106;
        v77 = v107;
        v78 = MEMORY[0x1E69E6158];
        *(v75 + 56) = MEMORY[0x1E69E6158];
        *(v75 + 64) = v52;
        *(v75 + 32) = v76;
        *(v75 + 40) = v77;
        v106 = 0;
        v107 = 0xE000000000000000;
        v105 = v41;
        sub_1D8192604();
        v79 = v106;
        v80 = v107;
        *(v75 + 96) = v78;
        *(v75 + 104) = v52;
        *(v75 + 72) = v79;
        *(v75 + 80) = v80;
        OUTLINED_FUNCTION_23_21();
        sub_1D818FD44(v81);

        sub_1D80CECD8(v74);

        OUTLINED_FUNCTION_19_31();
        v82(*&v103.f64[0]);
        return v102;
      }

      sub_1D81919E4();
      OUTLINED_FUNCTION_23_21();
      sub_1D818FD44(v70);
      v71 = sub_1D80CD9B4();
      OUTLINED_FUNCTION_121(&type metadata for StackNavigatorError, v71);
      v73 = 4;
      goto LABEL_25;
    }

    v42 = __OFSUB__(v39--, 1);
    if (v42)
    {
      __break(1u);
      return result;
    }

    if (v39 < 0)
    {
      sub_1D81919E4();
      OUTLINED_FUNCTION_23_21();
      sub_1D818FD44(v83);
      v84 = sub_1D80CD9B4();
      OUTLINED_FUNCTION_121(&type metadata for StackNavigatorError, v84);
      v73 = 5;
LABEL_25:
      OUTLINED_FUNCTION_30_22(v72, v73);

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_27_24();
    v56 = OUTLINED_FUNCTION_22_24();
    v35 = v102;
    v36(v56);

    v108 = v106;
    if (v99 != 99)
    {
      ++v99;

      continue;
    }

    break;
  }

  sub_1D81919C4();
  OUTLINED_FUNCTION_23_21();
  sub_1D818FD44(v85);
  v86 = sub_1D80CD9B4();
  OUTLINED_FUNCTION_121(&type metadata for StackNavigatorError, v86);
  *v87 = 2;
  swift_willThrow();

LABEL_19:

LABEL_20:
  OUTLINED_FUNCTION_19_31();
  return v69(*&v103.f64[0]);
}

void sub_1D80CECD8(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t StackNavigator.deinit()
{
  v1 = *(*v0 + 96);
  v6.val[0] = OUTLINED_FUNCTION_13_39();
  vst2q_f64(v2, v6);
  type metadata accessor for StackNavigator.WeakRouter(255, &v5);
  OUTLINED_FUNCTION_52();
  v3 = sub_1D818F9E4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t StackNavigator.__deallocating_deinit()
{
  StackNavigator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80CEFA8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = (*(v0 + 64))();
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    sub_1D8190DB4();
  }

  sub_1D8190DB4();
  return v1;
}

void sub_1D80CF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(a7 + 24))(a1, a5, a7);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D80CF0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(a7 + 32))(a1, a5, a7);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D80CF160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0x636F6C6C6165643CLL;
  }

  v9 = Strong;
  sub_1D7E0631C(0, &unk_1EDBB2D18, MEMORY[0x1E69E6F68]);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v7, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v5 = sub_1D81925B4();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D80CF3D4(v7);
    swift_getObjectType();
    v5 = sub_1D8192914();
    swift_unknownObjectRelease();
  }

  return v5;
}

double sub_1D80CF2A4()
{

  sub_1D818F064();

  return result;
}

uint64_t sub_1D80CF2E4()
{

  return v0;
}

uint64_t sub_1D80CF324()
{
  sub_1D80CF2E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80CF3D4(uint64_t a1)
{
  sub_1D7E13630(0, &qword_1EDBB2D10, &unk_1EDBB2D18, MEMORY[0x1E69E6F68], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D80CF494(uint64_t a1)
{
  if (!qword_1ECA0F1D0)
  {
    sub_1D7E0A1A8(255, qword_1EDBBC7E0, 0x1E69636A8);
    v1 = sub_1D818FBB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0F1D0);
    }
  }
}

double sub_1D80CF540(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing);
  if (v2 != (a1 & 1))
  {
    v3 = v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v1, v2, ObjectType, v5);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1D80CF5EC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing);
  *(v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing) = a1;
  return sub_1D80CF540(v2);
}

id sub_1D80CF6A4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1D80CF770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, 1, v6);

  return v7;
}

unint64_t CommandContainer.description.getter()
{
  v1 = v0;
  sub_1D81921A4();

  MEMORY[0x1DA713260](v1[9], v1[10]);
  MEMORY[0x1DA713260](0x3D6469202CLL, 0xE500000000000000);
  MEMORY[0x1DA713260](v1[11], v1[12]);
  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t CommandContainer.__allocating_init(name:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  CommandContainer.init(name:commandCenter:tracker:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CommandContainer.init(name:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v12 = [v11 UUIDString];

  v13 = sub_1D8190F14();
  v15 = v14;

  v16 = MEMORY[0x1E69E7CC0];
  *(v5 + 96) = v15;
  *(v5 + 104) = v16;
  *(v5 + 80) = a2;
  *(v5 + 88) = v13;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v17 = *(a5 + 16);
  *(v5 + 32) = *a5;
  *(v5 + 48) = v17;
  *(v5 + 64) = *(a5 + 32);
  *(v5 + 72) = a1;
  return v5;
}

uint64_t CommandContainer.registerCommandObserver(_:handler:)()
{
  OUTLINED_FUNCTION_2_125();
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = *(v4 + 104);

  v7(v19, v3, sub_1D80CFEBC, v6, MEMORY[0x1E69E7CA8] + 8, ObjectType, v4);

  OUTLINED_FUNCTION_1_139(v8, v9, v10, v11, v12, v13, v14, v15, v18);
  sub_1D7E642AC();
  OUTLINED_FUNCTION_0_194();
  v16 = *(v0 + 104);
  *(v16 + 16) = v4 + 105;
  sub_1D7E05450(v19, v16 + 40 * (v4 + 104) + 32);
  *(v0 + 104) = v16;
  return swift_endAccess();
}

uint64_t CommandContainer.disableCommand(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 56))(v18, a1, nullsub_1, 0, OUTLINED_FUNCTION_0_2, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v5);
  OUTLINED_FUNCTION_1_139(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  sub_1D7E642AC();
  OUTLINED_FUNCTION_0_194();
  v15 = v2[13];
  *(v15 + 16) = v4 + 1;
  sub_1D7E05450(v18, v15 + 40 * v4 + 32);
  v2[13] = v15;
  return swift_endAccess();
}

Swift::Void __swiftcall CommandContainer.unregisterCommands()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(v0, ObjectType, v1);
  swift_beginAccess();
  v3 = *(v0 + 104);
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1D7E0E768(v5, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_1D818ED94();
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      v5 += 40;
      --v4;
    }

    while (v4);
  }
}

uint64_t CommandContainer.unregisterCommand<A>(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 32))(v1, a1, *(v3 + 88), ObjectType, v4);
}

uint64_t CommandContainer.deinit()
{
  swift_unknownObjectRelease();
  sub_1D7E64060(v0 + 32);

  return v0;
}

uint64_t CommandContainer.__deallocating_deinit()
{
  CommandContainer.deinit();

  return swift_deallocClassInstance();
}

void sub_1D80CFF60(id *a1)
{
  v1 = *a1;
  sub_1D7E50694(*a1);
  BlueprintPrewarmState.state.setter(v1);
}

void (*BlueprintPrewarmState.state.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = sub_1D818F524();
  return sub_1D7FED5F4;
}

uint64_t BlueprintPrewarmState.__allocating_init()()
{
  v0 = swift_allocObject();
  BlueprintPrewarmState.init()();
  return v0;
}

uint64_t BlueprintPrewarmState.__deallocating_deinit()
{
  BlueprintPrewarmState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80D00C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 8))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D80D011C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D80D0170(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    v2 = (4 * (a2 - 2)) & 0x3FFFFFFF8 | (a2 - 2) & 1 | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

void static TimelineReloadPolicy.after(_:jitteredUpTo:)(double a3)
{
  v4 = sub_1D818E754();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80D0398(0.0, a3);
  sub_1D818E6F4();
  sub_1D8190D04();
  (*(v5 + 8))(v7, v4);
  sub_1D7E1A4D0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D81A1B70;
  sub_1D80D043C();
  v9 = sub_1D81925B4();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D7E13BF4();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v14 = MEMORY[0x1E69E6438];
  *(v8 + 96) = MEMORY[0x1E69E63B0];
  *(v8 + 104) = v14;
  *(v8 + 72) = a3;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1D8190D14();
  sub_1D8192334();
  v15 = v19;
  v16 = v20;
  *(v8 + 136) = v12;
  *(v8 + 144) = v13;
  *(v8 + 112) = v15;
  *(v8 + 120) = v16;
  sub_1D7E13588();
  v17 = sub_1D8191E44();
  v18 = sub_1D81919E4();
  sub_1D818FD44("reload policy created after %{public}@, jittered up to %f is %{public}@", 71, 2, &dword_1D7DFF000, v17, v18, v8);
}

uint64_t sub_1D80D0398(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = MEMORY[0x1DA715D20](&v6, 8);
  if (v4 * vcvtd_n_f64_u64(v6 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    return sub_1D80D0398(a1, a2);
  }

  return result;
}

unint64_t sub_1D80D043C()
{
  result = qword_1EDBBD078;
  if (!qword_1EDBBD078)
  {
    sub_1D818E754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBD078);
  }

  return result;
}

void sub_1D80D04EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  v6 = a3(a2);
  v7 = 0;
  while (v6 != v7)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](v7, a2);
    }

    else
    {
      if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a4(0);
    v10 = sub_1D8191CC4();

    if (v10)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1D80D05DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1D8192634() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t TabBarNavigationController.identifier.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_195(a1);
  swift_getObjectType();
  return sub_1D818EF94();
}

uint64_t TabBarNavigationController.viewControllers.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_viewControllers);
  sub_1D7E194D0();
  v2 = sub_1D8191314();

  return v2;
}

id TabBarNavigationController.__allocating_init(rootViewController:commandCenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  v7 = OUTLINED_FUNCTION_47();
  return TabBarNavigationController.init(rootViewController:commandCenter:)(v7, a2, a3);
}

uint64_t TabBarNavigationController.shouldSelectOnCollapse.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_195(a1);
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 24))(ObjectType, v2) & 1;
}

uint64_t TabBarNavigationController.isValidForCachingRestoreState.getter()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, sel_viewControllers);
  sub_1D7E194D0();
  OUTLINED_FUNCTION_47();
  v2 = sub_1D8191314();

  if (!sub_1D7E36AB8(v2))
  {

LABEL_13:
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_14;
  }

  sub_1D7E33DD8(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA714420](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;

  v16[0] = v4;
  sub_1D7E0631C(0, &qword_1EDBBC530, MEMORY[0x1E69D6488]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(&v14 + 1))
  {
LABEL_14:
    sub_1D80D2890(&v13, &qword_1EDBBC520, &qword_1EDBBC530, MEMORY[0x1E69D6488]);
    return 0;
  }

  sub_1D7E05450(&v13, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v5 = sub_1D818EF94();
  v7 = v6;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController, &v13);
  swift_getObjectType();
  if (v5 == sub_1D818EF94() && v7 == v8)
  {

    goto LABEL_18;
  }

  v10 = sub_1D8192634();

  if (v10)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return 0;
}

void TabBarNavigationController.viewControllers.setter()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  sub_1D7E194D0();
  v2 = sub_1D8191304();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, sel_setViewControllers_, v2);

  sub_1D80D0CE4();
}

id TabBarNavigationController.rootViewController.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_195(a1);
  v2 = *v1;
  v3 = *v1;
  return v2;
}

id TabBarNavigationController.init(rootViewController:commandCenter:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot] = 0;
  *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth] = 0;
  v8 = swift_getObjectType();
  v9 = dynamic_cast_existential_1_unconditional(a1, v8, &protocol descriptor for TabBarable);
  v10 = &v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  *v10 = v9;
  v10[1] = v11;
  v12 = &v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_commandCenter];
  *v12 = a2;
  *(v12 + 1) = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v13 = a1;
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v16, sel_initWithRootViewController_, v13);
  [v14 _setAllowsInteractivePopWhenNavigationBarHidden_];

  swift_unknownObjectRelease();
  return v14;
}

void sub_1D80D0B84()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D80D0CE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 ts_bottomViewController];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = swift_getObjectType();
  v6 = dynamic_cast_existential_1_conditional(v4, v5, &protocol descriptor for TabBarable);
  if (!v6)
  {

LABEL_10:
    sub_1D81921A4();
    MEMORY[0x1DA713260](0xD000000000000056, 0x80000001D81D4950);
    [v1 ts_bottomViewController];
    sub_1D7E192B0(0);
    v16 = sub_1D8190F84();
    MEMORY[0x1DA713260](v16);

    sub_1D81923A4();
    __break(1u);
    return;
  }

  v8 = v6;
  v9 = v7;
  v10 = &v1[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  swift_beginAccess();
  v11 = *v10;
  *v10 = v8;
  *(v10 + 1) = v9;
  v12 = v4;

  v13 = swift_getObjectType();
  v19 = v8;
  (*(v9 + 16))(&v18, v13, v9);

  if (v18 && (v18 == 1 || (v17.receiver = v1, v17.super_class = ObjectType, v14 = objc_msgSendSuper2(&v17, sel_viewControllers), OUTLINED_FUNCTION_7_64(), OUTLINED_FUNCTION_14(), v15 = sub_1D8191314(), &v19, sub_1D7E36AB8(v15), OUTLINED_FUNCTION_47(), , &v19 == 1)))
  {
    [v1 setNavigationBarHidden:1 animated:0];
  }

  else
  {
    [v1 setNavigationBarHidden:0 animated:0];
  }
}

void (*TabBarNavigationController.viewControllers.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3].super_class = v1;
  ObjectType = swift_getObjectType();
  v3[4].receiver = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  v5 = [(objc_super *)v3 viewControllers];
  v3[4].super_class = OUTLINED_FUNCTION_7_64();
  v6 = sub_1D8191314();

  v3[3].receiver = v6;
  return sub_1D80D0FC0;
}

void sub_1D80D0FC0(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[4].receiver;
  super_class = (*a1)[3].super_class;
  if (a2)
  {
    sub_1D8190DB4();
    v5 = sub_1D8191304();

    v2[1].receiver = super_class;
    v2[1].super_class = receiver;
    objc_msgSendSuper2(v2 + 1, sel_setViewControllers_, v5);
  }

  else
  {
    v6 = sub_1D8191304();

    v2[2].receiver = super_class;
    v2[2].super_class = receiver;
    objc_msgSendSuper2(v2 + 2, sel_setViewControllers_, v6);

    sub_1D80D0CE4();
  }

  free(v2);
}

id TabBarNavigationController.tabBarItem.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController, v4);
  v2 = [*(v0 + v1) tabBarItem];

  return v2;
}

uint64_t TabBarNavigationController.description.getter()
{
  ObjectType = swift_getObjectType();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D819FAC0;
  *(v2 + 56) = ObjectType;
  *(v2 + 64) = sub_1D80D2828(&qword_1ECA10CB8);
  *(v2 + 32) = v0;
  v3 = TabBarNavigationController.identifier.getter(v0);
  v5 = v4;
  *(v2 + 96) = MEMORY[0x1E69E6158];
  *(v2 + 104) = sub_1D7E13BF4();
  *(v2 + 72) = v3;
  *(v2 + 80) = v5;

  return sub_1D8190F54();
}

id TabBarNavigationController.__allocating_init(rootViewController:navigationBarClass:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithRootViewController:a1 navigationBarClass:ObjCClassFromMetadata];

  return v5;
}

id TabBarNavigationController.__allocating_init(rootViewController:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithRootViewController_];

  return v1;
}

void sub_1D80D146C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot);
}

id TabBarNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TabBarNavigationController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setDelegate_];
}

Swift::Void __swiftcall TabBarNavigationController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewWillAppear_, a1);
  v5 = &v1[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  OUTLINED_FUNCTION_8_4(v5, v17);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = swift_getObjectType();
  v16 = v6;
  (*(v7 + 16))(&v15, v8, v7);
  if (v15 && (v15 == 1 || (v14.receiver = v2, v14.super_class = ObjectType, v9 = objc_msgSendSuper2(&v14, sel_viewControllers), OUTLINED_FUNCTION_7_64(), OUTLINED_FUNCTION_14(), v10 = sub_1D8191314(), &v16, sub_1D7E36AB8(v10), OUTLINED_FUNCTION_47(), , &v16 == 1)))
  {
    v11 = OUTLINED_FUNCTION_6_78();
    v13 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_78();
    v13 = 0;
  }

  [v11 v12];
}

Swift::Void __swiftcall TabBarNavigationController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_1D80D17AC();
}

void sub_1D80D17AC()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 splitViewController];
  if (!v2)
  {
    return;
  }

  v17 = v2;
  v3 = [v2 viewControllers];
  sub_1D7E194D0();
  v4 = sub_1D8191314();

  v5 = sub_1D7E36AB8(v4);

  if (v5 >= 2)
  {
    v6 = [v17 viewControllers];
    v7 = sub_1D8191314();

    sub_1D7E33DD8(1, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](1, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = *(v7 + 40);
    }

    if (v8 == v0)
    {
      v24.receiver = v0;
      v24.super_class = ObjectType;
      v9 = objc_msgSendSuper2(&v24, sel_viewControllers);
      v10 = sub_1D8191314();

      v11 = sub_1D7E36AB8(v10);

      if (v11 <= 1)
      {
        v12 = [v0 topViewController];
        if (v12)
        {
          v13 = v12;
          sub_1D80957E4(v12, &v18);

          if (*(&v19 + 1))
          {
            sub_1D7E05450(&v18, v21);
            v14 = v22;
            v15 = v23;
            __swift_project_boxed_opaque_existential_1(v21, v22);
            v16 = (*(v15 + 8))(v14, v15);
            __swift_destroy_boxed_opaque_existential_1Tm(v21);
LABEL_16:
            [v17 setPresentsWithGesture_];

            return;
          }
        }

        else
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
        }

        sub_1D80D2890(&v18, &qword_1ECA10D30, &qword_1ECA10510, &protocol descriptor for TabBarSplitViewGestureProviding);
        v16 = 1;
        goto LABEL_16;
      }

      v16 = 0;
      goto LABEL_16;
    }
  }
}

void TabBarNavigationController.show(_:sender:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  v6 = [v3 tabBarController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 tabBar];
    v9 = [v8 isHidden];

    if ((v9 & 1) == 0 && [v2 hidesBottomBarWhenPushed])
    {
      v10 = [v7 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = [v10 window];

      if (v12)
      {
        v13 = [v7 tabBar];
        [v13 frame];

        v14 = OUTLINED_FUNCTION_2_126();
        v17 = [v15 v16];
        if (v17)
        {
          v18 = v17;
          v19 = OUTLINED_FUNCTION_2_126();
          [v20 v21];

          v7 = *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot];
          *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot] = v18;
        }

        else
        {
        }
      }
    }
  }

  sub_1D7E7B91C(a2, v30);
  v22 = v31;
  if (v31)
  {
    v23 = __swift_project_boxed_opaque_existential_1(v30, v31);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = sub_1D8192614();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    v28 = 0;
  }

  v29.receiver = v3;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_showViewController_sender_, v2, v28);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall TabBarNavigationController.navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  OUTLINED_FUNCTION_8_4(v8, v46 + 1);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = swift_getObjectType();
  aBlock[0] = v9;
  (*(v10 + 16))(v46, v11, v10);
  if (LOBYTE(v46[0]) && (LOBYTE(v46[0]) == 1 || (v42.receiver = v4, v42.super_class = ObjectType, v12 = [(UINavigationController *)&v42 viewControllers], OUTLINED_FUNCTION_7_64(), OUTLINED_FUNCTION_14(), v13 = sub_1D8191314(), aBlock, v14 = sub_1D7E36AB8(v13), , v14 == 1)))
  {
    v15 = OUTLINED_FUNCTION_6_78();
    [v15 v16];
  }

  else
  {
    v17 = OUTLINED_FUNCTION_6_78();
    [v17 v18];
    v19 = [(UINavigationController *)_ navigationBar];
    [(UINavigationBar *)v19 setNeedsLayout];
  }

  v20 = *&v4[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot];
  if (v20)
  {
    *&v4[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot] = 0;
    v21 = [(UIViewController *)willShow transitionCoordinator];
    if (!v21)
    {
      v33 = v20;
      goto LABEL_20;
    }

    v22 = v21;
    v45.receiver = v4;
    v45.super_class = ObjectType;
    v23 = [(UINavigationController *)&v45 viewControllers];
    v24 = sub_1D7E194D0();
    v25 = sub_1D8191314();

    sub_1D80D04EC(willShow, v25, sub_1D7E36AB8, sub_1D7E194D0);
    v27 = v26;
    LOBYTE(v23) = v28;

    if ((v23 & 1) == 0)
    {
      v29 = __OFSUB__(v27, 1);
      v30 = v27 - 1;
      if (v29)
      {
        __break(1u);
        goto LABEL_23;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        v44.receiver = v4;
        v44.super_class = ObjectType;
        v31 = [(UINavigationController *)&v44 viewControllers];
        v24 = sub_1D8191314();

        sub_1D7E33DD8(v30, (v24 & 0xC000000000000001) == 0, v24);
        if ((v24 & 0xC000000000000001) == 0)
        {
          v32 = *(v24 + 8 * v30 + 32);
LABEL_13:
          v33 = v32;

          v34 = [v33 view];
          if (!v34)
          {
            __break(1u);
            return;
          }

          v35 = v34;
          [v34 addSubview_];

          v36 = [v4 tabBarController];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 tabBar];

            [v38 setHidden_];
          }

          v39 = swift_allocObject();
          *(v39 + 16) = v20;
          aBlock[4] = sub_1D80D27D4;
          aBlock[5] = v39;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D7F6900C;
          aBlock[3] = &block_descriptor_72;
          v40 = _Block_copy(aBlock);
          v41 = v20;

          [v22 animateAlongsideTransition:0 completion:v40];
          _Block_release(v40);

          goto LABEL_18;
        }

LABEL_23:
        v32 = MEMORY[0x1DA714420](v30, v24);
        goto LABEL_13;
      }
    }

    v33 = v20;
LABEL_18:
    swift_unknownObjectRelease();
LABEL_20:
  }
}

Swift::Void __swiftcall TabBarNavigationController.navigationController(_:didShow:animated:)(UINavigationController *_, UIViewController *didShow, Swift::Bool animated)
{
  ObjectType = swift_getObjectType();
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v5 = [(UINavigationController *)&v18 viewControllers];
  sub_1D7E194D0();
  v6 = sub_1D8191314();

  v7 = sub_1D7E36AB8(v6);

  v8 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth;
  v9 = *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth];
  v10 = [objc_opt_self() defaultCenter];
  if (v9 >= v7)
  {
    if (qword_1EDBAE510 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDBAE518;
  }

  else
  {
    if (qword_1EDBAE4F8 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDBAE500;
  }

  [v10 postNotificationName:*v11 object:v3];

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v12 = [(UINavigationController *)&v17 viewControllers];
  v13 = sub_1D8191314();

  v14 = sub_1D7E36AB8(v13);

  *&v3[v8] = v14;
  sub_1D80D17AC();
  v15 = *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_commandCenter + 8];
  v16 = swift_getObjectType();
  if (qword_1EDBB3708 != -1)
  {
    swift_once();
  }

  (*(v15 + 144))(qword_1EDBB3710, MEMORY[0x1E69E7CA8] + 8, v16, v15);
}

id TabBarNavigationController.navigationController(_:animationControllerFor:from:to:)(uint64_t a1, uint64_t a2, id a3, id a4)
{
  v4 = a3;
  if (a2 == 2)
  {
    v9 = [a3 transitioningDelegate];
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      v11 = [v10 animationControllerForDismissedController_];
      OUTLINED_FUNCTION_16_1();
      goto LABEL_9;
    }

LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v7 = [a4 transitioningDelegate];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = [v8 animationControllerForPresentedController:a4 presentingController:v4 sourceController:a1];
LABEL_9:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1D80D26F8()
{
  result = sub_1D8190EE4();
  qword_1EDBAE500 = result;
  return result;
}

uint64_t sub_1D80D2754()
{
  result = sub_1D8190EE4();
  qword_1EDBAE518 = result;
  return result;
}

uint64_t sub_1D80D27E4(uint64_t a1)
{
  result = sub_1D80D2828(&unk_1ECA10CC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D80D2828(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TabBarNavigationController();
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D80D2890(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7EBB4A4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

id ModalHostViewStyler.config.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void ModalHostViewStyler.config.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

TeaUI::ModalHostViewStyler __swiftcall ModalHostViewStyler.init(config:)(TeaUI::ModalHostViewStyler config)
{
  v2 = *(config.config.backgroundColor.super.isa + 1);
  *v1 = *config.config.backgroundColor.super.isa;
  v1[1] = v2;
  return config;
}

Swift::Void __swiftcall ModalHostViewStyler.style(closeButton:)(UIButton *closeButton)
{
  sub_1D7F89D40(0, v2);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = sub_1D80D2D38(closeButton, *v1);
  sub_1D7E0A1A8(0, &qword_1EDBB2F68, 0x1E69DC888);
  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 systemBackgroundColor];
  v12 = sub_1D8191CC4();

  sub_1D7E49240();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D81A5090;
  v14 = &selRef_attemptTransitionToState_animated_;
  if (v12)
  {
    v15 = [v9 secondaryLabelColor];
    v16 = objc_opt_self();
    v17 = [v16 traitCollectionWithUserInterfaceStyle_];
    v18 = [v15 resolvedColorWithTraitCollection_];

    v14 = &selRef_attemptTransitionToState_animated_;
    *(v13 + 32) = v18;
    v19 = [v9 secondarySystemFillColor];
  }

  else
  {
    *(v13 + 32) = UIColor.legibleForeground.getter();
    v19 = [v9 secondarySystemFillColor];
    v16 = objc_opt_self();
  }

  v20 = [v16 v14[315]];
  v21 = [v19 resolvedColorWithTraitCollection_];

  *(v13 + 40) = v21;
  v22 = sub_1D80D2DF0();

  v23 = sub_1D8190B24();
  if (v23)
  {
    v24 = 0x6B72616D78;
  }

  else
  {
    v24 = 0xD000000000000011;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0x80000001D81D49E0;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
  sub_1D8190DB4();
  v26 = sub_1D7E47238(v24, v25);
  if (v26)
  {
    v27 = v26;

    v31 = [v27 imageByApplyingSymbolConfiguration_];

    [(UIButton *)closeButton setImage:v31 forState:0];
    if (sub_1D8190B24())
    {
      sub_1D8191DB4();
      v28 = sub_1D8191E04();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v28);
      sub_1D8191E24();
    }

    else
    {

      v29 = v31;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D80D2D38(void *a1, void *a2)
{
  if ([a1 overrideUserInterfaceStyle])
  {

    return [a1 overrideUserInterfaceStyle];
  }

  else
  {
    v5 = [objc_opt_self() whiteColor];
    v6 = [a2 _isSimilarToColor_withinPercentage_];

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

id sub_1D80D2DF0()
{
  sub_1D7E0A1A8(0, &qword_1EDBB3050, 0x1E69DCAD8);
  v0 = sub_1D8190DB4();
  v1 = sub_1D806A548(v0);
  if (sub_1D8190B24())
  {
    return v1;
  }

  v3 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:20.0];
  v4 = [v3 configurationByApplyingConfiguration_];

  return v4;
}

uint64_t PillViewModel.title.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

void *PillViewModel.titleColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1D80D2F28(uint64_t a1, uint64_t a2)
{
  sub_1D80D2F8C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80D2F8C(uint64_t a1)
{
  if (!qword_1ECA10D38)
  {
    type metadata accessor for PillViewImage(255);
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10D38);
    }
  }
}

__n128 PillViewModel.size.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 32);
  result = *(v1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size);
  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t PillViewModel.__allocating_init(title:titleColor:icon:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  PillViewModel.init(title:titleColor:icon:size:)(a1, a2, a3, a4, a5);
  return v10;
}

void *PillViewModel.init(title:titleColor:icon:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 32);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  sub_1D80D30D8(a4, v5 + OBJC_IVAR____TtC5TeaUI13PillViewModel_icon);
  v8 = v5 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size;
  v9 = *(a5 + 16);
  *v8 = *a5;
  *(v8 + 1) = v9;
  v8[32] = v7;
  return v5;
}

uint64_t sub_1D80D30D8(uint64_t a1, uint64_t a2)
{
  sub_1D80D2F8C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PillViewModel.deinit()
{

  sub_1D80D3174(v0 + OBJC_IVAR____TtC5TeaUI13PillViewModel_icon);
  return v0;
}

uint64_t sub_1D80D3174(uint64_t a1)
{
  sub_1D80D2F8C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PillViewModel.__deallocating_deinit()
{
  PillViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PillViewModel(uint64_t a1)
{
  result = qword_1ECA10D40;
  if (!qword_1ECA10D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D80D327C(uint64_t a1)
{
  sub_1D80D2F8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void BlueprintViewportMonitor.add(observer:scrollView:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v26 = v3;
  v5 = v4;
  ObjectType = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  sub_1D7E11E0C();
  *v12 = sub_1D8191AB4();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], ObjectType);
  v13 = sub_1D8190CA4();
  (*(v8 + 8))(v12, ObjectType);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v1 = *(v5 + 16);
  if ((v1(ObjectType, v5) & 1) == 0)
  {
    v14 = OUTLINED_FUNCTION_9_39();
    if ((v15(v14) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for BlueprintViewportMonitorObserverProxy();
  swift_allocObject();
  v16 = swift_unknownObjectRetain();
  sub_1D814BE3C(v16, v5);
  v17 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
  v18 = swift_beginAccess();
  MEMORY[0x1DA713500](v18);
  sub_1D7E2893C(*((*(v2 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  swift_endAccess();
  v12 = *(v2 + OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options);
  if ((v12 & 2) != 0)
  {
    v19 = OUTLINED_FUNCTION_9_39();
    if (v20(v19))
    {
      if (qword_1EDBBB700 == -1)
      {
LABEL_7:
        v21 = MotionManager.motionEnabled.getter();
        (*(v5 + 40))(v2, v21 & 1, ObjectType, v5);
        goto LABEL_8;
      }

LABEL_14:
      OUTLINED_FUNCTION_3_17(&qword_1EDBBB700);
      goto LABEL_7;
    }
  }

LABEL_8:
  if (v12)
  {
    v22 = OUTLINED_FUNCTION_9_39();
    if ((v1)(v22))
    {
      if (v26)
      {
        type metadata accessor for BlueprintViewportScrollData();
        v23 = swift_allocObject();
        *(v23 + 16) = v26;
        v24 = *(v5 + 24);
        v25 = v26;
        v24(v2, v23, ObjectType, v5);
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_100();
}

void BlueprintViewportMonitor.remove(observer:)()
{
  OUTLINED_FUNCTION_120();
  v3 = v0;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_40();
  *v2 = sub_1D8191AB4();
  v10 = OUTLINED_FUNCTION_10_52();
  v11(v10);
  v12 = sub_1D8190CA4();
  (*(v8 + 8))(v2, v6);
  if (v12)
  {
    ObjectType = swift_getObjectType();
    if (((*(v5 + 16))(ObjectType, v5) & 1) == 0)
    {
      v14 = OUTLINED_FUNCTION_4_8();
      if ((v15(v14) & 1) == 0)
      {
LABEL_18:
        OUTLINED_FUNCTION_100();
        return;
      }
    }

    v16 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
    OUTLINED_FUNCTION_11_45(v3 + OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers);
    v17 = *(v3 + v16);
    v22 = MEMORY[0x1E69E7CC0];
    v18 = sub_1D7E36AB8(v17);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v18 == i)
      {

        *(v3 + v16) = v22;

        goto LABEL_18;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_12_44();
      }

      else
      {
        if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_5_69();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v21 = Strong, swift_unknownObjectRelease(), v21 == v1))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

TeaUI::BlueprintViewportMonitor::Options sub_1D80D3894@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = BlueprintViewportMonitor.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D80D38D4@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintViewportMonitor.Options.rawValue.getter();
  *a1 = result;
  return result;
}

id BlueprintViewportMonitor.init(options:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  *&v1[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall BlueprintViewportMonitor.stopUpdates()()
{
  v1 = v0;
  v2 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  sub_1D7E11E0C();
  *v8 = sub_1D8191AB4();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = sub_1D8190CA4();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_3_17(&qword_1EDBBB700);
    goto LABEL_4;
  }

  if ((*(v1 + OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options) & 2) == 0)
  {
    return;
  }

  if (qword_1EDBBB700 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D80D490C();
}

void BlueprintViewportMonitor.notify(block:)()
{
  OUTLINED_FUNCTION_120();
  v3 = v0;
  v4 = OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_40();
  *v2 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_10_52();
  v9(v8);
  v10 = sub_1D8190CA4();
  v12 = *(v6 + 8);
  v11 = v6 + 8;
  v12(v2, v4);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
    OUTLINED_FUNCTION_8_4(v3 + OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers, &v20);
    v14 = *(v3 + v13);
    if (!sub_1D7E36AB8(v14))
    {
LABEL_12:
      OUTLINED_FUNCTION_100();
      return;
    }

    OUTLINED_FUNCTION_14_40();
    if (v15 == v16)
    {
      sub_1D8190DB4();
      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_12_44();
          v11 = v18;
        }

        else
        {
          OUTLINED_FUNCTION_5_69();
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1(Strong, *(v11 + 24));
          swift_unknownObjectRelease();
        }

        ++v17;
      }

      while (v4 != v17);

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id BlueprintViewportMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintViewportMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D80D3D1C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for BlueprintViewportScrollData();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    swift_beginAccess();
    *a1 = v4;
    v6 = a2;
  }

  return v4;
}

void BlueprintViewportMonitor.motionManager(_:didUpdateMotionData:)()
{
  OUTLINED_FUNCTION_120();
  v5 = v4;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_140();
  if ((v0[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] & 2) == 0)
  {
    goto LABEL_17;
  }

  v23 = 0;
  sub_1D7E11E0C();
  v7 = v0;

  *v1 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_4_82();
  v9(v8);
  v10 = sub_1D8190CA4();
  v11 = OUTLINED_FUNCTION_4_8();
  v12(v11);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
    OUTLINED_FUNCTION_8_4(&v7[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers], &v22);
    v14 = *&v7[v13];
    if (!sub_1D7E36AB8(v14))
    {

LABEL_16:

LABEL_17:
      OUTLINED_FUNCTION_100();
      return;
    }

    OUTLINED_FUNCTION_14_40();
    if (v15 == v16)
    {
      sub_1D8190DB4();
      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_12_44();
          v2 = v18;
        }

        else
        {
          OUTLINED_FUNCTION_5_69();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v2 + 24);
          swift_getObjectType();
          OUTLINED_FUNCTION_15_38();
          if (v20())
          {
            v21 = sub_1D80D3FE4(&v23, v5);
            (*(v19 + 32))(v7, v21, v3, v19);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v17 = (v17 + 1);
      }

      while (v1 != v17);

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D80D3FE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for BlueprintViewportMotionData();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    swift_beginAccess();
    *a1 = v4;
  }

  return v4;
}

void BlueprintViewportMonitor.motionManager(_:motionEnabled:)()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_140();
  if ((v0[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] & 2) == 0)
  {
    goto LABEL_16;
  }

  sub_1D7E11E0C();
  v8 = v0;
  *v1 = sub_1D8191AB4();
  v9 = OUTLINED_FUNCTION_4_82();
  v10(v9);
  v11 = sub_1D8190CA4();
  v12 = v6 + 8;
  v13 = OUTLINED_FUNCTION_4_8();
  v14(v13);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
  OUTLINED_FUNCTION_8_4(&v8[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers], &v23);
  v16 = *&v8[v15];
  if (!sub_1D7E36AB8(v16))
  {

LABEL_16:
    OUTLINED_FUNCTION_100();
    return;
  }

  OUTLINED_FUNCTION_14_40();
  if (v17 == v18)
  {
    sub_1D8190DB4();
    v19 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_12_44();
        v12 = v20;
      }

      else
      {
        OUTLINED_FUNCTION_5_69();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v12 + 24);
        swift_getObjectType();
        OUTLINED_FUNCTION_15_38();
        if (v22())
        {
          (*(v21 + 40))(v8, v4 & 1, v2, v21);
        }

        swift_unknownObjectRelease();
      }

      v19 = (v19 + 1);
    }

    while (v1 != v19);

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
}

void sub_1D80D425C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D8190C74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E11E0C();
  *v9 = sub_1D8191AB4();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = sub_1D8190CA4();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (![*(a3 + 32) isDeviceMotionAvailable])
    {
      BlueprintViewportMonitor.motionManager(_:motionEnabled:)();
      return;
    }

    v20 = a2;
    swift_beginAccess();
    v11 = *(a3 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    v12 = sub_1D7E36AB8(v11);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        *(a3 + 16) = v21;

        type metadata accessor for MotionManagerObserverProxy();
        v16 = swift_allocObject();
        v17 = a1;
        sub_1D80D4AE8(v17, v20, v16, &protocol witness table for BlueprintViewportMonitor);
        v18 = swift_beginAccess();
        MEMORY[0x1DA713500](v18);
        sub_1D7E2893C(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1D8191404();
        swift_endAccess();
        sub_1D8157E18();
        return;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v15 = Strong, swift_unknownObjectRelease(), v15 == a1))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

void sub_1D80D455C()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_40();
  *v0 = sub_1D8191AB4();
  v11 = OUTLINED_FUNCTION_10_52();
  v12(v11);
  v13 = sub_1D8190CA4();
  (*(v9 + 8))(v0, v7);
  if (v13)
  {
    if (![*(v2 + 32) isDeviceMotionAvailable])
    {
LABEL_17:
      OUTLINED_FUNCTION_100();
      return;
    }

    v21 = v4;
    OUTLINED_FUNCTION_11_45(v2 + 16);
    v14 = *(v2 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    v15 = sub_1D7E36AB8(v14);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v15 == i)
      {

        *(v2 + 16) = v22;

        type metadata accessor for MotionManagerObserverProxy();
        v19 = swift_allocObject();
        sub_1D80D4AE8(v6, v21, v19, &protocol witness table for MotionDebugView);
        v20 = swift_beginAccess();
        MEMORY[0x1DA713500](v20);
        sub_1D7E2893C(*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1D8191404();
        swift_endAccess();
        sub_1D8157E18();
        goto LABEL_17;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v14);
      }

      else
      {
        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v18 = Strong, swift_unknownObjectRelease(), v18 == v6))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1D80D480C()
{
  result = qword_1ECA10D68;
  if (!qword_1ECA10D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10D68);
  }

  return result;
}

unint64_t sub_1D80D4864()
{
  result = qword_1ECA10D70[0];
  if (!qword_1ECA10D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA10D70);
  }

  return result;
}

void sub_1D80D490C()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_140();
  sub_1D7E11E0C();
  *v1 = sub_1D8191AB4();
  v5 = OUTLINED_FUNCTION_4_82();
  v6(v5);
  v7 = sub_1D8190CA4();
  v8 = OUTLINED_FUNCTION_4_8();
  v9(v8);
  if (v7)
  {
    OUTLINED_FUNCTION_11_45(v3 + 16);
    v10 = *(v3 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    v11 = sub_1D7E36AB8(v10);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {

        *(v3 + 16) = v15;

        OUTLINED_FUNCTION_100();
        return;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_12_44();
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_5_69();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v14 = Strong, swift_unknownObjectRelease(), v14 == v0))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D80D4AE8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a3 + 24) = a4;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  return a3;
}

uint64_t sub_1D80D4B60(const void *a1)
{
  v2 = v1;
  memcpy(v8, a1, sizeof(v8));
  memcpy(v9, (v2 + 1896), 0x235uLL);
  memcpy(v7, (v2 + 1896), sizeof(v7));
  memcpy(v6, a1, 0x235uLL);
  sub_1D7E222B8(v9, &v5);
  BlueprintLayoutOptions.validate(layoutOptions:)(v6);
  sub_1D7E4C1A0(v9);

  return v2;
}

double sub_1D80D4DE4(uint64_t a1)
{
  swift_weakAssign();
  memcpy(__dst, (a1 + 1896), 0x235uLL);
  memcpy(__src, (a1 + 1896), 0x235uLL);
  sub_1D7E222B8(__dst, v4);
  sub_1D80D4F1C(v4, __src);
  __src[0] = *(v1 + 2488);
  sub_1D818EE04();

  sub_1D818F884();

  return result;
}

double sub_1D80D4F1C@<D0>(double *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, 0x235uLL);
  v3 = __dst[1];
  v4 = __dst[47];
  v5 = __dst[49];
  sub_1D7E4C1A0(__dst);
  result = *&__dst[21];
  v7 = __dst[23];
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  a1[3] = result;
  *(a1 + 4) = v7;
  return result;
}

uint64_t sub_1D80D4F8C(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v10 = a3;
  v4 = *(a2 + 16);
  v8[4] = *a2;
  v8[5] = v4;
  v9 = *(a2 + 32);
  v5 = v3;
  swift_beginAccess();

  v6 = *(v5 + 96);
  v8[0] = *(v5 + 80);
  v8[1] = v6;
  type metadata accessor for BlueprintLayoutTransition.SidecarKey(255, v8);
  swift_getWitnessTable();
  sub_1D8190E14();
  sub_1D8190E34();
  return swift_endAccess();
}

uint64_t sub_1D80D50A4(void *a1, __int128 *a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  v16 = *(a2 + 4);
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  v10 = v3[10];
  v5 = v10;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  type metadata accessor for BlueprintLayoutTransition.SidecarKey(0, &v10);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  type metadata accessor for BlueprintLayoutTransition(0, &v10);
  swift_getWitnessTable();
  sub_1D8190E24();
  return swift_endAccess();
}

BOOL sub_1D80D51D8(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[3] == a2[3];
  }

  return 0;
}

uint64_t sub_1D80D5220()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA714A20](*&v1);
  sub_1D7F18BF0(v0[1], v0[2]);
  v2 = v0[3];
  v3 = v0[4];

  return sub_1D7F18BF0(v2, v3);
}

uint64_t sub_1D80D52BC()
{
  sub_1D81927E4();
  sub_1D80D5220();
  return sub_1D8192824();
}

uint64_t sub_1D80D5318(double a1, double a2)
{
  sub_1D81927E4();
  sub_1D7F18BF0(a1, a2);
  return sub_1D8192824();
}

uint64_t sub_1D80D5410(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D80D5220();
  return sub_1D8192824();
}

BOOL sub_1D80D5468(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1D80D51D8(v5, v7);
}

uint64_t sub_1D80D54E8(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D7F18BF0(*v1, v1[1]);
  return sub_1D8192824();
}

uint64_t sub_1D80D554C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80D556C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1D80D55A0()
{
  v1 = *(*v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D80D55E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id RadialGradientView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

void RadialGradientView.gradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x90uLL);
  OUTLINED_FUNCTION_0_196();
  sub_1D80D69EC(__dst, v4);
  sub_1D80D5808();
}

void sub_1D80D5720()
{
  if (!qword_1ECA10E00)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10E00);
    }
  }
}

uint64_t RadialGradientView.gradientLayer.getter()
{
  v1 = [v0 layer];
  type metadata accessor for RadialGradientLayer();

  return swift_dynamicCastClassUnconditional();
}

void sub_1D80D5808()
{
  v1 = [v0 layer];
  type metadata accessor for RadialGradientLayer();
  swift_dynamicCastClassUnconditional();
  v2 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, &v0[v2], sizeof(__dst));
  memcpy(v4, &v0[v2], sizeof(v4));
  sub_1D80D58F4(__dst, v3);
  RadialGradientLayer.gradientDescriptor.setter(v4);
}

uint64_t sub_1D80D58F4(uint64_t a1, uint64_t a2)
{
  sub_1D80D5720();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RadialGradientLayer.gradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  v4 = swift_beginAccess();
  OUTLINED_FUNCTION_1_141(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v15[0], v15[1], v15[2]);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x90uLL);
  sub_1D80D58F4(__src, v14);
  sub_1D80D69EC(__dst, sub_1D80D5720);
  memcpy(v14, __src, sizeof(v14));
  sub_1D80D5DBC(v14);
  return sub_1D80D69EC(__src, sub_1D80D5720);
}

void (*RadialGradientView.gradientDescriptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80D5A7C;
}

void sub_1D80D5A7C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D80D5808();
  }
}

id RadialGradientView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  sub_1D80D60F0(v16);
  OUTLINED_FUNCTION_7_65((v0 + v2), v3, v4, v5, v6, v7, v8, v9, v14, v15);
  v10 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v11, v12, v10, v0, ObjectType);
}

id RadialGradientView.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

id RadialGradientView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  sub_1D80D60F0(v15);
  OUTLINED_FUNCTION_7_65(&v1[v4], v5, v6, v7, v8, v9, v10, v11, v14.receiver, v14.super_class);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1D80D5C94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = OUTLINED_FUNCTION_8_4(v2 + *a1, v16);
  OUTLINED_FUNCTION_1_141(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v16[0], v16[1], v16[2]);
  memcpy(a2, (v2 + v4), 0x90uLL);
  return sub_1D80D58F4(v17, v15);
}

uint64_t sub_1D80D5CF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = OUTLINED_FUNCTION_8_4(*a1 + *a2, v17);
  OUTLINED_FUNCTION_1_141(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v17[0], v17[1], v17[2]);
  memcpy(a3, (v4 + v5), 0x90uLL);
  return sub_1D80D58F4(v18, v16);
}

uint64_t sub_1D80D5D58(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D80D58F4(__dst, &v8);
  return a5(__src);
}

id sub_1D80D5DBC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  swift_beginAccess();
  memcpy(v18, &v1[v2], sizeof(v18));
  memcpy(__srca, __dst, 0x90uLL);
  memcpy(&__srca[144], &v1[v2], 0x90uLL);
  memcpy(v19, __dst, sizeof(v19));
  if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v19) == 1)
  {
    memcpy(v14, &__srca[144], 0x90uLL);
    if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v14) == 1)
    {
      memcpy(v15, __srca, sizeof(v15));
      sub_1D80D58F4(__dst, v13);
      sub_1D80D58F4(v18, v13);
      v3 = v15;
      return sub_1D80D69EC(v3, sub_1D80D5720);
    }

    sub_1D80D58F4(__dst, v15);
    sub_1D80D58F4(v18, v15);
    goto LABEL_7;
  }

  memcpy(v15, __srca, sizeof(v15));
  v4 = v15[0];
  v5 = v15[1];
  memcpy(v14, &__srca[144], 0x90uLL);
  if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v14) == 1)
  {
    v13[0] = v4;
    v13[1] = v5;
    memcpy(&v13[2], &__srca[16], 0x80uLL);
    sub_1D80D58F4(__dst, v12);
    sub_1D80D58F4(v18, v12);
    sub_1D80D58F4(v15, v12);
    sub_1D80D6AB0(v13);
LABEL_7:
    memcpy(v14, __srca, sizeof(v14));
    sub_1D80D69EC(v14, sub_1D80D6A4C);
    return [v1 setNeedsDisplay];
  }

  memcpy(v13, &__srca[144], sizeof(v13));
  if (v4 == v13[0] && v5 == v13[1])
  {
    sub_1D80D58F4(__dst, v12);
    sub_1D80D58F4(v18, v12);
    sub_1D80D58F4(v15, v12);
    sub_1D80D69EC(v13, sub_1D80D5720);
    v9 = v4;
    v10 = v5;
    memcpy(v11, &__srca[16], sizeof(v11));
    sub_1D80D6AB0(&v9);
    memcpy(v12, __srca, sizeof(v12));
    v3 = v12;
    return sub_1D80D69EC(v3, sub_1D80D5720);
  }

  v8 = sub_1D8192634();
  sub_1D80D58F4(__dst, v12);
  sub_1D80D58F4(v18, v12);
  sub_1D80D58F4(v15, v12);
  sub_1D80D69EC(v13, sub_1D80D5720);
  v9 = v4;
  v10 = v5;
  memcpy(v11, &__srca[16], sizeof(v11));
  sub_1D80D6AB0(&v9);
  memcpy(v12, __srca, sizeof(v12));
  result = sub_1D80D69EC(v12, sub_1D80D5720);
  if ((v8 & 1) == 0)
  {
    return [v1 setNeedsDisplay];
  }

  return result;
}

void (*RadialGradientLayer.gradientDescriptor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x2F0uLL);
  *a1 = v3;
  v3[93] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor, (v3 + 90));
  memcpy(v3, (v1 + v4), 0x90uLL);
  memcpy(v3 + 18, (v1 + v4), 0x90uLL);
  sub_1D80D58F4(v3, (v3 + 36));
  return sub_1D80D6194;
}

void sub_1D80D6194(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_8_51((v2 + 432));
    OUTLINED_FUNCTION_8_51(v4);
    sub_1D80D58F4(v2 + 432, v2 + 576);
    RadialGradientLayer.gradientDescriptor.setter(v4);
    OUTLINED_FUNCTION_8_51((v2 + 288));
    OUTLINED_FUNCTION_0_196();
    sub_1D80D69EC(v2 + 288, v3);
  }

  else
  {
    OUTLINED_FUNCTION_8_51(v4);
    RadialGradientLayer.gradientDescriptor.setter(v4);
  }

  free(v2);
}

id RadialGradientLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RadialGradientLayer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  sub_1D80D60F0(v13);
  OUTLINED_FUNCTION_7_65(&v0[v2], v3, v4, v5, v6, v7, v8, v9, v12.receiver, v12.super_class);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v10 setNeedsDisplayOnBoundsChange_];
  return v10;
}

id RadialGradientLayer.__allocating_init(layer:)()
{
  v1 = objc_allocWithZone(OUTLINED_FUNCTION_16_1());
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = [v1 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v2;
}

char *RadialGradientLayer.init(layer:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  sub_1D80D60F0(__src);
  memcpy(&v2[v5], __src, 0x90uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D8192614();
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v19, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  v8 = v7;
  [v8 setNeedsDisplayOnBoundsChange_];
  sub_1D7E1C664(a1, &v18);
  if (swift_dynamicCast())
  {
    v9 = v17;
    v10 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
    OUTLINED_FUNCTION_8_4(&v17[OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor], v14);
    memcpy(__dst, &v9[v10], sizeof(__dst));
    sub_1D80D58F4(__dst, v16);

    v11 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
    swift_beginAccess();
    memcpy(v16, v8 + v11, sizeof(v16));
    memcpy(v8 + v11, __dst, 0x90uLL);
    OUTLINED_FUNCTION_0_196();
    sub_1D80D69EC(v16, v12);
  }

  return v8;
}

id RadialGradientLayer.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

id RadialGradientLayer.init(coder:)()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  sub_1D80D60F0(v14);
  OUTLINED_FUNCTION_7_65(&v1[v3], v4, v5, v6, v7, v8, v9, v10, v13.receiver, v13.super_class);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

Swift::Void __swiftcall RadialGradientLayer.draw(in:)(CGContextRef in)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  OUTLINED_FUNCTION_8_4(&v2[OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor], v62);
  memcpy(__dst, &v2[v4], sizeof(__dst));
  memcpy(__src, &v2[v4], sizeof(__src));
  if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(__src) != 1)
  {
    memcpy(v61, __dst, sizeof(v61));
    sub_1D7FCE31C(v61, v60);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    memcpy(v60, __src, sizeof(v60));
    v6 = RadialGradientDescriptor.cfColors.getter();
    if (__src[17])
    {
      v7 = (__src[17] + 32);
    }

    else
    {
      v7 = 0;
    }

    v8 = CGGradientCreateWithColors(DeviceRGB, v6, v7);

    if (v8)
    {
      v9 = *&__src[2];
      v10 = *&__src[3];
      v11 = *&__src[4];
      v12 = *&__src[5];
      v48 = *&__src[6];
      startRadius = *&__src[7];
      v13 = __src[8];
      OUTLINED_FUNCTION_3_112();
      Width = CGRectGetWidth(v67);
      OUTLINED_FUNCTION_3_112();
      Height = CGRectGetHeight(v68);
      v57 = *&__src[9];
      v59 = *&__src[10];
      v15 = *&__src[11];
      v49 = *&__src[13];
      v50 = *&__src[14];
      v51 = *&__src[12];
      v16 = __src[15];
      OUTLINED_FUNCTION_3_112();
      v55 = CGRectGetWidth(v69);
      OUTLINED_FUNCTION_0_196();
      sub_1D80D69EC(__dst, v17);
      OUTLINED_FUNCTION_3_112();
      v52 = CGRectGetHeight(v70);
      OUTLINED_FUNCTION_3_112();
      if (v13)
      {
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v47 = v9;
        v26 = vabdd_f64(v11, v48) * CGRectGetWidth(*&v18);
        v27 = v12;
        v28 = Width;
        v29 = v10;
        v30 = vabdd_f64(v27, startRadius);
        v71.origin.x = v22;
        v71.origin.y = v23;
        v71.size.width = v24;
        v71.size.height = v25;
        v31 = v30 * CGRectGetHeight(v71);
        v10 = v29;
        Width = v28;
        v32 = v26 * v26;
        v9 = v47;
        startRadiusa = sqrt(v32 + v31 * v31);
      }

      else
      {
        startRadiusa = v11;
      }

      v34 = v9 * Width;
      v35 = v10 * Height;
      v36 = v57 * v55;
      [v2 bounds];
      if (v16)
      {
        v41 = v37;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        v58 = vabdd_f64(v15, v49) * CGRectGetWidth(*&v37);
        v72.origin.x = v41;
        v72.origin.y = v42;
        v72.size.width = v43;
        v72.size.height = v44;
        v45 = vabdd_f64(v51, v50) * CGRectGetHeight(v72);
        v46 = sqrt(v58 * v58 + v45 * v45);
      }

      else
      {
        v46 = v15;
      }

      v65.x = v34;
      v65.y = v35;
      v66.x = v36;
      v66.y = v59 * v52;
      CGContextDrawRadialGradient(in, v8, v65, startRadiusa, v66, v46, 3u);
    }

    else
    {

      OUTLINED_FUNCTION_0_196();
      sub_1D80D69EC(__dst, v33);
    }
  }
}

uint64_t sub_1D80D69EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D80D6A4C(uint64_t a1)
{
  if (!qword_1ECA10E10)
  {
    sub_1D80D5720();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA10E10);
    }
  }
}

uint64_t sub_1D80D6B1C()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    return (*(v0 + 40))(v0, 2);
  }

  return result;
}

uint64_t sub_1D80D6B60(char a1)
{
  if (a1 == 2)
  {
    return 0x656C6C65636E6163;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1DA713260](v3, v4);

  return 0x6574656C706D6F63;
}

uint64_t sub_1D80D6C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return v4;
}

double sub_1D80D6C74(char a1)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = a1 & 1;

    sub_1D818FD04();
  }

  return result;
}

uint64_t sub_1D80D6D28()
{

  return v0;
}

uint64_t sub_1D80D6D50()
{
  sub_1D80D6D28();

  return swift_deallocClassInstance();
}

unsigned __int8 *getEnumTagSinglePayload for BlueprintInfiniteScrollRequest.Result(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintInfiniteScrollRequest.Result(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D80D6FA4()
{
  sub_1D81927E4();
  sub_1D8190FF4();
  return sub_1D8192824();
}

uint64_t sub_1D80D7030(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D80D6F9C(v2);
  return sub_1D8192824();
}

uint64_t sub_1D80D7070(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D8192634();
  }
}

uint64_t sub_1D80D70C4()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000042, 0x80000001D81D4BC0);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1DA713260](v1, v2);

  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D80D71D4(uint64_t a1)
{
  result = sub_1D80D7218(qword_1EDBB5F40, &unk_1D81BA5C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D80D7218(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BlueprintInfiniteScrollRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL BlueprintViewportScrollData.isOverscrolled.getter()
{
  v1 = *(v0 + 16);
  [v1 contentOffset];
  v3 = v2;
  [v1 adjustedContentInset];
  return v3 < v4;
}

uint64_t BlueprintViewportScrollData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D80D7434(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1D8190EE4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

Swift::Void __swiftcall ScaleContentSelectionStyle.willSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  if (_)
  {
    v6 = OUTLINED_FUNCTION_0_198(_, view);
    v7 = sub_1D8190EE4();
    [v6 removeAnimationForKey_];

    [objc_opt_self() flush];
    v8 = v5;
    v9 = sub_1D80D75EC(v8);
    v10 = [v3 (v4 + 2168)];
    sub_1D80D7A40(v9, 0x656C616373, 0xE500000000000000, v10);
  }
}

id sub_1D80D75EC(float a1)
{
  sub_1D7E0A1A8(0, &unk_1ECA11F80, 0x1E6979318);
  v2 = sub_1D80D7434(0x726F66736E617274, 0xEF656C6163732E6DLL);
  [v2 setDuration_];
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v4 = a1;
  v5 = [v3 initWithFloat_];
  [v2 setToValue_];

  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v7) = 1036831949;
  LODWORD(v8) = 0.25;
  LODWORD(v9) = 0.75;
  LODWORD(v10) = 1.0;
  v11 = [v6 initWithControlPoints__:v8 :{v7, v9, v10}];
  [v2 setTimingFunction_];

  [v2 setFillMode_];
  [v2 setRemovedOnCompletion_];

  return v2;
}

Swift::Void __swiftcall ScaleContentSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  if (!_)
  {
    v6 = OUTLINED_FUNCTION_0_198(_, view);
    v7 = [v6 presentationLayer];

    if (v7)
    {
      v8 = sub_1D8190EE4();
      v9 = [v7 valueForKeyPath_];

      if (v9)
      {
        sub_1D8191F34();
        swift_unknownObjectRelease();
        sub_1D7E1C664(&v13, &v14);
        swift_dynamicCast();
        *&v14 = v5;
        v10 = sub_1D80D7888(v12);
        v11 = [v3 (v4 + 2168)];
        sub_1D80D7A40(v10, 0x656C616373, 0xE500000000000000, v11);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1D80D7888(double a1)
{
  sub_1D7E0A1A8(0, &unk_1ECA0DCF0, 0x1E69794A8);
  v1 = sub_1D80D7434(0x726F66736E617274, 0xEF656C6163732E6DLL);
  [v1 setMass_];
  [v1 setStiffness_];
  [v1 setDamping_];
  [v1 setInitialVelocity_];
  v2 = v1;
  [v2 settlingDuration];
  [v2 setDuration_];
  v3 = v2;
  v4 = sub_1D818ED14();
  [v3 setFromValue_];

  v5 = sub_1D818ED14();
  [v3 setToValue_];

  [v3 setFillMode_];
  [v3 setRemovedOnCompletion_];

  return v3;
}

void sub_1D80D7A40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D8190EE4();

  [a4 addAnimation:a1 forKey:v6];
}

__n128 OpenInNewWindowCommandHandler.__allocating_init(navigator:sceneProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  return result;
}

uint64_t OpenInNewWindowCommandHandler.init(navigator:sceneProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  *(v2 + 56) = *(a2 + 32);
  return v2;
}

void *OpenInNewWindowCommandHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D80899B8(v4 + 24, &v10);
  v6 = v13;
  if (v13)
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(&v10, v13);
    v8 = (*(v7 + 24))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    sub_1D8089A48(&v10);
    v8 = 0;
  }

  v10 = v8;
  v11 = 0;
  v12 = 0;
  sub_1D80CDA70(a4, &v10);
  return sub_1D7FF1564(v10, v11, v12);
}

uint64_t OpenInNewWindowCommandHandler.deinit()
{

  sub_1D8089A48(v0 + 24);
  return v0;
}

uint64_t OpenInNewWindowCommandHandler.__deallocating_deinit()
{
  OpenInNewWindowCommandHandler.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall BackgroundSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  v4 = !_ && [(UIView *)selectedBackgroundView isHidden];

  [(UIView *)selectedBackgroundView setHidden:v4];
}

_BYTE *storeEnumTagSinglePayload for BackgroundSelectionStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PageSessionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for PageViewSession(0);
  *(v0 + 16) = sub_1D8190D94();
  return v0;
}

uint64_t PageSessionManager.init()()
{
  type metadata accessor for PageViewSession(0);
  *(v0 + 16) = sub_1D8190D94();
  return v0;
}

uint64_t PageSessionManager.startSession(for:durationThreshold:trigger:)(void *a1, unsigned __int8 *a2, double a3)
{
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v36 - v10;
  v11 = sub_1D818E794();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = type metadata accessor for PageViewSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v38 = *a2;
  if (qword_1EDBB34C8 != -1)
  {
    OUTLINED_FUNCTION_2_127(&qword_1EDBB34C8);
  }

  v37 = qword_1EDBC6060;
  OUTLINED_FUNCTION_1_142();
  sub_1D80D8F80(0, v20, v21, MEMORY[0x1E69E6F90]);
  v23 = OUTLINED_FUNCTION_174(v22);
  *(v23 + 16) = xmmword_1D819FAB0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_72_0();
  v24 = sub_1D818EF94();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1D7E13BF4();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v27 = sub_1D81919E4();
  sub_1D818FD44("Did start session for page, identifier=%{public}@", 49, 2, &dword_1D7DFF000, v37, v27, v23);

  v28 = *(v15 + 28);
  v29 = sub_1D818E754();
  __swift_storeEnumTagSinglePayload(v19 + v28, 1, 1, v29);
  sub_1D818E784();
  v30 = sub_1D818E764();
  v32 = v31;
  (*(v39 + 8))(v14, v40);
  sub_1D818E744();
  *v19 = v30;
  *(v19 + 8) = v32;
  *(v19 + 16) = a3;
  *(v19 + *(v15 + 32)) = v38;
  OUTLINED_FUNCTION_7_66();
  (*(v33 + 16))(v19, v32, v26);
  OUTLINED_FUNCTION_72_0();
  sub_1D818EF94();
  v34 = v41;
  sub_1D80D846C(v19, v41);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v15);
  swift_beginAccess();
  sub_1D7EE6270();
  swift_endAccess();
  return sub_1D80D84D0(v19);
}

uint64_t sub_1D80D846C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageViewSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D80D84D0(uint64_t a1)
{
  v2 = type metadata accessor for PageViewSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PageSessionManager.resignSession(for:)()
{
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_70();
  OUTLINED_FUNCTION_16_41();
  OUTLINED_FUNCTION_9_40();
  v10 = OUTLINED_FUNCTION_72_0();
  sub_1D7EDF4C0(v10, v11, v12);

  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v0, v13, v14);
    return swift_endAccess();
  }

  else
  {
    sub_1D80D87AC(v0, v9);
    swift_endAccess();
    if (qword_1EDBB34C8 != -1)
    {
      OUTLINED_FUNCTION_2_127(&qword_1EDBB34C8);
    }

    OUTLINED_FUNCTION_1_142();
    sub_1D80D8F80(0, v16, v17, MEMORY[0x1E69E6F90]);
    v19 = OUTLINED_FUNCTION_174(v18);
    *(v19 + 16) = xmmword_1D819FAB0;
    v20 = OUTLINED_FUNCTION_16_41();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D7E13BF4();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = sub_1D81919E4();
    OUTLINED_FUNCTION_14_41("Did resign session for page, identifier=%{public}@", v24, v25, &dword_1D7DFF000, v26, v23);

    OUTLINED_FUNCTION_5_70();
    v27 = OUTLINED_FUNCTION_11_0();
    v28(v27);
    return sub_1D80D84D0(v9);
  }
}

uint64_t sub_1D80D8744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D80D8F80(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D80D87AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageViewSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PageSessionManager.resumeSession(for:)()
{
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_70();
  OUTLINED_FUNCTION_16_41();
  OUTLINED_FUNCTION_9_40();
  v10 = OUTLINED_FUNCTION_72_0();
  sub_1D7EDF4C0(v10, v11, v12);

  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v0, v13, v14);
    return swift_endAccess();
  }

  else
  {
    sub_1D80D87AC(v0, v9);
    swift_endAccess();
    if (qword_1EDBB34C8 != -1)
    {
      OUTLINED_FUNCTION_2_127(&qword_1EDBB34C8);
    }

    OUTLINED_FUNCTION_1_142();
    sub_1D80D8F80(0, v16, v17, MEMORY[0x1E69E6F90]);
    v19 = OUTLINED_FUNCTION_174(v18);
    *(v19 + 16) = xmmword_1D819FAB0;
    v20 = OUTLINED_FUNCTION_16_41();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D7E13BF4();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = sub_1D81919E4();
    OUTLINED_FUNCTION_14_41("Did resume session for page, identifier=%{public}@", v24, v25, &dword_1D7DFF000, v26, v23);

    OUTLINED_FUNCTION_5_70();
    v27 = OUTLINED_FUNCTION_11_0();
    v28(v27);
    return sub_1D80D84D0(v9);
  }
}

uint64_t PageSessionManager.endSession(for:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_83();
  v4 = MEMORY[0x1E69E6720];
  sub_1D80D8F80(0, v5, v6, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v11, v12, v4);
  v14 = OUTLINED_FUNCTION_50(v13);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = type metadata accessor for PageViewSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = *(v26 + 8);
  v70 = v27;
  v71 = v28;
  v29 = sub_1D818EF94();
  v31 = v30;
  swift_beginAccess();
  sub_1D7EDF4C0(v29, v31, *(v2 + 16));

  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v18, v32, v33);
    return swift_endAccess();
  }

  else
  {
    sub_1D80D87AC(v18, v25);
    swift_endAccess();
    if (*(v25 + 2) >= PageViewSession.duration.getter())
    {
      if (qword_1EDBB34C8 != -1)
      {
        OUTLINED_FUNCTION_2_127(&qword_1EDBB34C8);
      }

      v50 = qword_1EDBC6060;
      OUTLINED_FUNCTION_1_142();
      sub_1D80D8F80(0, v51, v52, MEMORY[0x1E69E6F90]);
      v54 = OUTLINED_FUNCTION_174(v53);
      *(v54 + 16) = xmmword_1D819FAB0;
      v55 = sub_1D818EF94();
      v57 = v56;
      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = sub_1D7E13BF4();
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      v58 = sub_1D81919E4();
      sub_1D818FD44("Did cancel session for page, identifier=%{public}@", 50, 2, &dword_1D7DFF000, v50, v58, v54);

      OUTLINED_FUNCTION_7_66();
      (*(v59 + 48))(v25, v50, v54);
    }

    else
    {
      if (qword_1EDBB34C8 != -1)
      {
        OUTLINED_FUNCTION_2_127(&qword_1EDBB34C8);
      }

      v68 = qword_1EDBC6060;
      OUTLINED_FUNCTION_1_142();
      sub_1D80D8F80(0, v35, v36, MEMORY[0x1E69E6F90]);
      v38 = OUTLINED_FUNCTION_174(v37);
      *(v38 + 16) = xmmword_1D819FAB0;
      v39 = sub_1D818EF94();
      v41 = v40;
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = sub_1D7E13BF4();
      *(v38 + 32) = v39;
      *(v38 + 40) = v41;
      v42 = sub_1D81919E4();
      sub_1D818FD44("Did end session for page, identifier=%{public}@", 47, 2, &dword_1D7DFF000, v68, v42, v38);

      sub_1D7FA9E88(&v25[v19[7]], v10);
      v43 = sub_1D818E754();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v43);
      OUTLINED_FUNCTION_4_83();
      sub_1D80D8744(v10, v45, v46);
      if (EnumTagSinglePayload == 1)
      {
        EnumTagSinglePayload = *v25;
        v10 = *(v25 + 1);
        (*(*(v43 - 8) + 16))(v22 + v19[6], &v25[v19[6]], v43);
        v47 = v19[7];
        sub_1D8190DB4();
        sub_1D818E744();
        __swift_storeEnumTagSinglePayload(v22 + v47, 0, 1, v43);
        v48 = v19[8];
        v49 = v25[v48];
        *v22 = EnumTagSinglePayload;
        v22[1] = v10;
        v22[2] = 0;
        *(v22 + v48) = v49;
      }

      else
      {
        sub_1D80D846C(v25, v22);
      }

      OUTLINED_FUNCTION_7_66();
      (*(v60 + 40))(v22, v10, EnumTagSinglePayload);
      sub_1D80D84D0(v22);
    }

    sub_1D818EF94();
    swift_beginAccess();
    v61 = v69;
    v62 = OUTLINED_FUNCTION_11_0();
    sub_1D7F03ECC(v62, v63, v64);
    swift_endAccess();

    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v61, v65, v66);
    return sub_1D80D84D0(v25);
  }
}

void sub_1D80D8F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL PageSessionManager.hasSession(for:)(void *a1)
{
  v2 = v1;
  sub_1D80D8F80(0, qword_1EDBBAFE8, type metadata accessor for PageViewSession, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v4);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D818EF94();
  v10 = v9;
  swift_beginAccess();
  sub_1D7EDF4C0(v8, v10, *(v2 + 16));
  swift_endAccess();

  v11 = type metadata accessor for PageViewSession(0);
  v12 = __swift_getEnumTagSinglePayload(v7, 1, v11) != 1;
  sub_1D80D8744(v7, qword_1EDBBAFE8, type metadata accessor for PageViewSession);
  return v12;
}

uint64_t PageSessionManager.session(for:)@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = OUTLINED_FUNCTION_11_0(), v6 = sub_1D7E11428(v4, v5), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v3 + 56);
    v10 = type metadata accessor for PageViewSession(0);
    OUTLINED_FUNCTION_8();
    sub_1D80D846C(v9 + *(v11 + 72) * v8, a1);
    v12 = a1;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for PageViewSession(0);
    v12 = a1;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  return swift_endAccess();
}

uint64_t PageSessionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ForwardingTouchView.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  ObjectType = swift_getObjectType();
  v6 = [v2 subviews];
  sub_1D7F9F0F0();
  v7 = sub_1D8191314();

  v8 = sub_1D7E36AB8(v7);
  v9 = v8;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v15.receiver = v2;
      v15.super_class = ObjectType;
      LOBYTE(v8) = objc_msgSendSuper2(&v15, sel_pointInside_withEvent_, isa, x, y);
      return v8;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(v7 + 8 * i + 32);
    }

    v11 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v8 pointInside:isa withEvent:{x, y}];

    if (v12)
    {

      LOBYTE(v8) = 1;
      return v8;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return v8;
}

id ForwardingTouchView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id ForwardingTouchView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id ForwardingTouchView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ForwardingTouchView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ForwardingTouchView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StateCommandContextValue.value(for:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v35 = a2;
  v38 = a1;
  v5 = *(a3 + 24);
  sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  OUTLINED_FUNCTION_2();
  v34 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  v15 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  OUTLINED_FUNCTION_2();
  v22 = v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v38, v15, v24);
  if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
  {
    (*(v17 + 8))(v20, v15);
LABEL_5:
    v29 = *(a3 + 52);
    sub_1D8191E84();
    OUTLINED_FUNCTION_3_0();
    return (*(v30 + 16))(v39, v40 + v29);
  }

  (*(v22 + 32))(v26, v20, v14);
  v27 = v36;
  v28 = v37;
  (*(v36 + 16))(v9, v35, v37);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    (*(v22 + 8))(v26, v14);
    (*(v27 + 8))(v9, v28);
    goto LABEL_5;
  }

  v32 = v34;
  (*(v34 + 32))(v13, v9, v5);
  (*v40)(v26, v13);
  (*(v32 + 8))(v13, v5);
  return (*(v22 + 8))(v26, v14);
}

void StateCommandContextValue.init(default:block:)(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)(uint64_t a1, uint64_t a2)@<X8>)
{
  v26 = a6;
  v27 = a7;
  v28 = a2;
  v15 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  __swift_storeEnumTagSinglePayload(&v25 - v19, 1, 1, a5);
  v29[0] = a4;
  v29[1] = a5;
  v29[2] = a6;
  v29[3] = a7;
  type metadata accessor for StateCommandContextValue(0, v29);
  v21 = v28;
  v28(a1, v20);
  OUTLINED_FUNCTION_3_0();
  (*(v22 + 8))(a1, a4);
  (*(v17 + 8))(v20, v15);
  v23 = swift_allocObject();
  *(v23 + 2) = a4;
  *(v23 + 3) = a5;
  v24 = v27;
  *(v23 + 4) = v26;
  *(v23 + 5) = v24;
  *(v23 + 6) = v21;
  *(v23 + 7) = a3;
  *a8 = sub_1D80D9EC8;
  a8[1] = v23;
}

uint64_t sub_1D80D9D80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(*(a6 - 8) + 16))(&v16 - v13, a2, a6, v12);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, a6);
  a3(a1, v14);
  return (*(v11 + 8))(v14, v10);
}

void StateCommandContextValue<>.init(off:on:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = MEMORY[0x1E69E6370];
  v25[1] = v16;
  v25[2] = v17;
  v25[3] = &protocol witness table for Bool;
  v18 = *(type metadata accessor for StateCommandContextValue(0, v25) + 52);
  (*(v11 + 16))(&a5[v18], a1, a4);
  __swift_storeEnumTagSinglePayload(&a5[v18], 0, 1, a4);
  v19 = *(v11 + 32);
  v19(v15, a1, a4);
  v20 = *(v11 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = (v13 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v19((v23 + v21), a2, a4);
  v19((v23 + v22), v15, a4);
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = sub_1D80DA12C;
  v24[5] = v23;
  *a5 = sub_1D80DA194;
  *(a5 + 1) = v24;
}

uint64_t sub_1D80DA0B0@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if ((a1 & 1) == 0)
  {
    a2 = a3;
  }

  (*(*(a4 - 8) + 16))(a5, a2, a4, a3);

  return __swift_storeEnumTagSinglePayload(a5, 0, 1, a4);
}

void StateCommandContextValue<>.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(unsigned __int8 *)@<X8>)
{
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = MEMORY[0x1E69E6370];
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = &protocol witness table for Bool;
  v16 = *(type metadata accessor for StateCommandContextValue(0, v21) + 52);
  (*(v9 + 16))(a4 + v16, a1, a3);
  __swift_storeEnumTagSinglePayload(a4 + v16, 0, 1, a3);
  v17 = *(v9 + 32);
  v17(v13, a1, a3);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v17((v19 + v18), v13, a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = sub_1D80DA3E0;
  *(v20 + 40) = v19;
  *a4 = sub_1D80DA948;
  a4[1] = v20;
}

uint64_t sub_1D80DA368@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

unint64_t sub_1D80DA41C(uint64_t a1)
{
  result = sub_1D7E31228();
  if (v2 <= 0x3F)
  {
    result = sub_1D8191E84();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D80DA4A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 16) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 16) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1D80DA658(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 16] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 16] & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t EmptyStateView.emptyPosition.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
  result = OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition, v5);
  *a1 = *(v1 + v3);
  return result;
}

void EmptyStateView.emptyPosition.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double EmptyStateView.keyboardInfo.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo;
  OUTLINED_FUNCTION_8_4(v3, v8);
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  swift_unknownObjectRetain();
  return result;
}

double sub_1D80DAAD0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  swift_unknownObjectRetain();
  return result;
}

id sub_1D80DAB30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  v7 = v1;
  swift_unknownObjectRetain();
  return EmptyStateView.keyboardInfo.setter(v5);
}

id EmptyStateView.keyboardInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  *(v5 + 5) = v4;
  swift_unknownObjectRelease();
  return [v1 setNeedsLayout];
}

id (*EmptyStateView.keyboardInfo.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D80DAC4C;
}

id sub_1D80DAC4C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

char *EmptyStateView.init(model:styler:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition] = 2;
  v11 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_label;
  *&v3[v11] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v12 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView;
  *&v3[v12] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCEF8]), sel_initWithFrame_);
  *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_minimalTopPadding] = 0x4042000000000000;
  v13 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo];
  v13[1] = 0u;
  v13[2] = 0u;
  *v13 = 0u;
  v14 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model];
  *v14 = v6;
  v14[1] = v7;
  v14[2] = v9;
  v14[3] = v8;
  v14[4] = v10;
  sub_1D7E0E768(a2, &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler]);
  v15 = a2[3];
  v16 = a2[4];
  v44 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(v16 + 16);
  v18 = v10;
  sub_1D8190DB4();
  sub_1D8190DB4();
  v19 = v17(v15, v16);
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  }

  else
  {
    v21 = 0;
  }

  *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_visualEffectView] = v21;
  v22 = v18;
  if (v10)
  {

    v23 = [v18 imageWithRenderingMode_];
    v24 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView] = v24;
    if (v24)
    {
      [v24 frame];
      v43 = v25;
      v45 = v26;

      *&v27 = v43;
      *(&v27 + 1) = v45;
    }

    else
    {

      v27 = 0uLL;
    }

    v29 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
    *v29 = v27;
    v29[16] = 0;
  }

  else
  {

    *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView] = 0;
    v28 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
  }

  v47.receiver = v3;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v43);
  v31 = v44[3];
  v32 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v31);
  v33 = *(v32 + 8);
  v34 = v30;
  v35 = v33(v31, v32);
  [v34 setBackgroundColor_];

  if (*(v34 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_visualEffectView))
  {
    [v34 addSubview_];
  }

  v36 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView;
  [v34 addSubview_];
  v37 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_label;
  [*(v34 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_label) setNumberOfLines_];
  [*(v34 + v37) setTextAlignment_];
  [*(v34 + v37) setAutoresizingMask_];
  [*(v34 + v36) addSubview_];
  v38 = [*(v34 + v36) topEdgeEffect];
  [v38 setHidden_];

  OUTLINED_FUNCTION_1_7([*(v34 + v36) bottomEdgeEffect]);
  OUTLINED_FUNCTION_1_7([*(v34 + v36) leftEdgeEffect]);

  OUTLINED_FUNCTION_1_7([*(v34 + v36) rightEdgeEffect]);
  v39 = *(v34 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView);
  if (v39)
  {
    v40 = *(v34 + v36);
    v41 = v39;
    [v40 addSubview_];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  return v34;
}

id EmptyStateView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EmptyStateView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition) = 2;
  v1 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_label;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCEF8]), sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_minimalTopPadding) = 0x4042000000000000;
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo);
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall EmptyStateView.layoutSubviews()()
{
  v1 = v0;
  v111.receiver = v0;
  v111.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v111, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo];
  OUTLINED_FUNCTION_8_4(&v0[OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo], v110);
  Height = 0.0;
  if (*(v2 + 5))
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    swift_unknownObjectRetain();
    v8 = OUTLINED_FUNCTION_5_13();
    [v9 v10];
    OUTLINED_FUNCTION_0_99();
    [v0 bounds];
    v135.origin.x = v4;
    v135.origin.y = v5;
    v135.size.width = v6;
    v135.size.height = v7;
    CGRectIntersection(v112, v135);
    OUTLINED_FUNCTION_0_99();
    IsNull = CGRectIsNull(v113);
    swift_unknownObjectRelease();
    if (!IsNull)
    {
      v114.origin.x = OUTLINED_FUNCTION_5_13();
      Height = CGRectGetHeight(v114);
    }
  }

  v12 = *&v0[OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView];
  [v1 bounds];
  v13 = &selRef_attemptTransitionToState_animated_;
  v106 = v12;
  [v12 setFrame_];
  v14 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_visualEffectView];
  if (v14)
  {
    v15 = v14;
    [v106 frame];
    [v15 setFrame_];
  }

  v16 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_label];
  v17 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler];
  v18 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler + 24];
  v19 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler], v18);
  v20 = (*(v19 + 24))(*&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model], *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model + 8], *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model + 16], *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model + 24], v18, v19);
  [v16 setAttributedText_];

  [v16 sizeToFit];
  sub_1D7F3C638();
  [v16 setPreferredMaxLayoutWidth_];
  LODWORD(v21) = 0.25;
  [v16 ts:v21 setHyphenationFactor:?];
  v22 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView];
  if (v22)
  {
    v23 = *(v17 + 4);
    __swift_project_boxed_opaque_existential_1(v17, *(v17 + 3));
    v24 = *(v23 + 32);
    v25 = v22;
    v24();
    v26 = v25;
    [v26 frame];
    [v1 bounds];
    [v26 frame];
    OUTLINED_FUNCTION_3_113();
    v116 = CGRectIntegral(v115);
    x = v116.origin.x;
    width = v116.size.width;
    v29 = v116.size.height;
    v30 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
    OUTLINED_FUNCTION_8_4(&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition], v107);
    v31 = v1[v30];
    v32 = [v1 &selRef_keyboardOrActionSwitchToNextViewController];
    v33 = v32;
    switch(v31)
    {
      case 1:

        v13 = &selRef_attemptTransitionToState_animated_;
        goto LABEL_16;
      case 2:
        v34 = [v32 horizontalSizeClass];

        v13 = &selRef_attemptTransitionToState_animated_;
        if (v34 == 2)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      case 3:
        v38 = [v32 horizontalSizeClass];

        v13 = &selRef_attemptTransitionToState_animated_;
        if (v38 == 1)
        {
          [v1 safeAreaInsets];
          v40 = 36.0;
          if (v39 > 36.0)
          {
            v40 = v39;
          }
        }

        else
        {
LABEL_16:
          [v1 safeAreaInsets];
          v36 = v41 + 36.0;
          [v106 frame];
          v37 = CGRectGetHeight(v118) / 3.0;
LABEL_17:
          if (v36 > v37)
          {
            v40 = v36;
          }

          else
          {
            v40 = v37;
          }
        }

        [v26 v13[234]];

        break;
      default:

        v13 = &selRef_attemptTransitionToState_animated_;
LABEL_10:
        [v1 safeAreaInsets];
        v36 = v35;
        [v106 frame];
        v37 = CGRectGetHeight(v117) * 0.5 - v29 * 0.5;
        goto LABEL_17;
    }
  }

  v42 = swift_allocObject();
  [v16 frame];
  [v16 preferredMaxLayoutWidth];
  [v16 intrinsicContentSize];
  [v1 bounds];
  CGRectGetWidth(v119);
  [v16 preferredMaxLayoutWidth];
  OUTLINED_FUNCTION_3_113();
  *(v42 + 16) = CGRectIntegral(v120);
  v43 = sub_1D80DBBD4(v1, (v42 + 16), 22.0);
  sub_1D80DBC7C(Height > 0.0, v1);
  v45 = v44;
  v46 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
  if (v22)
  {
    v47 = v22;
    OUTLINED_FUNCTION_8_4(&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition], v109);
    v48 = v1[v46];
    v49 = [v1 &selRef_keyboardOrActionSwitchToNextViewController];
    v50 = v49;
    switch(v48)
    {
      case 1:

        goto LABEL_36;
      case 2:
        v54 = [v49 horizontalSizeClass];

        if (v54 == 2)
        {
          goto LABEL_27;
        }

        goto LABEL_36;
      case 3:
        v73 = [v49 horizontalSizeClass];

        if (v73 == 1)
        {
          goto LABEL_49;
        }

LABEL_36:
        v74 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
        if (v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize + 16])
        {
          v75 = [v1 safeAreaInsets];
          if (v82 > 36.0)
          {
            v83 = v82;
          }

          else
          {
            v83 = 36.0;
          }
        }

        else
        {
          v85 = *v74;
          v84 = v74[1];
          v86 = v47;
          v87 = sub_1D80DBDFC(v1, v43, v45);
          v88 = v86;
          [v88 frame];
          [v88 v13 + 2424];
          [v88 frame];

          OUTLINED_FUNCTION_3_113();
          MaxY = CGRectGetMaxY(v127);

          v83 = MaxY + 22.0;
        }

        OUTLINED_FUNCTION_2_128(v75, v76, v77, v78, v79, v80, v81);
        *(v42 + 24) = v83;
        goto LABEL_54;
      default:

LABEL_27:
        if (v45 < v43)
        {
          goto LABEL_49;
        }

        v55 = 0.0;
        if (Height > 0.0)
        {
          [v1 safeAreaInsets];
        }

        v56 = (v45 - v43) * 0.5 + v55;
        v57 = v47;
        [v57 frame];
        v58 = CGRectGetHeight(v121);

        v59 = v56 + v58 + 22.0;
        v60 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
        if ((v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize + 16] & 1) == 0)
        {
          v62 = *v60;
          v61 = v60[1];
          [v57 frame];
          [v57 v13[234]];
        }

        v123.origin.x = OUTLINED_FUNCTION_7_3();
        MinX = CGRectGetMinX(v123);
        v124.origin.x = OUTLINED_FUNCTION_7_3();
        v64 = CGRectGetWidth(v124);
        v125.origin.x = OUTLINED_FUNCTION_7_3();
        v65 = CGRectGetHeight(v125);
        OUTLINED_FUNCTION_2_128(v66, v67, v68, v69, v70, v71, v72);
        *(v42 + 16) = MinX;
        *(v42 + 24) = v59;
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_4(&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition], v109);
    v51 = v1[v46];
    v52 = [v1 traitCollection];
    v53 = v52;
    switch(v51)
    {
      case 1:

        goto LABEL_51;
      case 2:
        v90 = [v52 horizontalSizeClass];

        if (v90 == 2)
        {
          goto LABEL_43;
        }

        goto LABEL_51;
      case 3:
        v101 = [v52 horizontalSizeClass];

        if (v101 == 1)
        {
          goto LABEL_49;
        }

LABEL_51:
        [v1 safeAreaInsets];
        v103 = v102;
        [v1 bounds];
        v104 = CGRectGetHeight(v131) / 3.0;
        if (v103 > v104)
        {
          v104 = v103;
        }

        *(v42 + 24) = v104;
        goto LABEL_54;
      default:

LABEL_43:
        if (v45 < v43)
        {
LABEL_49:
          sub_1D80DBCDC(v1, v42, 22.0);
          goto LABEL_54;
        }

        v91 = 0.0;
        if (Height > 0.0)
        {
          [v1 safeAreaInsets];
        }

        v92 = (v45 - v43) * 0.5 + v91;
        v128.origin.x = OUTLINED_FUNCTION_7_3();
        v93 = CGRectGetMinX(v128);
        v129.origin.x = OUTLINED_FUNCTION_7_3();
        v64 = CGRectGetWidth(v129);
        v130.origin.x = OUTLINED_FUNCTION_7_3();
        v65 = CGRectGetHeight(v130);
        OUTLINED_FUNCTION_2_128(v94, v95, v96, v97, v98, v99, v100);
        *(v42 + 16) = v93;
        *(v42 + 24) = v92;
        break;
    }
  }

  *(v42 + 32) = v64;
  *(v42 + 40) = v65;
LABEL_54:
  OUTLINED_FUNCTION_8_4(v42 + 16, v108);
  v132 = CGRectIntegral(*(v42 + 16));
  [v16 v13[234]];
  [v1 bounds];
  v105 = CGRectGetWidth(v133);
  [v16 frame];
  [v106 setContentSize_];
}

CGFloat sub_1D80DBBD4(uint64_t a1, CGFloat *a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView);
  if (v4)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = v4;
    v18.origin.x = v6;
    v18.origin.y = v7;
    v18.size.width = v8;
    v18.size.height = v9;
    v11 = CGRectGetHeight(v18) + a3;
    [v10 frame];
    Height = CGRectGetHeight(v19);

    return v11 + Height;
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 2);
    v17 = *(a2 + 3);

    return CGRectGetHeight(*&v14);
  }
}

void sub_1D80DBC7C(char a1, id a2)
{
  [a2 bounds];
  CGRectGetHeight(v4);
  if (a1)
  {
    [a2 safeAreaInsets];
  }
}

void sub_1D80DBCDC(char *a1, uint64_t a2, double a3)
{
  v5 = *&a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView];
  if (v5 && (v6 = &a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize], (a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize + 16] & 1) == 0))
  {
    v11 = *v6;
    v10 = *(v6 + 1);
    v12 = v5;
    [v12 frame];
    MinX = CGRectGetMinX(v17);
    [a1 safeAreaInsets];
    v15 = 36.0;
    if (v14 > 36.0)
    {
      v15 = v14;
    }

    [v12 setFrame_];
    [v12 frame];
    MaxY = CGRectGetMaxY(v18);

    v8 = MaxY + a3;
  }

  else
  {
    [a1 safeAreaInsets];
    if (v7 > 36.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 36.0;
    }
  }

  swift_beginAccess();
  *(a2 + 24) = v8;
}

double sub_1D80DBDFC(char *a1, double a2, double a3)
{
  [a1 safeAreaInsets];
  v7 = v6 + 36.0;
  if (a3 < a2)
  {
    [*&a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView] frame];
    v8 = CGRectGetHeight(v10) / 3.0;
    if (v7 <= v8)
    {
      return v8;
    }
  }

  return v7;
}

id EmptyStateView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmptyStateView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*sub_1D80DC06C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80DAC4C;
}

uint64_t EmptyStateView.accessibilityLabel.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_label) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

uint64_t (*EmptyStateView.accessibilityLabel.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = EmptyStateView.accessibilityLabel.getter();
  a1[1] = v2;
  return sub_1D7F3CB0C;
}

double MotionView.motionTransform.getter@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = qword_1ECA10E68;
  OUTLINED_FUNCTION_10(v2 + qword_1ECA10E68, a1);
  *a2 = *(v2 + v4);

  return result;
}

double MotionView.motionTransform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1ECA10E68;
  swift_beginAccess();
  *(v1 + v3) = v2;

  return result;
}

uint64_t MotionView.motionDisabledTransform.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1ECA10E70;
  OUTLINED_FUNCTION_8_4(v3, v7);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_1D7F387E8(v4, v5);
}

uint64_t sub_1D80DC4EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_1ECA10E70;
  swift_beginAccess();
  v4 = *v3;
  *a2 = *v3;
  v5 = *(v3 + 8);
  *(a2 + 8) = v5;
  return sub_1D7F387E8(v4, v5);
}

id sub_1D80DC54C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_1D7F387E8(v3, v1);
  return MotionView.motionDisabledTransform.setter(&v3);
}

id MotionView.motionDisabledTransform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v1[qword_1ECA10E70];
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v6 = v4[8];
  v4[8] = v3;
  return [v1 setNeedsLayout];
}

uint64_t MotionView.motionDisabledTransform.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t MotionView.isMotionEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = qword_1ECA10E78;
  OUTLINED_FUNCTION_10(v2 + qword_1ECA10E78, a2);
  return *(v2 + v3);
}

void sub_1D80DC694(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECA10E78;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t MotionView.isMotionEnabled.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t MotionView.isMotionAllowed.getter(uint64_t a1, uint64_t a2)
{
  v3 = qword_1ECA10E80;
  OUTLINED_FUNCTION_10(v2 + qword_1ECA10E80, a2);
  return *(v2 + v3);
}

void sub_1D80DC78C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECA10E80;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1D80DC7F0(char a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  *(v2 + v5) = a1;
  sub_1D80DC848(a2);
}

void sub_1D80DC848(uint64_t *a1)
{
  swift_getObjectType();
  v3 = *a1;
  OUTLINED_FUNCTION_8_4(&v1[v3], v11);
  if ((v1[v3] & 1) == 0)
  {
    v4 = [*&v1[qword_1ECA10E88] layer];
    [v1 bounds];
    OUTLINED_FUNCTION_9_0();
    v5 = &v1[qword_1ECA10E70];
    OUTLINED_FUNCTION_8_4(&v1[qword_1ECA10E70], v10);
    v8 = *v5;
    v9 = v5[8];
    sub_1D7F387E8(*v5, v9);
    OUTLINED_FUNCTION_8_0();
    MotionTransformable.transform(layer:bounds:motionDisabled:)(v6, v7);

    sub_1D7F38800(v8, v9);
  }
}

uint64_t MotionView.isMotionAllowed.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D80DC998(uint64_t a1, char a2, uint64_t *a3)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D80DC848(a3);
  }
}

id MotionView.init(backingView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1ECA10E68] = 0x8000000000000000;
  v4 = &v1[qword_1ECA10E70];
  *v4 = 0;
  v4[8] = 2;
  v1[qword_1ECA10E78] = 1;
  v1[qword_1ECA10E80] = 1;
  *&v1[qword_1ECA10E88] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 addSubview_];

  return v6;
}

void sub_1D80DCAF8()
{
  *(v0 + qword_1ECA10E68) = 0x8000000000000000;
  v1 = v0 + qword_1ECA10E70;
  *v1 = 0;
  *(v1 + 8) = 2;
  *(v0 + qword_1ECA10E78) = 1;
  *(v0 + qword_1ECA10E80) = 1;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall MotionView.layoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = *&v0[qword_1ECA10E88];
  [v0 bounds];
  [v1 ts_setFrameUsingCenterAndBounds_];
  v2 = qword_1ECA10E78;
  OUTLINED_FUNCTION_8_4(&v0[qword_1ECA10E78], v12);
  if (v0[v2] != 1 || (v4 = qword_1ECA10E80, OUTLINED_FUNCTION_10(&v0[qword_1ECA10E80], v3), (v0[v4] & 1) == 0))
  {
    v5 = [v1 layer];
    [v0 bounds];
    OUTLINED_FUNCTION_9_0();
    v6 = &v0[qword_1ECA10E70];
    OUTLINED_FUNCTION_8_4(&v0[qword_1ECA10E70], v11);
    v9 = *v6;
    v10 = v6[8];
    sub_1D7F387E8(*v6, v10);
    OUTLINED_FUNCTION_8_0();
    MotionTransformable.transform(layer:bounds:motionDisabled:)(v7, v8);

    sub_1D7F38800(v9, v10);
  }
}

void sub_1D80DCCFC(void *a1)
{
  v1 = a1;
  MotionView.layoutSubviews()();
}

id MotionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MotionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D80DCE20(uint64_t a1)
{

  sub_1D7F38800(*(a1 + qword_1ECA10E70), *(a1 + qword_1ECA10E70 + 8));
  v2 = *(a1 + qword_1ECA10E88);
}

uint64_t (*sub_1D80DCE90(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.motionTransform.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D80DCEF4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.motionDisabledTransform.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D80DCF58(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.isMotionEnabled.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D80DCFBC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.isMotionAllowed.modify(v2);
  return sub_1D7F413B4;
}

void MotionView.transform(motionData:)()
{
  swift_getObjectType();
  v1 = qword_1ECA10E78;
  OUTLINED_FUNCTION_8_4(&v0[qword_1ECA10E78], v6);
  if (v0[v1] == 1)
  {
    v2 = qword_1ECA10E80;
    OUTLINED_FUNCTION_8_4(&v0[qword_1ECA10E80], v5);
    if (v0[v2] == 1)
    {
      v3 = [*&v0[qword_1ECA10E88] layer];
      [v0 bounds];
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_10(&v0[qword_1ECA10E68], v4);

      OUTLINED_FUNCTION_8_0();
      MotionTransformable.transform(motionData:layer:bounds:motionTransform:)();
    }
  }
}

uint64_t ModernPageBlueprintPrewarmer.__allocating_init(blueprintProvider:prewarmerProvider:prewarmRange:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  ModernPageBlueprintPrewarmer.init(blueprintProvider:prewarmerProvider:prewarmRange:options:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ModernPageBlueprintPrewarmer.init(blueprintProvider:prewarmerProvider:prewarmRange:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = *(*v5 + 144);
  sub_1D7F330C0();
  *(v5 + v11) = sub_1D8190D94();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v12 + 32))(v5 + v13, a1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v14 + 32))(v5 + v15, a2);
  OUTLINED_FUNCTION_12();
  v17 = (v5 + *(v16 + 128));
  *v17 = a3;
  v17[1] = a4;
  OUTLINED_FUNCTION_12();
  *(v5 + *(v18 + 136)) = v10;
  return v5;
}

uint64_t ModernPageBlueprintPrewarmer.prewarmPages(neighboring:)(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PageBlueprint(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  WitnessTable = swift_getWitnessTable();
  v59 = sub_1D81927A4();
  OUTLINED_FUNCTION_2();
  v58 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v57 - v11;
  v12 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v60 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  OUTLINED_FUNCTION_2();
  v63 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v57 - v19;
  OUTLINED_FUNCTION_2();
  v64 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  result = sub_1D80DDA08();
  if ((result & 1) == 0)
  {
    return result;
  }

  (*(v3 + 24))(v4, v3);
  sub_1D818F154();

  v25 = sub_1D818EF94();
  PageBlueprint.page(for:)(v25);

  if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
  {
    v26 = OUTLINED_FUNCTION_3_114();
    v27(v26);
    return (*(v60 + 8))(v16, v12);
  }

  v29 = v62;
  v28 = v63;
  (*(v63 + 32))(v62, v16, AssociatedTypeWitness);
  sub_1D81918C4();
  if ((v68 & 1) == 0)
  {
    v70 = *(v1 + *(*v1 + 128));
    v71 = v67;
    sub_1D80C17D4();
    sub_1D8190EB4();
    v34 = v67;
    v33 = v68;
    result = sub_1D8191834();
    v35 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      if (v35 < 0)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if (v35 >= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = result - 1;
      }

      if (v34 < 0)
      {
        v36 = 0;
      }

      if (v35 >= v33)
      {
        v35 = v33 & ~(v33 >> 63);
      }

      v67 = v36;
      v68 = v35;
      sub_1D7EB88FC();
      WitnessTable = v23;
      sub_1D81918A4();
      v37 = *(*v1 + 144);
      swift_beginAccess();
      v38 = *(v2 + v37) + 64;
      OUTLINED_FUNCTION_4_84();
      v41 = v40 & v39;
      v43 = (v42 + 63) >> 6;
      v65 = v44;
      result = swift_bridgeObjectRetain_n();
      for (i = 0; v41; result = sub_1D80DE474(&v67, v52))
      {
        v46 = i;
LABEL_21:
        v47 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v48 = v47 | (v46 << 6);
        v49 = (*(v65 + 48) + 16 * v48);
        v50 = *v49;
        v51 = v49[1];
        sub_1D7E0E768(*(v65 + 56) + 40 * v48, v69);
        v67 = v50;
        v68 = v51;
        sub_1D8190DB4();
        sub_1D80DDA84(v50, v51, v69, v66, v2);
        OUTLINED_FUNCTION_0_200();
      }

      while (1)
      {
        v46 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v53 = v65;

          MEMORY[0x1EEE9AC00](v54);
          *(&v57 - 2) = v53;
          *(&v57 - 1) = v2;
          v55 = v59;
          swift_getWitnessTable();
          v56 = v66;
          sub_1D8191224();

          (*(v63 + 8))(v62, AssociatedTypeWitness);
          (*(v64 + 8))(WitnessTable, v8);
          v32 = *(v58 + 8);
          v30 = v56;
          v31 = v55;
          return v32(v30, v31);
        }

        v41 = *(v38 + 8 * v46);
        ++i;
        if (v41)
        {
          i = v46;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  (*(v28 + 8))(v29, AssociatedTypeWitness);
  v30 = OUTLINED_FUNCTION_3_114();
  return v32(v30, v31);
}

uint64_t sub_1D80DDA08()
{
  if ((*(v0 + *(*v0 + 136)) & 1) == 0)
  {
    return 1;
  }

  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3 ^ 1;
}
uint64_t sub_1D7077B70(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D5B568D8(0, a3, a4, a5, type metadata accessor for FormatCompilerPrimitiveProperty);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D7077BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B568D8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7077C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7077CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7077D18()
{
  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v60 = &v56 - v2;
  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v56 - v5;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v57 = &v56 - v8;
  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v56 - v11;
  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v56 - v15;
  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v56 - v19;
  v21 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0(0);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v56 - v32;
  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v56 - v36;
  v38 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D675D0(v61, v41, type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D5CB55A8(v41, v37);
        v43 = *(v37 + 7);

        sub_1D5D676C0(v37);
        return v43;
      }

      sub_1D7077B70(v41, v33, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor);
      v43 = *(v33 + 9);

      v51 = v33;
      v52 = &qword_1EDF44028;
      v53 = sub_1D5B5706C;
      v54 = &type metadata for FormatColor;
LABEL_21:
      sub_1D7077BF4(v51, v52, v53, v54, type metadata accessor for FormatCompilerPrimitiveProperty);
      return v43;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D7077C50(v41, v29, sub_1D5B58AF0);
      v43 = *&v29[*(v26 + 56)];

      sub_1D7077CB8(v29, sub_1D5B58AF0);
      return v43;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D7077C50(v41, v24, type metadata accessor for FormatCompilerEnumProperty);
      v43 = *(v24 + 12);

      sub_1D7077CB8(v24, type metadata accessor for FormatCompilerEnumProperty);
      return v43;
    }

    v44 = &qword_1EDF44040;
    v45 = MEMORY[0x1E69E7DE0];
    v47 = sub_1D5B577E4;
    sub_1D7077B70(v41, v20, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    v43 = *(v20 + 9);

    v51 = v20;
LABEL_19:
    v52 = v44;
    v53 = v47;
    v54 = v45;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v50 = v57;
      sub_1D5C4EA2C(v41, v57, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
      v43 = *(v50 + *(v58 + 56));

      sub_1D5D67748(v50);
      return v43;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v44 = &qword_1EDF44030;
      v45 = &type metadata for FormatFont;
      v46 = sub_1D5B55668;
      v47 = sub_1D5B55668;
      v48 = v41;
      v49 = v59;
    }

    else
    {
      v44 = &qword_1EDF44038;
      v45 = &type metadata for FormatAsyncImageContent;
      v46 = sub_1D5B57A00;
      v47 = sub_1D5B57A00;
      v48 = v41;
      v49 = v60;
    }

    sub_1D7077B70(v48, v49, v44, v46, v45);
    v43 = *(v49 + 72);

    v51 = v49;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1D6680CD4(v41, v16);
    v43 = *(v16 + 9);

    sub_1D66810E4(v16);
  }

  else
  {
    sub_1D5CB5494(v41, v12);
    v43 = *(v12 + 10);

    sub_1D5D67638(v12);
  }

  return v43;
}

uint64_t FormatCompilerEnumProperty.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatCompilerPrimitiveProperty.description.getter(uint64_t a1, __n128 a2)
{
  v2 = sub_1D707D8D8();

  return v2;
}

uint64_t FormatCompilerPrimitiveProperty.compilerFlags.getter(uint64_t a1)
{
  sub_1D707D8E0(a1);
}

uint64_t FormatCompilerProperty.type.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D675D0(v1, v6, type metadata accessor for FormatCompilerProperty);
  *a1 = byte_1D73892AE[swift_getEnumCaseMultiPayload()];
  return sub_1D7077CB8(v6, type metadata accessor for FormatCompilerProperty);
}

BOOL sub_1D707866C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 49);
  v21 = *(a2 + 49);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 50) != *(a2 + 50) || (sub_1D5E1ED0C(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  v23 = *(v22 + 60);
  v24 = *(v15 + 48);
  v25 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v23, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v23, &v18[v24], &qword_1EDF45AD0, v25);
  v26 = *(v5 + 48);
  if (v26(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v26(&v18[v24], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_23;
    }

    (*(v5 + 32))(v8, &v18[v24], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v27 = sub_1D7261FBC();
    v28 = *(v5 + 8);
    v28(v8, v4);
    v28(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v27 & 1) != 0;
  }

  if (v26(&v18[v24], 1, v4) != 1)
  {
LABEL_23:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D7078AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v33 = v5;
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v20);
      v5 = v33;
      goto LABEL_18;
    }

LABEL_16:
    sub_1D5C84FF4(v20);
    sub_1D5C84FF4(v21);
    return 0;
  }

  v35 = *(a1 + 56);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    sub_1D5CFCFAC(v20);

    goto LABEL_16;
  }

  v34 = v21;
  sub_1D5CFCFAC(v20);
  sub_1D5CFCFAC(v21);
  sub_1D5CFCFAC(v20);
  v22 = static FormatColor.== infix(_:_:)(&v35, &v34);

  sub_1D5C84FF4(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (*(a1 + 64) != *(a2 + 64) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  v33 = v5;
  v24 = *(v23 + 60);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v33;
  sub_1D5B75978(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      (*(v28 + 8))(v13, v4);
      goto LABEL_25;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v30 = sub_1D7261FBC();
    v31 = *(v28 + 8);
    v31(v8, v4);
    v31(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v30 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_25:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D707904C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v58 = &v53 - v11;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  v16 = sub_1D725891C();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E6969530];
  sub_1D5B4C02C(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v53 - v23;
  sub_1D707DC14(0, &qword_1EDF18A60, &qword_1EDF45B00, v20);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v53 - v28;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v53 = v15;
  v54 = v5;
  v55 = v4;
  sub_1D5B58AF0(0);
  v56 = v31;
  v32 = *(v31 + 48);
  v33 = *(v26 + 48);
  v34 = MEMORY[0x1E6969530];
  sub_1D5B75978(a1 + v32, v29, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5B75978(a2 + v32, &v29[v33], &qword_1EDF45B00, v34);
  v35 = v60;
  v36 = *(v60 + 48);
  if (v36(v29, 1, v16) == 1)
  {
    if (v36(&v29[v33], 1, v16) == 1)
    {
      sub_1D5B6F50C(v29, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      goto LABEL_18;
    }

LABEL_16:
    sub_1D707DC78(v29, &qword_1EDF18A60, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    return 0;
  }

  sub_1D5B75978(v29, v24, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if (v36(&v29[v33], 1, v16) == 1)
  {
    (*(v35 + 8))(v24, v16);
    goto LABEL_16;
  }

  (*(v35 + 32))(v19, &v29[v33], v16);
  sub_1D5B4CEC4(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v37 = sub_1D7261FBC();
  v38 = *(v35 + 8);
  v38(v19, v16);
  v38(v24, v16);
  sub_1D5B6F50C(v29, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v39 = v56;
  if (*(a1 + *(v56 + 52)) != *(a2 + *(v56 + 52)) || (sub_1D5E1ED0C(*(a1 + *(v56 + 56)), *(a2 + *(v56 + 56))) & 1) == 0)
  {
    return 0;
  }

  v40 = *(v39 + 60);
  v41 = *(v59 + 48);
  v42 = MEMORY[0x1E69D6A58];
  v43 = a1 + v40;
  v44 = v53;
  sub_1D5B75978(v43, v53, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v40, v44 + v41, &qword_1EDF45AD0, v42);
  v46 = v54;
  v45 = v55;
  v47 = *(v54 + 48);
  if (v47(v44, 1, v55) != 1)
  {
    v48 = v58;
    sub_1D5B75978(v44, v58, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v47(v44 + v41, 1, v45) == 1)
    {
      (*(v46 + 8))(v48, v45);
      goto LABEL_25;
    }

    v49 = v44 + v41;
    v50 = v57;
    (*(v46 + 32))(v57, v49, v45);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v51 = sub_1D7261FBC();
    v52 = *(v46 + 8);
    v52(v50, v45);
    v52(v48, v45);
    sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v51 & 1) != 0;
  }

  if (v47(v44 + v41, 1, v45) != 1)
  {
LABEL_25:
    sub_1D707DC78(v44, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D707980C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + 65) != *(a2 + 65) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  v22 = *(v21 + 60);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v25(&v18[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_24;
    }

    (*(v5 + 32))(v8, &v18[v23], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v26 = sub_1D7261FBC();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v26 & 1) != 0;
  }

  if (v25(&v18[v23], 1, v4) != 1)
  {
LABEL_24:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D7079CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + 65) != *(a2 + 65) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  v22 = *(v21 + 60);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v25(&v18[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_24;
    }

    (*(v5 + 32))(v8, &v18[v23], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v26 = sub_1D7261FBC();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v26 & 1) != 0;
  }

  if (v25(&v18[v23], 1, v4) != 1)
  {
LABEL_24:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D707A130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 64);
  v21 = *(a2 + 64);
  if (v20)
  {
    if (!v21 || (*(a1 + 56) != *(a2 + 56) || v20 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || (sub_1D5E1ED0C(*(a1 + 80), *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  v23 = *(v22 + 60);
  v24 = *(v15 + 48);
  v25 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v23, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v23, &v18[v24], &qword_1EDF45AD0, v25);
  v26 = *(v5 + 48);
  if (v26(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v26(&v18[v24], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v8, &v18[v24], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v27 = sub_1D7261FBC();
    v28 = *(v5 + 8);
    v28(v8, v4);
    v28(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v27 & 1) != 0;
  }

  if (v26(&v18[v24], 1, v4) != 1)
  {
LABEL_25:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D707A5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v58 = &v53 - v11;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  v16 = sub_1D72585BC();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E6968FB0];
  sub_1D5B4C02C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v53 - v23;
  sub_1D707DC14(0, &qword_1EDF3C3D0, &qword_1EDF45B40, v20);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v53 - v28;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v53 = v15;
  v54 = v5;
  v55 = v4;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  v56 = v31;
  v32 = *(v31 + 48);
  v33 = *(v26 + 48);
  v34 = MEMORY[0x1E6968FB0];
  sub_1D5B75978(a1 + v32, v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5B75978(a2 + v32, &v29[v33], &qword_1EDF45B40, v34);
  v35 = v60;
  v36 = *(v60 + 48);
  if (v36(v29, 1, v16) == 1)
  {
    if (v36(&v29[v33], 1, v16) == 1)
    {
      sub_1D5B6F50C(v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      goto LABEL_18;
    }

LABEL_16:
    sub_1D707DC78(v29, &qword_1EDF3C3D0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    return 0;
  }

  sub_1D5B75978(v29, v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v36(&v29[v33], 1, v16) == 1)
  {
    (*(v35 + 8))(v24, v16);
    goto LABEL_16;
  }

  (*(v35 + 32))(v19, &v29[v33], v16);
  sub_1D5B4CEC4(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v37 = sub_1D7261FBC();
  v38 = *(v35 + 8);
  v38(v19, v16);
  v38(v24, v16);
  sub_1D5B6F50C(v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v39 = v56;
  if (*(a1 + *(v56 + 52)) != *(a2 + *(v56 + 52)) || (sub_1D5E1ED0C(*(a1 + *(v56 + 56)), *(a2 + *(v56 + 56))) & 1) == 0)
  {
    return 0;
  }

  v40 = *(v39 + 60);
  v41 = *(v59 + 48);
  v42 = MEMORY[0x1E69D6A58];
  v43 = a1 + v40;
  v44 = v53;
  sub_1D5B75978(v43, v53, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v40, v44 + v41, &qword_1EDF45AD0, v42);
  v46 = v54;
  v45 = v55;
  v47 = *(v54 + 48);
  if (v47(v44, 1, v55) != 1)
  {
    v48 = v58;
    sub_1D5B75978(v44, v58, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v47(v44 + v41, 1, v45) == 1)
    {
      (*(v46 + 8))(v48, v45);
      goto LABEL_25;
    }

    v49 = v44 + v41;
    v50 = v57;
    (*(v46 + 32))(v57, v49, v45);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v51 = sub_1D7261FBC();
    v52 = *(v46 + 8);
    v52(v50, v45);
    v52(v48, v45);
    sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v51 & 1) != 0;
  }

  if (v47(v44 + v41, 1, v45) != 1)
  {
LABEL_25:
    sub_1D707DC78(v44, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v44, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D707ADAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v33 = v5;
    sub_1D62B8444(v20);
    sub_1D62B8444(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v20);
      v5 = v33;
      goto LABEL_18;
    }

LABEL_16:
    sub_1D5C8500C(v20);
    sub_1D5C8500C(v21);
    return 0;
  }

  v35 = *(a1 + 56);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D62B8444(v20);
    sub_1D62B8444(v21);
    sub_1D62B8444(v20);

    goto LABEL_16;
  }

  v34 = v21;
  sub_1D62B8444(v20);
  sub_1D62B8444(v21);
  sub_1D62B8444(v20);
  v22 = static FormatFont.== infix(_:_:)(&v35, &v34);

  sub_1D5C8500C(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (*(a1 + 64) != *(a2 + 64) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  v33 = v5;
  v24 = *(v23 + 60);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v33;
  sub_1D5B75978(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      (*(v28 + 8))(v13, v4);
      goto LABEL_25;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v30 = sub_1D7261FBC();
    v31 = *(v28 + 8);
    v31(v8, v4);
    v31(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v30 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_25:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D707B2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v33 = v5;
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v20);
      v5 = v33;
      goto LABEL_18;
    }

LABEL_16:
    sub_1D5C84FF4(v20);
    sub_1D5C84FF4(v21);
    return 0;
  }

  v35 = *(a1 + 56);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    sub_1D5CFCFAC(v20);

    goto LABEL_16;
  }

  v34 = v21;
  sub_1D5CFCFAC(v20);
  sub_1D5CFCFAC(v21);
  sub_1D5CFCFAC(v20);
  v22 = static FormatAsyncImageContent.== infix(_:_:)(&v35, &v34);

  sub_1D5C84FF4(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (*(a1 + 64) != *(a2 + 64) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  v33 = v5;
  v24 = *(v23 + 60);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v33;
  sub_1D5B75978(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      (*(v28 + 8))(v13, v4);
      goto LABEL_25;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v30 = sub_1D7261FBC();
    v31 = *(v28 + 8);
    v31(v8, v4);
    v31(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v30 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_25:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL static FormatCompilerPrimitiveProperty.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v7 = sub_1D725B76C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v62 = &v56 - v15;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v12);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v56 - v18;
  v69 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v64 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D726393C();
  v68 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v66 = &v56 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v27);
  v29 = &v56 - v28;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v30 = *(a2 + 40);
  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != v30) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v56 = v11;
  v57 = v19;
  v58 = v8;
  v59 = v7;
  v60 = type metadata accessor for FormatCompilerPrimitiveProperty(0, a3, v67, v30);
  v31 = v60[12];
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = *(v68 + 16);
  v33(v29, a1 + v31, v23);
  v61 = v32;
  v33(&v29[v32], a2 + v31, v23);
  v34 = *(v69 + 48);
  if (v34(v29, 1, a3) == 1)
  {
    if (v34(&v29[v61], 1, a3) == 1)
    {
      (*(v68 + 8))(v29, v23);
      goto LABEL_17;
    }

LABEL_15:
    (*(v65 + 8))(v29, TupleTypeMetadata2);
    return 0;
  }

  v33(v66, v29, v23);
  v35 = v61;
  if (v34(&v29[v61], 1, a3) == 1)
  {
    (*(v69 + 8))(v66, a3);
    goto LABEL_15;
  }

  v36 = v69;
  v37 = v64;
  (*(v69 + 32))(v64, &v29[v35], a3);
  v38 = v66;
  v39 = sub_1D7261FBC();
  v40 = *(v36 + 8);
  v40(v37, a3);
  v40(v38, a3);
  (*(v68 + 8))(v29, v23);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v41 = v60;
  if (*(a1 + v60[13]) != *(a2 + v60[13]) || (sub_1D5E1ED0C(*(a1 + v60[14]), *(a2 + v60[14])) & 1) == 0)
  {
    return 0;
  }

  v42 = v41[15];
  v43 = *(v63 + 48);
  v44 = MEMORY[0x1E69D6A58];
  v45 = a1 + v42;
  v46 = v57;
  sub_1D5B75978(v45, v57, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v42, v46 + v43, &qword_1EDF45AD0, v44);
  v48 = v58;
  v47 = v59;
  v49 = *(v58 + 48);
  if (v49(v46, 1, v59) != 1)
  {
    v50 = v62;
    sub_1D5B75978(v46, v62, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v49(v46 + v43, 1, v47) == 1)
    {
      (*(v48 + 8))(v50, v47);
      goto LABEL_24;
    }

    v52 = v46 + v43;
    v53 = v56;
    (*(v48 + 32))(v56, v52, v47);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v54 = sub_1D7261FBC();
    v55 = *(v48 + 8);
    v55(v53, v47);
    v55(v50, v47);
    sub_1D5B6F50C(v46, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v54 & 1) != 0;
  }

  if (v49(v46 + v43, 1, v47) != 1)
  {
LABEL_24:
    sub_1D707DC78(v46, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v46, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

uint64_t FormatCompilerPrimitiveProperty.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCompilerPrimitiveProperty.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FormatCompilerPrimitiveProperty.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1D707C0C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for FormatCompilerPrimitiveProperty(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = sub_1D707D8D8();
  a4[1] = v5;
}

void sub_1D707C118(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FormatCompilerPrimitiveProperty.description.setter(v1, v2);
}

void FormatCompilerPrimitiveProperty.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatCompilerPrimitiveProperty.default.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D726393C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D707C280@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for FormatCompilerPrimitiveProperty(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = sub_1D707D8E0(v5);
}

void sub_1D707C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FormatCompilerPrimitiveProperty(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  FormatCompilerPrimitiveProperty.compilerFlags.setter(v5, v4);
}

void FormatCompilerPrimitiveProperty.compilerFlags.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);

  *(v2 + v4) = a1;
}

uint64_t FormatCompilerEnumProperty.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCompilerEnumProperty.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCompilerEnumProperty.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void FormatCompilerEnumProperty.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void FormatCompilerEnumProperty.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t FormatCompilerEnumProperty.default.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

BOOL _s8NewsFeed26FormatCompilerEnumPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_1D707DC14(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 80);
  v21 = *(a2 + 80);
  if (v20)
  {
    if (!v21 || (*(a1 + 72) != *(a2 + 72) || v20 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (*(a1 + 88) != *(a2 + 88) || (sub_1D5E1ED0C(*(a1 + 96), *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  v22 = *(type metadata accessor for FormatCompilerEnumProperty(0) + 48);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5B75978(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5B75978(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) != 1)
  {
    sub_1D5B75978(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v25(&v18[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_28;
    }

    (*(v5 + 32))(v8, &v18[v23], v4);
    sub_1D5B4CEC4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v26 = sub_1D7261FBC();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v13, v4);
    sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v26 & 1) != 0;
  }

  if (v25(&v18[v23], 1, v4) != 1)
  {
LABEL_28:
    sub_1D707DC78(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return 0;
  }

  sub_1D5B6F50C(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL _s8NewsFeed22FormatCompilerPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v119 = a1;
  v120 = a2;
  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v113 = &v103 - v4;
  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v112 = &v103 - v7;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v111 = &v103 - v10;
  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v110 = &v103 - v13;
  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v109 = &v103 - v16;
  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v108 = &v103 - v19;
  v20 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v107 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v106 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v105 = &v103 - v28;
  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v104 = &v103 - v31;
  v32 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v118 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v117 = &v103 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v116 = &v103 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v114 = &v103 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v103 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v115 = &v103 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v103 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v103 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v103 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v103 - v65;
  sub_1D707DBB0(0);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v70 = &v103 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v71 + 56);
  sub_1D5D675D0(v119, v70, type metadata accessor for FormatCompilerProperty);
  sub_1D5D675D0(v120, &v70[v72], type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D5D675D0(v70, v66, type metadata accessor for FormatCompilerProperty);
        if (!swift_getEnumCaseMultiPayload())
        {
          v102 = v104;
          sub_1D5CB55A8(&v70[v72], v104);
          v75 = sub_1D707866C(v66, v102);
          sub_1D5D676C0(v102);
          sub_1D5D676C0(v66);
          v85 = type metadata accessor for FormatCompilerProperty;
          goto LABEL_44;
        }

        sub_1D5D676C0(v66);
        goto LABEL_43;
      }

      sub_1D5D675D0(v70, v62, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v93 = v105;
        sub_1D7077B70(&v70[v72], v105, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor);
        v75 = sub_1D7078AFC(v62, v93);
        sub_1D7077BF4(v93, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
        v89 = v62;
        v90 = &qword_1EDF44028;
        v91 = sub_1D5B5706C;
        v92 = &type metadata for FormatColor;
        goto LABEL_30;
      }

      v96 = &qword_1EDF44028;
      v97 = &type metadata for FormatColor;
      v99 = sub_1D5B5706C;
      v100 = v62;
LABEL_42:
      sub_1D7077BF4(v100, v96, v99, v97, type metadata accessor for FormatCompilerPrimitiveProperty);
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D5D675D0(v70, v58, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v86 = v106;
        sub_1D7077C50(&v70[v72], v106, sub_1D5B58AF0);
        v75 = sub_1D707904C(v58, v86);
        v76 = sub_1D5B58AF0;
        sub_1D7077CB8(v86, sub_1D5B58AF0);
        v77 = v58;
        goto LABEL_20;
      }

      sub_1D7077CB8(v58, sub_1D5B58AF0);
LABEL_43:
      v75 = 0;
      v85 = sub_1D707DBB0;
      goto LABEL_44;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5D675D0(v70, v54, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v74 = v107;
        sub_1D7077C50(&v70[v72], v107, type metadata accessor for FormatCompilerEnumProperty);
        v75 = _s8NewsFeed26FormatCompilerEnumPropertyV2eeoiySbAC_ACtFZ_0(v54, v74);
        v76 = type metadata accessor for FormatCompilerEnumProperty;
        sub_1D7077CB8(v74, type metadata accessor for FormatCompilerEnumProperty);
        v77 = v54;
LABEL_20:
        sub_1D7077CB8(v77, v76);
        v85 = type metadata accessor for FormatCompilerProperty;
        goto LABEL_44;
      }

      sub_1D7077CB8(v54, type metadata accessor for FormatCompilerEnumProperty);
      goto LABEL_43;
    }

    v78 = v115;
    sub_1D5D675D0(v70, v115, type metadata accessor for FormatCompilerProperty);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v79 = &qword_1EDF44040;
      v80 = MEMORY[0x1E69E7DE0];
      v81 = sub_1D5B577E4;
      v82 = v108;
      sub_1D7077B70(&v70[v72], v108, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
      v83 = sub_1D707980C(v78, v82);
      goto LABEL_27;
    }

    v96 = &qword_1EDF44040;
    v97 = MEMORY[0x1E69E7DE0];
    v98 = sub_1D5B577E4;
LABEL_39:
    v99 = v98;
    v100 = v78;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v87 = v116;
      sub_1D5D675D0(v70, v116, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v88 = v111;
        sub_1D5C4EA2C(&v70[v72], v111, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
        v75 = sub_1D707A5D0(v87, v88);
        sub_1D5D67748(v88);
        sub_1D5D67748(v87);
        v85 = type metadata accessor for FormatCompilerProperty;
        goto LABEL_44;
      }

      sub_1D5D67748(v87);
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v78 = v117;
      sub_1D5D675D0(v70, v117, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v79 = &qword_1EDF44030;
        v80 = &type metadata for FormatFont;
        v81 = sub_1D5B55668;
        v82 = v112;
        sub_1D7077B70(&v70[v72], v112, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont);
        v83 = sub_1D707ADAC(v78, v82);
LABEL_27:
        v75 = v83;
        sub_1D7077BF4(v82, v79, v81, v80, type metadata accessor for FormatCompilerPrimitiveProperty);
        v89 = v78;
        v90 = v79;
        v91 = v81;
        v92 = v80;
LABEL_30:
        sub_1D7077BF4(v89, v90, v91, v92, type metadata accessor for FormatCompilerPrimitiveProperty);
        v85 = type metadata accessor for FormatCompilerProperty;
        goto LABEL_44;
      }

      v96 = &qword_1EDF44030;
      v97 = &type metadata for FormatFont;
      v98 = sub_1D5B55668;
    }

    else
    {
      v78 = v118;
      sub_1D5D675D0(v70, v118, type metadata accessor for FormatCompilerProperty);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v79 = &qword_1EDF44038;
        v80 = &type metadata for FormatAsyncImageContent;
        v81 = sub_1D5B57A00;
        v82 = v113;
        sub_1D7077B70(&v70[v72], v113, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent);
        v83 = sub_1D707B2FC(v78, v82);
        goto LABEL_27;
      }

      v96 = &qword_1EDF44038;
      v97 = &type metadata for FormatAsyncImageContent;
      v98 = sub_1D5B57A00;
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v94 = v114;
    sub_1D5D675D0(v70, v114, type metadata accessor for FormatCompilerProperty);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v95 = v110;
      sub_1D5CB5494(&v70[v72], v110);
      v75 = sub_1D707A130(v94, v95);
      sub_1D5D67638(v95);
      sub_1D5D67638(v94);
      v85 = type metadata accessor for FormatCompilerProperty;
      goto LABEL_44;
    }

    sub_1D5D67638(v94);
    goto LABEL_43;
  }

  sub_1D5D675D0(v70, v47, type metadata accessor for FormatCompilerProperty);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D66810E4(v47);
    goto LABEL_43;
  }

  v84 = v109;
  sub_1D6680CD4(&v70[v72], v109);
  v75 = sub_1D7079CA4(v47, v84);
  sub_1D66810E4(v84);
  sub_1D66810E4(v47);
  v85 = type metadata accessor for FormatCompilerProperty;
LABEL_44:
  sub_1D7077CB8(v70, v85);
  return v75;
}

uint64_t sub_1D707D8EC(uint64_t a1)
{
  result = sub_1D5B4CEC4(&qword_1EC899C10, type metadata accessor for FormatCompilerProperty, &protocol conformance descriptor for FormatCompilerProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707D944(void *a1)
{
  a1[1] = sub_1D5B4CEC4(&qword_1EDF44BF0, type metadata accessor for FormatCompilerProperty, &protocol conformance descriptor for FormatCompilerProperty);
  a1[2] = sub_1D5B4CEC4(&qword_1EDF44BF8, type metadata accessor for FormatCompilerProperty, &protocol conformance descriptor for FormatCompilerProperty);
  result = sub_1D5B4CEC4(&qword_1EC899C18, type metadata accessor for FormatCompilerProperty, &protocol conformance descriptor for FormatCompilerProperty);
  a1[3] = result;
  return result;
}

uint64_t sub_1D707D9F0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707DA2C(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D707DAAC(uint64_t a1)
{
  result = sub_1D5B4CEC4(&qword_1EC899C20, type metadata accessor for FormatCompilerEnumProperty, &protocol conformance descriptor for FormatCompilerEnumProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707DB04(void *a1)
{
  a1[1] = sub_1D5B4CEC4(&qword_1EDF235C8, type metadata accessor for FormatCompilerEnumProperty, &protocol conformance descriptor for FormatCompilerEnumProperty);
  a1[2] = sub_1D5B4CEC4(&unk_1EDF0B740, type metadata accessor for FormatCompilerEnumProperty, &protocol conformance descriptor for FormatCompilerEnumProperty);
  result = sub_1D5B4CEC4(&qword_1EC899C28, type metadata accessor for FormatCompilerEnumProperty, &protocol conformance descriptor for FormatCompilerEnumProperty);
  a1[3] = result;
  return result;
}

void sub_1D707DBB0(uint64_t a1)
{
  if (!qword_1EC899C30)
  {
    type metadata accessor for FormatCompilerProperty(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899C30);
    }
  }
}

void sub_1D707DC14(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B4C02C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D707DC78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D707DC14(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

BOOL static FormatCodingEmptyStringStrategy.shouldEncode(wrappedValue:)(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL sub_1D707DCFC(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

id sub_1D707DD2C(uint64_t a1)
{
  if (a1 == 1)
  {
    result = [v1 contentMode];
    if (result == 7)
    {
      return result;
    }

    result = [v1 contentMode];
    if (result == 4)
    {
      return result;
    }

    v3 = 8;
    goto LABEL_10;
  }

  if (a1)
  {
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  result = [v1 contentMode];
  if (result != 7)
  {
    result = [v1 contentMode];
    if (result != 4)
    {
      v3 = 7;
LABEL_10:

      return [v1 setContentMode_];
    }
  }

  return result;
}

double FormatWebEmbedNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatWebEmbedNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatWebEmbedNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double FormatWebEmbedNode.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

uint64_t FormatWebEmbedNode.contentFrameIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t FormatWebEmbedNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatWebEmbedNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 72);

  return result;
}

double FormatWebEmbedNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

double FormatWebEmbedNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  return sub_1D5EB15C4(v3);
}

void FormatWebEmbedNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
}

uint64_t FormatWebEmbedNode.location.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

double FormatWebEmbedNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;

  return result;
}

uint64_t FormatWebEmbedNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[23];
  v6 = v1[24];
  v7 = v1[25];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

unint64_t FormatWebEmbedNode.rendering.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = v2;
  return sub_1D62B8658(v2);
}

uint64_t FormatWebEmbedNode.__allocating_init(identifier:content:contentFrameIdentifier:config:size:resize:adjustments:style:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:location:selectors:flex:rendering:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, char a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = *a7;
  v26 = *a8;
  v27 = *a12;
  v28 = *a14;
  v29 = *(a14 + 8);
  v37 = *(a18 + 40);
  v38 = *(a18 + 32);
  v30 = *a19;
  swift_beginAccess();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = v24;
  *(v23 + 40) = a4;
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = v25;
  *(v23 + 72) = v26;
  swift_beginAccess();
  *(v23 + 80) = a9;
  *(v23 + 88) = a10;
  swift_beginAccess();
  *(v23 + 96) = a11;
  swift_beginAccess();
  *(v23 + 104) = v27;
  swift_beginAccess();
  *(v23 + 112) = a13;
  *(v23 + 120) = v28;
  *(v23 + 128) = v29;
  *(v23 + 136) = a15;
  *(v23 + 144) = a16;
  swift_beginAccess();
  *(v23 + 152) = a17;
  v31 = *(a18 + 16);
  *(v23 + 160) = *a18;
  *(v23 + 176) = v31;
  *(v23 + 192) = v38;
  *(v23 + 200) = v37;
  *(v23 + 208) = v30;
  return v23;
}

uint64_t FormatWebEmbedNode.init(identifier:content:contentFrameIdentifier:config:size:resize:adjustments:style:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:location:selectors:flex:rendering:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, char a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v24 = *a3;
  v25 = *a7;
  v26 = *a8;
  v30 = *a12;
  v32 = *a14;
  v31 = *(a14 + 8);
  v34 = *(a18 + 40);
  v35 = *(a18 + 32);
  v33 = *a19;
  swift_beginAccess();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = v24;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = v25;
  *(v19 + 72) = v26;
  swift_beginAccess();
  *(v19 + 80) = a9;
  *(v19 + 88) = a10;
  swift_beginAccess();
  *(v19 + 96) = a11;
  swift_beginAccess();
  *(v19 + 104) = v30;
  swift_beginAccess();
  *(v19 + 112) = a13;
  *(v19 + 120) = v32;
  *(v19 + 128) = v31;
  *(v19 + 136) = a15;
  *(v19 + 144) = a16;
  swift_beginAccess();
  *(v19 + 152) = a17;
  v27 = *(a18 + 16);
  *(v19 + 160) = *a18;
  *(v19 + 176) = v27;
  *(v19 + 192) = v35;
  *(v19 + 200) = v34;
  *(v19 + 208) = v33;
  return v19;
}

uint64_t FormatWebEmbedNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 64));

  sub_1D5EB15C4(*(v0 + 104));

  sub_1D5EB2398(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));
  sub_1D62B865C(*(v0 + 208));
  return v0;
}

uint64_t FormatWebEmbedNode.__deallocating_deinit()
{
  FormatWebEmbedNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D707E864(uint64_t a1)
{
  result = sub_1D707E9A8(&qword_1EC899C38, &protocol conformance descriptor for FormatWebEmbedNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707E8A8(void *a1)
{
  a1[1] = sub_1D707E9A8(&qword_1EDF2D738, &protocol conformance descriptor for FormatWebEmbedNode);
  a1[2] = sub_1D707E9A8(&qword_1EDF10088, &protocol conformance descriptor for FormatWebEmbedNode);
  result = sub_1D707E9A8(&qword_1EC899C40, &protocol conformance descriptor for FormatWebEmbedNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D707E964(uint64_t a1)
{
  result = sub_1D707E9A8(&qword_1EC899C48, &protocol conformance descriptor for FormatWebEmbedNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D707E9A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatWebEmbedNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D707E9E8(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF187C0 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (BYTE1(v9))
  {
    v6 = BYTE1(v9) != 1;
  }

  else
  {
    v7 = *(a1 + 208);
    if (v7 == 2)
    {
      v6 = 0;
    }

    else
    {
      v8 = *(a1 + 208);
      sub_1D5D0A57C(v7);
      sub_1D721DA54(a2, &v9);
      sub_1D5D0A58C(v8);
      v6 = v9;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D707EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>, __n128 a9@<Q0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v78 = a7;
  v86 = a6;
  v79 = a5;
  v80 = a2;
  v77 = a1;
  v17 = a9.n128_u64[0];
  v84 = a8;
  v82 = sub_1D7257C7C();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v18);
  v68 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54EC0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v69 = &v67 - v22;
  sub_1D5B54EC0(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v67 - v25;
  v27 = sub_1D72585BC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v34 = *(a4 + 16);
  v33 = *(a4 + 24);
  v35 = *(v32 + 40);
  if (v35)
  {
    v93 = *(v32 + 32);
    v94 = v35;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v34, v33);

    v88 = v93;
    v87 = v94;
    v34 = *(a4 + 16);
    v33 = *(a4 + 24);
  }

  else
  {

    v88 = v34;
    v87 = v33;
  }

  v76 = v34;
  v36 = *(a4 + 72);
  v83 = v26;
  if (v36 && (v37 = *(v36 + 16), swift_beginAccess(), *(*(v37 + 16) + 16)))
  {
    v75 = v37;
  }

  else
  {
    v75 = 0;
  }

  swift_beginAccess();
  v74 = *(a4 + 96);
  swift_beginAccess();
  v92[0] = *(a4 + 104);
  v38 = v92[0];

  sub_1D5EB1500(v38);
  sub_1D615B4A8(a3, &v95);
  sub_1D5EB15C4(v92[0]);
  v73 = v95;
  swift_beginAccess();
  v72 = *(a4 + 112);
  v39 = *(a4 + 48);
  v71 = *(a4 + 40);
  v85 = v28;
  v40 = *(v28 + 16);
  v41 = v86 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url;
  v86 = v27;
  v40(v31, v41, v27);
  v70 = *(a4 + 120);
  v42 = *(a4 + 128);
  v91 = *(a4 + 64);

  v43 = sub_1D71E8230();
  v44 = *(a4 + 136);
  v45 = *(a4 + 144);
  type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
  v46 = swift_allocObject();
  v47 = v80;
  *(v46 + 16) = v77;
  *(v46 + 24) = v47;
  v48 = v87;
  *(v46 + 32) = v88;
  *(v46 + 40) = v48;
  *(v46 + 48) = v76;
  *(v46 + 56) = v33;
  *(v46 + 64) = v17;
  *(v46 + 72) = a10;
  *(v46 + 80) = a11;
  *(v46 + 88) = a12;
  v49 = v75;
  *(v46 + 96) = v79;
  *(v46 + 104) = v49;
  v50 = v73;
  *(v46 + 112) = v74;
  *(v46 + 120) = v50;
  *(v46 + 128) = v72;
  *(v46 + 136) = v71;
  *(v46 + 144) = v39;
  *(v46 + 152) = v70;
  *(v46 + 160) = v42;
  *(v46 + 161) = v43 & 1;
  *(v46 + 168) = v44;
  *(v46 + 176) = v45;
  *(v46 + 184) = v78 & 1;

  sub_1D72583DC();
  v51 = v83;
  sub_1D7257C3C();

  v52 = v81;
  v53 = *(v81 + 48);
  v54 = v82;
  if (!v53(v51, 1, v82))
  {
    sub_1D7257C1C();
  }

  if (!v53(v51, 1, v54))
  {
    sub_1D7257C5C();
  }

  if (!v53(v51, 1, v54))
  {
    v55 = v68;
    (*(v52 + 16))(v68, v51, v54);
    v56 = v69;
    sub_1D7257BDC();
    (*(v52 + 8))(v55, v54);
    v57 = v85;
    v58 = v86;
    if ((*(v85 + 48))(v56, 1, v86) != 1)
    {
      v59 = sub_1D72583DC();
      v65 = v56;
      v61 = v66;
      (*(v57 + 8))(v65, v58);
      goto LABEL_16;
    }

    sub_1D707F2F4(v56, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  v59 = sub_1D72583DC();
  v61 = v60;
LABEL_16:
  v62 = swift_allocObject();
  v89 = v88;
  v90 = v87;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v59, v61);

  v63 = v90;
  *(v46 + 192) = v89;
  *(v46 + 200) = v63;
  (*(v85 + 8))(v31, v86);
  *(v46 + 208) = MEMORY[0x1E69E7CD0];
  result = sub_1D707F2F4(v51, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  *(v62 + 16) = v46;
  *v84 = v62 | 0x1000000000000004;
  return result;
}

uint64_t sub_1D707F2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B54EC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall FormatBlueprintViewSupplementaryViewProvider.register(in:)(UICollectionView *in)
{
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  (*(v4 + 8))(in, v3, v4);
}

uint64_t FormatBlueprintViewSupplementaryViewProvider.supplementaryView(section:layoutSection:view:supplementaryData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v6 = type metadata accessor for FormatLayoutSectionDescriptor.Footer(0);
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v49 - v12;
  v13 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatLayoutSectionDescriptor.Header(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v49 - v23;
  v25 = sub_1D725EF8C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69A58BC(0);
  sub_1D725E24C();
  v53 = v56;
  v54 = v55;
  sub_1D725EE9C();
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == *MEMORY[0x1E69D8478])
  {
    v31 = sub_1D725EEAC();
    if ((v31 & 0x8000000000000000) == 0)
    {
      if (v31 < *(v54 + 16))
      {
        sub_1D707FB5C(v54 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v31, v24, type metadata accessor for FormatLayoutSectionDescriptor.Header);
        sub_1D707FB5C(v24, v20, type metadata accessor for FormatLayoutSectionDescriptor.Header);
        v32 = v52;
        sub_1D707F95C(v20, v52);
        v33 = v4[7];
        v34 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v33);
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = *(v34 + 32);

        v37 = v36(v51, a4, v32, sub_1D707FCF0, v35, v33, v34);

        sub_1D707FBC4(v32, type metadata accessor for FeedItemSupplementaryAttributes);
        v38 = type metadata accessor for FormatLayoutSectionDescriptor.Header;
LABEL_10:
        sub_1D707FBC4(v24, v38);

        return v37;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v30 == *MEMORY[0x1E69D8470])
  {
    v39 = sub_1D725EEAC();
    v40 = *(v54 + 16);
    v41 = __OFSUB__(v39, v40);
    v42 = v39 - v40;
    if (!v41)
    {
      if ((v42 & 0x8000000000000000) == 0)
      {
        if (v42 < *(v53 + 16))
        {
          v24 = v50;
          sub_1D707FB5C(v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v42, v50, type metadata accessor for FormatLayoutSectionDescriptor.Footer);
          sub_1D707FB5C(v24, v9, type metadata accessor for FormatLayoutSectionDescriptor.Footer);
          v43 = v52;
          sub_1D707F95C(v9, v52);
          v44 = v4[7];
          v45 = v4[8];
          __swift_project_boxed_opaque_existential_1(v4 + 4, v44);
          v46 = swift_allocObject();
          swift_weakInit();
          v47 = *(v45 + 32);

          v37 = v47(v51, a4, v43, sub_1D707FB40, v46, v44, v45);

          sub_1D707FBC4(v43, type metadata accessor for FeedItemSupplementaryAttributes);
          v38 = type metadata accessor for FormatLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D707F95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatBlueprintViewSupplementaryViewProvider.deinit()
{
  sub_1D5B87E10(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t FormatBlueprintViewSupplementaryViewProvider.__deallocating_deinit()
{
  sub_1D5B87E10(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D707FA28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v3);
  return (*(v4 + 8))(v2, v3, v4);
}

double sub_1D707FAB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D6F9A69C(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D707FB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D707FBC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall GroupLayoutAttributes.init(frame:feedItemLayoutAttributes:feedItemSupplementaryAttributes:)(NewsFeed::GroupLayoutAttributes *__return_ptr retstr, __C::CGRect frame, Swift::OpaquePointer feedItemLayoutAttributes, Swift::OpaquePointer feedItemSupplementaryAttributes)
{
  retstr->kind = NewsFeed_GroupLayoutAttributes_Kind_layout;
  retstr->frame = frame;
  sub_1D6B35D2C();
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v6 = sub_1D72623BC();

  retstr->feedItemLayoutAttributes._rawValue = v6;
  retstr->feedItemSupplementaryAttributes = feedItemSupplementaryAttributes;
}

uint64_t GroupLayoutAttributes.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D707FE38()
{
  result = qword_1EC899C50;
  if (!qword_1EC899C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C50);
  }

  return result;
}

uint64_t sub_1D707FE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D707FED4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1D707FF40(double a1, double a2, double a3, double a4)
{
  v4 = 2019912806;
  sub_1D7263D4C();

  v5 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v6 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  if (sub_1D725A63C())
  {
    v7 = 0xE400000000000000;
    v8 = 2019912806;
  }

  else
  {
    v8 = sub_1D7262A9C();
    v7 = v9;
  }

  MEMORY[0x1DA6F9910](v8, v7);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  if (sub_1D725A63C())
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v4 = sub_1D7262A9C();
    v10 = v11;
  }

  MEMORY[0x1DA6F9910](v4, v10);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

BOOL static CGRect.< infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a2 == a6)
  {
    return a1 <= a5;
  }

  else
  {
    return a2 < a6;
  }
}

double CGRect.area.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

unint64_t sub_1D7080128()
{
  result = qword_1EC899C58;
  if (!qword_1EC899C58)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C58);
  }

  return result;
}

BOOL sub_1D7080180(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    return *a1 <= *a2;
  }

  else
  {
    return v2 < v3;
  }
}

BOOL sub_1D70801A0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == v2)
  {
    return *a2 > *a1;
  }

  else
  {
    return v3 >= v2;
  }
}

BOOL sub_1D70801C0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    return *a1 > *a2;
  }

  else
  {
    return v2 >= v3;
  }
}

BOOL sub_1D70801E0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == v2)
  {
    return *a2 <= *a1;
  }

  else
  {
    return v3 < v2;
  }
}

uint64_t static FormatContentSubgroupFilterSelector.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_1D72646CC();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

BOOL sub_1D7080250(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(a1 + *(type metadata accessor for FormatContentSubgroupFilterContext(0) + 32));
  v5 = qword_1EDF2AB18;

  if (v5 != -1)
  {
LABEL_8:
    swift_once();
  }

  *&v17[0] = v3;
  *(&v17[0] + 1) = v2;
  v2 = sub_1D6844380(v17);

  v3 = -*(v2 + 16);
  v6 = -1;
  v7 = 32;
  do
  {
    v8 = v3 + v6;
    if (v3 + v6 == -1)
    {
      break;
    }

    if (++v6 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = v7 + 56;
    v10 = v2 + v7;
    v11 = *v10;
    v12 = *(v10 + 16);
    v13 = *(v10 + 32);
    v18 = *(v10 + 48);
    v17[1] = v12;
    v17[2] = v13;
    v17[0] = v11;
    sub_1D5E3B610(v17, v16);
    v14 = sub_1D68444DC(v4);
    sub_1D5E3B66C(v17);
    v7 = v9;
  }

  while ((v14 & 1) == 0);

  return v8 != -1;
}

uint64_t FormatContentSubgroupFilterSelector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1D70803B0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D7080438(uint64_t a1)
{
  v2 = sub_1D7080624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7080474(uint64_t a1)
{
  v2 = sub_1D7080624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterSelector.encode(to:)(void *a1)
{
  sub_1D7080814(0, &qword_1EDF024C0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7080624();

  sub_1D7264B5C();
  v12[0] = v9;
  v12[1] = v10;
  sub_1D5D3E60C();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D7080624()
{
  result = qword_1EDF1D920;
  if (!qword_1EDF1D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D920);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterSelector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7080814(0, &qword_1EDF19BC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7080624();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D5C36978();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7080814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7080624();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterSelector.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7080878(void *a1)
{
  a1[1] = sub_1D69CFC88();
  a1[2] = sub_1D69CFE3C();
  result = sub_1D70808B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70808B0()
{
  result = qword_1EC899C60;
  if (!qword_1EC899C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C60);
  }

  return result;
}

unint64_t sub_1D7080958()
{
  result = qword_1EC899C68;
  if (!qword_1EC899C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C68);
  }

  return result;
}

unint64_t sub_1D70809B0()
{
  result = qword_1EDF1D910;
  if (!qword_1EDF1D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D910);
  }

  return result;
}

unint64_t sub_1D7080A08()
{
  result = qword_1EDF1D918;
  if (!qword_1EDF1D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D918);
  }

  return result;
}

uint64_t type metadata accessor for FormatSection(uint64_t a1)
{
  result = qword_1EDF11D18;
  if (!qword_1EDF11D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7080AD0(uint64_t a1)
{
  type metadata accessor for FormatPluginData(319);
  if (v2 <= 0x3F)
  {
    sub_1D6838844(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t SportsDataVisualizationResponseEventStatus.isFinalized.getter()
{
  v1 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7084300(v0, v4, type metadata accessor for SportsDataVisualizationResponseEventStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0;
  v7 = type metadata accessor for StartTime;
  if (EnumCaseMultiPayload <= 5)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v6 = 1;
      v7 = type metadata accessor for StartTime;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
  {
    v6 = 1;
    v7 = type metadata accessor for StartTimeEndTime;
LABEL_8:
    sub_1D7080CD4(v4, v7);
  }

  return v6;
}

uint64_t sub_1D7080CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SportsDataVisualizationResponseEventStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  started = type metadata accessor for StartTimeEndTime(0);
  MEMORY[0x1EEE9AC00](started - 8, v4);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v74 = &v64 - v8;
  sub_1D7084368(0, &qword_1EDF03838, sub_1D70815D0, &type metadata for SportsDataVisualizationResponseEventStatus.CodingKeys, MEMORY[0x1E69E6F48]);
  v75 = v9;
  v70 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v69 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v69, v13);
  v72 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v66 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v71 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v65 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v64 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v64 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v64 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v64 - v42;
  v44 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D70815D0();
  v73 = v12;
  v45 = v76;
  sub_1D7264B0C();
  if (!v45)
  {
    v46 = v35;
    v76 = v31;
    v48 = v71;
    v47 = v72;
    v49 = v74;
    sub_1D7081624();
    v50 = v73;
    sub_1D726431C();
    if (LOBYTE(v77[0]) > 4u)
    {
      if (LOBYTE(v77[0]) <= 7u)
      {
        v52 = v68;
        if (LOBYTE(v77[0]) == 5)
        {
          sub_1D5B68374(v78, v77);
          v55 = v48;
          StartTime.init(from:)(v77, v48);
          (*(v70 + 8))(v50, v75);
        }

        else
        {
          v53 = v70;
          v54 = v75;
          if (LOBYTE(v77[0]) != 6)
          {
            sub_1D5B68374(v78, v77);
            StartTime.init(from:)(v77, v47);
            (*(v53 + 8))(v50, v54);
            swift_storeEnumTagMultiPayload();
            v63 = v47;
            goto LABEL_30;
          }

          sub_1D5B68374(v78, v77);
          v55 = v66;
          StartTime.init(from:)(v77, v66);
          (*(v53 + 8))(v50, v54);
        }

        swift_storeEnumTagMultiPayload();
        v63 = v55;
LABEL_30:
        sub_1D7082114(v63, v43, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        goto LABEL_31;
      }

      v52 = v68;
      if (LOBYTE(v77[0]) == 8)
      {
        sub_1D5B68374(v78, v77);
        StartTimeEndTime.init(from:)(v77, v49);
        (*(v70 + 8))(v50, v75);
        sub_1D7082114(v49, v43, type metadata accessor for StartTimeEndTime);
      }

      else
      {
        v57 = v70;
        v58 = v75;
        if (LOBYTE(v77[0]) == 9)
        {
          sub_1D5B68374(v78, v77);
          v59 = v67;
          StartTimeEndTime.init(from:)(v77, v67);
          (*(v57 + 8))(v50, v58);
          sub_1D7082114(v59, v43, type metadata accessor for StartTimeEndTime);
          swift_storeEnumTagMultiPayload();
          v52 = v68;
LABEL_31:
          sub_1D7082114(v43, v52, type metadata accessor for SportsDataVisualizationResponseEventStatus);
          return __swift_destroy_boxed_opaque_existential_1(v78);
        }

        (*(v70 + 8))(v50, v75);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_31;
    }

    if (LOBYTE(v77[0]) <= 1u)
    {
      v60 = v68;
      if (LOBYTE(v77[0]))
      {
        sub_1D5B68374(v78, v77);
        StartTime.init(from:)(v77, v46);
        (*(v70 + 8))(v50, v75);
        swift_storeEnumTagMultiPayload();
        v61 = v46;
      }

      else
      {
        sub_1D5B68374(v78, v77);
        StartTime.init(from:)(v77, v39);
        (*(v70 + 8))(v50, v75);
        swift_storeEnumTagMultiPayload();
        v61 = v39;
      }

      sub_1D7082114(v61, v43, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      v52 = v60;
      goto LABEL_31;
    }

    if (LOBYTE(v77[0]) == 2)
    {
      sub_1D5B68374(v78, v77);
      v62 = v76;
      StartTime.init(from:)(v77, v76);
      (*(v70 + 8))(v50, v75);
    }

    else
    {
      if (LOBYTE(v77[0]) == 3)
      {
        sub_1D5B68374(v78, v77);
        StartTime.init(from:)(v77, v27);
        (*(v70 + 8))(v50, v75);
        swift_storeEnumTagMultiPayload();
        v56 = v27;
LABEL_24:
        sub_1D7082114(v56, v43, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        v52 = v68;
        goto LABEL_31;
      }

      sub_1D5B68374(v78, v77);
      v62 = v65;
      StartTime.init(from:)(v77, v65);
      (*(v70 + 8))(v50, v75);
    }

    swift_storeEnumTagMultiPayload();
    v56 = v62;
    goto LABEL_24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

unint64_t sub_1D70815D0()
{
  result = qword_1EDF06248;
  if (!qword_1EDF06248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06248);
  }

  return result;
}

unint64_t sub_1D7081624()
{
  result = qword_1EDF06250;
  if (!qword_1EDF06250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06250);
  }

  return result;
}

uint64_t StartTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1D725891C();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v29 - v8;
  sub_1D7084368(0, &qword_1EDF037E8, sub_1D708217C, &type metadata for StartTime.CodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - v12;
  started = type metadata accessor for StartTime(0);
  MEMORY[0x1EEE9AC00](started, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708217C();
  v18 = v38;
  sub_1D7264B0C();
  if (v18)
  {
    v28 = a1;
  }

  else
  {
    v30 = started;
    v31 = v17;
    v38 = a1;
    v19 = v33;
    v21 = v35;
    v20 = v36;
    v40 = 0;
    v22 = v13;
    sub_1D72642FC();
    sub_1D725888C();
    v39 = 1;
    v23 = sub_1D726423C();
    v24 = v31;
    v25 = v32;
    v31[*(v30 + 20)] = v23 & 1;
    v27 = v37;
    sub_1D7083B6C(v37, v23 & 1, v24);
    (*(v21 + 8))(v27, v20);
    (*(v19 + 8))(v22, v10);
    sub_1D7082114(v24, v25, type metadata accessor for StartTime);
    v28 = v38;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t StartTimeEndTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1D7258C2C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B750(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v46 = &v39 - v8;
  v9 = sub_1D725891C();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v39 - v14;
  sub_1D7084368(0, &qword_1EDF03E18, sub_1D7084250, &type metadata for StartTimeEndTime.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = v15;
  v51 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v39 - v18;
  started = type metadata accessor for StartTimeEndTime(0);
  MEMORY[0x1EEE9AC00](started, v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7084250();
  v24 = v52;
  sub_1D7264B0C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = started;
  v27 = v49;
  v26 = v50;
  v52 = v23;
  v28 = v48;
  v55 = 0;
  sub_1D72642FC();
  v41 = v19;
  v29 = v52;
  sub_1D725888C();
  v39 = a1;
  v30 = v29;
  v54 = 1;
  sub_1D726425C();
  v31 = v46;
  v32 = v51;
  if (v33)
  {
    v53 = 1;
    sub_1D5CE4528(&qword_1EDF45B08, MEMORY[0x1E6969558]);
    v34 = v41;
    sub_1D726427C();
    v50 = v16;
    v35 = *(v28 + 48);
    if (v35(v31, 1, v27) == 1)
    {
      sub_1D7258BCC();
      sub_1D725873C();
      (*(v42 + 8))(v26, v43);
      (*(v51 + 8))(v34, v50);
      v36 = v35(v31, 1, v27);
      v38 = v44;
      v37 = v45;
      if (v36 != 1)
      {
        sub_1D70842A4(v31, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      }
    }

    else
    {
      (*(v51 + 8))(v34, v50);
      v38 = v44;
      (*(v28 + 32))(v44, v31, v27);
      v37 = v45;
    }

    v30 = v52;
    (*(v28 + 32))(&v52[*(v40 + 20)], v38, v27);
  }

  else
  {
    sub_1D725888C();
    (*(v32 + 8))(v41, v16);
    v37 = v45;
  }

  sub_1D7084300(v30, v37, type metadata accessor for StartTimeEndTime);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1D7080CD4(v30, type metadata accessor for StartTimeEndTime);
}

uint64_t sub_1D7082114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D708217C()
{
  result = qword_1EDF05920;
  if (!qword_1EDF05920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05920);
  }

  return result;
}

uint64_t SportsDataVisualizationResponseEventStatus.encode(to:)(void *a1)
{
  started = type metadata accessor for StartTimeEndTime(0);
  MEMORY[0x1EEE9AC00](started - 8, v3);
  v112 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v111 = v107 - v7;
  v8 = MEMORY[0x1E69E6F58];
  sub_1D7084368(0, &qword_1EDF02488, sub_1D708217C, &type metadata for StartTime.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = *(v9 - 8);
  v114 = v9;
  v115 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v107[2] = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v107[1] = v107 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v107[0] = v107 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v125 = v107 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v124 = v107 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v123 = v107 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v122 = v107 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v121 = v107 - v33;
  v113 = type metadata accessor for StartTime(0);
  MEMORY[0x1EEE9AC00](v113, v34);
  v110 = v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v109 = v107 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v108 = v107 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v120 = v107 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v119 = v107 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v118 = v107 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v117 = v107 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v107 - v56;
  v58 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = v107 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7084368(0, &qword_1EDF024A0, sub_1D70815D0, &type metadata for SportsDataVisualizationResponseEventStatus.CodingKeys, v8);
  v63 = v62;
  v126 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v64);
  v66 = v107 - v65;
  v67 = a1[3];
  v116 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v67);
  sub_1D70815D0();
  v128 = v66;
  sub_1D7264B5C();
  sub_1D7084300(v127, v61, type metadata accessor for SportsDataVisualizationResponseEventStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      v69 = v63;
      if (EnumCaseMultiPayload == 5)
      {
        v71 = v108;
        sub_1D7082114(v61, v108, type metadata accessor for StartTime);
        v70 = v128;
        v95 = v129;
        sub_1D72643FC();
        if (!v95)
        {
          __swift_project_boxed_opaque_existential_1(v116, v116[3]);
          sub_1D708217C();
          v73 = &v131;
          goto LABEL_39;
        }
      }

      else
      {
        v70 = v128;
        if (EnumCaseMultiPayload == 6)
        {
          v71 = v109;
          sub_1D7082114(v61, v109, type metadata accessor for StartTime);
          v72 = v129;
          sub_1D72643FC();
          if (!v72)
          {
            __swift_project_boxed_opaque_existential_1(v116, v116[3]);
            sub_1D708217C();
            v73 = &v132;
LABEL_39:
            v75 = *(v73 - 32);
            goto LABEL_40;
          }
        }

        else
        {
          v71 = v110;
          sub_1D7082114(v61, v110, type metadata accessor for StartTime);
          v104 = v129;
          sub_1D72643FC();
          if (!v104)
          {
            __swift_project_boxed_opaque_existential_1(v116, v116[3]);
            sub_1D708217C();
            v73 = &v133;
            goto LABEL_39;
          }
        }
      }

LABEL_44:
      v83 = v71;
LABEL_45:
      sub_1D7080CD4(v83, type metadata accessor for StartTime);
      return (*(v126 + 8))(v70, v69);
    }

    v79 = v63;
    if (EnumCaseMultiPayload == 8)
    {
      v96 = v111;
      sub_1D7082114(v61, v111, type metadata accessor for StartTimeEndTime);
      v98 = v128;
      v97 = v129;
      sub_1D72643FC();
      if (!v97)
      {
        StartTimeEndTime.encode(to:)(v116, v99);
      }

      sub_1D7080CD4(v96, type metadata accessor for StartTimeEndTime);
      v100 = *(v126 + 8);
      v101 = v98;
    }

    else
    {
      v84 = v128;
      if (EnumCaseMultiPayload == 9)
      {
        v85 = v61;
        v86 = v112;
        sub_1D7082114(v85, v112, type metadata accessor for StartTimeEndTime);
        v87 = v129;
        sub_1D72643FC();
        if (!v87)
        {
          StartTimeEndTime.encode(to:)(v116, v88);
        }

        sub_1D7080CD4(v86, type metadata accessor for StartTimeEndTime);
      }

      else
      {
        sub_1D72643FC();
      }

      v100 = *(v126 + 8);
      v101 = v84;
    }

    return v100(v101, v79);
  }

  v74 = v121;
  v75 = v122;
  v77 = v123;
  v76 = v124;
  v78 = v125;
  if (EnumCaseMultiPayload <= 1)
  {
    v69 = v63;
    if (EnumCaseMultiPayload)
    {
      v71 = v117;
      sub_1D7082114(v61, v117, type metadata accessor for StartTime);
      v70 = v128;
      v103 = v129;
      sub_1D72643FC();
      if (!v103)
      {
        __swift_project_boxed_opaque_existential_1(v116, v116[3]);
        sub_1D708217C();
LABEL_40:
        sub_1D7264B5C();
        v130 = 0;
        sub_1D725891C();
        sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
        v105 = v114;
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    sub_1D7082114(v61, v57, type metadata accessor for StartTime);
    v90 = v128;
    v89 = v129;
    sub_1D72643FC();
    if (!v89)
    {
      __swift_project_boxed_opaque_existential_1(v116, v116[3]);
      sub_1D708217C();
      sub_1D7264B5C();
      v130 = 0;
      sub_1D725891C();
      sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
      v91 = v114;
      sub_1D726443C();
      v130 = 1;
      sub_1D726440C();
      (*(v115 + 8))(v74, v91);
    }

    sub_1D7080CD4(v57, type metadata accessor for StartTime);
    return (*(v126 + 8))(v90, v63);
  }

  else
  {
    v79 = v63;
    if (EnumCaseMultiPayload == 2)
    {
      v71 = v118;
      sub_1D7082114(v61, v118, type metadata accessor for StartTime);
      v70 = v128;
      v93 = v129;
      sub_1D72643FC();
      if (!v93)
      {
        v69 = v63;
        __swift_project_boxed_opaque_existential_1(v116, v116[3]);
        sub_1D708217C();
        v75 = v77;
        sub_1D7264B5C();
        v130 = 0;
        sub_1D725891C();
        sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
        v105 = v114;
LABEL_41:
        sub_1D726443C();
        v130 = 1;
        sub_1D726440C();
        (*(v115 + 8))(v75, v105);
        goto LABEL_44;
      }

      v94 = v71;
      goto LABEL_34;
    }

    v70 = v128;
    if (EnumCaseMultiPayload == 3)
    {
      v80 = v119;
      sub_1D7082114(v61, v119, type metadata accessor for StartTime);
      v81 = v129;
      sub_1D72643FC();
      if (!v81)
      {
        v69 = v63;
        __swift_project_boxed_opaque_existential_1(v116, v116[3]);
        sub_1D708217C();
        sub_1D7264B5C();
        v130 = 0;
        sub_1D725891C();
        sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
        v82 = v114;
        sub_1D726443C();
        v130 = 1;
        sub_1D726440C();
        (*(v115 + 8))(v76, v82);
        v83 = v80;
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    v80 = v120;
    sub_1D7082114(v61, v120, type metadata accessor for StartTime);
    v102 = v129;
    sub_1D72643FC();
    if (v102)
    {
LABEL_33:
      v94 = v80;
LABEL_34:
      sub_1D7080CD4(v94, type metadata accessor for StartTime);
      v100 = *(v126 + 8);
      v101 = v70;
      return v100(v101, v79);
    }

    __swift_project_boxed_opaque_existential_1(v116, v116[3]);
    sub_1D708217C();
    sub_1D7264B5C();
    v130 = 0;
    sub_1D725891C();
    sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
    v106 = v114;
    sub_1D726443C();
    v130 = 1;
    sub_1D726440C();
    (*(v115 + 8))(v78, v106);
    sub_1D7080CD4(v80, type metadata accessor for StartTime);
    return (*(v126 + 8))(v70, v63);
  }
}

uint64_t sub_1D70830D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656D6147657250;
    v7 = 0x6572676F72506E49;
    v8 = 0x6B61657242;
    if (a1 != 3)
    {
      v8 = 0x656E6F7074736F50;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6576694C7261654ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6C616E6946;
    v2 = 0x74696566726F46;
    if (a1 != 9)
    {
      v2 = 0x6E776F6E6B6E55;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x65646E6570737553;
    v4 = 0x656C6C65636E6143;
    if (a1 != 6)
    {
      v4 = 0x646579616C6544;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t StartTime.encode(to:)(void *a1, __n128 a2)
{
  sub_1D7084368(0, &qword_1EDF02488, sub_1D708217C, &type metadata for StartTime.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708217C();
  sub_1D7264B5C();
  v13 = 0;
  sub_1D725891C();
  sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for StartTime(0);
    v12 = 1;
    sub_1D726440C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StartTimeEndTime.encode(to:)(void *a1, __n128 a2)
{
  sub_1D7084368(0, &qword_1EDF037E0, sub_1D7084250, &type metadata for StartTimeEndTime.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7084250();
  sub_1D7264B5C();
  v13 = 0;
  sub_1D725891C();
  sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for StartTimeEndTime(0);
    v12 = 1;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7083620()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D7083684(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D70836D0(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D7083750(BOOL *a3@<X8>)
{
  v4 = sub_1D72641CC();

  *a3 = v4 != 0;
}

uint64_t sub_1D70837A8(uint64_t a1)
{
  v2 = sub_1D70815D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70837E4(uint64_t a1)
{
  v2 = sub_1D70815D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7083820(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D70830D8(*a1);
  v5 = v4;
  if (v3 == sub_1D70830D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D70838A8()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D70830D8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D708390C(uint64_t a1)
{
  sub_1D70830D8(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D7083960(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D70830D8(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D70839C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7084E10(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D70839F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D70830D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StartTime.init(startTime:isTbd:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D7083B6C(a1, a2, a3);
  v6 = sub_1D725891C();
  (*(*(v6 - 8) + 8))(a1, v6);
  result = type metadata accessor for StartTime(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D7083B6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v64 = a1;
  sub_1D5B7B750(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v61 = &v55 - v6;
  sub_1D5B7B750(0, &qword_1EDF18A38, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v62 = &v55 - v9;
  v10 = sub_1D7258C2C();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7257DEC();
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - v20;
  sub_1D5B7B750(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v55 - v28;
  v30 = sub_1D7258CFC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v35 = v64;
    sub_1D7258CBC();
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_1D70842A4(v29, &qword_1EDF43B40, MEMORY[0x1E6969BC0]);
      v36 = sub_1D725891C();
      return (*(*(v36 - 8) + 16))(v63, v35, v36);
    }

    else
    {
      (*(v31 + 32))(v34, v29, v30);
      sub_1D7258BCC();
      sub_1D7258B1C();
      v43 = v58;
      v57 = v17;
      v44 = *(v58 + 8);
      v44(v13, v10);
      v56 = v31;
      v45 = v62;
      sub_1D7258BCC();
      (*(v43 + 56))(v45, 0, 1, v10);
      sub_1D7258BCC();
      sub_1D7258BEC();
      v44(v13, v10);
      v46 = v56;
      (*(v56 + 56))(v25, 0, 1, v30);
      sub_1D7257D7C();
      sub_1D7257D8C();
      sub_1D7257D2C();
      v47 = v57;
      sub_1D7257DDC();
      v48 = v61;
      sub_1D7257D4C();
      v49 = *(v59 + 8);
      v50 = v47;
      v51 = v60;
      v49(v50, v60);
      v49(v21, v51);
      (*(v46 + 8))(v34, v30);
      v52 = sub_1D725891C();
      v53 = *(v52 - 8);
      v54 = *(v53 + 48);
      if (v54(v48, 1, v52) == 1)
      {
        (*(v53 + 16))(v63, v64, v52);
        result = v54(v48, 1, v52);
        if (result != 1)
        {
          return sub_1D70842A4(v48, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        return (*(v53 + 32))(v63, v48, v52);
      }
    }
  }

  else
  {
    v38 = sub_1D725891C();
    v39 = *(*(v38 - 8) + 16);
    v40 = v38;
    v41 = v63;
    v42 = v64;

    return v39(v41, v42, v40);
  }

  return result;
}

unint64_t sub_1D7084250()
{
  result = qword_1EDF166B0;
  if (!qword_1EDF166B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166B0);
  }

  return result;
}

uint64_t sub_1D70842A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B7B750(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7084300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7084368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D70843D0()
{
  if (*v0)
  {
    return 0x6462547369;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

void sub_1D708440C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6462547369 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D70844EC(uint64_t a1)
{
  v2 = sub_1D708217C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7084528(uint64_t a1)
{
  v2 = sub_1D708217C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7084598@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StartTimeEndTime.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StartTimeEndTime(0) + 20);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StartTimeEndTime.init(startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for StartTimeEndTime(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t sub_1D7084730(uint64_t a1)
{
  v2 = sub_1D7084250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D708476C(uint64_t a1)
{
  v2 = sub_1D7084250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D70847D8(uint64_t a1)
{
  sub_1D7084890(319, &qword_1EDF05928, type metadata accessor for StartTime);
  if (v1 <= 0x3F)
  {
    sub_1D7084890(319, &qword_1EDF16698, type metadata accessor for StartTimeEndTime);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7084890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7084904(uint64_t a1)
{
  result = sub_1D725891C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D70849A0(uint64_t a1)
{
  result = sub_1D725891C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D7084A50()
{
  result = qword_1EC899C70;
  if (!qword_1EC899C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C70);
  }

  return result;
}

unint64_t sub_1D7084AA8()
{
  result = qword_1EC899C78;
  if (!qword_1EC899C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C78);
  }

  return result;
}

unint64_t sub_1D7084B00()
{
  result = qword_1EC899C80;
  if (!qword_1EC899C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C80);
  }

  return result;
}

unint64_t sub_1D7084B58()
{
  result = qword_1EC899C88;
  if (!qword_1EC899C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C88);
  }

  return result;
}

unint64_t sub_1D7084BB0()
{
  result = qword_1EDF166A0;
  if (!qword_1EDF166A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166A0);
  }

  return result;
}

unint64_t sub_1D7084C08()
{
  result = qword_1EDF166A8;
  if (!qword_1EDF166A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166A8);
  }

  return result;
}

unint64_t sub_1D7084C60()
{
  result = qword_1EDF05910;
  if (!qword_1EDF05910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05910);
  }

  return result;
}

unint64_t sub_1D7084CB8()
{
  result = qword_1EDF05918;
  if (!qword_1EDF05918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05918);
  }

  return result;
}

unint64_t sub_1D7084D10()
{
  result = qword_1EDF06238;
  if (!qword_1EDF06238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06238);
  }

  return result;
}

unint64_t sub_1D7084D68()
{
  result = qword_1EDF06240;
  if (!qword_1EDF06240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06240);
  }

  return result;
}

unint64_t sub_1D7084DBC()
{
  result = qword_1EDF06258;
  if (!qword_1EDF06258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06258);
  }

  return result;
}

unint64_t sub_1D7084E10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

BOOL static FormatSourceMap.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1D72646CC();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t FormatSourceMap.description.getter()
{
  MEMORY[0x1DA6F9910](*v0, v0[1]);
  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  v1 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v1);

  return 47;
}

uint64_t static FormatSourceMap.< infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {
    if (v2 == v4)
    {
      return v3 < v5;
    }

    else
    {
      return v2 < v4;
    }
  }

  else
  {

    return sub_1D72646CC();
  }
}

uint64_t FormatSourceMap.filePath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatSourceMap.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v2);
  return MEMORY[0x1DA6FC0B0](v3);
}

uint64_t FormatSourceMap.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

BOOL sub_1D7085168(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1D72646CC();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t sub_1D70851EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D7085264(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v2);
  return MEMORY[0x1DA6FC0B0](v3);
}

uint64_t sub_1D70852AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v2);
  MEMORY[0x1DA6FC0B0](v3);
  return sub_1D7264A5C();
}

unint64_t sub_1D7085320(uint64_t a1)
{
  result = sub_1D7085348();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7085348()
{
  result = qword_1EC899C90;
  if (!qword_1EC899C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C90);
  }

  return result;
}

unint64_t sub_1D708539C()
{
  result = qword_1EC899C98;
  if (!qword_1EC899C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899C98);
  }

  return result;
}

unint64_t sub_1D70853F0(void *a1)
{
  a1[1] = sub_1D61E52C4();
  a1[2] = sub_1D6C4F274();
  result = sub_1D708539C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D7085458()
{
  MEMORY[0x1DA6F9910](*v0, v0[1]);
  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  v1 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v1);

  return 47;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:privacyMarkerFrameIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, char a14, uint64_t a15, uint64_t a16)
{
  result = swift_allocObject();
  v26 = *a7;
  v27 = *a13;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a9;
  *(result + 72) = a10;
  *(result + 80) = a11;
  *(result + 88) = a12;
  *(result + 96) = v26;
  *(result + 104) = a8;
  *(result + 112) = v27;
  *(result + 120) = a14;
  *(result + 128) = a15;
  *(result + 136) = a16;
  return result;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatAdMetricsNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

double FormatAdMetricsNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatAdMetricsNodeLayoutAttributes.privacyMarkerFrameIdentifier.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:privacyMarkerFrameIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, char a14, uint64_t a15, uint64_t a16)
{
  v17 = *a7;
  v18 = *a13;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  *(v16 + 96) = v17;
  *(v16 + 104) = a8;
  *(v16 + 112) = v18;
  *(v16 + 120) = a14;
  *(v16 + 128) = a15;
  *(v16 + 136) = a16;
  return v16;
}

unint64_t sub_1D708578C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E65644965646F6ELL;
    if (a1 != 2)
    {
      v6 = 0x656D617266;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0x696C696269736976;
    v2 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E697A69736572;
    if (a1 != 4)
    {
      v3 = 0x7865646E497ALL;
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

uint64_t sub_1D70858C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7086734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D70858EC(uint64_t a1)
{
  v2 = sub_1D7085D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7085928(uint64_t a1)
{
  v2 = sub_1D7085D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAdMetricsNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t FormatAdMetricsNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D70862E0(0, &qword_1EC899CA0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7085D54();
  sub_1D7264B5C();
  LOBYTE(v15) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D72643FC();
    LOBYTE(v15) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v15 = *(v3 + 64);
    v16 = v12;
    v14 = 3;
    type metadata accessor for CGRect(0);
    sub_1D7086A20(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v15 = *(v3 + 96);
    v14 = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v15) = 5;
    sub_1D726442C();
    *&v15 = *(v3 + 112);
    v14 = 6;
    sub_1D5EB1500(v15);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v15);
    LOBYTE(v15) = 7;
    sub_1D726440C();
    LOBYTE(v15) = 8;
    sub_1D726437C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D7085D54()
{
  result = qword_1EC899CA8;
  if (!qword_1EC899CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CA8);
  }

  return result;
}

uint64_t FormatAdMetricsNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatAdMetricsNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatAdMetricsNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D70862E0(0, &qword_1EC899CB0, MEMORY[0x1E69E6F48]);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7085D54();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    v28 = a1;
    v10 = v29;
    v9 = v30;
    LOBYTE(v31) = 0;
    v11 = v8;
    *(v3 + 16) = sub_1D72642BC();
    *(v3 + 24) = v12;
    v27 = v3;
    LOBYTE(v31) = 1;
    v13 = sub_1D72642BC();
    v14 = v27;
    *(v27 + 32) = v13;
    *(v14 + 40) = v15;
    LOBYTE(v31) = 2;
    v16 = sub_1D72642BC();
    v17 = v27;
    *(v27 + 48) = v16;
    *(v17 + 56) = v18;
    type metadata accessor for CGRect(0);
    v33 = 3;
    sub_1D7086A20(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v19 = v32;
    v20 = v27;
    *(v27 + 64) = v31;
    *(v20 + 80) = v19;
    v33 = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v27 + 96) = v31;
    LOBYTE(v31) = 5;
    *(v27 + 104) = sub_1D72642FC();
    v33 = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v27 + 112) = v31;
    LOBYTE(v31) = 7;
    *(v27 + 120) = sub_1D72642CC() & 1;
    LOBYTE(v31) = 8;
    v21 = sub_1D726422C();
    v23 = v22;
    (*(v10 + 8))(v11, v9);
    v25 = v27;
    v24 = v28;
    *(v27 + 128) = v21;
    *(v25 + 136) = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v25;
  }
}

void sub_1D70862E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7085D54();
    v7 = a3(a1, &type metadata for FormatAdMetricsNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_1D7086488@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatAdMetricsNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D7086504(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D7086A20(&qword_1EC8940D8, a2, type metadata accessor for FormatAdMetricsNodeLayoutAttributes, &protocol conformance descriptor for FormatAdMetricsNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D7086630()
{
  result = qword_1EC899CC8;
  if (!qword_1EC899CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CC8);
  }

  return result;
}

unint64_t sub_1D7086688()
{
  result = qword_1EC899CD0;
  if (!qword_1EC899CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CD0);
  }

  return result;
}

unint64_t sub_1D70866E0()
{
  result = qword_1EC899CD8;
  if (!qword_1EC899CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899CD8);
  }

  return result;
}

uint64_t sub_1D7086734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D73B7660 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D7086A20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D7086A94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7088690(0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v39 - v9;
  if (*(a1 + 8) == 4)
  {
    v10 = sub_1D72618CC();
    v11 = sub_1D726188C();
    KeyPath = swift_getKeyPath();
    *&v52 = v10;
    *(&v52 + 1) = KeyPath;
    *v53 = v11;
    v53[8] = 0;
  }

  else
  {
    v13 = sub_1D72618CC();
    v14 = sub_1D726188C();
    v15 = swift_getKeyPath();
    *&v52 = v13;
    *(&v52 + 1) = v15;
    *v53 = v14;
    v53[8] = 1;
  }

  sub_1D708897C(0, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
  sub_1D61ABEFC();
  sub_1D726135C();
  v39 = v55;
  v40 = v54;
  v16 = v55;
  v42 = *v56;
  v41 = v56[8];
  sub_1D70758AC();
  v48 = sub_1D726125C();
  LOBYTE(v54) = 1;
  sub_1D7086F80(a1, v51);
  *&v50[7] = v51[0];
  *&v50[23] = v51[1];
  *&v50[39] = v51[2];
  *&v50[55] = v51[3];
  v47 = v54;
  v60 = *(a1 + 72);
  *&v52 = v60;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  v17[3] = *(a1 + 32);
  v17[4] = v18;
  v17[5] = *(a1 + 64);
  v19 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v19;
  sub_1D7088F48(&v60, &v54);
  sub_1D7088FD0(a1, &v54);
  sub_1D5B49DF8(0, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
  sub_1D708874C(0);
  sub_1D7088C80();
  sub_1D7089008();
  v20 = v45;
  sub_1D72619DC();
  v49 = 1;
  v22 = v43;
  v21 = v44;
  v23 = *(v43 + 16);
  v23(v46, v20, v44);
  v24 = *&v50[16];
  *&v53[1] = *v50;
  v25 = *&v50[32];
  *&v53[49] = *&v50[48];
  v26 = v40;
  *a2 = v40;
  *(a2 + 8) = v16;
  v27 = v42;
  *(a2 + 16) = v42;
  LOBYTE(v16) = v41;
  *(a2 + 24) = v41;
  v52 = v48;
  v53[0] = v47;
  *&v53[33] = v25;
  *&v53[17] = v24;
  v28 = *&v50[63];
  *&v53[64] = *&v50[63];
  v29 = *&v53[32];
  *(a2 + 64) = *&v53[16];
  *(a2 + 80) = v29;
  *(a2 + 96) = *&v53[48];
  v30 = *v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = v30;
  v31 = v49;
  *(a2 + 112) = v28;
  *(a2 + 120) = 0;
  *(a2 + 128) = v31;
  sub_1D7088500(0);
  v33 = (a2 + *(v32 + 80));
  v34 = v46;
  v23(v33, v46, v21);
  v35 = v39;
  sub_1D7089324(v26, v39, v27, v16);
  sub_1D708933C(&v52, &v54, sub_1D5F258D0);
  v36 = sub_1D7075968();
  v37 = *(v22 + 8);
  v37(v45, v21, v36);
  (v37)(v34, v21);
  v54 = v48;
  v55 = 0;
  v56[0] = v47;
  v57 = *&v50[16];
  v58 = *&v50[32];
  *v59 = *&v50[48];
  *&v59[15] = *&v50[63];
  *&v56[1] = *v50;
  sub_1D7089404(&v54, sub_1D5F258D0);
  return sub_1D70893A4(v26, v35, v27, v16);
}

double sub_1D7086F80@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  sub_1D70885C0(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v52 - v5;
  v52[0] = a1;
  v7 = *(a1 + 56);
  v62 = *(a1 + 48);
  v63 = v7;
  v8 = sub_1D5BF4D9C();

  v55 = v8;
  v9 = sub_1D726171C();
  v11 = v10;
  v13 = v12;
  v14 = sub_1D726163C();
  v15 = *(v14 - 8);
  v53 = *(v15 + 56);
  v54 = v14;
  v52[1] = v15 + 56;
  v53(v6, 1, 1);
  sub_1D726167C();
  sub_1D6155640(v6);
  v16 = sub_1D72616DC();
  v18 = v17;
  LOBYTE(v8) = v19;

  sub_1D5F26348(v9, v11, v13 & 1);

  sub_1D726187C();
  v57 = sub_1D72616BC();
  v58 = v20;
  v22 = v21;
  v56 = v23;

  sub_1D5F26348(v16, v18, v8 & 1);

  if (*(v52[0] + 40))
  {
    v24 = *(v52[0] + 32);
    v25 = *(v52[0] + 40);
  }

  else
  {
    v24 = *(v52[0] + 16);
    v25 = *(v52[0] + 24);
  }

  v62 = v24;
  v63 = v25;

  v26 = sub_1D726171C();
  v28 = v27;
  v30 = v29;
  (v53)(v6, 1, 1, v54);
  sub_1D726167C();
  sub_1D6155640(v6);
  v31 = sub_1D72616DC();
  v33 = v32;
  v35 = v34;

  sub_1D5F26348(v26, v28, v30 & 1);

  v36 = sub_1D72616AC();
  v38 = v37;
  v40 = v39;
  sub_1D5F26348(v31, v33, v35 & 1);

  sub_1D726188C();
  v41 = sub_1D72616BC();
  v43 = v42;
  LOBYTE(v33) = v44;
  v46 = v45;

  sub_1D5F26348(v36, v38, v40 & 1);

  v47 = v56 & 1;
  v60 = v56 & 1;
  LOBYTE(v62) = v56 & 1;
  LOBYTE(v36) = v33 & 1;
  v61 = v33 & 1;
  v49 = v58;
  v48 = v59;
  v50 = v57;
  *v59 = v57;
  v48[1] = v22;
  *(v48 + 16) = v47;
  v48[3] = v49;
  v48[4] = v41;
  v48[5] = v43;
  *(v48 + 48) = v36;
  v48[7] = v46;
  sub_1D5F26358(v50, v22, v47);

  sub_1D5F26358(v41, v43, v36);

  sub_1D5F26348(v41, v43, v36);

  sub_1D5F26348(v50, v22, v60);

  return result;
}

double sub_1D7087374@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1D70885C0(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v85 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v90 = a3;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      LOBYTE(v107) = 0;

      sub_1D72618EC();
      v87 = v112;
      v89 = *(&v112 + 1);
      type metadata accessor for DebugFormatFileTreeModel(0);
      swift_allocObject();

      v88 = sub_1D6AD49E0(v23, v10, 0);

      sub_1D726121C();
      v24 = sub_1D726170C();
      v26 = v25;
      v28 = v27;
      sub_1D726166C();
      v29 = sub_1D726163C();
      (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
      sub_1D726167C();
      sub_1D6155640(v9);
      v30 = sub_1D72616DC();
      v32 = v31;
      v34 = v33;

      sub_1D5F26348(v24, v26, v28 & 1);

      v35 = [objc_opt_self() systemBlueColor];
      sub_1D726189C();
      v36 = sub_1D72616BC();
      v38 = v37;
      v40 = v39;
      v42 = v41;

      sub_1D5F26348(v30, v32, v34 & 1);

      *&v115[8] = v91;
      v40 &= 1u;
      v104 = v40;
      v101 = 1;
      *&v112 = v88;
      *(&v112 + 1) = v36;
      v86 = v36;
      *&v113 = v38;
      BYTE8(v113) = v40;
      *(&v113 + 9) = v103[0];
      HIDWORD(v113) = *(v103 + 3);
      *&v114 = v42;
      BYTE8(v114) = v87;
      *(&v114 + 9) = v102[0];
      HIDWORD(v114) = *(v102 + 3);
      *v115 = v89;
      *&v115[24] = v92;
      v115[40] = 1;

      sub_1D5F26358(v36, v38, v40);
      sub_1D7088878(0);
      sub_1D7088C28(0, v43, v44, v45);
      sub_1D70892DC(&qword_1EC899D98, sub_1D7088878, &unk_1D731F2D0);
      sub_1D70892DC(&qword_1EC899DA8, sub_1D7088C28, &unk_1D72E1D50);

      a3 = v90;
      sub_1D726135C();
      v114 = v109;
      *v115 = v110;
      *&v115[16] = v111[0];
      *&v115[25] = *(v111 + 9);
      v112 = v107;
      v113 = v108;
      v105 = 1;
      v115[41] = 1;
      sub_1D70887F0(0);
      sub_1D7088BE0(0);
      sub_1D708914C();
      sub_1D70891FC();
      sub_1D726135C();
      v114 = v99[0];
      *v115 = v99[1];
      *&v115[16] = v100[0];
      *&v115[26] = *(v100 + 10);
      v112 = v97;
      v113 = v98;
      v106 = 0;
      v115[42] = 0;
      sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
      sub_1D7089088();
      sub_1D726135C();

      sub_1D5F26348(v86, v38, v40);

      v114 = v109;
      *v115 = v110;
      *&v115[16] = v111[0];
      v46 = *(v111 + 11);
    }

    else
    {
      if (v10)
      {
        sub_1D726121C();
        v60 = sub_1D726170C();
        v62 = v61;
        v64 = v63;
        sub_1D726166C();
        v65 = sub_1D726163C();
        (*(*(v65 - 8) + 56))(v9, 1, 1, v65);
        sub_1D726167C();
        sub_1D6155640(v9);
        v66 = sub_1D72616DC();
        v68 = v67;
        v70 = v69;

        sub_1D5F26348(v60, v62, v64 & 1);

        v71 = [objc_opt_self() systemOrangeColor];
        sub_1D726189C();
        v72 = sub_1D72616BC();
        v74 = v73;
        LOBYTE(v62) = v75;
        v77 = v76;

        sub_1D5F26348(v66, v68, v70 & 1);

        v78 = v62 & 1;
        a3 = v90;
        LOBYTE(v103[0]) = v78;
        LOBYTE(v102[0]) = 1;
        *&v107 = v72;
        *(&v107 + 1) = v74;
        LOBYTE(v108) = v78;
        *(&v108 + 1) = v91;
        DWORD1(v108) = *(&v91 + 3);
        *(&v108 + 1) = v77;
        v109 = v97;
        v110 = v98;
        v111[0] = v99[0];
        *(v111 + 10) = *(v99 + 10);
        BYTE10(v111[1]) = 1;
        sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
        sub_1D7089088();
        sub_1D726135C();
        goto LABEL_12;
      }

      v79 = sub_1D72618CC();
      v80 = sub_1D726188C();
      KeyPath = swift_getKeyPath();
      LOBYTE(v102[0]) = 0;
      *&v112 = v79;
      *(&v112 + 1) = KeyPath;
      *&v113 = v80;
      v115[40] = 0;
      sub_1D708897C(0, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
      sub_1D7088878(0);
      sub_1D61ABEFC();
      sub_1D70892DC(&qword_1EC899D98, sub_1D7088878, &unk_1D731F2D0);

      sub_1D726135C();
      v114 = v109;
      *v115 = v110;
      *&v115[16] = v111[0];
      *&v115[25] = *(v111 + 9);
      v112 = v107;
      v113 = v108;
      LOBYTE(v103[0]) = 0;
      v115[41] = 0;
      sub_1D70887F0(0);
      sub_1D7088BE0(0);
      sub_1D708914C();
      sub_1D70891FC();
      sub_1D726135C();
      v114 = v99[0];
      *v115 = v99[1];
      *&v115[16] = v100[0];
      *&v115[26] = *(v100 + 10);
      v112 = v97;
      v113 = v98;
      LOBYTE(v91) = 0;
      v115[42] = 0;
      sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
      sub_1D7089088();
      sub_1D726135C();

      v114 = v109;
      *v115 = v110;
      *&v115[16] = v111[0];
      v46 = *(v111 + 11);
    }

    *&v115[27] = v46;
    v112 = v107;
    v113 = v108;
    goto LABEL_12;
  }

  v12 = *a2;
  if (v11)
  {
    sub_1D70893BC(v10, 1u);
    v47 = sub_1D70736C8(v10, 0);
    sub_1D70893E0(v10, 1u);
    LOBYTE(v107) = 0;
    sub_1D72618EC();
    v48 = v112;
    v49 = *(&v112 + 1);

    v50 = sub_1D72618CC();
    sub_1D726166C();
    v51 = sub_1D726163C();
    (*(*(v51 - 8) + 56))(v9, 1, 1, v51);
    v52 = sub_1D726167C();
    sub_1D6155640(v9);
    v53 = swift_getKeyPath();
    v54 = [objc_opt_self() systemYellowColor];
    v55 = sub_1D726189C();
    v56 = swift_getKeyPath();
    *&v91 = v12;
    *(&v91 + 1) = 0x6575737349;
    *&v92 = 0xE500000000000000;
    *(&v92 + 1) = v47;
    *&v93 = v50;
    *(&v93 + 1) = v53;
    *&v94 = v52;
    *(&v94 + 1) = v56;
    *&v95 = v55;
    BYTE8(v95) = v48;
    HIDWORD(v95) = *(&v112 + 3);
    *(&v95 + 9) = v112;
    v96 = v49;
    v114 = v93;
    *v115 = v94;
    *&v115[16] = v95;
    *&v115[32] = v49;
    v112 = v91;
    v113 = v92;
    v106 = 0;
    v115[40] = 0;
    sub_1D708933C(&v91, &v107, sub_1D7088878);
    sub_1D7088878(0);
    sub_1D7088C28(0, v57, v58, v59);
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878, &unk_1D731F2D0);
    sub_1D70892DC(&qword_1EC899DA8, sub_1D7088C28, &unk_1D72E1D50);
    sub_1D726135C();
    v114 = v109;
    *v115 = v110;
    *&v115[16] = v111[0];
    *&v115[25] = *(v111 + 9);
    v112 = v107;
    v113 = v108;
    LOBYTE(v102[0]) = 1;
    v115[41] = 1;
  }

  else
  {
    sub_1D70893BC(v10, 0);
    v13 = sub_1D70736C8(v10, 0);
    sub_1D70893E0(v10, 0);
    LOBYTE(v107) = 0;
    sub_1D72618EC();
    v14 = v112;
    v15 = *(&v112 + 1);

    v16 = sub_1D72618CC();
    sub_1D726166C();
    v17 = sub_1D726163C();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = sub_1D726167C();
    sub_1D6155640(v9);
    v19 = swift_getKeyPath();
    v20 = [objc_opt_self() systemRedColor];
    v21 = sub_1D726189C();
    v22 = swift_getKeyPath();
    *&v91 = v12;
    *(&v91 + 1) = 0x6575737349;
    *&v92 = 0xE500000000000000;
    *(&v92 + 1) = v13;
    *&v93 = v16;
    *(&v93 + 1) = v19;
    *&v94 = v18;
    *(&v94 + 1) = v22;
    *&v95 = v21;
    BYTE8(v95) = v14;
    HIDWORD(v95) = *(&v112 + 3);
    *(&v95 + 9) = v112;
    v96 = v15;
    v114 = v93;
    *v115 = v94;
    *&v115[16] = v95;
    *&v115[32] = v15;
    v112 = v91;
    v113 = v92;
    v106 = 1;
    v115[40] = 1;
    sub_1D708933C(&v91, &v107, sub_1D7088878);
    sub_1D708897C(0, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    sub_1D7088878(0);
    sub_1D61ABEFC();
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878, &unk_1D731F2D0);
    sub_1D726135C();
    v114 = v109;
    *v115 = v110;
    *&v115[16] = v111[0];
    *&v115[25] = *(v111 + 9);
    v112 = v107;
    v113 = v108;
    LOBYTE(v102[0]) = 0;
    v115[41] = 0;
  }

  sub_1D70887F0(0);
  sub_1D7088BE0(0);
  sub_1D708914C();
  sub_1D70891FC();
  sub_1D726135C();
  v114 = v99[0];
  *v115 = v99[1];
  *&v115[16] = v100[0];
  *&v115[26] = *(v100 + 10);
  v112 = v97;
  v113 = v98;
  LOBYTE(v103[0]) = 0;
  v115[42] = 0;
  sub_1D7088CFC(0, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
  sub_1D7089088();
  sub_1D726135C();
  sub_1D7089404(&v91, sub_1D7088878);
  v114 = v109;
  *v115 = v110;
  *&v115[16] = v111[0];
  *&v115[27] = *(v111 + 11);
  v112 = v107;
  v113 = v108;
  a3 = v90;
LABEL_12:
  v82 = *v115;
  a3[2] = v114;
  a3[3] = v82;
  a3[4] = *&v115[16];
  *(a3 + 75) = *&v115[27];
  result = *&v112;
  v84 = v113;
  *a3 = v112;
  a3[1] = v84;
  return result;
}

double sub_1D708837C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v11[2] = v1[2];
  v11[3] = v3;
  v11[4] = v1[4];
  v4 = v1[1];
  v11[0] = *v1;
  v11[1] = v4;
  *a1 = sub_1D72611CC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1D7088468(0);
  sub_1D7086A94(v11, a1 + *(v5 + 44));
  sub_1D7088CFC(0, &qword_1EC899D60, sub_1D7088D80, sub_1D5F25A44, MEMORY[0x1E697E830]);
  *(a1 + *(v6 + 36)) = 0;
  v7 = sub_1D72615EC();
  sub_1D7088E9C(0);
  v9 = a1 + *(v8 + 36);
  *v9 = v7;
  result = 8.0;
  *(v9 + 8) = xmmword_1D72A38C0;
  *(v9 + 24) = xmmword_1D72A38C0;
  *(v9 + 40) = 0;
  return result;
}

void sub_1D7088468(uint64_t a1)
{
  if (!qword_1EC899CE0)
  {
    sub_1D70885C0(255, &qword_1EC899CE8, sub_1D7088500, MEMORY[0x1E6981F40]);
    v1 = sub_1D7260F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899CE0);
    }
  }
}

void sub_1D7088500(uint64_t a1)
{
  if (!qword_1EC899CF0)
  {
    sub_1D70885C0(255, &qword_1EC899CF8, sub_1D7075544, MEMORY[0x1E69E6720]);
    sub_1D5F258D0(255);
    sub_1D7088690(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC899CF0);
    }
  }
}

void sub_1D70885C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7088624(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B49DF8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D726157C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7088690(uint64_t a1)
{
  if (!qword_1EC899D00)
  {
    sub_1D5B49DF8(255, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
    sub_1D708874C(255);
    sub_1D7088C80();
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899D00);
    }
  }
}

void sub_1D708874C(uint64_t a1)
{
  if (!qword_1EC899D08)
  {
    sub_1D7088CFC(255, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
    v1 = sub_1D726136C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899D08);
    }
  }
}

void sub_1D70887F0(uint64_t a1)
{
  if (!qword_1EC899D18)
  {
    sub_1D708897C(255, &qword_1EC87E040, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    sub_1D7088878(255);
    v1 = sub_1D726136C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899D18);
    }
  }
}

void sub_1D7088878(uint64_t a1)
{
  if (!qword_1EC899D20)
  {
    sub_1D70888DC(255);
    v3 = v2;
    v4 = sub_1D70889E0();
    v6 = type metadata accessor for DebugFormatInspectorPopoverView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC899D20);
    }
  }
}

void sub_1D70888DC(uint64_t a1)
{
  if (!qword_1EC899D28)
  {
    sub_1D708897C(255, &qword_1EC899D30, &qword_1EC898680, &qword_1EC898688, MEMORY[0x1E6980F50]);
    sub_1D7088624(255, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899D28);
    }
  }
}

void sub_1D708897C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D7088624(255, a3, a4, a5);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D70889E0()
{
  result = qword_1EC899D38;
  if (!qword_1EC899D38)
  {
    sub_1D70888DC(255);
    sub_1D7088A60();
    sub_1D7088B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D38);
  }

  return result;
}

unint64_t sub_1D7088A60()
{
  result = qword_1EC899D40;
  if (!qword_1EC899D40)
  {
    sub_1D708897C(255, &qword_1EC899D30, &qword_1EC898680, &qword_1EC898688, MEMORY[0x1E6980F50]);
    sub_1D7088B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D40);
  }

  return result;
}

unint64_t sub_1D7088B00()
{
  result = qword_1EC8986F0;
  if (!qword_1EC8986F0)
  {
    sub_1D7088624(255, &qword_1EC898680, &qword_1EC898688, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8986F0);
  }

  return result;
}

unint64_t sub_1D7088B70()
{
  result = qword_1EC884E00;
  if (!qword_1EC884E00)
  {
    sub_1D7088624(255, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E00);
  }

  return result;
}

void sub_1D7088C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EC899D50)
  {
    v4 = type metadata accessor for DebugFormatFileTreePopoverView(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC899D50);
    }
  }
}

unint64_t sub_1D7088C80()
{
  result = qword_1EC899D58;
  if (!qword_1EC899D58)
  {
    sub_1D5B49DF8(255, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D58);
  }

  return result;
}

void sub_1D7088CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D7088D80(uint64_t a1)
{
  if (!qword_1EC899D68)
  {
    sub_1D70885C0(255, &qword_1EC899CE8, sub_1D7088500, MEMORY[0x1E6981F40]);
    sub_1D7088E14();
    v1 = sub_1D726197C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899D68);
    }
  }
}

unint64_t sub_1D7088E14()
{
  result = qword_1EC899D70;
  if (!qword_1EC899D70)
  {
    sub_1D70885C0(255, &qword_1EC899CE8, sub_1D7088500, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D70);
  }

  return result;
}

void sub_1D7088E9C(uint64_t a1)
{
  if (!qword_1EC899D78)
  {
    sub_1D7088CFC(255, &qword_1EC899D60, sub_1D7088D80, sub_1D5F25A44, MEMORY[0x1E697E830]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899D78);
    }
  }
}

uint64_t sub_1D7088F48(uint64_t a1, uint64_t a2)
{
  sub_1D5B49DF8(0, &qword_1EC896C88, &type metadata for DebugFormatPackageViewAccessory, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7089008()
{
  result = qword_1EC899D80;
  if (!qword_1EC899D80)
  {
    sub_1D708874C(255);
    sub_1D7089088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D80);
  }

  return result;
}

unint64_t sub_1D7089088()
{
  result = qword_1EC899D88;
  if (!qword_1EC899D88)
  {
    sub_1D7088CFC(255, &qword_1EC899D10, sub_1D70887F0, sub_1D7088BE0, MEMORY[0x1E697F960]);
    sub_1D708914C();
    sub_1D70891FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D88);
  }

  return result;
}

unint64_t sub_1D708914C()
{
  result = qword_1EC899D90;
  if (!qword_1EC899D90)
  {
    sub_1D70887F0(255);
    sub_1D61ABEFC();
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878, &unk_1D731F2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899D90);
  }

  return result;
}

unint64_t sub_1D70891FC()
{
  result = qword_1EC899DA0;
  if (!qword_1EC899DA0)
  {
    sub_1D7088BE0(255);
    sub_1D70892DC(&qword_1EC899D98, sub_1D7088878, &unk_1D731F2D0);
    sub_1D70892DC(&qword_1EC899DA8, sub_1D7088C28, &unk_1D72E1D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DA0);
  }

  return result;
}

uint64_t sub_1D70892DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D7089324(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D70758AC();
  }

  return result;
}

uint64_t sub_1D708933C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D70893A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D7075968();
  }

  return result;
}

id sub_1D70893BC(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

double sub_1D70893E0(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D7089404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7089474()
{
  result = qword_1EC899DB0;
  if (!qword_1EC899DB0)
  {
    sub_1D7088E9C(255);
    sub_1D70894F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DB0);
  }

  return result;
}

unint64_t sub_1D70894F4()
{
  result = qword_1EC899DB8;
  if (!qword_1EC899DB8)
  {
    sub_1D7088CFC(255, &qword_1EC899D60, sub_1D7088D80, sub_1D5F25A44, MEMORY[0x1E697E830]);
    sub_1D70892DC(&qword_1EC899DC0, sub_1D7088D80, MEMORY[0x1E69817F8]);
    sub_1D70892DC(&qword_1EC881138, sub_1D5F25A44, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DB8);
  }

  return result;
}

unint64_t sub_1D708961C()
{
  result = qword_1EC899DC8;
  if (!qword_1EC899DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DC8);
  }

  return result;
}

uint64_t sub_1D7089670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D7089C7C(0, &qword_1EC899DE0, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7089C28();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D70897F0(uint64_t a1)
{
  v2 = sub_1D7089C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D708982C(uint64_t a1)
{
  v2 = sub_1D7089C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7089868@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7089A34(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_1D70898B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = 0x696669746E656449;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E61C8];
  *(v11 + 72) = MEMORY[0x1E69E6158];
  *(v11 + 80) = v13;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 88) = 0;
  *(v11 + 96) = 1701667150;
  *(v11 + 104) = 0xE400000000000000;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  *(v11 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 0x7954656C7A7A7550;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v11;

  sub_1D60F3E18(inited);
  a5[3] = &type metadata for DebugInspectionDataSource;
  a5[4] = &off_1F51328C8;
  *a5 = v14;
}

uint64_t sub_1D7089A34(void *a1)
{
  sub_1D7089C7C(0, &qword_1EC899DD0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7089C28();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D7089C28()
{
  result = qword_1EC899DD8;
  if (!qword_1EC899DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DD8);
  }

  return result;
}

void sub_1D7089C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7089C28();
    v7 = a3(a1, &type metadata for DebugInspectionPuzzleType.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7089CF4()
{
  result = qword_1EC899DE8;
  if (!qword_1EC899DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DE8);
  }

  return result;
}

unint64_t sub_1D7089D4C()
{
  result = qword_1EC899DF0;
  if (!qword_1EC899DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DF0);
  }

  return result;
}

unint64_t sub_1D7089DA4()
{
  result = qword_1EC899DF8;
  if (!qword_1EC899DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899DF8);
  }

  return result;
}

uint64_t type metadata accessor for DebugTaxtAttachementList(uint64_t a1)
{
  result = qword_1EC899E08;
  if (!qword_1EC899E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7089E6C(uint64_t a1)
{
  sub_1D7089F0C();
  if (v1 <= 0x3F)
  {
    sub_1D708C054(319, &qword_1EC899E00, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7089F0C()
{
  if (!qword_1EC899E18)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E18);
    }
  }
}

uint64_t sub_1D7089F78@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for DebugTaxtAttachementList(0);
  v55 = *(v3 - 8);
  v54 = *(v55 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708B544(0, v5);
  v8 = v7;
  Description = v7[-1].Description;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708B408(0, v11);
  v15 = v14[-1].Description;
  v51 = v14;
  v52 = v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708B29C(0, v17);
  v21 = *(v20 - 8);
  v56 = v20;
  v57 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v50 = a1;
  v26 = *a1;
  v62 = 0;
  v63 = v26;
  v60 = &v63;
  v61 = sub_1D708A530;
  sub_1D708B5C4(0);
  sub_1D708B708();

  sub_1D726168C();

  v59 = v25;
  sub_1D708B7B0(0);
  v28 = v27;
  v29 = sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544, MEMORY[0x1E697CD20]);
  sub_1D708B864(255);
  v31 = v30;
  v32 = sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
  v63 = v31;
  v64 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v28;
  sub_1D726182C();
  Description[1](v13, v8);
  sub_1D726121C();
  v63 = v8;
  v64 = v28;
  v65 = v29;
  v66 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v51;
  sub_1D72617BC();

  v36 = v35;
  v52[1](v19, v35);
  v37 = v53;
  sub_1D708BFF0(v50, v53);
  v38 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v39 = swift_allocObject();
  sub_1D708C0B4(v37, v39 + v38);
  sub_1D708B950(0, v40);
  v63 = v36;
  v64 = v34;
  swift_getOpaqueTypeConformance2();
  sub_1D708BB84();
  sub_1D708BA9C(255, v41);
  v43 = v42;
  v44 = sub_1D708BB30();
  v45 = sub_1D5BF4D9C();
  v63 = &type metadata for AttachmentTextView;
  v64 = MEMORY[0x1E69E6158];
  v65 = v44;
  v66 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v63 = v43;
  v64 = v49;
  v65 = v46;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v47 = v56;
  sub_1D72617FC();

  return (*(v57 + 8))(v24, v47);
}

uint64_t sub_1D708A530(__int128 *a1)
{
  v1 = a1[1];
  v10 = *a1;
  v11 = v1;
  v12 = a1[2];
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v13 = v10;
  v14 = v1;
  v15 = v12;
  v6 = v10;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D5E422A8(&v13, v5);
  sub_1D5E422A8(&v14, v5);
  sub_1D5E422A8(&v15, v5);
  sub_1D708BB84();
  return sub_1D7260F5C();
}

uint64_t sub_1D708A5F0@<X0>(uint64_t a2@<X8>)
{
  sub_1D5BF4D9C();

  result = sub_1D726171C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1D708A65C(void *a1, uint64_t a2, __n128 a3)
{
  sub_1D708BA9C(0, a3);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[5];
  v14 = *MEMORY[0x1E69DDCF8];
  v24 = a1[4];
  v25 = v13;
  v26 = v14;
  v28 = v11;
  v29 = v12;
  v15 = sub_1D708BB30();
  v16 = sub_1D5BF4D9C();
  v17 = MEMORY[0x1E69E6158];
  sub_1D72617CC();
  v23 = a2;
  sub_1D708B7B0(0);
  v24 = &type metadata for AttachmentTextView;
  v25 = v17;
  v26 = v15;
  v27 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1D708B864(255);
  v19 = v18;
  v20 = sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
  v24 = v19;
  v25 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1D726182C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D708A870(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D726138C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1D708B864(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D726137C();
  v14 = a1;
  sub_1D708B8F8();
  sub_1D708C3C0(&qword_1EC899E80, sub_1D708B8F8, MEMORY[0x1E697D680]);
  sub_1D726107C();
  v11 = sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
  MEMORY[0x1DA6F8A90](v10, v6, v11);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D708AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a3;
  v4 = type metadata accessor for DebugTaxtAttachementList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1D726121C();
  sub_1D708BFF0(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1D708C0B4(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return sub_1D726195C();
}

uint64_t sub_1D708AB78(uint64_t a1)
{
  v2 = sub_1D72611AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D708C054(0, &qword_1EC893EB8, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_1D7260F1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DebugTaxtAttachementList(0);
  sub_1D708C200(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = sub_1D7262ECC();
    v18 = sub_1D726158C();
    sub_1D725C31C(v17, &dword_1D5B42000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1D726119C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_1D7260F0C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D708ADFC(__n128 a1)
{
  sub_1D708B058(0, a1);
  sub_1D708B29C(255, v1);
  sub_1D708B950(255, v2);
  sub_1D708B408(255, v3);
  sub_1D708B544(255, v4);
  sub_1D708B7B0(255);
  sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544, MEMORY[0x1E697CD20]);
  sub_1D708B864(255);
  sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D708BB84();
  sub_1D708BA9C(255, v5);
  sub_1D708BB30();
  sub_1D5BF4D9C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1D726102C();
}

void sub_1D708B058(uint64_t a1, __n128 a2)
{
  if (!qword_1EC899E20)
  {
    sub_1D708B29C(255, a2);
    sub_1D708B950(255, v2);
    sub_1D708B408(255, v3);
    sub_1D708B544(255, v4);
    sub_1D708B7B0(255);
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544, MEMORY[0x1E697CD20]);
    sub_1D708B864(255);
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D708BB84();
    sub_1D708BA9C(255, v5);
    sub_1D708BB30();
    sub_1D5BF4D9C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E20);
    }
  }
}

void sub_1D708B29C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC899E28)
  {
    sub_1D708B408(255, a2);
    sub_1D708B544(255, v2);
    sub_1D708B7B0(255);
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544, MEMORY[0x1E697CD20]);
    sub_1D708B864(255);
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E28);
    }
  }
}

void sub_1D708B408(uint64_t a1, __n128 a2)
{
  if (!qword_1EC899E30)
  {
    sub_1D708B544(255, a2);
    sub_1D708B7B0(255);
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544, MEMORY[0x1E697CD20]);
    sub_1D708B864(255);
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E30);
    }
  }
}

void sub_1D708B544(uint64_t a1, __n128 a2)
{
  if (!qword_1EC899E38)
  {
    sub_1D708B5C4(255);
    sub_1D708B708();
    v2 = sub_1D726169C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC899E38);
    }
  }
}

void sub_1D708B5C4(uint64_t a1)
{
  if (!qword_1EC899E40)
  {
    sub_1D7089F0C();
    sub_1D708B68C();
    sub_1D708C3C0(&qword_1EC899E50, sub_1D7089F0C, MEMORY[0x1E69E6338]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899E40);
    }
  }
}

void sub_1D708B68C()
{
  if (!qword_1EC899E48)
  {
    v0 = sub_1D7260F6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E48);
    }
  }
}

unint64_t sub_1D708B708()
{
  result = qword_1EC899E58;
  if (!qword_1EC899E58)
  {
    sub_1D708B5C4(255);
    sub_1D708C3C0(&qword_1EC899E60, sub_1D708B68C, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899E58);
  }

  return result;
}

void sub_1D708B7B0(uint64_t a1)
{
  if (!qword_1EC899E68)
  {
    sub_1D708B864(255);
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E68);
    }
  }
}

void sub_1D708B864(uint64_t a1)
{
  if (!qword_1EC899E70)
  {
    sub_1D708B8F8();
    sub_1D708C3C0(&qword_1EC899E80, sub_1D708B8F8, MEMORY[0x1E697D680]);
    v1 = sub_1D726108C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899E70);
    }
  }
}

void sub_1D708B8F8()
{
  if (!qword_1EC899E78)
  {
    v0 = sub_1D726196C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899E78);
    }
  }
}

void sub_1D708B950(uint64_t a1, __n128 a2)
{
  if (!qword_1EC899E98)
  {
    sub_1D708BA9C(255, a2);
    sub_1D708B7B0(255);
    sub_1D708BB30();
    sub_1D5BF4D9C();
    swift_getOpaqueTypeConformance2();
    sub_1D708B864(255);
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899E98);
    }
  }
}

void sub_1D708BA9C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC899EA0)
  {
    sub_1D708BB30();
    sub_1D5BF4D9C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC899EA0);
    }
  }
}

unint64_t sub_1D708BB30()
{
  result = qword_1EC899EA8;
  if (!qword_1EC899EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EA8);
  }

  return result;
}

unint64_t sub_1D708BB84()
{
  result = qword_1EC899EB0;
  if (!qword_1EC899EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EB0);
  }

  return result;
}

id sub_1D708BBD8()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAutocapitalizationType_];
  [v2 setSelectable_];
  [v2 setUserInteractionEnabled_];
  [v2 setEditable_];
  return v2;
}

void sub_1D708BCA8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1D726203C();
  [a1 setText_];

  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [a1 setFont_];
}

uint64_t sub_1D708BD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D708C678();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D708BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D708C678();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D708BE38(uint64_t a1)
{
  sub_1D708C678();
  sub_1D726131C();
  __break(1u);
}

uint64_t sub_1D708BE60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1D7089F0C();
  sub_1D708B68C();
  sub_1D708C3C0(&qword_1EC899E50, sub_1D7089F0C, MEMORY[0x1E69E6338]);
  sub_1D708C3C0(&qword_1EC899E60, sub_1D708B68C, MEMORY[0x1E697C090]);
  sub_1D708C354();

  return sub_1D72619EC();
}

uint64_t sub_1D708BFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugTaxtAttachementList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D708C054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7260F1C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D708C0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugTaxtAttachementList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D708C118(void *a1)
{
  v3 = *(type metadata accessor for DebugTaxtAttachementList(0) - 8);
  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D708A65C(a1, v5, v4);
}

uint64_t sub_1D708C200(uint64_t a1, uint64_t a2)
{
  sub_1D708C054(0, &qword_1EC893EB8, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D708C310(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = v4;
  v9 = v5;
  return v2(v7);
}

unint64_t sub_1D708C354()
{
  result = qword_1EC899EB8;
  if (!qword_1EC899EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EB8);
  }

  return result;
}

uint64_t sub_1D708C3C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D708C408()
{
  if (!qword_1EC899EC8)
  {
    sub_1D7260F7C();
    sub_1D708B058(255, v0);
    sub_1D708B29C(255, v1);
    sub_1D708B950(255, v2);
    sub_1D708B408(255, v3);
    sub_1D708B544(255, v4);
    sub_1D708B7B0(255);
    sub_1D708C3C0(&qword_1EC899E90, sub_1D708B544, MEMORY[0x1E697CD20]);
    sub_1D708B864(255);
    sub_1D708C3C0(&qword_1EC899E88, sub_1D708B864, MEMORY[0x1E697C288]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D708BB84();
    sub_1D708BA9C(255, v5);
    sub_1D708BB30();
    sub_1D5BF4D9C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v6 = sub_1D726103C();
    if (!v7)
    {
      atomic_store(v6, &qword_1EC899EC8);
    }
  }
}

unint64_t sub_1D708C678()
{
  result = qword_1EC899ED0;
  if (!qword_1EC899ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899ED0);
  }

  return result;
}

void sub_1D708C6D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = (v14 >> 3) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      sub_1D6B7BE60(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v9);
      if (v3)
      {
        return;
      }

      FormatWebEmbedBinding.SourceItemTip.tipSource(from:)(v9, a2);
      v18 = type metadata accessor for FeedWebEmbed;
      v19 = v9;
      goto LABEL_14;
    }

    sub_1D6B7C06C(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v25);
    if (!v3)
    {
      if (v14)
      {
        if (qword_1EDF168F0 != -1)
        {
          swift_once();
        }

        v16 = sub_1D725FC7C();
        v17 = __swift_project_value_buffer(v16, qword_1EDF168F8);
        (*(*(v16 - 8) + 16))(a2, v17, v16);
      }

      else
      {
        v24[1] = 0x3A3A776F6C6C6F66;
        v24[2] = 0xE800000000000000;
        v20 = [v26 identifier];
        v21 = sub_1D726207C();
        v23 = v22;

        MEMORY[0x1DA6F9910](v21, v23);

        sub_1D725FC6C();
      }

      sub_1D5EE5B54(v25);
    }
  }

  else
  {
    if (!v15)
    {
      v25[0] = v14;
      FormatGroupBinding.SourceItemTip.tipSource(from:)(a1, a2);
      return;
    }

    sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v13);
    if (!v3)
    {
      v25[0] = v14 & 1;
      FormatHeadlineBinding.SourceItemTip.tipSource(from:)(v13, a2);
      v18 = type metadata accessor for FeedHeadline;
      v19 = v13;
LABEL_14:
      sub_1D67527C0(v19, v18);
    }
  }
}

BOOL _s8NewsFeed26FormatSourceItemTipBindingO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 3) & 3;
  v5 = v3 & 0x18;
  if (v4 <= 1)
  {
    if (!v4)
    {
      if ((v3 & 0x18) == 0)
      {
        v6 = v2 >> 5;
        if (v2 >> 5 <= 1)
        {
          if (v6)
          {
            if ((v3 & 0xE0) == 0x20 && ((v3 ^ v2) & 1) == 0)
            {
              return 1;
            }
          }

          else if (v3 <= 0x1F && ((v3 ^ v2) & 1) == 0)
          {
            return 1;
          }
        }

        else if (v6 == 2)
        {
          if ((v3 & 0xE0) == 0x40 && ((v3 ^ v2) & 1) == 0)
          {
            return 1;
          }
        }

        else if (v6 == 3)
        {
          if ((v3 & 0xE0) == 0x60 && ((v3 ^ v2) & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v3 & 0xE0) == 0x80)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v5 != 8)
    {
      return 0;
    }

    return ((v3 ^ v2) & 1) == 0;
  }

  if (v4 != 2)
  {
    return v5 == 24;
  }

  if (v5 == 16)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return 0;
}

unint64_t sub_1D708CAE0(uint64_t a1)
{
  result = sub_1D708CB08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D708CB08()
{
  result = qword_1EC899ED8;
  if (!qword_1EC899ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899ED8);
  }

  return result;
}

unint64_t sub_1D708CB5C(void *a1)
{
  a1[1] = sub_1D66BA368();
  a1[2] = sub_1D66F8070();
  result = sub_1D708CB94();
  a1[3] = result;
  return result;
}

unint64_t sub_1D708CB94()
{
  result = qword_1EC899EE0;
  if (!qword_1EC899EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EE0);
  }

  return result;
}

uint64_t sub_1D708CC98(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED00007364416C6CLL;
  v3 = 0x41656C6261736964;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x41656C6261736964;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001D73B8260;
  }

  else
  {
    v6 = 0xED00007364416C6CLL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D73B8240;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D73B8260;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D73B8240;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D708CD7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D708CE30(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D708CED0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D708CF80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D708D8A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D708CFB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007364416C6CLL;
  v4 = 0x41656C6261736964;
  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D73B8260;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001D73B8240;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_1D708D0E8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746174536461 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D708D170(uint64_t a1)
{
  v2 = sub_1D708D344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D708D1AC(uint64_t a1)
{
  v2 = sub_1D708D344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedConfigMetadata.encode(to:)(void *a1)
{
  sub_1D708D584(0, &qword_1EC899EE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708D344();
  sub_1D7264B5C();
  v12 = v9;
  sub_1D708D398();
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D708D344()
{
  result = qword_1EDF14C58[0];
  if (!qword_1EDF14C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF14C58);
  }

  return result;
}

unint64_t sub_1D708D398()
{
  result = qword_1EC899EF0;
  if (!qword_1EC899EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EF0);
  }

  return result;
}

uint64_t FeedConfigMetadata.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D708D584(0, &qword_1EDF03C50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D708D344();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D708D5E8();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D708D584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D708D344();
    v7 = a3(a1, &type metadata for FeedConfigMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D708D5E8()
{
  result = qword_1EDF14C38;
  if (!qword_1EDF14C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C38);
  }

  return result;
}

unint64_t sub_1D708D6F4()
{
  result = qword_1EC899EF8;
  if (!qword_1EC899EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899EF8);
  }

  return result;
}

unint64_t sub_1D708D74C()
{
  result = qword_1EC899F00;
  if (!qword_1EC899F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F00);
  }

  return result;
}

unint64_t sub_1D708D7A4()
{
  result = qword_1EDF14C48;
  if (!qword_1EDF14C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C48);
  }

  return result;
}

unint64_t sub_1D708D7FC()
{
  result = qword_1EDF14C50;
  if (!qword_1EDF14C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C50);
  }

  return result;
}

unint64_t sub_1D708D850()
{
  result = qword_1EDF14C40;
  if (!qword_1EDF14C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14C40);
  }

  return result;
}

unint64_t sub_1D708D8A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for DebugFormatVersioningModeItem(uint64_t a1)
{
  result = qword_1EC899F08;
  if (!qword_1EC899F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D708D94C(uint64_t a1)
{
  type metadata accessor for FormatVersioningModeSelection(319);
  if (v1 <= 0x3F)
  {
    sub_1D708D9C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D708D9C0(uint64_t a1)
{
  if (!qword_1EC899F18)
  {
    sub_1D5B58D88();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899F18);
    }
  }
}

unint64_t sub_1D708DA3C(void *a1)
{
  a1[1] = sub_1D668E538();
  a1[2] = sub_1D668E7AC();
  result = sub_1D708DA74();
  a1[3] = result;
  return result;
}

unint64_t sub_1D708DA74()
{
  result = qword_1EC899F20;
  if (!qword_1EC899F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F20);
  }

  return result;
}

unint64_t sub_1D708DAC8(uint64_t a1)
{
  result = sub_1D708DAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D708DAF0()
{
  result = qword_1EC899F28;
  if (!qword_1EC899F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F28);
  }

  return result;
}

uint64_t sub_1D708DB48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6690520(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static FormatShineAlphaProcessor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1D708DBE4(uint64_t a1)
{
  result = sub_1D708DC0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D708DC0C()
{
  result = qword_1EC899F30;
  if (!qword_1EC899F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F30);
  }

  return result;
}

unint64_t sub_1D708DC60(void *a1)
{
  a1[1] = sub_1D6667278();
  a1[2] = sub_1D66674C4();
  result = sub_1D708DC98();
  a1[3] = result;
  return result;
}

unint64_t sub_1D708DC98()
{
  result = qword_1EC899F38;
  if (!qword_1EC899F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F38);
  }

  return result;
}

uint64_t sub_1D708DD2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, unint64_t, uint64_t), uint64_t a5, void *a6, void (**a7)(char *, char *, uint64_t), int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(char *, char *, uint64_t), uint64_t a18, unint64_t a19, void (**a20)(char *, uint64_t))
{
  v168 = a8;
  v177 = a7;
  v169 = a5;
  v170 = a6;
  v182 = a3;
  v183 = a4;
  v22 = type metadata accessor for FormatModel(0);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v185 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C2C8(0, v24);
  v211 = v26;
  v184 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v187 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeedItem(0);
  v180 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v179 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v155 - v34;
  v167 = type metadata accessor for FormatContent.Resolved(0);
  v164 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v36);
  v165 = v37;
  v166 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v163 = &v155 - v40;
  v41 = *a1;
  v173 = *(a1 + 8);
  v174 = v41;
  v42 = *(a1 + 24);
  v186 = *(a1 + 16);
  v43 = *(a1 + 32);
  v44 = *(a1 + 40);
  v172 = *(a1 + 48);
  v171 = *(a1 + 56);
  v45 = *(a1 + 72);
  v155 = v35;
  if (v43 < 0)
  {
    v43 &= ~0x8000000000000000;
    *&v196 = a2;
    v48 = *(a1 + 48);
    v207 = *(a1 + 32);
    v208 = v48;
    v209 = *(a1 + 64);
    v49 = *(a1 + 16);
    v205 = *a1;
    v206 = v49;
    *&v207 = v207 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1D5CB7180(&v205, &v201);
    sub_1D70A2554(0, &qword_1EDF05330, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
    sub_1D70A3610();
    sub_1D5B85FD8(&qword_1EDF17310, MEMORY[0x1E69D7608], MEMORY[0x1E69D7600]);
    v50 = sub_1D72623BC();
    if (*(v50 + 16))
    {
      v51 = v173;

      v181 = sub_1D5B69D90(v174, v51);
      v53 = v52;

      if (v53)
      {
        v54 = *(*(v50 + 56) + 8 * v181);

        sub_1D70A2E30(v169, &v201, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
        type metadata accessor for FeedGroupRegion();
        swift_allocObject();
        v55 = v183;

        v56 = FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(v182, v55, v54, &v201);
        v57 = a1;
        v58 = v56;
        sub_1D5CEC67C(v57);
        return v58;
      }
    }
  }

  else
  {
    v46 = *(a1 + 48);
    v207 = *(a1 + 32);
    v208 = v46;
    v209 = *(a1 + 64);
    v47 = *(a1 + 16);
    v205 = *a1;
    v206 = v47;
    *&v207 = v207 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1D5CB7180(&v205, &v201);
  }

  *&v201 = v174;
  *(&v201 + 1) = v173;
  v202.n128_u64[0] = v186;
  v202.n128_u64[1] = v42;
  *&v203 = v43;
  *(&v203 + 1) = v44;
  *&v204[0] = v172;
  *(v204 + 8) = v171;
  *(&v204[1] + 1) = v45;
  v207 = v203;
  v208 = v204[0];
  v209 = v204[1];
  v205 = v201;
  v206 = v202;
  sub_1D5E2C35C(0, v202);
  v59 = sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C, MEMORY[0x1E69D6628]);
  v60 = sub_1D7262C2C();
  v61 = MEMORY[0x1E69E7CC0];
  if (!v60)
  {
LABEL_13:
    *&v161 = a19;
    v186 = a12;
    v181 = a11;
    v74 = sub_1D5B86020(v61);

    v75 = v170;
    v76 = v177;
    v162 = sub_1D708ECA0(v170, &v205, a9, a10, v181, v186, v177);
    v178 = a20;
    v77 = v74;
    v176 = a18;
    v177 = a17;
    v78 = v161;
    v181 = sub_1D7092D6C(v182, v183, &v205, v76, v74, a17, a18, v161, v79, a20);
    v80 = v171;
    v81 = *(v171 + 16);
    if (v81)
    {
      *&v189 = MEMORY[0x1E69E7CC0];
      sub_1D5D565AC(0, v81, 0);
      v186 = v189;
      v82 = (v80 + 32);
      v83 = v81 - 1;
      v84 = v175;
      while (1)
      {
        v85 = *v82;
        v86 = v82[1];
        v87 = v82[3];
        v210[2] = v82[2];
        v210[3] = v87;
        v210[0] = v85;
        v210[1] = v86;
        sub_1D5CB6F58(v210, &v191);
        sub_1D7093400(v210, v182, v183, v181, v177, v176, v78, v178, &v196, v77);
        sub_1D5CB6FB4(v210);
        v88 = v186;
        *&v189 = v186;
        v90 = *(v186 + 16);
        v89 = *(v186 + 24);
        if (v90 >= v89 >> 1)
        {
          v175 = v84;
          sub_1D5D565AC((v89 > 1), v90 + 1, 1);
          v84 = v175;
          v88 = v189;
        }

        *(v88 + 16) = v90 + 1;
        v186 = v88;
        v91 = (v88 + (v90 << 6));
        v92 = v196;
        v93 = v197;
        v94 = v199;
        v91[4] = v198;
        v91[5] = v94;
        v91[2] = v92;
        v91[3] = v93;
        if (!v83)
        {
          break;
        }

        --v83;
        v82 += 4;
      }

      v175 = v84;

      v75 = v170;
    }

    else
    {

      v186 = MEMORY[0x1E69E7CC0];
    }

    v160 = a16;
    v159 = a15;
    v158 = a14;
    v95 = v75[1];
    *&v196 = *v75;
    *(&v196 + 1) = v95;

    MEMORY[0x1DA6F9910](v174, v173);
    v176 = *(&v196 + 1);
    v96 = v196;
    v97 = v163;
    sub_1D5BE64C0(v75, v163, type metadata accessor for FormatContent.Resolved);
    v197 = v206;
    v198 = v207;
    v199 = v208;
    v200 = v209;
    v196 = v205;
    sub_1D5CB7180(&v201, &v191);
    FormatGroupLayoutFactoryModel.init(content:subgroup:)(v97, &v196, &v191);
    v98 = v191;
    v171 = v193;
    v161 = v192;
    v170 = v194;
    v163 = v195;
    sub_1D70A2E30(v169, &v189, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
    v99 = v166;
    sub_1D5BE64C0(v75, v166, type metadata accessor for FormatContent.Resolved);
    v100 = (*(v164 + 80) + 16) & ~*(v164 + 80);
    v101 = (v165 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    sub_1D5BE6684(v99, v102 + v100, type metadata accessor for FormatContent.Resolved);
    v103 = (v102 + v101);
    v104 = v208;
    v103[2] = v207;
    v103[3] = v104;
    v103[4] = v209;
    v105 = v206;
    *v103 = v205;
    v103[1] = v105;
    v106 = type metadata accessor for FeedGroupDebug();
    v107 = swift_allocObject();
    v108 = v181;
    if (v190)
    {
      sub_1D5B63F14(&v189, v107 + 16);
      *(v107 + 56) = sub_1D5EF1D08;
      *(v107 + 64) = v102;
      sub_1D5CB7180(&v201, &v196);
      v164 = &protocol witness table for FeedGroupDebug;
    }

    else
    {
      sub_1D5CB7180(&v201, &v196);

      sub_1D70A2C0C(&v189, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
      swift_deallocPartialClassInstance();
      v106 = 0;
      v164 = 0;
      v107 = 0;
    }

    v166 = v107;
    v169 = v106;
    v165 = a13;
    v109 = *(v75 + *(v167 + 48));

    v172 = sub_1D5D6021C(v110, v109);
    v157 = v98 | 0x4000000000000000;
    type metadata accessor for FeedGroupRegion();
    v58 = swift_allocObject();
    *(v58 + 208) = 0u;
    v167 = v58 + 208;
    v188 = 1;
    *(v58 + 224) = 0u;
    *(v58 + 240) = 0u;
    *(v58 + 249) = 0u;
    *(v58 + 265) = 1;
    *(v58 + 16) = v182;
    *(v58 + 24) = v183;
    *&v196 = v96;
    *(&v196 + 1) = v176;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v111 = *(v108 + 16);
    v112 = MEMORY[0x1E69E7CC0];
    v173 = v58;
    v174 = v96;
    v156 = v111;
    if (v111)
    {
      *&v189 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v111, 0);
      v112 = v189;
      v182 = *(v184 + 16);
      v183 = (v184 + 16);
      v113 = v108 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
      v114 = *(v184 + 72);
      v177 = (v184 + 8);
      v178 = v114;
      v115 = v111;
      do
      {
        v116 = v187;
        v117 = v211;
        (v182)(v187, v113, v211);
        v118 = v185;
        sub_1D725CE7C();
        sub_1D683A158(0);
        v120 = *(v119 + 48);
        v121 = v179;
        sub_1D5BE6684(v118, v179, type metadata accessor for FeedItem);
        sub_1D683A1C4(v118 + v120);
        v122 = FeedItem.identifier.getter();
        v124 = v123;
        sub_1D5BE6754(v121, type metadata accessor for FeedItem);
        (*v177)(v116, v117);
        *&v189 = v112;
        v126 = *(v112 + 16);
        v125 = *(v112 + 24);
        if (v126 >= v125 >> 1)
        {
          sub_1D5BFC364((v125 > 1), v126 + 1, 1);
          v112 = v189;
        }

        *(v112 + 16) = v126 + 1;
        v127 = v112 + 16 * v126;
        *(v127 + 32) = v122;
        *(v127 + 40) = v124;
        v113 += v178;
        --v115;
      }

      while (v115);
      v108 = v181;
      v58 = v173;
      v96 = v174;
    }

    *&v189 = v112;
    v128 = MEMORY[0x1E69E6158];
    sub_1D5D60AB4(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v128, MEMORY[0x1E69E6310]);
    v129 = sub_1D7261F3C();
    v131 = v130;

    MEMORY[0x1DA6F9910](v129, v131);

    v132 = *(&v196 + 1);
    *(v58 + 32) = v196;
    *(v58 + 40) = v132;
    *(v58 + 136) = sub_1D7095200(v108, v158, v159, v160);
    *(v58 + 144) = v133;
    v134 = v156;
    if (v156)
    {
      *&v196 = MEMORY[0x1E69E7CC0];
      sub_1D69992E8(0, v156, 0);
      v135 = v196;
      v136 = *(v184 + 16);
      v137 = v108 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
      v182 = *(v184 + 72);
      v183 = v136;
      v184 += 16;
      v138 = (v184 - 8);
      v139 = v155;
      do
      {
        v140 = v134;
        v141 = v187;
        v142 = v211;
        v183(v187, v137, v211);
        v143 = v185;
        sub_1D725CE7C();
        (*v138)(v141, v142);
        sub_1D683A158(0);
        v145 = *(v144 + 48);
        sub_1D5BE6684(v143, v139, type metadata accessor for FeedItem);
        sub_1D683A1C4(v143 + v145);
        *&v196 = v135;
        v147 = *(v135 + 16);
        v146 = *(v135 + 24);
        if (v147 >= v146 >> 1)
        {
          sub_1D69992E8((v146 > 1), v147 + 1, 1);
          v135 = v196;
        }

        *(v135 + 16) = v147 + 1;
        sub_1D5BE6684(v139, v135 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v147, type metadata accessor for FeedItem);
        v137 += v182;
        v134 = v140 - 1;
      }

      while (v140 != 1);
      sub_1D5CB71DC(&v201);

      v58 = v173;
      v96 = v174;
    }

    else
    {

      sub_1D5CB71DC(&v201);
      v135 = MEMORY[0x1E69E7CC0];
    }

    v148 = v162;
    *(v58 + 64) = v135;
    *(v58 + 72) = v148;
    v149 = v176;
    *(v58 + 48) = v96;
    *(v58 + 56) = v149;
    *(v58 + 80) = v157;
    *(v58 + 88) = v161;
    *(v58 + 104) = v171;
    v150 = v163;
    *(v58 + 120) = v170;
    *(v58 + 128) = v150;
    *(v58 + 152) = v186;
    *(v58 + 160) = v168 & 1;
    v151 = v167;
    *(v58 + 168) = v166;
    *(v58 + 176) = 0;
    v152 = v169;
    *(v58 + 184) = 0;
    *(v58 + 192) = v152;
    *(v58 + 200) = v164;
    swift_beginAccess();
    v153 = v165;
    v154 = v165[1];
    *v151 = *v165;
    v151[1] = v154;
    v151[2] = v153[2];
    *(v151 + 42) = *(v153 + 42);
    *(v58 + 272) = v172;
    return v58;
  }

  v62 = v60;
  v191 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v60 & ~(v60 >> 63), 0);
  v61 = v191;
  result = sub_1D7262BFC();
  if ((v62 & 0x8000000000000000) == 0)
  {
    v181 = v184 + 16;
    v178 = (v184 + 8);
    do
    {
      v64 = sub_1D7262D0C();
      v65 = v59;
      v66 = v187;
      v67 = v211;
      (*v181)(v187);
      v64(&v196, 0);
      v68 = sub_1D725CE5C();
      v186 = v69;
      (*v178)(v66, v67);
      v191 = v61;
      v71 = *(v61 + 16);
      v70 = *(v61 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1D5BFC364((v70 > 1), v71 + 1, 1);
        v61 = v191;
      }

      *(v61 + 16) = v71 + 1;
      v72 = v61 + 16 * v71;
      v73 = v186;
      *(v72 + 32) = v68;
      *(v72 + 40) = v73;
      sub_1D7262C6C();
      --v62;
      v59 = v65;
    }

    while (v62);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D708ECA0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v524 = a7;
  v494 = a6;
  v507 = a2;
  v508 = a4;
  v527 = a3;
  v9 = type metadata accessor for FeedRecipe.State(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v511 = &v476 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v478 = &v476 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v512 = &v476 - v17;
  v531 = type metadata accessor for FeedRecipe(0);
  v513 = *(v531 - 8);
  v19 = MEMORY[0x1EEE9AC00](v531, v18);
  v538 = &v476 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A3810(0, v19);
  v491 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v529 = &v476 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E69E6720];
  sub_1D70A2554(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v492 = &v476 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v480 = &v476 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v481 = &v476 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v528 = &v476 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v537 = &v476 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v510 = &v476 - v42;
  v43 = type metadata accessor for WebEmbedDataVisualization(0);
  v486 = *(v43 - 8);
  v487 = v43;
  MEMORY[0x1EEE9AC00](v43, v44);
  v477 = (&v476 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v484 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v484, v46);
  v495 = (&v476 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70A2554(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v24);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v485 = &v476 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v500 = &v476 - v53;
  sub_1D70A2554(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v24);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v518 = &v476 - v56;
  v520 = sub_1D72585BC();
  v501 = *(v520 - 8);
  MEMORY[0x1EEE9AC00](v520, v57);
  v519 = &v476 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A2554(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, v24);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v503 = &v476 - v61;
  v504 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v502 = *(v504 - 8);
  MEMORY[0x1EEE9AC00](v504, v62);
  v505 = &v476 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v540 = type metadata accessor for FeedHeadline(0);
  v517 = *(v540 - 8);
  MEMORY[0x1EEE9AC00](v540, v64);
  v521 = (&v476 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70A2554(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], v24);
  MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v515 = &v476 - v68;
  v498 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v498, v69);
  v490 = &v476 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v479 = &v476 - v73;
  v76 = MEMORY[0x1EEE9AC00](v74, v75);
  v516 = &v476 - v77;
  sub_1D70A3978(0, v76);
  v493 = v78;
  MEMORY[0x1EEE9AC00](v78, v79);
  v544 = (&v476 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70A2554(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v24);
  MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v499 = &v476 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84, v85);
  v489 = &v476 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v482 = &v476 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v483 = &v476 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v539 = &v476 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v514 = &v476 - v98;
  v99 = type metadata accessor for FormatModel(0);
  MEMORY[0x1EEE9AC00](v99 - 8, v100);
  v541 = &v476 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v551 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v551, v102);
  v525 = (&v476 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v104, v105);
  v526 = &v476 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v548 = &v476 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v550 = &v476 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v545 = (&v476 - v115);
  v118 = MEMORY[0x1EEE9AC00](v116, v117);
  v553 = (&v476 - v119);
  sub_1D5E2C2C8(0, v118);
  v552 = v120;
  v523 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v121);
  v509 = &v476 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v123, v124);
  v549 = &v476 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v543 = &v476 - v128;
  v131 = MEMORY[0x1EEE9AC00](v129, v130);
  v546 = &v476 - v132;
  sub_1D70A3BB0(0, v131);
  v135 = MEMORY[0x1EEE9AC00](v133 - 8, v134);
  v522 = &v476 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A3C44(0, v135);
  v496 = v137;
  MEMORY[0x1EEE9AC00](v137, v138);
  v476 = &v476 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v140, v141);
  ObjectType = (&v476 - v142);
  sub_1D70A2554(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v24);
  MEMORY[0x1EEE9AC00](v143 - 8, v144);
  v146 = &v476 - v145;
  v506 = sub_1D72608BC();
  v147 = *(v506 - 8);
  MEMORY[0x1EEE9AC00](v506, v148);
  v488 = &v476 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A2554(0, &unk_1EDF199D0, type metadata accessor for FeedGroupItem, MEMORY[0x1E69E6F90]);
  v151 = v150;
  v152 = type metadata accessor for FeedGroupItem(0);
  v153 = *(v152 - 8);
  v154 = *(v153 + 72);
  v155 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v533 = *(v153 + 80);
  v534 = v154;
  v535 = v151;
  v156 = swift_allocObject();
  v536 = xmmword_1D7273AE0;
  *(v156 + 16) = xmmword_1D7273AE0;
  v542 = v155;
  v157 = (v156 + v155);
  v532 = type metadata accessor for FormatContent.Resolved(0);
  v158 = *(v532 + 44);
  v530 = a1;
  v159 = *(a1 + v158);
  v497 = v9;
  if (a5)
  {

    v160 = a5;
  }

  else
  {
    v160 = MEMORY[0x1E69E7CC0];
  }

  *&v572 = v159;

  sub_1D5D505F0(v160);
  v161 = v572;
  if (a5)
  {
    v162 = v494;
  }

  else
  {
    v162 = MEMORY[0x1E69E7CC0];
  }

  v163 = v532;
  *&v572 = v507[5];

  sub_1D5D505F0(v162);
  v164 = v572;
  *v157 = v161;
  v157[1] = v164;
  swift_storeEnumTagMultiPayload();
  v165 = v508;

  v166 = sub_1D5D50638(v156, v165);
  swift_setDeallocating();
  sub_1D5BE6754(v157, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  v580 = v166;
  v167 = v530;
  sub_1D70A3E54(v530 + v163[21], v146, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D70A2554);
  v168 = v506;
  if ((*(v147 + 48))(v146, 1, v506) == 1)
  {
    sub_1D5BEFFE8(v146, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  else
  {
    v170 = v488;
    (*(v147 + 32))(v488, v146, v168);
    v171 = v542;
    v172 = swift_allocObject();
    *(v172 + 16) = v536;
    v173 = (v172 + v171);
    v174 = sub_1D726084C();
    v176 = v175;
    v177 = type metadata accessor for FeedSponsorshipBannerAd(0);
    (*(v147 + 16))(v173 + *(v177 + 20), v170, v168);
    *v173 = v174;
    v173[1] = v176;
    v163 = v532;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v172);
    swift_setDeallocating();
    sub_1D5BE6754(v173, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    v178 = v170;
    v167 = v530;
    (*(v147 + 8))(v178, v168);
  }

  v179 = *(v167 + v163[13]);
  if (v179)
  {
    v180 = v542;
    v181 = swift_allocObject();
    *(v181 + 16) = v536;
    v182 = *(v167 + v163[18]);
    v183 = v181 + v180;
    v184 = *(v167 + v163[19]);
    *v183 = v179;
    *(v183 + 8) = v182;
    *(v183 + 16) = v184;
    swift_storeEnumTagMultiPayload();
    v185 = v182;
    swift_unknownObjectRetain();
    sub_1D5D51F5C(v181);
    swift_setDeallocating();
    sub_1D5BE6754(v183, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
  }

  v186 = v527;
  if (v527)
  {
    v187 = v542;
    v188 = swift_allocObject();
    *(v188 + 16) = v536;
    *(v188 + v187) = v186;
    swift_storeEnumTagMultiPayload();
    v189 = v186;
    sub_1D5D51F5C(v188);
    swift_setDeallocating();
    sub_1D5BE6754(v188 + v187, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    v190 = [FCFeedDescriptor.feedTag.getter() asSportsEvent];
    swift_unknownObjectRelease();
    if (v190)
    {
      v191 = swift_allocObject();
      *(v191 + 16) = v536;
      v192 = v191 + v187;
      v193 = [swift_unknownObjectRetain() identifier];
      v194 = sub_1D726207C();
      v195 = v190;
      v197 = v196;

      *v192 = v194;
      *(v192 + 8) = v197;
      *(v192 + 16) = v195;
      *(v192 + 24) = 0;
      *(v192 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D5D51F5C(v191);
      swift_setDeallocating();
      v198 = v192;
      v167 = v530;
      sub_1D5BE6754(v198, type metadata accessor for FeedGroupItem);
      swift_deallocClassInstance();
      swift_unknownObjectRelease();
    }

    v163 = v532;
  }

  v527 = v152;
  v199 = *(v167 + v163[14]);
  if (!v199)
  {
    v241 = *(v167 + v163[15]);
    v242 = v544;
    if (!v241)
    {
      goto LABEL_51;
    }

    if (([v241 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_51;
    }

    v243 = [v241 parentIssue];
    if (!v243)
    {
      goto LABEL_51;
    }

    v244 = v243;
    v508 = swift_allocObject();
    *(v508 + 16) = v536;
    v507 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    sub_1D5E2C35C(0, v245);
    v247 = v246;
    v248 = *(v246 - 8);
    v249 = v522;
    (*(v248 + 16))(v522, v524, v246);
    v250 = swift_allocObject();
    *(v250 + 16) = v244;
    v251 = v476;
    v252.n128_f64[0] = (*(v248 + 32))(v476, v249, v247);
    sub_1D70A3D74(0, v252);
    v254 = &v251[*(v253 + 44)];
    *v254 = sub_1D70A3EC8;
    v254[1] = v250;
    sub_1D70A3CE0(0, v255);
    v257 = &v251[*(v256 + 36)];
    *v257 = sub_1D70A2AB4;
    *(v257 + 1) = 0;
    v258 = &v251[*(v496 + 44)];
    *v258 = sub_1D70A2B08;
    *(v258 + 1) = 0;
    sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C, MEMORY[0x1E69D6628]);
    v259 = v244;
    v260 = v251;
    v261 = v259;
    sub_1D7262BFC();
    *&v564 = v572;
    sub_1D7262C5C();
    v262 = v572;
    ObjectType = v261;
    if (v564 == v572)
    {
      goto LABEL_133;
    }

    v263 = (v523 + 16);
    v553 = (v523 + 8);
    v262 = v564;
    v264 = v552;
    v265 = v541;
    v266 = v509;
    while (1)
    {
      *&v556 = v262;
      v267 = sub_1D7262D0C();
      (*v263)(v266);
      v267(&v572, 0);
      sub_1D725CE7C();
      sub_1D683A158(0);
      v269 = *(v268 + 48);
      v270 = v526;
      sub_1D5BE6684(v265, v526, type metadata accessor for FeedItem);
      sub_1D683A1C4(v265 + v269);
      sub_1D5BE64C0(v270, v525, type metadata accessor for FeedItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (((1 << EnumCaseMultiPayload) & 0x3FFDF) != 0)
      {
        break;
      }

      v266 = v509;
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_36;
      }

      v272 = v525[7];
      v578 = v525[6];
      v579[0] = v272;
      *(v579 + 9) = *(v525 + 121);
      v273 = v525[3];
      v574 = v525[2];
      v575 = v273;
      v274 = v525[5];
      v576 = v525[4];
      v577 = v274;
      v275 = v525[1];
      v572 = *v525;
      v573 = v275;
      sub_1D5BE6754(v526, type metadata accessor for FeedItem);
      v276 = [v572 identifier];
      v546 = sub_1D726207C();
      v278 = v277;

      v279 = [ObjectType identifier];
      v280 = sub_1D726207C();
      v282 = v281;

      if (v546 == v280 && v278 == v282)
      {

        v260 = v476;
LABEL_148:
        (*v553)(v266, v552);
        sub_1D5ECF320(&v572);
LABEL_132:
        v261 = ObjectType;
LABEL_133:
        sub_1D7262C5C();
        if (v262 == v572)
        {

          sub_1D5BE6754(v260, sub_1D70A3C44);
          v284 = 0;
          v167 = v530;
          v286 = v508;
          v466 = v542;
LABEL_137:
          v294 = v286 + v466;
          v295 = v261;
          v296 = [v295 identifier];
          goto LABEL_50;
        }

        v555 = v262;
        v467 = sub_1D7262D0C();
        v468 = v523;
        v469 = v543;
        v470 = v261;
        v471 = v552;
        (*(v523 + 16))(v543);
        v467(&v572, 0);
        sub_1D70942EC(v470, &v572);

        (*(v468 + 8))(v469, v471);
        v562 = v578;
        v563[0] = v579[0];
        *(v563 + 9) = *(v579 + 9);
        v558 = v574;
        v559 = v575;
        v560 = v576;
        v561 = v577;
        v556 = v572;
        v557 = v573;
        v570 = v578;
        v571[0] = v579[0];
        *(v571 + 9) = *(v579 + 9);
        v566 = v574;
        v567 = v575;
        v568 = v576;
        v569 = v577;
        v564 = v572;
        v565 = v573;
        sub_1D70A3E54(&v556, v554, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5D60AB4);
        sub_1D70A34D0(&v564, &qword_1EDF34E30, &type metadata for FeedIssue);
        v578 = v562;
        v579[0] = v563[0];
        *(v579 + 9) = *(v563 + 9);
        v574 = v558;
        v575 = v559;
        v576 = v560;
        v577 = v561;
        v572 = v556;
        v573 = v557;
        v472 = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v572) == 1;
        result = v260;
        v286 = v508;
        if (!v472)
        {
          v284 = BYTE8(v563[1]);
          sub_1D5BE6754(result, sub_1D70A3C44);
          sub_1D70A34D0(&v556, &qword_1EDF34E30, &type metadata for FeedIssue);
          v167 = v530;
          v466 = v542;
          v261 = ObjectType;
          goto LABEL_137;
        }

LABEL_152:
        __break(1u);
        return result;
      }

      v283 = sub_1D72646CC();

      v260 = v476;
      if (v283)
      {
        goto LABEL_148;
      }

      sub_1D5ECF320(&v572);
      v264 = v552;
      v265 = v541;
LABEL_37:
      (*v553)(v266, v264);
      sub_1D7262C6C();
      sub_1D7262C5C();
      v262 = v564;
      if (v564 == v572)
      {
        v262 = v572;
        goto LABEL_132;
      }
    }

    sub_1D5BE6754(v525, type metadata accessor for FeedItem);
    v266 = v509;
LABEL_36:
    sub_1D5BE6754(v526, type metadata accessor for FeedItem);
    goto LABEL_37;
  }

  v508 = swift_allocObject();
  *(v508 + 16) = v536;
  v200 = objc_allocWithZone(MEMORY[0x1E69B52B8]);
  v201 = v199;
  v507 = [v200 init];
  sub_1D5E2C35C(0, v202);
  v204 = v203;
  v205 = *(v203 - 8);
  v206 = v522;
  (*(v205 + 16))(v522, v524, v203);
  v207 = swift_allocObject();
  *(v207 + 16) = v201;
  v208 = ObjectType;
  v209.n128_f64[0] = (*(v205 + 32))(ObjectType, v206, v204);
  sub_1D70A3D74(0, v209);
  v211 = (v208 + *(v210 + 44));
  *v211 = sub_1D70A3F00;
  v211[1] = v207;
  sub_1D70A3CE0(0, v212);
  v214 = v208 + *(v213 + 36);
  *v214 = sub_1D70A2AB4;
  *(v214 + 1) = 0;
  v215 = v208 + *(v496 + 44);
  *v215 = sub_1D70A2B08;
  *(v215 + 1) = 0;
  sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C, MEMORY[0x1E69D6628]);
  v216 = v201;
  sub_1D7262BFC();
  *&v564 = v572;
  sub_1D7262C5C();
  v217 = v572;
  v526 = v216;
  if (v564 == v572)
  {
    goto LABEL_45;
  }

  v218 = (v523 + 16);
  v219 = (v523 + 8);
  v217 = v564;
  v220 = v552;
  v221 = v541;
  v222 = v546;
  while (1)
  {
    *&v556 = v217;
    v223 = sub_1D7262D0C();
    (*v218)(v222);
    v223(&v572, 0);
    sub_1D725CE7C();
    sub_1D683A158(0);
    v225 = *(v224 + 48);
    v226 = v553;
    sub_1D5BE6684(v221, v553, type metadata accessor for FeedItem);
    sub_1D683A1C4(v221 + v225);
    v227 = v545;
    sub_1D5BE64C0(v226, v545, type metadata accessor for FeedItem);
    v228 = swift_getEnumCaseMultiPayload();
    if (((1 << v228) & 0x3FFDF) != 0)
    {
      sub_1D5BE6754(v227, type metadata accessor for FeedItem);
      v222 = v546;
LABEL_21:
      sub_1D5BE6754(v553, type metadata accessor for FeedItem);
      goto LABEL_22;
    }

    v222 = v546;
    if (v228 != 5)
    {
      goto LABEL_21;
    }

    v229 = v227[6];
    v230 = v227[7];
    v231 = v227[4];
    v577 = v227[5];
    v578 = v229;
    v579[0] = v230;
    *(v579 + 9) = *(v227 + 121);
    v232 = v227[3];
    v574 = v227[2];
    v575 = v232;
    v576 = v231;
    v233 = v227[1];
    v572 = *v227;
    v573 = v233;
    sub_1D5BE6754(v553, type metadata accessor for FeedItem);
    v234 = [v572 identifier];
    v509 = sub_1D726207C();
    v525 = v235;

    v236 = [v526 identifier];
    v237 = sub_1D726207C();
    v239 = v238;

    if (v509 == v237 && v525 == v239)
    {
      break;
    }

    v240 = sub_1D72646CC();

    if (v240)
    {
      goto LABEL_146;
    }

    sub_1D5ECF320(&v572);
    v220 = v552;
    v221 = v541;
LABEL_22:
    (*v219)(v222, v220);
    v208 = ObjectType;
    sub_1D7262C6C();
    sub_1D7262C5C();
    v217 = v564;
    if (v564 == v572)
    {
      v217 = v572;
      goto LABEL_44;
    }
  }

LABEL_146:
  (*v219)(v222, v552);
  sub_1D5ECF320(&v572);
  v208 = ObjectType;
LABEL_44:
  v216 = v526;
LABEL_45:
  sub_1D7262C5C();
  if (v217 == v572)
  {

    sub_1D5BE6754(v208, sub_1D70A3C44);
    v284 = 0;
    v285 = v542;
    v167 = v530;
    v286 = v508;
    goto LABEL_49;
  }

  v555 = v217;
  v287 = sub_1D7262D0C();
  v288 = v523;
  v289 = v543;
  v290 = v208;
  v291 = v216;
  v292 = v552;
  (*(v523 + 16))(v543);
  v287(&v572, 0);
  sub_1D70942EC(v291, &v572);

  (*(v288 + 8))(v289, v292);
  v562 = v578;
  v563[0] = v579[0];
  *(v563 + 9) = *(v579 + 9);
  v558 = v574;
  v559 = v575;
  v560 = v576;
  v561 = v577;
  v556 = v572;
  v557 = v573;
  v569 = v577;
  v570 = v578;
  v571[0] = v579[0];
  *(v571 + 9) = *(v579 + 9);
  v566 = v574;
  v567 = v575;
  v568 = v576;
  v564 = v572;
  v565 = v573;
  sub_1D70A3E54(&v556, v554, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5D60AB4);
  sub_1D70A34D0(&v564, &qword_1EDF34E30, &type metadata for FeedIssue);
  v578 = v562;
  v579[0] = v563[0];
  *(v579 + 9) = *(v563 + 9);
  v574 = v558;
  v575 = v559;
  v576 = v560;
  v577 = v561;
  v572 = v556;
  v573 = v557;
  result = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v572);
  v285 = v542;
  v286 = v508;
  if (result == 1)
  {
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v284 = BYTE8(v563[1]);
  sub_1D5BE6754(v290, sub_1D70A3C44);
  sub_1D70A34D0(&v556, &qword_1EDF34E30, &type metadata for FeedIssue);
  v167 = v530;
  v216 = v526;
LABEL_49:
  v294 = v286 + v285;
  v295 = v216;
  v296 = [v295 identifier];
LABEL_50:
  v297 = v296;
  v298 = sub_1D726207C();
  v300 = v299;

  *v294 = v295;
  *(v294 + 8) = v298;
  *(v294 + 16) = v300;
  *(v294 + 24) = 0;
  *(v294 + 32) = 0;
  *(v294 + 40) = 0;
  *(v294 + 48) = 1;
  *(v294 + 56) = v507;
  *(v294 + 64) = 0;
  *(v294 + 72) = xmmword_1D7279980;
  *(v294 + 88) = 0u;
  *(v294 + 104) = 0u;
  *(v294 + 120) = 0;
  *(v294 + 128) = 5;
  *(v294 + 136) = v284 & 1;
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v286);
  swift_setDeallocating();
  sub_1D5BE6754(v294, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();

  v163 = v532;
  v242 = v544;
LABEL_51:
  v301 = *(v167 + v163[15]);
  if (!v301)
  {
    goto LABEL_79;
  }

  sub_1D5E2C35C(0, v169);
  v303 = v302;
  v304 = *(v302 - 8);
  v305 = v522;
  (*(v304 + 16))(v522, v524, v302);
  v306 = swift_allocObject();
  *(v306 + 16) = v301;
  v307.n128_f64[0] = (*(v304 + 32))(v242, v305, v303);
  sub_1D70A3AB8(0, v307);
  v309 = (v242 + *(v308 + 44));
  *v309 = sub_1D70A3E4C;
  v309[1] = v306;
  sub_1D70A3A24(0, v310);
  v312 = (v242 + *(v311 + 36));
  *v312 = sub_1D70A2874;
  v312[1] = 0;
  v313 = (v242 + *(v493 + 44));
  *v313 = sub_1D70A293C;
  v313[1] = 0;
  sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C, MEMORY[0x1E69D6628]);
  v553 = v301;
  swift_unknownObjectRetain_n();
  sub_1D7262BFC();
  *&v564 = v572;
  sub_1D7262C5C();
  v314 = v572;
  if (v564 != v572)
  {
    ObjectType = (v523 + 16);
    v315 = (v523 + 8);
    v316 = (v517 + 48);
    v314 = v564;
    while (1)
    {
      *&v556 = v314;
      v317 = sub_1D7262D0C();
      v318 = v543;
      v319 = v552;
      (*ObjectType)(v543);
      v317(&v572, 0);
      v320 = v539;
      sub_1D70945C4(v553, v539);
      (*v315)(v318, v319);
      LODWORD(v318) = (*v316)(v320, 1, v540);
      sub_1D5BEFFE8(v320, qword_1EDF42030, type metadata accessor for FeedHeadline);
      if (v318 != 1)
      {
        break;
      }

      sub_1D7262C6C();
      sub_1D7262C5C();
      v314 = v564;
      if (v564 == v572)
      {
        v314 = v572;
        break;
      }
    }
  }

  sub_1D7262C5C();
  if (v314 == v572)
  {
    swift_unknownObjectRelease();
    v321 = 1;
    v322 = v540;
    v323 = v521;
    v324 = v516;
    v325 = v514;
    goto LABEL_61;
  }

  *&v564 = v314;
  v326 = sub_1D7262D0C();
  v327 = v523;
  v328 = v543;
  v329 = v552;
  (*(v523 + 16))(v543);
  v326(&v572, 0);
  v330 = v483;
  sub_1D70945C4(v553, v483);
  swift_unknownObjectRelease();
  (*(v327 + 8))(v328, v329);
  v331 = v482;
  sub_1D70A3E54(v330, v482, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D70A2554);
  v322 = v540;
  result = (*(v517 + 48))(v331, 1, v540);
  v323 = v521;
  if (result == 1)
  {
    goto LABEL_150;
  }

  v332 = v331;
  v325 = v514;
  sub_1D5BE6684(v332, v514, type metadata accessor for FeedHeadline);
  sub_1D5BEFFE8(v330, qword_1EDF42030, type metadata accessor for FeedHeadline);
  v321 = 0;
  v324 = v516;
LABEL_61:
  v333 = v517;
  (*(v517 + 56))(v325, v321, 1, v322);
  sub_1D5BE6754(v544, sub_1D70A3978);
  v334 = v325;
  v335 = v489;
  sub_1D70A3E54(v334, v489, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D70A2554);
  if ((*(v333 + 48))(v335, 1, v322) == 1)
  {
    sub_1D5BEFFE8(v335, qword_1EDF42030, type metadata accessor for FeedHeadline);
    v336 = v498;
    v337 = v498[6];
    v338 = type metadata accessor for SharedItem(0);
    (*(*(v338 - 8) + 56))(&v324[v337], 1, 1, v338);
    *v324 = 258;
    v324[v336[7]] = 1;
    v324[v336[8]] = 0;
    v324[v336[9]] = 0;
    v324[v336[10]] = 0;
  }

  else
  {
    v339 = v479;
    sub_1D5BE64C0(v335 + v322[10], v479, type metadata accessor for FeedHeadline.State);
    sub_1D5BE6754(v335, type metadata accessor for FeedHeadline);
    sub_1D5BE6684(v339, v324, type metadata accessor for FeedHeadline.State);
  }

  v340 = swift_allocObject();
  *(v340 + 16) = v536;
  v341 = sub_1D726045C();
  v342 = v515;
  (*(*(v341 - 8) + 56))(v515, 1, 1, v341);
  v343 = v490;
  sub_1D5BE64C0(v324, v490, type metadata accessor for FeedHeadline.State);
  *(v323 + v322[12]) = xmmword_1D727C330;
  v344 = v553;
  ObjectType = swift_getObjectType();
  v345 = [swift_unknownObjectRetain() identifier];
  v346 = sub_1D726207C();
  v348 = v347;

  *v521 = v346;
  v349 = v521;
  v521[1] = v348;
  *(v349 + 40) = v344;
  *(v349 + 48) = 0;
  sub_1D70A3E54(v342, v349 + v322[11], &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720], sub_1D70A2554);
  sub_1D5BE64C0(v343, v349 + v322[10], type metadata accessor for FeedHeadline.State);
  *(v349 + v322[14]) = 0;
  *(v349 + 56) = 0;
  v350 = [swift_unknownObjectRetain() title];
  if (v350)
  {
    v351 = v350;
    v352 = [v350 ne_isNaturallyRTL];

    v353 = v352;
  }

  else
  {
    v353 = 0;
  }

  v354 = v530;
  v355 = v514;
  *(v349 + 16) = v353;
  *(v349 + 24) = 0;
  sub_1D5BC7BD4(&v572);
  swift_unknownObjectRelease();
  v356 = v498;
  if (*(v343 + v498[8]) - 1 <= 1 && (v572 & 0x1000) == 0)
  {
    *&v572 = v572 | 0x1000;
  }

  v357 = *(v343 + v498[10]);
  v358 = 0x80000000;
  if (!*(v343 + v498[10]))
  {
    v358 = 0x100000000;
  }

  if ((v572 & v358) != 0)
  {
    v358 = 0;
  }

  *(v349 + 32) = v572 | v358;
  v167 = v354;
  if (*(v343 + v356[7]))
  {
    if (*(v343 + v356[9]))
    {
      sub_1D5BE6754(v343, type metadata accessor for FeedHeadline.State);
      sub_1D5BEFFE8(v515, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v359 = 1;
    }

    else if (v357)
    {
      v430 = [v553 sourceChannel];
      sub_1D5BE6754(v343, type metadata accessor for FeedHeadline.State);
      sub_1D5BEFFE8(v515, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v359 = 2;
      if (v430)
      {
        v359 = v430;
      }
    }

    else
    {
      sub_1D5BE6754(v343, type metadata accessor for FeedHeadline.State);
      sub_1D5BEFFE8(v515, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v359 = 2;
    }
  }

  else
  {
    sub_1D5BE6754(v343, type metadata accessor for FeedHeadline.State);
    sub_1D5BEFFE8(v515, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
    v359 = 0;
  }

  *(v349 + v322[13]) = v359;
  v360 = v542;
  sub_1D5BE6684(v349, v340 + v542, type metadata accessor for FeedHeadline);
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v340);
  swift_setDeallocating();
  sub_1D5BE6754(v340 + v360, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  swift_unknownObjectRelease();
  sub_1D5BE6754(v516, type metadata accessor for FeedHeadline.State);
  sub_1D5BEFFE8(v355, qword_1EDF42030, type metadata accessor for FeedHeadline);
  v163 = v532;
LABEL_79:
  v361 = v503;
  sub_1D70A3E54(v167 + v163[16], v503, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720], sub_1D70A2554);
  v362 = v504;
  if ((*(v502 + 48))(v361, 1, v504) == 1)
  {
    sub_1D5BEFFE8(v361, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
    v364 = v529;
    goto LABEL_87;
  }

  v365 = v505;
  sub_1D5BE6684(v361, v505, type metadata accessor for FormatWebEmbed.Resolved);
  v553 = swift_allocObject();
  *(v553 + 1) = v536;
  v366 = *(v365 + 8);
  ObjectType = *v365;
  v525 = v366;
  v367 = v365 + v362[5];
  v368 = type metadata accessor for FormatWebEmbed(0);
  v369 = v368[5];
  v370 = *(v501 + 16);
  v544 = (v501 + 16);
  v546 = v370;
  (v370)(v519, v367 + v369, v520);
  v371 = v368[6];
  v545 = MEMORY[0x1E6968FB0];
  v372 = v362;
  v373 = MEMORY[0x1E69E6720];
  sub_1D70A3E54(v367 + v371, v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D70A2554);
  v374 = *(v365 + v372[6]);
  v375 = *(v365 + v372[7]);

  v376 = v499;
  sub_1D5EF1350(v365, v499);
  v377 = v365 + v372[8];
  v378 = v500;
  sub_1D70A3E54(v377, v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v373, sub_1D70A2554);
  v379 = v368[11];
  LODWORD(v540) = *(v367 + v368[10]);
  v539 = sub_1D5EEC8D4(*(v367 + v368[12]), *(v367 + v379));
  v526 = v380;
  v381 = v495;
  *v495 = xmmword_1D727F470;
  *(v381 + 16) = 1;
  *(v381 + 24) = xmmword_1D727F480;
  v382 = v525;
  *(v381 + 40) = ObjectType;
  *(v381 + 48) = v382;
  v383 = v484;
  (v546)(v381 + *(v484 + 32), v519, v520);
  sub_1D70A3E54(v518, v381 + v383[9], &qword_1EDF45B40, v545, v373, sub_1D70A2554);
  *(v381 + v383[10]) = v374;
  *(v381 + v383[11]) = v375;
  sub_1D70A3E54(v376, v381 + v383[12], qword_1EDF42030, type metadata accessor for FeedHeadline, v373, sub_1D70A2554);
  sub_1D70A3E54(v378, v381 + v383[13], qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v373, sub_1D70A2554);
  *(v381 + v383[14]) = v540 & 1;
  v384 = (v381 + v383[15]);
  v385 = v526;
  *v384 = v539;
  v384[1] = v385;
  v386 = v485;
  sub_1D70A3E54(v378, v485, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v373, sub_1D70A2554);
  if ((*(v486 + 48))(v386, 1, v487) == 1)
  {
    sub_1D5BEFFE8(v386, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    goto LABEL_85;
  }

  v387 = v477;
  sub_1D5BE64C0(v386, v477, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE6754(v387, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5BE6754(v386, type metadata accessor for WebEmbedDataVisualization);
LABEL_85:
    v364 = v529;
    v167 = v530;
    v388 = v553;
    sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
    sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v501 + 8))(v519, v520);
  }

  else
  {
    v463 = *v387;
    sub_1D5BE6754(v386, type metadata accessor for WebEmbedDataVisualization);
    v464 = v463 >> 61;
    v364 = v529;
    v167 = v530;
    if ((v463 >> 61) <= 2)
    {
      if (v464)
      {
        if (v464 == 1)
        {
          sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
          sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
          sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          (*(v501 + 8))(v519, v520);
          *v381 = 8390656;
          v465 = 0x2000800800;
        }

        else
        {
          sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
          sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
          sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          (*(v501 + 8))(v519, v520);
          *v381 = 536872960;
          v465 = 0x2020000800;
        }
      }

      else
      {
        v465 = 0x2000400800;
        *v381 = 4196352;

        v473 = SportsScoreDataVisualization.isFeatured.getter();

        sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
        sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v501 + 8))(v519, v520);
        if (v473)
        {
          *v495 = 4196384;
          v465 = 0x2000400820;
        }
      }
    }

    else if (v464 > 4)
    {
      if (v464 == 5)
      {
        sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
        sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v501 + 8))(v519, v520);
        *v381 = 0x800000800;
        v465 = 0x2800000800;
      }

      else
      {
        sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
        sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v501 + 8))(v519, v520);
        *v381 = 0x1000000800;
        v465 = 0x3000000800;
      }
    }

    else if (v464 == 3)
    {
      sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v501 + 8))(v519, v520);
      *v381 = 0x200000800;
      v465 = 0x2200000800;
    }

    else
    {
      sub_1D5BEFFE8(v500, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5BEFFE8(v499, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D5BEFFE8(v518, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v501 + 8))(v519, v520);
      *v381 = 0x400000800;
      v465 = 0x2400000800;
    }

    *&v572 = v463;
    SportsDataVisualization.event.getter();
    v475 = v474;

    v381 = v495;
    v388 = v553;
    if (v475)
    {
      swift_unknownObjectRelease();
      *v381 = v465;
    }
  }

  v389 = v542;
  sub_1D5BE6684(v381, v388 + v542, type metadata accessor for FeedWebEmbed);
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v388);
  swift_setDeallocating();
  sub_1D5BE6754(v388 + v389, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  sub_1D5BE6754(v505, type metadata accessor for FormatWebEmbed.Resolved);
  v163 = v532;
LABEL_87:
  v390 = *(v167 + v163[17]);
  if (!v390)
  {
    return v580;
  }

  sub_1D5E2C35C(0, v363);
  v392 = v391;
  v393 = *(v391 - 1);
  v394 = v522;
  (*(v393 + 16))(v522, v524, v391);
  v395 = swift_allocObject();
  *(v395 + 16) = v390;
  v396.n128_f64[0] = (*(v393 + 32))(v364, v394, v392);
  sub_1D70A3950(0, v396);
  v398 = (v364 + *(v397 + 44));
  *v398 = sub_1D70A3E44;
  v398[1] = v395;
  sub_1D70A38BC(0, v399);
  v401 = (v364 + *(v400 + 36));
  *v401 = sub_1D70A285C;
  v401[1] = 0;
  v402 = (v364 + *(v491 + 44));
  *v402 = sub_1D70A28F4;
  v402[1] = 0;
  v403 = sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C, MEMORY[0x1E69D6628]);
  v539 = v390;
  sub_1D7262BFC();
  *&v564 = v572;
  sub_1D7262C5C();
  v404 = v572;
  v405 = v531;
  v406 = v528;
  if (v564 == v572)
  {
    goto LABEL_110;
  }

  v544 = (v523 + 16);
  v553 = (v513 + 56);
  ObjectType = (v513 + 48);
  v540 = v523 + 8;
  v404 = v564;
  v546 = v392;
  v545 = v403;
  while (2)
  {
    *&v556 = v404;
    v407 = sub_1D7262D0C();
    (*v544)(v549);
    v407(&v572, 0);
    v408 = v541;
    sub_1D725CE7C();
    sub_1D683A158(0);
    v410 = *(v409 + 48);
    v411 = v550;
    sub_1D5BE6684(v408, v550, type metadata accessor for FeedItem);
    sub_1D683A1C4(v408 + v410);
    sub_1D5BE64C0(v411, v548, type metadata accessor for FeedItem);
    v412 = swift_getEnumCaseMultiPayload();
    v413 = 1;
    if (((1 << v412) & 0x3EFFF) != 0)
    {
      sub_1D5BE6754(v548, type metadata accessor for FeedItem);
      v413 = 1;
    }

    else if (v412 == 12)
    {
      sub_1D5BE6684(v548, v406, type metadata accessor for FeedRecipe);
      v413 = 0;
    }

    v414 = *v553;
    (*v553)(v406, v413, 1, v405);
    sub_1D5BE6754(v550, type metadata accessor for FeedItem);
    v415 = *ObjectType;
    if ((*ObjectType)(v406, 1, v405) == 1)
    {
      v416 = v364;
      sub_1D5BEFFE8(v406, qword_1EDF34D20, type metadata accessor for FeedRecipe);
      v417 = 1;
      v418 = v537;
      goto LABEL_101;
    }

    v419 = v538;
    sub_1D5BE6684(v406, v538, type metadata accessor for FeedRecipe);
    v420 = [*(v419 + 56) identifier];
    v421 = sub_1D726207C();
    v423 = v422;

    v424 = [v539 identifier];
    v425 = sub_1D726207C();
    v427 = v426;

    if (v421 == v425 && v423 == v427)
    {

      v416 = v529;
      v418 = v537;
      goto LABEL_98;
    }

    v428 = sub_1D72646CC();

    v416 = v529;
    v418 = v537;
    if (v428)
    {
LABEL_98:
      sub_1D5BE6684(v538, v418, type metadata accessor for FeedRecipe);
      v417 = 0;
    }

    else
    {
      sub_1D5BE6754(v538, type metadata accessor for FeedRecipe);
      v417 = 1;
    }

    v405 = v531;
    v406 = v528;
LABEL_101:
    (v414)(v418, v417, 1, v405);
    (*v540)(v549, v552);
    v429 = v415(v418, 1, v405);
    sub_1D5BEFFE8(v418, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v364 = v416;
    if (v429 != 1)
    {
      goto LABEL_110;
    }

    sub_1D7262C6C();
    sub_1D7262C5C();
    v404 = v564;
    if (v564 != v572)
    {
      continue;
    }

    break;
  }

  v404 = v572;
LABEL_110:
  sub_1D7262C5C();
  if (v404 == v572)
  {

    v431 = 1;
    v432 = v512;
    v433 = v510;
    v434 = v492;
    goto LABEL_114;
  }

  *&v564 = v404;
  v435 = sub_1D7262D0C();
  v436 = v523;
  v437 = v543;
  v438 = v552;
  (*(v523 + 16))(v543);
  v435(&v572, 0);
  v439 = v481;
  v440 = v539;
  sub_1D7094960(v539, v481);

  (*(v436 + 8))(v437, v438);
  v441 = v480;
  sub_1D70A3E54(v439, v480, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720], sub_1D70A2554);
  result = (*(v513 + 48))(v441, 1, v405);
  v434 = v492;
  if (result == 1)
  {
    goto LABEL_151;
  }

  v442 = v441;
  v433 = v510;
  sub_1D5BE6684(v442, v510, type metadata accessor for FeedRecipe);
  sub_1D5BEFFE8(v439, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  v431 = 0;
  v432 = v512;
LABEL_114:
  v443 = v513;
  (*(v513 + 56))(v433, v431, 1, v405);
  sub_1D5BE6754(v364, sub_1D70A3810);
  sub_1D70A3E54(v433, v434, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720], sub_1D70A2554);
  if ((*(v443 + 48))(v434, 1, v405) == 1)
  {
    sub_1D5BEFFE8(v434, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v444 = v497;
    v445 = *(v497 + 20);
    v446 = type metadata accessor for SharedItem(0);
    (*(*(v446 - 8) + 56))(&v432[v445], 1, 1, v446);
    *v432 = 0;
    v432[*(v444 + 24)] = 0;
  }

  else
  {
    v447 = v478;
    sub_1D5BE64C0(v434 + v405[9], v478, type metadata accessor for FeedRecipe.State);
    sub_1D5BE6754(v434, type metadata accessor for FeedRecipe);
    sub_1D5BE6684(v447, v432, type metadata accessor for FeedRecipe.State);
  }

  v448 = v405;
  v449 = v542;
  v450 = swift_allocObject();
  *(v450 + 16) = v536;
  v451 = v450 + v449;
  v452 = v511;
  sub_1D5BE64C0(v432, v511, type metadata accessor for FeedRecipe.State);
  *(v451 + 16) = 0;
  *(v451 + 24) = 1;
  *(v451 + 32) = xmmword_1D727C320;
  v453 = v539;
  v454 = [v453 identifier];
  v455 = sub_1D726207C();
  v457 = v456;

  *v451 = v455;
  *(v451 + 8) = v457;
  *(v451 + 56) = v453;
  sub_1D5BE64C0(v452, v450 + v449 + v448[9], type metadata accessor for FeedRecipe.State);
  v458 = v450 + v449 + v448[10];
  *(v458 + 32) = 0;
  *v458 = 0u;
  *(v458 + 16) = 0u;
  *(v451 + v448[11]) = 0;
  if (*(v452 + *(v497 + 24)) == 1)
  {
    v459 = [v453 sourceChannel];
  }

  else
  {
    v459 = 2;
  }

  sub_1D5BE6754(v511, type metadata accessor for FeedRecipe.State);
  *(v451 + 48) = v459;
  v460 = v531;
  v461 = v451 + *(v531 + 48);
  *(v461 + 32) = 0;
  *v461 = 0u;
  *(v461 + 16) = 0u;
  v462 = v451 + *(v460 + 52);
  *(v462 + 32) = 0;
  *v462 = 0u;
  *(v462 + 16) = 0u;
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v450);
  swift_setDeallocating();
  sub_1D5BE6754(v451, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();

  sub_1D5BE6754(v512, type metadata accessor for FeedRecipe.State);
  sub_1D5BEFFE8(v510, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  return v580;
}

uint64_t sub_1D7092D6C(uint64_t a1, uint64_t a2, __int128 *a3, void (**a4)(char *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v76 = a4;
  v72 = a1;
  sub_1D5E2C2C8(0, a9);
  v75 = v17;
  v67 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v70 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v69 = &v63 - v22;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v66 = &v63 - v26;
  sub_1D70A377C(0, v25);
  v71 = v27 - 8;
  v29 = MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v64 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C35C(0, v29);
  v74 = v31;
  v68 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v65 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3[3];
  v80 = a3[2];
  v81 = v34;
  v82 = a3[4];
  v35 = a3[1];
  v78 = *a3;
  v79 = v35;
  FormatContentSubgroup.Resolved.feedItemIdentifiers.getter();
  v37 = v36;
  sub_1D5D55530(a6, a7, a8, a10);

  v38 = a7;
  v39 = a7;
  v40 = a8;
  v41 = sub_1D5D55574(v37, a6, v38, a8, a10, a5, a1, a2);

  sub_1D5D559EC(a6, v39, v40, a10);

  v73 = sub_1D5B86020(v41);

  v42 = a3[3];
  v80 = a3[2];
  v81 = v42;
  v82 = a3[4];
  v43 = a3[1];
  v78 = *a3;
  v79 = v43;
  v44 = FormatContentSubgroup.Resolved.placeholderIdentifiers.getter();

  v45 = sub_1D5D5600C(v44, v72, a2);

  v72 = sub_1D5B86020(v45);

  (*(v68 + 16))(v65, v76, v74);
  sub_1D5B85FD8(&qword_1EDF17BC8, sub_1D5E2C35C, MEMORY[0x1E69D6620]);
  v46 = v64;
  sub_1D726238C();
  v47 = *(v71 + 44);
  v48 = sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C, MEMORY[0x1E69D6628]);
  sub_1D7262C5C();
  if (*(v46 + v47) == v78)
  {
    v71 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v68 = v67 + 16;
    v76 = (v67 + 32);
    v65 = (v67 + 8);
    v71 = MEMORY[0x1E69E7CC0];
    v50 = v66;
    v51 = v75;
    do
    {
      v52 = v46;
      v53 = sub_1D7262D0C();
      v54 = v69;
      (*v68)(v69);
      v53(&v78, 0);
      v55 = v48;
      sub_1D7262C6C();
      v56 = *v76;
      (*v76)(v50, v54, v51);
      sub_1D7094CFC(v50, v73, v72);
      if (v57)
      {
        v56(v70, v50, v51);
        v58 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69974DC(0, *(v58 + 16) + 1, 1);
          v58 = v77;
        }

        v61 = *(v58 + 16);
        v60 = *(v58 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1D69974DC((v60 > 1), v61 + 1, 1);
          v58 = v77;
        }

        *(v58 + 16) = v61 + 1;
        v62 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v71 = v58;
        v56((v58 + v62 + *(v67 + 72) * v61), v70, v75);
        v50 = v66;
      }

      else
      {
        (*v65)(v50, v51);
      }

      v46 = v52;
      v48 = v55;
      sub_1D7262C5C();
    }

    while (*(v52 + v47) != v78);
  }

  sub_1D5BE6754(v46, sub_1D70A377C);
  return v71;
}

void sub_1D7093400(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v10 = a1[4];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = *(type metadata accessor for FormatContentSlotItemObject.Resolved(0) - 8);
    v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    do
    {
      sub_1D7093A04(v14, a2, a3, a4, a5, a6, a7, a8, a10, a1);
      v17 = *(v16 + 16);
      v18 = *(v12 + 2);
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v20 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v19 <= *(v12 + 3) >> 1)
      {
        if (!*(v20 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v22 = v18 + v17;
        }

        else
        {
          v22 = v18;
        }

        v12 = sub_1D5D6149C(isUniquelyReferenced_nonNull_native, v22, 1, v12);
        if (!*(v20 + 16))
        {
LABEL_3:

          if (v17)
          {
            goto LABEL_53;
          }

          goto LABEL_4;
        }
      }

      if ((*(v12 + 3) >> 1) - *(v12 + 2) < v17)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v23 = *(v12 + 2);
        v24 = __OFADD__(v23, v17);
        v25 = v23 + v17;
        if (v24)
        {
          goto LABEL_55;
        }

        *(v12 + 2) = v25;
      }

LABEL_4:
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  v93 = v12;
  sub_1D5D60AB4(0, &qword_1EDF1B310, &type metadata for SlotReference, MEMORY[0x1E69E62F8]);
  sub_1D5D56E88(&unk_1EDF1B300, &qword_1EDF1B310, &type metadata for SlotReference, MEMORY[0x1E69E6328]);
  sub_1D5D56EE0();
  v89 = sub_1D72623BC();
  v26 = *(v12 + 2);
  v85 = a1[1];
  v87 = *a1;
  if (v26)
  {
    v93 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v26, 0);
    v27 = v93;
    v28 = (v12 + 40);
    do
    {
      v30 = *(v28 - 1);
      v29 = *v28;
      v93 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);

      if (v32 >= v31 >> 1)
      {
        sub_1D5BFC364((v31 > 1), v32 + 1, 1);
        v27 = v93;
      }

      *(v27 + 16) = v32 + 1;
      v33 = v27 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v28 += 6;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v83 = sub_1D5B86020(v27);

  sub_1D5D56F34(0);
  v34 = sub_1D72640FC();
  v35 = v34;
  v36 = 0;
  v38 = v89 + 64;
  v37 = *(v89 + 64);
  v39 = 1 << *(v89 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v37;
  v42 = (v39 + 63) >> 6;
  v43 = v34 + 64;
  if ((v40 & v37) != 0)
  {
    do
    {
      v44 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
LABEL_34:
      v47 = v44 | (v36 << 6);
      v48 = (*(v89 + 48) + 16 * v47);
      v50 = *v48;
      v49 = v48[1];
      v51 = *(*(v89 + 56) + 48 * v47 + 16);
      *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v52 = (v35[6] + 16 * v47);
      *v52 = v50;
      v52[1] = v49;
      *(v35[7] + 8 * v47) = v51;
      v53 = v35[2];
      v24 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v24)
      {
        goto LABEL_56;
      }

      v35[2] = v54;
    }

    while (v41);
  }

  v45 = v36;
  while (1)
  {
    v36 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v36 >= v42)
    {
      break;
    }

    v46 = *(v38 + 8 * v36);
    ++v45;
    if (v46)
    {
      v44 = __clz(__rbit64(v46));
      v41 = (v46 - 1) & v46;
      goto LABEL_34;
    }
  }

  sub_1D5D56F9C(0);
  v55 = sub_1D72640FC();
  v56 = v55;
  v57 = 0;
  v58 = 1 << *(v89 + 32);
  v59 = *(v89 + 64);
  v60 = -1;
  if (v58 < 64)
  {
    v60 = ~(-1 << v58);
  }

  v61 = v60 & v59;
  v62 = (v58 + 63) >> 6;
  v63 = v55 + 64;
  if ((v60 & v59) == 0)
  {
LABEL_41:
    v65 = v57;
    while (1)
    {
      v57 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_51;
      }

      if (v57 >= v62)
      {
        v75 = sub_1D5D57034(v89);

        v77 = a1[3];
        v93 = a1[2];
        v76 = v93;
        v92 = v77;
        *a9 = v87;
        a9[1] = v85;
        a9[2] = v83;
        a9[3] = v35;
        a9[4] = v56;
        a9[5] = v75;
        a9[6] = v76;
        a9[7] = v77;
        sub_1D70A3E54(&v93, v91, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8], sub_1D70A2554);
        sub_1D70A36EC(&v92, v91);
        return;
      }

      v66 = *(v38 + 8 * v57);
      ++v65;
      if (v66)
      {
        v64 = __clz(__rbit64(v66));
        v61 = (v66 - 1) & v66;
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
    v64 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
LABEL_46:
    v67 = v64 | (v57 << 6);
    v68 = (*(v89 + 48) + 16 * v67);
    v70 = *v68;
    v69 = v68[1];
    v71 = *(*(v89 + 56) + 48 * v67 + 24);
    *(v63 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
    v72 = (v56[6] + 16 * v67);
    *v72 = v70;
    v72[1] = v69;
    *(v56[7] + 8 * v67) = v71;
    v73 = v56[2];
    v24 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v24)
    {
      break;
    }

    v56[2] = v74;

    if (!v61)
    {
      goto LABEL_41;
    }
  }

LABEL_57:
  __break(1u);
}